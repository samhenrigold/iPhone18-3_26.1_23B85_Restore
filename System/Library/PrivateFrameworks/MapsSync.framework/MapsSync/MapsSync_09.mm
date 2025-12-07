uint64_t sub_1B6377634()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6377064(v2, v3, v4);
}

uint64_t sub_1B63776E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6376850(v2, v3);
}

id UserRouteRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id UserRouteRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id UserRouteRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for UserRoute(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id UserRouteRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for UserRoute(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6377A30(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6377AA0, 0, 0);
}

uint64_t sub_1B6377AA0()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6377BA4;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6377BA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1B635355C;
  }

  else
  {

    v4 = sub_1B6377CC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6377CC8()
{
  v1 = *(v0 + 56);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for UserRoute(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B6377FF0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6378098;

  return sub_1B6377A30(v4, v5);
}

uint64_t sub_1B6378098(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for UserRoute(0);
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B6378224(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6378294, 0, 0);
}

uint64_t sub_1B6378294()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B63783A4;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B63783A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1B6353DC8;
  }

  else
  {

    v4 = sub_1B63784C8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63784C8()
{
  v1 = *(v0 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for UserRoute(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B6378804(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B63788C4;

  return sub_1B6378224(a1, v8);
}

uint64_t sub_1B63788C4(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for UserRoute(0);
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id UserRouteRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserRouteRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of UserRouteRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of UserRouteRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B6378DD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6378804(v2, v3, v4);
}

uint64_t sub_1B6378E88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6377FF0(v2, v3);
}

id VehicleRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id VehicleRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id VehicleRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for Vehicle(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id VehicleRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for Vehicle(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B63791D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B62980BC(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v13 = MEMORY[0x1E69E7CC0];
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_20:
      v7 = sub_1B63BF044();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v2 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1B8C92830](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_19;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for Vehicle(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v2 = v13;
        }

        while (v8 != v7);
        goto LABEL_22;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v2;
}

uint64_t sub_1B637942C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637949C, 0, 0);
}

uint64_t sub_1B637949C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B63795AC;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B63795AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1B6353DC8;
  }

  else
  {

    v4 = sub_1B63796D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63796D0()
{
  v1 = *(v0 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for Vehicle(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B6379A0C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6379ACC;

  return sub_1B637942C(a1, v8);
}

uint64_t sub_1B6379ACC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for Vehicle(0);
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id VehicleRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VehicleRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of VehicleRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of VehicleRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B6379FDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6379A0C(v2, v3, v4);
}

id VisitedLocationRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for VisitedLocation(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id VisitedLocationRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id VisitedLocationRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id VisitedLocationRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for VisitedLocation(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B637A414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B62980BC(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v13 = MEMORY[0x1E69E7CC0];
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_20:
      v7 = sub_1B63BF044();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v2 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1B8C92830](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_19;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for VisitedLocation(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v2 = v13;
        }

        while (v8 != v7);
        goto LABEL_22;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v2;
}

uint64_t sub_1B637A670(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637A6E0, 0, 0);
}

uint64_t sub_1B637A6E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B637A7E4;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B637A7E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1B635355C;
  }

  else
  {

    v4 = sub_1B637A908;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B637A908()
{
  v1 = *(v0 + 56);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for VisitedLocation(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B637AC30(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B637ACD8;

  return sub_1B637A670(v4, v5);
}

uint64_t sub_1B637ACD8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for VisitedLocation(0);
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B637AE64(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637AED4, 0, 0);
}

uint64_t sub_1B637AED4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B637AFE4;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B637AFE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1B6353DC8;
  }

  else
  {

    v4 = sub_1B637B108;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B637B108()
{
  v1 = *(v0 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for VisitedLocation(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B637B444(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B637B504;

  return sub_1B637AE64(a1, v8);
}

uint64_t sub_1B637B504(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for VisitedLocation(0);
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id VisitedLocationRequest.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VisitedLocationRequest();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t dispatch thunk of VisitedLocationRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of VisitedLocationRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B637BA14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B637B444(v2, v3, v4);
}

uint64_t sub_1B637BAC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B637AC30(v2, v3);
}

id VisitRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id VisitRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id VisitRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for Visit(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id VisitRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for Visit(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B637BEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B62980BC(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v13 = MEMORY[0x1E69E7CC0];
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_20:
      v7 = sub_1B63BF044();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v2 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1B8C92830](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_19;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for Visit(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v2 = v13;
        }

        while (v8 != v7);
        goto LABEL_22;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v2;
}

uint64_t sub_1B637C154(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637C1C4, 0, 0);
}

uint64_t sub_1B637C1C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B637C2C8;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B637C2C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1B635355C;
  }

  else
  {

    v4 = sub_1B637C3EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B637C3EC()
{
  v1 = *(v0 + 56);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for Visit(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B637C714(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B637C7BC;

  return sub_1B637C154(v4, v5);
}

uint64_t sub_1B637C7BC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for Visit(0);
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B637C948(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637C9B8, 0, 0);
}

uint64_t sub_1B637C9B8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B637CAC8;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B637CAC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1B6353DC8;
  }

  else
  {

    v4 = sub_1B637CBEC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B637CBEC()
{
  v1 = *(v0 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for Visit(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B637CF28(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B637CFE8;

  return sub_1B637C948(a1, v8);
}

uint64_t sub_1B637CFE8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for Visit(0);
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id VisitRequest.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VisitRequest();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t dispatch thunk of VisitRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of VisitRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B637D4F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B637CF28(v2, v3, v4);
}

uint64_t sub_1B637D5AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B637C714(v2, v3);
}

id sub_1B637D6B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B637D760(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedCommunityID();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1B637D7DC(uint64_t a1)
{
  v1 = a1;
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1B63BF044();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B639E7FC(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_1B63BF1C4();
    }

    else
    {
      v3 = sub_1B63BEFB4();
      v4 = *(v1 + 36);
    }

    v31 = v3;
    v32 = v4;
    v33 = v28 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v26 = v2;
      v27 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v13 = v31;
        v14 = v32;
        v15 = v33;
        sub_1B638190C(v31, v32, v33, v1);
        v17 = v16;
        v30[0] = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943510, &qword_1B63C61F8);
        v18 = sub_1B63BEBE4();
        v20 = v19;

        v21 = v29;
        v34 = v29;
        v23 = *(v29 + 16);
        v22 = *(v29 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B639E7FC((v22 > 1), v23 + 1, 1);
          v21 = v34;
        }

        *(v21 + 16) = v23 + 1;
        v24 = v21 + 16 * v23;
        *(v24 + 32) = v18;
        *(v24 + 40) = v20;
        v29 = v21;
        if (v28)
        {
          v1 = v27;
          if (!v15)
          {
            goto LABEL_26;
          }

          if (sub_1B63BF1F4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v26;
          v12 = v5 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943528, &qword_1B63C6210);
          v25 = sub_1B63BEB84();
          sub_1B63BF284();
          v25(v30, 0);
        }

        else
        {
          v1 = v27;
          sub_1B63817B8(v13, v14, v15, v27);
          v7 = v6;
          v9 = v8;
          v11 = v10;
          sub_1B6383D88(v13, v14, v15);
          v31 = v7;
          v32 = v9;
          v33 = v11 & 1;
          v2 = v26;
          v12 = v5 + 1;
        }

        ++v5;
        if (v12 == v2)
        {
          sub_1B6383D88(v31, v32, v33);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

id static MapsSyncStore.withStore(config:)(void *a1)
{
  v2 = type metadata accessor for MapsSyncStore();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_shouldDeleteDuplicates;
  v3[v4] = MapsSyncShouldDeleteDuplicates();
  v5 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_containerInstanceLock;
  *&v3[v5] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v3[OBJC_IVAR____TtC8MapsSync13MapsSyncStore_inDevelopmentStorage] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC8MapsSync13MapsSyncStore_config] = a1;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = a1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1B637DCB4(uint64_t (*a1)(uint64_t, void))
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  return a1(qword_1EDB0F2A8, 0);
}

void sub_1B637DD1C(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v3[2](v3, qword_1EDB0F2A8, 0);

  _Block_release(v3);
}

uint64_t sub_1B637DE44()
{
  if (qword_1EDB0F288 != -1)
  {
    swift_once();
  }

  v0 = sub_1B628170C(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  off_1EDB0F290 = v0;
}

uint64_t (*sub_1B637DFDC(uint64_t **a1, char a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B6381518(v4, a2 & 1);
  return sub_1B637E054;
}

void sub_1B637E054(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1B637E120(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B629821C();
  v32 = MEMORY[0x1E69E7CC8];
  v11 = v5;
  sub_1B6381AF4(a1, &v32, v11);

  v12 = v32;
  if (!v32[2])
  {
  }

  v13 = sub_1B6380E1C(1);
  if (v14)
  {
    v31[1] = a4;
    v31[2] = a5;
    v15 = *(v12[7] + 8 * v13);

    v16 = sub_1B62814B4();
    v31[3] = v31;
    MEMORY[0x1EEE9AC00](v16);
    v30[2] = v15;
    v17 = sub_1B629409C();
    v18 = v17;
    if (v19)
    {
      swift_willThrow();
    }

    v31[0] = v30;
    MEMORY[0x1EEE9AC00](v17);
    v29[2] = a2;
    v29[3] = v30;
    v29[4] = v18;
    sub_1B63BEE84();

    sub_1B6295C20(v18);
    if (v6)
    {
    }
  }

  if (!v12[2])
  {
  }

  v21 = sub_1B6380E1C(0);
  if ((v22 & 1) == 0)
  {
  }

  v23 = *(v12[7] + 8 * v21);

  v24 = sub_1B628276C();
  MEMORY[0x1EEE9AC00](v24);
  v29[-2] = v23;
  v25 = sub_1B629409C();
  v26 = v25;
  if (v27)
  {
    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v25);
    v29[-4] = v28;
    v29[-3] = &v29[-4];
    v29[-2] = v26;
    sub_1B63BEE84();

    sub_1B6295C20(v26);
  }
}

uint64_t sub_1B637E440(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MapsSyncObject(0);
  v7 = sub_1B63BECA4();
  v8 = a1;
  a5(v7);

  return 1;
}

uint64_t sub_1B637E4F8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B637E518, 0, 0);
}

uint64_t sub_1B637E518()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1B6381AF4(v1, (v0 + 16), v2);

  v3 = *(v0 + 16);
  *(v0 + 40) = v3;
  if (*(v3 + 16))
  {
    v4 = sub_1B6380E1C(1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      *(v0 + 48) = sub_1B62814B4();
      v7 = swift_allocObject();
      *(v0 + 56) = v7;
      *(v7 + 16) = v6;
      v8 = swift_task_alloc();
      *(v0 + 64) = v8;
      *v8 = v0;
      v8[1] = sub_1B637E77C;
LABEL_7:

      return sub_1B62ADB40(sub_1B62ADB40, sub_1B6383DF4, v7);
    }

    if (*(*(v0 + 40) + 16))
    {
      v9 = sub_1B6380E1C(0);
      if (v10)
      {
        v11 = *(*(*(v0 + 40) + 56) + 8 * v9);

        *(v0 + 80) = sub_1B628276C();
        v7 = swift_allocObject();
        *(v0 + 88) = v7;
        *(v7 + 16) = v11;
        v12 = swift_task_alloc();
        *(v0 + 96) = v12;
        *v12 = v0;
        v12[1] = sub_1B637EA80;
        goto LABEL_7;
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1B637E77C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B637EA00;
  }

  else
  {

    v2 = sub_1B637E898;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B637E898()
{

  if (*(v0[5] + 16) && (v1 = sub_1B6380E1C(0), (v2 & 1) != 0))
  {
    v3 = *(*(v0[5] + 56) + 8 * v1);

    v0[10] = sub_1B628276C();
    v4 = swift_allocObject();
    v0[11] = v4;
    *(v4 + 16) = v3;
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1B637EA80;

    return sub_1B62ADB40(sub_1B62ADB40, sub_1B6383DF4, v4);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1B637EA00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B637EA80()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B637EC0C;
  }

  else
  {

    v2 = sub_1B637EB9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B637EB9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B637EC0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B637EE14(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  type metadata accessor for MapsSyncObject(0);
  v5 = sub_1B63BECA4();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1B634FBD4;

  return sub_1B637E4F8(v5);
}

uint64_t sub_1B637EEEC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B637EF0C, 0, 0);
}

uint64_t sub_1B637EF0C()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1B6381AF4(v1, (v0 + 16), v2);

  v3 = *(v0 + 16);
  *(v0 + 40) = v3;
  if (*(v3 + 16))
  {
    v4 = sub_1B6380E1C(1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      *(v0 + 48) = sub_1B62814B4();
      v7 = swift_allocObject();
      *(v0 + 56) = v7;
      *(v7 + 16) = v6;
      v8 = swift_task_alloc();
      *(v0 + 64) = v8;
      *v8 = v0;
      v8[1] = sub_1B637F170;
LABEL_7:

      return sub_1B62ADB40(sub_1B62ADB40, sub_1B6383E0C, v7);
    }

    if (*(*(v0 + 40) + 16))
    {
      v9 = sub_1B6380E1C(0);
      if (v10)
      {
        v11 = *(*(*(v0 + 40) + 56) + 8 * v9);

        *(v0 + 80) = sub_1B628276C();
        v7 = swift_allocObject();
        *(v0 + 88) = v7;
        *(v7 + 16) = v11;
        v12 = swift_task_alloc();
        *(v0 + 96) = v12;
        *v12 = v0;
        v12[1] = sub_1B637F3F4;
        goto LABEL_7;
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1B637F170()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B6383DEC;
  }

  else
  {

    v2 = sub_1B637F28C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B637F28C()
{

  if (*(v0[5] + 16) && (v1 = sub_1B6380E1C(0), (v2 & 1) != 0))
  {
    v3 = *(*(v0[5] + 56) + 8 * v1);

    v0[10] = sub_1B628276C();
    v4 = swift_allocObject();
    v0[11] = v4;
    *(v4 + 16) = v3;
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1B637F3F4;

    return sub_1B62ADB40(sub_1B62ADB40, sub_1B6383E0C, v4);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1B637F3F4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B6383DF0;
  }

  else
  {

    v2 = sub_1B6383E3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B637F698(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  type metadata accessor for MapsSyncObject(0);
  v5 = sub_1B63BECA4();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1B6383DE8;

  return sub_1B637EEEC(v5);
}

void sub_1B637F770(id a1, unint64_t isUniquelyReferenced_nonNull_native)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = sub_1B6382A14(MEMORY[0x1E69E7CC0]);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
  {
    v6 = 0;
    v79 = isUniquelyReferenced_nonNull_native;
    v81 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v77 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v7 = &unk_1E7C32000;
    v84 = a1;
    v78 = i;
    while (1)
    {
      if (v81)
      {
        v10 = MEMORY[0x1B8C92830](v6, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v6 >= *(v77 + 16))
        {
          goto LABEL_44;
        }

        v10 = *(isUniquelyReferenced_nonNull_native + 8 * v6 + 32);
      }

      v11 = v10;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v82 = v6 + 1;
      *&v87[0] = v10;
      type metadata accessor for MapsSyncObject(0);
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943518, &qword_1B63C6200);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v91 = 0;
        v89 = 0u;
        v90 = 0u;
      }

      sub_1B6284EAC(&v89, &qword_1EB943520, &qword_1B63C6208);
      v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      [*&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] v7[236]];
      v14 = *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId];
      v15 = *&v12[v13];
      v16 = v14;
      [v15 unlock];
      if (v14)
      {
      }

      else
      {
        v17 = v12;
        if (swift_dynamicCast())
        {
          sub_1B62AA870(v87, &v89);
          isUniquelyReferenced_nonNull_native = v84;
          [*__swift_project_boxed_opaque_existential_0(&v89 *(&v90 + 1))];
          __swift_destroy_boxed_opaque_existential_1(&v89);
          goto LABEL_19;
        }

        v88 = 0;
        memset(v87, 0, sizeof(v87));
        sub_1B6284EAC(v87, &qword_1EB943520, &qword_1B63C6208);
      }

      isUniquelyReferenced_nonNull_native = v84;
LABEL_19:
      [*&v12[v13] lock];
      a1 = sub_1B629563C(*&v12[v13], isUniquelyReferenced_nonNull_native);
      [*&v12[v13] unlock];
      if (!a1)
      {
        v32 = sub_1B63BEDC4();
        if (qword_1EDB0F690 != -1)
        {
          swift_once();
        }

        v33 = qword_1EDB0F680;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1B63C3D50;
        *(v34 + 56) = MEMORY[0x1E69E6158];
        *(v34 + 64) = sub_1B6281318();
        *(v34 + 32) = 0xD000000000000036;
        *(v34 + 40) = 0x80000001B63CB510;
        sub_1B63BEA14(v32, &dword_1B627F000, v33, "%{public}@", 10, 2, v34);

        sub_1B634DB54();
        swift_allocError();
        *v35 = 2;
        swift_willThrow();

        return;
      }

      [*&v12[v13] lock];
      sub_1B6397CB8(*&v12[v13], a1, isUniquelyReferenced_nonNull_native);
      [*&v12[v13] unlock];
      if ((v4 & 0xC000000000000001) != 0)
      {
        if (v4 >= 0)
        {
          v4 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v18 = a1;
        v19 = sub_1B63BF044();
        if (__OFADD__(v19, 1))
        {
          goto LABEL_42;
        }

        v4 = sub_1B63812F4(v4, v19 + 1);
      }

      else
      {
        v20 = a1;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v89 = v4;
      v22 = sub_1B6380EB0(v12);
      v23 = *(v4 + 16);
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_41;
      }

      v26 = v21;
      if (*(v4 + 24) >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = v89;
          if (v21)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1B638E1F0();
          v4 = v89;
          if (v26)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1B638CC34(v25, isUniquelyReferenced_nonNull_native);
        v27 = sub_1B6380EB0(v12);
        if ((v26 & 1) != (v28 & 1))
        {
          sub_1B63BF3D4();
          __break(1u);
          return;
        }

        v22 = v27;
        v4 = v89;
        if (v26)
        {
LABEL_4:
          v8 = *(v4 + 56);
          v9 = *(v8 + 8 * v22);
          *(v8 + 8 * v22) = a1;

          goto LABEL_5;
        }
      }

      *(v4 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(*(v4 + 48) + 8 * v22) = v12;
      *(*(v4 + 56) + 8 * v22) = a1;

      v29 = *(v4 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_43;
      }

      *(v4 + 16) = v31;
LABEL_5:
      ++v6;
      isUniquelyReferenced_nonNull_native = v79;
      a1 = v84;
      v7 = &unk_1E7C32000;
      if (v82 == v78)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_46:
  *&v89 = 0;
  v36 = [a1 save_];
  v37 = v89;
  if ((v36 & 1) == 0)
  {
    v42 = v89;
    sub_1B63BE824();

    swift_willThrow();
    *&v89 = 0;
    *(&v89 + 1) = 0xE000000000000000;
    sub_1B63BF114();

    swift_getErrorValue();
    *(&v90 + 1) = v86;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v89);
    (*(*(v86 - 8) + 16))(boxed_opaque_existential_0);
    sub_1B628C510(&v89, v87, &unk_1EB943740, &qword_1B63C5030);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943740, &qword_1B63C5030);
    v44 = sub_1B63BEBE4();
    v46 = v45;
    sub_1B6284EAC(&v89, &unk_1EB943740, &qword_1B63C5030);
    MEMORY[0x1B8C92330](v44, v46);

    v47 = 0xD00000000000001FLL;
    v41 = 0x80000001B63CB5A0;
    v48 = sub_1B63BEDC4();
    if (qword_1EDB0F690 != -1)
    {
      goto LABEL_78;
    }

    goto LABEL_50;
  }

  v38 = v4 & 0xC000000000000001;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v80 = 0;
    v39 = 0;
    v40 = 0;
    v41 = sub_1B63BF1D4() | 0x8000000000000000;
  }

  else
  {
    v51 = -1 << *(v4 + 32);
    v39 = ~v51;
    v80 = v4 + 64;
    v52 = -v51;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v40 = v53 & *(v4 + 64);
    v41 = v4;
  }

  v54 = v37;

  v55 = 0;
  v47 = (v39 + 64) >> 6;
  v83 = v41;
  v56 = v80;
  v48 = v40;
  while ((v41 & 0x8000000000000000) != 0)
  {
    v60 = sub_1B63BF274();
    if (!v60 || (*&v87[0] = v60, type metadata accessor for MapsSyncObject(0), swift_dynamicCast(), (v59 = v89) == 0))
    {
LABEL_75:
      sub_1B628B9E4(v83);
      *&v89 = 0;
      *(&v89 + 1) = 0xE000000000000000;
      sub_1B63BF114();

      *&v89 = 0xD000000000000022;
      *(&v89 + 1) = 0x80000001B63CB5C0;

      sub_1B637D7DC(v71);
      v73 = v72;

      v74 = MEMORY[0x1B8C923A0](v73, MEMORY[0x1E69E6158]);
      v76 = v75;

      MEMORY[0x1B8C92330](v74, v76);

      _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v89, *(&v89 + 1));

      goto LABEL_76;
    }

LABEL_65:
    if (v38)
    {
      v85 = v48;
      v61 = v59;
      v62 = sub_1B63BF254();

      if (!v62)
      {
        goto LABEL_73;
      }

      *&v87[0] = v62;
      sub_1B6383280();
      swift_dynamicCast();
      v63 = v89;
      if (!v89)
      {
        goto LABEL_73;
      }

LABEL_72:
      v66 = [v63 objectID];
      v67 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      [*&v59[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] lock];
      v68 = v38;
      v69 = *&v59[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId];
      *&v59[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = v66;
      v70 = v66;

      v38 = v68;
      v56 = v80;
      [*&v59[v67] unlock];

      v59 = v70;
      goto LABEL_73;
    }

    if (!*(v4 + 16))
    {
      goto LABEL_74;
    }

    v85 = v48;
    v64 = sub_1B6380EB0(v59);
    if (v65)
    {
      v63 = *(*(v4 + 56) + 8 * v64);
      if (v63)
      {
        goto LABEL_72;
      }
    }

LABEL_73:
    v48 = v85;
LABEL_74:

    v41 = v83;
  }

  v57 = v55;
  v58 = v48;
  if (v48)
  {
LABEL_61:
    v48 = (v58 - 1) & v58;
    v59 = *(*(v41 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v58)))));
    if (!v59)
    {
      goto LABEL_75;
    }

    goto LABEL_65;
  }

  while (1)
  {
    v55 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v55 >= v47)
    {
      goto LABEL_75;
    }

    v58 = *(v56 + 8 * v55);
    ++v57;
    if (v58)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_78:
  swift_once();
LABEL_50:
  v49 = qword_1EDB0F680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B63C3D50;
  *(v50 + 56) = MEMORY[0x1E69E6158];
  *(v50 + 64) = sub_1B6281318();
  *(v50 + 32) = v47;
  *(v50 + 40) = v41;
  sub_1B63BEA14(v48, &dword_1B627F000, v49, "%{public}@", 10, 2, v50);

  swift_willThrow();
LABEL_76:
}

void sub_1B63801EC(id a1, unint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v59 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    goto LABEL_36;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    v56 = a2;
    v57 = v3;
    if (v3)
    {
      v5 = 0;
      v54 = a2 & 0xFFFFFFFFFFFFFF8;
      v55 = a2 & 0xC000000000000001;
      while (1)
      {
        if (v55)
        {
          v6 = MEMORY[0x1B8C92830](v5);
        }

        else
        {
          if (v5 >= *(v54 + 16))
          {
            goto LABEL_35;
          }

          v6 = *(a2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_34;
        }

        *&v60[0] = v6;
        type metadata accessor for MapsSyncObject(0);
        v9 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943500, &qword_1B63C61E8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v64 = 0;
          v62 = 0u;
          v63 = 0u;
        }

        sub_1B6284EAC(&v62, &qword_1EB943508, &qword_1B63C61F0);
        v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
        [*&v9[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] lock];
        v11 = sub_1B629563C(*&v9[v10], a1);
        [*&v9[v10] unlock];
        if (!v11)
        {
          break;
        }

        v12 = v11;
        MEMORY[0x1B8C92370]();
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B63BECC4();
        }

        sub_1B63BECE4();
        v4 = v59;
        v13 = v9;
        if (swift_dynamicCast())
        {
          sub_1B62AA870(v60, &v62);
          [*__swift_project_boxed_opaque_existential_0(&v62 *(&v63 + 1))];

          __swift_destroy_boxed_opaque_existential_1(&v62);
        }

        else
        {

          v61 = 0;
          memset(v60, 0, sizeof(v60));
          sub_1B6284EAC(v60, &qword_1EB943508, &qword_1B63C61F0);
        }

        a2 = v56;
        ++v5;
        if (v8 == v57)
        {
          goto LABEL_19;
        }
      }

      v19 = sub_1B63BEDC4();
      if (qword_1EDB0F690 != -1)
      {
        swift_once();
      }

      v20 = qword_1EDB0F680;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B63C3D50;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1B6281318();
      *(v21 + 32) = 0xD000000000000036;
      *(v21 + 40) = 0x80000001B63CB510;
      sub_1B63BEA14(v19, &dword_1B627F000, v20, "%{public}@", 10, 2, v21);

      sub_1B634DB54();
      swift_allocError();
      *v22 = 2;
      swift_willThrow();

      return;
    }

LABEL_19:
    if (v4 >> 62)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_21:
    v15 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8C92830](v15, v4);
      }

      else
      {
        if (v15 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v16 = *(v4 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      [a1 deleteObject_];

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v23 = a2;
    v3 = sub_1B63BF044();
    a2 = v23;
  }

  v14 = sub_1B63BF044();
  if (v14)
  {
    goto LABEL_21;
  }

LABEL_38:
  *&v62 = 0;
  if (![a1 save_])
  {
    v31 = v62;

    sub_1B63BE824();

    swift_willThrow();
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;
    sub_1B63BF114();

    swift_getErrorValue();
    *(&v63 + 1) = v58;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
    (*(*(v58 - 8) + 16))(boxed_opaque_existential_0);
    sub_1B628C510(&v62, v60, &unk_1EB943740, &qword_1B63C5030);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943740, &qword_1B63C5030);
    v33 = sub_1B63BEBE4();
    v35 = v34;
    sub_1B6284EAC(&v62, &unk_1EB943740, &qword_1B63C5030);
    MEMORY[0x1B8C92330](v33, v35);

    v36 = sub_1B63BEDC4();
    if (qword_1EDB0F690 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDB0F680;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1B63C3D50;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    *(v38 + 64) = sub_1B6281318();
    *(v38 + 32) = 0xD00000000000001FLL;
    *(v38 + 40) = 0x80000001B63CB550;
    sub_1B63BEA14(v36, &dword_1B627F000, v37, "%{public}@", 10, 2, v38);

    swift_willThrow();
    return;
  }

  if (!v57)
  {
    v39 = v62;
    goto LABEL_50;
  }

  if (v57 < 1)
  {
    __break(1u);
    goto LABEL_65;
  }

  v24 = v62;
  v25 = v56;
  v26 = 0;
  do
  {
    if ((v56 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1B8C92830](v26);
    }

    else
    {
      v27 = *(v25 + 8 * v26 + 32);
    }

    v28 = v27;
    ++v26;
    v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    [*&v27[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] lock];
    v30 = *&v28[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId];
    *&v28[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;

    [*&v28[v29] unlock];
    v25 = v56;
  }

  while (v57 != v26);
LABEL_50:
  *&v62 = 0;
  *(&v62 + 1) = 0xE000000000000000;
  sub_1B63BF114();

  *&v62 = 0xD000000000000022;
  *(&v62 + 1) = 0x80000001B63CB570;
  if (v4 >> 62)
  {
    v40 = sub_1B63BF044();
    if (!v40)
    {
      goto LABEL_62;
    }

LABEL_52:
    *&v60[0] = MEMORY[0x1E69E7CC0];
    sub_1B639E7FC(0, v40 & ~(v40 >> 63), 0);
    if ((v40 & 0x8000000000000000) == 0)
    {
      v41 = 0;
      v42 = *&v60[0];
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x1B8C92830](v41, v4);
        }

        else
        {
          v43 = *(v4 + 8 * v41 + 32);
        }

        v44 = v43;
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943510, &qword_1B63C61F8);
        v45 = sub_1B63BEBE4();
        v47 = v46;

        *&v60[0] = v42;
        v49 = *(v42 + 16);
        v48 = *(v42 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1B639E7FC((v48 > 1), v49 + 1, 1);
          v42 = *&v60[0];
        }

        ++v41;
        *(v42 + 16) = v49 + 1;
        v50 = v42 + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
      }

      while (v40 != v41);

      goto LABEL_63;
    }

LABEL_65:
    __break(1u);
  }

  v40 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v40)
  {
    goto LABEL_52;
  }

LABEL_62:

  v42 = MEMORY[0x1E69E7CC0];
LABEL_63:
  v51 = MEMORY[0x1B8C923A0](v42, MEMORY[0x1E69E6158]);
  v53 = v52;

  MEMORY[0x1B8C92330](v51, v53);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v62, *(&v62 + 1));
}

void sub_1B6380B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1B63BE814();
    if (a2)
    {
LABEL_3:
      sub_1B6383280();
      v6 = sub_1B63BEC94();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1B6380BFC(uint64_t a1)
{
  sub_1B62814B4();
  sub_1B634C490(a1);

  sub_1B628276C();
  sub_1B634C490(a1);
}

id MapsSyncStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B6380E1C(char a1)
{
  sub_1B63BF434();
  sub_1B63BEC24();

  v2 = sub_1B63BF494();

  return sub_1B6380FB0(a1 & 1, v2);
}

unint64_t sub_1B6380EB0(uint64_t a1)
{
  v2 = sub_1B63BEF14();

  return sub_1B63810B0(a1, v2);
}

unint64_t sub_1B6380EF4(uint64_t a1, uint64_t a2)
{
  sub_1B63BF434();
  sub_1B63BEC24();
  v4 = sub_1B63BF494();

  return sub_1B6381174(a1, a2, v4);
}

unint64_t sub_1B6380F6C(uint64_t a1)
{
  v2 = sub_1B63BF0A4();

  return sub_1B638122C(a1, v2);
}

unint64_t sub_1B6380FB0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x64756F6C43;
    }

    else
    {
      v6 = 0x6C61636F4CLL;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x64756F6C43 : 0x6C61636F4CLL;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_1B63BF364();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1B63810B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for MapsSyncObject(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B63BEF24();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B6381174(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B63BF364())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B638122C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B6382D78(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8C927A0](v9, a1);
      sub_1B6382DD4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1B63812F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435D0, qword_1B63C6218);
    v2 = sub_1B63BF2F4();
    v19 = v2;
    sub_1B63BF1D4();
    v3 = sub_1B63BF264();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for MapsSyncObject(0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1B6383280();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1B638CC34(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1B63BEF14();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1B63BF264();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void (*sub_1B6381518(uint64_t *a1, char a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1B6381784(v5);
  v5[9] = sub_1B638161C((v5 + 4), a2 & 1, isUniquelyReferenced_nonNull_native);
  return sub_1B63815BC;
}

void sub_1B63815BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t (*sub_1B638161C(uint64_t a1, char a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1B6380E1C(a2 & 1);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B638E094();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B638C97C(v14, a3 & 1);
    v9 = sub_1B6380E1C(a2 & 1);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1B63BF3D4();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_1B6381738;
}

unint64_t sub_1B6381738(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_1B638DE84(*(result + 16), *(result + 24) & 1, v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_1B638D69C(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_1B6381784(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B63817AC;
}

void sub_1B63817B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1B63BF204() == *(a4 + 36))
    {
      sub_1B63BF214();
      type metadata accessor for MapsSyncObject(0);
      swift_dynamicCast();
      sub_1B6380EB0(v6);
      v5 = v4;

      if (v5)
      {
        sub_1B63BF1E4();
        sub_1B63BF234();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1B63BEFD4();
}

void sub_1B638190C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1B63BF244();
      sub_1B6383280();
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1B63BF204() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1B63BF214();
  type metadata accessor for MapsSyncObject(0);
  swift_dynamicCast();
  v5 = sub_1B6380EB0(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

void sub_1B6381AF4(unint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v38[5] = a3;
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v5 = sub_1B63BF044();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v36 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v37 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v34 = isUniquelyReferenced_nonNull_native;
      v35 = v5;
      do
      {
        if (v37)
        {
          v7 = MEMORY[0x1B8C92830](v6, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v6 >= *(v36 + 16))
          {
            goto LABEL_30;
          }

          v7 = *(isUniquelyReferenced_nonNull_native + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        ObjectType = swift_getObjectType();
        v11 = (*(ObjectType + 592))();
        v12 = v11 & 1;
        if (!(*a2)[2] || (sub_1B6380E1C(v11 & 1), (v13 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38[0] = *a2;
          v14 = v38[0];
          *a2 = 0x8000000000000000;
          v16 = sub_1B6380E1C(v12);
          v17 = v14[2];
          v18 = (v15 & 1) == 0;
          v19 = v17 + v18;
          if (__OFADD__(v17, v18))
          {
            goto LABEL_31;
          }

          v20 = v15;
          if (v14[3] >= v19)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1B638E094();
            }
          }

          else
          {
            sub_1B638C97C(v19, isUniquelyReferenced_nonNull_native);
            v21 = sub_1B6380E1C(v12);
            if ((v20 & 1) != (v22 & 1))
            {
              sub_1B63BF3D4();
              __break(1u);
              return;
            }

            v16 = v21;
          }

          isUniquelyReferenced_nonNull_native = v34;
          v23 = v38[0];
          if (v20)
          {
            *(v38[0][7] + 8 * v16) = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v38[0][(v16 >> 6) + 8] |= 1 << v16;
            *(v23[6] + v16) = v12;
            *(v23[7] + 8 * v16) = MEMORY[0x1E69E7CC0];
            v24 = v23[2];
            v25 = __OFADD__(v24, 1);
            v26 = v24 + 1;
            if (v25)
            {
              goto LABEL_32;
            }

            v23[2] = v26;
          }

          *a2 = v23;
          v5 = v35;
        }

        v27 = *&v8[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
        type metadata accessor for MapsSyncStore();
        v28 = v27;
        v29 = sub_1B63BEF24();

        if (v29)
        {
          v31 = sub_1B637DFDC(v38, v12);
          if (*v30)
          {
            v32 = v30;
            v33 = v8;
            MEMORY[0x1B8C92370]();
            if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B63BECC4();
              isUniquelyReferenced_nonNull_native = v34;
            }

            sub_1B63BECE4();
            (v31)(v38, 0);
            v5 = v35;
          }

          else
          {
            (v31)(v38, 0);
          }
        }

        ++v6;
      }

      while (v9 != v5);
    }
  }
}

uint64_t dispatch thunk of MapsSyncStore.save(objects:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628E340;

  return v7(a1);
}

uint64_t dispatch thunk of MapsSyncStore.delete(objects:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628CAA0;

  return v7(a1);
}

void sub_1B6382318(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 >> 62)
  {
LABEL_32:
    v8 = sub_1B63BF044();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1B8C92830](0, a1);
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(a1 + 32);
  }

  v27 = v9;
  v10 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B8C92830](v10, a1);
    }

    else
    {
      if (v10 >= *(v26 + 16))
      {
        goto LABEL_31;
      }

      v12 = *(a1 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    ObjectType = swift_getObjectType();
    v16 = (*(ObjectType + 592))();
    v17 = swift_getObjectType();
    v18 = (*(v17 + 592))();
    if (v16)
    {
      v19 = 0x64756F6C43;
    }

    else
    {
      v19 = 0x6C61636F4CLL;
    }

    if (v18)
    {
      v20 = 0x64756F6C43;
    }

    else
    {
      v20 = 0x6C61636F4CLL;
    }

    if (v19 == v20)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v21 = sub_1B63BF364();

      swift_bridgeObjectRelease_n();
      if ((v21 & 1) == 0)
      {

        return;
      }
    }

    ++v10;
  }

  while (v14 != v8);
  v22 = sub_1B6293F54(v27, v11);
  MEMORY[0x1EEE9AC00](v22);
  v23 = sub_1B629409C();
  v24 = v23;
  if (v25)
  {
    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v23);
    sub_1B63BEE84();
  }

  sub_1B6295C20(v24);
}

void sub_1B63826F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 >> 62)
  {
LABEL_32:
    v7 = sub_1B63BF044();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8C92830](0, a1);
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(a1 + 32);
  }

  v26 = v8;
  v9 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1B8C92830](v9, a1);
    }

    else
    {
      if (v9 >= *(v25 + 16))
      {
        goto LABEL_31;
      }

      v11 = *(a1 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    ObjectType = swift_getObjectType();
    v15 = (*(ObjectType + 592))();
    v16 = swift_getObjectType();
    v17 = (*(v16 + 592))();
    if (v15)
    {
      v18 = 0x64756F6C43;
    }

    else
    {
      v18 = 0x6C61636F4CLL;
    }

    if (v17)
    {
      v19 = 0x64756F6C43;
    }

    else
    {
      v19 = 0x6C61636F4CLL;
    }

    if (v18 == v19)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v20 = sub_1B63BF364();

      swift_bridgeObjectRelease_n();
      if ((v20 & 1) == 0)
      {

        return;
      }
    }

    ++v9;
  }

  while (v13 != v7);
  v21 = sub_1B6293F54(v26, v10);
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_1B629409C();
  v23 = v22;
  if (v24)
  {
    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v22);
    sub_1B63BEE84();
  }

  sub_1B6295C20(v23);
}

unint64_t sub_1B6382A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435D0, qword_1B63C6218);
    v3 = sub_1B63BF304();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1B6380EB0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B6382B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943590, &unk_1B63C63F0);
    v3 = sub_1B63BF304();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B628C510(v4, &v13, &qword_1EB9434F8, &qword_1B63C61B0);
      v5 = v13;
      v6 = v14;
      result = sub_1B6380EF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B628E928(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B6382C3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9434E8, &qword_1B63C61A0);
    v3 = sub_1B63BF304();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B628C510(v4, v13, &qword_1EB9434F0, &qword_1B63C61A8);
      result = sub_1B6380F6C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1B628E928(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B6382E28(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_31:
    v4 = sub_1B63BF044();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_32:
    sub_1B634DB54();
    v29 = swift_allocError();
    *v30 = 2;
    v31 = sub_1B63BE814();
    (*(a2 + 16))(a2, v31, 0);

    v21 = v29;

LABEL_24:

    return;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_32;
  }

LABEL_3:
  v32 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = MEMORY[0x1B8C92830](0, a1);
  }

  else
  {
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v34 = *(a1 + 32);
  }

  v5 = 0;
  a2 = 0x64756F6C43;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8C92830](v5, a1);
    }

    else
    {
      if (v5 >= *(v33 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(a1 + 8 * v5 + 32);
    }

    v9 = v8;
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    ObjectType = swift_getObjectType();
    v12 = (*(ObjectType + 592))();
    v13 = swift_getObjectType();
    v14 = (*(v13 + 592))();
    if (v12)
    {
      v15 = 0x64756F6C43;
    }

    else
    {
      v15 = 0x6C61636F4CLL;
    }

    if (v14)
    {
      v16 = 0x64756F6C43;
    }

    else
    {
      v16 = 0x6C61636F4CLL;
    }

    if (v15 == v16)
    {

      v6 = swift_bridgeObjectRelease_n();
    }

    else
    {
      v17 = sub_1B63BF364();

      v6 = swift_bridgeObjectRelease_n();
      if ((v17 & 1) == 0)
      {
        sub_1B634DB54();
        v18 = swift_allocError();
        *v19 = 2;
        v20 = sub_1B63BE814();
        (*(v32 + 16))(v32, v20, 0);

        v21 = v34;

        goto LABEL_24;
      }
    }

    ++v5;
  }

  while (v10 != v4);
  v22 = sub_1B6293F54(v6, v7);
  MEMORY[0x1EEE9AC00](v22);
  v23 = sub_1B629409C();
  v24 = v23;
  if (v25)
  {
    swift_willThrow();

    v26 = v24;
    v27 = sub_1B63BE814();
    sub_1B6383280();
    v28 = sub_1B63BEC94();
    (*(v32 + 16))(v32, v27, v28);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v23);
    sub_1B63BEE84();

    sub_1B6295C20(v24);
  }
}

unint64_t sub_1B6383280()
{
  result = qword_1EDB0ECB0;
  if (!qword_1EDB0ECB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB0ECB0);
  }

  return result;
}

