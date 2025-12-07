uint64_t sub_100022FD4(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100175250, &qword_100120DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActiveClockSelector.function.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ActiveMixerUnit.function.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

uint64_t ActiveStreamingAltInterface.cluster.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

unint64_t sub_100023230()
{
  result = qword_100175258;
  if (!qword_100175258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175258);
  }

  return result;
}

uint64_t sub_100023284()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000232EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 64);
  v5 = *(v2 + 96);
  v12[3] = *(v2 + 80);
  v12[4] = v5;
  v13 = *(v2 + 112);
  v6 = *(v2 + 48);
  v12[0] = *(v2 + 32);
  v12[1] = v6;
  v12[2] = v4;
  a2[3] = &type metadata for MixerUnit;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = *(v2 + 80);
  *(v7 + 48) = *(v2 + 64);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v2 + 96);
  *(v7 + 96) = *(v2 + 112);
  v9 = *(v2 + 48);
  *(v7 + 16) = *(v2 + 32);
  *(v7 + 32) = v9;
  return sub_10002317C(v12, v11);
}

unint64_t sub_100023394()
{
  result = qword_100175260;
  if (!qword_100175260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175260);
  }

  return result;
}

uint64_t ActiveExtensionUnit.latencyControlSelector.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v2) = (*(v2 + 40))(ObjectType, v2);
    swift_unknownObjectRelease();
    if (v2 == 32)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ActiveMixerUnit.pathName.getter()
{
  v1 = v0;
  result = sub_100023738();
  if (!v3)
  {
    v4 = *(v0 + 88);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 32);
      swift_beginAccess();
      v7 = _swiftEmptyArrayStorage;
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          break;
        }

        v10 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_100052184(v8, ObjectType, v10, &v21);
        swift_unknownObjectRelease();
        if (!*(&v22 + 1))
        {
          goto LABEL_5;
        }

        sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100174F68, &unk_100120B90);
        if (swift_dynamicCast())
        {
          if (*(&v25 + 1))
          {
            sub_10001EFE4(&v24, v27);
            v12 = v28;
            v13 = v29;
            sub_10001EAB8(v27, v28);
            v14 = (*(v13 + 72))(v12, v13);
            v16 = v15;
            sub_10000CE78(v27);
            if (v16)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_100024068(0, *(v7 + 2) + 1, 1, v7);
              }

              v18 = *(v7 + 2);
              v17 = *(v7 + 3);
              if (v18 >= v17 >> 1)
              {
                v7 = sub_100024068((v17 > 1), v18 + 1, 1, v7);
              }

              *(v7 + 2) = v18 + 1;
              v19 = &v7[16 * v18];
              *(v19 + 4) = v14;
              *(v19 + 5) = v16;
            }

            goto LABEL_7;
          }
        }

        else
        {
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
        }

LABEL_6:
        sub_10000D040(&v24, &qword_100174F70, &qword_100120FD0);
LABEL_7:
        if (!--v5)
        {
          goto LABEL_20;
        }
      }

      v23 = 0;
      v21 = 0u;
      v22 = 0u;
LABEL_5:
      sub_10000D040(&v21, &qword_100174FB0, &unk_100120FC0);
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
      goto LABEL_6;
    }

    v7 = _swiftEmptyArrayStorage;
LABEL_20:
    if (*(v7 + 2))
    {
      v27[0] = v7;
      sub_100001AB4(&qword_100174F18, &qword_100120B68);
      sub_100023A2C();
      v20 = BidirectionalCollection<>.joined(separator:)();

      return v20;
    }

    else
    {

      return 0xD000000000000012;
    }
  }

  return result;
}

uint64_t sub_100023738()
{
  v1 = type metadata accessor for LogID(0);
  __chkstk_darwin(v1);
  v2 = *(v0 + 58);
  if (v2 == 255)
  {
    return 0;
  }

  v4 = *(v0 + 56);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      if (*&v7[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject])
      {
        sub_1000F8280((v4 | (v2 << 16) & 0x1FFFFu));
        if (v8)
        {
          sub_10001EA64();
          v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

          return v9;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_100023A2C()
{
  result = qword_100174F20;
  if (!qword_100174F20)
  {
    sub_10001E8F0(&qword_100174F18, &qword_100120B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174F20);
  }

  return result;
}

void *ActiveMixerUnit.deinit()
{
  sub_100024174(v0 + 16);

  return v0;
}

uint64_t ActiveMixerUnit.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100023B84()
{
  v1 = *(*v0 + 120);

  return v1;
}

uint64_t sub_100023C04@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = *(v4 + 64);
  v5 = *(v4 + 80);
  v13 = *(v4 + 112);
  v7 = *(v4 + 96);
  v12[2] = v6;
  v12[3] = v5;
  v12[4] = v7;
  v8 = *(v4 + 48);
  v12[0] = *(v4 + 32);
  v12[1] = v8;
  a2[3] = &type metadata for MixerUnit;
  a2[4] = a1();
  v9 = swift_allocObject();
  *a2 = v9;
  memmove((v9 + 16), (v4 + 32), 0x58uLL);
  return sub_10002317C(v12, v11);
}

uint64_t sub_100023CE8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_100023D4C(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

void sub_100023DE4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100023E68()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v3) = (*(v3 + 40))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v3 == 32)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_100023EEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753A0, &qword_100120E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100024068(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754F8, &qword_100120F88);
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

char *sub_1000241C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754F0, &qword_100120F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000242E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175390, &qword_100120E80);
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
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1000243F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754E8, &qword_100120F78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100024518(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753C8, &unk_100123340);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_10002461C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175368, &qword_100120E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(&qword_100175370, &qword_100120E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000247AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175498, &unk_100123320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 10);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[10 * v8])
    {
      memmove(v12, v13, 10 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 10 * v8);
  }

  return v10;
}

char *sub_1000248C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754A0, &qword_100120F40);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100024A10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754C8, &unk_100123910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100024B38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754C0, &qword_100120F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100024C84(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100001AB4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100024DCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753D0, &qword_100120EA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100024EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753A8, &qword_100129F20);
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

char *sub_10002501C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175460, &qword_100120F18);
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

