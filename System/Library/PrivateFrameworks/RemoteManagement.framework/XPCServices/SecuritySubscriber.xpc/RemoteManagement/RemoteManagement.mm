int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_self();
  sub_100001480(&qword_100018850, &unk_10000F260);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000F250;
  *(v4 + 32) = type metadata accessor for SecurityApplicator(0, v5, v6);
  sub_100001480(&qword_100018910, &qword_10000F430);
  isa = sub_10000E6A8().super.isa;

  type metadata accessor for SecurityStatus(0, v8, v9);
  [v3 runConfigurationSubscriberClientWithApplicators:isa publisherClass:swift_getObjCClassFromMetadata()];

  return 0;
}

uint64_t sub_100001480(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_1000014C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void type metadata accessor for RMStoreScope()
{
  if (!qword_100018840)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018840);
    }
  }
}

Swift::Int sub_10000154C()
{
  v1 = *v0;
  sub_10000E998();
  sub_10000E9A8(v1);
  return sub_10000E9B8();
}

Swift::Int sub_1000015C0(uint64_t a1)
{
  v2 = *v1;
  sub_10000E998();
  sub_10000E9A8(v2);
  return sub_10000E9B8();
}

unint64_t *sub_100001604@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1000016D8()
{
  sub_100001480(&qword_100018980, &qword_10000F498);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000F2F0;
  *(inited + 32) = 0x7079547465737341;
  v2 = v0[1];
  v8 = *v0;
  *(inited + 48) = v8;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "PersistentRef");
  *(inited + 94) = -4864;
  v7 = v2;
  *(inited + 120) = &type metadata for Data;
  *(inited + 128) = 0x76654C7473757254;
  *(inited + 96) = v2;
  *(inited + 168) = &type metadata for Int;
  v3 = *(v0 + 32);
  *(inited + 136) = 0xEA00000000006C65;
  *(inited + 144) = v3;
  sub_100009808(&v8, v6);
  sub_100009864(&v7, v6);
  v4 = sub_10000C274(inited);
  swift_setDeallocating();
  sub_100001480(&qword_100018988, &unk_10000F4A0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_100001824()
{
  v0 = sub_10000E598();
  sub_1000096C4(v0, qword_100019110);
  v1 = sub_100009434(v0, qword_100019110);
  type metadata accessor for SecurityAdapter(v1, v2, v3);
  sub_100001480(&qword_100018950, &qword_10000F460);
  sub_10000E628();
  return sub_10000E588();
}

void sub_1000018C4(uint64_t result@<X0>, void *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = 0x8000000100010C70;
      sub_10000E868(27);

      sub_100009B34();
      v11._countAndFlagsBits = sub_10000E548();
      sub_10000E658(v11);

      v9 = 0xD000000000000019;
      v8 = 0x8000000100010C90;
      v10 = 0xD00000000000001ELL;
    }

    else
    {
      v7 = 0x8000000100010CB0;
      v8 = 0x8000000100010CD0;
      v10 = 0xD000000000000015;
      v9 = 0xD000000000000017;
    }
  }

  else
  {
    sub_10000E868(18);

    v12._countAndFlagsBits = result;
    v12._object = a2;
    sub_10000E658(v12);
    v10 = 0;
    v7 = 0;
    v9 = 0xD000000000000010;
    v8 = 0x8000000100010CF0;
  }

  *a4 = v10;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = 0;
}