uint64_t sub_1B63832CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B637F698(v2, v3, v4);
}

uint64_t sub_1B6383380()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B637EE14(v2, v3, v4);
}

void sub_1B63834B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 >> 62)
  {
LABEL_31:
    v9 = sub_1B63BF044();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_32:
    sub_1B634DB54();
    v31 = swift_allocError();
    *v32 = 2;
    (a3)();
    v25 = v31;

LABEL_24:

    return;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_32;
  }

LABEL_3:
  v33 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = MEMORY[0x1B8C92830](0, a1);
  }

  else
  {
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v35 = *(a1 + 32);
  }

  v10 = 0;
  a3 = 0x6C61636F4CLL;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B8C92830](v10, a1);
    }

    else
    {
      if (v10 >= *(v34 + 16))
      {
        goto LABEL_30;
      }

      v13 = *(a1 + 8 * v10 + 32);
    }

    v14 = v13;
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    ObjectType = swift_getObjectType();
    v17 = (*(ObjectType + 592))();
    v18 = swift_getObjectType();
    v19 = (*(v18 + 592))();
    if (v17)
    {
      v20 = 0x64756F6C43;
    }

    else
    {
      v20 = 0x6C61636F4CLL;
    }

    if (v19)
    {
      v21 = 0x64756F6C43;
    }

    else
    {
      v21 = 0x6C61636F4CLL;
    }

    if (v20 == v21)
    {

      v11 = swift_bridgeObjectRelease_n();
    }

    else
    {
      v22 = sub_1B63BF364();

      v11 = swift_bridgeObjectRelease_n();
      if ((v22 & 1) == 0)
      {
        sub_1B634DB54();
        v23 = swift_allocError();
        *v24 = 2;
        v33();

        v25 = v35;

        goto LABEL_24;
      }
    }

    ++v10;
  }

  while (v15 != v9);
  v26 = sub_1B6293F54(v11, v12);
  MEMORY[0x1EEE9AC00](v26);
  v27 = sub_1B629409C();
  v28 = v27;
  if (v29)
  {
    swift_willThrow();

    v30 = v28;
    (v33)(v28);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v27);
    sub_1B63BEE84();

    sub_1B6295C20(v28);
  }
}

