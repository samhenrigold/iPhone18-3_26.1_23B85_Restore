uint64_t sub_10005466C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100026A64(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100054954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100026A64(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100003B30(&qword_100083FE0, &qword_1000637B0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100003B30(&qword_100083FE0, &qword_1000637B0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100054C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100026A64(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100054F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100026A64(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10005523C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Result();
  v2[2] = v5;
  v2[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[4] = v6;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_100055374;

  return Task.result.getter(v6, a1, a2, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100055374()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000554CC, 0, 0);
}

uint64_t sub_1000554CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005553C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a1 + 16);
  *v5 = v2;
  v5[1] = sub_100014310;

  return sub_10005523C(v4, v6);
}

uint64_t sub_1000555D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100026B0C(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v7 = v16;
    v8 = v17;
    v9 = sub_100026B24(v15, v16);
    __chkstk_darwin(v9);
    v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    sub_100058DB0(v11, a2, a3, isUniquelyReferenced_nonNull_native, &v14, v7, v8);
    sub_100004B28(v15);

    *v3 = v14;
  }

  else
  {
    sub_100008B68(a1, &qword_100083900, &qword_100062C00);
    sub_100057B90(a2, a3, v15);

    return sub_100008B68(v15, &qword_100083900, &qword_100062C00);
  }

  return result;
}

uint64_t sub_100055760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  swift_beginAccess();
  v14 = *(v5 + 112);
  if (*(v14 + 16))
  {

    v15 = sub_100057800(a1, a2);
    if (v16)
    {
      sub_100026C30(*(v14 + 56) + 40 * v15, &v26);

      return sub_100008B68(&v26, &qword_100083900, &qword_100062C00);
    }
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_100008B68(&v26, &qword_100083900, &qword_100062C00);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v13, a3, v18);
  v20 = *(v19 + 56);
  v20(v13, 0, 1, v18);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a4;
  v21[5] = a5;

  v22 = sub_100054078(0, 0, v13, &unk_100063700, v21);
  *(&v27 + 1) = sub_100003B30(&qword_100083908, &unk_100061880);
  v28 = &off_10007BC78;
  *&v26 = v22;
  swift_beginAccess();

  sub_1000555D8(&v26, a1, a2);
  swift_endAccess();
  v20(v13, 1, 1, v18);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  v24[5] = v23;
  v24[6] = a1;
  v24[7] = a2;

  sub_100054078(0, 0, v13, &unk_100063710, v24);
}

uint64_t sub_100055A68(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100027414;

  return v7();
}

uint64_t sub_100055B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = swift_task_alloc();
  v7[16] = v9;
  *v9 = v7;
  v9[1] = sub_1000475B4;

  return Task.result.getter(v7 + 18, a4, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100055C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[29] = a6;
  v7[30] = v6;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v7[31] = swift_task_alloc();

  return _swift_task_switch(sub_100055CBC, v6, 0);
}

uint64_t sub_100055CBC()
{
  v23 = v0;
  v1 = *(v0 + 240);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);

    v5 = sub_100057800(v4, v3);
    if (v6)
    {
      sub_100026C30(*(v2 + 56) + 40 * v5, v0 + 56);

      sub_100026B0C((v0 + 56), v0 + 16);
      sub_100026C30(v0 + 16, v0 + 96);
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 184);
        *(v0 + 256) = v7;
        Task.cancel()();
        v8 = swift_task_alloc();
        *(v0 + 264) = v8;
        *v8 = v0;
        v8[1] = sub_100056028;

        return Task.result.getter(v0 + 272, v7, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
      }

      sub_100004B28((v0 + 16));
    }

    else
    {
    }
  }

  v9 = *(v0 + 248);
  v10 = *(v0 + 232);
  v21 = *(v0 + 224);
  v11 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  static TaskPriority.userInitiated.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v11;
  v17[5] = v12;
  v17[6] = v16;
  v17[7] = v21;
  v17[8] = v10;
  v17[9] = v14;
  v17[10] = v13;

  v18 = sub_100054078(0, 0, v9, &unk_1000636B0, v17);
  v22[3] = sub_100003B30(&qword_100083908, &unk_100061880);
  v22[4] = &off_10007BC78;
  v22[0] = v18;
  swift_beginAccess();

  sub_1000555D8(v22, v14, v13);
  swift_endAccess();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100056028()
{

  return _swift_task_switch(sub_100056124, 0, 0);
}

