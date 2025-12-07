uint64_t sub_1B635A7E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6359950(v2, v3);
}

id CollectionPlaceItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id CollectionPlaceItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for CollectionPlaceItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CollectionPlaceItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for CollectionPlaceItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B635AAB0(uint64_t a1, uint64_t a2)
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

            type metadata accessor for CollectionPlaceItem(0);
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

id CollectionPlaceItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionPlaceItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of CollectionPlaceItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

id CollectionRequest.__allocating_init()()
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

id CollectionRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id CollectionRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for Collection(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CollectionRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for Collection(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B635B1B8(uint64_t a1, uint64_t a2)
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

            type metadata accessor for Collection(0);
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

uint64_t sub_1B635B414(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B635B484, 0, 0);
}

uint64_t sub_1B635B484()
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
  v7[1] = sub_1B635B594;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B635B594(uint64_t a1)
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

    v4 = sub_1B635B6B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B635B6B8()
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

      type metadata accessor for Collection(0);
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

uint64_t sub_1B635B9F4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B635BAB4;

  return sub_1B635B414(a1, v8);
}

uint64_t sub_1B635BAB4(uint64_t a1)
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
    type metadata accessor for Collection(0);
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

id CollectionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of CollectionRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of CollectionRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B635BFC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B635B9F4(v2, v3, v4);
}

id CollectionTransitItemRequest.__allocating_init()()
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

id CollectionTransitItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id CollectionTransitItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for CollectionTransitItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CollectionTransitItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for CollectionTransitItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B635C314(uint64_t a1, uint64_t a2)
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

            type metadata accessor for CollectionTransitItem(0);
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

uint64_t sub_1B635C570(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B635C5E0, 0, 0);
}

uint64_t sub_1B635C5E0()
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
  v7[1] = sub_1B635C6F0;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B635C6F0(uint64_t a1)
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

    v4 = sub_1B635C814;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B635C814()
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

      type metadata accessor for CollectionTransitItem(0);
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

uint64_t sub_1B635CB50(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B635CC10;

  return sub_1B635C570(a1, v8);
}

uint64_t sub_1B635CC10(uint64_t a1)
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
    type metadata accessor for CollectionTransitItem(0);
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

id CollectionTransitItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionTransitItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of CollectionTransitItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of CollectionTransitItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B635D120()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B635CB50(v2, v3, v4);
}

id CommunityIDRequest.__allocating_init()()
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

id CommunityIDRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id CommunityIDRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for CommunityID(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CommunityIDRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for CommunityID(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B635D558(uint64_t a1, uint64_t a2)
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

            type metadata accessor for CommunityID(0);
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

uint64_t sub_1B635D7B4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B635D824, 0, 0);
}

uint64_t sub_1B635D824()
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
  v5[1] = sub_1B635D928;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B635D928(uint64_t a1)
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

    v4 = sub_1B635DA4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B635DA4C()
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

      type metadata accessor for CommunityID(0);
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

uint64_t sub_1B635DD74(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B635DE1C;

  return sub_1B635D7B4(v4, v5);
}

uint64_t sub_1B635DE1C(uint64_t a1)
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
    type metadata accessor for CommunityID(0);
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

uint64_t sub_1B635DFA8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B635E018, 0, 0);
}

uint64_t sub_1B635E018()
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
  v7[1] = sub_1B635E128;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B635E128(uint64_t a1)
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

    v4 = sub_1B635E24C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B635E24C()
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

      type metadata accessor for CommunityID(0);
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

uint64_t sub_1B635E588(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B635E648;

  return sub_1B635DFA8(a1, v8);
}

uint64_t sub_1B635E648(uint64_t a1)
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
    type metadata accessor for CommunityID(0);
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

id CommunityIDRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunityIDRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of CommunityIDRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of CommunityIDRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B635EB58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B635E588(v2, v3, v4);
}

uint64_t sub_1B635EC0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B635DD74(v2, v3);
}

id CuratedCollectionRequest.__allocating_init()()
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

id CuratedCollectionRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id CuratedCollectionRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for CuratedCollection(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CuratedCollectionRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for CuratedCollection(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B635EF54(uint64_t a1, uint64_t a2)
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

            type metadata accessor for CuratedCollection(0);
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

uint64_t sub_1B635F1B0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B635F220, 0, 0);
}

uint64_t sub_1B635F220()
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
  v7[1] = sub_1B635F330;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B635F330(uint64_t a1)
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

    v4 = sub_1B635F454;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B635F454()
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

      type metadata accessor for CuratedCollection(0);
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

uint64_t sub_1B635F790(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B635F850;

  return sub_1B635F1B0(a1, v8);
}

uint64_t sub_1B635F850(uint64_t a1)
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
    type metadata accessor for CuratedCollection(0);
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

id CuratedCollectionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CuratedCollectionRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of CuratedCollectionRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of CuratedCollectionRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B635FD60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B635F790(v2, v3, v4);
}

id FavoriteItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id FavoriteItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for FavoriteItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id FavoriteItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for FavoriteItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6360110(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6360180, 0, 0);
}

uint64_t sub_1B6360180()
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
  v5[1] = sub_1B6360284;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6360284(uint64_t a1)
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

    v4 = sub_1B63603A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63603A8()
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

      type metadata accessor for FavoriteItem(0);
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

uint64_t sub_1B63606D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6360778;

  return sub_1B6360110(v4, v5);
}

uint64_t sub_1B6360778(uint64_t a1)
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
    type metadata accessor for FavoriteItem(0);
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

id FavoriteItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoriteItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of FavoriteItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t sub_1B6360ACC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B63606D0(v2, v3);
}

id HistoryCuratedCollectionRequest.__allocating_init()()
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

id HistoryCuratedCollectionRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id HistoryCuratedCollectionRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for HistoryCuratedCollection(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id HistoryCuratedCollectionRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for HistoryCuratedCollection(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6360EFC(uint64_t a1, uint64_t a2)
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

            type metadata accessor for HistoryCuratedCollection(0);
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

uint64_t sub_1B6361158(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63611C8, 0, 0);
}

uint64_t sub_1B63611C8()
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
  v5[1] = sub_1B63612CC;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B63612CC(uint64_t a1)
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

    v4 = sub_1B63613F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63613F0()
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

      type metadata accessor for HistoryCuratedCollection(0);
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

uint64_t sub_1B6361718(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B63617C0;

  return sub_1B6361158(v4, v5);
}

uint64_t sub_1B63617C0(uint64_t a1)
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
    type metadata accessor for HistoryCuratedCollection(0);
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

uint64_t sub_1B636194C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63619BC, 0, 0);
}

uint64_t sub_1B63619BC()
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
  v7[1] = sub_1B6361ACC;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6361ACC(uint64_t a1)
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

    v4 = sub_1B6361BF0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6361BF0()
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

      type metadata accessor for HistoryCuratedCollection(0);
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

uint64_t sub_1B6361F2C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6361FEC;

  return sub_1B636194C(a1, v8);
}

uint64_t sub_1B6361FEC(uint64_t a1)
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
    type metadata accessor for HistoryCuratedCollection(0);
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

id HistoryCuratedCollectionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryCuratedCollectionRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HistoryCuratedCollectionRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of HistoryCuratedCollectionRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B63624FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6361F2C(v2, v3, v4);
}

uint64_t sub_1B63625B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6361718(v2, v3);
}

id HistoryDirectionsItemRequest.__allocating_init()()
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

id HistoryDirectionsItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id HistoryDirectionsItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for HistoryDirectionsItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id HistoryDirectionsItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for HistoryDirectionsItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B63628F8(uint64_t a1, uint64_t a2)
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

            type metadata accessor for HistoryDirectionsItem(0);
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

uint64_t sub_1B6362B54(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6362BC4, 0, 0);
}

uint64_t sub_1B6362BC4()
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
  v5[1] = sub_1B6362CC8;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6362CC8(uint64_t a1)
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

    v4 = sub_1B6362DEC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6362DEC()
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

      type metadata accessor for HistoryDirectionsItem(0);
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

