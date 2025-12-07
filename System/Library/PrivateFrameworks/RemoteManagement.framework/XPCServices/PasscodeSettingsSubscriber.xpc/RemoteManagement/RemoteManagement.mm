int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_self();
  sub_1000014B8(&qword_100014870, &qword_10000B600);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000B5C0;
  *(v4 + 32) = type metadata accessor for PasscodeSettingsApplicator(0, v5, v6);
  sub_1000014B8(&qword_100014858, &qword_10000B6E0);
  isa = sub_10000AB0C().super.isa;

  type metadata accessor for PasscodeSettingsStatus(0, v8, v9);
  [v3 runConfigurationSubscriberClientWithApplicators:isa publisherClass:swift_getObjCClassFromMetadata()];

  return 0;
}

uint64_t sub_1000014B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for RMStoreScope()
{
  if (!qword_100014860)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014860);
    }
  }
}

uint64_t sub_100001550()
{
  v0 = sub_10000A9DC();
  sub_10000617C(v0, qword_100014C00);
  v1 = sub_1000060A4(v0, qword_100014C00);
  type metadata accessor for PasscodeSettingsAdapter(v1, v2, v3);
  sub_1000014B8(&qword_100014938, &qword_10000B6E8);
  sub_10000AAAC();
  return sub_10000A9CC();
}

void sub_1000015F0(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  if (a3)
  {
    v7 = 0x800000010000C840;
    sub_10000ACAC(30);

    v11._countAndFlagsBits = a1;
    v11._object = a2;
    sub_10000AADC(v11);
    v8 = 0xD00000000000001CLL;
    v9 = 0x800000010000C870;
    v10 = 0xD000000000000029;
  }

  else
  {
    sub_10000ACAC(18);

    v12._countAndFlagsBits = a1;
    v12._object = a2;
    sub_10000AADC(v12);
    v10 = 0;
    v7 = 0;
    v8 = 0xD000000000000010;
    v9 = 0x800000010000C890;
  }

  *a4 = v10;
  a4[1] = v7;
  a4[2] = v8;
  a4[3] = v9;
  a4[4] = 0;
}