uint64_t sub_100056140()
{
  v15 = v0;

  sub_100004B28(v0 + 2);
  v1 = v0[31];
  v2 = v0[29];
  v13 = v0[28];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  static TaskPriority.userInitiated.getter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v4;
  v9[6] = v8;
  v9[7] = v13;
  v9[8] = v2;
  v9[9] = v6;
  v9[10] = v5;

  v10 = sub_100054078(0, 0, v1, &unk_1000636B0, v9);
  v14[3] = sub_100003B30(&qword_100083908, &unk_100061880);
  v14[4] = &off_10007BC78;
  v14[0] = v10;
  swift_beginAccess();

  sub_1000555D8(v14, v6, v5);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100056328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v12;
  v8[22] = v13;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = type metadata accessor for ContinuousClock();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000563FC, 0, 0);
}

uint64_t sub_1000563FC()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1000564BC;
  v3 = v0[16];
  v2 = v0[17];

  return sub_100057274(v3, v2, 0, 0, 1);
}

uint64_t sub_1000564BC()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100056778;
  }

  else
  {
    v5 = sub_10005662C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005662C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[19];

    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_100056840;

    return v5();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100056778()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000569FC, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100056840()
{

  return _swift_task_switch(sub_10005693C, 0, 0);
}

uint64_t sub_10005693C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000569FC, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1000569FC()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  sub_100057B90(v2, v1, (v0 + 2));
  sub_100008B68((v0 + 2), &qword_100083900, &qword_100062C00);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100056ADC()
{
  v18 = v0;
  v1 = v0[15];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_10005772C(*(v2 + 16), 0);
    v15 = sub_10005867C(&v17, (v4 + 4), v3, v2);
    v5 = v17;

    result = sub_1000587E8(v5);
    if (v15 != v3)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v0[16] = v4;
  *(v1 + 112) = &_swiftEmptyDictionarySingleton;

  v7 = v4[2];
  v0[17] = v7;
  if (v7)
  {
    v8 = (v4 + 4);
    do
    {
      sub_100026C30(v8, (v0 + 2));
      v9 = v0[5];
      v10 = v0[6];
      sub_100004BCC(v0 + 2, v9);
      (*(v10 + 24))(v9, v10);
      sub_100004B28(v0 + 2);
      v8 += 40;
      --v7;
    }

    while (v7);
    v0[18] = 0;
    sub_100026C30(v0[16] + 32, (v0 + 7));
    v11 = v0[10];
    v12 = v0[11];
    sub_100004BCC(v0 + 7, v11);
    v16 = (*(v12 + 32) + **(v12 + 32));
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_100056D84;

    return v16(v11, v12);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100056D84()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  sub_100004B28((v1 + 56));

  return _swift_task_switch(sub_100056E9C, v2, 0);
}

uint64_t sub_100056E9C()
{
  v1 = v0[18] + 1;
  if (v1 == v0[17])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[18] = v1;
    sub_100026C30(v0[16] + 40 * v1 + 32, (v0 + 7));
    v4 = v0[10];
    v5 = v0[11];
    sub_100004BCC(v0 + 7, v4);
    v7 = (*(v5 + 32) + **(v5 + 32));
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_100056D84;

    return v7(v4, v5);
  }
}

uint64_t sub_100057028()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100057084(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005717C;

  return v6(a1);
}

uint64_t sub_10005717C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100057274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100057374, 0, 0);
}