uint64_t sub_1B6363114(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B63631BC;

  return sub_1B6362B54(v4, v5);
}

uint64_t sub_1B63631BC(uint64_t a1)
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
    type metadata accessor for HistoryDirectionsItem(0);
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

id HistoryDirectionsItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryDirectionsItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HistoryDirectionsItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of HistoryDirectionsItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B63636AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6363114(v2, v3);
}

id HistoryEvDirectionsItemRequest.__allocating_init()()
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

id HistoryEvDirectionsItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id HistoryEvDirectionsItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for HistoryEvDirectionsItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id HistoryEvDirectionsItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for HistoryEvDirectionsItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6363ADC(uint64_t a1, uint64_t a2)
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

            type metadata accessor for HistoryEvDirectionsItem(0);
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

uint64_t sub_1B6363D38(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6363DA8, 0, 0);
}

uint64_t sub_1B6363DA8()
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
  v5[1] = sub_1B6363EAC;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6363EAC(uint64_t a1)
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

    v4 = sub_1B6363FD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6363FD0()
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

      type metadata accessor for HistoryEvDirectionsItem(0);
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

uint64_t sub_1B63642F8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B63643A0;

  return sub_1B6363D38(v4, v5);
}

uint64_t sub_1B63643A0(uint64_t a1)
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
    type metadata accessor for HistoryEvDirectionsItem(0);
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

uint64_t sub_1B636452C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B636459C, 0, 0);
}

uint64_t sub_1B636459C()
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
  v7[1] = sub_1B63646AC;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B63646AC(uint64_t a1)
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

    v4 = sub_1B63647D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63647D0()
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

      type metadata accessor for HistoryEvDirectionsItem(0);
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

uint64_t sub_1B6364B0C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6364BCC;

  return sub_1B636452C(a1, v8);
}

uint64_t sub_1B6364BCC(uint64_t a1)
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
    type metadata accessor for HistoryEvDirectionsItem(0);
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

id HistoryEvDirectionsItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryEvDirectionsItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HistoryEvDirectionsItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of HistoryEvDirectionsItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B63650DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6364B0C(v2, v3, v4);
}

uint64_t sub_1B6365190()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B63642F8(v2, v3);
}

id HistoryItemRequest.__allocating_init()()
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

id HistoryItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id HistoryItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for HistoryItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id HistoryItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for HistoryItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B63654D8(uint64_t a1, uint64_t a2)
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

            type metadata accessor for HistoryItem(0);
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

uint64_t sub_1B6365734(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63657A4, 0, 0);
}

uint64_t sub_1B63657A4()
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
  v7[1] = sub_1B63658B4;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B63658B4(uint64_t a1)
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

    v4 = sub_1B63659D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63659D8()
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

      type metadata accessor for HistoryItem(0);
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

uint64_t sub_1B6365D14(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6365DD4;

  return sub_1B6365734(a1, v8);
}

uint64_t sub_1B6365DD4(uint64_t a1)
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
    type metadata accessor for HistoryItem(0);
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

id HistoryItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HistoryItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of HistoryItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B63662E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6365D14(v2, v3, v4);
}

id HistoryMarkedLocationRequest.__allocating_init()()
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

id HistoryMarkedLocationRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id HistoryMarkedLocationRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for HistoryMarkedLocation(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id HistoryMarkedLocationRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for HistoryMarkedLocation(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6366634(uint64_t a1, uint64_t a2)
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

            type metadata accessor for HistoryMarkedLocation(0);
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

uint64_t sub_1B6366890(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6366900, 0, 0);
}

uint64_t sub_1B6366900()
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
  v5[1] = sub_1B6366A04;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6366A04(uint64_t a1)
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

    v4 = sub_1B6366B28;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6366B28()
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

      type metadata accessor for HistoryMarkedLocation(0);
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

uint64_t sub_1B6366E50(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6366EF8;

  return sub_1B6366890(v4, v5);
}

uint64_t sub_1B6366EF8(uint64_t a1)
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
    type metadata accessor for HistoryMarkedLocation(0);
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

id HistoryMarkedLocationRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryMarkedLocationRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HistoryMarkedLocationRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of HistoryMarkedLocationRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B63673E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6366E50(v2, v3);
}