void sub_1B6383914(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
LABEL_31:
    v10 = sub_1B63BF044();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_32:
    sub_1B634DB54();
    v32 = swift_allocError();
    *v33 = 2;
    (a3)();
    v26 = v32;

LABEL_24:

    return;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_32;
  }

LABEL_3:
  v34 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = MEMORY[0x1B8C92830](0, a1);
  }

  else
  {
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v36 = *(a1 + 32);
  }

  v11 = 0;
  a3 = 0x6C61636F4CLL;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1B8C92830](v11, a1);
    }

    else
    {
      if (v11 >= *(v35 + 16))
      {
        goto LABEL_30;
      }

      v14 = *(a1 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    ObjectType = swift_getObjectType();
    v18 = (*(ObjectType + 592))();
    v19 = swift_getObjectType();
    v20 = (*(v19 + 592))();
    if (v18)
    {
      v21 = 0x64756F6C43;
    }

    else
    {
      v21 = 0x6C61636F4CLL;
    }

    if (v20)
    {
      v22 = 0x64756F6C43;
    }

    else
    {
      v22 = 0x6C61636F4CLL;
    }

    if (v21 == v22)
    {

      v12 = swift_bridgeObjectRelease_n();
    }

    else
    {
      v23 = sub_1B63BF364();

      v12 = swift_bridgeObjectRelease_n();
      if ((v23 & 1) == 0)
      {
        sub_1B634DB54();
        v24 = swift_allocError();
        *v25 = 2;
        v34();

        v26 = v36;

        goto LABEL_24;
      }
    }

    ++v11;
  }

  while (v16 != v10);
  v27 = sub_1B6293F54(v12, v13);
  MEMORY[0x1EEE9AC00](v27);
  v28 = sub_1B629409C();
  v29 = v28;
  if (v30)
  {
    swift_willThrow();

    v31 = v29;
    (v34)(v29);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v28);
    sub_1B63BEE84();

    sub_1B6295C20(v29);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B6383D88(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_1B6383EA4(void *a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for MapsSyncManagedCollection();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v17 = a1;
    v5 = [v17 managedObjectContext];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for MapsSyncManagedCollectionItem();
      v7 = [swift_getObjCClassFromMetadata() fetchRequest];
      sub_1B62A11CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B63C3D50;
      *(v8 + 56) = v2;
      *(v8 + 64) = sub_1B63840FC();
      *(v8 + 32) = v4;
      v9 = v17;
      v10 = sub_1B63BED94();
      [v7 setPredicate_];

      v11 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
      v18[0] = 0;
      v12 = [v6 executeRequest:v11 error:v18];
      if (v12)
      {
        v13 = v12;
        v14 = v18[0];
      }

      else
      {
        v15 = v18[0];
        v16 = sub_1B63BE824();

        swift_willThrow();
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1B63840FC()
{
  result = qword_1EB943538;
  if (!qword_1EB943538)
  {
    type metadata accessor for MapsSyncManagedCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB943538);
  }

  return result;
}

uint64_t MultiPointRouteType.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 0xFFFF)
    {
      v1 = 0xFFFF;
    }

    else
    {
      v1 = a1 == 1;
    }

    v2 = a1 != 0xFFFF && a1 != 1;
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 16);
}