char *sub_100025120(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754E0, &qword_100120F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100025254(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_100025364(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100001AB4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100025498(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754B0, &qword_100120F50);
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

void *sub_1000255B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_1001753F0, &qword_100120EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(&qword_100174A58, &unk_1001201A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002571C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_100025818(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175458, &unk_100125500);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_100025918(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175448, &qword_100120F08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(&qword_100175450, &qword_100120F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100025A70(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175428, &qword_100120EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(&qword_100175430, &qword_100120EF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100025BCC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_100025CC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175418, &qword_100120EE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100025DCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753C0, &qword_100120EA0);
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

char *sub_100025EF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175490, &qword_100126EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100025FF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753F8, &qword_100120EC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_100026114(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753E8, &qword_100129790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 17);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 17 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_100026240(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100001AB4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t MEMInterface.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_1000263F4(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 48);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = *(v6 - 1);
    v10 = *v6;
    v20[0] = *(v6 - 2);
    v20[1] = v9;
    v20[2] = v10;

    a1(&v18, v20);
    if (v3)
    {
      break;
    }

    if (v18)
    {
      v17 = v18;
      v11 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1000241C0(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      v14 = v17;
      if (v13 >= v12 >> 1)
      {
        v15 = sub_1000241C0((v12 > 1), v13 + 1, 1, v7);
        v14 = v17;
        v7 = v15;
      }

      *(v7 + 2) = v13 + 1;
      v8 = &v7[24 * v13];
      *(v8 + 2) = v14;
      *(v8 + 6) = v11;
    }

    v6 += 3;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_100026584(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v19 = v8;
      a1(&v18, &v19);
      if (v3)
      {

        return v7;
      }

      if (v18)
      {
        v17 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100024788(0, v7[2] + 1, 1, v7);
        }

        v12 = v7[2];
        v11 = v7[3];
        v13 = v17;
        if (v12 >= v11 >> 1)
        {
          v14 = sub_100024788((v11 > 1), v12 + 1, 1, v7);
          v13 = v17;
          v7 = v14;
        }

        v7[2] = v12 + 1;
        *&v7[2 * v12 + 4] = v13;
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t (*ActiveSelectorUnit.function.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

unint64_t sub_100026850()
{
  result = qword_1001755D8;
  if (!qword_1001755D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001755D8);
  }

  return result;
}

uint64_t sub_1000268A4()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100026904@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 80);
  v11[2] = *(v2 + 64);
  v11[3] = v4;
  v12 = *(v2 + 96);
  v5 = *(v2 + 48);
  v11[0] = *(v2 + 32);
  v11[1] = v5;
  a2[3] = &type metadata for SelectorUnit;
  a2[4] = a1();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = *(v2 + 80);
  *(v6 + 48) = *(v2 + 64);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v2 + 96);
  v8 = *(v2 + 48);
  *(v6 + 16) = *(v2 + 32);
  *(v6 + 32) = v8;
  return sub_1000267DC(v11, v10);
}

unint64_t sub_100026998()
{
  result = qword_1001755E0;
  if (!qword_1001755E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001755E0);
  }

  return result;
}

void *ActiveClockSelector.selectorControl.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void ActiveClockSelector.selectorControl.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

double ActiveSelectorUnit.source.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_12;
  }

  v3 = *(v1 + 24);
  v4 = *(v1 + 80);
  v5 = *(v4 + 16);
  if (v5 == 1)
  {
    v6 = *(v4 + 32);
    ObjectType = swift_getObjectType();
    sub_100052184(v6, ObjectType, v3, v12);
  }

  else
  {
    v8 = *(v1 + 112);
    if (!*(v1 + 112) || v5 < v8)
    {
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v9 = v8 - 1;
    v10 = swift_getObjectType();
    sub_100052184(*(v4 + 8 * v9 + 32), v10, v3, v12);
  }

  swift_unknownObjectRelease();
  if (!v12[3])
  {
    sub_10000D040(v12, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_12;
  }

  sub_100001AB4(&qword_100174F60, &qword_100121090);
  sub_100001AB4(&qword_100174F68, &unk_100120B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t ActiveSelectorUnit.latencyControlSelector.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v2) = (*(v2 + 40))(ObjectType, v2) == 32;
    swift_unknownObjectRelease();
    return (2 * v2);
  }

  return result;
}

uint64_t ActiveSelectorUnit.cluster.getter()
{
  v2 = type metadata accessor for LogID(0);
  __chkstk_darwin(v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Mirror();
  v5 = *(v70 - 1);
  __chkstk_darwin(v70);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v68 = v2;
  if (!Strong)
  {
    sub_10000CA2C();
    v17 = swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_28;
  }

  v9 = v0[3];
  v10 = v0[10];
  if (v10[2] == 1)
  {
    v11 = 1;
    goto LABEL_4;
  }

  v58 = v0[10];
  v60 = v9;
  v61 = Strong;
  v59 = v0;
  v69 = v0[11];
  if (!v69 || (v66 = v69[2]) == 0)
  {
LABEL_23:
    sub_10000CA2C();
    v17 = swift_allocError();
    *v32 = 14;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v19 = 0;
  v20 = (v69 + 4);
  Description = (v5 + 8);
  v67 = v4;
  v65 = v7;
  v64 = (v5 + 8);
  while (1)
  {
    v22 = v69[2];
    v23 = v19 < v22;
    if (v19 >= v22)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      if (v23)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    v24 = *(v20 + 2);
    v25 = *v20;
    active = &type metadata for USBDescriptorControl;
    v63 = v24;
    BYTE2(v77) = v24;
    v62 = v25;
    LOWORD(v77) = v25;
    Mirror.init(reflecting:)();
    v1 = Mirror.children.getter();
    Description = *(v1 + 24);
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v10 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    v26 = dispatch thunk of _AnyIndexBox._typeID.getter();
    v23 = v10 < v26;
    if (v10 != v26)
    {
      goto LABEL_43;
    }

    v27 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v27 & 1) == 0)
    {
      break;
    }

    Description = v64;
    v4 = v67;
    (*v64)(v65, v70);
LABEL_20:

LABEL_21:
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_27;
    }

    v19 = (v19 + 1);
    v20 = (v20 + 3);
    if (v66 == v19)
    {
      goto LABEL_23;
    }
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();

  v28 = v77;
  v29 = v78;
  sub_10000CE78(&v79);
  Description = v64;
  v30 = *v64;
  if (!v29)
  {
    v4 = v67;
    v30(v65, v70);
    goto LABEL_20;
  }

  v30(v65, v70);
  v4 = v67;
  if (v28 != 0x726F7463656C6573 || v29 != 0xE800000000000000)
  {
    goto LABEL_21;
  }

LABEL_27:
  v35 = v62 | (v63 << 16);
  ObjectType = swift_getObjectType();
  active = type metadata accessor for ActiveSelectorUnit();
  v81 = &protocol witness table for ActiveSelectorUnit;
  v77 = v59;
  v37 = v60;
  v38 = *(v60 + 184);

  v39 = v38(v35 & 0xFFFFFF, 0, 0, &v77, ObjectType, v37);
  v10 = v45;
  LOWORD(v35) = v39;
  sub_10000CE78(&v77);
  ADCControlRequestParameterBlock.getCur()(&v77, v10, v35 & 0x1FF);
  v19 = active;
  v46 = v81;
  v47 = sub_10001EAB8(&v77, active);
  Description = v19[-1].Description;
  v1 = Description[8];
  __chkstk_darwin(v47);
  v20 = (&v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  (Description[2])(v20);
  v48 = v46[1];
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_48;
  }

  *&v74 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v50 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v49 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v23 = v49 < 64;
    if (v50)
    {
      if (v49 > 64)
      {
        goto LABEL_40;
      }

      v66 = *(v48[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v70 = &v58;
      __chkstk_darwin(AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v53 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v69 = &v58;
      __chkstk_darwin(v53);
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v54 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (Description[1])(&v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
      if ((v54 & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_61:
      __break(1u);
      return result;
    }

    goto LABEL_44;
  }

  v49 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v49 < 64)
  {
LABEL_47:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_48;
  }

LABEL_40:
  __chkstk_darwin(v49);
  sub_10002B660();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v51 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (Description[1])(&v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  if (v51)
  {
    goto LABEL_61;
  }

LABEL_48:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_53;
  }

  while (2)
  {
    *&v74 = 0x7FFFFFFFFFFFFFFFLL;
    v55 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v56 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v55)
    {
      if (v56 < 65)
      {
        break;
      }

      goto LABEL_51;
    }

    if (v56 >= 64)
    {
LABEL_51:
      __chkstk_darwin(v56);
      sub_10002B660();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v57 = dispatch thunk of static Comparable.< infix(_:_:)();
      (Description[1])(&v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
      if ((v57 & 1) == 0)
      {
        goto LABEL_58;
      }

      __break(1u);
LABEL_53:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_58;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_58:
  v11 = dispatch thunk of BinaryInteger._lowWord.getter();

  (Description[1])(v20, v19);
  sub_10000CE78(&v77);
  v4 = v67;
  v9 = v60;
  v10 = v58;
  if (v11 <= 0 || v58[2] < v11)
  {
LABEL_25:
    sub_10000CA2C();
    v17 = swift_allocError();
    *v33 = 1;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

LABEL_4:
  v12 = swift_getObjectType();
  sub_100052184(v10[v11 + 3], v12, v9, &v74);
  if (!v75)
  {
    sub_10000D040(&v74, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_25;
  }

  sub_10000D0A0(&v74, &v77);
  sub_10001EAFC(&v77, v73);
  sub_100001AB4(&qword_100174F60, &qword_100121090);
  sub_100001AB4(&qword_100174F68, &unk_100120B90);
  if (swift_dynamicCast())
  {
    sub_10000D0A0(v71, &v74);
    v13 = v75;
    v14 = v76;
    sub_10001EAB8(&v74, v75);
    v15 = (*(v14 + 48))(v13, v14);
    swift_unknownObjectRelease();
    sub_10000CE78(&v77);
    sub_10000CE78(&v74);
    return v15;
  }

  else
  {
    v72 = 0;
    memset(v71, 0, sizeof(v71));
    sub_10000D040(v71, &qword_100174F70, &qword_100120FD0);
    sub_10000CA2C();
    v17 = swift_allocError();
    *v34 = 1;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10000CE78(&v77);
LABEL_28:
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    v40._object = 0x800000010012C1B0;
    v40._countAndFlagsBits = 0xD00000000000002DLL;
    String.append(_:)(v40);
    *&v74 = v17;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v41 = v77;
    v42 = v78;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v43 = sub_10000A1BC(v68, qword_1001794F0);
    sub_10000A2A4(v43, v4);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v44, qword_100179508);
    sub_100039F58(2, v4, v41, v42);

    sub_10000C9D0(v4);
    return 0;
  }
}

uint64_t ActiveSelectorUnit.start(on:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v3 + 24) = a2;
  result = swift_unknownObjectWeakAssign();
  if (*(*(v3 + 80) + 16) >= 2uLL)
  {
    sub_100028BD8();
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    strcpy(v24, "Selector Unit");
    HIWORD(v24[1]) = -4864;
    v25 = *(v3 + 48);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 0x69766564206E6F20;
    v10._object = 0xEB00000000206563;
    String.append(_:)(v10);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v11);
      v15 = v14;
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0xE700000000000000;
      active = 0x6E776F6E6B6E55;
    }

    v16._countAndFlagsBits = active;
    v16._object = v15;
    String.append(_:)(v16);

    v17._object = 0x800000010012C1E0;
    v17._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v17);
    LOBYTE(v25) = *(v3 + 112);
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19 = v24[0];
    v20 = v24[1];
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v21 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v21, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v22, qword_100179508);
    sub_100039AA0(2, v7, v19, v20);

    return sub_10000C9D0(v7);
  }

  return result;
}

void ActiveSelectorUnit.audioControlsAndProperties(scope:for:)(unsigned int a1, uint64_t a2)
{
  v88 = a2;
  v90 = a1;
  v89 = type metadata accessor for LogID(0);
  __chkstk_darwin(v89);
  v5 = (&v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = type metadata accessor for Mirror();
  v6 = *(v98 - 8);
  __chkstk_darwin(v98);
  ObjectType = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v91 = Strong;
  v87 = *(v2 + 80);
  if (v87[1].Kind < 2uLL || (v10 = *(v2 + 88)) == 0)
  {
LABEL_42:
    swift_unknownObjectRelease();
    return;
  }

  v86 = v2;
  v85 = v3;
  v97 = *(v10 + 2);
  if (!v97)
  {
LABEL_18:
    sub_10000CA2C();
    swift_allocError();
    *v21 = 14;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    return;
  }

  v11 = 0;
  v84 = *(v86 + 24);
  v12 = (v10 + 32);
  v83 = v5;
  v96 = ObjectType;
  v94 = v10;
  v95 = (v6 + 8);
  while (1)
  {
    if (v11 >= *(v10 + 2))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      swift_once();
      v49 = sub_10000A1BC(v89, qword_1001794F0);
      sub_10000A2A4(v49, v5);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v50, qword_100179508);
      sub_100039F58(2, v5, v6, ObjectType);

      swift_unknownObjectRelease();
      sub_10000C9D0(v5);
      return;
    }

    v99 = v11;
    v13 = *(v12 + 2);
    v14 = *v12;
    v110 = &type metadata for USBDescriptorControl;
    v93 = v13;
    BYTE2(v107) = v13;
    v92 = v14;
    LOWORD(v107) = v14;
    Mirror.init(reflecting:)();
    v15 = Mirror.children.getter();
    v5 = *(v15 + 16);
    v6 = *(v15 + 24);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v16 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_82;
    }

    v17 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v17 & 1) == 0)
    {
      break;
    }

    ObjectType = v96;
    (*v95)(v96, v98);
LABEL_15:

    v6 = 0xE700000000000000;
LABEL_16:
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_20;
    }

    v11 = v99 + 1;
    v12 = (v12 + 3);
    v10 = v94;
    if (v97 == (v99 + 1))
    {
      goto LABEL_18;
    }
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();

  v18 = v107;
  v6 = v108;
  sub_10000CE78(&v109);
  v19 = *v95;
  ObjectType = v96;
  if (!v6)
  {
    v19(v96, v98);
    goto LABEL_15;
  }

  v19(v96, v98);
  if (v18 != 0x726F7463656C6573 || v6 != 0xE800000000000000)
  {
    goto LABEL_16;
  }

LABEL_20:
  v23 = swift_getObjectType();
  v5 = v84;
  v24 = (*(v84 + 16))(v23, v84);
  if (!v24)
  {
    sub_10000CA2C();
    swift_allocError();
    *v27 = 58;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    return;
  }

  active = type metadata accessor for ActiveSelectorUnit();
  v110 = active;
  v111 = &protocol witness table for ActiveSelectorUnit;
  v107 = v86;

  v26 = v85;
  v99 = sub_1000530DC(&v107, v23, v5);
  if (v26)
  {
    swift_unknownObjectRelease();
    sub_10000CE78(&v107);
    return;
  }

  v97 = active;
  v98 = v23;
  sub_10000CE78(&v107);
  ObjectType = *(v99 + 16);
  v28 = _swiftEmptyArrayStorage;
  if (!ObjectType)
  {
    goto LABEL_40;
  }

  v29 = 0;
  v30 = (v99 + 48);
  v31 = v90;
  while (2)
  {
    v32 = *(v99 + 16);
    v33 = v32 >= v29;
    v34 = v32 - v29;
    if (!v33)
    {
      v34 = 0;
    }

    v6 = &ObjectType[-v29];
    v35 = &v30[3 * v29++];
    while (2)
    {
      if (!v34)
      {
        goto LABEL_83;
      }

      v36 = *(v35 - 2);
      v5 = *(v35 - 1);
      if (v31 == 1869968496)
      {
        if (v5[17] == 257)
        {
          goto LABEL_35;
        }

LABEL_30:
        --v34;
        v35 += 3;
        ++v29;
        if (!--v6)
        {
          goto LABEL_40;
        }

        continue;
      }

      break;
    }

    if (v31 != 1768845428 || *(v36 + 136) != 257)
    {
      goto LABEL_30;
    }

LABEL_35:
    v95 = v30;
    v37 = *v35;

    v85 = v37;

    v96 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = ObjectType;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v96 = sub_1000241C0(0, *(v96 + 2) + 1, 1, v96);
    }

    v28 = v96;
    v40 = *(v96 + 2);
    v39 = *(v96 + 3);
    v31 = v90;
    v30 = v95;
    if (v40 >= v39 >> 1)
    {
      v42 = sub_1000241C0((v39 > 1), v40 + 1, 1, v96);
      v30 = v95;
      v28 = v42;
      v31 = v90;
    }

    *(v28 + 2) = v40 + 1;
    v41 = &v28[24 * v40];
    *(v41 + 4) = v36;
    *(v41 + 5) = v5;
    *(v41 + 6) = v85;
    ObjectType = v94;
    if (v6 != 1)
    {
      continue;
    }

    break;
  }

LABEL_40:

  v43 = *(v28 + 2);

  if (!v43)
  {
    goto LABEL_42;
  }

  v44 = v92 | (v93 << 16);
  v110 = v97;
  v111 = &protocol witness table for ActiveSelectorUnit;
  v107 = v86;
  v45 = v84;
  v46 = *(v84 + 184);

  v47 = v46(v44 & 0xFFFFFF, 0, 0, &v107, v98, v45);
  v6 = v48;
  LOWORD(v46) = v47;
  sub_10000CE78(&v107);
  ADCControlRequestParameterBlock.getCur()(&v107, v6, v46 & 0x1FF);

  sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
  v51 = swift_dynamicCast();
  v85 = 0;
  if (v51)
  {
    *(v86 + 112) = v104;
  }

  v52 = v87;
  v53 = _swiftEmptyArrayStorage;
  v101 = _swiftEmptyArrayStorage;
  Kind = v87[1].Kind;
  if (Kind)
  {
    LODWORD(v96) = v44;
    v55 = 0;
    v56 = v87 + 2;
    v5 = &qword_100174FB0;
    ObjectType = &unk_100120FC0;
    v57 = &qword_100174F70;
    v99 = 0x726F7463656C6553;
    v97 = v87 + 2;
    while (1)
    {
      if (v55 >= v52[1].Kind)
      {
        goto LABEL_84;
      }

      v58 = v55 + 1;
      sub_100052184(*(&v56->Kind + v55), v98, v84, v102);
      if (!v103)
      {
        break;
      }

      sub_100001AB4(&qword_100174F60, &qword_100121090);
      sub_100001AB4(&qword_100174F68, &unk_100120B90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        goto LABEL_58;
      }

      if (!*(&v105 + 1))
      {
        goto LABEL_58;
      }

      v59 = v57;
      v60 = ObjectType;
      v61 = v5;
      sub_10000D0A0(&v104, &v107);
      v62 = v110;
      v63 = v111;
      sub_10001EAB8(&v107, v110);
      (v63[9])(v62, v63);
      if (v64)
      {
        v6 = v64;
        sub_10000CE78(&v107);
        v5 = v61;
        ObjectType = v60;
        v57 = v59;
        v56 = v97;
        goto LABEL_60;
      }

      sub_10000CE78(&v107);
      v5 = v61;
      ObjectType = v60;
      v57 = v59;
      v56 = v97;
LABEL_59:
      v107 = v99;
      v108 = 0xEA00000000002320;
      *&v104 = v55 + 1;
      v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v65);

      v6 = v108;
LABEL_60:
      if (v55 == 0xFFFFFFFF)
      {
        goto LABEL_85;
      }

      v66 = String._bridgeToObjectiveC()();

      v6 = [objc_opt_self() withValue:(v55 + 1) andName:v66 selected:v58 == *(v86 + 112)];

      if (!v6)
      {
        __break(1u);
        goto LABEL_90;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v55;
      v52 = v87;
      if (Kind == v58)
      {
        v53 = v101;
        LOBYTE(v44) = v96;
        goto LABEL_67;
      }
    }

    sub_10000D040(v102, v5, ObjectType);
    v104 = 0u;
    v105 = 0u;
    v106 = 0;
LABEL_58:
    sub_10000D040(&v104, v57, &qword_100120FD0);
    goto LABEL_59;
  }

LABEL_67:
  v67 = LockDelay.units.getter(v44);
  v68 = type metadata accessor for AUAStreamSelectorControl();
  v69 = objc_allocWithZone(v68);
  v5 = OBJC_IVAR____TtC9AUASDCore24AUAStreamSelectorControl_selectorUnit;
  swift_weakInit();
  swift_weakAssign();
  v100.receiver = v69;
  v100.super_class = v68;
  v70 = objc_msgSendSuper2(&v100, "initWithIsSettable:forElement:inScope:withPlugin:andObjectClassID:", v67 & 1, 0, v90, v88, 1685287523);
  if (v70)
  {
    if (v53 >> 62)
    {
      v82 = v70;
      v71 = _CocoaArrayWrapper.endIndex.getter();
      v70 = v82;
    }

    else
    {
      v71 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v99 = v70;
    v72 = v70;
    if (v71)
    {
      v6 = 0;
      ObjectType = (v53 & 0xC000000000000001);
      v73 = v53 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (ObjectType)
        {
          v74 = v53;
          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v73 + 16))
          {
            goto LABEL_87;
          }

          v74 = v53;
          v75 = *(v53 + 8 * v6 + 32);
        }

        v5 = v75;
        v76 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_86;
        }

        [v72 addValue:v75];

        ++v6;
        v77 = v76 == v71;
        v53 = v74;
      }

      while (!v77);
    }

    v78 = v86;
    LODWORD(v107) = *(v86 + 112);
    [v72 setSelectedValues:&v107 withCount:{1, v83}];

    swift_beginAccess();
    v79 = *(v78 + 104);
    *(v78 + 104) = v99;
    v80 = v72;

    sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100120A20;
    *(v81 + 32) = v80;

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_90:
    __break(1u);
  }
}

void sub_100028BD8()
{
  v1 = v0;
  ObjectType = 0x6E776F6E6B6E55;
  v77 = type metadata accessor for LogID(0);
  __chkstk_darwin(v77);
  v78 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Mirror();
  __chkstk_darwin(v85);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v0 + 80) + 16) >= 2uLL && (v7 = *(v0 + 88)) != 0)
  {
    v75 = *(v0 + 80);
    v76 = v0;
    v84 = *(v7 + 16);
    if (v84)
    {
      v8 = 0;
      v9 = (v7 + 32);
      v82 = (v4 + 8);
      v83 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v81 = v7;
      while (1)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v10 = v9[2];
        v11 = *v9;
        *(&v87 + 1) = &type metadata for USBDescriptorControl;
        v79 = v11;
        v80 = v10;
        BYTE2(v86) = v10;
        LOWORD(v86) = v11;
        Mirror.init(reflecting:)();
        v6 = *(Mirror.children.getter() + 24);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v12 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        if (v12 != dispatch thunk of _AnyIndexBox._typeID.getter())
        {
          goto LABEL_43;
        }

        v13 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v13)
        {
          break;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v15 = v86;
        sub_10000CE78(&v87);
        v14 = *v82;
        ObjectType = 0x6E776F6E6B6E55;
        if (!*(&v15 + 1))
        {
          goto LABEL_12;
        }

        v6 = v83;
        v14(v83, v85);
        if (v15 == __PAIR128__(0xE800000000000000, 0x726F7463656C6573))
        {

LABEL_26:
          v35 = v76;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong() && (v36 = v79 | (v80 << 16), v37 = *(v35 + 24), v38 = swift_getObjectType(), *(&v87 + 1) = type metadata accessor for ActiveSelectorUnit(), v88 = &protocol witness table for ActiveSelectorUnit, *&v86 = v35, v39 = *(v37 + 184), , v40 = v39(v36 & 0xFFFFFF, 0, 0, &v86, v38, v37), v42 = v41, v43 = v40, swift_unknownObjectRelease(), sub_10000CE78(&v86), v42))
          {
            v9 = v42;
            ADCControlRequestParameterBlock.getCur()(&v86, v9, v43 & 0x1FF);

            sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
            if (swift_dynamicCast())
            {
              v6 = v89[0];
              *&v86 = 0;
              *(&v86 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(44);

              *&v86 = 0x726F7463656C6553;
              *(&v86 + 1) = 0xE900000000000020;
              v58 = v76;
              *v89 = *(v76 + 48);
              v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v59);

              v60._countAndFlagsBits = 0x69766564206E6F20;
              v60._object = 0xEB00000000206563;
              String.append(_:)(v60);
              if (swift_unknownObjectWeakLoadStrong())
              {
                v61 = *(v58 + 24);
                v62 = swift_getObjectType();
                active = ActiveFunction.deviceName.getter(v62, v61);
                v65 = v64;
                swift_unknownObjectRelease();
                goto LABEL_45;
              }

LABEL_44:
              v65 = 0xE700000000000000;
              active = ObjectType;
LABEL_45:
              v66._countAndFlagsBits = active;
              v66._object = v65;
              String.append(_:)(v66);

              v67._object = 0x800000010012C510;
              v67._countAndFlagsBits = 0xD000000000000012;
              String.append(_:)(v67);
              v89[0] = v6;
              v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v68);

              v69 = v86;
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v70 = sub_10000A1BC(v77, qword_1001794F0);
              v71 = v78;
              sub_10000A2A4(v70, v78);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v72 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v72, qword_100179508);
              sub_100039AA0(2, v71, v69, *(&v69 + 1));

              sub_10000C9D0(v71);
              if (!v6 || *(v75 + 16) < v6)
              {
                sub_10000CA2C();
                v17 = swift_allocError();
                *v73 = 61;
                *(v73 + 8) = 0;
                *(v73 + 16) = 0xE000000000000000;
                swift_willThrow();

                v1 = v76;
                goto LABEL_17;
              }

LABEL_38:
              v1 = v76;
              goto LABEL_25;
            }
          }

          else
          {
            v88 = 0;
            v86 = 0u;
            v87 = 0u;
            sub_10000D040(&v86, &qword_100175790, &unk_100121070);
            v9 = 0;
          }

          *&v86 = 0;
          *(&v86 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(77);
          v44._countAndFlagsBits = 0xD00000000000002CLL;
          v44._object = 0x800000010012C4E0;
          String.append(_:)(v44);
          v45 = v76;
          *v89 = *(v76 + 48);
          v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v46);

          v47._countAndFlagsBits = 0x69766564206E6F20;
          v47._object = 0xEB00000000206563;
          String.append(_:)(v47);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v48 = *(v45 + 24);
            v49 = swift_getObjectType();
            ObjectType = ActiveFunction.deviceName.getter(v49, v48);
            v51 = v50;
            swift_unknownObjectRelease();
          }

          else
          {
            v51 = 0xE700000000000000;
          }

          v52._countAndFlagsBits = ObjectType;
          v52._object = v51;
          String.append(_:)(v52);

          v53._object = 0x800000010012C4C0;
          v53._countAndFlagsBits = 0xD000000000000012;
          String.append(_:)(v53);
          v54 = v86;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v55 = sub_10000A1BC(v77, qword_1001794F0);
          v56 = v78;
          sub_10000A2A4(v55, v78);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v57, qword_100179508);
          sub_100039F58(2, v56, v54, *(&v54 + 1));

          sub_10000C9D0(v56);
          LOBYTE(v6) = 1;
          goto LABEL_38;
        }