id HistoryMultiPointRouteRequest.__allocating_init()()
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

id HistoryMultiPointRouteRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id HistoryMultiPointRouteRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for HistoryMultiPointRoute(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id HistoryMultiPointRouteRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for HistoryMultiPointRoute(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6367818(uint64_t a1, uint64_t a2)
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

            type metadata accessor for HistoryMultiPointRoute(0);
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

uint64_t sub_1B6367A74(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6367AE4, 0, 0);
}

uint64_t sub_1B6367AE4()
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
  v5[1] = sub_1B6367BE8;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6367BE8(uint64_t a1)
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

    v4 = sub_1B6367D0C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6367D0C()
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

      type metadata accessor for HistoryMultiPointRoute(0);
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

uint64_t sub_1B6368034(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B63680DC;

  return sub_1B6367A74(v4, v5);
}

uint64_t sub_1B63680DC(uint64_t a1)
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
    type metadata accessor for HistoryMultiPointRoute(0);
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

uint64_t sub_1B6368268(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63682D8, 0, 0);
}

uint64_t sub_1B63682D8()
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
  v7[1] = sub_1B63683E8;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B63683E8(uint64_t a1)
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

    v4 = sub_1B636850C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B636850C()
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

      type metadata accessor for HistoryMultiPointRoute(0);
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

uint64_t sub_1B6368848(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6368908;

  return sub_1B6368268(a1, v8);
}

uint64_t sub_1B6368908(uint64_t a1)
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
    type metadata accessor for HistoryMultiPointRoute(0);
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

id HistoryMultiPointRouteRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryMultiPointRouteRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HistoryMultiPointRouteRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of HistoryMultiPointRouteRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B6368E18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6368848(v2, v3, v4);
}

uint64_t sub_1B6368ECC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6368034(v2, v3);
}

id HistoryPlaceItemRequest.__allocating_init()()
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

id HistoryPlaceItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id HistoryPlaceItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for HistoryPlaceItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id HistoryPlaceItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for HistoryPlaceItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6369214(uint64_t a1, uint64_t a2)
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

            type metadata accessor for HistoryPlaceItem(0);
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

uint64_t sub_1B6369470(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63694E0, 0, 0);
}

uint64_t sub_1B63694E0()
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
  v5[1] = sub_1B63695E4;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B63695E4(uint64_t a1)
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

    v4 = sub_1B6369708;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6369708()
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

      type metadata accessor for HistoryPlaceItem(0);
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

uint64_t sub_1B6369A30(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6369AD8;

  return sub_1B6369470(v4, v5);
}

uint64_t sub_1B6369AD8(uint64_t a1)
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
    type metadata accessor for HistoryPlaceItem(0);
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

id HistoryPlaceItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryPlaceItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HistoryPlaceItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of HistoryPlaceItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B6369FC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6369A30(v2, v3);
}

id HistoryRideShareItemRequest.__allocating_init()()
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

id HistoryRideShareItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id HistoryRideShareItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for HistoryRideShareItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id HistoryRideShareItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for HistoryRideShareItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B636A3F8(uint64_t a1, uint64_t a2)
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

            type metadata accessor for HistoryRideShareItem(0);
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

uint64_t sub_1B636A654(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B636A6C4, 0, 0);
}

uint64_t sub_1B636A6C4()
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
  v5[1] = sub_1B636A7C8;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B636A7C8(uint64_t a1)
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

    v4 = sub_1B636A8EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B636A8EC()
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

      type metadata accessor for HistoryRideShareItem(0);
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

uint64_t sub_1B636AC14(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B636ACBC;

  return sub_1B636A654(v4, v5);
}

uint64_t sub_1B636ACBC(uint64_t a1)
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
    type metadata accessor for HistoryRideShareItem(0);
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

uint64_t sub_1B636AE48(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B636AEB8, 0, 0);
}