unint64_t sub_1B63841A4()
{
  result = qword_1EB943540;
  if (!qword_1EB943540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB943540);
  }

  return result;
}

unsigned __int16 *sub_1B63841F8@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = (v2 - 2) < 0xFFFD;
  if ((v2 - 2) < 0xFFFD)
  {
    LOWORD(v2) = 0;
  }

  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

uint64_t sub_1B638422C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

void sub_1B6384270(uint64_t a1)
{
  v44 = sub_1B63BE8E4();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1B63BF044();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1B639E7FC(0, v5 & ~(v5 >> 63), 0);
    v47 = v52;
    if (v45)
    {
      v6 = sub_1B63BEFF4();
    }

    else
    {
      v6 = sub_1B63BEFB4();
      v7 = *(a1 + 36);
    }

    v49 = v6;
    v50 = v7;
    v51 = v45 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v41 = v5;
      v42 = (v3 + 8);
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v9 = a1;
      }

      v39 = a1 + 56;
      v40 = v9;
      v37 = v1;
      v38 = a1 + 64;
      while (v8 < v5)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_37;
        }

        v12 = v49;
        v13 = v51;
        v46 = v50;
        v14 = a1;
        sub_1B638EDE0(v49, v50, v51, a1);
        v16 = v15;
        v17 = [v15 objectID];
        v18 = [v17 URIRepresentation];

        v19 = v43;
        sub_1B63BE8B4();

        v20 = sub_1B63BE854();
        v22 = v21;
        (*v42)(v19, v44);

        v23 = v47;
        v52 = v47;
        v25 = *(v47 + 16);
        v24 = *(v47 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1B639E7FC((v24 > 1), v25 + 1, 1);
          v23 = v52;
        }

        *(v23 + 16) = v25 + 1;
        v26 = v23 + 16 * v25;
        *(v26 + 32) = v20;
        *(v26 + 40) = v22;
        v47 = v23;
        if (v45)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          a1 = v14;
          if (sub_1B63BF014())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943588, &qword_1B63C63E8);
          v10 = sub_1B63BED64();
          sub_1B63BF094();
          v10(v48, 0);
          if (v8 == v5)
          {
LABEL_34:
            sub_1B6383D88(v49, v50, v51);
            return;
          }
        }

        else
        {
          if (v13)
          {
            goto LABEL_43;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v14;
          v27 = 1 << *(v14 + 32);
          if (v12 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v12 >> 6;
          v29 = *(v39 + 8 * (v12 >> 6));
          if (((v29 >> v12) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v14 + 36) != v46)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v12 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v12 & 0x7FFFFFFFFFFFFFC0;
            v5 = v41;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            v5 = v41;
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                sub_1B6383D88(v12, v46, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            sub_1B6383D88(v12, v46, 0);
          }

LABEL_33:
          v36 = *(v14 + 36);
          v49 = v27;
          v50 = v36;
          v51 = 0;
          if (v8 == v5)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_1B63846A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B628E928(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1B638DBB8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1B6284EAC(a1, &unk_1EB943740, &qword_1B63C5030);
    sub_1B638C8D8(a2, a3, v9);

    return sub_1B6284EAC(v9, &unk_1EB943740, &qword_1B63C5030);
  }

  return result;
}

uint64_t sub_1B6384AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_1B6384B64;

  return sub_1B638F0B4(a1);
}

uint64_t sub_1B6384B64(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6384C9C, 0, 0);
  }
}

uint64_t sub_1B6384C9C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v11 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v5 + 32) = v11;
  *(v5 + 48) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943550, qword_1B63C6340);
  sub_1B63BEE84();
  v6 = *(v0 + 64);

  if (v2)
  {
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 16);
    v10 = *(v0 + 8);

    return v10(v9);
  }
}