__n128 sub_1000016F4@<Q0>(uint64_t a1@<X8>)
{
  sub_1000015F0(*v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100001744(uint64_t a1)
{
  v2 = sub_100006434();

  return RMAdapterError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001780(uint64_t a1)
{
  v2 = sub_100006434();

  return RMAdapterError.errorDescription.getter(a1, v2);
}

uint64_t sub_1000017C8(uint64_t a1)
{
  v2 = sub_100006388();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100001804(uint64_t a1)
{
  v2 = sub_100006388();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100001848()
{
  result = sub_10000AA8C();
  qword_100014C18 = result;
  unk_100014C20 = v1;
  return result;
}

uint64_t PasscodeSettingsAdapter.configurationClasses()()
{
  sub_1000014B8(&qword_100014870, &qword_10000B600);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10000B5C0;
  *(v0 + 32) = sub_100005FF4(0, &qword_100014878, RMModelPasscodeSettingsDeclaration_ptr);
  return v0;
}

id PasscodeSettingsAdapter.declarationKey(forConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  if (qword_100014848 != -1)
  {
    swift_once();
  }

  v5 = sub_10000AA7C();
  v6 = [v4 newDeclarationKeyWithSubscriberIdentifier:v5 reference:a1];

  return v6;
}

uint64_t PasscodeSettingsAdapter.applyConfiguration(_:replace:scope:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001C74;

  return sub_100005060(a1);
}

uint64_t sub_100001C74(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100001F14(void *a1, void *a2, int a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_100001FF8;

  return sub_100005060(v9);
}

uint64_t sub_100001FF8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    v9 = sub_10000A95C();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_100005FF4(0, &unk_100014910, RMModelStatusReason_ptr);
    isa = sub_10000AB0C().super.isa;

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

uint64_t PasscodeSettingsAdapter.remove(_:scope:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002274;

  return sub_1000054D8(a1);
}

uint64_t sub_100002274()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000024F4(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1000025C8;

  return sub_1000054D8(v7);
}

uint64_t sub_1000025C8()
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
    v9 = sub_10000A95C();

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

void *sub_100002764(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000014B8(&unk_100014BE0, &qword_10000B9B0);
    v2 = sub_10000AC8C();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_100006258(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_100003E38(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100002908(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000014B8(&qword_100014948, &qword_10000B6F8);
    v2 = sub_10000AD0C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100006248(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100006248(v29, v30);
    result = sub_10000AC4C(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100006248(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t PasscodeSettingsAdapter.configurationUI(forConfiguration:scope:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002C70;

  return sub_100005708(a1);
}

uint64_t sub_100002C70(char a1, uint64_t a2)
{
  v10 = *v3;

  v7 = *(v10 + 8);
  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1 & 1;
    v6 = a2;
  }

  return v7(v8, v6);
}

uint64_t sub_100002F14(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_100002FE8;

  return sub_100005708(v7);
}

uint64_t sub_100002FE8(char a1, void *a2)
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
    v13 = sub_10000A95C();

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

id PasscodeSettingsAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PasscodeSettingsAdapter.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PasscodeSettingsAdapter(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "init");
}

id PasscodeSettingsAdapter.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PasscodeSettingsAdapter(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100003290(uint64_t *a1, void *a2)
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

    v9 = sub_10000AC2C();

    if (v9)
    {

      sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_10000AC1C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1000034C8(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1000036B8(v20 + 1);
    }

    v18 = v8;
    sub_1000038E0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
  v11 = sub_10000ABCC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100003964(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10000ABDC();

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

Swift::Int sub_1000034C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000014B8(&unk_100014950, &unk_10000B700);
    v2 = sub_10000AC7C();
    v15 = v2;
    sub_10000AC0C();
    if (sub_10000AC3C())
    {
      sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000036B8(v9 + 1);
        }

        v2 = v15;
        result = sub_10000ABCC(*(v15 + 40));
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

      while (sub_10000AC3C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1000036B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000014B8(&unk_100014950, &unk_10000B700);
  result = sub_10000AC6C();
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
      result = sub_10000ABCC(*(v5 + 40));
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

unint64_t sub_1000038E0(uint64_t a1, void *a2)
{
  sub_10000ABCC(a2[5]);
  result = sub_10000ABFC();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100003964(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000036B8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100003AD4();
      goto LABEL_12;
    }

    sub_100003C24(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10000ABCC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10000ABDC();

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
  sub_10000AD2C();
  __break(1u);
}

id sub_100003AD4()
{
  v1 = v0;
  sub_1000014B8(&unk_100014950, &unk_10000B700);
  v2 = *v0;
  v3 = sub_10000AC5C();
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

uint64_t sub_100003C24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000014B8(&unk_100014950, &unk_10000B700);
  result = sub_10000AC6C();
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
      result = sub_10000ABCC(v16);
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

Swift::Int sub_100003E38(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10000AD8C();
  sub_10000AACC();
  result = sub_10000AD9C();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    while (1)
    {
      v14 = (*(v5 + 48) + 16 * v9);
      if (*v14 == a1 && v14[1] == a2)
      {
        break;
      }

      result = sub_10000AD1C();
      if (result)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_9;
      }
    }

    *v14 = a1;
    v14[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 8 * v10) = v12 | v11;
      v16 = (*(v5 + 48) + 16 * v9);
      *v16 = a1;
      v16[1] = a2;
      v17 = *(v5 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v5 + 16) = v19;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_100003F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    v5 = sub_10000AA7C();
    v6 = [v4 allClientUUIDsForClientType:v5];

    if (v6)
    {
      v7 = sub_10000AB7C();

      v8 = sub_100002764(v7);

      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000406C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() sharedConnection];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = sub_10000AA7C();
  v6 = sub_10000AA7C();
  v16 = 0;
  v7 = [v4 applyRestrictionDictionary:0 clientType:v5 clientUUID:v6 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v16];

  if (v7)
  {
    return v16;
  }

  v9 = v16;
  sub_10000A96C();

  swift_willThrow();
  if (qword_100014840 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A9DC();
  sub_1000060A4(v10, qword_100014C00);
  swift_errorRetain();
  v11 = sub_10000A9BC();
  v12 = sub_10000ABAC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "Unable to remove restrictions: %{public}@", v13, 0xCu);
    sub_1000061E0(v14);
  }

  return swift_willThrow();
}

void sub_1000042C0()
{
  if (qword_100014840 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v0 = sub_10000A9DC();
    sub_1000060A4(v0, qword_100014C00);
    v1 = sub_10000A9BC();
    v2 = sub_10000AB9C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Fetching applied configuration keys", v3, 2u);
    }

    v7 = sub_100003F90(v4, v5, v6);
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v10 = (v7 + 7);
    v9 = v7[7];
    v11 = 1 << *(v7 + 32);
    v38[2] = &_swiftEmptySetSingleton;
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v14 = (v11 + 63) >> 6;
    v36 = v7;
    while (v13)
    {
LABEL_13:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = (v7[6] + ((v8 << 10) | (16 * v16)));
      v18 = *v17;
      v19 = v17[1];
      v20 = objc_opt_self();

      v21 = sub_10000AA7C();
      v22 = [v20 newDeclarationKey:v21];

      if ([v22 isValid])
      {

        v23 = [v22 subscriberIdentifier];
        v24 = sub_10000AA8C();
        v26 = v25;

        if (qword_100014848 != -1)
        {
          swift_once();
        }

        if (v24 == xmmword_100014C18 && v26 == *(&xmmword_100014C18 + 1))
        {

LABEL_28:
          sub_100003290(v38, v22);

          v7 = v36;
        }

        else
        {
          v28 = sub_10000AD1C();

          if (v28)
          {
            goto LABEL_28;
          }

LABEL_34:

          v7 = v36;
        }
      }

      else
      {
        if (qword_100014848 != -1)
        {
          swift_once();
        }

        if (!sub_10000AAFC(xmmword_100014C18))
        {
          goto LABEL_33;
        }

        v29 = sub_10000A9BC();
        v30 = sub_10000AB8C();

        if (os_log_type_enabled(v29, v30))
        {
          v34 = v30;
          v31 = swift_slowAlloc();
          log = v29;
          v32 = swift_slowAlloc();
          v38[0] = v32;
          *v31 = 136446210;
          *(v31 + 4) = sub_100008AA8(v18, v19, v38);
          _os_log_impl(&_mh_execute_header, log, v34, "Removing invalid clientUUID: %{public}s", v31, 0xCu);
          sub_100006130(v32);
        }

        else
        {
        }

        sub_10000406C(v18, v19, v33);
        if (!v37)
        {
          v37 = 0;
LABEL_33:

          goto LABEL_34;
        }

        v37 = 0;
        v7 = v36;
      }
    }

    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v14)
      {

        return;
      }

      v13 = *&v10[8 * v15];
      ++v8;
      if (v13)
      {
        v8 = v15;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  if (&_swiftEmptyArrayStorage >> 62 && sub_10000ACDC())
  {
    sub_10000978C(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100004740(void *a1, char a2)
{
  v4 = [objc_allocWithZone(NSMutableDictionary) init];
  if ((a2 & 1) == 0)
  {
    v19 = MCFeaturePasscodeRequired;
    v20 = [a1 payloadRequirePasscode];
    v21 = [v20 BOOLValue];

    [v4 MCSetBoolRestriction:v19 value:v21];
    v22 = MCFeatureAlphanumericPasscodeRequired;
    v23 = [a1 payloadRequireAlphanumericPasscode];
    v24 = [v23 BOOLValue];

    [v4 MCSetBoolRestriction:v22 value:v24];
    v25 = MCFeatureSimplePasscodeAllowed;
    v26 = [a1 payloadRequireComplexPasscode];
    LODWORD(v24) = [v26 BOOLValue];

    [v4 MCSetBoolRestriction:v25 value:v24 ^ 1];
    v27 = MCFeatureMinimumPasscodeLength;
    v28 = [a1 payloadMinimumLength];
    [v4 MCSetValueRestriction:v27 value:v28];

    v29 = MCFeaturePasscodeMinimumComplexChars;
    v30 = [a1 payloadMinimumComplexCharacters];
    [v4 MCSetValueRestriction:v29 value:v30];

    v31 = MCFeatureMaximumFailedPasscodeAttempts;
    v32 = [a1 payloadMaximumFailedAttempts];
    [v4 MCSetValueRestriction:v31 value:v32];

    v33 = [a1 payloadMaximumGracePeriodInMinutes];
    if (v33)
    {
      v34 = v33;
      v35 = MCFeaturePasscodeLockGraceTime;
      result = [v34 integerValue];
      if ((result * 60) >> 64 != (60 * result) >> 63)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v36 = [objc_allocWithZone(NSNumber) initWithInteger:60 * result];
      [v4 MCSetValueRestriction:v35 value:v36];
    }

    v37 = [a1 payloadMaximumInactivityInMinutes];
    if (v37)
    {
      v38 = v37;
      v39 = MCFeatureAutoLockTime;
      result = [v38 integerValue];
      if ((result * 60) >> 64 != (60 * result) >> 63)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v40 = [objc_allocWithZone(NSNumber) initWithInteger:60 * result];
      [v4 MCSetValueRestriction:v39 value:v40];
    }

    v41 = [a1 payloadMaximumPasscodeAgeInDays];
    if (v41)
    {
      v42 = v41;
      [v4 MCSetValueRestriction:MCFeatureMaximumPasscodeAgeDays value:v41];
    }

    v43 = [a1 payloadPasscodeReuseLimit];
    if (!v43)
    {
      goto LABEL_17;
    }

    v6 = v43;
    [v4 MCSetValueRestriction:MCFeaturePasscodeHistoryCount value:v43];
LABEL_16:

LABEL_17:
    v4;
    result = sub_10000A9FC();
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = [objc_opt_self() filterForUserEnrollmentWithDeclaration:a1];
  if (result)
  {
    v6 = result;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClassUnconditional();
    v8 = MCFeaturePasscodeRequired;
    v9 = [v7 payloadRequirePasscode];
    v10 = [v9 BOOLValue];

    [v4 MCSetBoolRestriction:v8 value:v10];
    v11 = MCFeatureSimplePasscodeAllowed;
    v12 = [v7 payloadRequireComplexPasscode];
    LODWORD(v10) = [v12 BOOLValue];

    [v4 MCSetBoolRestriction:v11 value:v10 ^ 1];
    v13 = MCFeatureMinimumPasscodeLength;
    v14 = [v7 payloadMinimumLength];
    [v4 MCSetValueRestriction:v13 value:v14];

    v15 = [v7 payloadMaximumInactivityInMinutes];
    if (v15)
    {
      v16 = v15;
      v17 = MCFeatureAutoLockTime;
      result = [v16 integerValue];
      if ((result * 60) >> 64 == (60 * result) >> 63)
      {
        v18 = [objc_allocWithZone(NSNumber) initWithInteger:60 * result];
        [v4 MCSetValueRestriction:v17 value:v18];

        goto LABEL_16;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

id sub_100004DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5)
{
  v7 = [objc_opt_self() sharedConnection];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  sub_100002908(a1);
  v9.super.isa = sub_10000A9EC().super.isa;

  v10 = sub_10000AA7C();
  v11 = sub_10000AA7C();
  if (a5)
  {
    a5 = sub_10000AA7C();
  }

  v21 = 0;
  v12 = [v8 applyRestrictionDictionary:v9.super.isa clientType:v10 clientUUID:v11 localizedClientDescription:a5 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v21];

  if (v12)
  {
    return v21;
  }

  v14 = v21;
  sub_10000A96C();

  swift_willThrow();
  if (qword_100014840 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A9DC();
  sub_1000060A4(v15, qword_100014C00);
  swift_errorRetain();
  v16 = sub_10000A9BC();
  v17 = sub_10000ABAC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Unable to apply restrictions: %{public}@", v18, 0xCu);
    sub_1000061E0(v19);
  }

  return swift_willThrow();
}

uint64_t sub_100005080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = v3;
  v4 = objc_opt_self();
  if (qword_100014848 != -1)
  {
    swift_once();
  }

  v5 = *(v3 + 16);
  v6 = sub_10000AA7C();
  v7 = [v4 newDeclarationKeyWithSubscriberIdentifier:v6 reference:v5];

  if (qword_100014840 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A9DC();
  sub_1000060A4(v8, qword_100014C00);
  v9 = v7;
  v10 = sub_10000A9BC();
  v11 = sub_10000AB9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v12 = 136446210;
    v14 = [v9 key];
    v15 = sub_10000AA8C();
    v17 = v16;

    v18 = sub_100008AA8(v15, v17, &v42);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Applying configuration with key: %{public}s", v12, 0xCu);
    sub_100006130(v13);
  }

  v19 = [*(v3 + 16) declaration];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  v21 = *(v3 + 16);
  if (v20)
  {
    v22 = v20;
    v23 = [*(v3 + 16) store];
    v24 = sub_100004740(v22, [v23 type] == 0);
    v25 = [v9 key];
    v26 = sub_10000AA8C();
    v28 = v27;

    v29 = [v23 name];
    if (v29)
    {
      v30 = sub_10000AA8C();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    sub_100004DA4(v24, v26, v28, v30, v32);

    v41 = *(v3 + 8);

    return v41(&_swiftEmptyArrayStorage);
  }

  else
  {

    v33 = [v21 declaration];
    v34 = [v33 declarationType];

    v35 = sub_10000AA8C();
    v37 = v36;

    sub_1000060DC();
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v37;
    *(v38 + 16) = 1;
    swift_willThrow();

    v39 = *(v3 + 8);

    return v39();
  }
}

uint64_t sub_1000054F8()
{
  v22 = v0;
  if (qword_100014840 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_10000A9DC();
  sub_1000060A4(v2, qword_100014C00);
  v3 = v1;
  v4 = sub_10000A9BC();
  v5 = sub_10000AB9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_10000AA8C();
    v12 = v11;

    v13 = sub_100008AA8(v10, v12, &v21);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing configuration with key: %{public}s", v7, 0xCu);
    sub_100006130(v8);
  }

  v14 = [*(v0 + 16) key];
  v15 = sub_10000AA8C();
  v17 = v16;

  sub_10000406C(v15, v17, v18);

  v19 = *(v0 + 8);

  return v19();
}

id sub_100005728()
{
  v34 = v0;
  if (qword_100014840 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_10000A9DC();
  sub_1000060A4(v2, qword_100014C00);
  v3 = v1;
  v4 = sub_10000A9BC();
  v5 = sub_10000ABAC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136446210;
    v9 = [v6 declaration];
    v10 = [v9 declarationIdentifier];

    v11 = sub_10000AA8C();
    v13 = v12;

    v14 = sub_100008AA8(v11, v13, &v33);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Get configuration UI for: %{public}s", v7, 0xCu);
    sub_100006130(v8);
  }

  v15 = [*(v0 + 16) declaration];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = [*(v0 + 16) store];
    if (![v18 type])
    {
      result = [objc_opt_self() filterForUserEnrollmentWithDeclaration:v17];
      if (!result)
      {
        __break(1u);
        return result;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClassUnconditional();
    }

    v20 = sub_100006824(v17);

    v21 = *(v0 + 8);

    return v21(1, v20);
  }

  else
  {

    v22 = sub_10000A9BC();
    v23 = sub_10000ABAC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Invalid configuration type in configurationUI", v24, 2u);
    }

    v25 = *(v0 + 16);

    v26 = [v25 declaration];
    v27 = [v26 declarationType];

    v28 = sub_10000AA8C();
    v30 = v29;

    sub_1000060DC();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 1;
    swift_willThrow();
    v32 = *(v0 + 8);

    return v32(0);
  }
}

uint64_t sub_100005B44()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002274;

  return sub_100002F14(v2, v3, v5, v4);
}

uint64_t sub_100005C08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000064A0;

  return sub_100008240(v2, v3, v4);
}

uint64_t sub_100005CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000064A0;

  return sub_10000832C(a1, v4, v5, v6);
}

uint64_t sub_100005D94()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005DDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000064A0;

  return sub_1000024F4(v2, v3, v5, v4);
}

uint64_t sub_100005E9C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100005EEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000064A0;

  return sub_100001F14(v2, v3, v4, v5, v6);
}

uint64_t sub_100005FB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005FF4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_10000603C()
{
  result = qword_100014920;
  if (!qword_100014920)
  {
    sub_100005FF4(255, &unk_100014BF0, RMStoreDeclarationKey_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014920);
  }

  return result;
}

uint64_t sub_1000060A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000060DC()
{
  result = qword_100014930;
  if (!qword_100014930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014930);
  }

  return result;
}

uint64_t sub_100006130(void *a1)
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

uint64_t *sub_10000617C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000061E0(uint64_t a1)
{
  v2 = sub_1000014B8(&qword_100014940, &qword_10000B6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_100006248(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_1000062C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000062D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000631C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_100006388()
{
  result = qword_100014960;
  if (!qword_100014960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014960);
  }

  return result;
}

unint64_t sub_1000063E0()
{
  result = qword_100014968;
  if (!qword_100014968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014968);
  }

  return result;
}

unint64_t sub_100006434()
{
  result = qword_100014970;
  if (!qword_100014970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014970);
  }

  return result;
}

void *sub_1000064A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000014B8(&qword_100014A58, &qword_10000B8B8);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_1000014B8(&qword_100014A48, &qword_10000B8B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000065DC(char a1)
{
  sub_10000A98C();
  __chkstk_darwin();
  sub_10000AA6C();
  __chkstk_darwin();
  sub_10000AA0C();
  sub_10000A97C();
  return sub_10000AA9C();
}

uint64_t sub_1000066F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (a4)
  {
    v9 = result;
    if (a3 || a4 != 0xE000000000000000)
    {
      result = sub_10000AD1C();
      if ((result & 1) == 0)
      {
        sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_10000B8A0;
        *(v10 + 32) = v9;
        *(v10 + 40) = a2;
        *(v10 + 48) = a3;
        *(v10 + 56) = a4;
        v11 = *a5;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000064A8(0, v11[2] + 1, 1, v11);
          v11 = result;
        }

        v13 = v11[2];
        v12 = v11[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_1000064A8((v12 > 1), v13 + 1, 1, v11);
          v11 = result;
        }

        v11[2] = v13 + 1;
        v11[v13 + 4] = v10;
        *a5 = v11;
      }
    }
  }

  return result;
}

id sub_100006824(void *a1)
{
  sub_10000AA4C();
  __chkstk_darwin();
  v118[5] = v118 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A98C();
  __chkstk_darwin();
  sub_10000AA6C();
  __chkstk_darwin();
  sub_10000AA0C();
  sub_10000A97C();
  v118[3] = sub_10000AA9C();
  v118[4] = v3;
  sub_10000AA0C();
  sub_10000A97C();
  v118[1] = sub_10000AA9C();
  v118[2] = v4;
  v120[0] = &_swiftEmptyArrayStorage;
  sub_10000AA0C();
  sub_10000A97C();
  v5 = sub_10000AA9C();
  v7 = v6;
  v8 = [a1 payloadRequirePasscode];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10000B8A0;
    *(v10 + 32) = v5;
    *(v10 + 40) = v7;
    *(v10 + 48) = sub_1000065DC(1);
    *(v10 + 56) = v11;
    v12 = sub_1000064A8(0, 1, 1, &_swiftEmptyArrayStorage);
    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1000064A8((v13 > 1), v14 + 1, 1, v12);
    }

    v12[2] = v14 + 1;
    v12[v14 + 4] = v10;
    v120[0] = v12;
  }

  else
  {

    v12 = &_swiftEmptyArrayStorage;
  }

  sub_10000AA0C();
  sub_10000A97C();
  v15 = sub_10000AA9C();
  v17 = v16;
  v18 = [a1 payloadRequireAlphanumericPasscode];
  v19 = [v18 BOOLValue];

  if (v19)
  {
    sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10000B8A0;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    *(v20 + 48) = sub_1000065DC(1);
    *(v20 + 56) = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1000064A8(0, v12[2] + 1, 1, v12);
    }

    v23 = v12[2];
    v22 = v12[3];
    if (v23 >= v22 >> 1)
    {
      v12 = sub_1000064A8((v22 > 1), v23 + 1, 1, v12);
    }

    v12[2] = v23 + 1;
    v12[v23 + 4] = v20;
    v120[0] = v12;
  }

  else
  {
  }

  sub_10000AA0C();
  sub_10000A97C();
  v24 = sub_10000AA9C();
  v26 = v25;
  v27 = [a1 payloadRequireComplexPasscode];
  v28 = [v27 BOOLValue];

  if (v28)
  {
    sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10000B8A0;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
    *(v29 + 48) = sub_1000065DC(1);
    *(v29 + 56) = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1000064A8(0, v12[2] + 1, 1, v12);
    }

    v32 = v12[2];
    v31 = v12[3];
    if (v32 >= v31 >> 1)
    {
      v12 = sub_1000064A8((v31 > 1), v32 + 1, 1, v12);
    }

    v12[2] = v32 + 1;
    v12[v32 + 4] = v29;
    v120[0] = v12;
  }

  else
  {
  }

  sub_10000AA0C();
  sub_10000A97C();
  v33 = sub_10000AA9C();
  v35 = v34;
  v36 = [a1 payloadMinimumLength];
  sub_1000078BC(0, v37, v38);
  v39.super.super.isa = sub_10000ABBC(0).super.super.isa;
  if (!v36)
  {

    goto LABEL_24;
  }

  v40 = v36;
  if (sub_10000ABDC())
  {

LABEL_24:
    goto LABEL_30;
  }

  v118[0] = a1;
  sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10000B8A0;
  *(v41 + 32) = v33;
  *(v41 + 40) = v35;
  v42 = [v40 stringValue];
  v43 = sub_10000AA8C();
  v45 = v44;

  *(v41 + 48) = v43;
  *(v41 + 56) = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1000064A8(0, v12[2] + 1, 1, v12);
  }

  v47 = v12[2];
  v46 = v12[3];
  a1 = v118[0];
  if (v47 >= v46 >> 1)
  {
    v12 = sub_1000064A8((v46 > 1), v47 + 1, 1, v12);
  }

  v12[2] = v47 + 1;
  v12[v47 + 4] = v41;
  v120[0] = v12;
LABEL_30:
  sub_10000AA0C();
  sub_10000A97C();
  v48 = sub_10000AA9C();
  v50 = v49;
  v51 = [a1 payloadMinimumComplexCharacters];
  v52.super.super.isa = sub_10000ABBC(0).super.super.isa;
  if (!v51)
  {

    goto LABEL_34;
  }

  v53 = v51;
  if (sub_10000ABDC())
  {

LABEL_34:
    goto LABEL_40;
  }

  v118[0] = a1;
  sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_10000B8A0;
  *(v54 + 32) = v48;
  *(v54 + 40) = v50;
  v55 = [v53 stringValue];
  v56 = sub_10000AA8C();
  v58 = v57;

  *(v54 + 48) = v56;
  *(v54 + 56) = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1000064A8(0, v12[2] + 1, 1, v12);
  }

  v60 = v12[2];
  v59 = v12[3];
  a1 = v118[0];
  if (v60 >= v59 >> 1)
  {
    v12 = sub_1000064A8((v59 > 1), v60 + 1, 1, v12);
  }

  v12[2] = v60 + 1;
  v12[v60 + 4] = v54;
  v120[0] = v12;
LABEL_40:
  sub_10000AA0C();
  sub_10000A97C();
  v61 = sub_10000AA9C();
  v63 = v62;
  v64 = [a1 payloadMaximumFailedAttempts];
  v65.super.super.isa = sub_10000ABBC(11).super.super.isa;
  if (!v64)
  {

    goto LABEL_44;
  }

  v66 = v64;
  if (sub_10000ABDC())
  {

LABEL_44:
    goto LABEL_50;
  }

  sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_10000B8A0;
  *(v67 + 32) = v61;
  *(v67 + 40) = v63;
  v68 = [v66 stringValue];
  v69 = sub_10000AA8C();
  v71 = v70;

  *(v67 + 48) = v69;
  *(v67 + 56) = v71;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1000064A8(0, v12[2] + 1, 1, v12);
  }

  v73 = v12[2];
  v72 = v12[3];
  if (v73 >= v72 >> 1)
  {
    v12 = sub_1000064A8((v72 > 1), v73 + 1, 1, v12);
  }

  v12[2] = v73 + 1;
  v12[v73 + 4] = v67;
  v120[0] = v12;
LABEL_50:
  sub_10000AA0C();
  sub_10000A97C();
  v74 = sub_10000AA9C();
  v76 = v75;
  v77 = [a1 payloadMaximumGracePeriodInMinutes];
  if (v77)
  {
    v78 = v77;
    sub_10000AA3C();
    v121._countAndFlagsBits = 0;
    v121._object = 0xE000000000000000;
    sub_10000AA2C(v121);
    v119 = [v78 integerValue];
    sub_10000AA1C();
    v122._countAndFlagsBits = 0x554E494D2E495520;
    v122._object = 0xEB00000000534554;
    sub_10000AA2C(v122);
    sub_10000AA5C();
    sub_10000A97C();
    v79 = sub_10000AA9C();
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v81 = 0;
  }

  sub_1000066F8(v74, v76, v79, v81, v120);

  sub_10000AA0C();
  sub_10000A97C();
  v82 = sub_10000AA9C();
  v84 = v83;
  v85 = [a1 payloadMaximumInactivityInMinutes];
  if (v85)
  {
    v86 = v85;
    sub_10000AA3C();
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    sub_10000AA2C(v123);
    v119 = [v86 integerValue];
    sub_10000AA1C();
    v124._countAndFlagsBits = 0x554E494D2E495520;
    v124._object = 0xEB00000000534554;
    sub_10000AA2C(v124);
    sub_10000AA5C();
    sub_10000A97C();
    v87 = sub_10000AA9C();
    v89 = v88;
  }

  else
  {
    v87 = 0;
    v89 = 0;
  }

  sub_1000066F8(v82, v84, v87, v89, v120);

  sub_10000AA0C();
  sub_10000A97C();
  v90 = sub_10000AA9C();
  v92 = v91;
  v93 = [a1 payloadMaximumPasscodeAgeInDays];
  if (v93)
  {
    v94 = v93;
    sub_10000AA3C();
    v125._countAndFlagsBits = 0;
    v125._object = 0xE000000000000000;
    sub_10000AA2C(v125);
    v119 = [v94 integerValue];
    sub_10000AA1C();
    v126._countAndFlagsBits = 0x535941442E495520;
    v126._object = 0xE800000000000000;
    sub_10000AA2C(v126);
    sub_10000AA5C();
    sub_10000A97C();
    v95 = sub_10000AA9C();
    v97 = v96;
  }

  else
  {
    v95 = 0;
    v97 = 0;
  }

  sub_1000066F8(v90, v92, v95, v97, v120);

  sub_10000AA0C();
  sub_10000A97C();
  v98 = sub_10000AA9C();
  v100 = v99;
  v101 = [a1 payloadPasscodeReuseLimit];
  if (v101)
  {
    v102 = v101;
    sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_10000B8A0;
    *(v103 + 32) = v98;
    *(v103 + 40) = v100;
    v104 = v102;
    v105 = [v104 stringValue];
    v106 = sub_10000AA8C();
    v108 = v107;

    *(v103 + 48) = v106;
    *(v103 + 56) = v108;
    v109 = v120[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = sub_1000064A8(0, v109[2] + 1, 1, v109);
    }

    v111 = v109[2];
    v110 = v109[3];
    if (v111 >= v110 >> 1)
    {
      v109 = sub_1000064A8((v110 > 1), v111 + 1, 1, v109);
    }

    v109[2] = v111 + 1;
    v109[v111 + 4] = v103;
    v120[0] = v109;
  }

  else
  {
  }

  v112 = objc_opt_self();
  v113 = sub_10000AA7C();

  v114 = sub_10000AA7C();

  sub_1000014B8(&qword_100014A48, &qword_10000B8B0);
  isa = sub_10000AB0C().super.isa;

  v116 = [v112 configurationUIWithTitle:v113 description:v114 details:isa];

  return v116;
}

unint64_t sub_1000078BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100014A40;
  if (!qword_100014A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014A40);
  }

  return result;
}

id sub_100007A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PasscodeSettingsApplicator(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100007B44()
{
  v0 = sub_10000A9DC();
  sub_10000617C(v0, qword_100014C28);
  v1 = sub_1000060A4(v0, qword_100014C28);
  type metadata accessor for PasscodeSettingsStatus(v1, v2, v3);
  sub_1000014B8(&unk_100014BD0, &unk_10000B9A0);
  sub_10000AAAC();
  return sub_10000A9CC();
}

uint64_t sub_100007DCC(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_10000AB1C();
  v4[5] = v7;
  v8 = a2;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100007EBC;

  return sub_10000A2F4(v7);
}

uint64_t sub_100007EBC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_10000A95C();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    isa = sub_10000A9EC().super.isa;

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

id sub_1000080D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PasscodeSettingsStatus(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100008130()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008180()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002274;

  return sub_100007DCC(v2, v3, v5, v4);
}

uint64_t sub_100008240(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000064A0;

  return v6();
}

uint64_t sub_10000832C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100002274;

  return v7();
}

uint64_t sub_100008414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000014B8(&qword_100014908, &qword_10000B678);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_10000A89C(a3, v22 - v9, &qword_100014908, &qword_10000B678);
  v11 = sub_10000AB5C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000A83C(v10, &qword_100014908, &qword_10000B678);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10000AB4C();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_10000AB3C();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_10000AABC() + 32;
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

    sub_10000A83C(a3, &qword_100014908, &qword_10000B678);

    return v20;
  }

LABEL_8:
  sub_10000A83C(a3, &qword_100014908, &qword_10000B678);
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

uint64_t sub_100008710(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008808;

  return v6(a1);
}

uint64_t sub_100008808()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008900()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008938(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000064A0;

  return sub_100008710(a1, v4);
}

uint64_t sub_1000089F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002274;

  return sub_100008710(a1, v4);
}

unint64_t sub_100008AA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008B74(v11, 0, 0, 1, a1, a2);
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
    sub_10000A7E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006130(v11);
  return v7;
}

unint64_t sub_100008B74(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100008C80(a5, a6);
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
    result = sub_10000ACCC();
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

void *sub_100008C80(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008CCC(a1, a2);
  sub_100008DFC(&off_1000106D8);
  return v3;
}

void *sub_100008CCC(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100008EE8(v5, 0);
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

  result = sub_10000ACCC();
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
        v10 = sub_10000AAEC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100008EE8(v10, 0);
        result = sub_10000AC9C();
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

uint64_t sub_100008DFC(uint64_t result)
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

  result = sub_100008F5C(result, v11, 1, v3);
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

void *sub_100008EE8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000014B8(&qword_100014B88, &qword_10000B968);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100008F5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000014B8(&qword_100014B88, &qword_10000B968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100009050(uint64_t a1, uint64_t a2)
{
  sub_10000AD8C();
  sub_10000AACC();
  v4 = sub_10000AD9C();

  return sub_1000090C8(a1, a2, v4);
}

unint64_t sub_1000090C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000AD1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100009180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000014B8(&qword_100014B90, &qword_10000B970);
  v33 = v4;
  result = sub_10000ACFC();
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
        sub_100006248(v24, v34);
      }

      else
      {
        sub_10000A7E0(v24, v34);
      }

      sub_10000AD8C();
      sub_10000AACC();
      result = sub_10000AD9C();
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
      result = sub_100006248(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_100009438(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000ABEC() + 1) & ~v5;
    do
    {
      sub_10000AD8C();

      sub_10000AACC();
      v10 = sub_10000AD9C();

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

void *sub_1000095E8()
{
  v1 = v0;
  sub_1000014B8(&qword_100014B90, &qword_10000B970);
  v2 = *v0;
  v3 = sub_10000ACEC();
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
        sub_10000A7E0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100006248(v25, (*(v4 + 56) + v22));
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

void sub_10000978C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10000ACDC())
    {
LABEL_3:
      sub_1000014B8(&unk_100014950, &unk_10000B700);
      v3 = sub_10000AC8C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10000ACDC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10000ACBC();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_10000ABCC(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_10000ABDC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_10000ABCC(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_10000ABDC();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

Swift::Int sub_100009A7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000014B8(&unk_100014BE0, &qword_10000B9B0);
    v3 = sub_10000AC8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_10000AD8C();

      sub_10000AACC();
      result = sub_10000AD9C();
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
          result = sub_10000AD1C();
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

Swift::Int sub_100009BE4()
{
  sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000B8A0;
  sub_100005FF4(0, &qword_100014BA8, RMModelStatusPasscodeCompliance_ptr);
  v1 = [swift_getObjCClassFromMetadata() statusItemType];
  v2 = sub_10000AA8C();
  v4 = v3;

  *(inited + 32) = v2;
  *(inited + 40) = v4;
  sub_100005FF4(0, &qword_100014BB0, RMModelStatusPasscodeIsPresent_ptr);
  v5 = [swift_getObjCClassFromMetadata() statusItemType];
  v6 = sub_10000AA8C();
  v8 = v7;

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  v9 = sub_100009A7C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9;
}

unint64_t sub_100009D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000014B8(&qword_100014BC8, &qword_10000B998);
    v3 = sub_10000AD0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A89C(v4, &v15, &unk_100014BB8, &unk_10000B988);
      v5 = v15;
      v6 = v16;
      result = sub_100009050(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_100009E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() sharedConnection];
  if (v3)
  {
    v4 = v3;
    v27 = 0;
    v5 = [v3 currentPasscodeIsCompliantWithGlobalRestrictionsOutError:&v27];
    v6 = v5;
    if (v5)
    {
      v7 = v27;
    }

    else
    {
      v9 = v27;
      sub_10000A96C();

      swift_willThrow();
      if (qword_100014850 != -1)
      {
        swift_once();
      }

      v10 = sub_10000A9DC();
      sub_1000060A4(v10, qword_100014C28);
      swift_errorRetain();
      v11 = sub_10000A9BC();
      v12 = sub_10000ABAC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138543362;
        swift_errorRetain();
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v15;
        *v14 = v15;
        _os_log_impl(&_mh_execute_header, v11, v12, "Compliance check %{public}@", v13, 0xCu);
        sub_10000A83C(v14, &qword_100014940, &qword_10000B6F0);
      }

      else
      {
      }
    }

    v16 = [v4 isPasscodeSet];
    sub_1000014B8(&qword_100014BA0, &qword_10000B980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000B8A0;
    sub_100005FF4(0, &qword_100014BA8, RMModelStatusPasscodeCompliance_ptr);
    v18 = [swift_getObjCClassFromMetadata() statusItemType];
    v19 = sub_10000AA8C();
    v21 = v20;

    *(inited + 32) = v19;
    *(inited + 40) = v21;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = v6;
    sub_100005FF4(0, &qword_100014BB0, RMModelStatusPasscodeIsPresent_ptr);
    v22 = [swift_getObjCClassFromMetadata() statusItemType];
    v23 = sub_10000AA8C();
    v25 = v24;

    *(inited + 80) = v23;
    *(inited + 88) = v25;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = v16;
    v26 = sub_100009D04(inited);
    swift_setDeallocating();
    sub_1000014B8(&unk_100014BB8, &unk_10000B988);
    swift_arrayDestroy();

    return v26;
  }

  else
  {

    return sub_100009D04(&_swiftEmptyArrayStorage);
  }
}

unint64_t sub_10000A1C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000014B8(&qword_100014B90, &qword_10000B970);
    v3 = sub_10000AD0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A89C(v4, &v13, &qword_100014B98, &qword_10000B978);
      v5 = v13;
      v6 = v14;
      result = sub_100009050(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006248(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10000A314()
{
  v46 = v0;
  if (qword_100014850 != -1)
  {
LABEL_35:
    swift_once();
  }

  v1 = sub_10000A9DC();
  sub_1000060A4(v1, qword_100014C28);

  v2 = sub_10000A9BC();
  v3 = sub_10000AB9C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v45 = v5;
    *v4 = 136446210;
    v6 = sub_10000AB2C();
    v8 = sub_100008AA8(v6, v7, &v45);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Querying status for key paths:%{public}s", v4, 0xCu);
    sub_100006130(v5);
  }

  v9 = *(v0 + 112);
  v13 = sub_100009E34(v10, v11, v12);
  v14 = sub_10000A1C4(&_swiftEmptyArrayStorage);
  v15 = *(v9 + 16);
  if (v15)
  {
    v16 = (*(v0 + 112) + 40);
    v17 = &unk_10000B960;
    v44 = v13;
    do
    {
      if (!*(v13 + 16))
      {
        goto LABEL_7;
      }

      v19 = *(v16 - 1);
      v18 = *v16;

      v20 = sub_100009050(v19, v18);
      if ((v21 & 1) == 0)
      {

        goto LABEL_7;
      }

      sub_10000A89C(*(v13 + 56) + 32 * v20, v0 + 16, &qword_100014B80, v17);
      sub_10000A89C(v0 + 16, v0 + 48, &qword_100014B80, v17);
      if (!*(v0 + 72))
      {
        sub_10000A83C(v0 + 48, &qword_100014B80, v17);
        v32 = sub_100009050(v19, v18);
        v34 = v33;

        if (v34)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v14;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1000095E8();
            v14 = v45;
          }

          sub_100006248((v14[7] + 32 * v32), (v0 + 80));
          sub_100009438(v32, v14);
          sub_10000A83C(v0 + 16, &qword_100014B80, v17);
        }

        else
        {
          sub_10000A83C(v0 + 16, &qword_100014B80, v17);
          *(v0 + 80) = 0u;
          *(v0 + 96) = 0u;
        }

        sub_10000A83C(v0 + 80, &qword_100014B80, v17);
        goto LABEL_7;
      }

      v22 = v17;
      sub_100006248((v0 + 48), (v0 + 80));
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v14;
      v24 = sub_100009050(v19, v18);
      v26 = v14[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v30 = v25;
      if (v14[3] >= v29)
      {
        if ((v23 & 1) == 0)
        {
          v38 = v24;
          sub_1000095E8();
          v24 = v38;
          v17 = v22;
          if (v30)
          {
LABEL_21:
            v36 = v24;

            v14 = v45;
            v37 = (v45[7] + 32 * v36);
            sub_100006130(v37);
            sub_100006248((v0 + 80), v37);
            sub_10000A83C(v0 + 16, &qword_100014B80, v17);
            v13 = v44;
            goto LABEL_7;
          }

          goto LABEL_25;
        }
      }

      else
      {
        sub_100009180(v29, v23);
        v24 = sub_100009050(v19, v18);
        if ((v30 & 1) != (v31 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
        }
      }

      v17 = v22;
      if (v30)
      {
        goto LABEL_21;
      }

LABEL_25:
      v14 = v45;
      v45[(v24 >> 6) + 8] |= 1 << v24;
      v39 = (v14[6] + 16 * v24);
      *v39 = v19;
      v39[1] = v18;
      sub_100006248((v0 + 80), (v14[7] + 32 * v24));
      sub_10000A83C(v0 + 16, &qword_100014B80, v17);
      v40 = v14[2];
      v28 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      v13 = v44;
      if (v28)
      {
        goto LABEL_34;
      }

      v14[2] = v41;
LABEL_7:
      v16 += 2;
      --v15;
    }

    while (v15);
  }

  v42 = *(v0 + 8);

  return v42(v14);
}

uint64_t sub_10000A7E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A83C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000014B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A89C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000014B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}