LABEL_13:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_26;
        }

        ++v8;
        v9 += 3;
        v7 = v81;
        if (v84 == v8)
        {
          goto LABEL_15;
        }
      }

      v14 = *v82;
      ObjectType = 0x6E776F6E6B6E55;
LABEL_12:
      v6 = v83;
      v14(v83, v85);

      goto LABEL_13;
    }

LABEL_15:
    sub_10000CA2C();
    v17 = swift_allocError();
    *v18 = 14;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0xE000000000000000;
    swift_willThrow();
    v1 = v76;
  }

  else
  {
    sub_10000CA2C();
    v17 = swift_allocError();
    *v19 = 87;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

LABEL_17:
  *&v86 = 0;
  *(&v86 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  *v89 = v86;
  v20._countAndFlagsBits = 0x20726F727245;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  *&v86 = v17;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v21._object = 0x800000010012C4A0;
  v21._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v21);
  *&v86 = *(v1 + 48);
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0x69766564206E6F20;
  v23._object = 0xEB00000000206563;
  String.append(_:)(v23);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v1 + 24);
    v25 = swift_getObjectType();
    ObjectType = ActiveFunction.deviceName.getter(v25, v24);
    v27 = v26;
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0xE700000000000000;
  }

  v28._countAndFlagsBits = ObjectType;
  v28._object = v27;
  String.append(_:)(v28);

  v29._object = 0x800000010012C4C0;
  v29._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v29);
  v30 = *v89;
  v31 = *&v89[8];
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A1BC(v77, qword_1001794F0);
  v33 = v78;
  sub_10000A2A4(v32, v78);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v34, qword_100179508);
  sub_100039F58(2, v33, v30, v31);

  sub_10000C9D0(v33);
  LOBYTE(v6) = 1;
LABEL_25:
  *(v1 + 112) = v6;
}

uint64_t sub_100029758(uint64_t a1)
{
  v36 = type metadata accessor for Mirror();
  result = __chkstk_darwin(v36);
  v7 = *(v1 + 88);
  if (!v7 || (v35 = *(v7 + 16)) == 0)
  {
LABEL_16:
    v18 = 14;
LABEL_17:
    sub_10000CA2C();
    swift_allocError();
    *v19 = v18;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v27 = v2;
  v28 = a1;
  v29 = v1;
  v8 = 0;
  v9 = (v7 + 32);
  v33 = (v5 + 8);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7;
  while (1)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v41 = v8;
    v10 = *(v9 + 2);
    v11 = *v9;
    active = &type metadata for USBDescriptorControl;
    v30 = v11;
    v31 = v10;
    BYTE2(v37[0]) = v10;
    LOWORD(v37[0]) = v11;
    Mirror.init(reflecting:)();
    Mirror.children.getter();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v12 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v12 != result)
    {
      goto LABEL_24;
    }

    v13 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v13)
    {

      (*v33)(v34, v36);
LABEL_13:

      goto LABEL_14;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v14 = v37[0];
    v15 = v37[1];
    sub_10000CE78(&v38);
    v16 = *v33;
    if (!v15)
    {
      v16(v34, v36);
      goto LABEL_13;
    }

    v16(v34, v36);
    if (v14 == 0x726F7463656C6573 && v15 == 0xE800000000000000)
    {
      break;
    }

LABEL_14:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_19;
    }

    v8 = v41 + 1;
    v9 = (v9 + 3);
    v7 = v32;
    if (v35 == v41 + 1)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  v20 = v29;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v18 = 69;
    goto LABEL_17;
  }

  v21 = v30 | (v31 << 16);
  v22 = *(v20 + 24);
  ObjectType = swift_getObjectType();
  active = type metadata accessor for ActiveSelectorUnit();
  v40 = &protocol witness table for ActiveSelectorUnit;
  v37[0] = v20;

  v24 = v21 & 0xFFFFFF;
  v25 = v27;
  v26 = v28;
  sub_100053170(v24, 0, 0, v37, v28, ObjectType, v22);
  swift_unknownObjectRelease();
  result = sub_10000CE78(v37);
  if (!v25)
  {
    *(v20 + 112) = v26;
  }

  return result;
}

uint64_t ActiveSelectorUnit.deinit()
{
  sub_100024174(v0 + 16);

  return v0;
}

uint64_t ActiveSelectorUnit.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100029C60@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = *(v4 + 48);
  v5 = *(v4 + 64);
  v12 = *(v4 + 96);
  v7 = *(v4 + 80);
  v11[2] = v5;
  v11[3] = v7;
  v11[0] = *(v4 + 32);
  v11[1] = v6;
  a2[3] = &type metadata for SelectorUnit;
  a2[4] = a1();
  v8 = swift_allocObject();
  *a2 = v8;
  memmove((v8 + 16), (v4 + 32), 0x48uLL);
  return sub_1000267DC(v11, v10);
}

uint64_t (*sub_100029CF4(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t sub_100029D8C()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v3) = (*(v3 + 40))(ObjectType, v3) == 32;
    swift_unknownObjectRelease();
    return (2 * v3);
  }

  return result;
}

id AUAStreamSelectorControl.changeValues(_:withCount:)(_DWORD *a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (a2 == 1)
    {
      if (!a1)
      {
        __break(1u);
        return result;
      }

      if (*a1)
      {
        v10 = [v2 setSelectedValues:a1 withCount:1];

        return v10;
      }

      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v40 = v38;
      v41 = v39;
      v24._countAndFlagsBits = 0x726F7463656C6553;
      v24._object = 0xEE002074696E5520;
      String.append(_:)(v24);
      v38 = *(v9 + 48);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 0x69766564206E6F20;
      v26._object = 0xEB00000000206563;
      String.append(_:)(v26);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v9 + 24);
        ObjectType = swift_getObjectType();
        active = ActiveFunction.deviceName.getter(ObjectType, v27);
        v31 = v30;
        swift_unknownObjectRelease();
      }

      else
      {
        active = 0x6E776F6E6B6E55;
        v31 = 0xE700000000000000;
      }

      v32._countAndFlagsBits = active;
      v32._object = v31;
      String.append(_:)(v32);

      v23 = 0xD000000000000021;
      v22 = 0x800000010012C280;
    }

    else
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v40 = v38;
      v41 = v39;
      v11._countAndFlagsBits = 0x726F7463656C6553;
      v11._object = 0xEE002074696E5520;
      String.append(_:)(v11);
      v38 = *(v9 + 48);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 0x69766564206E6F20;
      v13._object = 0xEB00000000206563;
      String.append(_:)(v13);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v9 + 24);
        v15 = swift_getObjectType();
        v16 = ActiveFunction.deviceName.getter(v15, v14);
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0x6E776F6E6B6E55;
        v18 = 0xE700000000000000;
      }

      v19._countAndFlagsBits = v16;
      v19._object = v18;
      String.append(_:)(v19);

      v20._countAndFlagsBits = 0xD000000000000014;
      v20._object = 0x800000010012C240;
      String.append(_:)(v20);
      v37 = a2;
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22 = 0x800000010012C260;
      v23 = 0xD000000000000013;
    }

    String.append(_:)(*&v23);
    v33 = v40;
    v34 = v41;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v35 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v35, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v36, qword_100179508);
    sub_100039F58(2, v7, v33, v34);

    sub_10000C9D0(v7);
    return 0;
  }

  return result;
}

Swift::Void __swiftcall AUAStreamSelectorControl.selectionDidChange(_:)(Swift::OpaquePointer_optional a1)
{
  v2 = v1;
  rawValue = a1.value._rawValue;
  v4 = type metadata accessor for LogID(0);
  __chkstk_darwin(v4);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v2 owner];
  if (!v7)
  {
    return;
  }

  v98 = v7;
  active = type metadata accessor for AUAAudioDevice(0);
  v9 = swift_dynamicCastClass();
  if (!v9 || (v10 = v9, v11 = OBJC_IVAR____TtC9AUASDCore24AUAStreamSelectorControl_selectorUnit, (Strong = swift_weakLoadStrong()) == 0))
  {
    v20 = v98;

    return;
  }

  if (!rawValue)
  {

    return;
  }

  v99 = Strong;
  v96 = v4;
  v97 = v6;
  v13 = 0xD000000000000013;
  v14 = rawValue & 0xFFFFFFFFFFFFFF8;
  if (rawValue >> 62)
  {
    goto LABEL_88;
  }

  v15 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 <= 2)
  {
    *&aBlock = _swiftEmptyArrayStorage;
    while (1)
    {
      v91 = v11;
      v92 = v10;
      v93 = v2;
      v89 = active;
      v21 = _swiftEmptyArrayStorage;
      if (v15)
      {
        v10 = 0;
        v13 = rawValue & 0xC000000000000001;
        v11 = &selRef_modelUID;
        do
        {
          active = v10;
          while (1)
          {
            if (v13)
            {
              v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (active >= *(v14 + 16))
              {
                goto LABEL_85;
              }

              v22 = *(rawValue + 8 * active + 32);
            }

            v2 = v22;
            v10 = active + 1;
            if (__OFADD__(active, 1))
            {
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            if ([v22 selected])
            {
              break;
            }

            ++active;
            if (v10 == v15)
            {
              goto LABEL_29;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            active = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v21 = aBlock;
        }

        while (v10 != v15);
      }

LABEL_29:
      if (v21 >> 62)
      {
        if (v21 < 0)
        {
          rawValue = v21;
        }

        else
        {
          rawValue = v21 & 0xFFFFFFFFFFFFFF8;
        }

        v75 = _CocoaArrayWrapper.endIndex.getter();
        v13 = 0xD000000000000013;
        v14 = v92;
        v19 = v96;
        v18 = v97;
        if (v75 != 1 || !_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_95:

          sub_10000CA2C();
          v16 = swift_allocError();
          *v76 = 1;
          *(v76 + 8) = 0;
          *(v76 + 16) = 0xE000000000000000;
          swift_willThrow();
          goto LABEL_96;
        }
      }

      else
      {
        v13 = 0xD000000000000013;
        v14 = v92;
        v19 = v96;
        v18 = v97;
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_95;
        }
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_107;
        }

        v23 = *(v21 + 32);
      }

      rawValue = v23;

      v24 = [rawValue value];
      if (v24 > 0xFF)
      {
        break;
      }

      v25 = v24;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      strcpy(&aBlock, "Selector Unit ");
      HIBYTE(aBlock) = -18;
      v26 = swift_weakLoadStrong();
      if (v26)
      {
        v27 = *(v26 + 48);
      }

      else
      {
        v27 = 0;
      }

      v90 = v25;
      v88 = rawValue;
      v106[0] = v27;
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      v29._countAndFlagsBits = 0x69766564206E6F20;
      v29._object = 0xEB00000000206563;
      String.append(_:)(v29);
      v30 = v99;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v30 + 24);
        ObjectType = swift_getObjectType();
        active = ActiveFunction.deviceName.getter(ObjectType, v31);
        v34 = v33;
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0xE700000000000000;
        active = 0x6E776F6E6B6E55;
      }

      v35._countAndFlagsBits = active;
      v35._object = v34;
      String.append(_:)(v35);

      v36._object = 0x800000010012C2D0;
      v36._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v36);
      LODWORD(active) = v90;
      LOBYTE(v107[0]) = v90;
      v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v37);

      rawValue = *(&aBlock + 1);
      v21 = aBlock;
      if (qword_100173CB8 != -1)
      {
        goto LABEL_108;
      }

LABEL_42:
      v38 = sub_10000A1BC(v19, qword_1001794F0);
      sub_10000A2A4(v38, v18);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v39, qword_100179508);
      sub_100039AA0(2, v18, v21, rawValue);

      sub_10000C9D0(v18);
      if (*(*(v99 + 80) + 16) < active)
      {
        sub_10000CA2C();
        v16 = swift_allocError();
        *v40 = 71;
        *(v40 + 8) = 0;
        *(v40 + 16) = 0xE000000000000000;
        swift_willThrow();

        goto LABEL_96;
      }

      v41 = AUAAudioDevice.inputAUAStreams()();
      if (v41 >> 62)
      {
        type metadata accessor for AUAStream(0);
        rawValue = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AUAStream(0);
        rawValue = v41;
      }

      v10 = v99;

      active = AUAAudioDevice.outputAUAStreams()();
      if (active >> 62)
      {
        type metadata accessor for AUAStream(0);
        v2 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AUAStream(0);
        v2 = active;
      }

      *&aBlock = rawValue;
      sub_10007DC24(v2);
      v42 = aBlock;
      v107[0] = _swiftEmptyArrayStorage;
      if (aBlock >> 62)
      {
        v43 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v43 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v87 = v42;
      if (!v43)
      {
        v94 = _swiftEmptyArrayStorage;
LABEL_72:

        v54 = v92;
        if (v94 >> 62)
        {
          v55 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v55 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v56 = v93;

        if (v55 <= 0)
        {
        }

        else
        {
          v57 = swift_weakLoadStrong();
          if (v57)
          {
            v58 = *(v57 + 112);

            v59 = v90;
            if (v58 == v90)
            {
LABEL_77:

              return;
            }
          }

          else
          {
            v59 = v90;
            if (!v90)
            {
              goto LABEL_77;
            }
          }

          v60 = swift_allocObject();
          *(v60 + 16) = v10;
          *(v60 + 24) = v59;
          *(v60 + 32) = v54;
          *(v60 + 40) = v56;
          *&aBlock = 0xD000000000000016;
          *(&aBlock + 1) = 0x800000010012C2F0;

          v61 = v98;
          v62 = v56;
          v63._countAndFlagsBits = 8236;
          v63._object = 0xE200000000000000;
          String.append(_:)(v63);
          v64._countAndFlagsBits = 0xD000000000000022;
          v64._object = 0x800000010012C310;
          String.append(_:)(v64);
          v65._countAndFlagsBits = 2108704;
          v65._object = 0xE300000000000000;
          String.append(_:)(v65);
          v107[0] = 301;
          v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v66);

          sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, *(&aBlock + 1), &v54[OBJC_IVAR___AUAAudioDevice_logID]);

          v67 = *&v54[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
          v68 = swift_allocObject();
          *(v68 + 16) = sub_10002BCA0;
          *(v68 + 24) = v60;
          *&aBlock = sub_10000CF5C;
          *(&aBlock + 1) = v68;
          v69 = *(v67 + 16);
          v70 = __chkstk_darwin(v68);
          *(&v86 - 2) = v67;
          *(&v86 - 1) = &aBlock;
          __chkstk_darwin(v70);
          *(&v86 - 2) = sub_10000CF64;
          *(&v86 - 1) = v71;

          os_unfair_lock_lock(v69 + 4);
          sub_10000CF80(v107);
          os_unfair_lock_unlock(v69 + 4);
          LODWORD(v67) = LOBYTE(v107[0]);

          if (v67 == 1)
          {
            v72 = swift_allocObject();
            *(v72 + 16) = v54;
            v104 = sub_10000CFD4;
            v105 = v72;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v102 = sub_1000172D4;
            v103 = &unk_100161718;
            v73 = _Block_copy(&aBlock);
            v74 = v61;

            v100.receiver = v54;
            v100.super_class = v89;
            objc_msgSendSuper2(&v100, "requestConfigurationChange:", v73);
            _Block_release(v73);
          }
        }

        return;
      }

      v11 = 0;
      v96 = v87 & 0xFFFFFFFFFFFFFF8;
      v97 = v87 & 0xC000000000000001;
      v95 = v87 + 32;
      v94 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v97)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v96 + 16))
          {
            goto LABEL_87;
          }

          v44 = *(v95 + 8 * v11);
        }

        rawValue = v44;
        if (__OFADD__(v11++, 1))
        {
          break;
        }

        v46 = &v44[OBJC_IVAR___AUAStream_path];
        v47 = *(v10 + 48);
        if (v47 != *(*&v44[OBJC_IVAR___AUAStream_path] + 88) && v47 != *(*(v46 + 1) + 72))
        {
          v13 = *(v46 + 2);
          v48 = *(v13 + 16);
          active = v13 + 32;

          v49 = v13 + 32;
          v14 = -v48;
          v2 = -1;
          while (1)
          {
            if (v14 + v2 == -1)
            {

              v10 = v99;

              goto LABEL_55;
            }

            ++v2;
            v50 = v99;
            if (v2 >= *(v13 + 16))
            {
              break;
            }

            v10 = v49 + 40;
            sub_10001EAFC(v49, &aBlock);
            v51 = *(v50 + 48);
            active = v103;
            v52 = v104;
            sub_10001EAB8(&aBlock, v103);
            v53 = (*(*(v52 + 1) + 48))(active);
            sub_10000CE78(&aBlock);
            v49 = v10;
            if (v51 == v53)
            {
              v10 = v99;

              goto LABEL_67;
            }
          }

          __break(1u);
          goto LABEL_84;
        }