uint64_t sub_1B6384DC8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = [a1 entities];
  sub_1B6281C60(0, &qword_1EDB0EA90, 0x1E695D5B8);
  v9 = sub_1B63BECA4();

  if (v9 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
  {
    v11 = 0;
    v56 = v9 & 0xC000000000000001;
    v53 = v9 & 0xFFFFFFFFFFFFFF8;
    v54 = i;
    v55 = MEMORY[0x1E69E7CC8];
    v52 = v9 + 32;
    v48 = v9;
    v49 = a3;
    v47 = a2;
    while (1)
    {
      if (v56)
      {
        v12 = MEMORY[0x1B8C92830](v11, v9);
      }

      else
      {
        if (v11 >= *(v53 + 16))
        {
          goto LABEL_48;
        }

        v12 = *(v52 + 8 * v11);
      }

      v13 = v12;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      if (a3)
      {
        v15 = [v12 name];
        if (!v15)
        {
          goto LABEL_4;
        }

        v16 = v5;
        v17 = v9;
        v18 = a2;
        v19 = v15;
        v20 = sub_1B63BEBD4();
        v22 = v21;

        a2 = v18;
        if (v20 == v18 && v22 == a3)
        {

          v9 = v17;
          v5 = v16;
          i = v54;
        }

        else
        {
          v24 = sub_1B63BF364();

          v9 = v17;
          v5 = v16;
          i = v54;
          if ((v24 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      v25 = [v13 name];
      if (!v25)
      {
LABEL_4:

        goto LABEL_5;
      }

      v26 = a2;
      v57 = v13;
      v27 = v25;
      v28 = sub_1B63BEBD4();
      a2 = v29;

      if (([v57 isAbstract] & 1) == 0)
      {
        v30 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) init];
        [v30 setEntity_];
        if (*(v55 + 16) && (v31 = sub_1B6380EF4(v28, a2), (v32 & 1) != 0))
        {
          v33 = *(*(v55 + 56) + 8 * v31);
        }

        else
        {
          v33 = MEMORY[0x1E69E7CC0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
        v34 = sub_1B63BEEA4();
        if (v5)
        {
        }

        v50 = v30;
        v35 = sub_1B63A2FAC(v34);

        if (v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = MEMORY[0x1E69E7CC0];
        }

        if (v36 >> 62)
        {
          a3 = sub_1B63BF044();
          v51 = v11;
          if (a3)
          {
LABEL_33:
            if (a3 < 1)
            {
              goto LABEL_49;
            }

            v37 = 0;
            do
            {
              if ((v36 & 0xC000000000000001) != 0)
              {
                v38 = MEMORY[0x1B8C92830](v37, v36);
              }

              else
              {
                v38 = *(v36 + 8 * v37 + 32);
              }

              v39 = v38;
              v40 = sub_1B6389CF4(v38);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_1B62B24C0(0, v33[2] + 1, 1, v33);
              }

              v42 = v33[2];
              v41 = v33[3];
              if (v42 >= v41 >> 1)
              {
                v33 = sub_1B62B24C0((v41 > 1), v42 + 1, 1, v33);
              }

              ++v37;

              v33[2] = v42 + 1;
              v33[v42 + 4] = v40;
            }

            while (a3 != v37);
          }
        }

        else
        {
          a3 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v51 = v11;
          if (a3)
          {
            goto LABEL_33;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B638DD08(v33, v28, a2, isUniquelyReferenced_nonNull_native);

        v11 = v51;
        v5 = 0;
        v9 = v48;
        a3 = v49;
        a2 = v47;
        i = v54;
        goto LABEL_5;
      }

      a2 = v26;
LABEL_5:
      if (v11 == i)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v55 = MEMORY[0x1E69E7CC8];
LABEL_52:

  v45 = sub_1B63852A0(v55);

  *a4 = v45;
  return result;
}

unint64_t sub_1B63852A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943590, &unk_1B63C63F0);
    v2 = sub_1B63BF304();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435A8, &qword_1B63C64C8);
        swift_dynamicCast();
        sub_1B628E928(&v22, v24);
        sub_1B628E928(v24, v25);
        sub_1B628E928(v25, &v23);
        result = sub_1B6380EF4(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1B628E928(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1B628E928(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B6385690(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[3] = a4;
  v8 = sub_1B63BE8E4();
  v4[4] = v8;
  v4[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[6] = v9;
  v4[7] = _Block_copy(a3);
  sub_1B63BE8B4();
  if (a2)
  {
    v10 = sub_1B63BEBD4();
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v4[8] = v10;
  v4[9] = v11;
  v12 = a4;
  v13 = swift_task_alloc();
  v4[10] = v13;
  *v13 = v4;
  v13[1] = sub_1B63857F4;

  return sub_1B638F0B4(v9);
}

uint64_t sub_1B63857F4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;
  *(v4 + 104) = v2;

  if (v2)
  {
    v6 = *(v4 + 40);
    v5 = *(v4 + 48);
    v7 = *(v4 + 32);

    (*(v6 + 8))(v5, v7);
    v8 = sub_1B63BE814();

    v9 = *(v4 + 56);
    (v9)[2](v9, 0, v8);

    _Block_release(v9);

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B63859B8, 0, 0);
  }
}

uint64_t sub_1B63859B8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v19 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v5 + 32) = v19;
  *(v5 + 48) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943550, qword_1B63C6340);
  sub_1B63BEE84();
  v6 = *(v0 + 96);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v10 = *(v0 + 24);
  v9 = *(v0 + 32);

  (*(v8 + 8))(v7, v9);
  if (v2)
  {
    v11 = sub_1B63BE814();

    v12 = v11;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v15 = sub_1B63BEB54();

    v13 = v15;
    v12 = 0;
    v14 = v15;
  }

  v16 = *(v0 + 56);
  v16[2](v16, v13, v12);

  _Block_release(v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B6385B6C(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v3[4] = swift_getObjectType();
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1B6385C28;

  return sub_1B638F0B4(a1);
}

uint64_t sub_1B6385C28(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B6385D88, 0, 0);
  }
}

uint64_t sub_1B6385D88()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;
  sub_1B63BEE84();

  v5 = *(v0 + 8);

  return v5();
}

_BYTE *sub_1B6385E60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v56[4] = *MEMORY[0x1E69E9840];
  result = sub_1B63862DC(a1);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v52 = a4;
  v55 = result;
  v7 = result + 64;
  v8 = 1 << result[32];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 8);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v10)
  {
LABEL_10:
    v10 &= v10 - 1;

    v14 = sub_1B63BEC54();

    if ((v14 & 1) == 0)
    {

      v15 = 1;
      goto LABEL_13;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_51;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *&v7[8 * v13];
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  sub_1B638FFBC(v52, &v55);
  v15 = 0;
  v6 = v55;
LABEL_13:
  v47 = v15;
  v46 = v6 + 64;
  v16 = 1 << v6[32];
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v6 + 8);
  v45 = (v16 + 63) >> 6;

  v19 = 0;
  v48 = v6;
LABEL_17:
  if (v18)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
    }

    if (v20 >= v45)
    {
      break;
    }

    v18 = *&v46[8 * v20];
    ++v19;
    if (v18)
    {
      v19 = v20;
LABEL_22:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = v21 | (v19 << 6);
      v23 = *(*(v6 + 7) + 8 * v22);
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = *(v6 + 6) + 16 * v22;
        v26 = *(v25 + 8);
        v50 = *v25;

        v27 = 32;
        while (1)
        {
          v28 = *(v23 + v27);

          v29 = sub_1B638A994(v50, v26, v28, v52);
          if (v29)
          {
            v30 = v29;
            if (!*(v28 + 16) || (v31 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000), (v32 & 1) == 0))
            {

LABEL_32:

              goto LABEL_25;
            }

            sub_1B629E3F0(*(v28 + 56) + 32 * v31, v56);

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_32;
            }

            sub_1B63918F4(v53, v54, v30, &v55);
          }

LABEL_25:
          v27 += 8;
          if (!--v24)
          {

            v6 = v48;
            goto LABEL_17;
          }
        }
      }

      goto LABEL_17;
    }
  }

  v33 = 0;
  v34 = v55;
  v49 = v55 + 64;
  v51 = v55;
  v35 = 1 << v55[32];
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v55 + 8);
  v38 = (v35 + 63) >> 6;
  while (v37)
  {
LABEL_41:
    v40 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v41 = *(*(*(v34 + 7) + ((v33 << 9) | (8 * v40))) + 16);
    if (v41)
    {

      v42 = 32;
      do
      {

        sub_1B63929BC(v43, v52, v47);

        v42 += 8;
        --v41;
      }

      while (v41);

      v34 = v51;
    }
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_50;
    }

    if (v39 >= v38)
    {
      break;
    }

    v37 = *&v49[8 * v39];
    ++v33;
    if (v37)
    {
      v33 = v39;
      goto LABEL_41;
    }
  }

  v56[0] = 0;
  if ([v52 save_])
  {
    return v56[0];
  }

  v44 = v56[0];
  sub_1B63BE824();

  return swift_willThrow();
}

unint64_t sub_1B63862DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435B0, &unk_1B63C64D0);
    v2 = sub_1B63BF304();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_1B629E3F0(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_1B628E928(v22, v21);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435A8, &qword_1B63C64C8);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1B6380EF4(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B63866D0(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v4[3] = swift_getObjectType();
  v7 = sub_1B63BE8E4();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[6] = v8;
  v4[7] = _Block_copy(a3);
  sub_1B63BE8B4();
  v4[8] = sub_1B63BEB74();
  v9 = a4;
  v10 = swift_task_alloc();
  v4[9] = v10;
  *v10 = v4;
  v10[1] = sub_1B638684C;

  return sub_1B638F0B4(v8);
}

uint64_t sub_1B638684C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 80) = v2;

  if (v2)
  {
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    v9 = *(v6 + 32);
    v10 = *(v6 + 16);

    (*(v8 + 8))(v7, v9);
    v11 = *(v6 + 56);
    v12 = sub_1B63BE814();

    (*(v11 + 16))(v11, v12);
    _Block_release(*(v6 + 56));

    v13 = *(v6 + 8);

    return v13();
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B6386A18, 0, 0);
  }
}

uint64_t sub_1B6386A18()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v14 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v8;
  v9[4] = v2;
  v9[5] = v1;
  v9[6] = v7;
  sub_1B63BEE84();

  (*(v5 + 8))(v14, v6);
  v10 = *(v0 + 56);
  if (v3)
  {
    v11 = sub_1B63BE814();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v0 + 56), 0);
  }

  _Block_release(*(v0 + 56));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1B6386B7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1B6386C24;

  return sub_1B638F0B4(a1);
}

uint64_t sub_1B6386C24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = v2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6386D5C, 0, 0);
  }
}

uint64_t sub_1B6386D5C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943558, qword_1B63C6358);
  sub_1B63BEE84();
  v5 = *(v0 + 40);

  if (v2)
  {
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 8);

    return v9(v8);
  }
}

void sub_1B6386E70(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 entities];
  sub_1B6281C60(0, &qword_1EDB0EA90, 0x1E695D5B8);
  v5 = sub_1B63BECA4();

  if (v5 >> 62)
  {
LABEL_31:
    v6 = sub_1B63BF044();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_32:

    *a3 = MEMORY[0x1E69E7CC8];
    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_32;
  }

LABEL_3:
  v34 = a3;
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v39 = v5 & 0xFFFFFFFFFFFFFF8;
  a3 = MEMORY[0x1E69E7CC8];
  v9 = &selRef_powerByConnector;
  v36 = v6;
  v37 = v5;
  v35 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v8)
    {
      v10 = MEMORY[0x1B8C92830](v7, v5);
    }

    else
    {
      if (v7 >= *(v39 + 16))
      {
        goto LABEL_28;
      }

      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (([v10 v9[133]] & 1) == 0)
    {
      v13 = [v11 name];
      if (v13)
      {
        break;
      }
    }

LABEL_5:
    ++v7;
    if (v12 == v6)
    {

      *v34 = a3;
      return;
    }
  }

  v14 = v13;
  v15 = sub_1B63BEBD4();
  v5 = v16;

  v17 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) init];
  [v17 setEntity_];
  v42[0] = 0;
  v18 = [a2 countForFetchRequest:v17 error:v42];
  if (v42[0])
  {
    v42[0];

    swift_willThrow();

    return;
  }

  v40 = v18;
  v41 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = a3;
  v20 = v5;
  v22 = sub_1B6380EF4(v15, v5);
  v23 = a3[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_29;
  }

  v5 = v21;
  if (a3[3] >= v25)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B638E664();
    }

    v26 = v20;
    v29 = v41;
    if ((v5 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  sub_1B638D3FC(v25, isUniquelyReferenced_nonNull_native);
  v26 = v20;
  v27 = sub_1B6380EF4(v15, v20);
  if ((v5 & 1) == (v28 & 1))
  {
    v22 = v27;
    v29 = v41;
    if ((v5 & 1) == 0)
    {
LABEL_18:
      a3 = v42[0];
      *(v42[0] + (v22 >> 6) + 8) |= 1 << v22;
      v30 = (a3[6] + 16 * v22);
      *v30 = v15;
      v30[1] = v26;
      *(a3[7] + 8 * v22) = v40;

      v31 = a3[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_30;
      }

      a3[2] = v33;
      goto LABEL_24;
    }

LABEL_23:

    a3 = v42[0];
    *(*(v42[0] + 7) + 8 * v22) = v40;

LABEL_24:
    v6 = v36;
    v5 = v37;
    v8 = v35;
    v9 = &selRef_powerByConnector;
    goto LABEL_5;
  }

  sub_1B63BF3D4();
  __break(1u);
}

uint64_t sub_1B6387394(uint64_t a1, const void *a2, void *a3)
{
  v3[3] = a3;
  v6 = sub_1B63BE8E4();
  v3[4] = v6;
  v3[5] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[6] = v7;
  v3[7] = _Block_copy(a2);
  sub_1B63BE8B4();
  v8 = a3;
  v9 = swift_task_alloc();
  v3[8] = v9;
  *v9 = v3;
  v9[1] = sub_1B63874D4;

  return sub_1B638F0B4(v7);
}

uint64_t sub_1B63874D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  *(v4 + 88) = v2;

  if (v2)
  {
    v6 = *(v4 + 40);
    v5 = *(v4 + 48);
    v7 = *(v4 + 32);

    (*(v6 + 8))(v5, v7);
    v8 = sub_1B63BE814();

    v9 = *(v4 + 56);
    (v9)[2](v9, 0, v8);

    _Block_release(v9);

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B638768C, 0, 0);
  }
}

uint64_t sub_1B638768C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943558, qword_1B63C6358);
  sub_1B63BEE84();
  v5 = *(v0 + 80);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);

  (*(v7 + 8))(v6, v8);
  if (v2)
  {
    v10 = sub_1B63BE814();

    v11 = v10;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v14 = sub_1B63BEB54();

    v12 = v14;
    v11 = 0;
    v13 = v14;
  }

  v15 = *(v0 + 56);
  v15[2](v15, v12, v11);

  _Block_release(v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1B6387810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1B63878BC;

  return sub_1B638F0B4(a1);
}

uint64_t sub_1B63878BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B6387A1C, 0, 0);
  }
}

uint64_t sub_1B6387A1C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  sub_1B63BEE84();

  v6 = v0[1];

  return v6();
}

id sub_1B6387AF4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 entities];
  sub_1B6281C60(0, &qword_1EDB0EA90, 0x1E695D5B8);
  v8 = sub_1B63BECA4();

  if (v8 >> 62)
  {
LABEL_43:
    v9 = sub_1B63BF044();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_44:

LABEL_45:
    sub_1B634DB54();
    swift_allocError();
    *v32 = 2;
    return swift_willThrow();
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_44;
  }

LABEL_3:
  v10 = 0;
  v11 = 0;
  v38 = v8;
  v39 = v8 & 0xC000000000000001;
  v35 = v8 & 0xFFFFFFFFFFFFFF8;
  v37 = v9;
