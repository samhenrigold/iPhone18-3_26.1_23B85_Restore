uint64_t sub_1000166B0()
{
  v28 = v0;
  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A1538);

  v2 = sub_100079B80();
  v3 = sub_10007A160();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100006B00(v5, v4, &v27);
    _os_log_impl(&_mh_execute_header, v2, v3, "eviction timer fired: %{public}s", v6, 0xCu);
    sub_1000070A8(v7);
  }

  v8 = (*(**(v0 + 80) + 152))();
  if (*(v8 + 16) && (v9 = sub_10000A0FC(*(v0 + 88), *(v0 + 96)), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    if (v11)
    {
      v13 = *(v0 + 88);
      v12 = *(v0 + 96);
      v14 = (*(**(v0 + 80) + 192))(v0 + 48);
      sub_1000198C0(v13, v12);

      v14(v0 + 48, 0);
      v15 = *(v0 + 8);

      return v15();
    }
  }

  else
  {
  }

  v17 = sub_100079B80();
  v18 = sub_10007A160();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_100006B00(v20, v19, &v27);
    _os_log_impl(&_mh_execute_header, v17, v18, "requesting eviction for %{public}s", v21, 0xCu);
    sub_1000070A8(v22);
  }

  v26 = (*(**(*(v0 + 80) + 112) + 152) + **(**(*(v0 + 80) + 112) + 152));
  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_100016AD0;
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);

  return v26(v25, v24);
}

uint64_t sub_100016AD0()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_100016BE0, v1, 0);
}

uint64_t sub_100016BE0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = (*(**(v0 + 80) + 192))(v0 + 48);
  sub_1000198C0(v2, v1);

  v3(v0 + 48, 0);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100016CB0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = (*(**(v0 + 80) + 192))(v0 + 16);
  sub_1000198C0(v2, v1);

  v3(v0 + 16, 0);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100016D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100016DA4, a6, 0);
}

uint64_t sub_100016DA4()
{
  v14 = v0;
  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A1538);

  v2 = sub_100079B80();
  v3 = sub_10007A160();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100006B00(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "requesting immediate eviction for %{public}s", v6, 0xCu);
    sub_1000070A8(v7);
  }

  v12 = (*(**(v0[4] + 112) + 152) + **(**(v0[4] + 112) + 152));
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_100016FF0;
  v10 = v0[2];
  v9 = v0[3];

  return v12(v10, v9);
}