LABEL_67:
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          active = *((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v94 = v107[0];
LABEL_55:
        if (v11 == v43)
        {
          goto LABEL_72;
        }
      }

LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      if (_CocoaArrayWrapper.endIndex.getter() > 2)
      {
        goto LABEL_7;
      }

      *&aBlock = _swiftEmptyArrayStorage;
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
    goto LABEL_42;
  }

LABEL_7:
  sub_10000CA2C();
  v16 = swift_allocError();
  *v17 = 1;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0xE000000000000000;
  swift_willThrow();
  v19 = v96;
  v18 = v97;
LABEL_96:
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v77._countAndFlagsBits = 0x726F7463656C6553;
  v77._object = 0xEE002074696E5520;
  String.append(_:)(v77);
  v78 = swift_weakLoadStrong();
  if (v78)
  {
    v79 = *(v78 + 48);
  }

  else
  {
    v79 = 0;
  }

  v107[0] = v79;
  v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v80);

  v81._countAndFlagsBits = 0x726F727245202D20;
  v81._object = 0xE900000000000020;
  String.append(_:)(v81);
  v107[0] = v16;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v82._countAndFlagsBits = v13 + 7;
  v82._object = 0x800000010012C2B0;
  String.append(_:)(v82);
  v83 = aBlock;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v84 = sub_10000A1BC(v19, qword_1001794F0);
  sub_10000A2A4(v84, v18);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v85 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v85, qword_100179508);
  sub_100039F58(2, v18, v83, *(&v83 + 1));

  sub_10000C9D0(v18);
}

void sub_10002B218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100029758(a2);
  AUAAudioDevice.createStreams()();
  AUAAudioDevice.publishStreamFormats()();
  if (v5 || (AUAAudioDevice.addGlobalControls()(), v6) || (AUAAudioDevice.addStreamControls()(), v7))
  {
    _StringGuts.grow(_:)(48);
    v8._countAndFlagsBits = 0x726F7463656C6553;
    v8._object = 0xEE002074696E5520;
    String.append(_:)(v8);
    if (swift_weakLoadStrong())
    {
    }

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 0x726F727245202D20;
    v10._object = 0xE900000000000020;
    String.append(_:)(v10);
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v11._object = 0x800000010012C460;
    v11._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v11);
    v12 = OBJC_IVAR___AUAAudioDevice_logID;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v13, qword_100179508);
    sub_100039F58(2, a3 + v12, 0, 0xE000000000000000);
  }
}

id AUAStreamSelectorControl.__allocating_init(isSettable:forElement:inScope:with:andObjectClassID:)(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = [objc_allocWithZone(v5) initWithIsSettable:a1 & 1 forElement:a2 inScope:a3 withPlugin:a4 andObjectClassID:a5];

  return v7;
}

id AUAStreamSelectorControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAStreamSelectorControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002B5B0()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + 48);

  return v1;
}

uint64_t sub_10002B5F4()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100028BD8();
  }

  return result;
}

unint64_t sub_10002B660()
{
  result = qword_1001755E8;
  if (!qword_1001755E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001755E8);
  }

  return result;
}

void sub_10002B6D8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v4)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v44 = v46;
    v45 = v47;
    v8._object = 0x800000010012C480;
    v8._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v8);
    v46 = *(v2 + 48);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 0x69766564206E6F20;
    v10._object = 0xEB00000000206563;
    String.append(_:)(v10);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v11);
      v15 = v14;
      swift_unknownObjectRelease();
    }

    else
    {
      active = 0x6E776F6E6B6E55;
      v15 = 0xE700000000000000;
    }

    v26._countAndFlagsBits = active;
    v26._object = v15;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0x7474612064616220;
    v27._object = 0xEF20657475626972;
    String.append(_:)(v27);
    LOBYTE(v42) = a1;
    _print_unlocked<A, B>(_:_:)();
    v28 = v44;
    v29 = v45;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v30 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v30, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v31, qword_100179508);
    v32 = 2;
    sub_100039F58(2, v7, v28, v29);

    sub_10000C9D0(v7);
    goto LABEL_13;
  }

  swift_beginAccess();
  v16 = *(v2 + 104);
  if (!v16)
  {
    v32 = 14;
LABEL_13:
    sub_10000CA2C();
    swift_allocError();
    *v33 = v32;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v17 = v16;
  sub_100028BD8();
  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v42 = v44;
  v43 = v45;
  v18._object = 0x800000010012C480;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v18);
  v44 = *(v2 + 48);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x69766564206E6F20;
  v20._object = 0xEB00000000206563;
  String.append(_:)(v20);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v2 + 24);
    v22 = swift_getObjectType();
    v23 = ActiveFunction.deviceName.getter(v22, v21);
    v25 = v24;
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0x6E776F6E6B6E55;
    v25 = 0xE700000000000000;
  }

  v34._countAndFlagsBits = v23;
  v34._object = v25;
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0x2073692052554320;
  v35._object = 0xEC00000020776F6ELL;
  String.append(_:)(v35);
  v41[7] = *(v2 + 112);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v36);

  v37 = v42;
  v38 = v43;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A1BC(v5, qword_1001794F0);
  sub_10000A2A4(v39, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v40, qword_100179508);
  sub_100039AA0(2, v7, v37, v38);

  sub_10000C9D0(v7);
  LODWORD(v42) = *(v2 + 112);
  [v17 setSelectedValues:&v42 withCount:1];
}

uint64_t sub_10002BC58()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002BCB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002BCE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002BD20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002BD38()
{
  result = qword_100175788;
  if (!qword_100175788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100175788);
  }

  return result;
}

Swift::Int LockDelay.LockDelayUnits.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10002BE28()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002BE9C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t ActiveClockSource.rateRanges.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t ActiveClockSource.isSettable.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t ActiveClockSource.isValid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t ActiveClockSource.function.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ActiveClockSource.function.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002C2D8;
}

uint64_t ActiveClockSource.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);

  return v1;
}

uint64_t ActiveClockSource.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

unint64_t sub_10002C3E4()
{
  result = qword_100175798;
  if (!qword_100175798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175798);
  }

  return result;
}

uint64_t sub_10002C438()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002C490@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = v2[3];
  v11[0] = v2[2];
  v11[1] = v4;
  v5 = v2[5];
  v11[2] = v2[4];
  v11[3] = v5;
  a2[3] = &type metadata for ClockSource;
  a2[4] = a1();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v2[3];
  v6[1] = v2[2];
  v6[2] = v7;
  v8 = v2[5];
  v6[3] = v2[4];
  v6[4] = v8;
  return sub_10002C080(v11, &v10);
}

unint64_t sub_10002C514()
{
  result = qword_1001757A0;
  if (!qword_1001757A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001757A0);
  }

  return result;
}