LABEL_5:
  v34 = v10;
  v12 = v11;
  do
  {
    if (v39)
    {
      v13 = MEMORY[0x1B8C92830](v12, v8);
    }

    else
    {
      if (v12 >= *(v35 + 16))
      {
        goto LABEL_42;
      }

      v13 = *(v8 + 8 * v12 + 32);
    }

    v14 = v13;
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (!a4)
    {
      goto LABEL_21;
    }

    v15 = [v13 name];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1B63BEBD4();
      v19 = v18;

      if (v17 == a3 && v19 == a4)
      {

LABEL_21:
        v22 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) init];
        [v22 setEntity_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
        v23 = sub_1B63BEEA4();
        if (v4)
        {
        }

        v33 = v22;
        v24 = sub_1B63A2FAC(v23);

        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = MEMORY[0x1E69E7CC0];
        }

        if (v25 >> 62)
        {
          v26 = sub_1B63BF044();
          if (v26)
          {
LABEL_27:
            if (v26 < 1)
            {
              __break(1u);
            }

            for (i = 0; i != v26; ++i)
            {
              if ((v25 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x1B8C92830](i, v25);
              }

              else
              {
                v28 = *(v25 + 8 * i + 32);
              }

              v29 = v28;
              [a2 deleteObject_];
            }
          }
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
            goto LABEL_27;
          }
        }

        v10 = 1;
        v9 = v37;
        v8 = v38;
        if (v11 != v37)
        {
          goto LABEL_5;
        }

        goto LABEL_36;
      }

      v21 = sub_1B63BF364();

      v9 = v37;
      v8 = v38;
      if (v21)
      {
        goto LABEL_21;
      }
    }

    ++v12;
  }

  while (v11 != v9);

  if ((v34 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_36:
  v40[0] = 0;
  if ([a2 save_])
  {
    return v40[0];
  }

  v31 = v40[0];
  sub_1B63BE824();

  return swift_willThrow();
}

uint64_t sub_1B6388064(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = sub_1B63BE8E4();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v4[6] = _Block_copy(a3);
  sub_1B63BE8B4();
  if (a2)
  {
    v10 = sub_1B63BEBD4();
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v4[7] = v10;
  v4[8] = v11;
  v12 = a4;
  v13 = swift_task_alloc();
  v4[9] = v13;
  *v13 = v4;
  v13[1] = sub_1B63881C8;

  return sub_1B638F0B4(v9);
}

uint64_t sub_1B63881C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 80) = v2;

  if (v2)
  {
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    v9 = *(v6 + 24);

    (*(v8 + 8))(v7, v9);
    v10 = *(v6 + 48);
    v11 = sub_1B63BE814();

    (*(v10 + 16))(v10, v11);
    _Block_release(*(v6 + 48));

    v12 = *(v6 + 8);

    return v12();
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B6388394, 0, 0);
  }
}

uint64_t sub_1B6388394()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 32);
  v14 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  v9[2] = v2;
  v9[3] = v1;
  v9[4] = v5;
  v9[5] = v4;
  sub_1B63BEE84();

  (*(v6 + 8))(v14, v8);
  v10 = *(v0 + 48);
  if (v3)
  {
    v11 = sub_1B63BE814();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v0 + 48), 0);
  }

  _Block_release(*(v0 + 48));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1B63884F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[3] = a3;
  v3[4] = ObjectType;
  v3[2] = a2;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B63885BC;

  return sub_1B638F0B4(a1);
}

uint64_t sub_1B63885BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B638871C, 0, 0);
  }
}

uint64_t sub_1B638871C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = *(v0 + 16);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  sub_1B63BEE84();

  v6 = *(v0 + 8);

  return v6();
}

id sub_1B63887F4(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v83 = a4;
  v84 = a3;
  v98 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433E8, &qword_1B63C63D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v61 - v9;
  v75 = sub_1B63BE8E4();
  v10 = *(v75 - 1);
  v11 = MEMORY[0x1EEE9AC00](v75);
  v73 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v61 - v18;
  v90 = sub_1B63BEA04();
  v19 = *(v90 - 8);
  v20 = MEMORY[0x1EEE9AC00](v90);
  v64 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v61 - v22);
  v24 = [a1 entities];
  sub_1B6281C60(0, &qword_1EDB0EA90, 0x1E695D5B8);
  v25 = sub_1B63BECA4();

  if (v25 >> 62)
  {
    goto LABEL_62;
  }

  v88 = v25 & 0xFFFFFFFFFFFFFF8;
  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_63:

    goto LABEL_64;
  }

LABEL_3:
  v27 = 0;
  v63 = 0;
  v86 = v25 & 0xC000000000000001;
  v89 = (v19 + 48);
  v74 = (v19 + 32);
  v66 = (v19 + 56);
  v71 = (v19 + 8);
  v80 = (v10 + 48);
  v70 = (v10 + 32);
  v10 += 8;
  v82 = v25;
  v81 = v26;
  v69 = v10;
LABEL_4:
  v19 = v27;
  do
  {
    if (v86)
    {
      v28 = MEMORY[0x1B8C92830](v19, v25);
    }

    else
    {
      if (v19 >= *(v88 + 16))
      {
        goto LABEL_59;
      }

      v28 = *(v25 + 8 * v19 + 32);
    }

    v94 = v28;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v88 = v25 & 0xFFFFFFFFFFFFFF8;
      v26 = sub_1B63BF044();
      if (!v26)
      {
        goto LABEL_63;
      }

      goto LABEL_3;
    }

    v92 = v19 + 1;
    v29 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) init];
    [v29 setEntity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
    v30 = sub_1B63BEEA4();
    if (v5)
    {
    }

    v31 = sub_1B63A2FAC(v30);

    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    if (v32 >> 62)
    {
      v25 = sub_1B63BF044();
      v10 = v90;
      if (!v25)
      {
        goto LABEL_15;
      }

LABEL_19:
      v85 = v23;
      v65 = v17;
      v62 = a2;
      v61 = 0;
      v19 = 0;
      v79 = v32 & 0xC000000000000001;
      v68 = v32 & 0xFFFFFFFFFFFFFF8;
      v5 = v87;
      a2 = v75;
      v17 = v76;
      v23 = qword_1B63C4070;
      v78 = v32;
      v77 = v25;
      while (1)
      {
        if (v79)
        {
          v33 = MEMORY[0x1B8C92830](v19, v32);
        }

        else
        {
          if (v19 >= *(v68 + 16))
          {
            goto LABEL_61;
          }

          v33 = *(v32 + 8 * v19 + 32);
        }

        v93 = v33;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_60;
        }

        v91 = v19 + 1;
        sub_1B628C510(v84, v17, &unk_1EB943680, qword_1B63C4070);
        v34 = *v89;
        if ((*v89)(v17, 1, v10) == 1)
        {
          sub_1B6284EAC(v17, &unk_1EB943680, qword_1B63C4070);
        }

        else
        {
          v35 = *v74;
          (*v74)(v85, v17, v10);
          v36 = [v94 attributesByName];
          sub_1B6281C60(0, &qword_1EB943560, 0x1E695D530);
          v37 = sub_1B63BEB74();

          if (*(v37 + 16))
          {
            v67 = v35;
            sub_1B6380EF4(0x696669746E656469, 0xEA00000000007265);
            v39 = v38;

            v23 = qword_1B63C4070;
            if (v39)
            {
              v40 = sub_1B63BEBC4();
              v41 = [v93 valueForKey_];

              if (v41)
              {
                sub_1B63BEF84();
                swift_unknownObjectRelease();
              }

              else
              {
                v95 = 0u;
                v96 = 0u;
              }

              v97[0] = v95;
              v97[1] = v96;
              v5 = v87;
              a2 = v75;
              if (*(&v96 + 1))
              {
                v42 = v65;
                v43 = swift_dynamicCast();
                (*v66)(v42, v43 ^ 1u, 1, v10);
                if (v34(v42, 1, v10) == 1)
                {
                  (*v71)(v85, v10);
                  goto LABEL_40;
                }

                v44 = v64;
                v67();
                v45 = v85;
                if (sub_1B63BE9D4())
                {
                  v56 = v93;
                  [v62 deleteObject_];

                  v57 = *v71;
                  (*v71)(v44, v10);
                  v57(v45, v10);
                  v63 = 1;
                  v25 = v77;
                  v19 = v91;
                  v55 = v91 == v77;
                  a2 = v75;
                  goto LABEL_48;
                }

                v46 = *v71;
                (*v71)(v44, v10);
                v46(v85, v10);
                a2 = v75;
              }

              else
              {
                (*v71)(v85, v10);
                sub_1B6284EAC(v97, &unk_1EB943740, &qword_1B63C5030);
                v42 = v65;
                (*v66)(v65, 1, 1, v10);
LABEL_40:
                sub_1B6284EAC(v42, &unk_1EB943680, qword_1B63C4070);
              }

              v17 = v76;
              goto LABEL_44;
            }
          }

          else
          {

            v23 = qword_1B63C4070;
          }

          (*v71)(v85, v10);
          v5 = v87;
          a2 = v75;
        }

LABEL_44:
        sub_1B628C510(v83, v5, &qword_1EB9433E8, &qword_1B63C63D0);
        if ((*v80)(v5, 1, a2) == 1)
        {

          sub_1B6284EAC(v5, &qword_1EB9433E8, &qword_1B63C63D0);
LABEL_21:
          v32 = v78;
          v25 = v77;
          ++v19;
          if (v91 == v77)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v47 = v72;
          (*v70)(v72, v5, a2);
          v48 = v93;
          v49 = a2;
          v50 = [v93 objectID];
          v51 = [v50 URIRepresentation];

          v52 = v73;
          sub_1B63BE8B4();

          v53 = v47;
          LOBYTE(v50) = sub_1B63BE8A4();
          v54 = *v69;
          (*v69)(v52, v49);
          if ((v50 & 1) == 0)
          {
            v54(v53, v49);

            v5 = v87;
            a2 = v49;
            v17 = v76;
            v10 = v90;
            goto LABEL_21;
          }

          [v62 deleteObject_];

          v54(v53, v49);
          v63 = 1;
          v25 = v77;
          v10 = v90;
          v19 = v91;
          v55 = v91 == v77;
          v5 = v87;
          a2 = v49;
LABEL_48:
          v17 = v76;
          v32 = v78;
          if (v55)
          {
LABEL_52:

            v27 = v92;
            v5 = v61;
            a2 = v62;
            v17 = v65;
            v23 = v85;
            v25 = v82;
            if (v92 != v81)
            {
              goto LABEL_4;
            }

            goto LABEL_53;
          }
        }
      }
    }

    v25 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v90;
    if (v25)
    {
      goto LABEL_19;
    }

LABEL_15:

    ++v19;
    v25 = v82;
  }

  while (v92 != v81);
LABEL_53:

  if (v63)
  {
    *&v97[0] = 0;
    if ([a2 save_])
    {
      return *&v97[0];
    }

    v59 = *&v97[0];
    sub_1B63BE824();

    return swift_willThrow();
  }

LABEL_64:
  sub_1B634DB54();
  swift_allocError();
  *v60 = 2;
  return swift_willThrow();
}

uint64_t sub_1B63895F8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v5[3] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433E8, &qword_1B63C63D0);
  v22 = swift_task_alloc();
  v5[4] = v22;
  v7 = sub_1B63BEA04();
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  v5[5] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v10 = swift_task_alloc();
  v5[6] = v10;
  v11 = sub_1B63BE8E4();
  v5[7] = v11;
  v12 = *(v11 - 8);
  v5[8] = v12;
  v13 = swift_task_alloc();
  v5[9] = v13;
  v14 = swift_task_alloc();
  v5[10] = v14;
  v5[11] = _Block_copy(a4);
  sub_1B63BE8B4();
  if (a2)
  {
    sub_1B63BE9E4();
    (*(v8 + 32))(v10, v9, v7);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = 1;
  (*(v8 + 56))(v10, v15, 1, v7);
  if (a3)
  {
    sub_1B63BE8B4();
    v17 = v22;
    (*(v12 + 32))(v22, v13, v11);
    v16 = 0;
  }

  else
  {
    v17 = v22;
  }

  (*(v12 + 56))(v17, v16, 1, v11);
  v18 = a5;
  v19 = swift_task_alloc();
  v5[12] = v19;
  *v19 = v5;
  v19[1] = sub_1B6389910;

  return sub_1B638F0B4(v14);
}

uint64_t sub_1B6389910(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 104) = v2;

  if (v2)
  {
    v7 = *(v6 + 80);
    v8 = *(v6 + 56);
    v9 = *(v6 + 64);

    (*(v9 + 8))(v7, v8);
    v10 = *(v6 + 88);
    v11 = *(v6 + 48);
    sub_1B6284EAC(*(v6 + 32), &qword_1EB9433E8, &qword_1B63C63D0);
    sub_1B6284EAC(v11, &unk_1EB943680, qword_1B63C4070);
    v12 = sub_1B63BE814();

    (*(v10 + 16))(v10, v12);
    _Block_release(*(v6 + 88));

    v13 = *(v6 + 8);

    return v13();
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B6389B34, 0, 0);
  }
}