uint64_t sub_1B636AEB8()
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
  v7[1] = sub_1B636AFC8;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B636AFC8(uint64_t a1)
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

    v4 = sub_1B636B0EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B636B0EC()
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

      type metadata accessor for HistoryRideShareItem(0);
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

uint64_t sub_1B636B428(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B636B4E8;

  return sub_1B636AE48(a1, v8);
}

uint64_t sub_1B636B4E8(uint64_t a1)
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
    type metadata accessor for HistoryRideShareItem(0);
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

id HistoryRideShareItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryRideShareItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HistoryRideShareItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of HistoryRideShareItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B636B9F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B636B428(v2, v3, v4);
}

uint64_t sub_1B636BAAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B636AC14(v2, v3);
}

id HistorySearchItemRequest.__allocating_init()()
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

id HistorySearchItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id HistorySearchItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for HistorySearchItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id HistorySearchItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for HistorySearchItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B636BEDC(uint64_t a1, uint64_t a2)
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

            type metadata accessor for HistorySearchItem(0);
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

uint64_t sub_1B636C138(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B636C1A8, 0, 0);
}

uint64_t sub_1B636C1A8()
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
  v5[1] = sub_1B636C2AC;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B636C2AC(uint64_t a1)
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

    v4 = sub_1B636C3D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B636C3D0()
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

      type metadata accessor for HistorySearchItem(0);
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

uint64_t sub_1B636C6F8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B636C7A0;

  return sub_1B636C138(v4, v5);
}

uint64_t sub_1B636C7A0(uint64_t a1)
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
    type metadata accessor for HistorySearchItem(0);
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

uint64_t sub_1B636C92C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B636C99C, 0, 0);
}

uint64_t sub_1B636C99C()
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
  v7[1] = sub_1B636CAAC;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B636CAAC(uint64_t a1)
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

    v4 = sub_1B636CBD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B636CBD0()
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

      type metadata accessor for HistorySearchItem(0);
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

uint64_t sub_1B636CF0C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B636CFCC;

  return sub_1B636C92C(a1, v8);
}

uint64_t sub_1B636CFCC(uint64_t a1)
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
    type metadata accessor for HistorySearchItem(0);
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

id HistorySearchItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistorySearchItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HistorySearchItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of HistorySearchItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B636D4DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B636CF0C(v2, v3, v4);
}

uint64_t sub_1B636D590()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B636C6F8(v2, v3);
}

id HistoryTransitItemRequest.__allocating_init()()
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

id HistoryTransitItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id HistoryTransitItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for HistoryTransitItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id HistoryTransitItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for HistoryTransitItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B636D9C0(uint64_t a1, uint64_t a2)
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

            type metadata accessor for HistoryTransitItem(0);
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

uint64_t sub_1B636DC1C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B636DC8C, 0, 0);
}

uint64_t sub_1B636DC8C()
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
  v5[1] = sub_1B636DD90;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B636DD90(uint64_t a1)
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

    v4 = sub_1B636DEB4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B636DEB4()
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

      type metadata accessor for HistoryTransitItem(0);
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

uint64_t sub_1B636E1DC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B636E284;

  return sub_1B636DC1C(v4, v5);
}

uint64_t sub_1B636E284(uint64_t a1)
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
    type metadata accessor for HistoryTransitItem(0);
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

uint64_t sub_1B636E410(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B636E480, 0, 0);
}

uint64_t sub_1B636E480()
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
  v7[1] = sub_1B636E590;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B636E590(uint64_t a1)
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

    v4 = sub_1B636E6B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B636E6B4()
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

      type metadata accessor for HistoryTransitItem(0);
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

uint64_t sub_1B636E9F0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B636EAB0;

  return sub_1B636E410(a1, v8);
}

uint64_t sub_1B636EAB0(uint64_t a1)
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
    type metadata accessor for HistoryTransitItem(0);
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

id HistoryTransitItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryTransitItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HistoryTransitItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of HistoryTransitItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B636EFC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B636E9F0(v2, v3, v4);
}

uint64_t sub_1B636F074()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B636E1DC(v2, v3);
}