uint64_t sub_10002C590(_OWORD *a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v38 = type metadata accessor for Mirror();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v43 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  *(v2 + 104) = 0;
  *(v2 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  v10 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
  ObjectType = "ActiveClockSource";
  if (qword_100173CB8 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v12 = ObjectType - 32;
    v13 = type metadata accessor for LogID(0);
    ObjectType = sub_10000A1BC(v13, qword_1001794F0);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v14, qword_100179508);
    sub_100039740(0xD000000000000011, (v12 | 0x8000000000000000), ObjectType, (v5 + v10));
    *(v5 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_lastSamplingRateChangedTimestamp) = 0;
    v15 = v5 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate;
    *v15 = 0;
    *(v15 + 8) = 1;
    v37 = *(a2 + 16);
    if (!v37)
    {
      break;
    }

    v30[0] = v10;
    v30[1] = v4;
    v31 = a1;
    v32 = v5;
    v10 = 0;
    v16 = 32;
    v35 = (v8 + 1);
    v36 = a2;
    while (v10 < *(a2 + 16))
    {
      v39 = v16;
      v17 = (a2 + v16);
      v18 = *(a2 + v16 + 2);
      v19 = *v17;
      v42[1] = &type metadata for USBDescriptorControl;
      v33 = v19;
      v34 = v18;
      BYTE2(v40) = v18;
      LOWORD(v40) = v19;
      Mirror.init(reflecting:)();
      v8 = Mirror.children.getter();
      v5 = v8[3];
      a2 = v8[4];
      a1 = v8[5];
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v4 = dispatch thunk of _AnyIndexBox._typeID.getter();
      swift_getObjectType();
      if (v4 != dispatch thunk of _AnyIndexBox._typeID.getter())
      {
        goto LABEL_24;
      }

      v20 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v20)
      {

        a2 = v36;
        (*v35)(v43, v38);
LABEL_15:

        goto LABEL_16;
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      v21 = v40;
      v22 = v41;
      sub_10000CE78(v42);
      a2 = v36;
      v23 = *v35;
      if (!v22)
      {
        v23(v43, v38);
        goto LABEL_15;
      }

      v23(v43, v38);
      if (v21 == 0x636E657571657266 && v22 == 0xE900000000000079)
      {

LABEL_21:
        v25 = LockDelay.units.getter(v33);
        v5 = v32;
        *(v32 + 24) = v25 & 1;
        v26 = v31;
        v27 = v31[1];
        *(v5 + 32) = *v31;
        *(v5 + 48) = v27;
        v28 = v26[3];
        *(v5 + 64) = v26[2];
        *(v5 + 80) = v28;
        *(v5 + 96) = a2;
        return v5;
      }

LABEL_16:
      ObjectType = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (ObjectType)
      {
        goto LABEL_21;
      }

      ++v10;
      v16 = v39 + 3;
      if (v37 == v10)
      {

        sub_1000383FC(v31);
        v5 = v32;
        v10 = v30[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  sub_1000383FC(a1);
LABEL_20:
  sub_10000CA2C();
  swift_allocError();
  *v24 = 15;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0xE000000000000000;
  swift_willThrow();

  sub_100024174(v5 + 112);

  sub_10000C9D0(v5 + v10);
  type metadata accessor for ActiveClockSource(0);
  swift_deallocPartialClassInstance();
  return v5;
}

void *sub_10002CA74()
{
  *&v45 = type metadata accessor for Mirror();
  __chkstk_darwin(v45);
  v39 = v0;
  v46 = *(v0 + 96);
  v44 = *(v46 + 16);
  if (!v44)
  {
LABEL_15:
    sub_10000CA2C();
    swift_allocError();
    v13 = 15;
LABEL_16:
    *v12 = v13;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v0;
  }

  v3 = 0;
  v4 = (v46 + 32);
  v42 = (v1 + 8);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    if (v3 >= *(v46 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v47 = v3;
    v5 = *(v4 + 2);
    v6 = *v4;
    active = &type metadata for USBDescriptorControl;
    v40 = v6;
    v41 = v5;
    BYTE2(v50[0]) = v5;
    LOWORD(v50[0]) = v6;
    Mirror.init(reflecting:)();
    Mirror.children.getter();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v7 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v7 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_33;
    }

    v8 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v8)
    {

      (*v42)(v43, v45);
LABEL_12:

      goto LABEL_13;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v10 = v50[0];
    v9 = v50[1];
    sub_10000CE78(&v51);
    v11 = *v42;
    if (!v9)
    {
      v11(v43, v45);
      goto LABEL_12;
    }

    v11(v43, v45);
    if (v10 == 0x636E657571657266 && v9 == 0xE900000000000079)
    {
      break;
    }

LABEL_13:
    v0 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v0)
    {
      goto LABEL_18;
    }

    v3 = v47 + 1;
    v4 = (v4 + 3);
    if (v44 == v47 + 1)
    {
      goto LABEL_15;
    }
  }

LABEL_18:
  v0 = v39;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    v13 = 69;
    goto LABEL_16;
  }

  v16 = Strong;
  v17 = v40 | (v41 << 16);
  v18 = *(v0 + 120);
  ObjectType = swift_getObjectType();
  active = type metadata accessor for ActiveClockSource(0);
  v53 = &protocol witness table for ActiveClockSource;
  v50[0] = v0;
  v20 = *(v18 + 200);

  v0 = v16;
  v21 = v38;
  v22 = v20(v17 & 0xFFFFFF, 0, 0, v50, ObjectType, v18);
  if (v21)
  {
    swift_unknownObjectRelease();
    sub_10000CE78(v50);
    return v0;
  }

  v25 = v23;
  v26 = v22;
  v0 = v24;
  sub_10000CE78(v50);
  if (USBDescriptorControl.pbLayout()() != AUASDCore_tADCControlRequestParameterBlockLayout_Layout3PB)
  {
    sub_10000CA2C();
    swift_allocError();
    *v37 = 32;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();

    return v0;
  }

  v27 = sub_10009D018(v26 & 0x1FF, v25, v0);
  v28 = *(v27 + 16);
  if (!v28)
  {
    swift_unknownObjectRelease();

    return _swiftEmptyArrayStorage;
  }

  v46 = v16;
  v47 = v25;
  v54 = _swiftEmptyArrayStorage;
  sub_100046F70(0, v28, 0);
  v29 = 0;
  v0 = v54;
  v30 = v27 + 32;
  while (v29 < *(v27 + 16))
  {
    v31 = v28;
    sub_10001EAFC(v30, v50);
    sub_10002D038(v50, &v48);
    sub_10000CE78(v50);
    v32 = v48;
    v33 = v49;
    v54 = v0;
    v35 = *(v0 + 16);
    v34 = *(v0 + 24);
    if (v35 >= v34 >> 1)
    {
      v45 = v48;
      sub_100046F70((v34 > 1), v35 + 1, 1);
      v32 = v45;
      v0 = v54;
    }

    ++v29;
    *(v0 + 16) = v35 + 1;
    v36 = v0 + 24 * v35;
    *(v36 + 32) = v32;
    *(v36 + 48) = v33;
    v30 += 40;
    v28 = v31;
    if (v31 == v29)
    {
      swift_unknownObjectRelease();

      return v0;
    }
  }

LABEL_34:
  __break(1u);
  sub_10000CE78(v50);

  __break(1u);
  return result;
}

uint64_t sub_10002D038@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  v66 = a2;
  v2 = a1[3];
  v3 = a1[4];
  v67 = a1;
  sub_10001EAB8(a1, v2);
  (*(v3 + 8))(v72, v2, v3);
  v5 = v73;
  v4 = v74;
  v6 = sub_10001EAB8(v72, v73);
  v7 = *(v5 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  (v7[2])(&v61 - v9);
  v10 = *(v4 + 8);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v64 = &v61;
    __chkstk_darwin(AssociatedTypeWitness);
    v65 = v10;
    swift_getAssociatedConformanceWitness();
    v12 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v63 = &v61;
    __chkstk_darwin(v12);
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v13 = dispatch thunk of static Comparable.>= infix(_:_:)();
    result = (v7[1])(&v61 - v9, v5);
    if ((v13 & 1) == 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
  {
    v70[0] = -1;
    v15 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v16 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v15)
    {
      if (v16 <= 64)
      {
        v65 = v7;
        v17 = swift_getAssociatedTypeWitness();
        v64 = &v61;
        __chkstk_darwin(v17);
        swift_getAssociatedConformanceWitness();
        v18 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        __chkstk_darwin(v18);
        v7 = v65;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v19 = dispatch thunk of static Comparable.> infix(_:_:)();
        (v7[1])(&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
        if ((v19 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v16 < 65)
    {
LABEL_11:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_12;
    }

    __chkstk_darwin(v16);
    sub_1000384E4();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v20 = dispatch thunk of static Comparable.< infix(_:_:)();
    (v7[1])(&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    if (v20)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

LABEL_12:
  v64 = dispatch thunk of BinaryInteger._lowWord.getter();
  (v7[1])(&v61 - v9, v5);
  v21 = v67[3];
  v22 = v67[4];
  sub_10001EAB8(v67, v21);
  (*(v22 + 24))(v70, v21, v22);
  v23 = v71;
  v24 = sub_10001EAB8(v70, v71);
  v65 = &v61;
  v25 = *(v23 - 8);
  v26 = v25[8];
  __chkstk_darwin(v24);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  (v25[2])(&v61 - v27);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v28 = swift_getAssociatedTypeWitness();
    v62 = &v61;
    __chkstk_darwin(v28);
    v63 = v25;
    swift_getAssociatedConformanceWitness();
    v29 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v61 = &v61;
    __chkstk_darwin(v29);
    v25 = v63;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v30 = dispatch thunk of static Comparable.>= infix(_:_:)();
    result = (v25[1])(&v61 - v27, v23);
    if ((v30 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
  {
    v68[0] = -1;
    v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v31)
    {
      if (v32 <= 64)
      {
        v33 = swift_getAssociatedTypeWitness();
        v62 = &v61;
        __chkstk_darwin(v33);
        v63 = v25;
        swift_getAssociatedConformanceWitness();
        v34 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        __chkstk_darwin(v34);
        v25 = v63;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v35 = dispatch thunk of static Comparable.> infix(_:_:)();
        (v25[1])(&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
        if ((v35 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (v32 < 65)
    {
LABEL_22:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_23;
    }

    __chkstk_darwin(v32);
    sub_1000384E4();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v36 = dispatch thunk of static Comparable.< infix(_:_:)();
    (v25[1])(&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    if (v36)
    {
      __break(1u);
      goto LABEL_22;
    }
  }

LABEL_23:
  v37 = dispatch thunk of BinaryInteger._lowWord.getter();
  v38 = v25;
  v39 = v37;
  (v38[1])(&v61 - v27, v23);
  v40 = v67[3];
  v41 = v67[4];
  sub_10001EAB8(v67, v40);
  (*(v41 + 40))(v68, v40, v41);
  v42 = v69;
  v43 = sub_10001EAB8(v68, v69);
  v65 = &v61;
  v44 = *(v42 - 8);
  v45 = v44[8];
  __chkstk_darwin(v43);
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = &v61 - v46;
  (v44[2])(&v61 - v46);
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (v48 = swift_getAssociatedTypeWitness(), v67 = v44, v62 = &v61, __chkstk_darwin(v48), v63 = v39, swift_getAssociatedConformanceWitness(), v49 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v61 = &v61, __chkstk_darwin(v49), v39 = v63, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v50 = dispatch thunk of static Comparable.>= infix(_:_:)(), v44 = v67, result = (v67[1])(&v61 - v46, v42), (v50))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 63)
    {
      goto LABEL_35;
    }

    v75 = -1;
    v51 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v52 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v51)
    {
      v67 = v44;
      if (v52 <= 64)
      {
LABEL_33:
        v56 = swift_getAssociatedTypeWitness();
        v62 = &v61;
        __chkstk_darwin(v56);
        v63 = v39;
        swift_getAssociatedConformanceWitness();
        v57 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        __chkstk_darwin(v57);
        v39 = v63;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v58 = dispatch thunk of static Comparable.> infix(_:_:)();
        v44 = v67;
        (v67[1])(&v61 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
        if (v58)
        {
          goto LABEL_34;
        }

LABEL_35:
        v59 = dispatch thunk of BinaryInteger._lowWord.getter();
        (v44[1])(v47, v42);
        sub_10000CE78(v68);
        sub_10000CE78(v70);
        result = sub_10000CE78(v72);
        v60 = v66;
        *v66 = v64;
        v60[1] = v39;
        v60[2] = v59;
        return result;
      }

      __chkstk_darwin(v52);
      v53 = &v61 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1000384E4();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v54 = dispatch thunk of static Comparable.< infix(_:_:)();
      v55 = v67;
    }

    else
    {
      if (v52 < 65)
      {
LABEL_34:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_35;
      }

      v55 = v44;
      __chkstk_darwin(v52);
      v53 = &v61 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1000384E4();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v54 = dispatch thunk of static Comparable.< infix(_:_:)();
    }

    (v55[1])(v53, v42);
    v44 = v55;
    if ((v54 & 1) == 0)
    {
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10002DF80()
{
  v67 = type metadata accessor for Mirror();
  __chkstk_darwin(v67);
  v61 = v1;
  v68 = *(v1 + 96);
  v66 = *(v68 + 16);
  if (v66)
  {
    v5 = 0;
    v6 = v68 + 32;
    v7 = v3 + 8;
    v64 = (v3 + 8);
    v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      if (v5 >= *(v68 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v69 = v5;
      v8 = *(v6 + 2);
      v9 = *v6;
      active = &type metadata for USBDescriptorControl;
      v62 = v9;
      v63 = v8;
      BYTE2(v70[0]) = v8;
      LOWORD(v70[0]) = v9;
      Mirror.init(reflecting:)();
      v10 = Mirror.children.getter();
      v0 = *(v10 + 32);
      v7 = *(v10 + 40);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = dispatch thunk of _AnyIndexBox._typeID.getter();
      swift_getObjectType();
      v1 = v0;
      if (v11 != dispatch thunk of _AnyIndexBox._typeID.getter())
      {
        goto LABEL_42;
      }

      v12 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v12)
      {
        break;
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      v1 = v70[0];
      v0 = v70[1];
      sub_10000CE78(&v71);
      v7 = v64;
      v13 = *v64;
      ObjectType = 0x6E776F6E6B6E55;
      if (!v0)
      {
        goto LABEL_11;
      }

      v13(v65, v67);
      if (v1 == 0x636E657571657266 && v0 == 0xE900000000000079)
      {

LABEL_16:
        v16 = v61;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v1 = Strong;
          v7 = v62 | (v63 << 16);
          v18 = *(v16 + 120);
          v19 = swift_getObjectType();
          active = type metadata accessor for ActiveClockSource(0);
          v73 = &protocol witness table for ActiveClockSource;
          v70[0] = v16;
          v20 = *(v18 + 184);

          v21 = v60;
          v22 = v20(v7 & 0xFFFFFF, 0, 0, v70, v19, v18);
          if (v21)
          {
            swift_unknownObjectRelease();
            sub_10000CE78(v70);
            goto LABEL_20;
          }

          v36 = v22;
          v37 = v23;
          swift_unknownObjectRelease();
          sub_10000CE78(v70);
          v38 = v37;
          ADCControlRequestParameterBlock.getCur()(v70, v38, v36 & 0x1FF);

          v39 = active;
          v40 = sub_10001EAB8(v70, active);
          v41 = &v60;
          __chkstk_darwin(v40);
          v68 = v43;
          v69 = v42;
          v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
          v45 = &v60 - v44;
          (*(v42 + 16))(&v60 - v44);
          if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (v67 = &v60, v46 = swift_getAssociatedTypeWitness(), v66 = &v60, __chkstk_darwin(v46), swift_getAssociatedConformanceWitness(), v47 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v65 = &v60, __chkstk_darwin(v47), v41 = v67, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v48 = dispatch thunk of static Comparable.>= infix(_:_:)(), result = (*(v69 + 8))(&v60 - v44, v39), (v48))
          {
            if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
            {
              goto LABEL_40;
            }

            v74 = -1;
            v49 = dispatch thunk of static BinaryInteger.isSigned.getter();
            v50 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v49)
            {
              if (v50 <= 64)
              {
                v67 = v41;
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v66 = &v60;
                __chkstk_darwin(AssociatedTypeWitness);
                swift_getAssociatedConformanceWitness();
                v52 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v65 = &v60;
                __chkstk_darwin(v52);
                v54 = &v60 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v55 = dispatch thunk of static Comparable.> infix(_:_:)();
                (*(v69 + 8))(v54, v39);
                if (v55)
                {
LABEL_39:
                  dispatch thunk of BinaryInteger._lowWord.getter();
                }

                goto LABEL_40;
              }
            }

            else if (v50 < 65)
            {
              goto LABEL_39;
            }

            __chkstk_darwin(v50);
            v57 = &v60 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000384E4();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v69 + 8))(v57, v39);
            if (v58)
            {
              __break(1u);
              goto LABEL_39;
            }

LABEL_40:
            ObjectType = dispatch thunk of BinaryInteger._lowWord.getter();
            (*(v69 + 8))(v45, v39);
            sub_10000CE78(v70);
            strcpy(v70, "samplingRate ");
            HIWORD(v70[1]) = -4864;
            v74 = ObjectType;
            v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v59);

            sub_100038CD8("ActiveClockSource_getSamplingRate", 33, 2, v70[0], v70[1], v61 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID);

            return ObjectType;
          }

          __break(1u);
          return result;
        }

        sub_10000CA2C();
        swift_allocError();
        *v24 = 69;
        *(v24 + 8) = 0;
        *(v24 + 16) = 0xE000000000000000;
        swift_willThrow();
LABEL_20:
        v0 = _convertErrorToNSError(_:)();
        v6 = [v0 code];

        if (v6 >= 0xFFFFFFFF80000000)
        {
          if (v6 <= 0x7FFFFFFF)
          {
            v70[0] = 0;
            v70[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(33);
            v25 = v61;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v26 = *(v25 + 120);
              v27 = swift_getObjectType();
              ObjectType = ActiveFunction.deviceName.getter(v27, v26);
              v29 = v28;
              swift_unknownObjectRelease();
            }

            else
            {
              v29 = 0xE700000000000000;
            }

            v30._countAndFlagsBits = ObjectType;
            v30._object = v29;
            String.append(_:)(v30);

            v31._countAndFlagsBits = 0x20726F72724520;
            v31._object = 0xE700000000000000;
            String.append(_:)(v31);
            sub_100001AB4(&qword_100173C98, &unk_100120120);
            v32 = swift_allocObject();
            *(v32 + 16) = xmmword_10011DE90;
            *(v32 + 56) = &type metadata for Int32;
            *(v32 + 64) = &protocol witness table for Int32;
            *(v32 + 32) = v6;
            v33._countAndFlagsBits = String.init(format:_:)();
            String.append(_:)(v33);

            v34._object = 0x800000010012CC00;
            v34._countAndFlagsBits = 0xD000000000000016;
            String.append(_:)(v34);
            v1 = v70[0];
            v0 = v70[1];
            v7 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
            if (qword_100173CC0 == -1)
            {
              goto LABEL_26;
            }

            goto LABEL_45;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          swift_once();
LABEL_26:
          v35 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v35, qword_100179508);
          sub_100039F58(3, v61 + v7, v1, v0);

          if (v6 == -536850432)
          {

            return 0;
          }

          else
          {
            swift_willThrow();
          }

          return ObjectType;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_12:
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v1)
      {
        goto LABEL_16;
      }

      v5 = v69 + 1;
      v6 += 3;
      if (v66 == (v69 + 1))
      {
        goto LABEL_14;
      }
    }

    v7 = v64;
    v13 = *v64;
    ObjectType = 0x6E776F6E6B6E55;
LABEL_11:
    v13(v65, v67);

    v0 = 0xE700000000000000;
    goto LABEL_12;
  }

LABEL_14:
  sub_10000CA2C();
  swift_allocError();
  *v14 = 15;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0xE000000000000000;
  swift_willThrow();
  return ObjectType;
}

BOOL sub_10002EB04()
{
  v49 = type metadata accessor for Mirror();
  __chkstk_darwin(v49);
  ObjectType = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 96);
  v48 = *(v6 + 16);
  if (v48)
  {
    v42 = v2;
    v43 = v1;
    v7 = 0;
    v8 = (v6 + 32);
    v46 = (v3 + 8);
    v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v6;
    while (1)
    {
      if (v7 >= *(v6 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v50 = v7;
      v9 = *(v8 + 2);
      v10 = *v8;
      active = &type metadata for USBDescriptorControl;
      v56 = v9;
      BYTE2(v51) = v9;
      v44 = v10;
      LOWORD(v51) = v10;
      Mirror.init(reflecting:)();
      v11 = Mirror.children.getter();
      v0 = *(v11 + 24);
      ObjectType = *(v11 + 32);
      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of _AnyIndexBox._typeID.getter();
      swift_getObjectType();
      v1 = ObjectType;
      if (v12 != dispatch thunk of _AnyIndexBox._typeID.getter())
      {
        goto LABEL_33;
      }

      v13 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v13)
      {
        break;
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      v1 = v51;
      v0 = v52;
      sub_10000CE78(&v53);
      ObjectType = v47;
      v15 = *v46;
      v14 = 0x6E776F6E6B6E55;
      if (!v0)
      {
        v15(v47, v49);
        goto LABEL_12;
      }

      v15(v47, v49);
      if (v1 == 0x79746964696C6176 && v0 == 0xE800000000000000)
      {

LABEL_17:
        v8 = v43;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v1 = Strong;
          v18 = v44 | (v56 << 16);
          v19 = *(v8 + 15);
          ObjectType = swift_getObjectType();
          active = type metadata accessor for ActiveClockSource(0);
          v55 = &protocol witness table for ActiveClockSource;
          v51 = v8;
          v20 = *(v19 + 184);

          v21 = v42;
          v22 = v20(v18 & 0xFFFFFF, 0, 0, &v51, ObjectType, v19);
          if (v21)
          {
            swift_unknownObjectRelease();
            sub_10000CE78(&v51);
            v8 = v43;
          }

          else
          {
            v26 = v22;
            v27 = v23;
            ObjectType = v24;
            sub_10000CE78(&v51);
            ADCControlRequestParameterBlock.getCur()(&v51, v27, v26 & 0x1FF);
            sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
            v28 = swift_dynamicCast();
            v8 = v43;
            if (v28)
            {
              swift_unknownObjectRelease();

              return v57 != 0;
            }

            sub_10000CA2C();
            swift_allocError();
            *v29 = 1;
            *(v29 + 8) = 0;
            *(v29 + 16) = 0xE000000000000000;
            swift_willThrow();
            swift_unknownObjectRelease();
          }
        }

        else
        {
          sub_10000CA2C();
          swift_allocError();
          *v25 = 69;
          *(v25 + 8) = 0;
          *(v25 + 16) = 0xE000000000000000;
          swift_willThrow();
        }

        v0 = _convertErrorToNSError(_:)();
        v30 = [v0 code];

        if (v30 >= 0xFFFFFFFF80000000)
        {
          if (v30 <= 0x7FFFFFFF)
          {
            v51 = 0;
            v52 = 0xE000000000000000;
            _StringGuts.grow(_:)(34);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v31 = *(v8 + 15);
              v32 = swift_getObjectType();
              v14 = ActiveFunction.deviceName.getter(v32, v31);
              v34 = v33;
              swift_unknownObjectRelease();
            }

            else
            {
              v34 = 0xE700000000000000;
            }

            v35._countAndFlagsBits = v14;
            v35._object = v34;
            String.append(_:)(v35);

            v36._countAndFlagsBits = 0x20726F72724520;
            v36._object = 0xE700000000000000;
            String.append(_:)(v36);
            sub_100001AB4(&qword_100173C98, &unk_100120120);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_10011DE90;
            *(v37 + 56) = &type metadata for Int32;
            *(v37 + 64) = &protocol witness table for Int32;
            *(v37 + 32) = v30;
            v38._countAndFlagsBits = String.init(format:_:)();
            String.append(_:)(v38);

            v39._object = 0x800000010012C9C0;
            v39._countAndFlagsBits = 0xD000000000000017;
            String.append(_:)(v39);
            v1 = v51;
            v0 = v52;
            ObjectType = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
            if (qword_100173CC0 == -1)
            {
LABEL_30:
              v40 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v40, qword_100179508);
              sub_100039F58(3, &ObjectType[v8], v1, v0);

              swift_willThrow();
              return v16;
            }

LABEL_36:
            swift_once();
            goto LABEL_30;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_13:
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v1)
      {
        goto LABEL_17;
      }

      v7 = v50 + 1;
      v8 = (v8 + 3);
      v6 = v45;
      if (v48 == v50 + 1)
      {
        return 1;
      }
    }

    ObjectType = v47;
    v14 = 0x6E776F6E6B6E55;
    (*v46)(v47, v49);
LABEL_12:

    v0 = 0xE700000000000000;
    goto LABEL_13;
  }

  return 1;
}

void sub_10002F198()
{
  v2 = v1;
  v3 = v0;
  v45 = type metadata accessor for LogID(0);
  __chkstk_darwin(v45);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = 0;
  v42 = " fetching SamplingRate";
  v43 = "e_getSamplingRate";
  v40 = ": internal clock [";
  v41 = " fetching Validity";
  v38 = ", assuming valid";
  v39 = "control returned an error: ";
  v46 = xmmword_10011DE90;
  v48 = v5;
  while (1)
  {
    v49 = v6;
    v7 = sub_10002DF80();
    v47 = v2;
    if (!v2)
    {
      v44 = v7;
      goto LABEL_15;
    }

    v8 = _convertErrorToNSError(_:)();
    v9 = [v8 code];

    if (v9 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v9 > 0x7FFFFFFF)
    {
      goto LABEL_30;
    }

    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v3 + 120);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v10);
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0xE700000000000000;
      active = 0x6E776F6E6B6E55;
    }

    v15._countAndFlagsBits = active;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x20726F727245203ALL;
    v16._object = 0xE800000000000000;
    String.append(_:)(v16);
    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v17 = swift_allocObject();
    *(v17 + 16) = v46;
    *(v17 + 56) = &type metadata for Int32;
    *(v17 + 64) = &protocol witness table for Int32;
    *(v17 + 32) = v9;
    v18._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 0xD000000000000016;
    v19._object = (v43 | 0x8000000000000000);
    String.append(_:)(v19);
    v20 = v50;
    v21 = v51;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v22 = sub_10000A1BC(v45, qword_1001794F0);
    v5 = v48;
    sub_10000A2A4(v22, v48);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v23, qword_100179508);
    sub_100039F58(2, v5, v20, v21);

    sub_10000C9D0(v5);
    if (v9 == 268435459)
    {
      swift_willThrow();
      return;
    }

    v44 = 0;
LABEL_15:
    v2 = 0;
    if (!sub_10002EB04() && *(v3 + 80) == 1)
    {
      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v3 + 120);
        v25 = swift_getObjectType();
        v26 = ActiveFunction.deviceName.getter(v25, v24);
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E55;
      }

      v29._countAndFlagsBits = v26;
      v29._object = v28;
      String.append(_:)(v29);

      v30._object = (v41 | 0x8000000000000000);
      v30._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v30);
      v52 = *(v3 + 40);
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0xD000000000000022;
      v32._object = (v38 | 0x8000000000000000);
      String.append(_:)(v32);
      v33 = v50;
      v34 = v51;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v35 = sub_10000A1BC(v45, qword_1001794F0);
      sub_10000A2A4(v35, v5);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v36, qword_100179508);
      sub_100039F58(2, v5, v33, v34);

      sub_10000C9D0(v5);
    }

    v6 = 1;
    if (v49 & 1 | (v47 == 0))
    {
      return;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  __break(1u);
  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveClockSource.refreshSamplingRate()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002F198();
  if (v1)
  {
    return;
  }

  p_superclass = _TtC9AUASDCore12ADC2Function.superclass;
  v11 = v9;
  if (v9)
  {
    v12 = v8;
    v13 = sub_10002CA74();
    v14 = v13;
    v15 = v13[2];
    v60 = 0;
    if (v15)
    {
      v16 = 0;
      v17 = 1 - v15;
      v18 = v13 + 5;
      v19 = v13 + 5;
      do
      {
        v21 = *v19;
        v19 += 3;
        v20 = v21;
        if (v16)
        {
          if (!v17)
          {
            goto LABEL_37;
          }

          v16 = 1;
        }

        else if (v12 >= *(v18 - 1))
        {
          v16 = v20 >= v12;
          if (!v17)
          {
            if (v20 < v12)
            {
              goto LABEL_38;
            }

LABEL_37:
            v45 = v3 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate;
            *v45 = v12;
            *(v45 + 8) = 0;
            swift_beginAccess();
            *(v3 + 16) = v14;
            goto LABEL_14;
          }
        }

        else
        {
          if (!v17)
          {
            goto LABEL_38;
          }

          v16 = 0;
        }

        ++v17;
        v18 = v19;
      }

      while (v17 != 1);
      __break(1u);
      goto LABEL_46;
    }

LABEL_38:
    v46 = sub_10003026C(0, v13);
    v47 = v3 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate;
    *v47 = v46;
    *(v47 + 8) = 0;
    if (v46)
    {
      v48 = v46;
      swift_beginAccess();
      *(v3 + 16) = v14;

      v63 = 0;
      v64 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v49._object = 0x800000010012C550;
      v49._countAndFlagsBits = 0xD000000000000021;
      String.append(_:)(v49);
      v61 = v48;
      v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v50);

      v51._countAndFlagsBits = 0xD000000000000026;
      v51._object = 0x800000010012C580;
      String.append(_:)(v51);
      v61 = v12;
      v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v52);

      v53 = v63;
      v54 = v64;
      v55 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v56, qword_100179508);
      sub_100039AA0(3, v3 + v55, v53, v54);

      p_superclass = (_TtC9AUASDCore12ADC2Function + 8);
    }

    else
    {

      v57 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v58, qword_100179508);
      sub_100039F58(3, v3 + v57, 0xD00000000000002CLL, 0x800000010012C5B0);
      p_superclass = (_TtC9AUASDCore12ADC2Function + 8);
    }
  }

  else
  {
    v60 = 0;
    v22 = v0 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate;
    *v22 = 0;
    *(v22 + 8) = 1;
    swift_beginAccess();
    *(v0 + 16) = 0;
LABEL_14:
  }

  swift_beginAccess();
  *(v3 + 104) = v11 & 1;
  v61 = 0;
  v62 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v61 = 0x2064696C61567369;
  v62 = 0xE800000000000000;
  if (*(v3 + 104))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v3 + 104))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v23);

  v26._countAndFlagsBits = 0x696C706D6173202CLL;
  v26._object = 0xEF2065746152676ELL;
  String.append(_:)(v26);
  v27 = p_superclass[245] + v3;
  if (v27[8])
  {
    v28 = 0;
  }

  else
  {
    v28 = *v27;
  }

  v65 = v28;
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  v12 = v61;
  v2 = v62;
  v14 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
  if (qword_100173CB0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v30 = v3 + v14;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v31, qword_100179508);
    v61 = StaticString.description.getter();
    v62 = v32;
    v33._countAndFlagsBits = 32;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34._countAndFlagsBits = v12;
    v34._object = v2;
    String.append(_:)(v34);

    sub_100039AA0(4, v30, v61, v62);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v35, qword_100179508);
    v36 = type metadata accessor for LogID(0);
    (*(v5 + 16))(v7, v30 + *(v36 + 20), v4);

    v37 = OSSignposter.logHandle.getter();
    v38 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v12;
      v42 = v40;
      v61 = v40;
      *v39 = 136446210;
      v43 = sub_100035760(v41, v2, &v61);

      *(v39 + 4) = v43;
      v44 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v38, v44, "ActiveClockSource_refresh", "%{public}s", v39, 0xCu);
      sub_10000CE78(v42);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10003026C(unint64_t a1, const char *a2)
{
  v4 = type metadata accessor for LogID(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 2);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = 1 - v8;
  v11 = a2 + 40;
  v12 = a2 + 40;
  while (1)
  {
    v14 = *v12;
    v12 += 24;
    v13 = v14;
    if (!v9)
    {
      if (*(v11 - 1) <= a1)
      {
        v9 = v13 >= a1;
        if (!v10)
        {
          if (a1 - 1 < v13)
          {
            return a1;
          }

          goto LABEL_14;
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_14;
        }

        v9 = 0;
      }

      goto LABEL_4;
    }

    if (!v10)
    {
      break;
    }

    v9 = 1;
LABEL_4:
    ++v10;
    v11 = v12;
    if (v10 == 1)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v30 = v5;
      swift_once();
      v5 = v30;
LABEL_38:
      v27 = sub_10000A1BC(v5, qword_1001794F0);
      sub_10000A2A4(v27, v7);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v28, qword_100179508);
      sub_100039F58(3, v7, 0xD000000000000029, ((a2 - 32) | 0x8000000000000000));
      sub_10000C9D0(v7);
      return 0;
    }
  }

  if (a1)
  {
    return a1;
  }