uint64_t sub_100016FF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100017104()
{
  v1 = (*(**(v0 + 48) + 128))();
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1000172B8;

    return sub_100022884();
  }

  else
  {
    if (qword_1000A1530 != -1)
    {
      swift_once();
    }

    v4 = sub_100079BA0();
    sub_1000070F4(v4, qword_1000A1538);
    v5 = sub_100079B80();
    v6 = sub_10007A180();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "failed to check last DNU setting : diskCache nil", v7, 2u);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1000172B8(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 72) = v1;

  v5 = *(v3 + 48);
  if (v1)
  {
    v6 = sub_100017D18;
  }

  else
  {
    v6 = sub_1000173F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000173F0()
{
  v1 = *(v0 + 144);
  if (v1 == 2)
  {
    if (qword_1000A1530 != -1)
    {
      swift_once();
    }

    v2 = sub_100079BA0();
    sub_1000070F4(v2, qword_1000A1538);
    v3 = sub_100079B80();
    v4 = sub_10007A190();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "resetting clientIDs due to missing lastDNU setting", v5, 2u);
    }

    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v7 = sub_1000179BC;
LABEL_13:
    v6[1] = v7;

    return sub_100022658();
  }

  if ((sub_10003F7D8() & 1) != (v1 & 1))
  {
    if (qword_1000A1530 != -1)
    {
      swift_once();
    }

    v8 = sub_100079BA0();
    sub_1000070F4(v8, qword_1000A1538);
    v9 = sub_100079B80();
    v10 = sub_10007A190();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 144);
      v12 = swift_slowAlloc();
      *v12 = 67240448;
      *(v12 + 4) = v11 & 1;
      *(v12 + 8) = 1026;
      *(v12 + 10) = sub_10003F7D8() & 1;
      _os_log_impl(&_mh_execute_header, v9, v10, "DNU status changed (%{BOOL,public}d -> %{BOOL,public}d), resetting clientIDs", v12, 0xEu);
    }

    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v7 = sub_1000176C0;
    goto LABEL_13;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000176C0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100017EDC;
  }

  else
  {
    v4 = sub_1000177EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000177EC()
{
  v1 = sub_10003F7D8();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_100017890;

  return sub_100022B38(v1 & 1);
}

uint64_t sub_100017890()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1000180A0;
  }

  else
  {
    v4 = sub_10001A478;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000179BC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100018264;
  }

  else
  {
    v4 = sub_100017AE8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100017AE8()
{
  v1 = sub_10003F7D8();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_100017B8C;

  return sub_100022B38(v1 & 1);
}

uint64_t sub_100017B8C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100018428;
  }

  else
  {
    v4 = sub_100017CB8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100017CB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100017D18()
{
  v12 = v0;

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A1538);
  swift_errorRetain();
  v2 = sub_100079B80();
  v3 = sub_10007A180();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_10007A6D0();
    v8 = sub_100006B00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to check last DNU setting: %{public}s", v4, 0xCu);
    sub_1000070A8(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100017EDC()
{
  v12 = v0;

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A1538);
  swift_errorRetain();
  v2 = sub_100079B80();
  v3 = sub_10007A180();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_10007A6D0();
    v8 = sub_100006B00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to check last DNU setting: %{public}s", v4, 0xCu);
    sub_1000070A8(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000180A0()
{
  v12 = v0;

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A1538);
  swift_errorRetain();
  v2 = sub_100079B80();
  v3 = sub_10007A180();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_10007A6D0();
    v8 = sub_100006B00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to check last DNU setting: %{public}s", v4, 0xCu);
    sub_1000070A8(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100018264()
{
  v12 = v0;

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A1538);
  swift_errorRetain();
  v2 = sub_100079B80();
  v3 = sub_10007A180();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_10007A6D0();
    v8 = sub_100006B00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to check last DNU setting: %{public}s", v4, 0xCu);
    sub_1000070A8(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100018428()
{
  v12 = v0;

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A1538);
  swift_errorRetain();
  v2 = sub_100079B80();
  v3 = sub_10007A180();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_10007A6D0();
    v8 = sub_100006B00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to check last DNU setting: %{public}s", v4, 0xCu);
    sub_1000070A8(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000185EC()
{

  swift_weakDestroy();

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100018644(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001873C;

  return v6(a1);
}

uint64_t sub_10001873C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100018834(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000712C(&qword_10009E610, &unk_10007C508);
  v34 = v4;
  result = sub_10007A4C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_100018AD4()
{
  v1 = v0;
  sub_10000712C(&qword_10009E610, &unk_10007C508);
  v2 = *v0;
  v3 = sub_10007A4B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

uint64_t sub_100018C3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000A0FC(a1, a2);
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
    sub_100018AD4();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_100018E38(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_100018CE8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10007A730();
  sub_100079EC0();
  v8 = sub_10007A760();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10007A610() & 1) != 0)
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

    sub_1000193AC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100018E38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007A2F0() + 1) & ~v5;
    do
    {
      sub_10007A730();

      sub_100079EC0();
      v9 = sub_10007A760();

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

void sub_100018FE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A0FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100018834(v16, a4 & 1);
      v11 = sub_10000A0FC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_10007A6C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100018AD4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_10001914C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000712C(&qword_10009E608, &qword_10007E4A0);
  result = sub_10007A370();
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
      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
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

void sub_1000193AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10001914C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10001952C();
      goto LABEL_16;
    }

    sub_100019688(v8 + 1);
  }

  v10 = *v4;
  sub_10007A730();
  sub_100079EC0();
  v11 = sub_10007A760();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_10007A610() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_10007A6B0();
  __break(1u);
}

void sub_10001952C()
{
  v1 = v0;
  sub_10000712C(&qword_10009E608, &qword_10007E4A0);
  v2 = *v0;
  v3 = sub_10007A360();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

uint64_t sub_100019688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000712C(&qword_10009E608, &qword_10007E4A0);
  result = sub_10007A370();
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
      sub_10007A730();

      sub_100079EC0();
      result = sub_10007A760();
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

uint64_t sub_1000198C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10007A730();
  sub_100079EC0();
  v6 = sub_10007A760();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10007A610() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10001952C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000199FC(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1000199FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10007A2F0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_10007A730();

        sub_100079EC0();
        v10 = sub_10007A760();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100019BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009E610, &unk_10007C508);
    v3 = sub_10007A4D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000A0FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_100019CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009E618, &qword_10007C528);
    v3 = sub_10007A4D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000A0FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_100019DE4()
{
  result = qword_10009E4B0;
  if (!qword_10009E4B0)
  {
    type metadata accessor for SessionCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E4B0);
  }

  return result;
}

uint64_t sub_100019E38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_100019E90(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100019F48(__n128 a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t sub_100019F90()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_100016D80(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10001A038(__n128 a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t sub_10001A080()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_1000164E0(v5, v6, v7, v2, v3, v4);
}

__n128 sub_10001A128(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001A13C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001A184(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A244(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001A2AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A2E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001A474;

  return sub_100018644(a1, v4);
}

uint64_t sub_10001A39C(__n128 a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10001A3DC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A474;

  return sub_100014A60(v3, v4, v5, v2);
}

uint64_t sub_10001A4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79745F746E657665 && a2 == 0xEB00000000736570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007A610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001A52C(uint64_t a1)
{
  v2 = sub_10001B198();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001A568(uint64_t a1)
{
  v2 = sub_10001B198();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001A5A4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001A760(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10001A5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x675F747069726373 && a2 == 0xED00007370756F72)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007A610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001A688(uint64_t a1)
{
  v2 = sub_10001B144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001A6C4(uint64_t a1)
{
  v2 = sub_10001B144();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001A700@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001A9D0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_10001A72C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10001AB80(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_10001A760(void *a1)
{
  v3 = sub_10000712C(&qword_10009E680, &qword_10007C8F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-1] - v5;
  v7 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_10001B198();
  sub_10007A790();
  if (v1)
  {
    sub_1000070A8(a1);
    return v7;
  }

  v13 = v4;
  sub_10000751C(a1, a1[3]);
  v8 = sub_10007A770();
  v9 = *(v8 + 16);
  if (v9)
  {
    sub_10001378C(v8 + 40 * v9 - 8, v12);

    sub_10000751C(v12, v12[3]);
    v7 = sub_10007A7D0();
    sub_1000070A8(v12);
    sub_10000712C(&qword_10009E688, &unk_10007C900);
    sub_10001B240(&qword_10009E690, &qword_10009E688, &unk_10007C900, sub_10001B2BC);
    sub_10007A570();
    (*(v13 + 8))(v6, v3);
    sub_1000070A8(a1);
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_10001A9D0(void *a1)
{
  v3 = sub_10000712C(&qword_10009E660, &qword_10007C8E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000751C(a1, a1[3]);
  sub_10001B144();
  sub_10007A790();
  if (v1)
  {
    sub_1000070A8(a1);
  }

  else
  {
    sub_10000712C(&qword_10009E668, &qword_10007C8F0);
    sub_10001B240(&qword_10009E670, &qword_10009E668, &qword_10007C8F0, sub_10001B1EC);
    sub_10007A570();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_1000070A8(a1);
  }

  return v7;
}

void *sub_10001AB80(void *a1)
{
  sub_10000751C(a1, a1[3]);
  v3 = sub_10007A770();
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_10001378C(v3 + 40 * v4 - 8, v14);

    sub_10000751C(v14, v14[3]);
    v5 = sub_10007A7D0();
    v7 = v6;
    sub_1000070A8(v14);
    v8 = v5 == 0x6F736A5F70747468 && v7 == 0xE90000000000006ELL;
    if (v8 || (sub_10007A610() & 1) != 0)
    {

      sub_10001378C(a1, v14);
      v9 = sub_10001A760(v14);
      if (v1)
      {
        return sub_1000070A8(a1);
      }

      v11 = v9;
      goto LABEL_10;
    }

    if (v5 == 0x6C61636F6CLL && v7 == 0xE500000000000000)
    {
    }

    else
    {
      v12 = sub_10007A610();

      if ((v12 & 1) == 0)
      {
        v11 = 0;
LABEL_10:
        sub_1000070A8(a1);
        return v11;
      }
    }

    sub_10001378C(a1, v14);
    v13 = sub_10001A9D0(v14);
    if (v1)
    {
      return sub_1000070A8(a1);
    }

    v11 = v13;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_10001AD84()
{
  result = qword_10009E620;
  if (!qword_10009E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E620);
  }

  return result;
}

unint64_t sub_10001ADDC()
{
  result = qword_10009E628;
  if (!qword_10009E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E628);
  }

  return result;
}

unint64_t sub_10001AE34()
{
  result = qword_10009E630;
  if (!qword_10009E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E630);
  }

  return result;
}

unint64_t sub_10001AE8C()
{
  result = qword_10009E638;
  if (!qword_10009E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E638);
  }

  return result;
}

unint64_t sub_10001AEE4()
{
  result = qword_10009E640;
  if (!qword_10009E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E640);
  }

  return result;
}

unint64_t sub_10001AF3C()
{
  result = qword_10009E648;
  if (!qword_10009E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E648);
  }

  return result;
}

uint64_t sub_10001AF90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10001AFD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001B058(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_10001B074(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10001B088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001B0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001B118(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_10001B144()
{
  result = qword_10009E650;
  if (!qword_10009E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E650);
  }

  return result;
}

unint64_t sub_10001B198()
{
  result = qword_10009E658;
  if (!qword_10009E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E658);
  }

  return result;
}

unint64_t sub_10001B1EC()
{
  result = qword_10009E678;
  if (!qword_10009E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E678);
  }

  return result;
}

uint64_t sub_10001B240(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001B2BC()
{
  result = qword_10009E698;
  if (!qword_10009E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E698);
  }

  return result;
}

uint64_t sub_10001B314()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6C50);
  sub_1000070F4(v0, qword_1000A6C50);
  return sub_100079B90();
}

void *sub_10001B388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;
  return v6;
}

uint64_t sub_10001B3DC()
{
  v1[39] = v0;
  sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for CachedSession(0);
  v1[42] = swift_task_alloc();
  v2 = sub_100079A00();
  v1[43] = v2;
  v1[44] = *(v2 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return _swift_task_switch(sub_10001B510, v0, 0);
}

uint64_t sub_10001B510()
{
  if (qword_1000A1C50 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  v0[47] = sub_1000070F4(v1, qword_1000A6C50);
  v2 = sub_100079B80();
  v3 = sub_10007A160();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "starting submission activity", v4, 2u);
  }

  v5 = v0[39];

  v6 = *(v5 + 112);
  v0[48] = v6;
  if (!v6 || (v7 = v0[39], v8 = *(v7 + 120), (v0[49] = v8) == 0) || (v9 = *(v7 + 128), (v0[50] = v9) == 0))
  {
    v10 = sub_100079B80();
    v11 = sub_10007A190();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "submission activity skipped due to bad initialization", v12, 2u);
    }

    goto LABEL_13;
  }

  if (sub_10007A0E0())
  {

LABEL_13:

    v13 = v0[1];

    return v13();
  }

  sub_1000799C0();
  v15 = swift_task_alloc();
  v0[51] = v15;
  *v15 = v0;
  v15[1] = sub_10001B7A0;

  return sub_100021594(50);
}

uint64_t sub_10001B7A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v5 = *(v3 + 312);
  if (v1)
  {
    v6 = sub_10001D434;
  }

  else
  {
    v6 = sub_10001B8D4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10001B8D4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v17 = v3;
  v4 = v3[52];
  v5 = v4[2];
  v3[54] = v5;
  if (v5)
  {
    v6 = v3[49];
    v7 = (*v6 + 248) & 0xFFFFFFFFFFFFLL | 0x7F8D000000000000;
    v3[55] = *(*v6 + 248);
    v3[56] = v7;
    v3[57] = 0;
    if (v4[2])
    {
      v8 = v4[4];
      v3[58] = v8;
      v9 = v4[5];
      v3[59] = v9;
      swift_bridgeObjectRetain_n();
      v10 = sub_100079B80();
      v11 = sub_10007A190();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v16 = v13;
        *v12 = 136446210;
        *(v12 + 4) = sub_100006B00(v8, v9, &v16);
        _os_log_impl(&_mh_execute_header, v10, v11, "sending events for client type: %{public}s", v12, 0xCu);
        sub_1000070A8(v13);
      }

      a2 = v3[49];
      a1 = sub_10001BB0C;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(a1, a2, a3);
  }

  else
  {
    (*(v3[44] + 8))(v3[46], v3[43], a3);

    v14 = v3[1];

    return v14();
  }
}

uint64_t sub_10001BB0C()
{
  v1 = *(v0 + 312);
  (*(v0 + 440))(*(v0 + 464), *(v0 + 472));

  return _swift_task_switch(sub_10001BB80, v1, 0);
}

uint64_t sub_10001BB80()
{

  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_10001BC2C;
  v3 = v0[58];
  v2 = v0[59];

  return sub_1000218D4(v3, v2, 50);
}

uint64_t sub_10001BC2C(uint64_t a1)
{
  v3 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {
    v4 = v3[39];

    v5 = sub_10001D604;
    v6 = v4;
  }

  else
  {
    v6 = v3[39];
    v5 = sub_10001BD60;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10001BD60(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 488);
  v5 = *(v4 + 16);
  *(v3 + 504) = v5;
  if (!v5)
  {
    v13 = *(v3 + 392);

    *(v3 + 640) = variable initialization expression of Daemon.mode() & 1;
    v14 = *v13;
    *(v3 + 624) = *(*v13 + 256);
    *(v3 + 632) = (v14 + 256) & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;
    a2 = *(v3 + 392);
    a1 = sub_10001D0EC;
    a3 = 0;

    return _swift_task_switch(a1, a2, a3);
  }

  *(v3 + 512) = 0;
  if (!*(v4 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  *(v3 + 64) = *(v4 + 80);
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 16) = v6;
  sub_100009B00(v3 + 16, v3 + 72);
  v9 = *sub_10000F41C();
  v10 = *sub_10000F410();
  v11 = swift_task_alloc();
  *(v3 + 520) = v11;
  *v11 = v3;
  v11[1] = sub_10001BEF4;

  return sub_100021010(v3 + 16, v9, v10);
}

uint64_t sub_10001BEF4(uint64_t a1)
{
  v3 = *v2;
  v3[66] = a1;
  v3[67] = v1;

  if (v1)
  {
    v4 = v3[39];

    sub_100019EF4((v3 + 2));

    v5 = sub_10001D8B4;
    v6 = v4;
  }

  else
  {
    v6 = v3[39];
    v5 = sub_10001C048;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10001C048()
{
  v1 = *(v0 + 528);
  if (*(v1 + 2))
  {
    v2 = *(v0 + 400);
    v3 = *(v0 + 360);
    v4 = *(v0 + 336);
    v5 = v1[4];
    v6 = *(v1 + 6);
    v7 = *(v1 + 7);
    v8 = *(v1 + 8);
    (*(*(v0 + 352) + 16))(v3, *(v0 + 368), *(v0 + 344));
    sub_100009B00(v0 + 16, v0 + 128);

    sub_100009BA8(v0 + 16, v6, v7, v3, v8, v4, v5);
    v25 = (*(*v2 + 120) + **(*v2 + 120));
    v9 = swift_task_alloc();
    *(v0 + 544) = v9;
    *v9 = v0;
    v9[1] = sub_10001C390;
    v10 = *(v0 + 328);
    v11 = *(v0 + 336);

    return v25(v11, v10, &off_100095D60);
  }

  else
  {
    sub_100019EF4(v0 + 16);

    v13 = *(v0 + 512) + 1;
    if (v13 == *(v0 + 504))
    {

      v14 = swift_task_alloc();
      *(v0 + 480) = v14;
      *v14 = v0;
      v14[1] = sub_10001BC2C;
      v16 = *(v0 + 464);
      v15 = *(v0 + 472);

      return sub_1000218D4(v16, v15, 50);
    }

    else
    {
      *(v0 + 512) = v13;
      v17 = *(v0 + 488);
      if (v13 >= *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        v18 = v17 + 56 * v13;
        v19 = *(v18 + 32);
        v20 = *(v18 + 48);
        v21 = *(v18 + 64);
        *(v0 + 64) = *(v18 + 80);
        *(v0 + 32) = v20;
        *(v0 + 48) = v21;
        *(v0 + 16) = v19;
        sub_100009B00(v0 + 16, v0 + 72);
        v22 = *sub_10000F41C();
        v23 = *sub_10000F410();
        v24 = swift_task_alloc();
        *(v0 + 520) = v24;
        *v24 = v0;
        v24[1] = sub_10001BEF4;

        return sub_100021010(v0 + 16, v22, v23);
      }
    }
  }

  return result;
}

uint64_t sub_10001C390(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[69] = a1;
  v5[70] = a2;
  v5[71] = v2;

  v6 = v4[39];
  if (v2)
  {
    v7 = sub_10001DB64;
  }

  else
  {
    v7 = sub_10001C4CC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10001C4CC()
{
  v56 = v0;
  if (v0[69])
  {
    v1 = v0[70];
    v2 = *(v0[66] + 16);
    v3 = _swiftEmptyArrayStorage;
    if (v2)
    {
      v52 = v0[70];
      v0[37] = _swiftEmptyArrayStorage;
      sub_10001E8EC(0, v2, 0);
      v0 = v54;
      v4 = 0;
      v3 = v54[37];
      do
      {
        v5 = (v0[66] + v4);
        v7 = v5[5];
        v6 = v5[6];
        v8 = v5[7];
        v9 = v5[8];
        v0[37] = v3;
        v11 = v3[2];
        v10 = v3[3];
        v12 = v11 + 1;

        if (v11 >= v10 >> 1)
        {
          sub_10001E8EC((v10 > 1), v11 + 1, 1);
          v3 = v54[37];
        }

        v3[2] = v12;
        v13 = &v3[4 * v11];
        v13[4] = v7;
        v13[5] = v6;
        v13[6] = v8;
        v13[7] = v9;
        v4 += 40;
        --v2;
        v0 = v54;
      }

      while (v2);
    }

    else
    {
      v12 = _swiftEmptyArrayStorage[2];
      if (!v12)
      {
        v22 = _swiftEmptyArrayStorage;

LABEL_17:
        v54[72] = v22;
        ObjectType = swift_getObjectType();
        v53 = (*(v1 + 8) + **(v1 + 8));
        v31 = swift_task_alloc();
        v54[73] = v31;
        *v31 = v54;
        v31[1] = sub_10001CB4C;

        return v53(v22, ObjectType, v1);
      }

      v52 = v0[70];
    }

    v0[38] = _swiftEmptyArrayStorage;
    sub_10001276C(0, v12, 0);
    v22 = v0[38];
    v23 = v3 + 7;
    do
    {
      v24 = *(v23 - 2);
      v25 = *(v23 - 1);
      v26 = *v23;
      v54[38] = v22;
      v27 = v22[2];
      v28 = v22[3];

      if (v27 >= v28 >> 1)
      {
        sub_10001276C((v28 > 1), v27 + 1, 1);
        v22 = v54[38];
      }

      v22[2] = v27 + 1;
      v29 = &v22[3 * v27];
      v29[4] = v24;
      v29[5] = v25;
      v29[6] = v26;
      v23 += 4;
      --v12;
    }

    while (v12);

    v1 = v52;
    goto LABEL_17;
  }

  sub_10001EC6C();
  swift_allocError();
  swift_willThrow();
  sub_10001EC0C(v0[42], type metadata accessor for CachedSession);

  swift_errorRetain();
  v14 = sub_100079B80();
  v15 = sub_10007A170();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[58];
    v16 = v0[59];
    v18 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v18 = 136446466;
    *(v18 + 4) = sub_100006B00(v17, v16, v55);
    *(v18 + 12) = 2082;
    swift_getErrorValue();
    v19 = sub_10007A6D0();
    v21 = sub_100006B00(v19, v20, v55);

    *(v18 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "failed to send sendOneMessage events for clientType %{public}s: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v33 = *(v0[66] + 16);
  v34 = v0;
  if (v33)
  {
    v0[33] = _swiftEmptyArrayStorage;
    sub_10001E8EC(0, v33, 0);
    v34 = v54;
    v35 = 0;
    v36 = v54[33];
    do
    {
      v37 = (v34[66] + v35);
      v38 = v37[5];
      v39 = v37[6];
      v40 = v37[7];
      v41 = v37[8];
      v34[33] = v36;
      v43 = v36[2];
      v42 = v36[3];

      if (v43 >= v42 >> 1)
      {
        sub_10001E8EC((v42 > 1), v43 + 1, 1);
        v36 = v54[33];
      }

      v36[2] = v43 + 1;
      v44 = &v36[4 * v43];
      v44[4] = v38;
      v44[5] = v39;
      v44[6] = v40;
      v44[7] = v41;
      v35 += 40;
      --v33;
      v34 = v54;
    }

    while (v33);

    v45 = v36[2];
    if (v45)
    {
      goto LABEL_27;
    }
  }

  else
  {

    v36 = _swiftEmptyArrayStorage;
    v45 = _swiftEmptyArrayStorage[2];
    if (v45)
    {
LABEL_27:
      v34[34] = _swiftEmptyArrayStorage;
      sub_10001E8CC(0, v45, 0);
      v34 = v54;
      v46 = v54[34];
      v47 = v46[2];
      v48 = 4;
      do
      {
        v49 = v36[v48];
        v34[34] = v46;
        v50 = v46[3];
        if (v47 >= v50 >> 1)
        {
          sub_10001E8CC((v50 > 1), v47 + 1, 1);
          v34 = v54;
          v46 = v54[34];
        }

        v46[2] = v47 + 1;
        v46[v47 + 4] = v49;
        v48 += 4;
        ++v47;
        --v45;
      }

      while (v45);

      goto LABEL_34;
    }
  }

  v46 = _swiftEmptyArrayStorage;
LABEL_34:
  v34[75] = v46;
  v51 = swift_task_alloc();
  v34[76] = v51;
  *v51 = v34;
  v51[1] = sub_10001CEFC;

  return sub_100021438(v46);
}

uint64_t sub_10001CB4C()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = *(v2 + 312);

  if (v0)
  {
    v4 = sub_10001DF0C;
  }

  else
  {
    v4 = sub_10001CC94;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10001CC94(__n128 a1)
{
  v2 = v1;
  v3 = v1[42];
  swift_unknownObjectRelease();
  sub_10001EC0C(v3, type metadata accessor for CachedSession);
  v4 = *(v1[66] + 16);
  if (v4)
  {
    v1[33] = _swiftEmptyArrayStorage;
    sub_10001E8EC(0, v4, 0);
    v5 = 0;
    v23 = v1;
    v6 = v1[33];
    do
    {
      v7 = (v23[66] + v5);
      v9 = v7[5];
      v8 = v7[6];
      v10 = v7[7];
      v11 = v7[8];
      v23[33] = v6;
      v13 = v6[2];
      v12 = v6[3];

      if (v13 >= v12 >> 1)
      {
        sub_10001E8EC((v12 > 1), v13 + 1, 1);
        v6 = v23[33];
      }

      v6[2] = v13 + 1;
      v14 = &v6[4 * v13];
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v10;
      v14[7] = v11;
      v5 += 40;
      --v4;
    }

    while (v4);
    v2 = v23;

    v15 = v6[2];
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_13:

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v6 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage[2];
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_7:
  v2[34] = _swiftEmptyArrayStorage;
  sub_10001E8CC(0, v15, 0);
  v16 = v2[34];
  v17 = v16[2];
  v18 = 4;
  do
  {
    v19 = v6[v18];
    v2[34] = v16;
    v20 = v16[3];
    if (v17 >= v20 >> 1)
    {
      sub_10001E8CC((v20 > 1), v17 + 1, 1);
      v16 = v2[34];
    }

    v16[2] = v17 + 1;
    v16[v17 + 4] = v19;
    v18 += 4;
    ++v17;
    --v15;
  }

  while (v15);

LABEL_14:
  v2[75] = v16;
  v21 = swift_task_alloc();
  v2[76] = v21;
  *v21 = v2;
  v21[1] = sub_10001CEFC;

  return sub_100021438(v16);
}

uint64_t sub_10001CEFC()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = *(v2 + 312);

    sub_100019EF4(v2 + 16);
    v4 = sub_10001E2BC;
  }

  else
  {
    v3 = *(v2 + 312);

    v4 = sub_10001D030;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10001D030()
{
  v1 = *sub_10000F41C();
  v2 = *sub_10000F410();
  v3 = swift_task_alloc();
  *(v0 + 520) = v3;
  *v3 = v0;
  v3[1] = sub_10001BEF4;

  return sub_100021010(v0 + 16, v1, v2);
}

uint64_t sub_10001D0EC()
{
  v1 = *(v0 + 312);
  (*(v0 + 624))(*(v0 + 464), *(v0 + 472), *(v0 + 640));

  return _swift_task_switch(sub_10001D17C, v1, 0);
}

uint64_t sub_10001D17C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v20 = v3;
  v4 = v3[57] + 1;
  if (v4 == v3[54])
  {
    v5 = v3[46];
    v6 = v3[43];
    v7 = v3[44];

    (*(v7 + 8))(v5, v6);
    if (sub_10007A0E0())
    {

      v8 = v3[1];

      return v8();
    }

    else
    {
      sub_1000799C0();
      v18 = swift_task_alloc();
      v3[51] = v18;
      *v18 = v3;
      v18[1] = sub_10001B7A0;

      return sub_100021594(50);
    }
  }

  else
  {
    v3[57] = v4;
    v10 = v3[52];
    if (v4 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = v10 + 16 * v4;
      v12 = *(v11 + 32);
      v3[58] = v12;
      v13 = *(v11 + 40);
      v3[59] = v13;
      swift_bridgeObjectRetain_n();
      v14 = sub_100079B80();
      v15 = sub_10007A190();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19 = v17;
        *v16 = 136446210;
        *(v16 + 4) = sub_100006B00(v12, v13, &v19);
        _os_log_impl(&_mh_execute_header, v14, v15, "sending events for client type: %{public}s", v16, 0xCu);
        sub_1000070A8(v17);
      }

      a2 = v3[49];
      a1 = sub_10001BB0C;
      a3 = 0;
    }

    return _swift_task_switch(a1, a2, a3);
  }
}

uint64_t sub_10001D434()
{
  v11 = v0;
  (*(v0[44] + 8))(v0[46], v0[43]);
  swift_errorRetain();
  v1 = sub_100079B80();
  v2 = sub_10007A170();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = sub_10007A6D0();
    v7 = sub_100006B00(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "error running sendOneMessage submission: %s", v3, 0xCu);
    sub_1000070A8(v4);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10001D604()
{
  v17 = v0;
  v2 = v0[58];
  v1 = v0[59];
  (*(v0[44] + 8))(v0[46], v0[43]);
  swift_errorRetain();
  v3 = sub_100079B80();
  v4 = sub_10007A170();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_10007A6D0();
    v9 = sub_100006B00(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "error running sendOneMessage submission: %s", v5, 0xCu);
    sub_1000070A8(v6);
  }

  else
  {
  }

  v10 = v0[49];
  if (v1)
  {
    v11 = v0[40];
    v12 = sub_10007A0A0();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v2;
    v13[6] = v1;

    sub_100014B7C(0, 0, v11, &unk_10007C930, v13);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10001D8B4()
{
  v17 = v0;
  v2 = v0[58];
  v1 = v0[59];
  (*(v0[44] + 8))(v0[46], v0[43]);
  swift_errorRetain();
  v3 = sub_100079B80();
  v4 = sub_10007A170();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_10007A6D0();
    v9 = sub_100006B00(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "error running sendOneMessage submission: %s", v5, 0xCu);
    sub_1000070A8(v6);
  }

  else
  {
  }

  v10 = v0[49];
  if (v1)
  {
    v11 = v0[40];
    v12 = sub_10007A0A0();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v2;
    v13[6] = v1;

    sub_100014B7C(0, 0, v11, &unk_10007C930, v13);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10001DB64()
{
  v31 = v0;
  v1 = v0;
  sub_10001EC0C(v0[42], type metadata accessor for CachedSession);

  swift_errorRetain();
  v2 = sub_100079B80();
  v3 = sub_10007A170();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[58];
    v4 = v0[59];
    v6 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_100006B00(v5, v4, &v30);
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v7 = sub_10007A6D0();
    v9 = sub_100006B00(v7, v8, &v30);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to send sendOneMessage events for clientType %{public}s: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = *(v0[66] + 16);
  if (v10)
  {
    v0[33] = _swiftEmptyArrayStorage;
    sub_10001E8EC(0, v10, 0);
    v11 = 0;
    v29 = v0;
    v12 = v0[33];
    do
    {
      v13 = (v29[66] + v11);
      v15 = v13[5];
      v14 = v13[6];
      v16 = v13[7];
      v17 = v13[8];
      v29[33] = v12;
      v19 = v12[2];
      v18 = v12[3];

      if (v19 >= v18 >> 1)
      {
        sub_10001E8EC((v18 > 1), v19 + 1, 1);
        v12 = v29[33];
      }

      v12[2] = v19 + 1;
      v20 = &v12[4 * v19];
      v20[4] = v15;
      v20[5] = v14;
      v20[6] = v16;
      v20[7] = v17;
      v11 += 40;
      --v10;
    }

    while (v10);
    v1 = v29;

    v21 = v12[2];
    if (v21)
    {
      goto LABEL_10;
    }

LABEL_16:

    v22 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v12 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage[2];
  if (!v21)
  {
    goto LABEL_16;
  }

LABEL_10:
  v1[34] = _swiftEmptyArrayStorage;
  sub_10001E8CC(0, v21, 0);
  v22 = v1[34];
  v23 = v22[2];
  v24 = 4;
  do
  {
    v25 = v12[v24];
    v1[34] = v22;
    v26 = v22[3];
    if (v23 >= v26 >> 1)
    {
      sub_10001E8CC((v26 > 1), v23 + 1, 1);
      v22 = v1[34];
    }

    v22[2] = v23 + 1;
    v22[v23 + 4] = v25;
    v24 += 4;
    ++v23;
    --v21;
  }

  while (v21);

LABEL_17:
  v1[75] = v22;
  v27 = swift_task_alloc();
  v1[76] = v27;
  *v27 = v1;
  v27[1] = sub_10001CEFC;

  return sub_100021438(v22);
}

uint64_t sub_10001DF0C(__n128 a1)
{
  v32 = v1;
  v2 = v1;
  swift_unknownObjectRelease();
  sub_10001EC0C(v1[42], type metadata accessor for CachedSession);

  swift_errorRetain();
  v3 = sub_100079B80();
  v4 = sub_10007A170();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v1[58];
    v5 = v1[59];
    v7 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100006B00(v6, v5, &v31);
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v8 = sub_10007A6D0();
    v10 = sub_100006B00(v8, v9, &v31);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "failed to send sendOneMessage events for clientType %{public}s: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v1[66] + 16);
  if (v11)
  {
    v1[33] = _swiftEmptyArrayStorage;
    sub_10001E8EC(0, v11, 0);
    v12 = 0;
    v30 = v1;
    v13 = v1[33];
    do
    {
      v14 = (v30[66] + v12);
      v16 = v14[5];
      v15 = v14[6];
      v17 = v14[7];
      v18 = v14[8];
      v30[33] = v13;
      v20 = v13[2];
      v19 = v13[3];

      if (v20 >= v19 >> 1)
      {
        sub_10001E8EC((v19 > 1), v20 + 1, 1);
        v13 = v30[33];
      }

      v13[2] = v20 + 1;
      v21 = &v13[4 * v20];
      v21[4] = v16;
      v21[5] = v15;
      v21[6] = v17;
      v21[7] = v18;
      v12 += 40;
      --v11;
    }

    while (v11);
    v2 = v30;

    v22 = v13[2];
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_16:

    v23 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v13 = _swiftEmptyArrayStorage;
  v22 = _swiftEmptyArrayStorage[2];
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_10:
  v2[34] = _swiftEmptyArrayStorage;
  sub_10001E8CC(0, v22, 0);
  v23 = v2[34];
  v24 = v23[2];
  v25 = 4;
  do
  {
    v26 = v13[v25];
    v2[34] = v23;
    v27 = v23[3];
    if (v24 >= v27 >> 1)
    {
      sub_10001E8CC((v27 > 1), v24 + 1, 1);
      v23 = v2[34];
    }

    v23[2] = v24 + 1;
    v23[v24 + 4] = v26;
    v25 += 4;
    ++v24;
    --v22;
  }

  while (v22);

LABEL_17:
  v2[75] = v23;
  v28 = swift_task_alloc();
  v2[76] = v28;
  *v28 = v2;
  v28[1] = sub_10001CEFC;

  return sub_100021438(v23);
}

void sub_10001E2BC()
{
  v22 = v0;

  swift_errorRetain();
  v1 = sub_100079B80();
  v2 = sub_10007A170();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 464);
    v3 = *(v0 + 472);
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_100006B00(v4, v3, &v21);
    *(v5 + 12) = 2082;
    swift_getErrorValue();
    v6 = sub_10007A6D0();
    v8 = sub_100006B00(v6, v7, &v21);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "failed to remove sendOneMessage events for clientType %{public}s: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = *(v0 + 512) + 1;
  if (v9 == *(v0 + 504))
  {

    v10 = swift_task_alloc();
    *(v0 + 480) = v10;
    *v10 = v0;
    v10[1] = sub_10001BC2C;
    v12 = *(v0 + 464);
    v11 = *(v0 + 472);

    sub_1000218D4(v12, v11, 50);
  }

  else
  {
    *(v0 + 512) = v9;
    v13 = *(v0 + 488);
    if (v9 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v14 = v13 + 56 * v9;
      v15 = *(v14 + 32);
      v16 = *(v14 + 48);
      v17 = *(v14 + 64);
      *(v0 + 64) = *(v14 + 80);
      *(v0 + 32) = v16;
      *(v0 + 48) = v17;
      *(v0 + 16) = v15;
      sub_100009B00(v0 + 16, v0 + 72);
      v18 = *sub_10000F41C();
      v19 = *sub_10000F410();
      v20 = swift_task_alloc();
      *(v0 + 520) = v20;
      *v20 = v0;
      v20[1] = sub_10001BEF4;

      sub_100021010(v0 + 16, v18, v19);
    }
  }
}

uint64_t sub_10001E5D8()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10001E620()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100007838;

  return v4();
}

double sub_10001E730()
{
  SubmitEventsActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();

  return result;
}

uint64_t sub_10001E774()
{
  v0 = *SubmitEventsActivityConfig.identifier.unsafeMutableAddressor();

  return v0;
}

uint64_t sub_10001E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10001E7CC, 0, 0);
}

uint64_t sub_10001E7CC()
{
  v1 = *(v0 + 16);
  *(v0 + 56) = variable initialization expression of Daemon.mode() & 1;
  v2 = *v1 + 256;
  *(v0 + 40) = *v2;
  *(v0 + 48) = v2 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;

  return _swift_task_switch(sub_10001E860, v1, 0);
}

uint64_t sub_10001E860()
{
  (*(v0 + 40))(*(v0 + 24), *(v0 + 32), *(v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

char *sub_10001E8CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001E90C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E8EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001EA10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E90C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E778, &qword_10007CAB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10001EA10(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E780, &unk_10007CAC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10001EB1C(__n128 a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_10001EB64()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_10001E7A8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10001EC0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001EC6C()
{
  result = qword_10009E6A0;
  if (!qword_10009E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E6A0);
  }

  return result;
}

unint64_t sub_10001ECC4()
{
  result = qword_10009E6A8;
  if (!qword_10009E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E6A8);
  }

  return result;
}

unint64_t sub_10001ED1C(uint64_t a1, uint64_t a2)
{
  result = sub_10001ED44(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001ED44(uint64_t a1, uint64_t a2)
{
  result = qword_10009E6B0;
  if (!qword_10009E6B0)
  {
    type metadata accessor for SubmitEventsActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E6B0);
  }

  return result;
}

uint64_t sub_10001EDCC()
{
  v0 = NSHomeDirectory();
  sub_100079E20();

  sub_1000797D0();
}

uint64_t sub_10001EE54()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A1F68);
  sub_1000070F4(v0, qword_1000A1F68);
  return sub_100079B90();
}

uint64_t DiskCache.__allocating_init(rootCacheURL:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000030A0;

  return DiskCache.init(rootCacheURL:)(a1);
}

uint64_t DiskCache.init(rootCacheURL:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  type metadata accessor for SQLiteDB.Location(0);
  v2[19] = swift_task_alloc();
  sub_10000712C(&qword_10009E788, &qword_10007E390);
  v2[20] = swift_task_alloc();
  v3 = sub_1000798B0();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_10001F0D0, 0, 0);
}

uint64_t sub_10001F0D0()
{
  v1 = v0[23];
  v2 = v0[16];
  swift_defaultActor_initialize();
  sub_1000406E4(v2, 0x636163746E657665, 0xEB000000002F6568, v1);
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[22];
  sub_100079810();
  v6 = *(v5 + 8);
  v0[25] = v6;
  v0[26] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLFileSizeKey;
  v8 = NSURLFileSizeKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_100009668(inited + 32);
  sub_1000797C0();
  v9 = v0[20];

  v10 = sub_100079750();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = sub_100079730();
  v14 = v13;
  (*(v11 + 8))(v9, v10);
  if (v14)
  {
    goto LABEL_14;
  }

  v15 = sub_10003F2A0();
  swift_beginAccess();
  if (*v15)
  {
    if (v12 <= 0x140000000)
    {
LABEL_14:
      v21 = v0[24];
      v22 = v0[21];
      v23 = v0[22];
      v24 = v0[19];
      type metadata accessor for SQLiteDB();
      (*(v23 + 16))(v24, v21, v22);
      (*(v23 + 56))(v24, 0, 1, v22);
      *(v0[17] + 112) = sub_10005A004(v24);
      v30 = swift_task_alloc();
      v0[27] = v30;
      *v30 = v0;
      v30[1] = sub_10001F728;

      return DiskCache.schemaVersion.getter();
    }
  }

  else if (v12 <= 3221225472)
  {
    goto LABEL_14;
  }

  if (*sub_10003F788())
  {
    if (qword_1000A1F60 != -1)
    {
      swift_once();
    }

    v16 = sub_100079BA0();
    sub_1000070F4(v16, qword_1000A1F68);
    v17 = sub_100079B80();
    v18 = sub_10007A170();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349312;
      *(v19 + 4) = v12;
      *(v19 + 12) = 2050;
      swift_beginAccess();
      v20 = 3221225472;
      if (*v15)
      {
        v20 = 0x140000000;
      }

      *(v19 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v17, v18, "cache size %{public}ld exceeded maximum %{public}ld - cache delete overridden", v19, 0x16u);
    }

    goto LABEL_14;
  }

  if (qword_1000A1F60 != -1)
  {
    swift_once();
  }

  v31 = sub_100079BA0();
  sub_1000070F4(v31, qword_1000A1F68);
  v32 = sub_100079B80();
  v33 = sub_10007A170();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134349312;
    *(v34 + 4) = v12;
    *(v34 + 12) = 2050;
    swift_beginAccess();
    v35 = 3221225472;
    if (*v15)
    {
      v35 = 0x140000000;
    }

    *(v34 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v32, v33, "cache size %{public}ld exceeded maximum %{public}ld - deleting cache", v34, 0x16u);
  }

  v36 = v0[24];
  v37 = v0[21];

  sub_100023424();
  swift_allocError();
  *v38 = 1;
  swift_willThrow();
  v6(v36, v37);
  v25 = v0[21];
  v26 = v0[22];
  v27 = v0[16];
  swift_defaultActor_destroy();
  (*(v26 + 8))(v27, v25);
  swift_deallocPartialClassInstance();

  v28 = v0[1];

  return v28();
}

uint64_t sub_10001F728(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    sub_100024AD8(&qword_10009E790, v6, type metadata accessor for DiskCache, &protocol conformance descriptor for DiskCache);
    swift_getObjectType();
    v7 = sub_10007A050();
    v9 = v8;
    v10 = sub_10001FCC4;
  }

  else
  {
    *(v4 + 224) = a1;
    sub_100024AD8(&qword_10009E790, v5, type metadata accessor for DiskCache, &protocol conformance descriptor for DiskCache);
    swift_getObjectType();
    v7 = sub_10007A050();
    v9 = v11;
    v10 = sub_10001F914;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_10001F914()
{
  v1 = v0[28];
  if (v1 > 8)
  {
    v4 = v0[25];
    v5 = v0[24];
    v6 = v0[21];
    v4(v0[16], v6);
    v4(v5, v6);

    v7 = v0[1];
    v8 = v0[17];

    return v7(v8);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_10001FA58;

    return sub_100020150(v1);
  }
}

uint64_t sub_10001FA58()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v4 = sub_100024AD8(&qword_10009E790, v3, type metadata accessor for DiskCache, &protocol conformance descriptor for DiskCache);
  if (v0)
  {
    *(v2 + 248) = v4;
    swift_getObjectType();
    v5 = sub_10007A050();
    v7 = v6;
    v8 = sub_10001FD58;
  }

  else
  {
    swift_getObjectType();
    v5 = sub_10007A050();
    v7 = v9;
    v8 = sub_10001FC04;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_10001FC04()
{
  v1 = v0[25];
  v2 = v0[24];
  v3 = v0[21];
  v1(v0[16], v3);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[17];

  return v4(v5);
}

uint64_t sub_10001FCC4()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_10001FA58;

  return sub_100020150(0);
}

uint64_t sub_10001FD58()
{
  v1 = *(*(v0 + 136) + 112);
  *(v0 + 256) = v1;

  return _swift_task_switch(sub_10001FDD0, v1, 0);
}

uint64_t sub_10001FDD0()
{
  sub_10005A488();

  swift_getObjectType();
  v1 = sub_10007A050();

  return _swift_task_switch(sub_10001FE68, v1, v0);
}

uint64_t sub_10001FE68(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[24];
  v4 = v1[21];
  v5 = v1[16];
  swift_willThrow();
  v2(v5, v4);
  v2(v3, v4);

  v6 = v1[1];

  return v6();
}

uint64_t sub_10001FF58()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = 0x6E6F6973726576;
  *(v2 + 24) = 0xE700000000000000;

  return _swift_task_switch(sub_10001FFE8, v1, 0);
}

uint64_t sub_10001FFE8()
{
  sub_10005A2A8(0xD000000000000025, 0x8000000100082E30, sub_100023478);
  v0[6] = 0;

  v1 = v0[2];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1000200E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020150(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100020170, v1, 0);
}

uint64_t sub_100020170()
{
  if (v0[2])
  {
    if (qword_1000A1F60 != -1)
    {
      swift_once();
    }

    v1 = sub_100079BA0();
    sub_1000070F4(v1, qword_1000A1F68);
    v2 = sub_100079B80();
    v3 = sub_10007A190();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "unsupported prior database version - deleting disk cache", v4, 2u);
    }

    sub_100023424();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = *(v0[3] + 112);
    v0[4] = v8;

    return _swift_task_switch(sub_100020300, v8, 0);
  }
}

uint64_t sub_100020300()
{
  sub_10005A470(0xD00000000000052CLL, 0x8000000100082900);
  *(v0 + 40) = 0;
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1000203CC, v1, 0);
}

uint64_t sub_1000203CC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[2] = 0x6E6F6973726576;
  v2[3] = 0xE700000000000000;
  v2[4] = 9;

  return _swift_task_switch(sub_10002045C, v1, 0);
}

uint64_t sub_10002045C()
{
  v1 = v0[5];
  sub_10005A2A8(0xD000000000000060, 0x80000001000833A0, sub_100024B40);
  v0[7] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_10002065C;
  }

  else
  {
    v4 = v0[3];

    v3 = sub_100020534;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100020534()
{
  if (qword_1000A1F60 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A1F68);
  v2 = sub_100079B80();
  v3 = sub_10007A190();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = 9;
    _os_log_impl(&_mh_execute_header, v2, v3, "initialized disk cache with version %lld", v4, 0xCu);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10002065C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000206C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000712C(&qword_10009E868, "ʋ");
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10007B7D0;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = &off_100098A58;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 96) = &type metadata for Int64;
  *(v9 + 104) = &off_100098A18;
  *(v9 + 72) = a4;
  v10 = *(*a1 + 192);

  v10(v9);

  if (!v4)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_1000207CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1000207F0, v3, 0);
}

uint64_t sub_1000207F0()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;

  return _swift_task_switch(sub_100020878, v2, 0);
}

uint64_t sub_100020878()
{
  sub_10005A2A8(0xD0000000000000AFLL, 0x8000000100082E60, sub_1000234A4);
  *(v0 + 64) = 0;
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_100024B3C, v1, 0);
}

uint64_t sub_100020950()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000209B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v6 = sub_100079A00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 32))(a3, a4);
  getTimeIntervalSince1970(Date:)(v9);
  v27 = v10;
  (*(v7 + 8))(v9, v6);
  sub_10000712C(&qword_10009E868, "ʋ");
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10007CAD0;
  v12 = (*(a4 + 16))(a3, a4);
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = &off_100098A58;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = *(a4 + 8);
  v14(v29, a3, a4);
  v15 = v29[0];
  v16 = v29[1];

  sub_100019EF4(v29);
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = &off_100098A58;
  *(v11 + 72) = v15;
  *(v11 + 80) = v16;
  v14(v30, a3, a4);
  v17 = v30[2];
  v18 = v30[3];

  sub_100019EF4(v30);
  *(v11 + 136) = &type metadata for String;
  *(v11 + 144) = &off_100098A58;
  *(v11 + 112) = v17;
  *(v11 + 120) = v18;
  v14(v31, a3, a4);
  sub_100019EF4(v31);
  v19 = v32;
  *(v11 + 176) = &type metadata for Bool;
  *(v11 + 184) = &off_1000989D8;
  *(v11 + 152) = v19;
  v14(v33, a3, a4);
  sub_100019EF4(v33);
  v20 = v34;
  *(v11 + 216) = &type metadata for Bool;
  *(v11 + 224) = &off_1000989D8;
  *(v11 + 192) = v20;
  v14(v35, a3, a4);
  v21 = v35[5];
  v22 = v35[6];

  sub_100019EF4(v35);
  *(v11 + 256) = &type metadata for String;
  *(v11 + 264) = &off_100098A58;
  *(v11 + 232) = v21;
  *(v11 + 240) = v22;
  v23 = v28;
  v24 = (*(a4 + 24))(a3, a4);
  *(v11 + 296) = &type metadata for Double;
  *(v11 + 304) = &off_100098A38;
  *(v11 + 272) = v24;
  *(v11 + 336) = &type metadata for Int64;
  *(v11 + 344) = &off_100098A18;
  *(v11 + 312) = v27;
  v25 = v35[9];
  (*(*v23 + 192))(v11);

  if (!v25)
  {
    return (*(*v23 + 176))(result);
  }

  return result;
}

uint64_t sub_100020D38(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 32) = a2;
  *(v7 + 24) = a3;
  *(v7 + 16) = a1;
  return _swift_task_switch(sub_100020D64, v6, 0);
}

uint64_t sub_100020D64()
{
  v1 = sub_1000799B0();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v5 = 0;
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return _swift_task_switch(v1, v2, v3);
  }

  v5 = v4;
LABEL_6:
  v6 = sub_1000234C4(v0[5]);
  v0[7] = 0;
  v0[8] = v7;
  v8 = v6;
  v9 = v7;
  v10 = v0[3];
  v11 = v0[2];
  v12 = *(v0[6] + 112);
  v0[9] = v12;
  v13 = swift_task_alloc();
  v0[10] = v13;
  v13[2] = v11;
  v13[3] = v10;
  v13[4] = v5;
  v13[5] = v8;
  v13[6] = v9;
  v1 = sub_100020EBC;
  v2 = v12;
  v3 = 0;

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100020EBC()
{
  v1 = v0[7];
  sub_10005A2A8(0xD0000000000000C4, 0x8000000100082F10, sub_100023800);
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[6];
    v3 = sub_100020FA0;
  }

  else
  {
    v4 = v0[6];

    v3 = sub_100024B3C;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100020FA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100021010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100021034, v3, 0);
}

uint64_t sub_100021034()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v1 + 112);
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = v1;

  return _swift_task_switch(sub_1000210C8, v5, 0);
}