uint64_t sub_1B6389B34()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  v10 = *(v0 + 24);
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v7;
  *(v9 + 40) = vextq_s8(v10, v10, 8uLL);
  sub_1B63BEE84();

  (*(v6 + 8))(v4, v5);
  v11 = *(v0 + 88);
  v12 = *(v0 + 48);
  sub_1B6284EAC(*(v0 + 32), &qword_1EB9433E8, &qword_1B63C63D0);
  sub_1B6284EAC(v12, &unk_1EB943680, qword_1B63C4070);
  if (v3)
  {
    v13 = sub_1B63BE814();

    (*(v11 + 16))(v11, v13);
  }

  else
  {
    (*(v11 + 16))(v11, 0);
  }

  _Block_release(*(v0 + 88));

  v14 = *(v0 + 8);

  return v14();
}

void *sub_1B6389CF4(void *a1)
{
  v2 = 0;
  v3 = sub_1B63BE8E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v121 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v118 - v7;
  v9 = sub_1B6382B0C(MEMORY[0x1E69E7CC0]);
  v10 = [a1 objectID];
  v11 = [v10 URIRepresentation];

  sub_1B63BE8B4();
  v12 = sub_1B63BE854();
  v14 = v13;
  v15 = *(v4 + 8);
  v123 = v3;
  v122 = v4 + 8;
  v120 = v15;
  v15(v8, v3);
  *(&v135 + 1) = MEMORY[0x1E69E6158];
  *&v134 = v12;
  *(&v134 + 1) = v14;
  v16 = a1;
  sub_1B628E928(&v134, &v132);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v130 = v9;
  sub_1B638DBB8(&v132, 0x44497463656A626FLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v18 = v130;
  v19 = [a1 entity];
  v20 = [v19 attributesByName];

  sub_1B6281C60(0, &qword_1EB943560, 0x1E695D530);
  v21 = sub_1B63BEB74();

  v23 = v21 + 64;
  v22 = *(v21 + 64);
  v126 = v21;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v124 = 0;
  v125 = a1;
  while (v26)
  {
LABEL_12:
    v31 = __clz(__rbit64(v26)) | (v2 << 6);
    v32 = (v126[6] + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    v35 = *(v126[7] + 8 * v31);

    v127 = v35;
    v36 = sub_1B63BEBC4();
    v37 = [v16 valueForKey_];

    if (v37)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
    }

    else
    {
      v132 = 0u;
      v133 = 0u;
    }

    v26 &= v26 - 1;
    v134 = v132;
    v135 = v133;
    sub_1B638C038(&v134, [v127 attributeType], &v132);
    sub_1B628C510(&v132, &v130, &unk_1EB943740, &qword_1B63C5030);
    if (!v131)
    {
      sub_1B6284EAC(&v130, &unk_1EB943740, &qword_1B63C5030);
      v48 = sub_1B6380EF4(v33, v34);
      v50 = v49;

      if (v50)
      {
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v128 = v18;
        if (!v51)
        {
          sub_1B638E350();
          v18 = v128;
        }

        sub_1B628E928((v18[7] + 32 * v48), v129);
        sub_1B638D858(v48, v18);

        sub_1B6284EAC(&v132, &unk_1EB943740, &qword_1B63C5030);
        sub_1B6284EAC(&v134, &unk_1EB943740, &qword_1B63C5030);
      }

      else
      {

        sub_1B6284EAC(&v132, &unk_1EB943740, &qword_1B63C5030);
        sub_1B6284EAC(&v134, &unk_1EB943740, &qword_1B63C5030);
        memset(v129, 0, sizeof(v129));
      }

      v29 = v129;
      goto LABEL_5;
    }

    sub_1B628E928(&v130, v129);
    v38 = v18;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v38;
    v41 = sub_1B6380EF4(v33, v34);
    v42 = v38[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_72;
    }

    v45 = v40;
    if (v38[3] >= v44)
    {
      if ((v39 & 1) == 0)
      {
        sub_1B638E350();
      }
    }

    else
    {
      sub_1B638CE9C(v44, v39);
      v46 = sub_1B6380EF4(v33, v34);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_78;
      }

      v41 = v46;
    }

    if (v45)
    {

      v18 = v128;
      v28 = (v128[7] + 32 * v41);
      __swift_destroy_boxed_opaque_existential_1(v28);
      sub_1B628E928(v129, v28);

      sub_1B6284EAC(&v132, &unk_1EB943740, &qword_1B63C5030);
      v29 = &v134;
LABEL_5:
      sub_1B6284EAC(v29, &unk_1EB943740, &qword_1B63C5030);
      goto LABEL_6;
    }

    v18 = v128;
    v128[(v41 >> 6) + 8] |= 1 << v41;
    v52 = (v18[6] + 16 * v41);
    *v52 = v33;
    v52[1] = v34;
    sub_1B628E928(v129, (v18[7] + 32 * v41));

    sub_1B6284EAC(&v132, &unk_1EB943740, &qword_1B63C5030);
    sub_1B6284EAC(&v134, &unk_1EB943740, &qword_1B63C5030);
    v53 = v18[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_73;
    }

    v18[2] = v55;
LABEL_6:
    v16 = v125;
  }

  while (1)
  {
    v30 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v30 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v30);
    ++v2;
    if (v26)
    {
      v2 = v30;
      goto LABEL_12;
    }
  }

  v56 = [v16 entity];
  v57 = [v56 relationshipsByName];

  sub_1B6281C60(0, &unk_1EB943568, 0x1E695D6E8);
  v58 = sub_1B63BEB74();

  v59 = 0;
  v61 = v58 + 64;
  v60 = *(v58 + 64);
  v127 = v58;
  v62 = 1 << *(v58 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & v60;
  v65 = (v62 + 63) >> 6;
  while (2)
  {
    v66 = v59;
    v126 = v18;
    if (!v64)
    {
      goto LABEL_36;
    }

LABEL_35:
    v59 = v66;
LABEL_39:
    v67 = __clz(__rbit64(v64));
    v64 &= v64 - 1;
    v68 = v67 | (v59 << 6);
    v69 = (*(v127 + 6) + 16 * v68);
    v70 = *v69;
    v71 = v69[1];
    v72 = *(*(v127 + 7) + 8 * v68);

    v73 = v72;
    v74 = sub_1B63BEBC4();
    v75 = [v16 valueForKey_];

    if (v75)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
      if ([v73 isToMany])
      {
        sub_1B629E3F0(&v134, &v132);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943578, &qword_1B63C63D8);
        if (swift_dynamicCast())
        {
          v76 = v124;
          sub_1B6384270(v130);
          v78 = v77;
          v124 = v76;

          *(&v133 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943580, &qword_1B63C63E0);
          *&v132 = v78;
          sub_1B628E928(&v132, &v130);
          v79 = v126;
          v80 = swift_isUniquelyReferenced_nonNull_native();
          *&v129[0] = v79;
          v81 = sub_1B6380EF4(v70, v71);
          v83 = v79[2];
          v84 = (v82 & 1) == 0;
          v54 = __OFADD__(v83, v84);
          v85 = v83 + v84;
          if (v54)
          {
            goto LABEL_75;
          }

          v86 = v82;
          if (v79[3] >= v85)
          {
            if ((v80 & 1) == 0)
            {
              v113 = v81;
              sub_1B638E350();
              v81 = v113;
              if (v86)
              {
                goto LABEL_59;
              }

LABEL_66:
              v114 = *&v129[0];
              *(*&v129[0] + 8 * (v81 >> 6) + 64) |= 1 << v81;
              v115 = (v114[6] + 16 * v81);
              *v115 = v70;
              v115[1] = v71;
              sub_1B628E928(&v130, (v114[7] + 32 * v81));

              v18 = v114;
              __swift_destroy_boxed_opaque_existential_1(&v134);
              v116 = v114[2];
              v54 = __OFADD__(v116, 1);
              v112 = v116 + 1;
              if (v54)
              {
                goto LABEL_77;
              }

              goto LABEL_67;
            }
          }

          else
          {
            sub_1B638CE9C(v85, v80);
            v81 = sub_1B6380EF4(v70, v71);
            if ((v86 & 1) != (v87 & 1))
            {
              goto LABEL_78;
            }
          }

          if (v86)
          {
LABEL_59:
            v106 = v81;

            v104 = *&v129[0];
            v107 = (*(*&v129[0] + 56) + 32 * v106);
            __swift_destroy_boxed_opaque_existential_1(v107);
            sub_1B628E928(&v130, v107);
            goto LABEL_60;
          }

          goto LABEL_66;
        }
      }

      sub_1B629E3F0(&v134, &v132);
      sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v134);

        v18 = v126;
        continue;
      }

      v119 = v130;
      v88 = [v130 objectID];
      v89 = [v88 URIRepresentation];

      v90 = v121;
      sub_1B63BE8B4();

      v91 = sub_1B63BE854();
      v93 = v92;
      v120(v90, v123);
      *(&v133 + 1) = MEMORY[0x1E69E6158];
      *&v132 = v91;
      *(&v132 + 1) = v93;
      sub_1B628E928(&v132, &v130);
      v94 = v126;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      *&v129[0] = v94;
      v96 = sub_1B6380EF4(v70, v71);
      v98 = v94[2];
      v99 = (v97 & 1) == 0;
      v54 = __OFADD__(v98, v99);
      v100 = v98 + v99;
      if (v54)
      {
        goto LABEL_74;
      }

      v101 = v97;
      if (v94[3] >= v100)
      {
        if ((v95 & 1) == 0)
        {
          v108 = v96;
          sub_1B638E350();
          v96 = v108;
          if (v101)
          {
            goto LABEL_56;
          }

          goto LABEL_62;
        }
      }

      else
      {
        sub_1B638CE9C(v100, v95);
        v96 = sub_1B6380EF4(v70, v71);
        if ((v101 & 1) != (v102 & 1))
        {
          goto LABEL_78;
        }
      }

      if (v101)
      {
LABEL_56:
        v103 = v96;

        v104 = *&v129[0];
        v105 = (*(*&v129[0] + 56) + 32 * v103);
        __swift_destroy_boxed_opaque_existential_1(v105);
        sub_1B628E928(&v130, v105);

LABEL_60:
        v18 = v104;
        __swift_destroy_boxed_opaque_existential_1(&v134);
LABEL_68:
        v16 = v125;
        continue;
      }

LABEL_62:
      v109 = *&v129[0];
      *(*&v129[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
      v110 = (v109[6] + 16 * v96);
      *v110 = v70;
      v110[1] = v71;
      sub_1B628E928(&v130, (v109[7] + 32 * v96));

      v18 = v109;
      __swift_destroy_boxed_opaque_existential_1(&v134);
      v111 = v109[2];
      v54 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v54)
      {
        goto LABEL_76;
      }

LABEL_67:
      v18[2] = v112;
      goto LABEL_68;
    }

    break;
  }

  v66 = v59;
  v18 = v126;
  if (v64)
  {
    goto LABEL_35;
  }

LABEL_36:
  while (1)
  {
    v59 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v59 >= v65)
    {

      return v18;
    }

    v64 = *(v61 + 8 * v59);
    ++v66;
    if (v64)
    {
      goto LABEL_39;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_1B63BF3D4();
  __break(1u);
  return result;
}

id sub_1B638A994(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  v63 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433E8, &qword_1B63C63D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_1B63BE8E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16))
  {
    v14 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
    if (v15)
    {
      sub_1B629E3F0(*(a3 + 56) + 32 * v14, v62);
      if (swift_dynamicCast())
      {
        sub_1B63BE8D4();

        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {
          sub_1B6284EAC(v9, &qword_1EB9433E8, &qword_1B63C63D0);
          goto LABEL_19;
        }

        (*(v11 + 32))(v13, v9, v10);
        v16 = sub_1B63BE8C4();
        if (!v17)
        {
          goto LABEL_12;
        }

        if (v16 == 0x616465726F632D78 && v17 == 0xEA00000000006174)
        {
        }

        else
        {
          v19 = sub_1B63BF364();

          if ((v19 & 1) == 0)
          {
LABEL_12:
            (*(v11 + 8))(v13, v10);
            goto LABEL_19;
          }
        }

        v56 = 0;
        v20 = [a4 persistentStoreCoordinator];
        if (v20)
        {
          v21 = v20;
          v22 = sub_1B63BE884();
          v23 = [v21 managedObjectIDForURIRepresentation_];

          if (v23)
          {
            *&v62[0] = 0;
            v24 = [a4 existingObjectWithID:v23 error:v62];
            v25 = *&v62[0];
            if (v24)
            {
              v26 = v24;
              v57 = a3;
              v27 = *(v11 + 8);
              v28 = *&v62[0];
              v27(v13, v10);
              goto LABEL_21;
            }

            goto LABEL_43;
          }
        }

        (*(v11 + 8))(v13, v10);
        v6 = v56;
      }
    }
  }