LABEL_14:
  v15 = 0;
  v16 = 1 - v8;
  v17 = a2 + 40;
  a1 = 48000;
  v18 = a2 + 40;
  while (2)
  {
    v20 = *v18;
    v18 += 24;
    v19 = v20;
    if (v15)
    {
      if (!v16)
      {
        return a1;
      }

      v15 = 1;
      goto LABEL_16;
    }

    if (*(v17 - 1) >= 0xBB81uLL)
    {
      if (!v16)
      {
        goto LABEL_25;
      }

      v15 = 0;
      goto LABEL_16;
    }

    v15 = v19 >> 7 > 0x176;
    if (v16)
    {
LABEL_16:
      ++v16;
      v17 = v18;
      if (v16 == 1)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  if (v19 >> 7 > 0x176)
  {
    return 48000;
  }

LABEL_25:
  v21 = 0;
  v22 = 1 - v8;
  v23 = a2 + 40;
  a1 = 44100;
  v24 = a2 + 40;
  while (2)
  {
    v26 = *v24;
    v24 += 24;
    v25 = v26;
    if (v21)
    {
      if (!v22)
      {
        return a1;
      }

      v21 = 1;
      goto LABEL_27;
    }

    if (*(v23 - 1) >= 0xAC45uLL)
    {
      if (!v22)
      {
        goto LABEL_36;
      }

      v21 = 0;
      goto LABEL_27;
    }

    v21 = v25 > 0xAC43;
    if (v22)
    {
LABEL_27:
      ++v22;
      v23 = v24;
      if (v22 == 1)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  if (v25 > 0xAC43)
  {
    return 44100;
  }

LABEL_36:
  a1 = *(a2 + 4);
  if (*(a2 + 5) != a1)
  {
    a2 = "Could not determine a valid sampling rate";
    if (qword_100173CB8 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

  return a1;
}

void ActiveClockSource.start(on:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 16))(ObjectType, a2);
  if (!v7)
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 58;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v8 = v7;
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  if (*(v2 + 34) != 255 && *&v8[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject])
  {
    v9 = sub_1000F8280((*(v2 + 32) | (*(v2 + 34) << 16) & 0x1FFFFu));
    if (v3)
    {
LABEL_17:

      return;
    }

    if (v10)
    {
      v21 = v9;
      v22 = v10;
      sub_10001EA64();
      v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v13 = v12;

      goto LABEL_16;
    }
  }

  if (*(v2 + 80))
  {
    v11 = 0x656369766544;
    v13 = 0xE600000000000000;
    goto LABEL_16;
  }

  v13 = 0xEE006B636F6C4320;
  v11 = 0x6C616E7265747845;
  v15 = *(v2 + 88);
  if (!v15)
  {
    goto LABEL_16;
  }

  sub_100052184(v15, ObjectType, a2, &v21);
  if (!v23)
  {
    sub_10000D040(&v21, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_16;
  }

  sub_100001AB4(&qword_100174F60, &qword_100121090);
  type metadata accessor for ActiveInputTerminal();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    swift_beginAccess();
    *(v4 + 128) = v11;
    *(v4 + 136) = v13;

    ActiveClockSource.refreshSamplingRate()();
    goto LABEL_17;
  }

  v16 = *(v20 + 136);
  if (v16 == 257)
  {

    v13 = 0xE800000000000000;
    v11 = 0x636E79532063614DLL;
    goto LABEL_16;
  }

  if (*(v20 + 66) != 255)
  {
    if (*&v8[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject])
    {
      v17 = sub_1000F8280((*(v20 + 64) | (*(v20 + 66) << 16) & 0x1FFFFu));
      if (v3)
      {

        return;
      }

      if (v18)
      {
        v21 = v17;
        v22 = v18;
        sub_10001EA64();
        v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v13 = v19;

        goto LABEL_16;
      }
    }

    v11 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  if (!(v16 >> 16))
  {

    if (v16 <= 0x300u)
    {
      if (v16 == 257)
      {
        v13 = 0xED0000676E696D61;
        v11 = 0x6572745320425355;
        goto LABEL_16;
      }

      if (v16 == 513)
      {
        v13 = 0xEA0000000000656ELL;
        v11 = 0x6F68706F7263694DLL;
        goto LABEL_16;
      }
    }

    else
    {
      switch(v16)
      {
        case 0x301u:
          v13 = 0xE700000000000000;
          v11 = 0x72656B61657053;
          goto LABEL_16;
        case 0x402u:
          v13 = 0xE700000000000000;
          v11 = 0x74657364616548;
          goto LABEL_16;
        case 0x603u:
          v13 = 0xE400000000000000;
          v11 = 1701734732;
          goto LABEL_16;
      }
    }

    v13 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E55;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t ActiveClockSource.curSamplingRate.setter(unint64_t a1, char a2)
{
  v4 = v2;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = "need a value for setting the sampling rate";
    goto LABEL_3;
  }

  ObjectType = v4 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate;
  if (*(v4 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate + 8) & 1) == 0 && *ObjectType == a1 && (*(v4 + 144))
  {
    return result;
  }

  result = swift_beginAccess();
  if (*(v4 + 24) != 1)
  {
    return result;
  }

  if (!a1)
  {
    *ObjectType = 0;
    *(ObjectType + 8) = 1;
    return result;
  }

  swift_beginAccess();
  v18 = *(v4 + 16);
  if (!v18)
  {
    v12 = "no available sampling rates for this clock";
LABEL_3:
    ObjectType = (v12 - 32);
    v3 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
    if (qword_100173CC0 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_4;
  }

  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_41;
  }

  v20 = 0;
  v21 = 1 - v19;
  v22 = (v18 + 40);
  v23 = (v18 + 40);
  while (1)
  {
    v25 = *v23;
    v23 += 3;
    v24 = v25;
    if (v20)
    {
      if (!v21)
      {
        goto LABEL_25;
      }

      v20 = 1;
      goto LABEL_15;
    }

    if (*(v22 - 1) > a1)
    {
      if (!v21)
      {
        goto LABEL_41;
      }

      v20 = 0;
      goto LABEL_15;
    }

    v20 = v24 >= a1;
    if (!v21)
    {
      break;
    }

LABEL_15:
    ++v21;
    v22 = v23;
    if (v21 == 1)
    {
      __break(1u);
LABEL_60:
      swift_once();
LABEL_4:
      v14 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v14, qword_100179508);
      v15 = v4 + v3;
      v16 = (ObjectType | 0x8000000000000000);
      v17 = 0xD00000000000002ALL;
      return sub_100039F58(3, v15, v17, v16);
    }
  }

  if (v24 < a1)
  {
LABEL_41:
    v89[0] = 0;
    v89[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v39._countAndFlagsBits = 0xD00000000000001CLL;
    v39._object = 0x800000010012C730;
    String.append(_:)(v39);
    v88[0] = a1;
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 0xD000000000000017;
    v41._object = 0x800000010012C750;
    String.append(_:)(v41);
    ObjectType = v89[0];
    v26 = v89[1];
    v28 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
    if (qword_100173CC0 == -1)
    {
LABEL_42:
      v42 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v42, qword_100179508);
      sub_100039F58(3, v4 + v28, ObjectType, v26);
    }

LABEL_63:
    swift_once();
    goto LABEL_42;
  }

LABEL_25:
  v77 = ObjectType;
  v78 = a1;
  v79 = v4;
  v86 = *(v4 + 96);
  v85 = *(v86 + 16);
  if (!v85)
  {
LABEL_38:
    v37 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v38, qword_100179508);
    v15 = v79 + v37;
    v17 = 0xD000000000000038;
    v16 = 0x800000010012C640;
    return sub_100039F58(3, v15, v17, v16);
  }

  v26 = 0;
  v27 = (v86 + 32);
  v28 = v8 + 8;
  v84 = v7;
  v82 = v11;
  v83 = (v8 + 8);
  while (2)
  {
    if (v26 >= *(v86 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v29 = *(v27 + 2);
    v30 = *v27;
    v91 = &type metadata for USBDescriptorControl;
    v81 = v29;
    BYTE2(v89[0]) = v29;
    v80 = v30;
    LOWORD(v89[0]) = v30;
    Mirror.init(reflecting:)();
    v4 = *(Mirror.children.getter() + 32);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v28 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v28 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_62;
    }

    v31 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v31)
    {

      v28 = v83;
      v32 = v84;
      v33 = *v83;
      goto LABEL_35;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v34 = v89[0];
    v35 = v89[1];
    sub_10000CE78(&v90);
    v28 = v83;
    v32 = v84;
    v33 = *v83;
    if (!v35)
    {
LABEL_35:
      active = 0x6E776F6E6B6E55;
      v33(v82, v32);

LABEL_36:
      ObjectType = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (ObjectType)
      {
        goto LABEL_44;
      }

      ++v26;
      v27 = (v27 + 3);
      if (v85 == v26)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v33(v82, v84);
  active = 0x6E776F6E6B6E55;
  if (v34 != 0x636E657571657266 || v35 != 0xE900000000000079)
  {
    goto LABEL_36;
  }

LABEL_44:
  strcpy(v89, "samplingRate ");
  HIWORD(v89[1]) = -4864;
  v43 = v78;
  v88[0] = v78;
  v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v45 = v89;
  String.append(_:)(v44);

  v46 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
  v47 = v79;
  sub_100038CD8("ActiveClockSource_setCurSampleRate", 34, 2, v89[0], v89[1], v79 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID);

  *(v47 + 144) = 1;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_10000CA2C();
    swift_allocError();
    *v51 = 69;
    *(v51 + 8) = 0;
    *(v51 + 16) = 0xE000000000000000;
    swift_willThrow();
    v54 = _convertErrorToNSError(_:)();
    v55 = [v54 code];

    if (v55 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v55 <= 0x7FFFFFFF)
    {
      v89[0] = 0;
      v89[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v56 = v79;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v57 = *(v56 + 120);
        v58 = swift_getObjectType();
        active = ActiveFunction.deviceName.getter(v58, v57);
        v60 = v59;
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0xE700000000000000;
      }

      v61._countAndFlagsBits = active;
      v61._object = v60;
      String.append(_:)(v61);

      v62._countAndFlagsBits = 0x20726F72726520;
      v62._object = 0xE700000000000000;
      String.append(_:)(v62);
      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_10011DE90;
      *(v63 + 56) = &type metadata for Int32;
      *(v63 + 64) = &protocol witness table for Int32;
      *(v63 + 32) = v55;
      v64._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v64);

      v65._countAndFlagsBits = 0xD000000000000030;
      v65._object = 0x800000010012C6B0;
      String.append(_:)(v65);
      v87 = v78;
      v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v66);

      v45 = v89[0];
      v54 = v89[1];
      if (qword_100173CC0 == -1)
      {
        goto LABEL_52;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_66:
    swift_once();
LABEL_52:
    v67 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v67, qword_100179508);
    sub_100039F58(3, v79 + v46, v45, v54);
  }

  v48 = v80 | (v81 << 16);
  v49 = *(v47 + 120);
  v50 = swift_getObjectType();
  v91 = type metadata accessor for ActiveClockSource(0);
  v92 = &protocol witness table for ActiveClockSource;
  v89[0] = v47;

  sub_100053170(v48 & 0xFFFFFF, 0, 0, v89, v43, v50, v49);
  sub_10000CE78(v89);
  v52 = v77;
  *v77 = v43;
  *(v52 + 8) = 0;
  v53 = sub_10002DF80();
  if ((v52[1] & 1) != 0 || v53 != *v52)
  {
    v89[0] = 0;
    v89[1] = 0xE000000000000000;
    v68 = v53;
    _StringGuts.grow(_:)(66);
    v69._countAndFlagsBits = 0xD000000000000038;
    v69._object = 0x800000010012C6F0;
    String.append(_:)(v69);
    v87 = v78;
    v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v70);

    v71._countAndFlagsBits = 0x206461657220;
    v71._object = 0xE600000000000000;
    String.append(_:)(v71);
    v87 = v68;
    v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v72);

    v74 = v89[0];
    v73 = v89[1];
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v75, qword_100179508);
    sub_100039F58(3, v79 + v46, v74, v73);
  }

  swift_unknownObjectRelease();
  result = mach_absolute_time();
  *(v79 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_lastSamplingRateChangedTimestamp) = result;
  return result;
}

uint64_t (*ActiveClockSource.curSamplingRate.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate);
  *(a1 + 8) = v2;
  return sub_100031528;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveClockSource.prepareClockForIO(_:)(Swift::UInt64 a1)
{
  v2 = v1;
  v4 = mach_absolute_time();
  v5 = *(v2 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_lastSamplingRateChangedTimestamp);
  v6 = v4 - v5;
  if (v4 < v5)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (!is_mul_ok(v6, qword_100179650))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (!HIDWORD(qword_100179650))
    {
LABEL_15:
      __break(1u);
      return;
    }

    v6 = v6 * qword_100179650 / HIDWORD(qword_100179650);
  }

  v7 = a1 >= v6 / 0x3E8;
  v8 = a1 - v6 / 0x3E8;
  if (v8 != 0 && v7)
  {
    if (!HIDWORD(v8))
    {
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 7566624;
      v10._object = 0xE300000000000000;
      String.append(_:)(v10);
      sub_100038CD8("ActiveClockSource_prepareClock", 30, 2, 0x2079616C6564, 0xE600000000000000, v2 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID);

      usleep(v8);
      return;
    }

    goto LABEL_14;
  }
}