uint64_t sub_1000210C8()
{
  sub_10000712C(&qword_10009E7A0, &qword_10007CB50);
  sub_10005A2A8(0xD000000000000185, 0x8000000100082FE0, sub_1000239D4);
  *(v0 + 72) = 0;
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_1000211B4, v1, 0);
}

uint64_t sub_1000211D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100021234@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_10000712C(&qword_10009E868, "ʋ");
  v11 = swift_allocObject();
  v13 = a2[1];
  v22 = *a2;
  v12 = v22;
  *(v11 + 16) = xmmword_10007CAE0;
  *(v11 + 32) = v12;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = &off_100098A58;
  v21 = v13;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = &off_100098A58;
  *(v11 + 72) = v13;
  v19 = a2[2];
  v20 = *(a2 + 6);
  v14 = v19;
  *(v11 + 136) = &type metadata for Bool;
  *(v11 + 144) = &off_1000989D8;
  *(v11 + 112) = v14;
  v15 = BYTE1(v19);
  *(v11 + 176) = &type metadata for Bool;
  *(v11 + 184) = &off_1000989D8;
  *(v11 + 152) = v15;
  *(v11 + 216) = &type metadata for String;
  *(v11 + 224) = &off_100098A58;
  *(v11 + 192) = *(a2 + 40);
  *(v11 + 256) = &type metadata for Int64;
  *(v11 + 264) = &off_100098A18;
  *(v11 + 232) = a3;
  *(v11 + 296) = &type metadata for Int64;
  *(v11 + 304) = &off_100098A18;
  *(v11 + 272) = a4;
  v16 = *(*a1 + 192);
  sub_10002423C(&v22, v18);
  sub_10002423C(&v21, v18);
  sub_1000248A8(&v19, v18);
  v16(v11);

  if (!v5)
  {
    v18[0] = _swiftEmptyArrayStorage;
    __chkstk_darwin(result);
    (*(*a1 + 144))(sub_100024904);
    result = v18[0];
    *a5 = v18[0];
  }

  return result;
}