LABEL_19:
  while (1)
  {
    v29 = objc_opt_self();
    v30 = sub_1B63BEBC4();
    v23 = [v29 entityForName:v30 inManagedObjectContext:a4];

    if (!v23)
    {
      return 0;
    }

    v56 = v6;
    v57 = a3;
    v26 = [objc_allocWithZone(MEMORY[0x1E695D620]) initWithEntity:v23 insertIntoManagedObjectContext:a4];
LABEL_21:

    v31 = v26;
    v23 = [v31 entity];
    v58 = v31;

    v32 = [v23 attributesByName];
    sub_1B6281C60(0, &qword_1EB943560, 0x1E695D530);
    a3 = sub_1B63BEB74();

    v11 = 0;
    a4 = (a3 + 64);
    v33 = 1 << *(a3 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a3 + 64);
    v25 = ((v33 + 63) >> 6);
    while (v35)
    {
LABEL_29:
      v37 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v38 = v37 | (v11 << 6);
      v39 = *(a3 + 48) + 16 * v38;
      v13 = *v39;
      v10 = *(v39 + 8);
      v23 = *(*(a3 + 56) + 8 * v38);
      if ((*v39 != 0x44497463656A626FLL || v10 != 0xE800000000000000) && (sub_1B63BF364() & 1) == 0 && *(v57 + 16))
      {

        v40 = v23;
        v23 = v57;
        v41 = sub_1B6380EF4(v13, v10);
        if (v42)
        {
          sub_1B629E3F0(v23[7] + 32 * v41, v61);
          sub_1B628E928(v61, v62);
          sub_1B629E3F0(v62, v59);
          v55 = v40;
          sub_1B638BA00(v59, [v40 attributeType], v61);
          sub_1B6284EAC(v59, &unk_1EB943740, &qword_1B63C5030);
          sub_1B628C510(v61, v59, &unk_1EB943740, &qword_1B63C5030);
          v43 = v60;
          if (v60)
          {
            v44 = __swift_project_boxed_opaque_existential_0(v59, v60);
            v54 = &v54;
            v45 = *(v43 - 8);
            MEMORY[0x1EEE9AC00](v44);
            v47 = &v54 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v45 + 16))(v47);
            v48 = sub_1B63BF354();
            v49 = v47;
            v50 = v48;
            (*(v45 + 8))(v49, v43);
            __swift_destroy_boxed_opaque_existential_1(v59);
          }

          else
          {
            v50 = 0;
          }

          v23 = sub_1B63BEBC4();

          [v58 setValue:v50 forKey:v23];
          swift_unknownObjectRelease();

          sub_1B6284EAC(v61, &unk_1EB943740, &qword_1B63C5030);
          __swift_destroy_boxed_opaque_existential_1(v62);
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v36 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v36 >= v25)
      {

        return v58;
      }

      v35 = *(a4 + v36);
      ++v11;
      if (v35)
      {
        v11 = v36;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_43:
    v52 = v25;
    v53 = sub_1B63BE824();

    swift_willThrow();
    (*(v11 + 8))(v13, v10);
    v6 = 0;
  }
}

void sub_1B638B29C(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C0, &qword_1B63C64E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1B6393B24;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6287EB4;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);
  v15 = a3;
  v16 = a2;

  [v16 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v14);
}

uint64_t sub_1B638B484(int a1, id a2, uint64_t a3, void *a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C0, &qword_1B63C64E8);
    sub_1B63BED04();
  }

  a4;
  [a5 viewContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C0, &qword_1B63C64E8);
  return sub_1B63BED14();
}

uint64_t sub_1B638B6B8(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1B63BE8E4();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_1B63BE8B4();
  v8 = a3;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_1B638B7F8;

  return sub_1B638F0B4(v7);
}

uint64_t sub_1B638B7F8(void *a1, void *a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;

  v9 = (v7 + 16);
  v10 = v6[6];
  v11 = v6[2];
  (*(v6[4] + 8))(v6[5], v6[3]);

  if (v2)
  {
    v12 = sub_1B63BE814();

    (*v9)(v10, 0, 0, v12);
    _Block_release(v10);
  }

  else
  {
    (*v9)(v10, a1, a2, 0);
    _Block_release(v10);
  }

  v13 = *(v8 + 8);

  return v13();
}

double sub_1B638BA00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  sub_1B628C510(a1, &v38, &unk_1EB943740, &qword_1B63C5030);
  if (v39)
  {
    sub_1B628E928(&v38, v40);
    if (a2 <= 799)
    {
      if (a2 > 399)
      {
        if (a2 > 599)
        {
          if (a2 != 600)
          {
            if (a2 == 700)
            {
              sub_1B628E928(v40, a3);
              return result;
            }

            goto LABEL_38;
          }
        }

        else if (a2 != 400 && a2 != 500)
        {
          goto LABEL_38;
        }
      }

      else if (a2 > 199)
      {
        if (a2 != 200 && a2 != 300)
        {
          goto LABEL_38;
        }
      }

      else if (a2 != 100)
      {
        goto LABEL_38;
      }

      sub_1B629E3F0(v40, &v38);
      v26 = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v27 = v37;
        *(a3 + 24) = v26;
        *a3 = v27;
        goto LABEL_33;
      }

LABEL_38:
      __swift_destroy_boxed_opaque_existential_1(v40);
      goto LABEL_39;
    }

    if (a2 > 1199)
    {
      goto LABEL_38;
    }

    if (a2 > 999)
    {
      if (a2 == 1000)
      {
        sub_1B629E3F0(v40, &v38);
        if (!swift_dynamicCast())
        {
          goto LABEL_38;
        }

        v30 = sub_1B63BE8F4();
        v32 = v31;

        if (v32 >> 60 == 15)
        {
          goto LABEL_38;
        }

        *(a3 + 24) = MEMORY[0x1E6969080];
        *a3 = v30;
        *(a3 + 8) = v32;
LABEL_33:
        __swift_destroy_boxed_opaque_existential_1(v40);
        return result;
      }

      if (a2 != 1100)
      {
        goto LABEL_38;
      }

      sub_1B629E3F0(v40, &v38);
      if (!swift_dynamicCast())
      {
        goto LABEL_38;
      }

      sub_1B63BE9A4();

      v20 = sub_1B63BEA04();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v8, 1, v20) != 1)
      {
        *(a3 + 24) = v20;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        (*(v21 + 32))(boxed_opaque_existential_0, v8, v20);
        goto LABEL_33;
      }

      __swift_destroy_boxed_opaque_existential_1(v40);
      v22 = &unk_1EB943680;
      v23 = qword_1B63C4070;
      v24 = v8;
    }

    else
    {
      if (a2 == 800)
      {
        sub_1B629E3F0(v40, &v38);
        v28 = MEMORY[0x1E69E6370];
        if (swift_dynamicCast())
        {
          v29 = v37;
          *(a3 + 24) = v28;
          *a3 = v29;
          goto LABEL_33;
        }

        goto LABEL_38;
      }

      if (a2 != 900)
      {
        goto LABEL_38;
      }

      sub_1B629E3F0(v40, &v38);
      if (!swift_dynamicCast())
      {
        goto LABEL_38;
      }

      v15 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v16 = sub_1B63BEBC4();
      [v15 setDateFormat_];

      v17 = sub_1B63BEBC4();

      v18 = [v15 dateFromString_];

      if (v18)
      {
        sub_1B63BE974();

        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      v34 = sub_1B63BE994();
      v35 = *(v34 - 8);
      (*(v35 + 56))(v12, v19, 1, v34);
      sub_1B638FE98(v12, v14);
      if ((*(v35 + 48))(v14, 1, v34) != 1)
      {
        *(a3 + 24) = v34;
        v36 = __swift_allocate_boxed_opaque_existential_0(a3);
        (*(v35 + 32))(v36, v14, v34);

        goto LABEL_33;
      }

      __swift_destroy_boxed_opaque_existential_1(v40);

      v22 = &unk_1EB943210;
      v23 = &unk_1B63C3F50;
      v24 = v14;
    }

    sub_1B6284EAC(v24, v22, v23);
    goto LABEL_39;
  }

  sub_1B6284EAC(&v38, &unk_1EB943740, &qword_1B63C5030);
LABEL_39:
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1B638C038@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_1B63BEA04();
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_1B63BE994();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B628C510(a1, &v42, &unk_1EB943740, &qword_1B63C5030);
  if (!v43)
  {
    v19 = &unk_1EB943740;
    v20 = &qword_1B63C5030;
    v21 = &v42;
    goto LABEL_8;
  }

  sub_1B628E928(&v42, v44);
  if (a2 <= 799)
  {
    if (a2 > 399)
    {
      if (a2 > 599)
      {
        if (a2 != 600 && a2 != 700)
        {
          goto LABEL_33;
        }
      }

      else if (a2 != 400 && a2 != 500)
      {
        goto LABEL_33;
      }
    }

    else if (a2 > 199)
    {
      if (a2 != 200 && a2 != 300)
      {
        goto LABEL_33;
      }
    }

    else if (a2 != 100)
    {
      goto LABEL_33;
    }

LABEL_29:
    sub_1B628E928(v44, a3);
    return result;
  }

  if (a2 > 1199)
  {
    goto LABEL_33;
  }

  if (a2 <= 999)
  {
    if (a2 == 800)
    {
      goto LABEL_29;
    }

    if (a2 == 900)
    {
      sub_1B629E3F0(v44, &v42);
      if (swift_dynamicCast())
      {
        (*(v16 + 56))(v14, 0, 1, v15);
        (*(v16 + 32))(v18, v14, v15);
        v22 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        v23 = sub_1B63BEBC4();
        [v22 setDateFormat_];

        v24 = sub_1B63BE954();
        v25 = [v22 stringFromDate_];

        v26 = sub_1B63BEBD4();
        v28 = v27;

        *(a3 + 24) = MEMORY[0x1E69E6158];
        *a3 = v26;
        *(a3 + 8) = v28;
        (*(v16 + 8))(v18, v15);
LABEL_32:
        __swift_destroy_boxed_opaque_existential_1(v44);
        return result;
      }

      __swift_destroy_boxed_opaque_existential_1(v44);
      (*(v16 + 56))(v14, 1, 1, v15);
      v19 = &unk_1EB943210;
      v20 = &unk_1B63C3F50;
      v21 = v14;
      goto LABEL_8;
    }

LABEL_33:
    __swift_destroy_boxed_opaque_existential_1(v44);
    goto LABEL_34;
  }

  if (a2 == 1000)
  {
    sub_1B629E3F0(v44, &v42);
    if (swift_dynamicCast())
    {
      v33 = v40;
      v34 = v41;
      v35 = sub_1B63BE914();
      v37 = v36;
      *(a3 + 24) = MEMORY[0x1E69E6158];
      sub_1B628BAC0(v33, v34);
      *a3 = v35;
      *(a3 + 8) = v37;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (a2 != 1100)
  {
    goto LABEL_33;
  }

  sub_1B629E3F0(v44, &v42);
  if (swift_dynamicCast())
  {
    v29 = v39;
    (*(v39 + 56))(v8, 0, 1, v9);
    (*(v29 + 32))(v11, v8, v9);
    v30 = sub_1B63BE9B4();
    *(a3 + 24) = MEMORY[0x1E69E6158];
    *a3 = v30;
    *(a3 + 8) = v31;
    (*(v29 + 8))(v11, v9);
    goto LABEL_32;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  (*(v39 + 56))(v8, 1, 1, v9);
  v19 = &unk_1EB943680;
  v20 = qword_1B63C4070;
  v21 = v8;
LABEL_8:
  sub_1B6284EAC(v21, v19, v20);
LABEL_34:
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

id sub_1B638C638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, _OWORD *, uint64_t))
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    v9 = a1;
  }

  a5(v18, v17, a4);

  sub_1B6284EAC(v17, &unk_1EB943740, &qword_1B63C5030);
  v10 = v19;
  if (v19)
  {
    v11 = __swift_project_boxed_opaque_existential_0(v18, v19);
    v12 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](v11);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_1B63BF354();
    (*(v12 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id MapsSyncCommandLineHelpers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncCommandLineHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncCommandLineHelpers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MapsSyncCommandLineHelpers.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncCommandLineHelpers();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1B638C8D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B6380EF4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B638E350();
      v10 = v12;
    }

    sub_1B628E928((*(v10 + 56) + 32 * v8), a3);
    sub_1B638D858(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B638C97C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C8, &unk_1B63C64F0);
  v30 = v4;
  result = sub_1B63BF2E4();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1B63BF434();
      sub_1B63BEC24();

      result = sub_1B63BF494();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B638CC34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435D0, qword_1B63C6218);
  result = sub_1B63BF2E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1B63BEF14();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B638CE9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943590, &unk_1B63C63F0);
  v33 = v4;
  result = sub_1B63BF2E4();
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
        sub_1B628E928(v24, v34);
      }

      else
      {
        sub_1B629E3F0(v24, v34);
      }

      sub_1B63BF434();
      sub_1B63BEC24();
      result = sub_1B63BF494();
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
      result = sub_1B628E928(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1B638D154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435B0, &unk_1B63C64D0);
  v34 = v4;
  result = sub_1B63BF2E4();
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

      sub_1B63BF434();
      sub_1B63BEC24();
      result = sub_1B63BF494();
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

uint64_t sub_1B638D3FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943598, &qword_1B63C64C0);
  v34 = v4;
  result = sub_1B63BF2E4();
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

      sub_1B63BF434();
      sub_1B63BEC24();
      result = sub_1B63BF494();
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

uint64_t sub_1B638D69C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B63BEFC4() + 1) & ~v5;
    do
    {
      sub_1B63BF434();
      sub_1B63BEC24();

      result = sub_1B63BF494();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B638D858(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B63BEFC4() + 1) & ~v5;
    do
    {
      sub_1B63BF434();

      sub_1B63BEC24();
      v10 = sub_1B63BF494();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}