uint64_t sub_100057374()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000590F4(&qword_100084840, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000590F4(&qword_100084848, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100057504;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100057504()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000576C0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000576C0()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10005772C(uint64_t a1, uint64_t a2)
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

  sub_100003B30(&qword_100084838, &unk_100063698);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

unint64_t sub_1000577BC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10005790C(a1, v4);
}

unint64_t sub_100057800(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000579D4(a1, a2, v4);
}

unint64_t sub_100057878(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100057A8C(a1, v2);
}

unint64_t sub_10005790C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100059360(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100007F98(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000579D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100057A8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

double sub_100057B90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100057800(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000580BC();
      v10 = v12;
    }

    sub_100026B0C((*(v10 + 56) + 40 * v8), a3);
    sub_100057F00(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

Swift::Int sub_100057C3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003B30(&qword_1000846B8, &qword_1000636D0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_100026B0C(v24, v34);
      }

      else
      {
        sub_100026C30(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      result = sub_100026B0C(v34, *(v7 + 56) + 40 * v15);
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

uint64_t sub_100057F00(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1000580BC()
{
  v1 = v0;
  sub_100003B30(&qword_1000846B8, &qword_1000636D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v22 = 40 * v17;
        sub_100026C30(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100026B0C(v25, *(v4 + 56) + v22);
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

uint64_t sub_100058264(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100058358;

  return v5(v2 + 32);
}

uint64_t sub_100058358()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10005846C(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_100058560;

  return v5(v2 + 16);
}

uint64_t sub_100058560()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = v1[2];
  v4 = v1[3];
  *v2 = v1[1];
  v2[1] = v3;
  v2[2] = v4;
  v5 = *(v7 + 8);

  return v5();
}

void *sub_10005867C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_100026C30(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_100026B0C(v20, v21);
      sub_100026B0C(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000587F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058828()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100058878(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_100056328(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10005896C(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_100058A60;

  return v5(v2 + 16);
}

uint64_t sub_100058A60()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;

  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_100058BA8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100058C9C;

  return v5(v2 + 32);
}

uint64_t sub_100058C9C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100058DB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  v14 = sub_100004A04(&v33);
  (*(*(a6 - 8) + 32))(v14, a1, a6);
  v15 = *a5;
  v17 = sub_100057800(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      sub_100004B28(v24);
      return sub_100026B0C(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_1000580BC();
    goto LABEL_7;
  }

  sub_100057C3C(v20, a4 & 1);
  v26 = sub_100057800(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = sub_100026B24(&v33, v34);
  __chkstk_darwin(v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_100058FE4(v17, a2, a3, v30, v23, a6, a7);

  return sub_100004B28(&v33);
}

uint64_t sub_100058FE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v13 = sub_100004A04(&v19);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_100026B0C(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_1000590BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000590F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005913C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005917C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100055A68(a1, v4, v5, v6);
}

uint64_t sub_10005923C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005928C(uint64_t a1)
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
  v10[1] = sub_100014310;

  return sub_100055B50(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000593BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027414;

  return sub_100058264(a1, v4);
}

uint64_t sub_100059474(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027414;

  return sub_100058BA8(a1, v4);
}

uint64_t sub_10005952C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027414;

  return sub_100058264(a1, v4);
}

uint64_t sub_1000595E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027414;

  return sub_10005846C(a1, v4);
}

uint64_t sub_10005969C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014310;

  return sub_10005846C(a1, v4);
}

uint64_t sub_100059754(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027414;

  return sub_10005896C(a1, v4);
}

uint64_t sub_10005980C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027414;

  return sub_100047A6C(a1, v4);
}

uint64_t sub_1000598C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_100059950(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

id RSInputRoutePickerViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RSInputRoutePickerViewController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RSInputRoutePickerViewController();
  return objc_msgSendSuper2(&v2, "init");
}

id RSInputRoutePickerViewController.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RSInputRoutePickerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100059C3C()
{
  v1 = qword_100084900;
  if (*(v0 + qword_100084900))
  {
    v2 = *(v0 + qword_100084900);
  }

  else
  {
    v3 = *(v0 + qword_100084908);
    v4 = *(v0 + qword_100084908 + 8);
    v5 = *(v0 + qword_100084910);
    v6 = *(v0 + qword_100084910 + 8);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100036628(v3, v4, v5, v6, sub_10005A4FC, v7);
    sub_10005A504();
    v2 = AnyView.init<A>(_:)();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100059D54(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong _hostedWindowScene];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() actionForNewSize:{a2, a3}];
      [v8 sendAction:v9];
    }
  }
}

id sub_100059E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + qword_100084900) = 0;
  v5 = (v4 + qword_100084908);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + qword_100084910);
  *v6 = a3;
  v6[1] = a4;
  AnyView.init<A>(_:)();
  v7 = UIHostingController.init(rootView:)();
  sub_100059C3C();
  dispatch thunk of UIHostingController.rootView.setter();

  return v7;
}

uint64_t sub_100059EB0(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + qword_100084900) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100059F7C()
{
}

id sub_100059FD4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005A00C(uint64_t a1)
{
}

id _s19AVKitRoutingService32RSInputRoutePickerViewControllerC6create16clientIdentifierSo06UIViewH0CSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  sub_10005A478();

  v4 = sub_100059950(a1, a2, 0);
  v5 = [v4 localizedName];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = objc_allocWithZone(type metadata accessor for InputRoutePlatterHostingController(0));

  v10 = sub_100059E20(a1, a2, v6, v8);
  result = [v10 view];
  if (result)
  {
    v12 = result;

    v13 = [objc_opt_self() clearColor];
    [v12 setBackgroundColor:v13];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for InputRoutePlatterHostingController(uint64_t a1)
{
  result = qword_100084918;
  if (!qword_100084918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10005A478()
{
  result = qword_100084968;
  if (!qword_100084968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100084968);
  }

  return result;
}

uint64_t sub_10005A4C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10005A504()
{
  result = qword_100084970;
  if (!qword_100084970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084970);
  }

  return result;
}

uint64_t sub_10005A594(int a1, int a2, int a3, int a4)
{
  if (qword_1000866E8 == -1)
  {
    if (qword_1000866F0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10005DA94();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000866F0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000866E0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10005DAAC();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000866D0 < v11;
    if (dword_1000866D0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000866D4 > a3)
      {
        return 1;
      }

      if (dword_1000866D4 >= a3)
      {
        return dword_1000866D8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000866D0 < a2;
  if (dword_1000866D0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10005A728(uint64_t result)
{
  v1 = qword_1000866F0;
  if (qword_1000866F0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1000866F0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1000866D0, &dword_1000866D4, &dword_1000866D8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

id sub_10005AA5C()
{
  if (qword_1000866F8 != -1)
  {
    dispatch_once(&qword_1000866F8, &stru_10007BCC8);
  }

  v1 = qword_100086700;

  return v1;
}

void sub_10005AAB0(id a1)
{
  qword_100086700 = os_log_create("com.apple.avkit", "AVKit");

  _objc_release_x1();
}

void sub_10005AC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    v13 = v12;
    if (v11)
    {
      a10 = NSLocalizedDescriptionKey;
      v14 = [v12 reason];
      a11 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&a11 forKeys:&a10 count:1];
      *v11 = [NSError errorWithDomain:AVKitErrorDomain code:-1000 userInfo:v15];
    }

    objc_end_catch();
    JUMPOUT(0x10005ABFCLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_10005B19C(uint64_t a1)
{
  v2 = sub_10005AA5C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setSharedSetting: set %{public}@ to %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 48) invalidate];
}

id sub_10005B370()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100086718;
  v7 = qword_100086718;
  if (!qword_100086718)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005B450;
    v3[3] = &unk_10007BE38;
    v3[4] = &v4;
    sub_10005B450(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10005B438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10005B450(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100086720)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10005B63C;
    v6[4] = &unk_10007BE70;
    v6[5] = v6;
    v7 = off_10007BE58;
    v8 = 0;
    qword_100086720 = _sl_dlopen();
  }

  if (!qword_100086720)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *VisionKitCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"AVKitGlobalSettings.m" lineNumber:38 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VKCImageAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getVKCImageAnalyzerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"AVKitGlobalSettings.m" lineNumber:39 description:{@"Unable to find class %s", "VKCImageAnalyzer"}];

LABEL_10:
    __break(1u);
  }

  qword_100086718 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10005B63C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100086720 = result;
  return result;
}

id sub_10005B804(uint64_t a1)
{
  objc_opt_self();
  v1 = sub_10005D8C8();
  v2 = [v1 isEqualToString:@"com.apple.tv"];

  return v2;
}

void sub_10005C9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10005CA1C(uint64_t a1)
{
  objc_opt_self();
  v1 = sub_10005D8C8();
  v2 = [v1 isEqualToString:@"com.apple.AVKitTester"];

  return v2;
}

id sub_10005CA60(uint64_t a1)
{
  objc_opt_self();
  v1 = sub_10005D8C8();
  v2 = [v1 isEqualToString:@"com.apple.QuickTimePlayerX"];

  return v2;
}

uint64_t sub_10005CAA4(uint64_t a1)
{
  objc_opt_self();
  if (!dyld_program_sdk_at_least() || !_UISolariumEnabled())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

id sub_10005CB00(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = sub_10005D9F8();
  v9 = +[NSObservableKeyPath keyPathWithRootObject:path:](NSObservableKeyPath, "keyPathWithRootObject:path:", v8, [v6 cStringUsingEncoding:4]);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005CE18;
  v15[3] = &unk_10007BE10;
  v16 = v6;
  v17 = v5;
  v18 = v7;
  v19 = 0;
  v10 = v7;
  v11 = v5;
  v12 = v6;
  v13 = [v9 addObserverBlock:v15];

  return v13;
}

void sub_10005CC50(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CDC4;
  block[3] = &unk_10007BD30;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_10005CCE0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CD70;
  block[3] = &unk_10007BD30;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_10005CD70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSubtitleAutomaticallyEnabledState:{+[AVKitGlobalSettings _subtitleAutomaticallyEnabledState](AVKitGlobalSettings, "_subtitleAutomaticallyEnabledState")}];
}

void sub_10005CDC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDisplayingCaptionsOnSkipBack:{+[AVKitGlobalSettings _isDisplayingCaptionsOnSkipBack](AVKitGlobalSettings, "_isDisplayingCaptionsOnSkipBack")}];
}

void sub_10005CE18(id *a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005CEFC;
  v8[3] = &unk_10007BDE8;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_10005CEFC(uint64_t a1)
{
  v2 = sub_10005D9F8();
  v3 = [v2 stringForKey:*(a1 + 32)];

  v4 = [*(a1 + 40) valueForKey:*(a1 + 48)];
  v5 = v4;
  if (v3 != v4)
  {
    v6 = !v3 || v4 == 0;
    if (v6 || ([v3 isEqualToString:v4] & 1) == 0)
    {
      [*(a1 + 40) setValue:v3 forKey:*(a1 + 48)];
      v7 = sub_10005AA5C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v10 = 138543618;
        v11 = v8;
        v12 = 2114;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Observation: shared value of '%{public}@' changed to '%{public}@", &v10, 0x16u);
      }

      if ([*(a1 + 56) length])
      {
        v9 = +[NSNotificationCenter defaultCenter];
        [v9 postNotificationName:*(a1 + 56) object:v3 userInfo:0];
      }
    }
  }
}

void sub_10005D2F0(id a1)
{
  v1 = dispatch_get_global_queue(0, 0);
  dispatch_async(v1, &stru_10007BD98);

  qword_100086708 = objc_alloc_init(AVKitGlobalSettings);

  _objc_release_x1();
}

void sub_10005D358(id a1)
{
  v1 = sub_10005B370();

  [v1 deviceSupportsImageAnalysis];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void sub_10005D888(id a1)
{
  qword_100086728 = +[_AVKitBundle bundle];

  _objc_release_x1();
}

id sub_10005D8C8()
{
  if (qword_100086740 != -1)
  {
    dispatch_once(&qword_100086740, &stru_10007BED0);
  }

  v1 = qword_100086738;

  return [v1 bundleIdentifier];
}

void sub_10005D91C(id a1)
{
  qword_100086738 = +[NSBundle mainBundle];

  _objc_release_x1();
}

id sub_10005D95C(void *a1)
{
  v1 = a1;
  if (qword_100086730 != -1)
  {
    dispatch_once(&qword_100086730, &stru_10007BEB0);
  }

  v2 = qword_100086728;
  v3 = [v2 localizedStringForKey:v1 value:&stru_10007C4F0 table:0];

  return v3;
}

id sub_10005D9F8()
{
  if (qword_100086750 != -1)
  {
    dispatch_once(&qword_100086750, &stru_10007BEF0);
  }

  v1 = qword_100086748;

  return v1;
}

void sub_10005DA4C(id a1)
{
  qword_100086748 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.avkit"];

  _objc_release_x1();
}