uint64_t sub_100021438(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100021458, v1, 0);
}

uint64_t sub_100021458()
{
  v1 = v0[2];
  v2 = *(v0[3] + 112);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return _swift_task_switch(sub_1000214D4, v2, 0);
}

uint64_t sub_1000214D4()
{
  sub_10005A304(sub_1000239F4);
  *(v0 + 48) = 0;
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_100024B3C, v1, 0);
}

uint64_t sub_100021594(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1000215B4, v1, 0);
}

uint64_t sub_1000215B4()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;

  return _swift_task_switch(sub_100021630, v2, 0);
}

uint64_t sub_100021630()
{
  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  sub_10005A2A8(0xD000000000000045, 0x8000000100083170, sub_100023B30);
  *(v0 + 56) = 0;
  v1 = *(v0 + 32);

  return _swift_task_switch(sub_100024B58, v1, 0);
}

uint64_t sub_10002171C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100021780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10000712C(&qword_10009E868, "ʋ");
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10007B7C0;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &off_1000989F8;
  *(v7 + 32) = a2;
  (*(*a1 + 192))();

  if (!v3)
  {
    __chkstk_darwin(result);
    (*(*a1 + 144))(sub_1000246A0);
    result = _swiftEmptyArrayStorage;
    *a3 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000218D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1000218F8, v3, 0);
}

uint64_t sub_1000218F8()
{
  v1 = *(v0 + 40);
  v5 = *(v0 + 24);
  v2 = *(*(v0 + 48) + 112);
  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v5;
  *(v3 + 32) = v1;

  return _swift_task_switch(sub_10002198C, v2, 0);
}

uint64_t sub_10002198C()
{
  sub_10000712C(&qword_10009E7A8, &qword_10007CB78);
  sub_10005A2A8(0xD000000000000091, 0x80000001000831C0, sub_100023B4C);
  *(v0 + 72) = 0;
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_100024B58, v1, 0);
}

void *sub_100021A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_10000712C(&qword_10009E868, "ʋ");
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10007B7D0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = &off_100098A58;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 96) = &type metadata for Int;
  *(v11 + 104) = &off_1000989F8;
  *(v11 + 72) = a4;
  v12 = *(*a1 + 192);

  v12(v11);

  if (!v5)
  {
    __chkstk_darwin(result);
    (*(*a1 + 144))(sub_100024484);
    result = _swiftEmptyArrayStorage;
    *a5 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100021C08(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100021C28, v1, 0);
}

uint64_t sub_100021C28()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v0[6] = 0;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;

  return _swift_task_switch(sub_100021CA4, v2, 0);
}

uint64_t sub_100021CA4()
{
  v1 = v0[6];
  sub_10005A304(sub_100023B6C);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_100020950;
  }

  else
  {
    v4 = v0[4];

    v3 = sub_100021D64;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100021D64()
{
  if (v0[2] == 50)
  {
    v0[6] = v0[8];
    v1 = v0[5];
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[7] = v3;
    *(v3 + 16) = v2;

    return _swift_task_switch(sub_100021CA4, v1, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100021E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = a3;
  v6 = sub_100079A00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  (*(*a1 + 128))(0xD00000000000004BLL, 0x8000000100083470, sub_100024320, v10, &type metadata for ()[8]);

  if (!v3)
  {
    result = (*(*a1 + 136))(result);
    *v13 = result;
  }

  return result;
}

uint64_t sub_100021FF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100022018, v2, 0);
}

uint64_t sub_100022018()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;

  return _swift_task_switch(sub_100022094, v2, 0);
}

uint64_t sub_100022094()
{
  sub_10000712C(&qword_10009E7B0, &qword_10007CB90);
  sub_10005A2A8(0xD000000000000046, 0x8000000100083260, sub_100023B88);
  *(v0 + 56) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000221AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000599E4(0, a1, &type metadata for String, &off_100098A48);
  if (v8)
  {
    sub_10005996C(1, a1, &type metadata for Int64, &off_100098A08);
    v4 = sub_10000712C(&qword_10009E870, &qword_10007CCE0);
    *a2 = v7;
    a2[1] = v8;
    sub_1000799A0();
    return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  }

  else
  {
    sub_100023424();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1000222DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100022304, v4, 0);
}

uint64_t sub_100022304()
{
  v1 = v0[4];
  v2 = v0[6];
  if (v1)
  {
    v3 = v0[5];
    v5 = v0[2];
    v4 = v0[3];
    v6 = *(v2 + 112);
    v0[7] = v6;
    v7 = swift_task_alloc();
    v0[8] = v7;
    v7[2] = v3;
    v7[3] = v5;
    v7[4] = v4;
    v7[5] = v1;
    v8 = sub_1000223D0;
  }

  else
  {
    v9 = v0[2];
    v6 = *(v2 + 112);
    v0[10] = v6;
    v10 = swift_task_alloc();
    v0[11] = v10;
    *(v10 + 16) = v9;
    v8 = sub_1000224C0;
  }

  return _swift_task_switch(v8, v6, 0);
}

uint64_t sub_1000223D0()
{
  sub_10005A2A8(0xD0000000000000A8, 0x80000001000832F0, sub_100023ED8);
  *(v0 + 72) = 0;
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_1000224A8, v1, 0);
}

uint64_t sub_1000224C0()
{
  sub_10005A2A8(0xD000000000000038, 0x80000001000832B0, sub_100023DB0);
  *(v0 + 96) = 0;
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_100024B3C, v1, 0);
}

uint64_t sub_100022598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000225F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022678()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v0[5] = 0;
  return _swift_task_switch(sub_10002269C, v1, 0);
}

uint64_t sub_10002269C()
{
  v1 = v0[5];
  sub_10005A304(sub_1000227AC);
  v0[6] = v1;
  v2 = v0[3];
  if (v1)
  {
    v3 = sub_100022794;
  }

  else
  {
    v3 = sub_100022748;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100022748()
{
  if (*(v0 + 16) != 50)
  {
    return (*(v0 + 8))();
  }

  *(v0 + 40) = *(v0 + 48);
  return _swift_task_switch(sub_10002269C, *(v0 + 32), 0);
}

uint64_t sub_1000227AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 128))(0xD00000000000001DLL, 0x8000000100083450, sub_10002286C, 0, &type metadata for ()[8]);
  if (!v2)
  {
    result = (*(*a1 + 136))(result);
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000228A4()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = 0x554E447473616CLL;
  *(v2 + 24) = 0xE700000000000000;

  return _swift_task_switch(sub_100022934, v1, 0);
}

uint64_t sub_100022934()
{
  sub_10005A2A8(0xD000000000000025, 0x8000000100082E30, sub_10002403C);
  v0[6] = 0;

  v1 = v0[2] != 0;
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100022A34()
{
  v1 = *(v0 + 48);

  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 56) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {

    v5 = *(v0 + 8);

    return v5(2);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100022B38(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_100022B5C, v1, 0);
}

uint64_t sub_100022B5C()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v3[2] = 0x554E447473616CLL;
  v3[3] = 0xE700000000000000;
  v3[4] = v1;

  return _swift_task_switch(sub_100022BF4, v2, 0);
}