Swift::Void __swiftcall ActiveClockSource.invalidateSamplingRate()()
{
  v1 = v0 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate;
  *v1 = 0;
  *(v1 + 8) = 1;
}

void *ActiveClockSource.deinit()
{

  sub_100024174(v0 + 112);

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID);
  return v0;
}

uint64_t ActiveClockSource.__deallocating_deinit()
{

  sub_100024174(v0 + 112);

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID);

  return swift_deallocClassInstance();
}

uint64_t sub_10003182C@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v10[0] = v1[2];
  v10[1] = v3;
  v4 = v1[5];
  v10[2] = v1[4];
  v10[3] = v4;
  a1[3] = &type metadata for ClockSource;
  a1[4] = sub_10002C3E4();
  v5 = swift_allocObject();
  *a1 = v5;
  v6 = v1[3];
  v5[1] = v1[2];
  v5[2] = v6;
  v7 = v1[5];
  v5[3] = v1[4];
  v5[4] = v7;
  return sub_10002C080(v10, &v9);
}

uint64_t sub_1000318C4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[5];
  v13[2] = v3[4];
  v13[3] = v6;
  v13[0] = v5;
  v13[1] = v4;
  a1[3] = &type metadata for ClockSource;
  a1[4] = sub_10002C514();
  v7 = swift_allocObject();
  *a1 = v7;
  v8 = v3[5];
  v10 = v3[2];
  v9 = v3[3];
  v7[3] = v3[4];
  v7[4] = v8;
  v7[1] = v10;
  v7[2] = v9;
  return sub_10002C080(v13, &v12);
}

uint64_t sub_100031990(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1000319F4(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100038548;
}

void sub_100031A8C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 120) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100031B1C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 128);

  return v2;
}

uint64_t (*ActiveClockSelector.function.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

uint64_t ActiveClockSelector.staticClockSelector.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
}

uint64_t ActiveClockSelector.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);

  return v1;
}

uint64_t ActiveClockSelector.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t sub_100031E10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  a2[3] = &type metadata for ClockSelector;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = *(v2 + 48);
  *(v7 + 16) = *(v2 + 32);
  *(v7 + 32) = v8;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
}

uint64_t ActiveClockSelector.curInputPin.setter(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  *(v1 + 113) = HIBYTE(a1) & 1;
  return result;
}

uint64_t sub_100031F88(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 256;
  v5 = OBJC_IVAR____TtC9AUASDCore19ActiveClockSelector_logID;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for LogID(0);
  v7 = sub_10000A1BC(v6, qword_1001794F0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v8, qword_100179508);
  sub_100039740(0xD000000000000013, 0x80000001001212B0, v7, (v3 + v5));
  v9 = *(a1 + 16);
  *(v3 + 32) = *a1;
  *(v3 + 48) = v9;
  *(v3 + 64) = *(a1 + 32);
  *(v3 + 80) = *(a1 + 48);
  return v3;
}

uint64_t ActiveClockSelector.start(on:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  active = 0x6E776F6E6B6E55;
  v6 = type metadata accessor for LogID(0);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_100032520();
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v43 = v41;
  v44 = v42;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v9);
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13._countAndFlagsBits = active;
  v13._object = v12;
  String.append(_:)(v13);

  v14._object = 0x800000010012C790;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  v15 = *(v3 + 40);
  v41 = v15;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD000000000000013;
  v17._object = 0x800000010012C1E0;
  String.append(_:)(v17);
  swift_beginAccess();
  v18 = *(v3 + 112);
  if (*(v3 + 113))
  {
    v18 = 0;
  }

  LOBYTE(v45) = v18;
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20 = v43;
  v21 = v44;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A1BC(v6, qword_1001794F0);
  sub_10000A2A4(v22, v8);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v23, qword_100179508);
  sub_100039AA0(2, v8, v20, v21);

  result = sub_10000C9D0(v8);
  if ((*(v3 + 113) & 1) == 0)
  {
    v25 = *(v3 + 112);
    v26 = v40;
    sub_1000330B4(v25);
    if (v26)
    {
      if (*(*(v3 + 72) + 16) == 1)
      {
      }

      else
      {
        return swift_willThrow();
      }
    }

    else
    {
      v40 = 0;
      v43 = 0;
      v44 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v3 + 24);
        v28 = swift_getObjectType();
        v29 = ActiveFunction.deviceName.getter(v28, v27);
        v31 = v30;
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E55;
      }

      v32._countAndFlagsBits = v29;
      v32._object = v31;
      String.append(_:)(v32);

      v33._object = 0x800000010012C790;
      v33._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v33);
      v45 = v15;
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v35._countAndFlagsBits = 0x676E697474657320;
      v35._object = 0xEC000000206F7420;
      String.append(_:)(v35);
      LOBYTE(v45) = v25;
      v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v36);

      v37 = v43;
      v38 = v44;
      sub_10000A2A4(v22, v8);
      sub_100039AA0(2, v8, v37, v38);

      return sub_10000C9D0(v8);
    }
  }

  return result;
}

uint64_t sub_100032520()
{
  v3 = v0;
  v4 = type metadata accessor for LogID(0);
  __chkstk_darwin(v4);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Mirror();
  __chkstk_darwin(v86);
  v9 = *(*(v0 + 72) + 16);
  if (!v9)
  {
    goto LABEL_20;
  }

  if (v9 == 1)
  {
LABEL_29:
    result = swift_beginAccess();
    *(v3 + 112) = 1;
    goto LABEL_30;
  }

  v10 = *(v0 + 80);
  if (!v10)
  {
LABEL_20:
    v79 = v4;
    sub_10000CA2C();
    v22 = swift_allocError();
    *v24 = 87;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_21:
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v90 = v87;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = v3[3];
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v25);
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      active = 0x6E776F6E6B6E55;
      v29 = 0xE700000000000000;
    }

    v30._countAndFlagsBits = active;
    v30._object = v29;
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x20726F727245203ALL;
    v31._object = 0xE800000000000000;
    String.append(_:)(v31);
    v91[0] = v22;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v32._countAndFlagsBits = 0xD000000000000013;
    v32._object = 0x800000010012CAC0;
    String.append(_:)(v32);
    v91[0] = v3[5];
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._object = 0x800000010012C4C0;
    v34._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v34);
    v35 = v90;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v36 = sub_10000A1BC(v79, qword_1001794F0);
    sub_10000A2A4(v36, v6);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v37, qword_100179508);
    sub_100039F58(2, v6, v35, *(&v35 + 1));

    sub_10000C9D0(v6);
    goto LABEL_29;
  }

  v76 = *(v0 + 72);
  v79 = v4;
  v77 = v6;
  v78 = v0;
  v85 = *(v10 + 16);
  if (!v85)
  {
LABEL_18:
    sub_10000CA2C();
    v22 = swift_allocError();
    *v23 = 14;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_19:
    v3 = v78;
    v6 = v77;
    goto LABEL_21;
  }

  v11 = 0;
  v12 = (v10 + 32);
  v13 = (v7 + 8);
  v83 = (v7 + 8);
  v84 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v10;
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v14 = v12[2];
    v15 = *v12;
    *(&v88 + 1) = &type metadata for USBDescriptorControl;
    v80 = v15;
    v81 = v14;
    BYTE2(v87) = v14;
    LOWORD(v87) = v15;
    Mirror.init(reflecting:)();
    v16 = Mirror.children.getter();
    v13 = v16[3];
    v2 = v16[4];
    v1 = v16[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v17 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v17 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_47;
    }

    v18 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v18)
    {

      v13 = v83;
      v2 = 0x6E776F6E6B6E55;
      (*v83)(v84, v86);
LABEL_15:

      v1 = 0x6E776F6E6B6E75;
      goto LABEL_16;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v19 = *(&v87 + 1);
    v1 = v87;
    sub_10000CE78(&v88);
    v13 = v83;
    v20 = *v83;
    v2 = 0x6E776F6E6B6E55;
    if (!v19)
    {
      v20(v84, v86);
      goto LABEL_15;
    }

    v20(v84, v86);
    if (v1 == 0x726F7463656C6573 && v19 == 0xE800000000000000)
    {
      break;
    }

LABEL_16:
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_31;
    }

    ++v11;
    v12 += 3;
    v10 = v82;
    if (v85 == v11)
    {
      goto LABEL_18;
    }
  }

LABEL_31:
  v39 = v78;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v40 = v80 | (v81 << 16), v41 = v39[3], v42 = swift_getObjectType(), *(&v88 + 1) = type metadata accessor for ActiveClockSelector(0), v89 = &protocol witness table for ActiveClockSelector, *&v87 = v39, v43 = *(v41 + 23), , v44 = v43(v40 & 0xFFFFFF, 0, 0, &v87, v42, v41), v46 = v45, v47 = v44, swift_unknownObjectRelease(), sub_10000CE78(&v87), !v46))
  {
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    sub_10000D040(&v87, &qword_100175790, &unk_100121070);
    v12 = 0;
    goto LABEL_35;
  }

  v12 = v46;
  ADCControlRequestParameterBlock.getCur()(&v87, v12, v47 & 0x1FF);

  sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v48 = v78;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v49 = v48[3];
      v50 = swift_getObjectType();
      v2 = ActiveFunction.deviceName.getter(v50, v49);
      v52 = v51;
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0xE700000000000000;
    }

    v53._countAndFlagsBits = v2;
    v53._object = v52;
    String.append(_:)(v53);

    v54._countAndFlagsBits = 0xD00000000000002FLL;
    v54._object = 0x800000010012CAE0;
    String.append(_:)(v54);
    *&v90 = v48[5];
    v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v55);

    v56._object = 0x800000010012C4C0;
    v56._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v56);
    v57 = v87;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v58 = sub_10000A1BC(v79, qword_1001794F0);
    v59 = v77;
    sub_10000A2A4(v58, v77);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v60, qword_100179508);
    sub_100039F58(2, v59, v57, *(&v57 + 1));

    sub_10000C9D0(v59);
    v3 = v78;
    goto LABEL_29;
  }

  v1 = v90;
  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v13 = v78;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v61 = v13[3];
    v62 = swift_getObjectType();
    v2 = ActiveFunction.deviceName.getter(v62, v61);
    v64 = v63;
    swift_unknownObjectRelease();
    goto LABEL_49;
  }

LABEL_48:
  v64 = 0xE700000000000000;
LABEL_49:
  v65._countAndFlagsBits = v2;
  v65._object = v64;
  String.append(_:)(v65);

  v66._countAndFlagsBits = 0xD000000000000011;
  v66._object = 0x800000010012C790;
  String.append(_:)(v66);
  *&v90 = v13[5];
  v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v67);

  v68._object = 0x800000010012C510;
  v68._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v68);
  LOBYTE(v90) = v1;
  v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v69);

  v70 = v87;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v71 = sub_10000A1BC(v79, qword_1001794F0);
  v72 = v77;
  sub_10000A2A4(v71, v77);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v73, qword_100179508);
  sub_100039AA0(2, v72, v70, *(&v70 + 1));

  sub_10000C9D0(v72);
  if (!v1 || *(v76 + 16) < v1)
  {
    sub_10000CA2C();
    v22 = swift_allocError();
    *v74 = 61;
    *(v74 + 8) = 0;
    *(v74 + 16) = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_19;
  }

  v3 = v78;
  result = swift_beginAccess();
  *(v3 + 112) = v1;
LABEL_30:
  *(v3 + 113) = 0;
  return result;
}