__n128 sub_100001A44@<Q0>(uint64_t a1@<X8>)
{
  sub_1000018C4(*v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100001A94(uint64_t a1)
{
  v2 = sub_100009B34();

  return RMAdapterError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001AD0(uint64_t a1)
{
  v2 = sub_100009B34();

  return RMAdapterError.errorDescription.getter(a1, v2);
}

uint64_t sub_100001B18(uint64_t a1)
{
  v2 = sub_100009A88();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100001B54(uint64_t a1)
{
  v2 = sub_100009A88();

  return Error<>._code.getter(a1, v2);
}

uint64_t SecurityAdapter.configurationClasses()()
{
  sub_100001480(&qword_100018850, &unk_10000F260);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10000F300;
  *(v0 + 32) = sub_1000097C0(0, &qword_100018858, RMModelSecurityCertificateDeclaration_ptr);
  *(v0 + 40) = sub_1000097C0(0, &qword_100018860, RMModelSecurityIdentityDeclaration_ptr);
  return v0;
}

uint64_t SecurityAdapter.allDeclarationKeys(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001D8C;

  return sub_100004B48(a1);
}

uint64_t sub_100001D8C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void *sub_100001E8C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_10000E8B8();
    v4 = v1 + 64;
    v5 = sub_10000E7A8();
    v6 = *(v1 + 36);
    result = objc_opt_self();
    v7 = 0;
    v18 = v1 + 72;
    v19 = result;
    v20 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v21 = v7;

      v10 = sub_10000E5D8();
      [v19 newDeclarationKey:v10];

      sub_10000E898();
      sub_10000E8C8();
      v1 = v20;
      sub_10000E8D8();
      result = sub_10000E8A8();
      v8 = 1 << *(v20 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v6 != *(v20 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_1000098C0(v5, v6, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_1000098C0(v5, v6, 0);
      }

LABEL_4:
      v7 = v21 + 1;
      v5 = v8;
      if (v21 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000226C(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100002320;

  return sub_100004B48(a1);
}

uint64_t sub_100002320(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_10000E478();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
    sub_1000093CC();
    isa = sub_10000E738().super.isa;

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

uint64_t SecurityAdapter.applyConfiguration(_:replace:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100009DEC;

  return sub_100005F60(a1, a2, a3);
}

uint64_t sub_100002570(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100009680((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001480(&qword_100018948, &qword_10000F458);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_10000E498();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000027F8(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_1000028EC;

  return sub_100005F60(v10, a2, a3);
}

uint64_t sub_1000028EC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    v9 = sub_10000E478();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_1000097C0(0, &qword_1000188F8, RMModelStatusReason_ptr);
    isa = sub_10000E6A8().super.isa;

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

uint64_t SecurityAdapter.remove(_:scope:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002B74;

  return sub_10000501C(a1, a2);
}

uint64_t sub_100002B74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002DF4(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100002ED4;

  return sub_10000501C(v8, a2);
}

uint64_t sub_100002ED4()
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
    v9 = sub_10000E478();

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

id SecurityAdapter.declarationKey(forConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_10000E5D8();
  v6 = [v4 newDeclarationKeyWithSubscriberIdentifier:v5 reference:a1];

  return v6;
}

uint64_t sub_100003184(uint64_t a1, void *a2)
{
  v3 = sub_100009680((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100001480(&qword_100018948, &qword_10000F458);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t SecurityAdapter.configurationUI(forConfiguration:scope:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000032D8;

  return sub_1000076B4(a1);
}

uint64_t sub_1000032D8(char a1, uint64_t a2)
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

uint64_t sub_10000357C(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_100003650;

  return sub_1000076B4(v7);
}

uint64_t sub_100003650(char a1, void *a2)
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
    v13 = sub_10000E478();

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

id SecurityAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecurityAdapter.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for SecurityAdapter(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "init");
}

id SecurityAdapter.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for SecurityAdapter(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1000038F8(uint64_t *a1, void *a2)
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

    v9 = sub_10000E7F8();

    if (v9)
    {

      sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_10000E7E8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100003B30(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100003D20(v20 + 1);
    }

    v18 = v8;
    sub_100003F48(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
  v11 = sub_10000E778(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100003FCC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10000E788();

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

Swift::Int sub_100003B30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001480(&qword_100018990, &qword_10000F900);
    v2 = sub_10000E838();
    v15 = v2;
    sub_10000E7D8();
    if (sub_10000E808())
    {
      sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100003D20(v9 + 1);
        }

        v2 = v15;
        result = sub_10000E778(*(v15 + 40));
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

      while (sub_10000E808());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100003D20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001480(&qword_100018990, &qword_10000F900);
  result = sub_10000E828();
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
      result = sub_10000E778(*(v5 + 40));
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

unint64_t sub_100003F48(uint64_t a1, void *a2)
{
  sub_10000E778(a2[5]);
  result = sub_10000E7C8();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100003FCC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100003D20(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000413C();
      goto LABEL_12;
    }

    sub_10000428C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10000E778(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10000E788();

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
  sub_10000E938();
  __break(1u);
}

id sub_10000413C()
{
  v1 = v0;
  sub_100001480(&qword_100018990, &qword_10000F900);
  v2 = *v0;
  v3 = sub_10000E818();
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

uint64_t sub_10000428C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001480(&qword_100018990, &qword_10000F900);
  result = sub_10000E828();
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
      result = sub_10000E778(v16);
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

uint64_t sub_1000044A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000B6C8(a1, a2);
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
    sub_10000BF60();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_100004538(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_100004538(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000E7B8() + 1) & ~v5;
    do
    {
      sub_10000E998();

      sub_10000E648();
      v9 = sub_10000E9B8();

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

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000B6C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000BF60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000B94C(v16, a4 & 1);
    v11 = sub_10000B6C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_10000E948();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_10000BEAC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100004830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10000B6C8(0x7079547465737341, 0xE900000000000065), (v5 & 1) != 0) && (sub_1000094D0(*(a1 + 56) + 32 * v4, v18), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v16;
    v7 = v17;
    if (!*(a1 + 16))
    {
LABEL_5:
      v8 = 0;
      v9 = 0xC000000000000000;
LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }
  }

  v10 = sub_10000B6C8(0x6574736973726550, 0xED0000666552746ELL);
  if (v11 & 1) != 0 && (sub_1000094D0(*(a1 + 56) + 32 * v10, v18), (swift_dynamicCast()))
  {
    v8 = v16;
    v9 = v17;
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  v12 = sub_10000B6C8(0x76654C7473757254, 0xEA00000000006C65);
  if ((v13 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1000094D0(*(a1 + 56) + 32 * v12, v18);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (v16 == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v16 == 1;
  }

LABEL_19:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_100004A08(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
    sub_1000093CC();
    result = sub_10000E748();
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
        v6 = sub_10000E878();
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

      sub_1000038F8(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_10000E8E8();
  }

  v5 = result;
  v4 = sub_10000E8E8();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100004B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_10000E5D8();

  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    sub_10000E798();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  *(v3 + 16) = v12;
  *(v3 + 32) = v13;
  if (!*(v3 + 40))
  {
    sub_100009728(v3 + 16);
    goto LABEL_8;
  }

  sub_100001480(&qword_100018968, &qword_10000F480);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (_swiftEmptyArrayStorage >> 62 && sub_10000E8E8())
    {
      sub_10000C4A8(_swiftEmptyArrayStorage);
    }

    else
    {
      v9 = &_swiftEmptySetSingleton;
    }

    goto LABEL_10;
  }

  v7 = sub_100001E8C(*(v3 + 48));

  v8 = sub_100004A08(v7);

  v9 = v8;
LABEL_10:
  v10 = *(v3 + 8);

  return v10(v9);
}

uint64_t sub_100004D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_100004D68, 0, 0);
}

uint64_t sub_100004D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[18];
  v5 = *(v4 + 32);
  if (*(v4 + 32))
  {
    v7 = v3[19];
    v6 = v3[20];
    v8 = objc_opt_self();
    isa = sub_10000E488().super.isa;
    v3[21] = isa;
    v3[2] = v3;
    v3[3] = sub_100004F0C;
    v10 = swift_continuation_init();
    v3[17] = sub_100001480(&qword_100018970, &qword_10000F488);
    v3[10] = _NSConcreteStackBlock;
    v3[11] = 1107296256;
    v3[12] = sub_100003184;
    v3[13] = &unk_100014A28;
    v3[14] = v10;
    [v8 removeTrustForCertificateRef:isa configurationKey:v7 fullTrust:v5 == 2 scope:v6 completionHandler:v3 + 10];

    return _swift_continuation_await(v3 + 2);
  }

  else
  {
    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_100004F0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_100009DE4;
  }

  else
  {
    v2 = sub_100009DF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000501C(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return _swift_task_switch(sub_10000503C, 0, 0);
}

uint64_t sub_10000503C()
{
  v43 = v0;
  if (qword_100018830 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_10000E598();
  *(v0 + 120) = sub_100009434(v2, qword_100019110);
  v3 = v1;
  v4 = sub_10000E578();
  v5 = sub_10000E758();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v41 = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_10000E5E8();
    v12 = v11;

    v13 = sub_10000B120(v10, v12, &v41);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing configuration with key: %{public}s", v7, 0xCu);
    sub_100009534(v8);
  }

  v14 = objc_opt_self();
  *(v0 + 128) = v14;
  v15 = [v14 standardUserDefaults];
  v16 = sub_10000E5D8();

  v17 = [v15 objectForKey:v16];

  if (v17)
  {
    sub_10000E798();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v18 = v41;
  *(v0 + 72) = v42;
  *(v0 + 56) = v18;
  if (!*(v0 + 80))
  {
    sub_100009728(v0 + 56);
LABEL_17:
    v32 = sub_10000E578();
    v33 = sub_10000E768();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Invalid user defaults", v34, 2u);
    }

    sub_10000946C();
    swift_allocError();
    *v35 = 0xD000000000000015;
    *(v35 + 8) = 0x8000000100010B70;
    *(v35 + 16) = 0;
    swift_willThrow();
    goto LABEL_20;
  }

  sub_100001480(&qword_100018968, &qword_10000F480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v19 = *(v0 + 96);
  *(v0 + 136) = v19;
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = *(v0 + 104);
  *(v0 + 88) = v19;
  v21 = [v20 key];
  v22 = sub_10000E5E8();
  v24 = v23;

  if (*(v19 + 16))
  {
    sub_10000B6C8(v22, v24);
    v26 = v25;

    if (v26)
    {

      sub_100004830(v27, v0 + 16);
      v28 = swift_task_alloc();
      *(v0 + 144) = v28;
      *v28 = v0;
      v28[1] = sub_1000055A0;
      v29 = *(v0 + 104);
      v30 = *(v0 + 112);

      return sub_100004D44(v0 + 16, v29, v30);
    }
  }

  else
  {
  }

  v37 = sub_10000E578();
  v38 = sub_10000E768();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Invalid remove: no persistent ref to remove", v39, 2u);
  }

  sub_10000946C();
  swift_allocError();
  *v40 = 0xD00000000000002BLL;
  *(v40 + 8) = 0x8000000100010B90;
  *(v40 + 16) = 0;
  swift_willThrow();

LABEL_20:
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1000055A0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100005A24;
  }

  else
  {
    v2 = sub_1000056B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000056B4()
{
  v33 = v0;
  v1 = [*(v0 + 104) key];
  v2 = sub_10000E5E8();
  v4 = v3;

  v5 = sub_1000044A0(v2, v4);

  if (v5)
  {
    v6 = *(v0 + 128);

    v7 = [v6 standardUserDefaults];
    sub_100001480(&qword_100018960, &unk_10000F8C0);
    isa = sub_10000E5A8().super.isa;
    v9 = sub_10000E5D8();

    [v7 setObject:isa forKey:v9];

    sub_100009790(v0 + 16);

    v10 = *(v0 + 8);
  }

  else
  {
    v11 = *(v0 + 104);
    v12 = sub_10000E578();
    v13 = sub_10000E768();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 104);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136446210;
      v17 = [v14 key];
      v18 = sub_10000E5E8();
      v20 = v19;

      v21 = sub_10000B120(v18, v20, &v31);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Invalid remove: no configuration key: %{public}s", v15, 0xCu);
      sub_100009534(v16);
    }

    v22 = *(v0 + 104);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_10000E868(40);

    v31 = 0xD000000000000026;
    v32 = 0x8000000100010BC0;
    v23 = [v22 key];
    v24 = sub_10000E5E8();
    v26 = v25;

    v35._countAndFlagsBits = v24;
    v35._object = v26;
    sub_10000E658(v35);

    v27 = v31;
    v28 = v32;
    sub_10000946C();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0;
    swift_willThrow();
    sub_100009790(v0 + 16);

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_100005A24()
{
  sub_100009790(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005A94(void *a1, id a2)
{
  v3 = [a2 declarationType];
  v4 = sub_10000E5E8();
  v6 = v5;

  v7 = [objc_opt_self() registeredIdentifier];
  v8 = sub_10000E5E8();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = sub_10000E928();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  if ([a1 type] == 1)
  {
    return 2;
  }

  if ([a1 type])
  {
    return 1;
  }

  return 2;
}

uint64_t sub_100005BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_100005BD8, 0, 0);
}

uint64_t sub_100005BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[18];
  v5 = *(v4 + 32);
  if (*(v4 + 32))
  {
    v7 = v3[19];
    v6 = v3[20];
    v8 = objc_opt_self();
    isa = sub_10000E488().super.isa;
    v3[21] = isa;
    v3[2] = v3;
    v3[3] = sub_100005D7C;
    v10 = swift_continuation_init();
    v3[17] = sub_100001480(&qword_100018970, &qword_10000F488);
    v3[10] = _NSConcreteStackBlock;
    v3[11] = 1107296256;
    v3[12] = sub_100003184;
    v3[13] = &unk_100014A78;
    v3[14] = v10;
    [v8 setTrustForCertificateRef:isa configurationKey:v7 fullTrust:v5 == 2 scope:v6 completionHandler:v3 + 10];

    return _swift_continuation_await(v3 + 2);
  }

  else
  {
    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_100005D7C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_100005EF0;
  }

  else
  {
    v2 = sub_100005E8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005E8C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005EF0()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100005F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  return _swift_task_switch(sub_100005F84, 0, 0);
}

uint64_t sub_100005F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = v3;
  v4 = *(v3 + 248);
  if (v4)
  {
    v5 = v4;
    v6 = swift_task_alloc();
    *(v3 + 264) = v6;
    *v6 = v3;
    v6[1] = sub_10000660C;
    v7 = *(v3 + 256);

    return sub_10000501C(v5, v7);
  }

  v9 = *(v3 + 240);
  v10 = objc_opt_self();
  v11 = sub_10000E5D8();
  v12 = [v10 newDeclarationKeyWithSubscriberIdentifier:v11 reference:v9];
  *(v3 + 272) = v12;

  if (qword_100018830 != -1)
  {
    swift_once();
  }

  v13 = sub_10000E598();
  *(v3 + 280) = sub_100009434(v13, qword_100019110);
  v14 = v12;
  v15 = sub_10000E578();
  v16 = sub_10000E758();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v51 = v18;
    *v17 = 136446210;
    v19 = [v14 key];
    v20 = sub_10000E5E8();
    v22 = v21;

    v23 = sub_10000B120(v20, v22, &v51);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Applying configuration with key: %{public}s", v17, 0xCu);
    sub_100009534(v18);
  }

  v24 = [*(v3 + 240) declaration];
  v25 = [v24 declarationType];

  v26 = sub_10000E5E8();
  v28 = v27;

  v29 = [objc_opt_self() registeredIdentifier];
  v30 = sub_10000E5E8();
  v32 = v31;

  if (v26 == v30 && v28 == v32)
  {

LABEL_13:
    v34 = "com.apple.managed.certificates";
    goto LABEL_15;
  }

  v33 = sub_10000E928();

  if (v33)
  {
    goto LABEL_13;
  }

  v34 = "v16@?0@NSError8";
LABEL_15:
  *(v3 + 288) = v34;
  v35 = [*(v3 + 240) assets];
  if (v35)
  {
    v36 = v35;
    sub_1000097C0(0, &qword_100018978, RMModelDeclarationBase_ptr);
    v37 = sub_10000E6B8();

    if (v37 >> 62)
    {
      v38 = sub_10000E8E8();
      if (v38)
      {
LABEL_18:
        if ((v37 & 0xC000000000000001) != 0)
        {
          v39 = sub_10000E878();
        }

        else
        {
          if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return _swift_continuation_await(v38);
          }

          v39 = *(v37 + 32);
        }

        v40 = v39;
        *(v3 + 296) = v39;

        v41 = [v40 declarationIdentifier];
        if (!v41)
        {
          sub_10000E5E8();
          v41 = sub_10000E5D8();
        }

        *(v3 + 304) = v41;
        v42 = *(v3 + 240);
        v43 = objc_opt_self();
        v44 = sub_10000E5D8();
        *(v3 + 312) = v44;
        *(v3 + 16) = v3;
        *(v3 + 56) = v3 + 216;
        *(v3 + 24) = sub_100006D10;
        v45 = swift_continuation_init();
        *(v3 + 136) = sub_100001480(&qword_100018920, &qword_10000F438);
        *(v3 + 80) = _NSConcreteStackBlock;
        *(v3 + 88) = 1107296256;
        *(v3 + 96) = sub_100002570;
        *(v3 + 104) = &unk_100014A50;
        *(v3 + 112) = v45;
        [v43 resolveKeychainAsset:v42 assetIdentifier:v41 accessGroup:v44 completionHandler:v3 + 80];
        v38 = v3 + 16;

        return _swift_continuation_await(v38);
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
        goto LABEL_18;
      }
    }
  }

  v46 = sub_10000E578();
  v47 = sub_10000E768();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Missing asset reference", v48, 2u);
  }

  sub_10000946C();
  swift_allocError();
  *v49 = 0;
  *(v49 + 8) = 0;
  *(v49 + 16) = 2;
  swift_willThrow();

  v50 = *(v3 + 8);

  return v50();
}

uint64_t sub_10000660C()
{

  if (v0)
  {

    v1 = sub_100009DBC;
  }

  else
  {
    v1 = sub_100006724;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100006724()
{
  v45 = v0;

  v1 = *(v0 + 240);
  v2 = objc_opt_self();
  v3 = sub_10000E5D8();
  v4 = [v2 newDeclarationKeyWithSubscriberIdentifier:v3 reference:v1];
  *(v0 + 272) = v4;

  if (qword_100018830 != -1)
  {
    swift_once();
  }

  v5 = sub_10000E598();
  *(v0 + 280) = sub_100009434(v5, qword_100019110);
  v6 = v4;
  v7 = sub_10000E578();
  v8 = sub_10000E758();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136446210;
    v11 = [v6 key];
    v12 = sub_10000E5E8();
    v14 = v13;

    v15 = sub_10000B120(v12, v14, &v44);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Applying configuration with key: %{public}s", v9, 0xCu);
    sub_100009534(v10);
  }

  v16 = [*(v0 + 240) declaration];
  v17 = [v16 declarationType];

  v18 = sub_10000E5E8();
  v20 = v19;

  v21 = [objc_opt_self() registeredIdentifier];
  v22 = sub_10000E5E8();
  v24 = v23;

  if (v18 == v22 && v20 == v24)
  {

LABEL_9:
    v26 = "com.apple.managed.certificates";
    goto LABEL_11;
  }

  v25 = sub_10000E928();

  if (v25)
  {
    goto LABEL_9;
  }

  v26 = "v16@?0@NSError8";
LABEL_11:
  *(v0 + 288) = v26;
  v27 = [*(v0 + 240) assets];
  if (v27)
  {
    v28 = v27;
    sub_1000097C0(0, &qword_100018978, RMModelDeclarationBase_ptr);
    v29 = sub_10000E6B8();

    if (v29 >> 62)
    {
      v30 = sub_10000E8E8();
      if (v30)
      {
LABEL_14:
        if ((v29 & 0xC000000000000001) != 0)
        {
          v31 = sub_10000E878();
        }

        else
        {
          if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return _swift_continuation_await(v30);
          }

          v31 = *(v29 + 32);
        }

        v32 = v31;
        *(v0 + 296) = v31;

        v33 = [v32 declarationIdentifier];
        if (!v33)
        {
          sub_10000E5E8();
          v33 = sub_10000E5D8();
        }

        *(v0 + 304) = v33;
        v34 = *(v0 + 240);
        v35 = objc_opt_self();
        v36 = sub_10000E5D8();
        *(v0 + 312) = v36;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 216;
        *(v0 + 24) = sub_100006D10;
        v37 = swift_continuation_init();
        *(v0 + 136) = sub_100001480(&qword_100018920, &qword_10000F438);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002570;
        *(v0 + 104) = &unk_100014A50;
        *(v0 + 112) = v37;
        [v35 resolveKeychainAsset:v34 assetIdentifier:v33 accessGroup:v36 completionHandler:v0 + 80];
        v30 = v0 + 16;

        return _swift_continuation_await(v30);
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_14;
      }
    }
  }

  v38 = sub_10000E578();
  v39 = sub_10000E768();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Missing asset reference", v40, 2u);
  }

  sub_10000946C();
  swift_allocError();
  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 16) = 2;
  swift_willThrow();

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_100006D10()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {

    v2 = sub_100007570;
  }

  else
  {
    v2 = sub_100006E2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006E2C()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  *(v0 + 328) = v6;
  *(v0 + 336) = v5;

  v7 = [v3 declarationType];
  v8 = sub_10000E5E8();
  v10 = v9;
  sub_100009580(v6, v5);

  v11 = [v4 store];
  v12 = [v4 declaration];
  LOBYTE(v3) = sub_100005A94(v11, v3);

  *(v0 + 144) = v8;
  *(v0 + 152) = v10;
  *(v0 + 160) = v6;
  *(v0 + 168) = v5;
  *(v0 + 176) = v3;
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  *v13 = v0;
  v13[1] = sub_100006FB4;
  v14 = *(v0 + 272);
  v15 = *(v0 + 256);

  return sub_100005BB4(v0 + 144, v14, v15);
}

uint64_t sub_100006FB4()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1000074F4;
  }

  else
  {
    v2 = sub_1000070C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000070C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = sub_10000E5D8();

  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    sub_10000E798();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  *(v3 + 200) = v33;
  *(v3 + 184) = v32;
  if (!*(v3 + 208))
  {
    sub_100009728(v3 + 184);
    goto LABEL_9;
  }

  sub_100001480(&qword_100018968, &qword_10000F480);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    *(v3 + 232) = 0;
    goto LABEL_10;
  }

  if (*(v3 + 232))
  {
LABEL_11:
    v30 = *(v3 + 328);
    v31 = *(v3 + 336);
    v29 = *(v3 + 296);
    v8 = *(v3 + 272);

    v9 = [v8 key];
    v10 = sub_10000E5E8();
    v12 = v11;

    v13 = sub_1000016D8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000046E8(v13, v10, v12, isUniquelyReferenced_nonNull_native);

    v15 = [v4 standardUserDefaults];
    sub_100001480(&qword_100018960, &unk_10000F8C0);
    isa = sub_10000E5A8().super.isa;

    v17 = sub_10000E5D8();

    [v15 setObject:isa forKey:v17];

    sub_100009790(v3 + 144);
    sub_1000095D4(v30, v31);

    v18 = *(v3 + 8);

    return v18(_swiftEmptyArrayStorage);
  }

LABEL_10:
  *(v3 + 232) = sub_10000C3A4(_swiftEmptyArrayStorage);

  if (*(v3 + 232))
  {
    goto LABEL_11;
  }

  v20 = sub_10000E578();
  v21 = sub_10000E768();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Invalid user defaults", v22, 2u);
  }

  v24 = *(v3 + 328);
  v23 = *(v3 + 336);
  v25 = *(v3 + 296);
  v26 = *(v3 + 272);

  sub_10000946C();
  swift_allocError();
  *v27 = 0xD000000000000015;
  *(v27 + 8) = 0x8000000100010B70;
  *(v27 + 16) = 0;
  swift_willThrow();
  sub_1000095D4(v24, v23);

  sub_100009790(v3 + 144);

  v28 = *(v3 + 8);

  return v28();
}

uint64_t sub_1000074F4()
{
  v1 = v0[37];
  v2 = v0[34];
  sub_1000095D4(v0[41], v0[42]);

  sub_100009790((v0 + 18));
  v3 = v0[1];

  return v3();
}

uint64_t sub_100007570()
{
  v1 = v0[39];
  v2 = v0[38];
  swift_willThrow();

  v3 = sub_10000E578();
  v4 = sub_10000E768();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed asset resolution", v5, 2u);
  }

  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[34];

  sub_10000946C();
  swift_allocError();
  *v9 = v6;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  swift_willThrow();
  swift_errorRetain();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000076B4(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_10000E4C8();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = sub_10000E4E8();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = sub_10000E518();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_100007838, 0, 0);
}

uint64_t sub_100007838()
{
  v86 = v0;
  if (qword_100018830 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_10000E598();
  *(v0 + 248) = sub_100009434(v2, qword_100019110);
  v3 = v1;
  v4 = sub_10000E578();
  v5 = sub_10000E758();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v84 = v8;
    *v7 = 136446210;
    v9 = [v6 declaration];
    v10 = [v9 declarationIdentifier];

    v11 = sub_10000E5E8();
    v13 = v12;

    v14 = sub_10000B120(v11, v13, &v84);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Get configuration UI for: %{public}s", v7, 0xCu);
    sub_100009534(v8);
  }

  v15 = [*(v0 + 160) declaration];
  *(v0 + 256) = v15;
  v16 = [v15 declarationType];
  v17 = sub_10000E5E8();
  v19 = v18;

  v20 = [objc_opt_self() registeredIdentifier];
  v21 = sub_10000E5E8();
  v23 = v22;

  if (v21 == v17 && v23 == v19)
  {
    goto LABEL_7;
  }

  v24 = sub_10000E928();

  if (v24)
  {
    goto LABEL_9;
  }

  v57 = [objc_opt_self() registeredIdentifier];
  v58 = sub_10000E5E8();
  v60 = v59;

  if (v58 == v17 && v60 == v19)
  {
LABEL_7:

LABEL_9:

    goto LABEL_10;
  }

  v61 = sub_10000E928();

  if ((v61 & 1) == 0)
  {
    v62 = sub_10000E578();
    v63 = sub_10000E768();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Invalid configuration for configuration UI", v64, 2u);
    }

    v84 = 0;
    v85 = 0xE000000000000000;
    sub_10000E868(30);

    v84 = 0xD00000000000001CLL;
    v85 = 0x8000000100010970;
    v65 = [v15 declarationType];
    v66 = sub_10000E5E8();
    v68 = v67;

    v88._countAndFlagsBits = v66;
    v88._object = v68;
    sub_10000E658(v88);

    v41 = v84;
    v40 = v85;
    goto LABEL_17;
  }

LABEL_10:
  v25 = *(v0 + 160);
  objc_opt_self();
  v26 = [swift_dynamicCastObjCClassUnconditional() payloadCredentialAssetReference];
  sub_10000E5E8();

  v27 = sub_10000E5D8();

  v28 = [v25 assetWithIdentifier:v27];
  *(v0 + 264) = v28;

  if (v28)
  {
    v29 = [v28 declarationType];
    v30 = sub_10000E5E8();
    v32 = v31;

    v33 = [objc_opt_self() registeredIdentifier];
    v34 = sub_10000E5E8();
    v36 = v35;

    if (v34 == v30 && v36 == v32)
    {
    }

    else
    {
      v45 = sub_10000E928();

      if ((v45 & 1) == 0)
      {
        v69 = [objc_opt_self() registeredIdentifier];
        v70 = sub_10000E5E8();
        v72 = v71;

        if (v70 == v30 && v72 == v32)
        {
        }

        else
        {
          v73 = sub_10000E928();

          if ((v73 & 1) == 0)
          {
            v74 = [objc_opt_self() registeredIdentifier];
            v75 = sub_10000E5E8();
            v77 = v76;

            if (v75 == v30 && v77 == v32)
            {
            }

            else
            {
              v78 = sub_10000E928();

              if ((v78 & 1) == 0)
              {
                v79 = [objc_opt_self() registeredIdentifier];
                v80 = sub_10000E5E8();
                v82 = v81;

                if (v80 != v30 || v82 != v32)
                {
                  v83 = sub_10000E928();

                  if (v83)
                  {
                    v48 = 0xD000000000000019;
                  }

                  else
                  {
                    v48 = 0xD00000000000001CLL;
                  }

                  if (v83)
                  {
                    v47 = "UI.Key.Certificate";
                  }

                  else
                  {
                    v47 = "r configurationUI";
                  }

                  goto LABEL_23;
                }

                v46 = "UI.Value.Description-SCEP";
                goto LABEL_22;
              }
            }

            v47 = "UI.Value.Description-SCEP";
            v48 = 0xD00000000000001DLL;
            goto LABEL_23;
          }
        }

        v47 = "UI.Value.Description-Identity";
        v48 = 0xD000000000000020;
        goto LABEL_23;
      }
    }

    v46 = "UI.Value.Description-ACME";
LABEL_22:
    v47 = (v46 - 32);
    v48 = 0xD000000000000019;
LABEL_23:
    *(v0 + 272) = v48;
    *(v0 + 280) = v47;
    v49 = *(v0 + 160);
    v50 = objc_opt_self();
    v51 = sub_10000E5D8();
    v52 = [v49 store];
    v53 = [v50 newDeclarationKeyWithSubscriberIdentifier:v51 store:v52 declaration:v28];
    *(v0 + 288) = v53;

    v54 = [v49 store];
    *(v0 + 296) = v54;
    v55 = [v53 key];
    if (!v55)
    {
      sub_10000E5E8();
      v55 = sub_10000E5D8();
    }

    *(v0 + 304) = v55;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_100008250;
    v56 = swift_continuation_init();
    *(v0 + 136) = sub_100001480(&qword_100018920, &qword_10000F438);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100002570;
    *(v0 + 104) = &unk_100014A00;
    *(v0 + 112) = v56;
    [v54 certificatePersistentRefForAssetKey:v55 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  v37 = sub_10000E578();
  v38 = sub_10000E768();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Invalid asset for configurationUI", v39, 2u);
  }

  v40 = 0x8000000100010990;
  v41 = 0xD000000000000021;
LABEL_17:
  sub_10000946C();
  swift_allocError();
  *v42 = v41;
  *(v42 + 8) = v40;
  *(v42 + 16) = 0;
  swift_willThrow();

  v43 = *(v0 + 8);

  return v43(0);
}

uint64_t sub_100008250()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_100008C6C;
  }

  else
  {
    v2 = sub_100008360;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_100008360()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  sub_100009580(v4, v3);
  v5 = [v2 store];
  [v5 scope];

  v6 = [v2 store];
  v7 = [v6 personaIdentifier];

  if (v7)
  {
    sub_10000E5E8();
  }

  sub_10000E538();
  v8 = sub_10000E528();
  sub_1000095D4(v4, v3);
  v9 = SecCertificateCopySubjectSummary(v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_10000E5E8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = v8;
  result = SecCertificateCopyIssuerSummary();
  if (result)
  {
    v16 = result;

    v17 = sub_10000E5E8();
    v77 = v18;
    v78 = v17;

    SecCertificateNotValidAfter();
    v20 = v19;
    v79 = v14;

    v80 = v3;
    v81 = v4;
    v82 = v13;
    if (v20 == 0.0)
    {
      v71 = 0xE000000000000000;
      v72 = 0;
    }

    else
    {
      v22 = *(v0 + 232);
      v21 = *(v0 + 240);
      v24 = *(v0 + 216);
      v23 = *(v0 + 224);
      v25 = *(v0 + 208);
      v74 = *(v0 + 200);
      v26 = *(v0 + 184);
      v83 = *(v0 + 192);
      v27 = *(v0 + 176);
      v75 = *(v0 + 168);
      sub_10000E4A8();
      sub_10000E4F8();
      sub_100009628();
      sub_10000E5C8();
      v73 = *(v23 + 8);
      v73(v22, v24);
      sub_10000E4D8();
      sub_10000E4B8();
      v28 = sub_10000E508();
      v71 = v29;
      v72 = v28;
      (*(v27 + 8))(v26, v75);
      (*(v74 + 8))(v25, v83);
      v73(v21, v24);
    }

    v76 = sub_10000E5D8();
    v30 = objc_opt_self();
    v31 = sub_10000E5D8();
    v32 = [v30 string:v31];

    if (!v32)
    {
      sub_10000E5E8();
      v32 = sub_10000E5D8();
    }

    v66 = v32;
    v69 = *(v0 + 288);
    v70 = *(v0 + 264);
    v68 = *(v0 + 256);
    v67 = objc_opt_self();
    sub_100001480(&qword_100018930, &qword_10000F440);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10000F310;
    sub_100001480(&qword_100018938, &qword_10000F448);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10000F300;
    v35 = sub_10000E5D8();
    v36 = [v30 string:v35];

    v37 = sub_10000E5E8();
    v39 = v38;

    *(v34 + 32) = v37;
    *(v34 + 40) = v39;
    v40 = sub_10000E5D8();

    v41 = [v30 string:v40];

    v42 = sub_10000E5E8();
    v44 = v43;

    *(v34 + 48) = v42;
    *(v34 + 56) = v44;
    *(v33 + 32) = v34;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10000F300;
    v46 = sub_10000E5D8();
    v47 = [v30 string:v46];

    v48 = sub_10000E5E8();
    v50 = v49;

    *(v45 + 32) = v48;
    *(v45 + 40) = v50;
    *(v45 + 48) = v11;
    *(v45 + 56) = v82;
    *(v33 + 40) = v45;
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10000F300;
    v52 = sub_10000E5D8();

    v53 = [v30 string:v52];

    v54 = sub_10000E5E8();
    v56 = v55;

    *(v51 + 32) = v54;
    *(v51 + 40) = v56;
    *(v51 + 48) = v72;
    *(v51 + 56) = v71;
    *(v33 + 48) = v51;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10000F300;
    v58 = sub_10000E5D8();
    v59 = [v30 string:v58];

    v60 = sub_10000E5E8();
    v62 = v61;

    *(v57 + 32) = v60;
    *(v57 + 40) = v62;
    *(v57 + 48) = v78;
    *(v57 + 56) = v77;
    *(v33 + 56) = v57;
    sub_100001480(&qword_100018940, &qword_10000F450);
    isa = sub_10000E6A8().super.isa;

    v64 = [v67 configurationUIWithTitle:v76 description:v66 details:isa];

    sub_1000095D4(v81, v80);

    v65 = *(v0 + 8);

    return v65(1, v64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008C6C()
{
  v1 = v0[38];
  v2 = v0[37];
  swift_willThrow();

  v3 = sub_10000E578();
  v4 = sub_10000E768();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalid persistent ref for configurationUI", v5, 2u);
  }

  v6 = v0[36];
  v8 = v0[32];
  v7 = v0[33];

  sub_10000946C();
  swift_allocError();
  *v9 = 0xD000000000000013;
  *(v9 + 8) = 0x8000000100010A20;
  *(v9 + 16) = 0;
  swift_willThrow();

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_100008E28()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002B74;

  return sub_10000357C(v2, v3, v5, v4);
}

uint64_t sub_100008EEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009DE0;

  return sub_10000A8B8(v2, v3, v4);
}

uint64_t sub_100008FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009DE0;

  return sub_10000A9A0(a1, v4, v5, v6);
}

uint64_t sub_100009078()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000090C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009DE0;

  return sub_100002DF4(v2, v3, v5, v4);
}

uint64_t sub_100009180()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000091D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009DE0;

  return sub_1000027F8(v2, v3, v4, v5, v6);
}

uint64_t sub_100009298()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000092D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009DE0;

  return sub_10000226C(v2, v3);
}

uint64_t sub_10000938C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000093CC()
{
  result = qword_100018908;
  if (!qword_100018908)
  {
    sub_1000097C0(255, &qword_100018900, RMStoreDeclarationKey_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018908);
  }

  return result;
}

uint64_t sub_100009434(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000946C()
{
  result = qword_100018918;
  if (!qword_100018918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018918);
  }

  return result;
}

uint64_t sub_1000094D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009534(void *a1)
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

void sub_100009580(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1000095D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100009628()
{
  result = qword_100018928;
  if (!qword_100018928)
  {
    sub_10000E518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018928);
  }

  return result;
}

void *sub_100009680(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_1000096C4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100009728(uint64_t a1)
{
  v2 = sub_100001480(&qword_100018958, &qword_10000F468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000097C0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000098C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000098CC(uint64_t a1)
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

__n128 sub_1000098E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000098FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100009944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009998(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000099B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000099C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100009A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100009A58(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_100009A88()
{
  result = qword_100018998;
  if (!qword_100018998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018998);
  }

  return result;
}

unint64_t sub_100009AE0()
{
  result = qword_1000189A0;
  if (!qword_1000189A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000189A0);
  }

  return result;
}

unint64_t sub_100009B34()
{
  result = qword_1000189A8;
  if (!qword_1000189A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000189A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrustLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrustLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100009CFC()
{
  result = qword_1000189B0;
  if (!qword_1000189B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000189B0);
  }

  return result;
}

unint64_t sub_100009D50()
{
  result = qword_1000189B8;
  if (!qword_1000189B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000189B8);
  }

  return result;
}

id sub_100009EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for SecurityApplicator(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

Swift::Int sub_100009F44()
{
  sub_100001480(&qword_100018938, &qword_10000F448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000F300;
  v1 = [objc_opt_self() registeredIdentifier];
  v2 = sub_10000E5E8();
  v4 = v3;

  *(inited + 32) = v2;
  *(inited + 40) = v4;
  v5 = [objc_opt_self() registeredIdentifier];
  v6 = sub_10000E5E8();
  v8 = v7;

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  v9 = sub_10000C798(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_10000A044()
{
  v0 = sub_10000E598();
  sub_1000096C4(v0, qword_100019128);
  v1 = sub_100009434(v0, qword_100019128);
  type metadata accessor for SecurityStatus(v1, v2, v3);
  sub_100001480(&unk_100018BF0, &unk_10000F8E0);
  sub_10000E628();
  return sub_10000E588();
}

uint64_t sub_10000A33C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_10000E6B8();
  v4[5] = v7;
  v8 = a2;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10000A434;

  return sub_10000D450(v7, v8);
}

uint64_t sub_10000A434(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_10000E478();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    isa = sub_10000E5A8().super.isa;

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

uint64_t sub_10000A60C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100009680((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001480(&qword_100018948, &qword_10000F458);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000097C0(0, &unk_100018BD0, RMCertificateStatusItem_ptr);
    **(*(v4 + 64) + 40) = sub_10000E5B8();

    return _swift_continuation_throwingResume(v4);
  }
}

id sub_10000A74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for SecurityStatus(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10000A7A8()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A7F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002B74;

  return sub_10000A33C(v2, v3, v5, v4);
}

uint64_t sub_10000A8B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100009DE0;

  return v6();
}

uint64_t sub_10000A9A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100002B74;

  return v7();
}

uint64_t sub_10000AA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001480(&qword_1000188F0, &qword_10000F3A8);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_10000E364(a3, v22 - v9, &qword_1000188F0, &qword_10000F3A8);
  v11 = sub_10000E728();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000E2D4(v10, &qword_1000188F0, &qword_10000F3A8);
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

  sub_10000E718();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_10000E708();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_10000E638() + 32;
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

    sub_10000E2D4(a3, &qword_1000188F0, &qword_10000F3A8);

    return v20;
  }

LABEL_8:
  sub_10000E2D4(a3, &qword_1000188F0, &qword_10000F3A8);
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

uint64_t sub_10000AD88(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000AE80;

  return v6(a1);
}

uint64_t sub_10000AE80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000AF78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AFB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009DE0;

  return sub_10000AD88(a1, v4);
}

uint64_t sub_10000B068(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002B74;

  return sub_10000AD88(a1, v4);
}

unint64_t sub_10000B120(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B1EC(v11, 0, 0, 1, a1, a2);
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
    sub_1000094D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009534(v11);
  return v7;
}

unint64_t sub_10000B1EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000B2F8(a5, a6);
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
    result = sub_10000E888();
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

void *sub_10000B2F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000B344(a1, a2);
  sub_10000B474(&off_1000147D8);
  return v3;
}

void *sub_10000B344(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000B560(v5, 0);
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

  result = sub_10000E888();
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
        v10 = sub_10000E668();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000B560(v10, 0);
        result = sub_10000E858();
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

uint64_t sub_10000B474(uint64_t result)
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

  result = sub_10000B5D4(result, v11, 1, v3);
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

void *sub_10000B560(uint64_t a1, uint64_t a2)
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

  sub_100001480(&unk_100018BE0, &unk_10000F8D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B5D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001480(&unk_100018BE0, &unk_10000F8D0);
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

unint64_t sub_10000B6C8(uint64_t a1, uint64_t a2)
{
  sub_10000E998();
  sub_10000E648();
  v4 = sub_10000E9B8();

  return sub_10000B740(a1, a2, v4);
}

unint64_t sub_10000B740(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000E928())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10000B7F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000B818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000B818(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001480(&unk_100018BC0, &qword_10000F8B8);
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
    sub_100001480(&qword_100018960, &unk_10000F8C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000B94C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001480(&qword_100018C08, &qword_10000F8F8);
  v34 = v4;
  result = sub_10000E908();
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

      sub_10000E998();
      sub_10000E648();
      result = sub_10000E9B8();
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

uint64_t sub_10000BBF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001480(&qword_100018BB0, &qword_10000F8A8);
  v33 = v4;
  result = sub_10000E908();
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
        sub_10000E2C4(v24, v34);
      }

      else
      {
        sub_1000094D0(v24, v34);
      }

      sub_10000E998();
      sub_10000E648();
      result = sub_10000E9B8();
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
      result = sub_10000E2C4(v34, (*(v7 + 56) + 32 * v15));
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

unint64_t sub_10000BEAC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_10000BEF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000E2C4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10000BF60()
{
  v1 = v0;
  sub_100001480(&qword_100018C08, &qword_10000F8F8);
  v2 = *v0;
  v3 = sub_10000E8F8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_10000C0D0()
{
  v1 = v0;
  sub_100001480(&qword_100018BB0, &qword_10000F8A8);
  v2 = *v0;
  v3 = sub_10000E8F8();
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
        sub_1000094D0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000E2C4(v25, (*(v4 + 56) + v22));
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

unint64_t sub_10000C274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001480(&qword_100018BB0, &qword_10000F8A8);
    v3 = sub_10000E918();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E364(v4, &v13, &qword_100018988, &unk_10000F4A0);
      v5 = v13;
      v6 = v14;
      result = sub_10000B6C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000E2C4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10000C3A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001480(&qword_100018C08, &qword_10000F8F8);
    v3 = sub_10000E918();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000B6C8(v5, v6);
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

void sub_10000C4A8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10000E8E8())
    {
LABEL_3:
      sub_100001480(&qword_100018990, &qword_10000F900);
      v3 = sub_10000E848();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10000E8E8();
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
      v8 = sub_10000E878();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_10000E778(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_10000E788();

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
      v25 = sub_10000E778(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_10000E788();

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

Swift::Int sub_10000C798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001480(&qword_100018C00, &qword_10000F8F0);
    v3 = sub_10000E848();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_10000E998();

      sub_10000E648();
      result = sub_10000E9B8();
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
          result = sub_10000E928();
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

id sub_10000C900(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000E618();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E608();
  v6 = sub_10000E5F8();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10.super.isa = sub_10000E488().super.isa;
  sub_10000E350(v6, v8);
  result = [(objc_class *)v10.super.isa DMCSHA256Hash];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  result = [result DMCHexString];
  if (result)
  {
    v12 = result;
    v13 = sub_10000E5E8();

    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000CA9C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000CBB8;
  v2 = swift_continuation_init();
  v0[17] = sub_100001480(&qword_100018BB8, &qword_10000F8B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000A60C;
  v0[13] = &unk_100014D10;
  v0[14] = v2;
  [v1 certificateStatusWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000CBB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10000D3E4;
  }

  else
  {
    v2 = sub_10000CCC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_10000CCC8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  [v1 scope];
  v3 = [v1 personaIdentifier];
  v57 = v0;
  if (v3)
  {
    v4 = v3;
    sub_10000E5E8();
  }

  v5 = 0;
  v6 = v2 + 64;
  v7 = -1;
  v8 = -1 << *(v2 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v2 + 64);
  v10 = (63 - v8) >> 6;
  for (i = v2; ; v2 = i)
  {
    v11 = v5;
    if (!v9)
    {
      break;
    }

LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(v2 + 56) + 8 * (v12 | (v5 << 6)));
    v14 = objc_opt_self();

    v15 = v13;
    v16 = sub_10000E5D8();

    v59 = [v14 newDeclarationKey:v16];

    sub_10000E538();
    v17 = v15;
    v18 = [v15 persistentRef];
    v19 = sub_10000E498();
    v21 = v20;

    v22 = sub_10000E528();
    sub_1000095D4(v19, v21);
    v23 = v22;
    v24 = [v59 keyWithoutServerToken];
    v25 = sub_10000E5E8();
    v27 = v26;

    sub_10000C900(v25, v27);

    v28 = SecCertificateCopySubjectSummary(v23);
    if (v28)
    {
      v29 = v28;
      v52 = sub_10000E5E8();
    }

    else
    {
      v52 = 0;
    }

    [v17 isIdentity];
    v30 = SecCertificateCopyData(v23);
    v55 = v23;

    v60 = sub_10000E498();
    v56 = v31;

    v53 = objc_opt_self();
    v32 = sub_10000E5D8();

    v33 = sub_10000E5D8();

    isa = sub_10000E6F8().super.super.isa;
    v35 = sub_10000E488().super.isa;
    v54 = [v53 buildRequiredOnlyWithIdentifier:v32 subjectSummary:v33 isIdentity:isa data:v35];

    v36 = [v59 declarationIdentifier];
    if (!v36)
    {
      sub_10000E5E8();
      v36 = sub_10000E5D8();
    }

    [v54 setStatusDeclarationIdentifier:v36];

    v37 = v54;
    sub_10000E698();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10000E6D8();
    }

    sub_10000E6E8();

    sub_1000095D4(v60, v56);
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v5 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v5);
    ++v11;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v3 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v38 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

LABEL_30:
  v50 = v3;
  v38 = sub_10000E8E8();
  v3 = v50;
  if (!v38)
  {
    goto LABEL_31;
  }

LABEL_20:
  v39 = v3;
  result = sub_10000B7F8(0, v38 & ~(v38 >> 63), 0);
  if (v38 < 0)
  {
    __break(1u);
    return result;
  }

  v41 = 0;
  v42 = v39;
  v43 = v39 & 0xC000000000000001;
  do
  {
    if (v43)
    {
      v44 = sub_10000E878();
    }

    else
    {
      v44 = v42[v41 + 4];
    }

    v45 = v44;
    v46 = [v44 serializeWithType:1];
    v47 = sub_10000E5B8();

    v49 = _swiftEmptyArrayStorage[2];
    v48 = _swiftEmptyArrayStorage[3];
    if (v49 >= v48 >> 1)
    {
      sub_10000B7F8((v48 > 1), v49 + 1, 1);
    }

    ++v41;
    _swiftEmptyArrayStorage[2] = v49 + 1;
    _swiftEmptyArrayStorage[v49 + 4] = v47;
    v42 = _swiftEmptyArrayStorage;
  }

  while (v38 != v41);
LABEL_31:

  v51 = *(v57 + 8);

  return v51(_swiftEmptyArrayStorage);
}

uint64_t sub_10000D3E4()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000D450(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return _swift_task_switch(sub_10000D470, 0, 0);
}

uint64_t sub_10000D470()
{
  v29 = v0;
  if (qword_100018838 != -1)
  {
    swift_once();
  }

  v1 = sub_10000E598();
  v0[26] = sub_100009434(v1, qword_100019128);

  v2 = sub_10000E578();
  v3 = sub_10000E758();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136446210;
    v6 = sub_10000E6C8();
    v8 = sub_10000B120(v6, v7, &v28);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Querying status for key paths:%{public}s", v4, 0xCu);
    sub_100009534(v5);
  }

  v9 = v0[24];
  v10 = sub_10000C274(_swiftEmptyArrayStorage);
  v11 = *(v9 + 16);
  v0[27] = v11;
  if (v11)
  {
    v12 = 0;
    v0[28] = RMModelStatusItemSecurityCertificateList;
    while (1)
    {
      v0[29] = v10;
      v0[30] = v12;
      v16 = v0[24] + 16 * v12;
      v17 = *(v16 + 32);
      v0[31] = v17;
      v18 = *(v16 + 40);
      v0[32] = v18;
      if (v17 == sub_10000E5E8() && v18 == v19)
      {
        break;
      }

      v21 = sub_10000E928();

      if (v21)
      {
        goto LABEL_20;
      }

      v22 = sub_10000E578();
      v23 = sub_10000E768();

      if (os_log_type_enabled(v22, v23))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v28 = v14;
        *v13 = 136315138;
        v15 = sub_10000B120(v17, v18, &v28);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v22, v23, "Ignoring unknown status key path:%s", v13, 0xCu);
        sub_100009534(v14);
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
    v26[1] = sub_10000D850;
    v27 = v0[25];

    return sub_10000CA7C(v27);
  }

  else
  {
LABEL_16:
    v24 = v0[1];

    return v24(v10);
  }
}

uint64_t sub_10000D850(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = sub_10000DD5C;
  }

  else
  {
    *(v4 + 280) = a1;
    v5 = sub_10000D978;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000D978()
{
  v36 = v0;
  v1 = *(v0 + 280);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = sub_100001480(&qword_100018BA8, &qword_10000F8A0);
  *(v0 + 16) = v1;
  *(v0 + 40) = v5;
  sub_10000E2C4((v0 + 16), (v0 + 112));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 184) = v4;
  v7 = sub_10000B6C8(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_30:
    v34 = v7;
    sub_10000C0D0();
    v7 = v34;
    goto LABEL_8;
  }

  LOBYTE(v3) = v8;
  if (*(*(v0 + 232) + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  sub_10000BBF4(v12, isUniquelyReferenced_nonNull_native);
  v7 = sub_10000B6C8(v14, v13);
  if ((v3 & 1) != (v15 & 1))
  {

    return sub_10000E948();
  }

LABEL_8:
  v17 = *(v0 + 184);
  if (v3)
  {
    v18 = (*(v17 + 56) + 32 * v7);
    sub_100009534(v18);
    sub_10000E2C4((v0 + 112), v18);
  }

  else
  {
    sub_10000BEF4(v7, *(v0 + 248), *(v0 + 256), (v0 + 112), *(v0 + 184));
  }

  v19 = *(v0 + 240) + 1;
  if (v19 == *(v0 + 216))
  {
LABEL_12:
    v20 = *(v0 + 8);

    return v20(v17);
  }

  else
  {
    while (1)
    {
      *(v0 + 232) = v17;
      *(v0 + 240) = v19;
      v24 = *(v0 + 192) + 16 * v19;
      v25 = *(v24 + 32);
      *(v0 + 248) = v25;
      v26 = *(v24 + 40);
      *(v0 + 256) = v26;
      if (v25 == sub_10000E5E8() && v26 == v27)
      {
        break;
      }

      v29 = sub_10000E928();

      if (v29)
      {
        goto LABEL_26;
      }

      v30 = sub_10000E578();
      v31 = sub_10000E768();

      if (os_log_type_enabled(v30, v31))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v35 = v22;
        *v21 = 136315138;
        v23 = sub_10000B120(v25, v26, &v35);

        *(v21 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v30, v31, "Ignoring unknown status key path:%s", v21, 0xCu);
        sub_100009534(v22);
      }

      else
      {
      }

      v19 = *(v0 + 240) + 1;
      if (v19 == *(v0 + 216))
      {
        goto LABEL_12;
      }
    }

LABEL_26:
    v32 = swift_task_alloc();
    *(v0 + 264) = v32;
    *v32 = v0;
    v32[1] = sub_10000D850;
    v33 = *(v0 + 200);

    return sub_10000CA7C(v33);
  }
}

uint64_t sub_10000DD5C()
{
  v42 = v0;
  swift_errorRetain();
  v1 = sub_10000E578();
  v2 = sub_10000E768();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not query certificate asset keys:%{public}@", v3, 0xCu);
    sub_10000E2D4(v4, &qword_100018BA0, &qword_10000F898);
  }

  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);

  swift_getErrorValue();
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  *(v0 + 72) = v9;
  v11 = sub_10000E260((v0 + 48));
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  sub_10000E2C4((v0 + 48), (v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 176) = v8;
  v13 = sub_10000B6C8(v7, v6);
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
    sub_10000C0D0();
    v13 = v25;
    v23 = *(v0 + 176);
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  sub_10000BBF4(v18, isUniquelyReferenced_nonNull_native);
  v13 = sub_10000B6C8(v20, v19);
  if ((v6 & 1) != (v21 & 1))
  {

    return sub_10000E948();
  }

LABEL_10:
  v23 = *(v0 + 176);
  if (v6)
  {
LABEL_11:
    v24 = (v23[7] + 32 * v13);
    sub_100009534(v24);
    sub_10000E2C4((v0 + 80), v24);
    goto LABEL_15;
  }

LABEL_14:
  sub_10000BEF4(v13, *(v0 + 248), *(v0 + 256), (v0 + 80), v23);

LABEL_15:

  v26 = *(v0 + 240) + 1;
  if (v26 == *(v0 + 216))
  {
LABEL_16:
    v27 = *(v0 + 8);

    return v27(v23);
  }

  else
  {
    while (1)
    {
      *(v0 + 232) = v23;
      *(v0 + 240) = v26;
      v31 = *(v0 + 192) + 16 * v26;
      v32 = *(v31 + 32);
      *(v0 + 248) = v32;
      v33 = *(v31 + 40);
      *(v0 + 256) = v33;
      if (v32 == sub_10000E5E8() && v33 == v34)
      {
        break;
      }

      v36 = sub_10000E928();

      if (v36)
      {
        goto LABEL_30;
      }

      v37 = sub_10000E578();
      v38 = sub_10000E768();

      if (os_log_type_enabled(v37, v38))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v41 = v29;
        *v28 = 136315138;
        v30 = sub_10000B120(v32, v33, &v41);

        *(v28 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v37, v38, "Ignoring unknown status key path:%s", v28, 0xCu);
        sub_100009534(v29);
      }

      else
      {
      }

      v26 = *(v0 + 240) + 1;
      if (v26 == *(v0 + 216))
      {
        goto LABEL_16;
      }
    }

LABEL_30:
    v39 = swift_task_alloc();
    *(v0 + 264) = v39;
    *v39 = v0;
    v39[1] = sub_10000D850;
    v40 = *(v0 + 200);

    return sub_10000CA7C(v40);
  }
}

uint64_t *sub_10000E260(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_10000E2C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000E2D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001480(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E350(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000095D4(result, a2);
  }

  return result;
}

uint64_t sub_10000E364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001480(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}