uint64_t sub_100022BF4()
{
  sub_10005A2A8(0xD000000000000060, 0x80000001000833A0, sub_100024068);
  *(v0 + 40) = 0;
  v1 = *(v0 + 16);

  return _swift_task_switch(sub_100024B3C, v1, 0);
}

uint64_t sub_100022CCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022D50()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100022D74, v1, 0);
}

uint64_t sub_100022D74()
{
  sub_10005A2A8(0x4D5555434156, 0xE600000000000000, sub_100024B20);
  *(v0 + 32) = 0;
  v1 = *(v0 + 16);

  return _swift_task_switch(sub_100024B3C, v1, 0);
}

uint64_t DiskCache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DiskCache.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_100022EF8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000712C(&qword_10009E880, &qword_10007CCF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_10000712C(&qword_10009E888, &unk_10007CD00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023040(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E278, &qword_10007CCF0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10002314C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E878, &qword_10007CCE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
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

void *sub_100023274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_10000712C(&qword_10009E868, "ʋ");
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10007B7C0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = &off_100098A58;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = *(*a1 + 192);

  v14(v13);

  if (!v6)
  {
    result = (*(*a1 + 160))(&v16, a4, a5);
    *a6 = v16;
  }

  return result;
}

uint64_t sub_100023398(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009E788, &qword_10007E390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100023424()
{
  result = qword_10009E798;
  if (!qword_10009E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E798);
  }

  return result;
}

char *sub_1000234C4(uint64_t a1)
{
  v3 = sub_100079E70();
  __chkstk_darwin(v3 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100079620();
  swift_allocObject();
  sub_100079610();
  v26[1] = a1;

  sub_10000712C(&unk_10009EB50, &unk_10007D3B0);
  sub_1000075B4();
  v6 = sub_100079600();
  if (v1)
  {

    return v5;
  }

  v8 = v6;
  v9 = v7;

  v11 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(v9);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  v12 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v12 = HIDWORD(v8) - v8;
  }

LABEL_13:
  v15 = sub_10000F41C();
  if (*v15 < v12)
  {
    v16 = v15;
    if (qword_1000A1F60 != -1)
    {
      swift_once();
    }

    v17 = sub_100079BA0();
    sub_1000070F4(v17, qword_1000A1F68);
    sub_100007230(v8, v9);
    v18 = sub_100079B80();
    v5 = sub_10007A170();
    if (!os_log_type_enabled(v18, v5))
    {
      sub_1000071DC(v8, v9);
LABEL_31:

      sub_100023424();
      swift_allocError();
      *v25 = 0;
      swift_willThrow();
      sub_1000071DC(v8, v9);

      return v5;
    }

    result = swift_slowAlloc();
    *result = 134349312;
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        v19 = 0;
        goto LABEL_30;
      }

      v22 = *(v8 + 16);
      v21 = *(v8 + 24);
      v23 = __OFSUB__(v21, v22);
      v19 = v21 - v22;
      if (!v23)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (!v11)
    {
      v19 = BYTE6(v9);
LABEL_30:
      *(result + 4) = v19;
      v24 = result;
      sub_1000071DC(v8, v9);
      *(v24 + 12) = 2050;
      *(v24 + 14) = *v16;
      _os_log_impl(&_mh_execute_header, v18, v5, "event too large: (%{public}ld > %{public}lld", v24, 0x16u);

      goto LABEL_31;
    }

    LODWORD(v19) = HIDWORD(v8) - v8;
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      v19 = v19;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  sub_100079E60();
  result = sub_100079E40();
  if (v20)
  {
    v5 = result;
    sub_1000071DC(v8, v9);

    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100023800(uint64_t a1)
{
  v3 = v1;
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  sub_10000712C(&qword_10009E868, "ʋ");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10007CAD0;
  v19 = *v5;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = &off_100098A58;
  *(v10 + 32) = *v5;
  v18 = v5[1];
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = &off_100098A58;
  *(v10 + 72) = v5[1];
  v16 = v5[2];
  v17 = *(v5 + 6);
  v11 = v16;
  *(v10 + 136) = &type metadata for Bool;
  *(v10 + 144) = &off_1000989D8;
  *(v10 + 112) = v11;
  v12 = BYTE1(v16);
  *(v10 + 176) = &type metadata for Bool;
  *(v10 + 184) = &off_1000989D8;
  *(v10 + 152) = v12;
  *(v10 + 216) = &type metadata for String;
  *(v10 + 224) = &off_100098A58;
  *(v10 + 192) = *(v5 + 40);
  *(v10 + 256) = &type metadata for Double;
  *(v10 + 264) = &off_100098A38;
  *(v10 + 232) = v6;
  *(v10 + 296) = &type metadata for Int64;
  *(v10 + 304) = &off_100098A18;
  *(v10 + 272) = v8;
  *(v10 + 336) = &type metadata for String;
  *(v10 + 344) = &off_100098A58;
  *(v10 + 312) = v7;
  *(v10 + 320) = v9;
  v13 = *(*a1 + 192);
  sub_10002423C(&v19, v15);
  sub_10002423C(&v18, v15);
  sub_1000248A8(&v16, v15);

  v13(v10);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_1000239F4(uint64_t result)
{
  v3 = v1;
  v4 = result;
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return (*(*v4 + 144))(result);
  }

  v7 = (v5 + 32);
  while (1)
  {
    v8 = *v7++;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    (*(*v4 + 128))(0xD000000000000038, 0x80000001000834C0, sub_1000247CC, v9, &type metadata for ()[8]);

    if (v2)
    {
      break;
    }

    if (!--v6)
    {
      return (*(*v4 + 144))(result);
    }
  }

  return result;
}

uint64_t sub_100023B88(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  sub_10000712C(&qword_10009E868, "ʋ");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10007B7D0;
  v13 = *v5;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = &off_100098A58;
  *(v6 + 32) = *v5;
  v12 = v5[1];
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = &off_100098A58;
  *(v6 + 72) = v5[1];
  v7 = *(*a1 + 192);
  sub_10002423C(&v13, v11);
  sub_10002423C(&v12, v11);
  v7(v6);
  if (v2)
  {
  }

  v9 = *(*a1 + 152);
  v10 = sub_10000712C(&qword_10009E7B0, &qword_10007CB90);
  return v9(sub_1000221AC, 0, v10);
}

uint64_t sub_100023DB0(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  sub_10000712C(&qword_10009E868, "ʋ");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10007B7D0;
  v11 = *v5;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = &off_100098A58;
  *(v6 + 32) = *v5;
  v10 = v5[1];
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = &off_100098A58;
  *(v6 + 72) = v5[1];
  v7 = *(*a1 + 192);
  sub_10002423C(&v11, v9);
  sub_10002423C(&v10, v9);
  v7(v6);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_100023ED8(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v7 = v3[4];
  v6 = v3[5];
  getTimeIntervalSince1970(Date:)(v3[2]);
  v9 = v8;
  sub_10000712C(&qword_10009E868, "ʋ");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10007CAF0;
  v15 = *v5;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = &off_100098A58;
  *(v10 + 32) = *v5;
  v14 = v5[1];
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = &off_100098A58;
  *(v10 + 72) = v5[1];
  *(v10 + 136) = &type metadata for String;
  *(v10 + 144) = &off_100098A58;
  *(v10 + 112) = v7;
  *(v10 + 120) = v6;
  *(v10 + 176) = &type metadata for Int64;
  *(v10 + 184) = &off_100098A18;
  *(v10 + 152) = v9;
  v11 = *(*a1 + 192);
  sub_10002423C(&v15, v13);
  sub_10002423C(&v14, v13);

  v11(v10);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

unint64_t sub_10002408C()
{
  result = qword_10009E7B8;
  if (!qword_10009E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E7B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiskCacheError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DiskCacheError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100024298()
{
  v1 = sub_100079A00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100024320(uint64_t a1)
{
  sub_100079A00();
  sub_1000799B0();
  v4 = 0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3;
LABEL_5:
  sub_10000712C(&qword_10009E868, "ʋ");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10007B7C0;
  *(v5 + 56) = &type metadata for Int64;
  *(v5 + 64) = &off_100098A18;
  *(v5 + 32) = v4;
  (*(*a1 + 192))();

  if (!v1)
  {
    (*(*a1 + 176))(v6);
  }
}

uint64_t sub_100024484(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1000599E4(0, a1, &type metadata for String, &off_100098A48);
  if (v23)
  {
    sub_1000599E4(3, a1, &type metadata for String, &off_100098A48);
    v26 = v3;
    sub_10005996C(1, a1, &type metadata for Bool, &off_1000989C8);
    sub_10005996C(2, a1, &type metadata for Bool, &off_1000989C8);
    v6 = sub_10005D6C8(v22, v22);
    v8 = v7;
    v10 = v9;

    v11 = v10;
    v12 = v26;
    sub_10005D6E8(v4, v5, v22, v23, v6 & 0x101, v8, v11, v24);
    v13 = *v12;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v12 = v13;
    if ((result & 1) == 0)
    {
      result = sub_10002314C(0, *(v13 + 16) + 1, 1, v13);
      v13 = result;
      *v12 = result;
    }

    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_10002314C((v15 > 1), v16 + 1, 1, v13);
      v13 = result;
      *v12 = result;
    }

    *(v13 + 16) = v16 + 1;
    v17 = v13 + 56 * v16;
    v18 = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    *(v17 + 80) = v25;
    *(v17 + 48) = v19;
    *(v17 + 64) = v20;
    *(v17 + 32) = v18;
  }

  else
  {
    sub_100023424();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000246A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1000599E4(0, a1, &type metadata for String, &off_100098A48);
  if (v10)
  {
    v3 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if ((result & 1) == 0)
    {
      result = sub_100023040(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
      *v2 = result;
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v6 >= v5 >> 1)
    {
      result = sub_100023040((v5 > 1), v6 + 1, 1, v3);
      v3 = result;
      *v2 = result;
    }

    *(v3 + 16) = v6 + 1;
    v7 = v3 + 16 * v6;
    *(v7 + 32) = v9;
    *(v7 + 40) = v10;
  }

  else
  {
    sub_100023424();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000247CC(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  sub_10000712C(&qword_10009E868, "ʋ");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10007B7C0;
  *(v6 + 56) = &type metadata for Int64;
  *(v6 + 64) = &off_100098A18;
  *(v6 + 32) = v5;
  (*(*a1 + 192))();

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_100024904(uint64_t a1)
{
  v4 = *(v1 + 16);
  sub_1000599E4(2, a1, &type metadata for String, &off_100098A48);
  if (v23)
  {
    sub_10005996C(0, a1, &type metadata for Double, &off_100098A28);
    sub_10005996C(1, a1, &type metadata for Int64, &off_100098A08);
    result = sub_10002DC6C(v22, 0x4D656E4F646E6553, 0xEE00656761737365, v22, v23);
    if (!v2)
    {
      v9 = result;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      v13 = *v4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v13;
      if ((result & 1) == 0)
      {
        result = sub_100022EF8(0, v13[2] + 1, 1, v13);
        v13 = result;
        *v4 = result;
      }

      v14 = v13[2];
      v15 = v13[3];
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v21 = v14 + 1;
        v19 = v13;
        v20 = v13[2];
        result = sub_100022EF8((v15 > 1), v14 + 1, 1, v19);
        v14 = v20;
        v16 = v21;
        v13 = result;
        *v4 = result;
      }

      v13[2] = v16;
      v17 = &v13[5 * v14];
      v17[4] = v22;
      v17[5] = v9;
      v17[6] = v10;
      v17[7] = v11;
      v17[8] = v12;
    }
  }

  else
  {
    sub_100023424();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100024AD8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100024B5C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6C68);
  sub_1000070F4(v0, qword_1000A6C68);
  return sub_100079B90();
}

uint64_t sub_100024C18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A474;

  return sub_100024E40();
}

uint64_t sub_100024CB8()
{
  v4 = (*(*v0 + 88) + **(*v0 + 88));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100007838;

  return v4();
}

double sub_100024DC8()
{
  PostInstallActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();

  return result;
}

uint64_t sub_100024E0C()
{
  v0 = *PostInstallActivityConfig.identifier.unsafeMutableAddressor();

  return v0;
}

uint64_t sub_100024E40()
{
  v1 = sub_1000797B0();
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();
  v2 = sub_1000798B0();
  v0[21] = v2;
  v0[22] = *(v2 - 8);
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();

  return _swift_task_switch(sub_100024FB4, 0, 0);
}

uint64_t sub_100024FB4()
{
  v136 = v0;
  v120 = [objc_opt_self() defaultManager];
  if (qword_1000A2188 != -1)
  {
LABEL_66:
    swift_once();
  }

  v1 = *(qword_1000A6C80 + 16);
  v122 = v0;
  if (v1)
  {
    v2 = v0[22];
    v3 = v0[19];
    v126 = enum case for URL.DirectoryHint.isDirectory(_:);
    v124 = (v3 + 104);
    v123 = (v3 + 8);
    v4 = (v2 + 8);
    v130 = (v2 + 16);
    v5 = (qword_1000A6C80 + 40);
    v128 = (v2 + 8);
    do
    {
      v6 = v0[26];
      v8 = v0[20];
      v7 = v0[21];
      v9 = v0[18];
      v10 = *(v5 - 1);
      v11 = *v5;
      v132 = v5;

      sub_10001EDCC();
      v0[14] = v10;
      v0[15] = v11;
      (*v124)(v8, v126, v9);
      sub_100025EBC();
      sub_1000798A0();
      (*v123)(v8, v9);
      v12 = *v4;
      (*v4)(v6, v7);

      v133 = v12;
      if (sub_100079830())
      {
        if (qword_1000A2180 != -1)
        {
          swift_once();
        }

        v13 = v0[27];
        v14 = v0[25];
        v15 = v0[21];
        v16 = sub_100079BA0();
        sub_1000070F4(v16, qword_1000A6C68);
        v119 = *v130;
        (*v130)(v14, v13, v15);
        v17 = sub_100079B80();
        v18 = sub_10007A190();
        v19 = os_log_type_enabled(v17, v18);
        v20 = v0[25];
        v21 = v0[21];
        if (v19)
        {
          v22 = v1;
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v135[0] = v24;
          *v23 = 136446210;
          v25 = sub_100079870();
          v26 = v12;
          v27 = v25;
          v29 = v28;
          v26(v20, v21);
          v30 = sub_100006B00(v27, v29, v135);

          *(v23 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v17, v18, "removing %{public}s", v23, 0xCu);
          sub_1000070A8(v24);

          v1 = v22;
          v0 = v122;
        }

        else
        {

          v12(v20, v21);
        }

        sub_100079800(v31);
        v51 = v50;
        v0[16] = 0;
        v52 = [v120 removeItemAtURL:v50 error:v0 + 16];

        v53 = v0[16];
        v54 = v0[27];
        if (v52)
        {
          v55 = v0[21];
          v56 = v53;
          v4 = v128;
          v133(v54, v55);
        }

        else
        {
          v57 = v0[23];
          v58 = v0[21];
          v59 = v53;
          sub_1000797A0();

          swift_willThrow();
          v119(v57, v54, v58);
          swift_errorRetain();
          v60 = sub_100079B80();
          v61 = sub_10007A170();

          v62 = os_log_type_enabled(v60, v61);
          v63 = v0[27];
          v64 = v0[23];
          v65 = v0[21];
          if (v62)
          {
            v66 = swift_slowAlloc();
            v135[0] = swift_slowAlloc();
            *v66 = 136446466;
            v67 = sub_100079870();
            v69 = v68;
            v133(v64, v65);
            v70 = sub_100006B00(v67, v69, v135);

            *(v66 + 4) = v70;
            *(v66 + 12) = 2082;
            swift_getErrorValue();
            v71 = sub_10007A6D0();
            v73 = sub_100006B00(v71, v72, v135);

            *(v66 + 14) = v73;
            _os_log_impl(&_mh_execute_header, v60, v61, "failed removing %{public}s: %{public}s", v66, 0x16u);
            swift_arrayDestroy();

            v4 = v128;
          }

          else
          {

            v4 = v128;
            v133(v64, v65);
          }

          v133(v63, v65);
        }
      }

      else
      {
        if (qword_1000A2180 != -1)
        {
          swift_once();
        }

        v32 = v0[27];
        v33 = v0[24];
        v34 = v0[21];
        v35 = sub_100079BA0();
        sub_1000070F4(v35, qword_1000A6C68);
        (*v130)(v33, v32, v34);
        v36 = sub_100079B80();
        v37 = sub_10007A160();
        v38 = os_log_type_enabled(v36, v37);
        v39 = v0[27];
        v40 = v0[24];
        v41 = v0[21];
        if (v38)
        {
          v121 = v0[27];
          v42 = swift_slowAlloc();
          v43 = v1;
          v44 = swift_slowAlloc();
          v135[0] = v44;
          *v42 = 136446210;
          v45 = sub_100079870();
          v47 = v46;
          v133(v40, v41);
          v48 = v45;
          v4 = v128;
          v49 = sub_100006B00(v48, v47, v135);

          *(v42 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v36, v37, "skipping %{public}s", v42, 0xCu);
          sub_1000070A8(v44);
          v1 = v43;
          v0 = v122;

          v133(v121, v41);
        }

        else
        {

          v133(v40, v41);
          v133(v39, v41);
        }
      }

      v5 = v132 + 2;
      --v1;
    }

    while (v1);
  }

  v74 = sub_10003F368();
  swift_beginAccess();
  v75 = [*v74 dictionaryRepresentation];
  v76 = sub_100079D50();

  v77 = v76 + 64;
  v78 = -1 << *(v76 + 32);
  if (-v78 < 64)
  {
    v79 = ~(-1 << -v78);
  }

  else
  {
    v79 = -1;
  }

  v80 = v79 & *(v76 + 64);
  v129 = v76;

  v134 = v74;
  swift_beginAccess();
  v81 = 0;
  v82 = (63 - v78) >> 6;
  v125 = v76 + 64;
  v127 = v82;
  if (v80)
  {
    do
    {
      while (1)
      {
LABEL_33:
        v84 = (*(v129 + 48) + ((v81 << 10) | (16 * __clz(__rbit64(v80)))));
        v85 = *v84;
        v86 = v84[1];
        v87 = qword_1000A2180;

        if (v87 != -1)
        {
          swift_once();
        }

        v88 = sub_100079BA0();
        sub_1000070F4(v88, qword_1000A6C68);

        v89 = sub_100079B80();
        v90 = sub_10007A160();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v135[0] = v92;
          *v91 = 136446210;
          *(v91 + 4) = sub_100006B00(v85, v86, v135);
          _os_log_impl(&_mh_execute_header, v89, v90, "default set: %{public}s", v91, 0xCu);
          sub_1000070A8(v92);
        }

        if (qword_1000A2190 != -1)
        {
          swift_once();
        }

        v131 = (v80 - 1) & v80;
        v93 = qword_1000A6C88;
        if (*(qword_1000A6C88 + 16))
        {
          sub_10007A730();
          sub_100079EC0();
          v94 = sub_10007A760();
          v95 = -1 << *(v93 + 32);
          v96 = v94 & ~v95;
          if ((*(v93 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
          {
            break;
          }
        }

LABEL_48:
        if (qword_1000A2198 != -1)
        {
          swift_once();
        }

        v100 = qword_1000A6C90;
        v101 = *(qword_1000A6C90 + 16);
        if (v101)
        {
          swift_beginAccess();
          v102 = (v100 + 40);
          do
          {
            v105 = *(v102 - 1);
            v106 = *v102;

            v138._countAndFlagsBits = v105;
            v138._object = v106;
            LOBYTE(v105) = sub_100079F50(v138);

            if (v105)
            {

              v107 = sub_100079B80();
              v108 = sub_10007A190();

              if (os_log_type_enabled(v107, v108))
              {
                v109 = swift_slowAlloc();
                v110 = swift_slowAlloc();
                v135[0] = v110;
                *v109 = 136446210;
                *(v109 + 4) = sub_100006B00(v85, v86, v135);
                _os_log_impl(&_mh_execute_header, v107, v108, "removing default %{public}s", v109, 0xCu);
                sub_1000070A8(v110);
              }

              v103 = *v134;
              v104 = sub_100079DF0();
              [v103 removeObjectForKey:v104];
            }

            v102 += 2;
            --v101;
          }

          while (v101);

          v0 = v122;
          v77 = v125;
        }

        else
        {

          v0 = v122;
        }

        v80 = v131;
        v82 = v127;
        if (!v131)
        {
          goto LABEL_29;
        }
      }

      v97 = ~v95;
      while (1)
      {
        v98 = (*(v93 + 48) + 16 * v96);
        v99 = *v98 == v85 && v98[1] == v86;
        if (v99 || (sub_10007A610() & 1) != 0)
        {
          break;
        }

        v96 = (v96 + 1) & v97;
        if (((*(v93 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v111 = sub_100079B80();
      v112 = sub_10007A190();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v135[0] = v114;
        *v113 = 136446210;
        *(v113 + 4) = sub_100006B00(v85, v86, v135);
        _os_log_impl(&_mh_execute_header, v111, v112, "removing default %{public}s", v113, 0xCu);
        sub_1000070A8(v114);
      }

      v77 = v125;
      v80 = v131;
      v115 = *v134;
      v116 = sub_100079DF0();

      [v115 removeObjectForKey:v116];

      v0 = v122;
      v82 = v127;
    }

    while (v131);
  }

  while (1)
  {
LABEL_29:
    v83 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v83 >= v82)
    {
      break;
    }

    v80 = *(v77 + 8 * v83);
    ++v81;
    if (v80)
    {
      v81 = v83;
      goto LABEL_33;
    }
  }

  v117 = v0[1];

  return v117();
}

unint64_t sub_100025E1C(uint64_t a1, uint64_t a2)
{
  result = sub_100025E44(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100025E44(uint64_t a1, uint64_t a2)
{
  result = qword_10009E890;
  if (!qword_10009E890)
  {
    type metadata accessor for PostInstallActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E890);
  }

  return result;
}

unint64_t sub_100025EBC()
{
  result = qword_10009E940;
  if (!qword_10009E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E940);
  }

  return result;
}

uint64_t sub_100025F10()
{
  if (*v0)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 6775138;
  }
}

uint64_t sub_100025F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6775138 && a2 == 0xE300000000000000;
  if (v5 || (sub_10007A610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007A610();

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

uint64_t sub_100026038(uint64_t a1)
{
  v2 = sub_100026670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026074(uint64_t a1)
{
  v2 = sub_100026670();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000260B0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002648C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000260E0(uint64_t a1, uint64_t a2)
{
  sub_100079780();
  swift_allocObject();
  sub_100079770();
  sub_100026258();
  sub_100079760();
  if (!v2 && ((a2 = sub_1000798E0(), v5 = v4, v6 = sub_1000798E0(), v8 = v7, , , v5 >> 60 == 15) || v8 >> 60 == 15))
  {
    sub_1000262D0();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();

    sub_1000071C8(v6, v8);
    sub_1000071C8(a2, v5);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_100026258()
{
  result = qword_1000A22A0[0];
  if (!qword_1000A22A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A22A0);
  }

  return result;
}

unint64_t sub_1000262D0()
{
  result = qword_10009E948;
  if (!qword_10009E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E948);
  }

  return result;
}

uint64_t sub_100026324(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100026340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100026394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1000263F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10002643C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002648C(void *a1)
{
  v3 = sub_10000712C(&qword_10009E950, &qword_10007CF30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100026670();
  sub_10007A790();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_10007A550();
    v10 = 1;
    sub_10007A550();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000070A8(a1);
  return v7;
}

unint64_t sub_100026670()
{
  result = qword_1000A2330[0];
  if (!qword_1000A2330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A2330);
  }

  return result;
}

unint64_t sub_1000266D8()
{
  result = qword_1000A2440[0];
  if (!qword_1000A2440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A2440);
  }

  return result;
}

unint64_t sub_100026730()
{
  result = qword_1000A2550;
  if (!qword_1000A2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2550);
  }

  return result;
}

unint64_t sub_100026788()
{
  result = qword_1000A2558[0];
  if (!qword_1000A2558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A2558);
  }

  return result;
}

uint64_t sub_1000267F8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100026828(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_100026828(void *a1)
{
  sub_10001378C(a1, v6);
  sub_100026AEC();
  v3 = sub_10007A040();
  if (v1)
  {

    sub_10001378C(a1, v6);
    sub_100026B40();
    v4 = sub_10007A040();
  }

  else
  {
    v4 = v3;
  }

  sub_1000070A8(a1);
  return v4;
}

unint64_t sub_10002696C()
{
  result = qword_10009E958;
  if (!qword_10009E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E958);
  }

  return result;
}

unint64_t sub_1000269C4()
{
  result = qword_10009E960;
  if (!qword_10009E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E960);
  }

  return result;
}

uint64_t sub_100026A24(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100026A38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100026A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_100026AEC()
{
  result = qword_10009E968;
  if (!qword_10009E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E968);
  }

  return result;
}

unint64_t sub_100026B40()
{
  result = qword_10009E970;
  if (!qword_10009E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E970);
  }

  return result;
}

uint64_t variable initialization expression of Listener.connectionQueue()
{
  v12 = sub_100079C90();
  v0 = *(v12 - 8);
  __chkstk_darwin(v12);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007A1C0();
  v3 = *(v11 - 8);
  __chkstk_darwin(v11);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007A1B0();
  __chkstk_darwin(v6);
  v7 = sub_100079CC0();
  __chkstk_darwin(v7 - 8);
  sub_100026E98();
  v10 = " any expected type";
  sub_100079CA0();
  v13 = _swiftEmptyArrayStorage;
  sub_100029CBC(&qword_10009E978, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100026EE4();
  sub_10007A2E0();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  v8 = v12;
  (*(v0 + 104))(v2, enum case for DispatchQoS.QoSClass.background(_:), v12);
  sub_10007A1F0();
  (*(v0 + 8))(v2, v8);
  return sub_10007A1E0();
}

unint64_t sub_100026E98()
{
  result = qword_10009FB60;
  if (!qword_10009FB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009FB60);
  }

  return result;
}

unint64_t sub_100026EE4()
{
  result = qword_10009E980;
  if (!qword_10009E980)
  {
    sub_1000072D8(&unk_10009FB70, &qword_10007D210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E980);
  }

  return result;
}

uint64_t variable initialization expression of Listener.clients()
{
  if (_swiftEmptyArrayStorage >> 62 && sub_10007A4A0())
  {
    v0 = sub_100029674(_swiftEmptyArrayStorage);
  }

  else
  {
    v0 = &_swiftEmptySetSingleton;
  }

  sub_10000712C(&qword_10009E988, &qword_10007D218);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  return result;
}

uint64_t sub_100026FC8()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A2868);
  sub_1000070F4(v0, qword_1000A2868);
  return sub_100079B90();
}

uint64_t Listener.__allocating_init(mode:clientBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000030A0;

  return Listener.init(mode:clientBundleID:)(v6, a2, a3);
}

uint64_t Listener.init(mode:clientBundleID:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a2;
  *(v4 + 73) = a1;
  v5 = sub_100079C90();
  *(v4 + 184) = v5;
  *(v4 + 192) = *(v5 - 8);
  *(v4 + 200) = swift_task_alloc();
  v6 = sub_10007A1C0();
  *(v4 + 208) = v6;
  *(v4 + 216) = *(v6 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = sub_10007A1B0();
  *(v4 + 240) = swift_task_alloc();
  sub_100079CC0();
  *(v4 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100027288, 0, 0);
}

uint64_t sub_100027288()
{
  v1 = *(v0 + 216);
  v13 = *(v0 + 224);
  v14 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  v15 = *(v0 + 176);
  sub_100026E98();
  sub_100079CA0();
  *(v0 + 152) = _swiftEmptyArrayStorage;
  sub_100029CBC(&qword_10009E978, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100026EE4();
  sub_10007A2E0();
  (*(v1 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v14);
  (*(v2 + 104))(v3, enum case for DispatchQoS.QoSClass.background(_:), v4);
  sub_10007A1F0();
  (*(v2 + 8))(v3, v4);
  *(v15 + 16) = sub_10007A1E0();
  if (_swiftEmptyArrayStorage >> 62 && sub_10007A4A0())
  {
    v5 = sub_100029674(_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = _swiftEmptySetSingleton;
  }

  v6 = *(v0 + 176);
  sub_10000712C(&qword_10009E988, &qword_10007D218);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 96) = 0;
  v8 = swift_task_alloc();
  *(v0 + 256) = v8;
  *v8 = v0;
  v8[1] = sub_100027518;
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 73);

  return Daemon.init(mode:clientBundleID:)(v0 + 16, v11, v9, v10);
}

uint64_t sub_100027518()
{

  return _swift_task_switch(sub_100027614, 0, 0);
}

uint64_t sub_100027614()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 73);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v1 + 73) = *(v0 + 57);
  v1[3] = v4;
  v1[4] = v5;
  v1[2] = v3;
  v6 = *(v0 + 176);
  if (v2)
  {
    v7 = *(v6 + 16);
    if (v2 == 1)
    {
      type metadata accessor for XPCConnection();
      swift_allocObject();

      XPCConnection.init(serviceName:targetQ:listen:delegate:)(0xD000000000000023, 0x80000001000835D0, v7, 1, v6, &protocol witness table for Listener);
    }

    else
    {
      type metadata accessor for XPCConnection();
      swift_allocObject();

      v8 = XPCConnection.init(machService:targetQ:listen:delegate:)(0xD000000000000019, 0x80000001000835B0, v7, 1, v6, &protocol witness table for Listener);
    }
  }

  else
  {
    v9 = *(v6 + 16);
    type metadata accessor for XPCConnection();
    swift_allocObject();
    v10 = v9;

    v8 = XPCConnection.init(targetQ:delegate:)(v10, v6, &protocol witness table for Listener);
  }

  v11 = v8;
  v12 = *(v0 + 176);
  swift_beginAccess();
  *(v12 + 96) = v11;

  v13 = *(v0 + 8);
  v14 = *(v0 + 176);

  return v13(v14);
}

void Listener.connection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 96);
  if (v7)
  {
    type metadata accessor for XPCConnection();
    swift_allocObject();
    swift_unknownObjectRetain();

    XPCConnection.init(listener:targetQ:delegate:)(v7, a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t Listener.handle(message:)(uint64_t a1)
{
  v1 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for XPCObject(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  swift_unknownObjectRetain();
  XPCIncomingConnection.init(conn:)();
  v18 = v17;
  XPCIncomingConnection.entitlementValue(forKey:)(v16);
  sub_10000939C(v16, v14, &unk_10009EC50, &unk_10007D650);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_1000096C4(v14, &unk_10009EC50, &unk_10007D650);
LABEL_14:
    pid = xpc_connection_get_pid(v18);
    if (qword_1000A2860 != -1)
    {
      swift_once();
    }

    v27 = sub_100079BA0();
    sub_1000070F4(v27, qword_1000A2868);
    v28 = sub_100079B80();
    v29 = sub_10007A170();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67240192;
      *(v30 + 4) = pid;
      _os_log_impl(&_mh_execute_header, v28, v29, "connection attempted by unentitled process %{public}d", v30, 8u);
    }

    xpc_connection_cancel(v18);
    swift_unknownObjectRelease();
    return sub_1000096C4(v16, &unk_10009EC50, &unk_10007D650);
  }

  sub_100029A0C(v14, v10);
  sub_100029A70(v10, v8);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100029AD4(v10);
    v25 = v8;
LABEL_13:
    sub_100029AD4(v25);
    goto LABEL_14;
  }

  if ((*v8 & 1) == 0)
  {
    v25 = v10;
    goto LABEL_13;
  }

  v19 = v34;
  swift_beginAccess();
  if (*(v19 + 88))
  {
    v20 = xpc_connection_get_pid(v18);
    if (qword_1000A2860 != -1)
    {
      swift_once();
    }

    v21 = sub_100079BA0();
    sub_1000070F4(v21, qword_1000A2868);
    v22 = sub_100079B80();
    v23 = sub_10007A170();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67240192;
      *(v24 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v22, v23, "rejecting connection from %{public}d while reporting is disabled", v24, 8u);
    }

    xpc_connection_cancel(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = sub_10007A0A0();
    (*(*(v32 - 8) + 56))(v3, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v19;
    v33[5] = v18;

    swift_unknownObjectRetain();
    sub_100014B7C(0, 0, v3, &unk_10007D238, v33);
    swift_unknownObjectRelease();
  }

  sub_100029AD4(v10);
  return sub_1000096C4(v16, &unk_10009EC50, &unk_10007D650);
}

uint64_t sub_100027DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_100027E10, 0, 0);
}

void sub_100027E10()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 56);
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v0[5];
  v4 = v3[8];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v3[9];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v3[10];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    return;
  }

  type metadata accessor for Client();

  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_100027F60;
  v8 = v0[5];
  v9 = v0[6];

  sub_10005D7DC(v2, v4, v5, v6, v8, v9);
}

uint64_t sub_100027F60(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100028060, 0, 0);
}

uint64_t sub_100028060()
{
  v1 = *(*(v0 + 40) + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_100029D04();
  os_unfair_lock_unlock(v1 + 6);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100028130()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_100029C10(v2);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t Listener.deinit()
{

  return v0;
}

uint64_t Listener.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000282AC(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v7 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v8 = *v3;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = sub_10007A330();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_10007A320();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_10002854C(v8, result + 1, v17);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100028780(v19 + 1);
    }

    sub_100028A14(v20, v18, v21);

    *v4 = v18;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  sub_100029CBC(&unk_10009FB90, type metadata accessor for Client, &unk_10007FA78);
  v11 = sub_100079DA0();
  v12 = -1 << *(v7 + 32);
  v13 = v11 & ~v12;
  if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;

    sub_100028AFC(v16, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_100029CBC(&qword_10009EA50, type metadata accessor for Client, &unk_10007FAC8);
  while ((sub_100079DE0() & 1) == 0)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v7 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_10002854C(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a2)
  {
    sub_10000712C(&qword_10009EA58, &qword_10007D2B8);
    v3 = sub_10007A380();
    v16 = v3;
    sub_10007A310();
    if (sub_10007A340())
    {
      type metadata accessor for Client();
      do
      {
        swift_dynamicCast();
        v10 = *(v3 + 16);
        if (*(v3 + 24) <= v10)
        {
          sub_100028780(v10 + 1);
        }

        v3 = v16;
        sub_100029CBC(&unk_10009FB90, type metadata accessor for Client, &unk_10007FA78);
        result = sub_100079DA0();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_10007A340());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v3;
}

uint64_t sub_100028780(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000712C(&qword_10009EA58, &qword_10007D2B8);
  result = sub_10007A370();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
      type metadata accessor for Client();
      sub_100029CBC(&unk_10009FB90, type metadata accessor for Client, &unk_10007FA78);
      result = sub_100079DA0();
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
      v3 = v26;
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
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_100028A14(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for Client();
  sub_100029CBC(&unk_10009FB90, type metadata accessor for Client, &unk_10007FA78);
  sub_100079DA0();
  result = sub_10007A300();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_100028AFC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100028780(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100028CE4();
      goto LABEL_12;
    }

    sub_100028E34(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for Client();
  sub_100029CBC(&unk_10009FB90, type metadata accessor for Client, &unk_10007FA78);
  result = sub_100079DA0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_100029CBC(&qword_10009EA50, type metadata accessor for Client, &unk_10007FAC8);
    do
    {
      result = sub_100079DE0();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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
  result = sub_10007A6B0();
  __break(1u);
  return result;
}

void *sub_100028CE4()
{
  v1 = v0;
  sub_10000712C(&qword_10009EA58, &qword_10007D2B8);
  v2 = *v0;
  v3 = sub_10007A360();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_100028E34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000712C(&qword_10009EA58, &qword_10007D2B8);
  result = sub_10007A370();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for Client();
      sub_100029CBC(&unk_10009FB90, type metadata accessor for Client, &unk_10007FA78);

      result = sub_100079DA0();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

uint64_t sub_1000290AC(uint64_t a1, __n128 a2)
{
  v3 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v5 = *v2;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = sub_10007A350();

    if (v6)
    {
      v7 = sub_1000292AC(v5, a1);

      return v7;
    }

    return 0;
  }

  type metadata accessor for Client();
  sub_100029CBC(&unk_10009FB90, type metadata accessor for Client, &unk_10007FA78);
  v9 = sub_100079DA0();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  sub_100029CBC(&qword_10009EA50, type metadata accessor for Client, &unk_10007FAC8);
  while ((sub_100079DE0() & 1) == 0)
  {
    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100028CE4();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v11);
  sub_100029488(v11);
  result = v15;
  *v2 = v16;
  return result;
}

uint64_t sub_1000292AC(uint64_t a1, uint64_t a2)
{

  v3 = sub_10007A320();
  v4 = swift_unknownObjectRetain();
  v6 = sub_10002854C(v4, v3, v5);
  v13 = v6;
  type metadata accessor for Client();
  sub_100029CBC(&unk_10009FB90, type metadata accessor for Client, &unk_10007FA78);

  v7 = sub_100079DA0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_100029CBC(&qword_10009EA50, type metadata accessor for Client, &unk_10007FAC8);
    while ((sub_100079DE0() & 1) == 0)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v6 + 48) + 8 * v9);
  sub_100029488(v9);
  result = sub_100079DE0();
  if (result)
  {
    *v2 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100029488(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10007A2F0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for Client();
      sub_100029CBC(&unk_10009FB90, type metadata accessor for Client, &unk_10007FA78);
      do
      {
        v10 = sub_100079DA0() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100029674(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_10007A4A0();
    if (result)
    {
LABEL_3:
      sub_10000712C(&qword_10009EA58, &qword_10007D2B8);
      result = sub_10007A390();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_10007A4A0();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_10007A3D0();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for Client();
    sub_100029CBC(&unk_10009FB90, type metadata accessor for Client, &unk_10007FA78);
    result = sub_100079DA0();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_100029CBC(&qword_10009EA50, type metadata accessor for Client, &unk_10007FAC8);
      while (1)
      {
        result = sub_100079DE0();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void _s21CloudTelemetryService8ListenerC6handle5errorySo13OS_xpc_object_p_tF_0(void *a1)
{
  xpc_copy_description(a1);
  v1 = sub_100079F10();
  v3 = v2;
  sub_10007A3B0(36);

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  sub_100079F00(v4);
  sub_10007A490();
  __break(1u);
}

uint64_t sub_100029A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029AD4(uint64_t a1)
{
  v2 = type metadata accessor for XPCObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029B30(__n128 a1)
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100029B78()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007838;

  return sub_100027DF0(v4, v5, v6, v2, v3);
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_10009EA48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10009EA48);
    }
  }
}

uint64_t sub_100029CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100029D04()
{

  sub_1000282AC(&v3, v0, v1);
}

void *sub_100029D54()
{
  v0 = dlopen("../../AppleInternal/Library/Frameworks/CloudTelemetryLocalBackend.framework/CloudTelemetryLocalBackend", 1);
  if (v0)
  {
    result = dlsym(v0, "initLocalBackend");
  }

  else
  {
    if (dlerror())
    {
      v2 = sub_100079F10();
      v4 = v3;
    }

    else
    {
      v4 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
    }

    if (qword_1000A2888 != -1)
    {
      swift_once();
    }

    v5 = sub_100079BA0();
    sub_1000070F4(v5, qword_1000A6CA0);

    v6 = sub_100079B80();
    v7 = sub_10007A170();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136446210;
      v10 = sub_100006B00(v2, v4, &v11);

      *(v8 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "failed to load CloudTelemetryTTR framework: %{public}s", v8, 0xCu);
      sub_1000070A8(v9);
    }

    else
    {
    }

    result = 0;
  }

  off_1000A6C98 = result;
  return result;
}

uint64_t sub_100029F0C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6CA0);
  sub_1000070F4(v0, qword_1000A6CA0);
  return sub_100079B90();
}

uint64_t sub_100029F90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029FA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  sub_100029FF8(a1, a2, a3);
  return v6;
}

uint64_t sub_100029FF8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_defaultActor_initialize();
  sub_10000712C(&qword_10009EA60, &unk_10007D2C0);
  v5 = sub_10007A4B0();
  v6 = v5;
  v7 = 0;
  v49 = a2;
  v10 = *(a2 + 64);
  v9 = a2 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v48 = v5 + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v3 = 16 * v18;
      v19 = (*(v49 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v49 + 56) + 48 * v18);
      v23 = v22[2];
      *v52 = v22[1];
      *&v52[16] = v23;
      v51 = *v22;
      v53 = v51;
      v54 = *&v52[8];
      v55[0] = *(&v23 + 1);

      sub_10002423C(&v53, v50);
      sub_10002423C(&v54, v50);
      sub_10002A444(v55, v50);
      v24 = sub_1000335B8();
      sub_10002A4B4(&v53);
      sub_10002A4B4(&v54);
      sub_10002A508(v55);
      *(v48 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v25 = (v6[6] + 16 * v18);
      *v25 = v20;
      v25[1] = v21;
      *(v6[7] + 8 * v18) = v24;
      v26 = v6[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v6[2] = v28;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v14)
      {
        break;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    v3 = v47;
    v47[16] = v6;
    v47[17] = a1;

    v6 = a3;
    v29 = a3[3];
    v30 = a3[4];
    sub_10000751C(a3, v29);
    (*(v30 + 8))(v50, v29, v30);
    v31 = v50[0];
    v32 = v50[1];

    sub_100019EF4(v50);
    v47[14] = v31;
    v47[15] = v32;
    v33 = sub_10003F2A0();
    swift_beginAccess();
    if ((*v33 & 1) == 0)
    {
      v47[18] = 0;
      goto LABEL_30;
    }

    if (qword_1000A2880 != -1)
    {
      goto LABEL_33;
    }
  }

  v34 = off_1000A6C98;
  if (off_1000A6C98)
  {
    v35 = v6[3];
    v36 = v6[4];
    sub_10000751C(v6, v35);
    v37 = (*(v36 + 40))(v35, v36);
    if ((v37 & &_mh_execute_header) != 0)
    {
      v37 = 0;
    }

    else
    {
      v37 = v37;
    }

    *(v3 + 144) = v34(v37);
    if (qword_1000A2888 != -1)
    {
      swift_once();
    }

    v38 = sub_100079BA0();
    sub_1000070F4(v38, qword_1000A6CA0);
    v39 = sub_100079B80();
    v40 = sub_10007A190();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_29;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "initialized CloudTelemetryTTR framework";
  }

  else
  {
    *(v3 + 144) = 0;
    if (qword_1000A2888 != -1)
    {
      swift_once();
    }

    v43 = sub_100079BA0();
    sub_1000070F4(v43, qword_1000A6CA0);
    v39 = sub_100079B80();
    v40 = sub_10007A170();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_29;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "failed to initialize CloudTelemetryTTR framework";
  }

  _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);

LABEL_29:

LABEL_30:
  sub_1000070A8(v6);
  return v3;
}

uint64_t sub_10002A444(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009EA68, &unk_10007DA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A508(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009EA68, &unk_10007DA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002A570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v5 = *(v3 + 136);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_10001378C(v8, v11);
      v9 = v12;
      v10 = v13;
      sub_10000751C(v11, v12);
      (*(v10 + 24))(v14, v9, v10);
      if (v4)
      {
        sub_1000070A8(v11);

        return;
      }

      ++v7;
      sub_1000070A8(v11);
      v8 += 40;
      if (v6 == v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10002A690(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  v2[13] = *(type metadata accessor for ServiceEventValue(0) - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10002A7C4, v1, 0);
}

uint64_t sub_10002A7C4(uint64_t a1)
{
  v121 = v1;
  v3 = v1;
  v4 = sub_10003F2A0();
  isUniquelyReferenced_nonNull_native = swift_beginAccess();
  if (*v4 != 1)
  {
    goto LABEL_57;
  }

  v6 = *(v1 + 80);
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  v119 = v3;
  if (v7)
  {
    v120 = _swiftEmptyArrayStorage;
    sub_10001276C(0, v7, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = (v6 + 48);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;

      sub_10002A570(v10, v11, v12);
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v120 = v8;
      v2 = v8[2];
      v19 = v8[3];
      v20 = v2 + 1;
      if (v2 >= v19 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_10001276C((v19 > 1), v2 + 1, 1);
        v8 = v120;
      }

      v8[2] = v20;
      v21 = &v8[3 * v2];
      v21[4] = v14;
      v21[5] = v16;
      v21[6] = v18;
      v9 += 3;
      --v7;
      v3 = v119;
    }

    while (v7);
LABEL_60:
    v90 = 0;
    v91 = v8 + 6;
    v22 = _swiftEmptyArrayStorage;
    while (v90 < v8[2])
    {
      v2 = *(v91 - 2);
      v92 = *(v91 - 1);
      v93 = *v91;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_10001276C(0, v22[2] + 1, 1);
        v22 = v120;
      }

      v95 = v22[2];
      v94 = v22[3];
      if (v95 >= v94 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_10001276C((v94 > 1), v95 + 1, 1);
        v22 = v120;
      }

      ++v90;
      v22[2] = v95 + 1;
      v96 = &v22[3 * v95];
      v96[4] = v2;
      v96[5] = v92;
      v96[6] = v93;
      v91 += 3;
      v3 = v119;
      if (v20 == v90)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_72;
  }

  v20 = _swiftEmptyArrayStorage[2];
  v22 = _swiftEmptyArrayStorage;
  if (v20)
  {
    goto LABEL_60;
  }

LABEL_9:
  *(v3 + 144) = v22;
  v23 = *(v3 + 88);

  v24 = *(v23 + 144);
  *(v3 + 152) = v24;
  if (!v24)
  {
    goto LABEL_54;
  }

  v25 = v22[2];
  *(v3 + 160) = v25;
  if (!v25)
  {
    goto LABEL_54;
  }

  *(v3 + 168) = 0;
  v26 = *(v3 + 144);
  v27 = *(v26 + 16);
  v28 = v24;
  if (!v27)
  {
    goto LABEL_53;
  }

  v2 = v3 + 64;
  sub_10002C4AC();
  v29 = 0;
  while (2)
  {
    v30 = *(v26 + 24 * v29 + 48);
    v22 = *(v30 + 16);

    isUniquelyReferenced_nonNull_native = sub_100079D70();
    v31 = 0;
    *v2 = isUniquelyReferenced_nonNull_native;
    v32 = v30 + 64;
    v33 = -1 << *(v30 + 32);
    if (-v33 < 64)
    {
      v34 = ~(-1 << -v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v30 + 64);
    v36 = (63 - v33) >> 6;
    v118 = v30 + 64;
    v116 = v30;
    v117 = v36;
    while (1)
    {
      if (!v35)
      {
        if (v36 <= v31 + 1)
        {
          v41 = v31 + 1;
        }

        else
        {
          v41 = v36;
        }

        v42 = v41 - 1;
        while (1)
        {
          v40 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v40 >= v36)
          {
            v74 = *(v3 + 128);
            v75 = sub_10000712C(&unk_10009EB70, qword_10007C110);
            (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
            v35 = 0;
            v31 = v42;
            goto LABEL_30;
          }

          v35 = *(v32 + 8 * v40);
          ++v31;
          if (v35)
          {
            v31 = v40;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        v82 = 0;
LABEL_74:
        *(v3 + 184) = v22;
        *(v3 + 192) = v82;
        v97 = __clz(__rbit64(v22)) | (v82 << 6);
        v98 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v97);
        v31 = *v98;
        v62 = v98[1];
        *(v3 + 200) = v62;
        v99 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v97);
        *(v3 + 208) = v99;
        v100 = qword_1000A2888;

        v57 = v99;
        if (v100 == -1)
        {
          goto LABEL_75;
        }

        goto LABEL_83;
      }

      v40 = v31;
LABEL_29:
      v43 = *(v3 + 120);
      v44 = *(v3 + 128);
      v45 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v46 = v45 | (v40 << 6);
      v47 = (*(v116 + 48) + 16 * v46);
      v49 = *v47;
      v48 = v47[1];
      sub_10000A908(*(v116 + 56) + *(*(v3 + 104) + 72) * v46, v43);
      v50 = sub_10000712C(&unk_10009EB70, qword_10007C110);
      v51 = *(v50 + 48);
      *v44 = v49;
      v44[1] = v48;
      sub_100012C24(v43, v44 + v51);
      (*(*(v50 - 8) + 56))(v44, 0, 1, v50);

LABEL_30:
      v52 = *(v3 + 136);
      sub_100012C88(*(v3 + 128), v52);
      v53 = sub_10000712C(&unk_10009EB70, qword_10007C110);
      if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
      {
        break;
      }

      v54 = v2;
      v55 = *(v3 + 136);
      v56 = *v55;
      v2 = v55[1];
      sub_100012C24(v55 + *(v53 + 48), *(v3 + 112));
      v57 = sub_10002FC68();
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v3;
      v3 = v58;
      v60 = *(v59 + 64);
      *(v59 + 72) = v60;
      v62 = sub_10000A0FC(v56, v2);
      v63 = *(v60 + 16);
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        __break(1u);
        goto LABEL_81;
      }

      v66 = v61;
      if (*(v60 + 24) >= v65)
      {
        if (v3)
        {
          v3 = v119;
          v22 = *(v119 + 112);
          if (v61)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v3 = v119;
          sub_10002C340();
          v22 = *(v119 + 112);
          if (v66)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v67 = v3;
        v3 = v119;
        sub_10002C09C(v65, v67);
        v68 = sub_10000A0FC(v56, v2);
        if ((v66 & 1) != (v69 & 1))
        {

          return sub_10007A6C0();
        }

        v62 = v68;
        v22 = *(v119 + 112);
        if (v66)
        {
LABEL_17:

          v37 = *(v3 + 72);
          v38 = v37[7];
          v39 = *(v38 + 8 * v62);
          *(v38 + 8 * v62) = v57;

          isUniquelyReferenced_nonNull_native = sub_10000A96C(v22);
          goto LABEL_18;
        }
      }

      v37 = *(v3 + 72);
      v37[(v62 >> 6) + 8] |= 1 << v62;
      v70 = (v37[6] + 16 * v62);
      *v70 = v56;
      v70[1] = v2;
      *(v37[7] + 8 * v62) = v57;
      isUniquelyReferenced_nonNull_native = sub_10000A96C(v22);
      v71 = v37[2];
      v72 = __OFADD__(v71, 1);
      v73 = v71 + 1;
      if (v72)
      {
        __break(1u);
LABEL_83:
        swift_once();
LABEL_75:
        v101 = sub_100079BA0();
        sub_1000070F4(v101, qword_1000A6CA0);

        v102 = sub_100079B80();
        v103 = sub_10007A190();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v120 = v105;
          *v104 = 136446210;
          *(v104 + 4) = sub_100006B00(v31, v62, &v120);
          _os_log_impl(&_mh_execute_header, v102, v103, "running TTR rule %{public}s", v104, 0xCu);
          sub_1000070A8(v105);
          v3 = v119;
        }

        v106 = *(v3 + 152);
        v107 = v3;
        v108 = *(v3 + 96);
        v109 = v107[11];
        v112 = sub_10002C4F8(v110, v111);
        v113 = swift_task_alloc();
        v107[27] = v113;
        v113[2] = v57;
        v113[3] = v106;
        v113[4] = v2;
        v113[5] = v109;
        v113[6] = v31;
        v113[7] = v62;
        v113[8] = v108;
        v114 = swift_task_alloc();
        v107[28] = v114;
        *v114 = v107;
        v114[1] = sub_10002B248;

        return withCheckedContinuation<A>(isolation:function:_:)(v114, v109, v112, 0x65766528646E6573, 0xED0000293A73746ELL, sub_10002C570, v113, &type metadata for ()[8]);
      }

      v37[2] = v73;
LABEL_18:
      v2 = v54;
      *v54 = v37;
      v36 = v117;
      v32 = v118;
    }

    v76 = *(v3 + 88);

    v77 = *(v76 + 128);
    *(v3 + 176) = v77;
    v78 = *(v77 + 32);
    *(v3 + 232) = v78;
    v79 = -1 << v78;
    if (-(-1 << v78) < 64)
    {
      v80 = ~(-1 << -v79);
    }

    else
    {
      v80 = -1;
    }

    v22 = (v80 & *(v77 + 64));

    if (v22)
    {
      goto LABEL_73;
    }

    v81 = 0;
    while (((63 - v79) >> 6) - 1 != v81)
    {
      v82 = v81 + 1;
      v22 = *(isUniquelyReferenced_nonNull_native + 8 * v81++ + 72);
      if (v22)
      {
        goto LABEL_74;
      }
    }

    v84 = *(v3 + 160);
    v83 = *(v3 + 168);

    if (v83 + 1 == v84)
    {
LABEL_81:
      v115 = *(v3 + 152);

      goto LABEL_55;
    }

    v29 = *(v3 + 168) + 1;
    *(v3 + 168) = v29;
    v26 = *(v3 + 144);
    if (v29 < *(v26 + 16))
    {
      continue;
    }

    break;
  }

LABEL_53:
  __break(1u);
LABEL_54:

LABEL_55:
  swift_beginAccess();
  v85 = off_1000A6CB8;
  if (off_1000A6CB8)
  {
    v86 = qword_1000A6CC0;

    v85(v87);
    sub_100029F90(v85, v86);
  }

LABEL_57:

  v88 = *(v3 + 8);

  return v88();
}

uint64_t sub_10002B248()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_10002B398, v1, 0);
}

uint64_t sub_10002B398()
{
  v83 = v1;
  v80 = v1 + 8;

  v3 = v1[24];
  v4 = (v1[23] - 1) & v1[23];
  v81 = v1;
  if (v4)
  {
    v5 = v1[22];
    goto LABEL_3;
  }

  v8 = -1;
  while (1)
  {
LABEL_11:
    v24 = __OFADD__(v3++, 1);
    if (v24)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v5 = v1[22];
    if (v3 >= (((1 << *(v1 + 232)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v5 + 8 * v3 + 64);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v0 = v1[20];
  v25 = v1[21];

  if (v25 + 1 != v0)
  {
    v26 = v1[21] + 1;
    v1[21] = v26;
    v27 = v1[18];
    if (v26 < *(v27 + 16))
    {
      isUniquelyReferenced_nonNull_native = *(v27 + 24 * v26 + 48);
      sub_10002C4AC();

      v28 = sub_100079D70();
      v29 = 0;
      *v80 = v28;
      v77 = isUniquelyReferenced_nonNull_native + 64;
      v78 = isUniquelyReferenced_nonNull_native;
      v30 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
      if (-v30 < 64)
      {
        v31 = ~(-1 << -v30);
      }

      else
      {
        v31 = -1;
      }

      v32 = v31 & *(isUniquelyReferenced_nonNull_native + 64);
      v33 = (63 - v30) >> 6;
      v79 = v33;
      while (2)
      {
        if (!v32)
        {
          if (v33 <= v29 + 1)
          {
            v37 = v29 + 1;
          }

          else
          {
            v37 = v33;
          }

          v8 = v37 - 1;
          while (1)
          {
            v36 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if (v36 >= v33)
            {
              v64 = v1[16];
              v65 = sub_10000712C(&unk_10009EB70, qword_10007C110);
              (*(*(v65 - 8) + 56))(v64, 1, 1, v65);
              v32 = 0;
              goto LABEL_31;
            }

            v32 = *(v77 + 8 * v36);
            ++v29;
            if (v32)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        v36 = v29;
LABEL_30:
        v38 = v1[15];
        v39 = v1[16];
        v40 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v41 = v40 | (v36 << 6);
        v42 = (*(v78 + 48) + 16 * v41);
        v44 = *v42;
        v43 = v42[1];
        sub_10000A908(*(v78 + 56) + *(v1[13] + 72) * v41, v38);
        isUniquelyReferenced_nonNull_native = sub_10000712C(&unk_10009EB70, qword_10007C110);
        v45 = *(isUniquelyReferenced_nonNull_native + 48);
        *v39 = v44;
        v39[1] = v43;
        sub_100012C24(v38, v39 + v45);
        v1 = v81;
        (*(*(isUniquelyReferenced_nonNull_native - 8) + 56))(v39, 0, 1, isUniquelyReferenced_nonNull_native);

        v8 = v36;
LABEL_31:
        v0 = v1[17];
        sub_100012C88(v1[16], v0);
        v46 = sub_10000712C(&unk_10009EB70, qword_10007C110);
        if ((*(*(v46 - 8) + 48))(v0, 1, v46) == 1)
        {
          v66 = v1[11];

          v67 = *(v66 + 128);
          v1[22] = v67;
          v68 = *(v67 + 32);
          *(v1 + 232) = v68;
          v69 = 1 << v68;
          v8 = -1;
          if (v69 < 64)
          {
            v70 = ~(-1 << v69);
          }

          else
          {
            v70 = -1;
          }

          v4 = v70 & *(v67 + 64);

          v3 = 0;
          if (!v4)
          {
            goto LABEL_11;
          }

LABEL_3:
          v1[23] = v4;
          v1[24] = v3;
          v6 = __clz(__rbit64(v4)) | (v3 << 6);
          v7 = (*(v5 + 48) + 16 * v6);
          v8 = *v7;
          v0 = v7[1];
          v1[25] = v0;
          v9 = *(*(v5 + 56) + 8 * v6);
          v1[26] = v9;
          v10 = qword_1000A2888;

          isUniquelyReferenced_nonNull_native = v9;
          if (v10 == -1)
          {
LABEL_4:
            v11 = sub_100079BA0();
            sub_1000070F4(v11, qword_1000A6CA0);

            v12 = sub_100079B80();
            v13 = sub_10007A190();

            if (os_log_type_enabled(v12, v13))
            {
              v14 = swift_slowAlloc();
              v15 = swift_slowAlloc();
              v82 = v15;
              *v14 = 136446210;
              *(v14 + 4) = sub_100006B00(v8, v0, &v82);
              _os_log_impl(&_mh_execute_header, v12, v13, "running TTR rule %{public}s", v14, 0xCu);
              sub_1000070A8(v15);
            }

            v16 = v81[19];
            v17 = v81[11];
            v18 = v81[12];
            v21 = sub_10002C4F8(v19, v20);
            v22 = swift_task_alloc();
            v81[27] = v22;
            v22[2] = isUniquelyReferenced_nonNull_native;
            v22[3] = v16;
            v22[4] = v80;
            v22[5] = v17;
            v22[6] = v8;
            v22[7] = v0;
            v22[8] = v18;
            v23 = swift_task_alloc();
            v81[28] = v23;
            *v23 = v81;
            v23[1] = sub_10002B248;

            return withCheckedContinuation<A>(isolation:function:_:)(v23, v17, v21, 0x65766528646E6573, 0xED0000293A73746ELL, sub_10002C570, v22, &type metadata for ()[8]);
          }

LABEL_62:
          swift_once();
          goto LABEL_4;
        }

        v47 = v8;
        v48 = v1[17];
        v50 = *v48;
        v49 = v48[1];
        sub_100012C24(v48 + *(v46 + 48), v1[14]);
        v51 = sub_10002FC68();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v1[8];
        v1[9] = v52;
        v0 = sub_10000A0FC(v50, v49);
        v54 = *(v52 + 16);
        v55 = (v53 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v57 = v53;
        if (*(v52 + 24) >= v56)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v1 = v81;
            v60 = v81[14];
            if ((v53 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v1 = v81;
            sub_10002C340();
            v60 = v81[14];
            if ((v57 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          v1 = v81;
          sub_10002C09C(v56, isUniquelyReferenced_nonNull_native);
          v58 = sub_10000A0FC(v50, v49);
          if ((v57 & 1) != (v59 & 1))
          {

            return sub_10007A6C0();
          }

          v0 = v58;
          v60 = v81[14];
          if ((v57 & 1) == 0)
          {
LABEL_39:
            v8 = v1[9];
            *(v8 + 8 * (v0 >> 6) + 64) |= 1 << v0;
            v61 = (*(v8 + 48) + 16 * v0);
            *v61 = v50;
            v61[1] = v49;
            *(*(v8 + 56) + 8 * v0) = v51;
            sub_10000A96C(v60);
            v62 = *(v8 + 16);
            v24 = __OFADD__(v62, 1);
            v63 = v62 + 1;
            if (v24)
            {
              goto LABEL_59;
            }

            *(v8 + 16) = v63;
            goto LABEL_20;
          }
        }

        v8 = v1[9];
        v34 = *(v8 + 56);
        v35 = *(v34 + 8 * v0);
        *(v34 + 8 * v0) = v51;

        sub_10000A96C(v60);
LABEL_20:
        v33 = v79;
        *v80 = v8;
        v29 = v47;
        continue;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_53:
  v71 = v1[19];

  swift_beginAccess();
  v72 = off_1000A6CB8;
  if (off_1000A6CB8)
  {
    v73 = qword_1000A6CC0;

    v72(v74);
    sub_100029F90(v72, v73);
  }

  v75 = v1[1];

  return v75();
}