id IncidentReportRequest.__allocating_init()()
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

id IncidentReportRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id IncidentReportRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for IncidentReport(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id IncidentReportRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for IncidentReport(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B636F4A4(uint64_t a1, uint64_t a2)
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

            type metadata accessor for IncidentReport(0);
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

uint64_t sub_1B636F700(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B636F770, 0, 0);
}

uint64_t sub_1B636F770()
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
  v5[1] = sub_1B636F874;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B636F874(uint64_t a1)
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

    v4 = sub_1B636F998;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B636F998()
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

      type metadata accessor for IncidentReport(0);
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

uint64_t sub_1B636FCC0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B636FD68;

  return sub_1B636F700(v4, v5);
}

uint64_t sub_1B636FD68(uint64_t a1)
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
    type metadata accessor for IncidentReport(0);
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

uint64_t sub_1B636FEF4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B636FF64, 0, 0);
}

uint64_t sub_1B636FF64()
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
  v7[1] = sub_1B6370074;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6370074(uint64_t a1)
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

    v4 = sub_1B6370198;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6370198()
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

      type metadata accessor for IncidentReport(0);
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

uint64_t sub_1B63704D4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6370594;

  return sub_1B636FEF4(a1, v8);
}

uint64_t sub_1B6370594(uint64_t a1)
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
    type metadata accessor for IncidentReport(0);
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

id IncidentReportRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IncidentReportRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of IncidentReportRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of IncidentReportRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B6370AA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B63704D4(v2, v3, v4);
}

uint64_t sub_1B6370B58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B636FCC0(v2, v3);
}

id RAPRecordRequest.__allocating_init()()
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

id RAPRecordRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id RAPRecordRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for RAPRecord(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id RAPRecordRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for RAPRecord(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6370F88(uint64_t a1, uint64_t a2)
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

            type metadata accessor for RAPRecord(0);
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

uint64_t sub_1B63711E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6371254, 0, 0);
}

uint64_t sub_1B6371254()
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
  v5[1] = sub_1B6371358;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6371358(uint64_t a1)
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

    v4 = sub_1B637147C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B637147C()
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

      type metadata accessor for RAPRecord(0);
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

uint64_t sub_1B63717A4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B637184C;

  return sub_1B63711E4(v4, v5);
}

uint64_t sub_1B637184C(uint64_t a1)
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
    type metadata accessor for RAPRecord(0);
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

uint64_t sub_1B63719D8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6371A48, 0, 0);
}

uint64_t sub_1B6371A48()
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
  v7[1] = sub_1B6371B58;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6371B58(uint64_t a1)
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

    v4 = sub_1B6371C7C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6371C7C()
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

      type metadata accessor for RAPRecord(0);
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

uint64_t sub_1B6371FB8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6372078;

  return sub_1B63719D8(a1, v8);
}

uint64_t sub_1B6372078(uint64_t a1)
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
    type metadata accessor for RAPRecord(0);
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

id RAPRecordRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RAPRecordRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of RAPRecordRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of RAPRecordRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B6372588()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6371FB8(v2, v3, v4);
}

uint64_t sub_1B637263C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B63717A4(v2, v3);
}

id ReviewedPlaceRequest.__allocating_init()()
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

id ReviewedPlaceRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id ReviewedPlaceRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for ReviewedPlace(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ReviewedPlaceRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for ReviewedPlace(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6372A6C(uint64_t a1, uint64_t a2)
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

            type metadata accessor for ReviewedPlace(0);
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

uint64_t sub_1B6372CC8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6372D38, 0, 0);
}

uint64_t sub_1B6372D38()
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
  v5[1] = sub_1B6372E3C;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6372E3C(uint64_t a1)
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

    v4 = sub_1B6372F60;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6372F60()
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

      type metadata accessor for ReviewedPlace(0);
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

uint64_t sub_1B6373288(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6373330;

  return sub_1B6372CC8(v4, v5);
}

uint64_t sub_1B6373330(uint64_t a1)
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
    type metadata accessor for ReviewedPlace(0);
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