uint64_t sub_1000330B4(unint64_t a1)
{
  v36 = type metadata accessor for Mirror();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    sub_10000CA2C();
    swift_allocError();
    *v19 = 69;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v29 = v1;
  v30 = result;
  v27 = v2;
  v28 = a1;
  v37 = *(v1 + 80);
  if (!v37 || (v35 = *(v37 + 16)) == 0)
  {
LABEL_17:
    sub_10000CA2C();
    swift_allocError();
    *v18 = 14;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0xE000000000000000;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v8 = 0;
  v26 = *(v29 + 24);
  v9 = (v37 + 32);
  v33 = (v4 + 8);
  v34 = v6;
  while (1)
  {
    if (v8 >= *(v37 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v42 = v8;
    v10 = *(v9 + 2);
    v11 = *v9;
    active = &type metadata for USBDescriptorControl;
    v31 = v11;
    v32 = v10;
    BYTE2(v38[0]) = v10;
    LOWORD(v38[0]) = v11;
    Mirror.init(reflecting:)();
    Mirror.children.getter();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v12 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v12 != result)
    {
      goto LABEL_24;
    }

    v13 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v13)
    {

      (*v33)(v34, v36);
LABEL_14:

      goto LABEL_15;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v14 = v38[0];
    v15 = v38[1];
    sub_10000CE78(&v39);
    v16 = *v33;
    if (!v15)
    {
      v16(v34, v36);
      goto LABEL_14;
    }

    v16(v34, v36);
    if (v14 == 0x726F7463656C6573 && v15 == 0xE800000000000000)
    {
      break;
    }

LABEL_15:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_20;
    }

    v8 = v42 + 1;
    v9 = (v9 + 3);
    if (v35 == v42 + 1)
    {
      goto LABEL_17;
    }
  }

LABEL_20:
  v20 = v31 | (v32 << 16);
  ObjectType = swift_getObjectType();
  active = type metadata accessor for ActiveClockSelector(0);
  v41 = &protocol witness table for ActiveClockSelector;
  v22 = v29;
  v38[0] = v29;

  v23 = v27;
  v24 = v28;
  sub_100053170(v20 & 0xFFFFFF, 0, 0, v38, v28, ObjectType, v26);
  swift_unknownObjectRelease();
  result = sub_10000CE78(v38);
  if (v23)
  {
    return result;
  }

  if (v24 <= 0xFF)
  {
    result = swift_beginAccess();
    *(v22 + 112) = v24;
    *(v22 + 113) = 0;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100033518()
{
  v1 = type metadata accessor for LogID(0);
  __chkstk_darwin(v1);
  v3 = &v32[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *(v0 + 72);
  v5 = *(v4 + 16);
  if (v5 == 1)
  {
    v6 = (v4 + 32);
    goto LABEL_3;
  }

  swift_beginAccess();
  if ((*(v0 + 113) & 1) == 0)
  {
    v18 = *(v0 + 112);
    if (*(v0 + 112) && v5 >= v18)
    {
      v6 = (v4 + 8 * (v18 - 1) + 32);
    }

    else
    {
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(36);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v0 + 24);
        ObjectType = swift_getObjectType();
        active = ActiveFunction.deviceName.getter(ObjectType, v19);
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0xE700000000000000;
        active = 0x6E776F6E6B6E55;
      }

      v24._countAndFlagsBits = active;
      v24._object = v23;
      String.append(_:)(v24);

      v25._object = 0x800000010012C790;
      v25._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v25);
      v34[0] = *(v0 + 40);
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      v27._countAndFlagsBits = 0x6461622073616820;
      v27._object = 0xED00002052554320;
      String.append(_:)(v27);
      LOBYTE(v34[0]) = v18;
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      v29 = v35;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v30 = sub_10000A1BC(v1, qword_1001794F0);
      sub_10000A2A4(v30, v3);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v31, qword_100179508);
      sub_100039F58(2, v3, v29, *(&v29 + 1));

      result = sub_10000C9D0(v3);
      if (!*(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v6 = (v4 + 32);
    }

LABEL_3:
    v7 = *v6;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v0 + 24);
      v9 = swift_getObjectType();
      sub_100052184(v7, v9, v8, &v35);
      swift_unknownObjectRelease();
      if (*(&v36 + 1))
      {
        sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100175360, &qword_100121340);
        if (swift_dynamicCast())
        {
          return v33;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
    }

    sub_10000D040(&v35, &qword_100174FB0, &unk_100120FC0);
LABEL_11:
    v11 = 61;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:
  sub_10000CA2C();
  v12 = swift_allocError();
  *v13 = v11;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0xE000000000000000;
  swift_willThrow();
  *&v35 = 0;
  *(&v35 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v14._countAndFlagsBits = 0xD000000000000014;
  v14._object = 0x800000010012CA30;
  String.append(_:)(v14);
  v33 = v12;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v15 = v35;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A1BC(v1, qword_1001794F0);
  sub_10000A2A4(v16, v3);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v17, qword_100179508);
  sub_100039F58(2, v3, v15, *(&v15 + 1));

  sub_10000C9D0(v3);
  return 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveClockSelector.refreshSamplingRate()()
{
  if (sub_100033518())
  {
    v1 = v0;
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v3 = 87;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

Swift::Void __swiftcall ActiveClockSelector.invalidateSamplingRate()()
{
  if (sub_100033518())
  {
    v1 = v0;
    ObjectType = swift_getObjectType();
    (*(*(v1 + 16) + 72))(ObjectType);

    swift_unknownObjectRelease();
  }
}

uint64_t ActiveClockSelector.rateRanges.getter()
{
  result = sub_100033518();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = (*(*(v2 + 16) + 40))(ObjectType);
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t ActiveClockSelector.isValid.getter()
{
  result = sub_100033518();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(*(v2 + 16) + 8))(ObjectType);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

uint64_t ActiveClockSelector.isInternal.getter()
{
  result = sub_100033518();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(*(v2 + 16) + 56))(ObjectType);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

uint64_t ActiveClockSelector.curSamplingRate.getter()
{
  if (!sub_100033518())
  {
    return 0;
  }

  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(*(v1 + 16) + 16))(ObjectType);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t ActiveClockSelector.curSamplingRate.setter(uint64_t a1, char a2)
{
  result = sub_100033518();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(*(v6 + 16) + 24))(a1, a2 & 1, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*ActiveClockSelector.curSamplingRate.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  if (sub_100033518())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v4 + 16) + 16))(ObjectType);
    v8 = v7;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  *a1 = v6;
  *(a1 + 8) = v8 & 1;
  return sub_100033DF4;
}

uint64_t sub_100033DF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = sub_100033518();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(*(v5 + 16) + 24))(v1, v2, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ActiveClockSelector.isSettable.getter()
{
  result = sub_100033518();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(*(v2 + 16) + 48))(ObjectType);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveClockSelector.prepareClockForIO(_:)(Swift::UInt64 a1)
{
  if (sub_100033518())
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(*(v3 + 16) + 64))(a1, ObjectType);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v5 = 87;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

uint64_t ActiveClockSelector.deinit()
{
  sub_100024174(v0 + 16);

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore19ActiveClockSelector_logID);
  return v0;
}

uint64_t ActiveClockSelector.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore19ActiveClockSelector_logID);

  return swift_deallocClassInstance();
}

uint64_t sub_10003409C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  a1[3] = &type metadata for ClockSelector;
  a1[4] = sub_10003771C();
  v6 = swift_allocObject();
  *a1 = v6;
  v7 = *(v1 + 48);
  *(v6 + 16) = *(v1 + 32);
  *(v6 + 32) = v7;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
}

uint64_t sub_100034134@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(v3 + 72);
  v6 = *(v3 + 80);
  a1[3] = &type metadata for ClockSelector;
  a1[4] = sub_1000377B8();
  v7 = swift_allocObject();
  *a1 = v7;
  v8 = *(v3 + 48);
  *(v7 + 16) = *(v3 + 32);
  *(v7 + 32) = v8;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
}

uint64_t (*sub_1000341D0(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t sub_100034268()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 88);

  return v2;
}

id AUAClockSelectorControl.changeValues(_:withCount:)(_DWORD *a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (a2 == 1)
    {
      if (!a1)
      {
        __break(1u);
        return result;
      }

      if (*a1)
      {
        v10 = [v2 setSelectedValues:a1 withCount:1];

        return v10;
      }

      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v40 = v38;
      v41 = v39;
      v24._countAndFlagsBits = 0x6553206B636F6C43;
      v24._object = 0xEF20726F7463656CLL;
      String.append(_:)(v24);
      v38 = *(v9 + 40);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 0x69766564206E6F20;
      v26._object = 0xEB00000000206563;
      String.append(_:)(v26);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v9 + 24);
        ObjectType = swift_getObjectType();
        active = ActiveFunction.deviceName.getter(ObjectType, v27);
        v31 = v30;
        swift_unknownObjectRelease();
      }

      else
      {
        active = 0x6E776F6E6B6E55;
        v31 = 0xE700000000000000;
      }

      v32._countAndFlagsBits = active;
      v32._object = v31;
      String.append(_:)(v32);

      v23 = 0xD000000000000021;
      v22 = 0x800000010012C280;
    }

    else
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(71);
      v40 = v38;
      v41 = v39;
      v11._countAndFlagsBits = 0x6553206B636F6C43;
      v11._object = 0xEF20726F7463656CLL;
      String.append(_:)(v11);
      v38 = *(v9 + 40);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 0x69766564206E6F20;
      v13._object = 0xEB00000000206563;
      String.append(_:)(v13);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v9 + 24);
        v15 = swift_getObjectType();
        v16 = ActiveFunction.deviceName.getter(v15, v14);
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0x6E776F6E6B6E55;
        v18 = 0xE700000000000000;
      }

      v19._countAndFlagsBits = v16;
      v19._object = v18;
      String.append(_:)(v19);

      v20._countAndFlagsBits = 0xD000000000000014;
      v20._object = 0x800000010012C240;
      String.append(_:)(v20);
      v37 = a2;
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22 = 0x800000010012C260;
      v23 = 0xD000000000000013;
    }

    String.append(_:)(*&v23);
    v33 = v40;
    v34 = v41;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v35 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v35, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v36, qword_100179508);
    sub_100039F58(2, v7, v33, v34);

    sub_10000C9D0(v7);
    return 0;
  }

  return result;
}

Swift::Void __swiftcall AUAClockSelectorControl.selectionDidChange(_:)(Swift::OpaquePointer_optional a1)
{
  v3 = v1;
  rawValue = a1.value._rawValue;
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 owner];
  if (!v8)
  {
    return;
  }

  v82 = v8;
  v9 = type metadata accessor for AUAAudioDevice(0);
  v10 = swift_dynamicCastClass();
  if (!v10 || (v81 = v10, v11 = OBJC_IVAR____TtC9AUASDCore23AUAClockSelectorControl_clockSelector, (Strong = swift_weakLoadStrong()) == 0))
  {
    v17 = v82;

    return;
  }

  v13 = Strong;
  if (!rawValue)
  {

    return;
  }

  v80 = v11;
  if (!(rawValue >> 62))
  {
    v14 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 <= 2)
    {
      aBlock = _swiftEmptyArrayStorage;
      goto LABEL_8;
    }

LABEL_60:
    sub_10000CA2C();
    v37 = swift_allocError();
    *v57 = 1;
    *(v57 + 8) = 0;
    *(v57 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_61;
  }

LABEL_52:
  if (_CocoaArrayWrapper.endIndex.getter() > 2)
  {
    goto LABEL_60;
  }

  aBlock = _swiftEmptyArrayStorage;
  v14 = _CocoaArrayWrapper.endIndex.getter();
LABEL_8:
  v76 = v9;
  v77 = v7;
  v78 = v13;
  v79 = v5;
  if (v14)
  {
    v7 = 0;
    v9 = rawValue & 0xC000000000000001;
    v15 = _swiftEmptyArrayStorage;
    v13 = &selRef_modelUID;
    do
    {
      v5 = v7;
      while (1)
      {
        if (v9)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v16 = *(rawValue + 8 * v5 + 32);
        }

        v2 = v16;
        v7 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if ([v16 selected])
        {
          break;
        }

        ++v5;
        if (v7 == v14)
        {
          v5 = v79;
          goto LABEL_30;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = aBlock;
      v5 = v79;
    }

    while (v7 != v14);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

LABEL_30:
  if (!(v15 >> 62))
  {
    v7 = v77;
    v13 = v78;
    v18 = v76;
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

  if (v15 < 0)
  {
    rawValue = v15;
  }

  else
  {
    rawValue = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v56 = _CocoaArrayWrapper.endIndex.getter();
  v7 = v77;
  v13 = v78;
  v18 = v76;
  if (v56 != 1 || !_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_59:

    goto LABEL_60;
  }

LABEL_32:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_75:
      swift_once();
      goto LABEL_40;
    }

    v19 = *(v15 + 32);
  }

  v2 = v19;

  if (v13[5] != ([v2 value] >> 16))
  {
LABEL_46:
    sub_10000CA2C();
    v37 = swift_allocError();
    *v38 = 1;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_61:
    aBlock = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v92 = aBlock;
    v93 = v85;
    v58._countAndFlagsBits = 0x6553206B636F6C43;
    v58._object = 0xEF20726F7463656CLL;
    String.append(_:)(v58);
    v59 = swift_weakLoadStrong();
    if (v59)
    {
      v60 = *(v59 + 40);
    }

    else
    {
      v60 = 0;
    }

    aBlock = v60;
    v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v61);

    v62._countAndFlagsBits = 0x69766564206E6F20;
    v62._object = 0xEB00000000206563;
    String.append(_:)(v62);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v63 = v13[3];
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v63);
      v67 = v66;
      swift_unknownObjectRelease();
    }

    else
    {
      v67 = 0xE700000000000000;
      active = 0x6E776F6E6B6E55;
    }

    v68._countAndFlagsBits = active;
    v68._object = v67;
    String.append(_:)(v68);

    v69._countAndFlagsBits = 0x726F727245202D20;
    v69._object = 0xE900000000000020;
    String.append(_:)(v69);
    v91 = v37;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v70._object = 0x800000010012C2B0;
    v70._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v70);
    v71 = v92;
    v72 = v93;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v73 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v73, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v74, qword_100179508);
    sub_100039F58(2, v7, v71, v72);

    sub_10000C9D0(v7);
    return;
  }

  v14 = [v2 value] >> 24;
  aBlock = 0;
  v85 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v20._countAndFlagsBits = 0x6553206B636F6C43;
  v20._object = 0xEF20726F7463656CLL;
  String.append(_:)(v20);
  v90 = v13[5];
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x69766564206E6F20;
  v22._object = 0xEB00000000206563;
  String.append(_:)(v22);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = v13[3];
    v24 = swift_getObjectType();
    v25 = ActiveFunction.deviceName.getter(v24, v23);
    v27 = v26;
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0xE700000000000000;
    v25 = 0x6E776F6E6B6E55;
  }

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._object = 0x800000010012C7B0;
  v29._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v29);
  LOBYTE(v92) = v14;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v15 = aBlock;
  rawValue = v85;
  if (qword_100173CB8 != -1)
  {
    goto LABEL_75;
  }

LABEL_40:
  v5 = v79;
  v31 = sub_10000A1BC(v79, qword_1001794F0);
  sub_10000A2A4(v31, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v32, qword_100179508);
  sub_100039AA0(2, v7, v15, rawValue);

  sub_10000C9D0(v7);
  v33 = v13[9];
  v34 = *(v33 + 2);
  if (!v34)
  {
    goto LABEL_46;
  }

  v35 = 0;
  v36 = v33 + 32;
  while (*&v36[8 * v35] != v14)
  {
    if (v34 == ++v35)
    {
      goto LABEL_46;
    }
  }

  v39 = swift_allocObject();
  v39[2] = v13;
  v39[3] = v35;
  v40 = v81;
  v39[4] = v81;
  v39[5] = v3;
  aBlock = 0xD000000000000016;
  v85 = 0x800000010012C2F0;

  v41 = v82;
  v42 = v3;
  v43._countAndFlagsBits = 8236;
  v43._object = 0xE200000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD00000000000001BLL;
  v44._object = 0x800000010012C7D0;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 2108704;
  v45._object = 0xE300000000000000;
  String.append(_:)(v45);
  v92 = 716;
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v85, &v40[OBJC_IVAR___AUAAudioDevice_logID]);

  v47 = *&v40[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
  v48 = swift_allocObject();
  v48[2] = sub_100037FAC;
  v48[3] = v39;
  aBlock = sub_10000CF5C;
  v85 = v48;
  v49 = *(v47 + 16);
  v50 = __chkstk_darwin(v48);
  *(&v75 - 2) = v47;
  *(&v75 - 1) = &aBlock;
  __chkstk_darwin(v50);
  *(&v75 - 2) = sub_10000CF64;
  *(&v75 - 1) = v51;

  os_unfair_lock_lock(v49 + 4);
  sub_10000CF80(&v92);
  os_unfair_lock_unlock(v49 + 4);
  LODWORD(v47) = v92;

  if (v47 == 1)
  {
    v52 = swift_allocObject();
    v53 = v81;
    *(v52 + 16) = v81;
    v88 = sub_10000CFD4;
    v89 = v52;
    aBlock = _NSConcreteStackBlock;
    v85 = 1107296256;
    v86 = sub_1000172D4;
    v87 = &unk_1001618E8;
    v54 = _Block_copy(&aBlock);
    v55 = v41;

    v83.receiver = v53;
    v83.super_class = v18;
    objc_msgSendSuper2(&v83, "requestConfigurationChange:", v54);
    _Block_release(v54);
  }
}