uint64_t sub_1B63734BC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637352C, 0, 0);
}

uint64_t sub_1B637352C()
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
  v7[1] = sub_1B637363C;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B637363C(uint64_t a1)
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

    v4 = sub_1B6373760;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6373760()
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

      type metadata accessor for ReviewedPlace(0);
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

uint64_t sub_1B6373A9C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6373B5C;

  return sub_1B63734BC(a1, v8);
}

uint64_t sub_1B6373B5C(uint64_t a1)
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
    type metadata accessor for ReviewedPlace(0);
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

id ReviewedPlaceRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewedPlaceRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of ReviewedPlaceRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of ReviewedPlaceRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B637406C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6373A9C(v2, v3, v4);
}

uint64_t sub_1B6374120()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6373288(v2, v3);
}

id ServerEvaluationStatusRequest.__allocating_init()()
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

id ServerEvaluationStatusRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id ServerEvaluationStatusRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for ServerEvaluationStatus(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ServerEvaluationStatusRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for ServerEvaluationStatus(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6374550(uint64_t a1, uint64_t a2)
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

            type metadata accessor for ServerEvaluationStatus(0);
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

uint64_t sub_1B63747AC(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637481C, 0, 0);
}

uint64_t sub_1B637481C()
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
  v5[1] = sub_1B6374920;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6374920(uint64_t a1)
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

    v4 = sub_1B6374A44;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6374A44()
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

      type metadata accessor for ServerEvaluationStatus(0);
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

uint64_t sub_1B6374D6C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6374E14;

  return sub_1B63747AC(v4, v5);
}

uint64_t sub_1B6374E14(uint64_t a1)
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
    type metadata accessor for ServerEvaluationStatus(0);
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

uint64_t sub_1B6374FA0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6375010, 0, 0);
}

uint64_t sub_1B6375010()
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
  v7[1] = sub_1B6375120;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6375120(uint64_t a1)
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

    v4 = sub_1B6375244;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6375244()
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

      type metadata accessor for ServerEvaluationStatus(0);
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

uint64_t sub_1B6375580(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6375640;

  return sub_1B6374FA0(a1, v8);
}

uint64_t sub_1B6375640(uint64_t a1)
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
    type metadata accessor for ServerEvaluationStatus(0);
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

id ServerEvaluationStatusRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerEvaluationStatusRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of ServerEvaluationStatusRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of ServerEvaluationStatusRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B6375B50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6375580(v2, v3, v4);
}

uint64_t sub_1B6375C04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6374D6C(v2, v3);
}

id SharedTripBlockedItemRequest.__allocating_init()()
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

id SharedTripBlockedItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id SharedTripBlockedItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for SharedTripBlockedItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id SharedTripBlockedItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for SharedTripBlockedItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6376034(uint64_t a1, uint64_t a2)
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

            type metadata accessor for SharedTripBlockedItem(0);
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

uint64_t sub_1B6376290(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6376300, 0, 0);
}

uint64_t sub_1B6376300()
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
  v5[1] = sub_1B6376404;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6376404(uint64_t a1)
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

    v4 = sub_1B6376528;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6376528()
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

      type metadata accessor for SharedTripBlockedItem(0);
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

uint64_t sub_1B6376850(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B63768F8;

  return sub_1B6376290(v4, v5);
}

uint64_t sub_1B63768F8(uint64_t a1)
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
    type metadata accessor for SharedTripBlockedItem(0);
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

uint64_t sub_1B6376A84(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6376AF4, 0, 0);
}

uint64_t sub_1B6376AF4()
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
  v7[1] = sub_1B6376C04;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6376C04(uint64_t a1)
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

    v4 = sub_1B6376D28;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6376D28()
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

      type metadata accessor for SharedTripBlockedItem(0);
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

uint64_t sub_1B6377064(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6377124;

  return sub_1B6376A84(a1, v8);
}

uint64_t sub_1B6377124(uint64_t a1)
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
    type metadata accessor for SharedTripBlockedItem(0);
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

id SharedTripBlockedItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedTripBlockedItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of SharedTripBlockedItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of SharedTripBlockedItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}