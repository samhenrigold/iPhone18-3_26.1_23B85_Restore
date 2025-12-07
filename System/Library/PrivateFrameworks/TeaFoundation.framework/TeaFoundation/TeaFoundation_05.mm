void sub_1BF04DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_49_1();
  v15 = v14;
  v17 = OUTLINED_FUNCTION_16_2(v14, v16);
  sub_1BF00088C(v17);
  OUTLINED_FUNCTION_1_5();
  if (v18)
  {
    __break(1u);
LABEL_14:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  v19 = OUTLINED_FUNCTION_53_1();
  sub_1BF04DFC0(v19);
  if (OUTLINED_FUNCTION_18_3(v20))
  {
    sub_1BF00088C(v10);
    OUTLINED_FUNCTION_47_0();
    if (!v22)
    {
      goto LABEL_14;
    }

    v13 = v21;
  }

  if (v12)
  {
    *(*(*v11 + 56) + 8 * v13) = v15;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_55();

    sub_1BF04E0B8(v24, v25, v26, v27);
  }
}

uint64_t ObservableProperty.__deallocating_deinit()
{
  ObservableProperty.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *ObservableProperty.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_29();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 96)]);
  return v0;
}

uint64_t sub_1BF04DE34(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BF04DC90(a4, a3, isUniquelyReferenced_nonNull_native, v12, v13, v14, v15, v16, v18, *a2);
    *a2 = v19;
    swift_endAccess();
    v17 = *(v19 + 16);
    result = sub_1BEFE90AC(a5);
    if (v17 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      sub_1BF04E11C(0, v17, a2);
      sub_1BF000C1C();
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_49_3(void *result)
{
  result[2] = v2;
  result[3] = v5;
  result[4] = v1;
  result[5] = v4;
  result[6] = v3;
  return result;
}

void sub_1BF04DFC0(uint64_t a1)
{
  if (!qword_1ED8E9BB0)
  {
    sub_1BEFEC0B0(255, &qword_1ED8E9C58, &type metadata for AnyReference, MEMORY[0x1E69E62F8]);
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9BB0);
    }
  }
}

void sub_1BF04E0B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14_9(v4, v5, v6, v7);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_13(v8, v9);
  }
}

uint64_t sub_1BF04E11C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = result;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = result;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (a2 == i)
    {
      return v8;
    }

    if (a2 < v7)
    {
      break;
    }

    if (v9 < v7)
    {
      goto LABEL_17;
    }

    if (i >= a2)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    v11 = *a3;
    if (*(*a3 + 16))
    {
      v12 = sub_1BF00088C(i);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);
        swift_endAccess();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = v4;
        if ((result & 1) == 0)
        {
          result = sub_1BF04E290(0, v8[2] + 1, 1, v8);
          v8 = result;
        }

        v16 = v8[2];
        v15 = v8[3];
        if (v16 >= v15 >> 1)
        {
          result = sub_1BF04E290((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        v9 = i + 1;
        v8[2] = v16 + 1;
        v8[v16 + 4] = v14;
        v4 = v17;
        goto LABEL_2;
      }
    }

    result = swift_endAccess();
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BF04E290(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BEFFF95C(0, &unk_1ED8E9B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BEFEC638(0, &qword_1ED8E9C58, &type metadata for AnyReference, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id OUTLINED_FUNCTION_79_1(void *a1)
{
  a1[2] = v1;
  a1[3] = v7;
  a1[4] = v3;
  a1[5] = v6;
  a1[6] = v4;
  a1[7] = v2;
  a1[8] = v5;

  return v1;
}

uint64_t OUTLINED_FUNCTION_155()
{
}

uint64_t static Promise.timeout<A>(after:on:promise:message:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*a3 + 80);
  v11 = type metadata accessor for Promise(0, v10, a3, a4);
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v12 = sub_1BF17A50C();
  v14 = v13;
  *v13 = a3;

  v14[1] = static Promise.timeout<A>(after:on:message:)(a1, a2, a4, a5, v10);
  sub_1BF00CD7C(v12, v11);
  static Promise.race(_:)(v15);
  OUTLINED_FUNCTION_65();
  return v11;
}

uint64_t NSProcessInfo.launchArgument<A>(forKey:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = [objc_opt_self() processInfo];
  v9 = [v8 arguments];

  v10 = sub_1BF17A4DC();
  v11 = sub_1BEFFF260();
  v13 = sub_1BF0432FC(v11, v12, v10);
  LOBYTE(v9) = v14;

  if (v9)
  {

    v16 = OUTLINED_FUNCTION_0_50();

    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }

  v20 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v20 >= *(v10 + 16))
  {
    v24 = OUTLINED_FUNCTION_0_50();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    goto LABEL_10;
  }

  if (v20 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v21 = v10 + 16 * v20;
  v22 = *(v21 + 32);
  v23 = *(v21 + 40);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF0D4630(v22, v23, a3, a4, x8_0);
LABEL_10:
}

uint64_t static Promise.timeout<A>(after:on:message:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1BF04E824(a2);
  type metadata accessor for Promise(0, a5, v7, v8);
  v9 = Promise.__allocating_init(resolver:)();

  return v9;
}

id sub_1BF04E824(void *a1)
{
  v15 = a1;
  v1 = sub_1BF179B6C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v8 = v15;
  if (off_1ED8F0218 == v15)
  {
    goto LABEL_12;
  }

  if (qword_1ED8EFB98 != -1)
  {
    swift_once();
    v8 = v15;
  }

  if (qword_1ED8EFC18 == v8)
  {
LABEL_12:
    sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
    (*(v3 + 104))(v7, *MEMORY[0x1E69E7F98], v1);
    v11 = sub_1BF17ADAC();
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);
  if (qword_1ED8EF920 != -1)
  {
    swift_once();
  }

  if (sub_1BF17ADEC())
  {
    v9 = [objc_opt_self() isMainThread];
    sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
    if (v9)
    {
      v10 = MEMORY[0x1E69E7F88];
    }

    else
    {
      v10 = MEMORY[0x1E69E7F98];
    }

    (*(v3 + 104))(v7, *v10, v1);
    v11 = sub_1BF17ADAC();
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  v12 = v15;

  return v12;
}

uint64_t SyncObservable.__deallocating_deinit()
{
  SyncObservable.deinit();
  v0 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t SyncObservable.deinit()
{

  return v0;
}

uint64_t sub_1BF04EB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a6;
  v27 = a5;
  v12 = sub_1BF179B5C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF179BBC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a7;
  v22[5] = a8;
  aBlock[4] = sub_1BF0BB6BC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_3;
  v23 = _Block_copy(aBlock);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF179B8C();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7458(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF027D54(0);
  sub_1BEFF7458(&qword_1ED8EFBD0, sub_1BF027D54, MEMORY[0x1E69E6328]);
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B00](v26, v21, v16, v23);
  _Block_release(v23);
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
}

uint64_t sub_1BF04EE44()
{

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1BF04EE80()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_115_0(v1, &unk_1ED8EAB08);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_96_0();
  v3 = OUTLINED_FUNCTION_54_3(v2, &unk_1ED8E9D08);
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v4);

  v5 = OUTLINED_FUNCTION_3_8();
  sub_1BF04F60C(v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_19_5();

  v13 = v0(v12);
  OUTLINED_FUNCTION_18_4(v13);
  if (*(v3 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void static Promise.race(_:)(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  WitnessTable = swift_getWitnessTable();
  static Promise.race<A>(_:)(&v3, v1, WitnessTable);
}

void static Promise.race<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v24[0] = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v24 - v16;
  if (sub_1BF17AA7C())
  {
    sub_1BF095D40();
    swift_allocError();
    *v20 = xmmword_1BF184A50;
    *(v20 + 16) = 2;
    OUTLINED_FUNCTION_26_2();

    Promise.__allocating_init(error:)();
  }

  else
  {
    type metadata accessor for OnlyOnceDeferredPromise(0, *(v3 + 80), v18, v19);
    v22 = OnlyOnceDeferredPromise.__allocating_init()();
    (*(v7 + 16))(v11, a1, a2);
    sub_1BF17A32C();
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1BF17AF0C();
      if (!v24[1])
      {
        break;
      }

      v23 = sub_1BF041694();
      sub_1BF04F448();
    }

    (*(v24[0] + 8))(v17, AssociatedTypeWitness);
    swift_beginAccess();
    if (*(v22 + 16))
    {

      OUTLINED_FUNCTION_26_2();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BF04F2C8()
{
  OUTLINED_FUNCTION_86_1();
  swift_unownedRetain();
  swift_unownedRetain();

  v3 = OUTLINED_FUNCTION_130();
  sub_1BEFEEEE0(v3, v4);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();
  swift_unownedRetain();
  v5 = OUTLINED_FUNCTION_80_1();
  v2(v5);
  OUTLINED_FUNCTION_95();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_125(v0, v7);
  *v0 = v2;

  return v1;
}

uint64_t sub_1BF04F3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  OUTLINED_FUNCTION_17_3();
  v7(0);
  OUTLINED_FUNCTION_50_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_13_6(v8, MEMORY[0x1E69E7CC0]);
  a5(0);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v5;
}

uint64_t sub_1BF04F448()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_1_10();
    swift_once();
  }

  v2 = off_1ED8F0218;
  sub_1BF04F558(v1);
  sub_1BF04F5CC(v1);
  sub_1BF04F91C(v1);
  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v2(v3);
  OUTLINED_FUNCTION_55();
}

void (*sub_1BF04F60C(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v24 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  v17 = sub_1BF04F7FC(sub_1BF0A8FC4, v15);
  v19 = v18;

  os_unfair_lock_unlock(*(v24 + 16));
  if (!v19)
  {
    v20 = sub_1BF04F95C(v17, 0, v16, a6, a7);
LABEL_7:
    v22 = v20;
    goto LABEL_8;
  }

  if (v19 != 1)
  {
    if (v19 != 2)
    {
      return nullsub_1;
    }

    v20 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = v17;

  sub_1BF0019A0(v17, 1);
  v22 = sub_1BF006210(v16, sub_1BF02E21C, v21);

LABEL_8:
  sub_1BF001964(v17, v19);
  return v22;
}

void *sub_1BF04F7FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_assert_owner(*(*(v3 + 16) + 16));
  if ((*(v3 + 24) & 1) == 0)
  {
    sub_1BF04A08C(0, &unk_1ED8E9DE8);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v10);
    sub_1BF005F5C(*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    return 0;
  }

  result = swift_beginAccess();
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
    v8 = *(v3 + 40);
    sub_1BF000E90(v8, v7);
    return v8;
  }

  __break(1u);
  return result;
}

void (*sub_1BF04F95C(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

uint64_t sub_1BF04FB50@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ReferenceDecodingPool();
  swift_allocObject();
  v3 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  result = ReferenceDecodingPool.init(references:)(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1BF04FBE0(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  sub_1BF000C1C();
}

Swift::Void __swiftcall DoublyLinkedList.removeAll()()
{
  OUTLINED_FUNCTION_26_4(v1 + 16, v0);
  while (*(v1 + 16))
  {

    DoublyLinkedList.remove(node:)(v2);
  }
}

uint64_t static Promise.all(_:)(uint64_t a1)
{
  v7 = a1;
  v1 = sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_1BF041694();
  static Promise.all<A>(on:_:)(v3, &v7, v1, WitnessTable);
  v5 = v4;

  return v5;
}

uint64_t ReferenceDecodingPool.init(references:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      v4 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      ReferenceDecodingPool.insert(contentsOf:)(v4);

      --v2;
    }

    while (v2);
  }

  return v1;
}

Swift::Void __swiftcall ReferenceDecodingPool.insert(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v1 = *(contentsOf._rawValue + 2);
  if (v1)
  {
    v2 = (contentsOf._rawValue + 32);
    do
    {
      ReferenceDecodingPool.insert(_:)(v2);
      v2 += 9;
      --v1;
    }

    while (v1);
  }
}

uint64_t ReferenceDecodingPool.insert(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  v6 = sub_1BF04FEBC(v4, v5, *(v2 + 16));
  swift_endAccess();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v8 = a1[2];
  if ((a1[4] & 1) == 0)
  {
    sub_1BF0075BC((a1 + 5), v39);
    v31 = OUTLINED_FUNCTION_8_13();
    sub_1BF050334(v31, v32, 0);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1BF050248();
    OUTLINED_FUNCTION_8_13();
    sub_1BF050674();
LABEL_24:
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v2 + 16);
    sub_1BF0507AC();
    *(v2 + 16) = v38;
    return swift_endAccess();
  }

  sub_1BF0075BC((a1 + 5), v39);
  v9 = OUTLINED_FUNCTION_1_24();
  sub_1BF0BD690(v9, v10, v11);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_13();
    sub_1BF050674();
    goto LABEL_24;
  }

  v12 = v37;
  v36 = *(v37 + 16);
  if (v36 != *(v8 + 16))
  {
    OUTLINED_FUNCTION_8_13();
    sub_1BF050674();

    goto LABEL_24;
  }

  v34 = v2;
  v35 = v8;
  v13 = 0;
  v14 = v37 + 32;
  v15 = (v8 + 40);
  while (1)
  {
    if (v36 == v13)
    {
      sub_1BF050674();

      v2 = v34;
      goto LABEL_24;
    }

    if (v13 >= *(v8 + 16))
    {
      break;
    }

    if (v13 >= *(v12 + 16))
    {
      goto LABEL_26;
    }

    v16 = *(v15 - 1);
    v17 = *v15;
    v18 = v15;
    v19 = v14;
    sub_1BF0075BC(v14, v39);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1BF014CA8();
    if (__OFADD__(v7[2], (v21 & 1) == 0))
    {
      goto LABEL_27;
    }

    v22 = v20;
    v23 = v21;
    sub_1BF0BD5D0(0, &qword_1ED8E9BC8, MEMORY[0x1E69E6DC8]);
    if (sub_1BF17B43C())
    {
      v24 = sub_1BF014CA8();
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_29;
      }

      v22 = v24;
    }

    if (v23)
    {

      v26 = (v7[7] + 32 * v22);
      __swift_destroy_boxed_opaque_existential_1(v26);
      sub_1BEFF9A40(v39, v26);
    }

    else
    {
      v7[(v22 >> 6) + 8] |= 1 << v22;
      v27 = (v7[6] + 16 * v22);
      *v27 = v16;
      v27[1] = v17;
      sub_1BEFF9A40(v39, (v7[7] + 32 * v22));
      v28 = v7[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_28;
      }

      v7[2] = v30;
    }

    v15 = v18 + 2;
    v14 = v19 + 32;
    ++v13;
    v8 = v35;
    v12 = v37;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

_OWORD *sub_1BF050248()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_27_2();
  v4 = v3;
  OUTLINED_FUNCTION_6_4(v3, v5);
  sub_1BF014CA8();
  OUTLINED_FUNCTION_1_5();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_19_4();
  sub_1BF050340();
  if (OUTLINED_FUNCTION_10_7(v7))
  {
    OUTLINED_FUNCTION_41_0();
    sub_1BF014CA8();
    OUTLINED_FUNCTION_8_2();
    if (!v9)
    {
      goto LABEL_14;
    }

    v2 = v8;
  }

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v0 + 56) + 32 * v2));
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_55();

    return sub_1BEFF9A40(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    sub_1BF0505FC(v14, v15, v16, v4, v17);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF050340()
{
  if (!qword_1ED8E9BC8)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9BC8);
    }
  }
}

uint64_t Result.init(value:error:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_2_0();
  v20 = (v19 - v18);
  (*(v10 + 16))(v14, a1, v8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, a3);
  v22 = *(v10 + 8);
  if (EnumTagSinglePayload == 1)
  {
    v22(v14, v8);
    if (!a2)
    {
      type metadata accessor for Result.Errors(0, a3, v23, v24);
      swift_getWitnessTable();
      a2 = swift_allocError();
    }

    v22(a1, v8);
    *a4 = a2;
    type metadata accessor for Result(0, a3, v25, v26);
  }

  else
  {
    v22(a1, v8);

    v27 = *(v15 + 32);
    v27(v20, v14, a3);
    v27(a4, v20, a3);
    type metadata accessor for Result(0, a3, v28, v29);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1BF0505FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_29(a1, a2, a3, a4, a5);
  sub_1BEFF9A40(v8, (v7 + 32 * v6));
  OUTLINED_FUNCTION_12_11();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t objectdestroy_39Tm()
{

  v0 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF050680()
{
  OUTLINED_FUNCTION_80();
  v21 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_6_4(v6, v8);
  sub_1BEFF6B90();
  OUTLINED_FUNCTION_1_5();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1BEFE9FF8(0, v5, v3, sub_1BF0264F8, &type metadata for ReferenceType);
  if (OUTLINED_FUNCTION_14_4(v14))
  {
    sub_1BEFF6B90();
    OUTLINED_FUNCTION_11_2();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  if (v13)
  {
    *(*(*v0 + 56) + 8 * v12) = v7;
    OUTLINED_FUNCTION_33();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_58_0();
    v21(v19);
    OUTLINED_FUNCTION_33();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

Swift::String_optional __swiftcall Dictionary.jsonRepresentation(options:)(NSJSONWritingOptions options)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BF17A12C();
  v3 = OUTLINED_FUNCTION_68(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_2_0();
  v5 = objc_opt_self();
  OUTLINED_FUNCTION_17_2();
  v6 = sub_1BF179D3C();
  v19[0] = 0;
  v7 = [v5 dataWithJSONObject:v6 options:options error:v19];

  v8 = v19[0];
  if (v7)
  {
    v9 = sub_1BF17935C();
    v11 = v10;

    sub_1BF17A10C();
    v12 = sub_1BF17A0CC();
    v7 = v13;
    sub_1BF014E18(v9, v11);
  }

  else
  {
    v14 = v8;
    v15 = sub_1BF17911C();

    swift_willThrow();
    v12 = 0;
  }

  v16 = v12;
  v17 = v7;
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

void sub_1BF050964()
{
  if (!qword_1ED8EAE98)
  {
    v0 = sub_1BF179E9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAE98);
    }
  }
}

uint64_t combine<A, B, C>(_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a2;
  v6[4] = a3;

  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v8, sub_1BF050E30, v6, TupleTypeMetadata3);
  v10 = v9;

  return v10;
}

uint64_t sub_1BF050AE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF050B50(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a1);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v10);
  v12 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a4;
  *(v13 + 3) = *(v6 + 80);
  *(v13 + 4) = *(v7 + 80);
  *(v13 + 5) = a3;
  (*(v8 + 32))(&v13[v12], v11, a4);

  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v15, sub_1BF051290, v13, TupleTypeMetadata3);
  v17 = v16;

  return v17;
}

uint64_t sub_1BF050D18()
{
  OUTLINED_FUNCTION_2_56();

  v0 = OUTLINED_FUNCTION_92();
  v1(v0);
  v2 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF050DB4(uint64_t a1, void (*a2)(uint64_t, void))
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_49_0();
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_32_8();

    a2(v5, 0);
    OUTLINED_FUNCTION_31_9();
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return OUTLINED_FUNCTION_6_5();
}

void sub_1BF050ED8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BF000FDC(a1, a2, MEMORY[0x1E69E7D48]);
  }
}

uint64_t sub_1BF050F30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  v29 = *a2;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v16, v17, v18, v15);
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5);
  v19 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v20 = (v12 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a4;
  *(v21 + 3) = a5;
  *(v21 + 4) = *(v29 + 80);
  (*(v11 + 32))(&v21[v19], v16, a4);
  (*(v8 + 32))(&v21[v20], v28, a5);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v23 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v23, sub_1BF051300, v21, TupleTypeMetadata3);
  v25 = v24;

  return v25;
}

uint64_t sub_1BF0511A4()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_77_2();
  v3 = *(v1 - 8);
  v4 = (((*(v2 + 80) + 40) & ~*(v2 + 80)) + *(v2 + 64) + *(v3 + 80)) & ~*(v3 + 80);
  OUTLINED_FUNCTION_71_1();
  v6 = *(v5 + 64);
  v9 = v7 | v8;
  v11(v0 + v10);
  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v9 | 7);
}

id sub_1BF0512E4(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1BF051300()
{
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_167();
  return sub_1BF0513D8(v4, v0 + v3, v0 + ((v3 + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v5, v2, v6, v7);
}

uint64_t OUTLINED_FUNCTION_104_0()
{
  v2 = v0[2];
  *(v1 - 104) = v0[3];
  *(v1 - 96) = v2;
  result = v0[5];
  *(v1 - 120) = v0[4];
  return result;
}

uint64_t sub_1BF0513D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(TupleTypeMetadata3 + 48);
  v16 = *(TupleTypeMetadata3 + 64);
  (*(*(a4 - 8) + 16))(a7, a2, a4);
  (*(*(a5 - 8) + 16))(a7 + v15, a3, a5);
  return (*(*(a6 - 8) + 16))(a7 + v16, a1, a6);
}

void Multicaster.makeStream(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v20;
  a20 = v21;
  v22 = sub_1BF17A7BC();
  v23 = sub_1BF17AE6C();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &a9 - v25;
  v27 = sub_1BF1794FC();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_62();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &a9 - v33;
  sub_1BF17A78C();
  sub_1BF1794EC();
  (*(v30 + 16))(v26, v34, v22);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v22);
  OUTLINED_FUNCTION_0_89();
  sub_1BEFE7314(v35, v36, MEMORY[0x1E69695B8]);
  sub_1BF179E9C();
  sub_1BF179EBC();
  (*(v30 + 8))(v34, v22);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF05171C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  sub_1BF022610(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = sub_1BF17B42C();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_1_38();
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(v25, v17, v18);
    v30[3] = type metadata accessor for ReferenceDecodingPool();
    v30[0] = a4;
    swift_beginAccess();

    sub_1BF022668(v30, v25);
    swift_endAccess();
    sub_1BF015544(a1, a2, a3, a5, a6, a7);
    return sub_1BF0581A0(v8);
  }

  return result;
}

id sub_1BF051984@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a4;
  v70 = a2;
  v7 = sub_1BF1794AC();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v24 = &v65 - v23;
  v25 = *a1;
  v26 = *v4;
  v27 = *(v4 + 8);
  if (*(v4 + 16))
  {
    if (*(v4 + 16) == 1)
    {
      v68 = &type metadata for _JSONDecoder;
      v69 = sub_1BF0172B8();
      v28 = swift_allocObject();
      v67[0] = v28;
      *(v28 + 48) = v70;
      *(v28 + 56) = a3;
      *(v28 + 16) = v25;
      *(v28 + 24) = v26;
      *(v28 + 32) = v27;
      *(v28 + 40) = 1;
      sub_1BF01716C(v25);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01730C(v26, v27, 1);
      (v26)(v67);
      return __swift_destroy_boxed_opaque_existential_1(v67);
    }

    switch(v26)
    {
      case 1uLL:
        if (v25 >> 61 != 3)
        {
          sub_1BF05350C();
          swift_allocError();
          v41 = 0xE600000000000000;
          v42 = 0x7463656A626FLL;
          switch(v25 >> 61)
          {
            case 1uLL:
              goto LABEL_28;
            case 2uLL:
              goto LABEL_39;
            case 3uLL:
              goto LABEL_22;
            case 4uLL:
              goto LABEL_35;
            default:
              goto LABEL_40;
          }

          goto LABEL_40;
        }

        v56 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v55 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF052280(v56, v55);
        if ((v57 & 1) == 0)
        {
          return sub_1BF17943C();
        }

        goto LABEL_21;
      case 2uLL:
        if (v25 >> 61 == 3)
        {
          v44 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v43 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          sub_1BF052280(v44, v43);
          if ((v45 & 1) == 0)
          {
            return sub_1BF17943C();
          }

LABEL_21:
          sub_1BF05350C();
          swift_allocError();
LABEL_22:
          v41 = 0xE600000000000000;
          v42 = 0x7265626D756ELL;
        }

        else
        {
          sub_1BF05350C();
          swift_allocError();
          v41 = 0xE600000000000000;
          v42 = 0x7463656A626FLL;
          switch(v25 >> 61)
          {
            case 1uLL:
LABEL_28:
              v41 = 0xE500000000000000;
              v42 = 0x7961727261;
              break;
            case 2uLL:
LABEL_39:
              v42 = 0x676E69727473;
              break;
            case 3uLL:
              goto LABEL_22;
            case 4uLL:
LABEL_35:
              v41 = 0xE400000000000000;
              v42 = 1702195828;
              v61 = 0xE500000000000000;
              v62 = 0x65736C6166;
              if (v25 != 0x8000000000000008)
              {
                v62 = 1819047278;
                v61 = 0xE400000000000000;
              }

              if (v25 != 0x8000000000000000)
              {
                v42 = v62;
                v41 = v61;
              }

              break;
            default:
              break;
          }
        }

LABEL_40:
        v63 = 0x7265626D756ELL;
        goto LABEL_45;
      case 3uLL:
        if (v25 >> 61 != 2)
        {
          sub_1BF05350C();
          swift_allocError();
          v59 = 0xE600000000000000;
          v60 = 0x7463656A626FLL;
          switch(v25 >> 61)
          {
            case 1uLL:
              v59 = 0xE500000000000000;
              v60 = 0x7961727261;
              break;
            case 2uLL:
              v60 = 0x676E69727473;
              break;
            case 3uLL:
              v60 = 0x7265626D756ELL;
              break;
            case 4uLL:
              if (v25 == 0x8000000000000000)
              {
                v59 = 0xE400000000000000;
                v60 = 1702195828;
              }

              else if (v25 == 0x8000000000000008)
              {
                v59 = 0xE500000000000000;
                v60 = 0x65736C6166;
              }

              else
              {
                v59 = 0xE400000000000000;
                v60 = 1819047278;
              }

              break;
            default:
              break;
          }

          *v40 = v70;
          *(v40 + 8) = 0x676E69727473;
          *(v40 + 16) = 0xE600000000000000;
          *(v40 + 24) = v60;
          *(v40 + 32) = v59;
          goto LABEL_46;
        }

        v46 = v22;
        v47 = v21;
        v49 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v48 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v50 = qword_1ED8EA730;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if (v50 != -1)
        {
          swift_once();
        }

        v51 = qword_1ED8EA738;
        v52 = sub_1BF17A07C();
        v53 = [v51 dateFromString_];

        if (v53)
        {

          sub_1BF17945C();

          v54 = *(v46 + 32);
          v54(v24, v18, v47);
          return (v54)(v66, v24, v47);
        }

        sub_1BF05350C();
        swift_allocError();
        *v64 = v70;
        *(v64 + 8) = v49;
        *(v64 + 16) = v48;
        *(v64 + 80) = 8;
        swift_willThrow();
        break;
      default:
        v68 = &type metadata for _JSONDecoder;
        v69 = sub_1BF0172B8();
        v39 = swift_allocObject();
        v67[0] = v39;
        *(v39 + 48) = v70;
        *(v39 + 56) = a3;
        *(v39 + 16) = v25;
        *(v39 + 24) = v26;
        *(v39 + 32) = v27;
        *(v39 + 40) = 2;
        sub_1BF01716C(v25);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return sub_1BF17947C();
    }

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  if (v25 >> 61 != 2)
  {
    sub_1BF05350C();
    swift_allocError();
    v41 = 0xE600000000000000;
    v42 = 0x7463656A626FLL;
    switch(v25 >> 61)
    {
      case 1uLL:
        v41 = 0xE500000000000000;
        v42 = 0x7961727261;
        break;
      case 2uLL:
        v42 = 0x676E69727473;
        break;
      case 3uLL:
        v42 = 0x7265626D756ELL;
        break;
      case 4uLL:
        if (v25 == 0x8000000000000000)
        {
          v41 = 0xE400000000000000;
          v42 = 1702195828;
        }

        else if (v25 == 0x8000000000000008)
        {
          v41 = 0xE500000000000000;
          v42 = 0x65736C6166;
        }

        else
        {
          v41 = 0xE400000000000000;
          v42 = 1819047278;
        }

        break;
      default:
        break;
    }

    v63 = 0x676E69727473;
LABEL_45:
    *v40 = v70;
    *(v40 + 8) = v63;
    *(v40 + 16) = 0xE600000000000000;
    *(v40 + 24) = v42;
    *(v40 + 32) = v41;
LABEL_46:
    *(v40 + 80) = 10;
    swift_willThrow();
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  v30 = v22;
  v65 = v21;
  v31 = v25 & 0x1FFFFFFFFFFFFFFFLL;
  v33 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v32 = *(v31 + 24);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v34 = sub_1BF17A07C();
  v35 = [v26 dateFromString_];

  if (v35)
  {

    sub_1BF17945C();

    v36 = *(v30 + 32);
    v37 = v10;
    v38 = v65;
    v36(v14, v37, v65);
    return (v36)(v66, v14, v38);
  }

  else
  {
    sub_1BF05350C();
    swift_allocError();
    *v58 = v70;
    *(v58 + 8) = v26;
    *(v58 + 16) = v33;
    *(v58 + 24) = v32;
    *(v58 + 80) = 5;
    swift_willThrow();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    return sub_1BF01730C(v26, v27, 0);
  }
}

uint64_t sub_1BF052280(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1BF0524C4(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0522E4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[5];
  v4 = *v1 >> 61;
  if (v4 == 3)
  {
    v5 = v2 & 0x1FFFFFFFFFFFFFFFLL;
    v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *(v5 + 24);
    swift_bridgeObjectRetain_n();
    sub_1BF052280(v7, v6);
    if ((v8 & 1) == 0)
    {
    }

    sub_1BF05350C();
    swift_allocError();
    *v9 = v3;
    *(v9 + 8) = v7;
    *(v9 + 16) = v6;
    v10 = 13;
  }

  else
  {
    sub_1BF05350C();
    swift_allocError();
    v11 = 0xE600000000000000;
    v12 = 0x7463656A626FLL;
    switch(v4)
    {
      case 1uLL:
        v11 = 0xE500000000000000;
        v12 = 0x7961727261;
        break;
      case 2uLL:
        v12 = 0x676E69727473;
        break;
      case 3uLL:
        v12 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v11 = 0xE400000000000000;
        v12 = 1702195828;
        v14 = 0xE500000000000000;
        v15 = 0x65736C6166;
        if (v2 != 0x8000000000000008)
        {
          v15 = 1819047278;
          v14 = 0xE400000000000000;
        }

        if (v2 != 0x8000000000000000)
        {
          v12 = v15;
          v11 = v14;
        }

        break;
      default:
        break;
    }

    *v9 = v3;
    *(v9 + 8) = 0x7265626D756ELL;
    *(v9 + 16) = 0xE600000000000000;
    *(v9 + 24) = v12;
    v10 = 10;
    *(v9 + 32) = v11;
  }

  *(v9 + 80) = v10;
  swift_willThrow();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

BOOL sub_1BF0524C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1BF17B1BC();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_1BF0525F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Version.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_11();
  sub_1BF17BBBC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    OUTLINED_FUNCTION_2_11();
    v5 = sub_1BF17B89C();
    v7 = v5;
    v8 = v6;
    sub_1BF024410(v5, v6, &v13);
    v9 = v13;
    if (v13)
    {
      v10 = v15;
      v12 = v14;

      __swift_destroy_boxed_opaque_existential_1(v16);
      *a2 = v9;
      *(a2 + 8) = v12;
      *(a2 + 24) = v10;
    }

    else
    {
      v13 = 0;
      *&v14 = 0xE000000000000000;
      sub_1BF17B1EC();

      v13 = 0xD00000000000001ELL;
      *&v14 = 0x80000001BF18F5F0;
      MEMORY[0x1BFB52000](v7, v8);

      MEMORY[0x1BFB52000](39, 0xE100000000000000);
      sub_1BF17B29C();
      swift_allocError();
      sub_1BF17B26C();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int sub_1BF0528C0(Swift::Int *a1)
{
  result = Stack.index(after:)(*a1);
  *a1 = result;
  return result;
}

void SafeishArray.init(from:)()
{
  OUTLINED_FUNCTION_25_11();
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v30 = v7;
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v32 = v9;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_3();
  v31 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_4_1();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v28 - v20;
  v23 = v6[3];
  v22 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v23);
  Decoder.safeishUnkeyedContainer()(v23, v22, &v38);
  if (v0)
  {
    v27 = v6;
  }

  else
  {
    v35 = v17;
    v36 = v8;
    v29 = v6;
    v41 = sub_1BF17A56C();
    __swift_project_boxed_opaque_existential_1(v39, v40);
    sub_1BF17B72C();
    if ((v24 & 1) == 0)
    {
      sub_1BF17A65C();
      OUTLINED_FUNCTION_14_24();
      sub_1BF17A52C();
    }

    v33 = (v31 + 16);
    v34 = (v31 + 32);
    v25 = (v31 + 8);
    v26 = (v32 + 8);
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v39, v40);
      if (sub_1BF17B74C())
      {
        break;
      }

      SafeishUnkeyedDecodingContainer.decode<A>(_:)(v4, v4, v37);
      if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
      {
        (*v26)(v1, v36);
      }

      else
      {
        (*v34)(v21, v1, v4);
        (*v33)(v35, v21, v4);
        sub_1BF17A65C();
        OUTLINED_FUNCTION_14_24();
        sub_1BF17A5DC();
        (*v25)(v21, v4);
      }
    }

    sub_1BF053310(&v38);
    v27 = v29;
    *v30 = v41;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_24_1();
}

void (*sub_1BF052BF0(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  Stack.subscript.getter(a2, a3, v7, v8, v9, v10, v11, v12, v14, v15, v16, v17, v18, v19);
  return sub_1BF04619C;
}

void (*sub_1BF052CCC(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1BF052BF0(v6, *a2, a3);
  return sub_1BF0462C0;
}

uint64_t Stack.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = Stack.startIndex.getter(a2);
  result = Stack.endIndex.getter(a2);
  if (result < v16)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v16 > a1 || result <= a1)
  {
    goto LABEL_10;
  }

  return sub_1BF17A69C();
}

void *sub_1BF052E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(void *__return_ptr, uint64_t, uint64_t)@<X2>, uint64_t (*a4)(void *, BOOL *)@<X3>, BOOL *a5@<X8>)
{
  v11 = sub_1BF17BBCC();
  v12 = Dictionary<>.disableSafeishSafety.getter(v11);

  result = a3(v14, a1, a2);
  if (!v5)
  {
    *a5 = (v12 & 1) == 0;
    return a4(v14, a5 + 8);
  }

  return result;
}

uint64_t Dictionary<>.disableSafeishSafety.getter(uint64_t a1)
{
  sub_1BF022610(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BF17B42C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1_48();
  result = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v14, v6, v7);
    v16 = sub_1BF05316C(a1, &v18);
    (*(v9 + 8))(v14, v7, v16);
    if (v19)
    {
      if (swift_dynamicCast())
      {
        return v17;
      }
    }

    else
    {
      sub_1BEFFD168(&v18);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BF053064()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_1BF0CD3B0;
  }

  else
  {

    v7 = sub_1BF0532DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

double sub_1BF05316C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1BF022978(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1BF0075BC(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void SafeishUnkeyedDecodingContainer.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_11_23();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  OUTLINED_FUNCTION_21_13();
  sub_1BF17B73C();
  if (v5)
  {
    OUTLINED_FUNCTION_19_14();
    if (v8)
    {
      sub_1BF149F08(v3, v5, v3);
      __swift_mutable_project_boxed_opaque_existential_1(v4 + 8, *(v4 + 32));
      sub_1BF14A480();
      sub_1BF17B73C();

      OUTLINED_FUNCTION_2_59();
    }

    else
    {
      v9 = sub_1BF14A42C();
      OUTLINED_FUNCTION_26_10(&type metadata for SafeishError, v9);
      *v10 = v5;
      swift_willThrow();
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_27();
  }
}

uint64_t sub_1BF05334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF053388()
{
  result = sub_1BF17B9CC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF0533AC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 88) = v0;

  if (v0)
  {
    v5 = sub_1BF168D70;
  }

  else
  {
    v5 = sub_1BF0534B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BF0534B0()
{
  OUTLINED_FUNCTION_5();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_9();

  return v0();
}

unint64_t sub_1BF05350C()
{
  result = qword_1ED8EDB88;
  if (!qword_1ED8EDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDB88);
  }

  return result;
}

void SafeishSet.init(from:)()
{
  OUTLINED_FUNCTION_25_11();
  v48 = v3;
  v49 = v2;
  v5 = v4;
  v7 = v6;
  v40 = v8;
  v47 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v43 = v9;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_2_3();
  v41 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_4_1();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v38 - v24;
  v26 = v7[3];
  v27 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v26);
  Decoder.safeishUnkeyedContainer()(v26, v27, &v50);
  if (v0)
  {
    v37 = v7;
  }

  else
  {
    v28 = v48;
    v44 = v25;
    v45 = v21;
    v46 = v17;
    v29 = sub_1BF17A56C();
    if (sub_1BF17A5AC())
    {
      v30 = sub_1BF02C7D0(v29, v5, v28);
    }

    else
    {

      v30 = MEMORY[0x1E69E7CD0];
    }

    v31 = v43;
    v39 = v7;
    v53 = v30;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    sub_1BF17B72C();
    if ((v32 & 1) == 0)
    {
      sub_1BF17A9AC();
      OUTLINED_FUNCTION_14_24();
      sub_1BF17A91C();
    }

    v42 = (v41 + 16);
    v43 = (v41 + 32);
    v33 = (v41 + 8);
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v51, v52);
      if (sub_1BF17B74C())
      {
        break;
      }

      SafeishUnkeyedDecodingContainer.decode<A>(_:)(v5, v5, v49);
      if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
      {
        (v31[1])(v1, v47);
      }

      else
      {
        v34 = v44;
        (*v43)(v44, v1, v5);
        (*v42)(v46, v34, v5);
        sub_1BF17A9AC();
        v35 = v45;
        sub_1BF17A94C();
        v36 = *v33;
        (*v33)(v35, v5);
        v36(v34, v5);
      }
    }

    sub_1BF053310(&v50);
    v37 = v39;
    *v40 = v53;
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1BF053908()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 152) = v0;

  if (v0)
  {
    v5 = sub_1BF168DCC;
  }

  else
  {
    v5 = sub_1BF053A0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BF053A0C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[5];

  (*(v3 + 16))(v2, v1, v4);
  OUTLINED_FUNCTION_125_0();
  swift_storeEnumTagMultiPayload();
  v5(v2);
  v6 = OUTLINED_FUNCTION_125_0();
  v7(v6);
  (*(v3 + 8))(v1, v4);

  OUTLINED_FUNCTION_9();

  return v8();
}

uint64_t sub_1BF053B14()
{
  v1 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = sub_1BF053C98(v0[5], v0[5], v0[2], v0[3]);
  v5 = v4;
  sub_1BF17A10C();
  v6 = sub_1BF17A0CC();
  v8 = v7;
  sub_1BF014E18(v3, v5);
  if (v8)
  {
    return v6;
  }

  result = v0[5];
  v10 = v0[7];
  v11 = result - v10;
  if (!__OFSUB__(result, v10))
  {
    v12 = v0[6];
    v13 = sub_1BF053C98(result, v0[5], v0[2], v0[3]);
    v6 = v14;
    sub_1BF053D1C();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v11;
    *(v15 + 16) = v13;
    *(v15 + 24) = v6;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 12;
    swift_willThrow();
    return v6;
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_117()
{

  UnfairLock.lock()();
}

uint64_t OUTLINED_FUNCTION_117_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BF0A89BC();
}

uint64_t sub_1BF053C98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v5 = a3;
      v4 = a3 >> 32;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v5 > a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 + 1 < a1)
  {
LABEL_11:
    __break(1u);
    JUMPOUT(0x1BF053D0CLL);
  }

  return sub_1BF17930C();
}

unint64_t sub_1BF053D1C()
{
  result = qword_1ED8EC860[0];
  if (!qword_1ED8EC860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EC860);
  }

  return result;
}

uint64_t sub_1BF053DB4(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

char *Lazy.deinit()
{

  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 96);
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_29();

  return v0;
}

uint64_t sub_1BF053F28()
{
  OUTLINED_FUNCTION_0_82();
  result = OUTLINED_FUNCTION_3_49(v1, v2, v3, &v5);
  if (!v0)
  {
    return v5;
  }

  return result;
}

void sub_1BF053F60(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(), uint64_t a5)
{
  if (a2 >= 2u)
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v9 = swift_allocObject();
          v9[2] = a3;
          v9[3] = a4;
          v9[4] = a5;
          v10 = a3;
          a4 = sub_1BF0077B8;
        }
      }
    }

    (a4)(v11);
  }
}

uint64_t sub_1BF054138@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v36 = a2;
  v34 = a1;
  v11 = sub_1BF17AE6C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - v14;
  LOBYTE(v14) = *(v6 + 32);
  v16 = *(v6 + 5);
  v17 = v6[1];
  v37 = *v6;
  v38 = v17;
  v39 = v14;
  v40 = v16;
  result = sub_1BF018248(a3, a4, &v41);
  if (!v7)
  {
    v19 = v34;
    v32 = v12;
    v33 = v16;
    v20 = v35;
    v21 = v41;
    if (v41 >> 61 == 3)
    {
      v23 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v19(v23, v22);
      if (__swift_getEnumTagSinglePayload(v15, 1, a5) != 1)
      {
        sub_1BF017214(v21);

        return (*(*(a5 - 8) + 32))(v20, v15, a5);
      }

      (*(v32 + 8))(v15, v11);
      sub_1BF05350C();
      swift_allocError();
      *v24 = v33;
      *(v24 + 8) = v23;
      *(v24 + 16) = v22;
      *(v24 + 80) = 13;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v25 = v21;
    }

    else
    {
      v26 = v41;
      sub_1BF05350C();
      swift_allocError();
      v28 = v27;
      *v27 = v33;
      v29 = *(a4 + 16);
      v27[4] = v29;
      v27[5] = *(a4 + 24);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27 + 1);
      (*(*(v29 - 8) + 16))(boxed_opaque_existential_0, a3, v29);
      v28[6] = 0x7265626D756ELL;
      v28[7] = 0xE600000000000000;
      v28[8] = 0x7463656A626FLL;
      v28[9] = 0xE600000000000000;
      *(v28 + 80) = 11;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v25 = v26;
    }

    return sub_1BF017214(v25);
  }

  return result;
}

unint64_t sub_1BF0544D0@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v29 = 0;
    v28 = 1;
LABEL_66:
    *a3 = v29;
    *(a3 + 8) = v28 & 1;
    return result;
  }

  v8 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0750D8(v8, a2);
    v10 = v30;
    v28 = v31;

LABEL_63:
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v10;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v10 = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_61;
              }

              v19 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_61;
              }

              v10 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_61;
              }

              ++v17;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        v10 = 0;
        if (result)
        {
          while (1)
          {
            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_61;
            }

            v24 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v10 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v10 = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v33 = v5;
        v28 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v32[0] = result;
  v32[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        v10 = 0;
        v25 = v32;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v10 = 0;
        v14 = v32 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      v10 = 0;
      v20 = v32 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1BF0547F8(uint64_t a1, void *a2, void (*a3)(), uint64_t a4)
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 != a2)
  {
    if (qword_1ED8EFB98 != -1)
    {
      swift_once();
    }

    if (qword_1ED8EFC18 != a2 || ([objc_opt_self() isMainThread] & 1) == 0)
    {
      if (qword_1ED8EF920 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EF928 != a2 || [objc_opt_self() isMainThread])
      {
        v7 = swift_allocObject();
        v7[2] = a2;
        v7[3] = a3;
        v7[4] = a4;
        v8 = a2;
        a3 = sub_1BF0077B8;
      }
    }
  }

  (a3)(v9);
}

uint64_t sub_1BF054A58()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 88) = v0;

  if (v0)
  {
    v5 = sub_1BF08B580;
  }

  else
  {
    v5 = sub_1BF054BC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BF054B5C()
{
  OUTLINED_FUNCTION_0_82();
  result = OUTLINED_FUNCTION_3_49(v1, v2, v3, &v5);
  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1BF054BC8()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_1BF014A1C(v1);
  v4();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_9();

  return v5();
}

unint64_t sub_1BF054C78@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    LOBYTE(v5) = 1;
LABEL_66:
    *a3 = v7;
    *(a3 + 4) = v5 & 1;
    return result;
  }

  v8 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF076170(v8, a2);
    v10 = v28;

    v5 = HIDWORD(v10) & 1;
LABEL_63:
    if (v5)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      LODWORD(v7) = v10;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          LODWORD(v10) = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_61;
              }

              v19 = 10 * v10;
              if (v19 != v19)
              {
                goto LABEL_61;
              }

              LODWORD(v10) = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_61;
              }

              ++v17;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        LODWORD(v10) = 0;
        if (result)
        {
          while (1)
          {
            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_61;
            }

            v24 = 10 * v10;
            if (v24 != v24)
            {
              goto LABEL_61;
            }

            LODWORD(v10) = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v10) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LODWORD(v10) = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = 10 * v10;
            if (v13 != v13)
            {
              goto LABEL_61;
            }

            LODWORD(v10) = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v30 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LODWORD(v10) = 0;
        v25 = v29;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v10;
          if (v27 != v27)
          {
            break;
          }

          LODWORD(v10) = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LODWORD(v10) = 0;
        v14 = v29 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if (v16 != v16)
          {
            break;
          }

          LODWORD(v10) = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LODWORD(v10) = 0;
      v20 = v29 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v10;
        if (v22 != v22)
        {
          break;
        }

        LODWORD(v10) = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

void sub_1BF054F54(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        return;
      case 2:
        *&a1[v10] = v15;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x1BF055124);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v7 < 0x7FFFFFFF)
        {
          v17 = (&a1[v9 + 31] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v17 = a2 & 0x7FFFFFFF;
            v17[1] = 0;
          }

          else
          {
            v17[1] = (a2 - 1);
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_1BF05514C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v8);
        if (v14)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1BF055288);
      case 4:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

LABEL_22:
        v16 = v14 - 1;
        if (v10)
        {
          v16 = 0;
          LODWORD(v10) = *a1;
        }

        return v7 + (v10 | v16) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *(((a1 + v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t Reference.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v8 = type metadata accessor for Reference(0, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v30 = v9;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - v12;
  v16 = type metadata accessor for ReferenceDecodingContainer(0, a2, v14, v15);
  OUTLINED_FUNCTION_1();
  v29 = v17;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v27 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF055D70(a2, v21);
  if (!v5)
  {
    v23 = v29;
    v24 = v30;
    v28 = v8;
    v25 = v31;
    ReferenceDecodingContainer.decode()(v16, v22, v13);
    (*(v23 + 8))(v21, v16);
    (*(v24 + 32))(v25, v13, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1BF0554D0(uint64_t a1)
{
  if (!qword_1ED8E9B98)
  {
    sub_1BF0556D0();
    v1 = sub_1BF17B63C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9B98);
    }
  }
}

Swift::Void __swiftcall SyncObservable.triggerObservers()()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v8 - v6;
  sub_1BF17A75C();
  OUTLINED_FUNCTION_0_30();
  sub_1BF17B15C();
  SyncObservable.uncheckedValue.getter();
  sub_1BF028388(v7);
  (*(v3 + 8))(v7, v1);
}

void sub_1BF055634(uint64_t a1)
{
  sub_1BF0554D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ReferenceDecodingPool();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BF0556D0()
{
  result = qword_1ED8EA280;
  if (!qword_1ED8EA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA280);
  }

  return result;
}

uint64_t Node.value.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_47();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_26_4(v1 + v5, v6);
  return (*(*(*(v2 + 80) - 8) + 16))(a1, v1 + v5);
}

uint64_t Node.next.getter()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_26_4(v0 + *(v1 + 96), v2);
}

unint64_t sub_1BF055830()
{
  result = qword_1ED8EA270;
  if (!qword_1ED8EA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA270);
  }

  return result;
}

uint64_t Collection.safe.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v2, a1, v7);
  return SafeCollection.init(_:)(v9, a1, a2);
}

uint64_t Node.__deallocating_deinit()
{
  Node.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t SafeCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1BF055C60(a1, a2) < 0 || sub_1BF056074(a1, a2) < 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v6 = sub_1BF17ABFC();
    v8 = v7;
    v9 = swift_getAssociatedTypeWitness();
    (*(*(v9 - 8) + 16))(a3, v8, v9);
    v6(&v12, 0);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v9);
  }
}

uint64_t Node.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  OUTLINED_FUNCTION_29();
  swift_weakDestroy();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 96);
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;

  if (v3)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      OUTLINED_FUNCTION_4_0();
      v5 = *(v3 + *(v4 + 96));
      swift_retain_n();

      v3 = v5;
    }

    while (v5);
  }

  return v0;
}

unint64_t sub_1BF055C0C()
{
  result = qword_1ED8EA278;
  if (!qword_1ED8EA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA278);
  }

  return result;
}

uint64_t sub_1BF055C60(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v4);
  v6 = &v9 - v5;
  sub_1BF17A9EC();
  v7 = sub_1BF17AA8C();
  (*(v3 + 8))(v6, AssociatedTypeWitness);
  return v7;
}

uint64_t sub_1BF055D70@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  sub_1BF0554D0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  sub_1BF022610(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = sub_1BF17B42C();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = sub_1BF17BBCC();
  OUTLINED_FUNCTION_1_38();
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v16 + 32))(v21, v13, v14);
  sub_1BF05316C(v22, &v29);

  (*(v16 + 8))(v21, v14);
  if (!v30)
  {
    sub_1BEFFD168(&v29);
    goto LABEL_7;
  }

  type metadata accessor for ReferenceDecodingPool();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_1BF0B5F00();
    swift_allocError();
    *v24 = 1;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 2;
    return swift_willThrow();
  }

  sub_1BF0556D0();
  sub_1BF17BBDC();
  if (v27)
  {
  }

  else
  {
    return sub_1BF055FF0(v8, v28, a2, x8_0);
  }
}

uint64_t sub_1BF055FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BF0554D0(0);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ReferenceDecodingContainer(0, a3, v9, v10);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t sub_1BF056074(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v4);
  v6 = &v9 - v5;
  sub_1BF17AA9C();
  v7 = sub_1BF17AA8C();
  (*(v3 + 8))(v6, AssociatedTypeWitness);
  return v7;
}

uint64_t ReferenceDecodingContainer.decode()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  v46 = 0;
  sub_1BF0554D0(0);
  sub_1BF0483C4();
  result = OUTLINED_FUNCTION_0_27(&type metadata for ReferenceType);
  if (!v3)
  {
    v39 = v7;
    v40 = v11;
    v41 = v5;
    v18 = v42;
    v17 = v43;
    v19 = v44;
    v46 = 1;
    sub_1BF056444();
    OUTLINED_FUNCTION_0_27(&type metadata for ReferenceContainer);
    v20 = v43;
    v21 = v44;
    if (v45)
    {
      v38 = v44;
      v43 = v17;
      v44 = v19;
      v22 = v17;
      v23 = v4;
      v24 = v20;
      sub_1BF0BCB00(&v43, v20, v23, v39);
      v25 = v40;
      v29 = OUTLINED_FUNCTION_1_23();
      v30(v29);
      v43 = v22;
      v44 = v19;
      v31 = v18;
      v32 = v25;
      v33 = v24;
      v34 = v38;
      v35 = 1;
    }

    else
    {
      v43 = v17;
      v44 = v19;
      v39 = v17;
      v23 = v4;
      v26 = v20;
      v27 = v21;
      sub_1BF0575FC(&v43, v20, v21, v23, v15);
      v28 = v40;
      v36 = OUTLINED_FUNCTION_1_23();
      v37(v36);
      v43 = v39;
      v44 = v19;
      v31 = v18;
      v32 = v28;
      v33 = v26;
      v34 = v27;
      v35 = 0;
    }

    return sub_1BF057818(v32, &v43, v33, v34, v35, v23, v31);
  }

  return result;
}

uint64_t sub_1BF056410(char a1)
{
  if (a1)
  {
    return 0x656E6961746E6F63;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t sub_1BF056444()
{
  result = qword_1ED8EA3E8;
  if (!qword_1ED8EA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA3E8);
  }

  return result;
}

uint64_t sub_1BF056498(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0564D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = UniqueCollection.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BF056500(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF056544()
{
  OUTLINED_FUNCTION_76();
  v4 = type metadata accessor for Result(0, v3, v2, v3);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - v9;
  *(&v13 - v9) = v1;
  swift_storeEnumTagMultiPayload();
  v11 = v1;
  v0(v10);
  return (*(v6 + 8))(v10, v4);
}

BOOL isNilOrEmpty(_:trim:)(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_0_78();
  sub_1BF056800(0, v5, v6, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  OUTLINED_FUNCTION_3_47();
  v9 = sub_1BF178D8C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 1;
  }

  v16 = OUTLINED_FUNCTION_49();
  sub_1BF056B28(v16, v17);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    OUTLINED_FUNCTION_0_78();
    sub_1BF1529A8(v2, v18, v19);
    v20 = HIBYTE(a2) & 0xF;
    v21 = a1 & 0xFFFFFFFFFFFFLL;
    v22 = (a2 & 0x2000000000000000) == 0;
  }

  else
  {
    (*(v11 + 32))(v15, v2, v9);
    v27[0] = a1;
    v27[1] = a2;
    sub_1BF013170();
    v24 = sub_1BF17AF4C();
    v26 = v25;
    (*(v11 + 8))(v15, v9);

    v20 = HIBYTE(v26) & 0xF;
    v21 = v24 & 0xFFFFFFFFFFFFLL;
    v22 = (v26 & 0x2000000000000000) == 0;
  }

  if (v22)
  {
    v20 = v21;
  }

  return v20 == 0;
}

void sub_1BF056800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1BF056864(void *a1)
{
  sub_1BF056AC4(0, &qword_1ED8E9BA8, MEMORY[0x1E69E6F48]);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF056BF0();
  sub_1BF17BBDC();
  if (!v1)
  {
    sub_1BF0570A4();
    sub_1BF17B5FC();
    if (v12)
    {
      sub_1BF02027C();
      sub_1BF077D6C(&qword_1ED8E9C38, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      sub_1BF17B5FC();
      v7 = OUTLINED_FUNCTION_0_7();
      v8(v7);
      v5 = v11;
    }

    else
    {
      v5 = sub_1BF17B5CC();
      v9 = OUTLINED_FUNCTION_0_7();
      v10(v9);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

void sub_1BF056AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF056BF0();
    v7 = a3(a1, &type metadata for ReferenceContainer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF056B28(uint64_t a1, uint64_t a2)
{
  sub_1BF056800(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1BF056BBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BF056864(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1BF056BF0()
{
  result = qword_1ED8EA420;
  if (!qword_1ED8EA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA420);
  }

  return result;
}

BOOL Locale.shouldSwapPriceChangeColors.getter()
{
  v1 = sub_1BF1795AC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_5_14();
  OUTLINED_FUNCTION_0_39();
  sub_1BF042FE0(0, v6, v7);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22[-v10];
  sub_1BF1795BC();
  sub_1BF17959C();
  (*(v3 + 8))(v0, v1);
  v12 = sub_1BF17954C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    OUTLINED_FUNCTION_0_39();
    sub_1BF0C83E0(v11, v13, v14);
    return 0;
  }

  else
  {
    v16 = sub_1BF17951C();
    v18 = v17;
    (*(*(v12 - 8) + 8))(v11, v12);
    sub_1BF056EFC(0, &qword_1ED8EF220, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF1805A0;
    *(inited + 32) = 20035;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = 22356;
    *(inited + 56) = 0xE200000000000000;
    *(inited + 64) = 21067;
    *(inited + 72) = 0xE200000000000000;
    v23[0] = v16;
    v23[1] = v18;
    MEMORY[0x1EEE9AC00](inited, v20);
    *&v22[-16] = v23;
    v15 = sub_1BF056FF4(sub_1BF014764, &v22[-32], inited);
    swift_setDeallocating();
    sub_1BF057128();
  }

  return v15;
}

unint64_t sub_1BF056EA4()
{
  result = qword_1ED8EA410;
  if (!qword_1ED8EA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA410);
  }

  return result;
}

void sub_1BF056EFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BF056F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BF056FA0()
{
  result = qword_1ED8EA418;
  if (!qword_1ED8EA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA418);
  }

  return result;
}

BOOL sub_1BF056FF4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

unint64_t sub_1BF0570A4()
{
  result = qword_1ED8EA3F8;
  if (!qword_1ED8EA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA3F8);
  }

  return result;
}

uint64_t sub_1BF057100(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1BF057128()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

_BYTE *sub_1BF057164(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1BF057230);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF0572B8()
{
  result = qword_1ED8EA400;
  if (!qword_1ED8EA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA400);
  }

  return result;
}

uint64_t sub_1BF05730C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF05734C(*a1, a1[1], &unk_1F3DB65A8);
  *a2 = result;
  return result;
}

uint64_t sub_1BF05734C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BF17B57C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF05739C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BF1794FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF1794EC();
  sub_1BF1794BC();
  (*(v7 + 8))(v10, v6);
  v11 = sub_1BF17A07C();

  v12 = sub_1BF0575F4();
  [v12 setObject:v11 forKey:a1];

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for Promise(0, TupleTypeMetadata2, v14, v15);
  v19 = a2;
  v20 = v3;
  v21 = a1;
  v22 = v11;
  v16 = Promise.__allocating_init(resolver:)(sub_1BF057AEC, v18);

  return v16;
}

uint64_t getEnumTagSinglePayload for StartupTaskManager.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BF0575FC@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v35 = a5;
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v33 = v10;
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - v12;
  v15 = *a1;
  v14 = a1[1];
  swift_beginAccess();
  v16 = OUTLINED_FUNCTION_8_13();
  v19 = sub_1BF04FEBC(v16, v17, v18);
  if (v19)
  {
    v20 = v19;
    swift_endAccess();
    sub_1BF0243AC(v20, &v36);

    if (v37)
    {
      sub_1BEFF9A40(&v36, v38);
      sub_1BEFF9A40(v38, &v36);
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_13_10();
        __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
        OUTLINED_FUNCTION_20();
        return (*(v25 + 32))(v35, v13, a4);
      }

      OUTLINED_FUNCTION_13_10();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
      (*(v33 + 8))(v13, v34);
    }

    else
    {
      sub_1BEFFD168(&v36);
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_1BF0B5F00();
  swift_allocError();
  *v31 = v15;
  *(v31 + 8) = v14;
  *(v31 + 16) = a2;
  *(v31 + 24) = a3;
  *(v31 + 32) = 0;
  swift_willThrow();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF057818@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  v13 = a2[1];
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for Reference(0, a6, v14, v15);
  v17 = (a7 + *(result + 32));
  *v17 = v12;
  v17[1] = v13;
  v18 = a7 + *(result + 28);
  *v18 = a3;
  *(v18 + 8) = a4;
  *(v18 + 16) = a5 & 1;
  return result;
}

uint64_t Promise.__allocating_init(resolver:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  OUTLINED_FUNCTION_42();
  Promise.init(resolver:)();
  return v2;
}

void (*sub_1BF057A7C(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0979F4;
}

uint64_t (*sub_1BF057B18(uint64_t a1, uint64_t a2))(uint64_t)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF05E03C;
}

uint64_t sub_1BF057BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, void *a10)
{
  v12 = *a7;
  v13 = *a8;
  v14 = swift_allocObject();
  v15 = *(v13 + 80);
  v14[2] = v15;
  v16 = *(v12 + 80);
  v14[3] = v16;
  v14[4] = a1;
  v14[5] = a2;
  v17 = qword_1ED8EFB98;

  if (v17 != -1)
  {
    swift_once();
  }

  v28 = qword_1ED8EFC18;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v18;
  v20[5] = v19;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = a10;
  v20[9] = sub_1BF0589F4;
  v20[10] = v14;

  v21 = a10;
  Promise.then<A>(on:closure:)(v28, sub_1BF058850, v20, MEMORY[0x1E69E7CA8] + 8);

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v15;
  v24[3] = v16;
  v24[4] = v22;
  v24[5] = v23;
  v24[6] = a5;
  v24[7] = a6;
  v24[8] = v21;
  v24[9] = a3;
  v24[10] = a4;
  v25 = qword_1ED8F0210;

  v26 = v21;

  if (v25 != -1)
  {
    swift_once();
  }

  sub_1BEFF77FC(off_1ED8F0218, sub_1BF15114C, v24);
}

uint64_t sub_1BF057EA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF057EE0()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF057F10()
{
  MEMORY[0x1BFB548B0](v0 + 16);
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

double sub_1BF057F48(uint64_t a1, uint64_t a2)
{
  sub_1BF054138(sub_1BF057FC0, 0, a1, a2, MEMORY[0x1E69E63B0], &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1BF057FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF0524C4(a1, a2, &v9);

  v8 = v9;
  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  *(a3 + 8) = !v6;
  return result;
}

uint64_t sub_1BF058064()
{
  result = sub_1BF17B9BC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF058088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = swift_allocObject();
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = a4;
    sub_1BF02D578(nullsub_1, v8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CachePolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF0581A0(uint64_t a1)
{
  sub_1BF022610(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF17B42C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    swift_beginAccess();
    sub_1BF058344(v9, v11, v12, v13, v14, v15, v16, v17, v18[0], v18[1]);
    (*(v6 + 8))(v9, v5);
    sub_1BEFFD168(v19);
    return swift_endAccess();
  }

  return result;
}

void sub_1BF058344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_51_0();
  sub_1BF022978();
  if (v13)
  {
    OUTLINED_FUNCTION_84();
    v14 = OUTLINED_FUNCTION_9_7();
    sub_1BF022B54(v14);
    OUTLINED_FUNCTION_21_3(v15);
    v16 = *(a10 + 48);
    v17 = sub_1BF17B42C();
    OUTLINED_FUNCTION_12();
    (*(v18 + 8))(v16 + *(v18 + 72) * v12, v17);
    OUTLINED_FUNCTION_64();
    sub_1BF17B45C();
    *v10 = a10;
  }

  else
  {
    *v11 = 0u;
    v11[1] = 0u;
  }

  OUTLINED_FUNCTION_85_0();
}

uint64_t getEnumTagSinglePayload for CachePolicy(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t Sequence<>.throwingConcurrentMap<A>(_:)()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_31_7(v1, v2, v3, v4, v5);
  v0[10] = swift_getTupleTypeMetadata2();
  v6 = sub_1BF17AE6C();
  v0[11] = v6;
  OUTLINED_FUNCTION_6_3(v6);
  v0[12] = v7;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v8 = sub_1BF17AE6C();
  v0[15] = v8;
  OUTLINED_FUNCTION_6_3(v8);
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_40();
  v10 = sub_1BF17B4FC();
  v0[18] = v10;
  OUTLINED_FUNCTION_6_3(v10);
  v0[19] = v11;
  v0[20] = OUTLINED_FUNCTION_24();
  v12 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BF0585CC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_46();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_49_3(v5);
  OUTLINED_FUNCTION_46();
  v6 = swift_allocObject();
  *(v2 + 168) = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v1;
  v6[5] = &unk_1BF182868;
  v6[6] = v0;

  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_14_13(v7);
  *v1 = v2;
  OUTLINED_FUNCTION_45_3();

  return Sequence<>.throwingUnorderedConcurrentMap<A>(_:)(&unk_1BF182878, v6, v8, v9, v10);
}

uint64_t sub_1BF0586E0()
{

  OUTLINED_FUNCTION_46();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF058718(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v12);
  v15 = &v18 - v14;
  *(&v18 - v14) = a1;
  (*(*(a6 - 8) + 16))(&v18 + *(v16 + 48) - v14, a2, a6, v13);
  swift_unknownObjectRetain();
  a3(v15);
  return (*(v11 + 8))(v15, TupleTypeMetadata2);
}

void sub_1BF05887C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {

LABEL_7:
    a4(Strong);
    return;
  }

  v13 = v12;
  v16 = a7;
  v14 = sub_1BF0575F4();
  v15 = [v14 objectForKey_];

  if (v15)
  {
    sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);
    if (sub_1BF17ADEC())
    {
      v16(v13, a1);

      swift_unknownObjectRelease();

      return;
    }
  }

  (a4)();

  swift_unknownObjectRelease();
}

uint64_t sub_1BF058A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnsafeLazy.Loader(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF058ADC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a2;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1BF0594C8;

  return v9(a1, a3);
}

uint64_t sub_1BF058BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_22();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4(v10);
  *v11 = v12;
  v11[1] = sub_1BF035DD0;
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_35_4();

  return v20(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

void sub_1BF058C88(uint64_t a1)
{
  sub_1BEFF0B78();
  if (v1 <= 0x3F)
  {
    sub_1BF058D14(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BF058D14(uint64_t a1)
{
  if (!qword_1ED8EAD30)
  {
    sub_1BEFF0B78();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EAD30);
    }
  }
}

uint64_t sub_1BF058D7C(uint64_t a1, char *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v10 + 16) = a1;
  v12 = *a2;
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getTupleTypeMetadata2() + 48);
  v14 = *(swift_getTupleTypeMetadata2() + 48);
  v17 = (a3 + *a3);
  v15 = swift_task_alloc();
  *(v10 + 24) = v15;
  *v15 = v10;
  v15[1] = sub_1BF0596A8;

  return v17(a1 + v14, v12, &a2[v13]);
}

uint64_t sub_1BF058F1C()
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_32_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_20_8(v1);
  OUTLINED_FUNCTION_35_4();

  return sub_1BF058ADC(v3, v4, v5, v6);
}

uint64_t objectdestroy_12Tm()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_12Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t UnsafeLazy.__allocating_init(loadBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnsafeLazy.Loader(0, *(v4 + 80), a3, a4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_13_24();
  *v5 = a1;
  v5[1] = a2;
  swift_storeEnumTagMultiPayload();
  return sub_1BF0590BC(v5);
}

uint64_t sub_1BF0590F8(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  swift_getFunctionTypeMetadata1();
  *(v1 + v3) = sub_1BF179CFC();
  v5 = *(*v1 + 88);
  v8 = type metadata accessor for UnsafeLazy.Loader(0, v4, v6, v7);
  (*(*(v8 - 8) + 32))(v1 + v5, a1, v8);
  return v1;
}

void sub_1BF0591E0()
{
  OUTLINED_FUNCTION_32();
  v40 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_29();
  v7 = *(v6 + 80);
  v12 = OUTLINED_FUNCTION_13_17(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1();
  v39 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_4_1();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v38 - v21;
  v23 = *(v0 + 16);
  UnfairLock.lock()();
  v24 = swift_allocObject();
  v24[2] = v7;
  v24[3] = v5;
  v38 = v3;
  v24[4] = v3;
  v25 = v39;
  v26 = v40;
  v24[5] = v40;
  v27 = v5;

  sub_1BF005C4C(sub_1BF0EFB38, v24, v28, v22);
  v29 = v12;
  v30 = v41;

  os_unfair_lock_unlock(*(v23 + 16));
  (*(v25 + 16))(v18, v22, v29);
  if (__swift_getEnumTagSinglePayload(v18, 1, v30) == 1)
  {
    v31 = OUTLINED_FUNCTION_5_26();
    v32(v31);
  }

  else if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_1BF006210(v27, v38, v26);
    OUTLINED_FUNCTION_11_16();
    v36 = OUTLINED_FUNCTION_5_26();
    v37(v36);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_5_26();
    v34(v33);
    OUTLINED_FUNCTION_20();
    (*(v35 + 8))(v18, v30);
  }

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_26_2();
}

uint64_t UnsafeLazy.deinit()
{
  OUTLINED_FUNCTION_0();
  v2 = *(v1 + 88);
  type metadata accessor for UnsafeLazy.Loader(0, *(v3 + 80), v4, v5);
  OUTLINED_FUNCTION_12();
  (*(v6 + 8))(v0 + v2);
  OUTLINED_FUNCTION_29();

  return v0;
}

uint64_t sub_1BF0594C8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = *(v3 + 16);
  }

  return v8(v7);
}

uint64_t sub_1BF0595BC()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1BF0596A8()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1BF0597A4()
{
  v2 = v0[10];
  v3 = v0[7];
  v4 = OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
  sub_1BF17A5AC();
  v6 = sub_1BF17A64C();
  v54 = v6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = sub_1BF17A4EC();

  OUTLINED_FUNCTION_33_5();
  while (1)
  {
    v8 = sub_1BF17A5AC();
    v9 = v0[10];
    if (v7 == v8)
    {
      v10 = v0[13];
      v11 = 1;
    }

    else
    {
      v12 = sub_1BF17A58C();
      OUTLINED_FUNCTION_44_1(v12);
      if (v2)
      {
        v13 = OUTLINED_FUNCTION_52_3();
        v16 = (*(v14 + 16))(v13, v15 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v7);
      }

      else
      {
        result = sub_1BF17B23C();
        if (*(*v1 + 64) != 8)
        {
          __break(1u);
          return result;
        }

        v43 = OUTLINED_FUNCTION_29_6(result);
        v44(v43);
        v16 = swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_43_2(v16, v17, v18, v19, v20);
      v10 = v7;
      v11 = 0;
    }

    __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    v21 = OUTLINED_FUNCTION_50_2();
    v22(v21);
    v23 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_51_2(v23, v24, v9);
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_25_6();
    (*(v26 + 32))(v9, v27 + v28, v7);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v7);
    OUTLINED_FUNCTION_39_0();
    sub_1BF17A65C();
    v32 = sub_1BF17A55C();
    OUTLINED_FUNCTION_58_2(v32, v33, v34, v35, v36, v37, v38, v39, v49, v50, v51, v53, v54);
    v40 = OUTLINED_FUNCTION_19_8();
    v41(v40);
    v7 = v55;
  }

  v45 = v0[6];
  v52 = *(v0 + 7);

  v0[3] = v6;
  v46 = swift_task_alloc();
  *(v46 + 16) = v45;
  *(v46 + 24) = v52;
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  sub_1BF17A38C();
  swift_bridgeObjectRelease_n();

  v47 = OUTLINED_FUNCTION_34_3();

  return v48(v47);
}

uint64_t sub_1BF059AFC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 40);
  sub_1BF018248(a1, a2, &v16);
  if (!v3)
  {
    v7 = v16;
    v8 = v16 >> 61;
    if (v16 >> 61 == 2)
    {
      v6 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF017214(v7);
    }

    else
    {
      sub_1BF05350C();
      swift_allocError();
      v10 = v9;
      *v9 = v6;
      v11 = *(a2 + 16);
      v9[4] = v11;
      v9[5] = *(a2 + 24);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9 + 1);
      (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a1, v11);
      v13 = 0xE600000000000000;
      v10[6] = 0x676E69727453;
      v10[7] = 0xE600000000000000;
      v14 = 0x7463656A626FLL;
      switch(v8)
      {
        case 1uLL:
          v13 = 0xE500000000000000;
          v14 = 0x7961727261;
          break;
        case 2uLL:
          v14 = 0x676E69727473;
          break;
        case 3uLL:
          v14 = 0x7265626D756ELL;
          break;
        case 4uLL:
          if (v7 == 0x8000000000000000)
          {
            v13 = 0xE400000000000000;
            v14 = 1702195828;
          }

          else if (v7 == 0x8000000000000008)
          {
            v13 = 0xE500000000000000;
            v14 = 0x65736C6166;
          }

          else
          {
            v13 = 0xE400000000000000;
            v14 = 1819047278;
          }

          break;
        default:
          break;
      }

      v10[8] = v14;
      v10[9] = v13;
      *(v10 + 80) = 11;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF017214(v7);
    }
  }

  return v6;
}

uint64_t sub_1BF059D0C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[19];
  v7 = v4[18];
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v11 + 184) = v10;
  *(v11 + 192) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v12 = sub_1BF0CD32C;
  }

  else
  {
    v12 = sub_1BF0597A4;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1BF059F20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t ReferenceDecodingPool.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ReferenceEncodingPool.__deallocating_deinit()
{
  ReferenceEncodingPool.deinit();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ReferenceEncodingPool.deinit()
{

  return v0;
}

uint64_t ReferenceDecoder.__deallocating_deinit()
{
  v0 = _TeaJSONDecoder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1BF05A158()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = *(v1 + 80);
  *v2 = v0;
  v2[1] = sub_1BF17335C;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x1EEE6DE18](v4, &unk_1BF18BC10, v5, j___s13TeaFoundation23OnlyOnceDeferredPromiseC6cancelyyF_0, v5, 0, 0, v3);
}

uint64_t sub_1BF05A228()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BF17362C;

  return sub_1BF05A908(v3, v0);
}

uint64_t sub_1BF05A2C0()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v0[7] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1BF17349C;
    v5 = v0[5];

    return Promise.resolveAsync()(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall Date.gregorianMediumDisplayString()()
{
  OUTLINED_FUNCTION_2_23();
  sub_1BF00EAF0(0, v2, v3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v4);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v5, v6);
  v52 = OUTLINED_FUNCTION_27_4(v7, v50);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_20_6();
  sub_1BF17907C();
  OUTLINED_FUNCTION_1();
  v53 = v13;
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  if (qword_1ED8EBA18 != -1)
  {
    OUTLINED_FUNCTION_13_12(&qword_1ED8EBA18);
  }

  v18 = sub_1BF17965C();
  __swift_project_value_buffer(v18, qword_1ED8EBA20);
  OUTLINED_FUNCTION_8_16();
  sub_1BF00EAF0(0, v19, v20, MEMORY[0x1E69E6F90]);
  v21 = sub_1BF17964C();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  v25 = *(v24 + 72);
  v26 = OUTLINED_FUNCTION_18_6();
  *(v26 + 16) = xmmword_1BF17EBE0;
  v27 = v26 + v1;
  v28 = *(v23 + 104);
  v28(v27, *MEMORY[0x1E6969A88], v21);
  v28(v25 + v27, *MEMORY[0x1E6969A58], v21);
  v28(v27 + 2 * v25, *MEMORY[0x1E6969A48], v21);
  v28(v27 + 3 * v25, *MEMORY[0x1E6969A10], v21);
  v28(v27 + 4 * v25, *MEMORY[0x1E6969A68], v21);
  sub_1BF05B4F4(v26);
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  OUTLINED_FUNCTION_29_5();

  (*(v9 + 8))(v0, v52);
  ObjCClassFromMetadata = v17;
  sub_1BF178FEC();
  v30 = v17;
  if ((v31 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v32 ^ v33))
  {
    ObjCClassFromMetadata = v17;
    sub_1BF178F7C();
    if ((v35 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v32 ^ v33))
    {
      ObjCClassFromMetadata = v17;
      sub_1BF178FAC();
      if ((v36 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v32 ^ v33))
      {
        ObjCClassFromMetadata = v17;
        sub_1BF178FCC();
        if ((v37 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v32 ^ v33))
        {
          ObjCClassFromMetadata = v17;
          sub_1BF17902C();
          if ((v38 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v32 ^ v33))
          {
            type metadata accessor for Localized();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v48 = [objc_opt_self() bundleForClass_];
            OUTLINED_FUNCTION_11_9(v48);
            OUTLINED_FUNCTION_31_5();

            goto LABEL_29;
          }

          if (qword_1ED8ECA50 != -1)
          {
            swift_once();
          }

          v34 = &qword_1ED8ECA58;
        }

        else
        {
          if (qword_1ED8ECAC0 != -1)
          {
            swift_once();
          }

          v34 = &qword_1ED8ECAC8;
        }
      }

      else
      {
        if (qword_1ED8ECAE0 != -1)
        {
          swift_once();
        }

        v34 = &qword_1ED8ECAE8;
      }
    }

    else
    {
      if (qword_1ED8ECA90 != -1)
      {
        swift_once();
      }

      v34 = &qword_1ED8ECA98;
    }
  }

  else
  {
    if (qword_1ED8ECA70 != -1)
    {
      swift_once();
    }

    v34 = &qword_1ED8ECA78;
  }

  v17 = *v34;
  sub_1BF17955C();
  v39 = sub_1BF1795CC();
  OUTLINED_FUNCTION_33_3(v39);
  OUTLINED_FUNCTION_9_16();
  sub_1BF00EAF0(0, v40, v41, MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E6530];
  *(v42 + 16) = xmmword_1BF17DEF0;
  OUTLINED_FUNCTION_26_5(v42, v43);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_2_23();
  sub_1BF05AC80(v51, v44, v45);
LABEL_29:
  (*(v53 + 8))(v30, v54);
  v46 = ObjCClassFromMetadata;
  v47 = v17;
  result._object = v47;
  result._countAndFlagsBits = v46;
  return result;
}

uint64_t sub_1BF05A908(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF05A2C0, 0, 0);
}

unint64_t sub_1BF05A928()
{
  result = qword_1ED8EE990;
  if (!qword_1ED8EE990)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8EE990);
  }

  return result;
}

void UniqueCollection.insert(_:at:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_2_3();
  v40 = v8;
  v41 = v7;
  MEMORY[0x1EEE9AC00](v9, v7);
  OUTLINED_FUNCTION_2_0();
  v39 = v11 - v10;
  OUTLINED_FUNCTION_40();
  v12 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_4_1();
  v17 = v15 - v16;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v39 - v21;
  v23 = *(v3 + 32);
  v24 = *(v23 + 8);
  v43 = v5;
  v25 = v24;
  v26 = (v24)(v6, v23, v20);
  LODWORD(v3) = v27;
  v42 = v1;
  v44 = v26;
  v45 = v27;
  sub_1BF179EAC();

  OUTLINED_FUNCTION_25_8(v22);
  v28(v22, v12);
  if (v3 == 1)
  {
    v29 = v25(v6, v23);
    v31 = v30;
    v32 = *(v40 + 16);
    OUTLINED_FUNCTION_20_11();
    v32(v33);
    v34 = OUTLINED_FUNCTION_27_7(v17);
    v44 = v29;
    v45 = v31;
    OUTLINED_FUNCTION_30_6(v34, MEMORY[0x1E69E6158]);
    sub_1BF179EBC();
    OUTLINED_FUNCTION_20_11();
    v32(v35);
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5EC();
  }

  else
  {
    v36 = v43;
    if (qword_1ED8F01C8 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    v37 = byte_1ED8F52C8;
    sub_1BF071C70(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    v25(v6, v23);
    OUTLINED_FUNCTION_31_0();
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1BF071CD8();
    *(inited + 32) = v6;
    *(inited + 40) = v36;
    if (v37 != 1)
    {
      OUTLINED_FUNCTION_28_7("collection must contain unique elements, duplicate=%{public}@");
    }

    swift_setDeallocating();
    sub_1BF0C8384();
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF05AC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF00EAF0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t zippedMap<A, B, C>(_:_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v36 = a7;
  v37 = a4;
  v35 = a3;
  v32 = a9;
  v33 = a8;
  v46 = a5;
  v47 = a6;
  v48 = a8;
  v49 = a9;
  v11 = sub_1BF17B22C();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1BF17B4FC();
  OUTLINED_FUNCTION_1();
  v34 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v32 - v23;
  v25 = v32;
  v26 = v33;
  sub_1BF17BA8C();
  MEMORY[0x1BFB52170](v11, WitnessTable);
  (*(v13 + 8))(v17, v11);
  v39 = a5;
  v40 = a6;
  v27 = v36;
  v41 = v36;
  v42 = v26;
  v43 = v25;
  v44 = v35;
  v45 = v37;
  v28 = swift_getWitnessTable();
  v30 = sub_1BF03CFB4(sub_1BF05B4BC, v38, v19, v27, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
  (*(v34 + 8))(v24, v19);
  return v30;
}

Swift::String __swiftcall Date.gregorianLongDisplayString()()
{
  OUTLINED_FUNCTION_2_23();
  sub_1BF00EAF0(0, v2, v3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v4);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v5, v6);
  v52 = OUTLINED_FUNCTION_27_4(v7, v50);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_20_6();
  sub_1BF17907C();
  OUTLINED_FUNCTION_1();
  v53 = v13;
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  if (qword_1ED8EBA18 != -1)
  {
    OUTLINED_FUNCTION_13_12(&qword_1ED8EBA18);
  }

  v18 = sub_1BF17965C();
  __swift_project_value_buffer(v18, qword_1ED8EBA20);
  OUTLINED_FUNCTION_8_16();
  sub_1BF00EAF0(0, v19, v20, MEMORY[0x1E69E6F90]);
  v21 = sub_1BF17964C();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  v25 = *(v24 + 72);
  v26 = OUTLINED_FUNCTION_18_6();
  *(v26 + 16) = xmmword_1BF17EBE0;
  v27 = v26 + v1;
  v28 = *(v23 + 104);
  v28(v27, *MEMORY[0x1E6969A88], v21);
  v28(v25 + v27, *MEMORY[0x1E6969A58], v21);
  v28(v27 + 2 * v25, *MEMORY[0x1E6969A48], v21);
  v28(v27 + 3 * v25, *MEMORY[0x1E6969A10], v21);
  v28(v27 + 4 * v25, *MEMORY[0x1E6969A68], v21);
  sub_1BF05B4F4(v26);
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  OUTLINED_FUNCTION_29_5();

  (*(v9 + 8))(v0, v52);
  ObjCClassFromMetadata = v17;
  sub_1BF178FEC();
  v30 = v17;
  if ((v31 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v32 ^ v33))
  {
    ObjCClassFromMetadata = v17;
    sub_1BF178F7C();
    if ((v35 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v32 ^ v33))
    {
      ObjCClassFromMetadata = v17;
      sub_1BF178FAC();
      if ((v36 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v32 ^ v33))
      {
        ObjCClassFromMetadata = v17;
        sub_1BF178FCC();
        if ((v37 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v32 ^ v33))
        {
          ObjCClassFromMetadata = v17;
          sub_1BF17902C();
          if ((v38 & 1) != 0 || (OUTLINED_FUNCTION_10_17(), v32 ^ v33))
          {
            type metadata accessor for Localized();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v48 = [objc_opt_self() bundleForClass_];
            OUTLINED_FUNCTION_11_9(v48);
            OUTLINED_FUNCTION_31_5();

            goto LABEL_29;
          }

          if (qword_1ED8ECAA8 != -1)
          {
            swift_once();
          }

          v34 = &qword_1ED8ECAB0;
        }

        else
        {
          if (qword_1ED8ECB38 != -1)
          {
            swift_once();
          }

          v34 = &qword_1ED8ECB40;
        }
      }

      else
      {
        if (qword_1ED8ECB58 != -1)
        {
          swift_once();
        }

        v34 = &qword_1ED8ECB60;
      }
    }

    else
    {
      if (qword_1ED8ECB18 != -1)
      {
        swift_once();
      }

      v34 = &qword_1ED8ECB20;
    }
  }

  else
  {
    if (qword_1ED8ECAF8 != -1)
    {
      swift_once();
    }

    v34 = &qword_1ED8ECB00;
  }

  v17 = *v34;
  sub_1BF17955C();
  v39 = sub_1BF1795CC();
  OUTLINED_FUNCTION_33_3(v39);
  OUTLINED_FUNCTION_9_16();
  sub_1BF00EAF0(0, v40, v41, MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E6530];
  *(v42 + 16) = xmmword_1BF17DEF0;
  OUTLINED_FUNCTION_26_5(v42, v43);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_2_23();
  sub_1BF05AC80(v51, v44, v45);
LABEL_29:
  (*(v53 + 8))(v30, v54);
  v46 = ObjCClassFromMetadata;
  v47 = v17;
  result._object = v47;
  result._countAndFlagsBits = v46;
  return result;
}

uint64_t sub_1BF05B4F4(uint64_t a1)
{
  v2 = sub_1BF17964C();
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v38 = &v29 - v8;
  if (!*(a1 + 16))
  {
    v10 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  sub_1BF05BC7C(0);
  result = sub_1BF17B18C();
  v10 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v37 = result + 56;
  v12 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v12 + 32) & ~v12);
  v36 = v34 + 16;
  v13 = (v34 + 8);
  v30 = (v34 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v34 + 72);
    v35 = v11 + 1;
    v15 = *(v34 + 16);
    v15(v38, v32 + v14 * v11, v2);
    sub_1BF05C0A4(&qword_1ED8ECA38, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    v16 = sub_1BF179F1C();
    v17 = ~(-1 << *(v10 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v10;
      v15(v5, *(v10 + 48) + v18 * v14, v2);
      sub_1BF05C0A4(&qword_1ED8ECA30, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
      v23 = sub_1BF17A05C();
      v24 = *v13;
      (*v13)(v5, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v10 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v10 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v10 + 48) + v18 * v14, v25, v2);
    v26 = *(v10 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v10 + 16) = v28;
LABEL_12:
    v11 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1BF05B82C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v50 = a2;
  v48 = a6;
  v49 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v47 = &v41 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v44 = *(v9 - 8);
  v10 = v44;
  MEMORY[0x1EEE9AC00](v9, v11);
  v46 = &v41 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v41 - v16);
  v18 = TupleTypeMetadata2;
  v54 = TupleTypeMetadata2;
  v53 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v51 = &v41 - v26;
  (*(v27 + 16))(v17, a1, v14, v25);
  v43 = *v17;
  v28 = v17 + *(v14 + 48);
  v29 = *(v18 + 48);
  v30 = *(v10 + 32);
  v30(v22, v28, v9);
  v31 = *(v52 + 32);
  v32 = AssociatedTypeWitness;
  v31(&v22[v29], &v28[v29], AssociatedTypeWitness);
  v42 = *(v54 + 48);
  v33 = v51;
  v30(v51, v22, v9);
  v31(&v33[v42], &v22[v29], v32);
  v34 = v33;
  v35 = v54;
  (*(v53 + 16))(v22, v34, v54);
  v36 = *(v35 + 48);
  v37 = v46;
  v30(v46, v22, v9);
  v38 = &v22[v36];
  v39 = v47;
  v31(v47, v38, v32);
  v50(v43, v37, v39);
  (*(v52 + 8))(v39, v32);
  (*(v44 + 8))(v37, v9);
  return (*(v53 + 8))(v51, v54);
}

void sub_1BF05BC7C(uint64_t a1)
{
  if (!qword_1ED8EAE28)
  {
    sub_1BF17964C();
    sub_1BF05C0A4(&qword_1ED8ECA38, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    v1 = sub_1BF17B19C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EAE28);
    }
  }
}

uint64_t Sequence<>.mapToDict()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v44 = v5;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - v8;
  OUTLINED_FUNCTION_54();
  v10 = sub_1BF17AE6C();
  v11 = OUTLINED_FUNCTION_68(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  OUTLINED_FUNCTION_2_3();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v26 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v45 = v27;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v43 - v30;
  v52 = sub_1BF179CEC();
  (*(v20 + 16))(v25, v49, a1);
  v48 = v31;
  sub_1BF17A32C();
  v49 = v26;
  swift_getAssociatedConformanceWitness();
  v32 = (v44 + 32);
  v46 = v47 + 8;
  v33 = (v44 + 16);
  for (i = (v44 + 8); ; (*i)(v9, AssociatedTypeWitness))
  {
    sub_1BF17AF0C();
    OUTLINED_FUNCTION_51_2(v18, 1, AssociatedTypeWitness);
    if (v35)
    {
      break;
    }

    (*v32)(v9, v18, AssociatedTypeWitness);
    v36 = (*(v47 + 8))(AssociatedTypeWitness);
    v38 = v37;
    (*v33)(v14, v9, AssociatedTypeWitness);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, AssociatedTypeWitness);
    v50 = v36;
    v51 = v38;
    sub_1BF179E9C();
    sub_1BF179EBC();
  }

  (*(v45 + 8))(v48, v49);
  return v52;
}

uint64_t sub_1BF05C0A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Cache.dictionary.getter()
{
  UnfairLock.lock()();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_35();
  OUTLINED_FUNCTION_0_35();
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_0_35();
  type metadata accessor for CacheEntry(0, v2, v3, v4);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = sub_1BF179E7C();

  sub_1BF05C3C8(v0);
  return v5;
}

uint64_t sub_1BF05C1F8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BF05C264()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECB40 = v2;
  unk_1ED8ECB48 = v4;
}

void Cache.remove(_:)()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_5_27();
  v5 = v4;
  type metadata accessor for CacheEntry(255, *(v0 + 88), v6, v7);
  OUTLINED_FUNCTION_12_1();
  v40 = v8;
  v39 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_6_30();
  v38 = v13;
  OUTLINED_FUNCTION_2_43();
  v15 = *(v14 + 80);
  v16 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_68(v16);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v37 = v1;
  v36 = *(v1 + 24);
  UnfairLock.lock()();
  v41 = v5;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BF17B0FC();
    sub_1BF17A97C();
    v3 = v43[3];
    v21 = v43[4];
    v22 = v43[5];
    v42 = v43[6];
    v23 = v43[7];
  }

  else
  {
    v21 = v3 + 56;
    v22 = ~(-1 << *(v3 + 32));
    OUTLINED_FUNCTION_18_0();
    v23 = v24 & v25;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v42 = 0;
  }

  v35 = v22;
  v26 = (v22 + 64) >> 6;
  v27 = (v10 + 8);
  if (v3 < 0)
  {
    goto LABEL_7;
  }

  while (v23)
  {
    v28 = v42;
LABEL_14:
    v30 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    (*(*(v15 - 8) + 16))(v20, *(v3 + 48) + *(*(v15 - 8) + 72) * (v30 | (v28 << 6)), v15);
    while (1)
    {
      OUTLINED_FUNCTION_127();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v15);
      OUTLINED_FUNCTION_7_2(v37 + 16, v43);
      sub_1BF179E9C();
      v34 = v38;
      sub_1BF179D7C();
      (*(*(v15 - 8) + 8))(v20, v15);
      swift_endAccess();
      (*v27)(v34, v39);
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_7:
      if (!sub_1BF17B10C())
      {
        goto LABEL_17;
      }

      sub_1BF17B82C();
      swift_unknownObjectRelease();
    }
  }

  v29 = v42;
  while (1)
  {
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
LABEL_17:
      __swift_storeEnumTagSinglePayload(v20, 1, 1, v15);
      sub_1BF003FE8(v3);
      os_unfair_lock_unlock(*(v36 + 16));
      OUTLINED_FUNCTION_26_2();
      return;
    }

    v23 = *(v21 + 8 * v28);
    ++v29;
    if (v23)
    {
      v42 = v28;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t ThreadsafeSet.contains(_:)(uint64_t a1)
{
  UnfairLock.lock()();
  OUTLINED_FUNCTION_1_27(v2);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v3 = sub_1BF17A98C();

  sub_1BEFF99D8(v1);
  return v3 & 1;
}

void Promise.erased<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_68_0();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v23 = *v18;
  OUTLINED_FUNCTION_2_3();
  v25 = v24;
  v27 = *(v26 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v31, v30);
  v32 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = *(v23 + 80);
  *(v33 + 24) = v22;
  (*(v25 + 32))(v33 + v32, v31, v22);
  v34 = sub_1BF007568();
  Promise.then<A>(on:closure:)(v34, sub_1BF095E88, v33, v22);

  OUTLINED_FUNCTION_55();
}

uint64_t sub_1BF05C920()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1BF05C9AC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECAC8 = v2;
  *algn_1ED8ECAD0 = v4;
}

void *sub_1BF05CA7C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BEFEEEE0(0, &unk_1ED8EAD70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BF05CBCC(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BF05CBCC(uint64_t a1)
{
  if (!qword_1ED8EBCE0)
  {
    sub_1BEFF40D4(255, &qword_1ED8ED770);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EBCE0);
    }
  }
}

uint64_t SyncValue.value.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for UnfairLock();
  v4 = *(v2 + 80);

  Lock.sync<A>(_:)(sub_1BF05CD20, v1, v3, v4, &protocol witness table for UnfairLock);
}

Swift::Bool __swiftcall UniqueCollection.contains(identifier:)(Swift::String identifier)
{
  OUTLINED_FUNCTION_22_8();
  v6 = *(v5 + 16);
  v7 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v16 - v12;
  v16 = *v2;
  UniqueCollection.subscript.getter(v4, v3, v1);
  v14 = __swift_getEnumTagSinglePayload(v13, 1, v6) != 1;
  (*(v9 + 8))(v13, v7);
  return v14;
}

uint64_t sub_1BF05CE2C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 88);
  swift_beginAccess();
  return (*(*(*(v4 + 80) - 8) + 16))(a2, &a1[v5]);
}

uint64_t UniqueCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF179EAC();
}

uint64_t Weak.__deallocating_deinit()
{
  MEMORY[0x1BFB548B0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

Swift::Void __swiftcall UniqueCollection.remove(at:)(Swift::Int at)
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v6 = v5;
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_40();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v27 = v9;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - v11;
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v26 - v19;
  v30 = *v1;
  v21 = UniqueCollection.startIndex.getter(v4);
  v26 = *v1;
  v29 = v26;
  v22 = UniqueCollection.endIndex.getter(v4);
  if (v22 < v21)
  {
    __break(1u);
  }

  else if (v21 <= v6 && v22 > v6)
  {
    sub_1BF17A69C();
    *&v30 = (*(*(v4 + 32) + 8))(v7);
    *(&v30 + 1) = v24;
    OUTLINED_FUNCTION_30_6(v30, MEMORY[0x1E69E6158]);
    sub_1BF179D7C();

    (*(v27 + 8))(v12, v28);
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5FC();
    v25 = *(v14 + 8);
    v25(v2, v7);
    v25(v20, v7);
    OUTLINED_FUNCTION_26_2();
    return;
  }

  __break(1u);
}

uint64_t UniqueParentChildCollection.removeChildren(in:)(uint64_t a1, void *a2)
{
  v47 = a1;
  v4 = a2[2];
  v44 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v41 = v5;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v39 - v8;
  v9 = a2[3];
  OUTLINED_FUNCTION_2_3();
  v39 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - v15;
  OUTLINED_FUNCTION_2_3();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  v45 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v40 = v25;
  OUTLINED_FUNCTION_59();
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v39 - v29;
  (*(v18 + 16))(v23, v47, v4, v28);
  v46 = v30;
  sub_1BF17A32C();
  v43 = v4;
  v47 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v31 = (v39 + 32);
  v32 = (v41 + 8);
  for (i = (v39 + 8); ; (*i)(v2, v9))
  {
    sub_1BF17AF0C();
    if (__swift_getEnumTagSinglePayload(v16, 1, v9) == 1)
    {
      break;
    }

    (*v31)(v2, v16, v9);
    v34 = OUTLINED_FUNCTION_3_46();
    v48 = v35(v34);
    v49 = v36;
    sub_1BF179E9C();
    v37 = v42;
    sub_1BF179D7C();

    (*v32)(v37, v44);
  }

  return (*(v40 + 8))(v46, v47);
}

void SingleValueStore.add(value:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v42 = v2;
  v44 = *v0;
  v48 = sub_1BF179B5C();
  OUTLINED_FUNCTION_1();
  v50 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_2_0();
  v46 = v8 - v7;
  OUTLINED_FUNCTION_12_9();
  v49 = sub_1BF179BBC();
  OUTLINED_FUNCTION_1();
  v47 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v45 = v13 - v12;
  v14 = *(v44 + 80);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v43 = &v42 - v18;
  OUTLINED_FUNCTION_12_9();
  v19 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v42 - v24;
  UnfairLock.lock()();
  OUTLINED_FUNCTION_4_0();
  *(v0 + *(v26 + 160)) = 1;
  v27 = *(v15 + 16);
  v27(v25, v3, v14);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v14);
  OUTLINED_FUNCTION_4_0();
  v29 = *(v28 + 152);
  swift_beginAccess();
  (*(v21 + 40))(v0 + v29, v25, v19);
  swift_endAccess();
  v30 = v43;
  v27(v43, v42, v14);
  v31 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v32 = swift_allocObject();
  v33 = v44;
  *(v32 + 2) = v14;
  *(v32 + 3) = *(v33 + 88);
  *(v32 + 4) = *(v33 + 96);
  *(v32 + 5) = v1;
  (*(v15 + 32))(&v32[v31], v30, v14);
  v52[4] = sub_1BF05DE10;
  v52[5] = v32;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 1107296256;
  v52[2] = sub_1BF0058CC;
  v52[3] = &block_descriptor_2;
  v34 = _Block_copy(v52);

  v35 = v45;
  sub_1BF179B8C();
  v51 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_7_10();
  sub_1BF00AEAC(v36, v37, MEMORY[0x1E69E7F70]);
  sub_1BF027D54(0);
  OUTLINED_FUNCTION_6_13();
  sub_1BF00AEAC(v38, v39, MEMORY[0x1E69E6328]);
  v40 = v46;
  v41 = v48;
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v35, v40, v34);
  _Block_release(v34);
  (*(v50 + 8))(v40, v41);
  (*(v47 + 8))(v35, v49);

  sub_1BF05D9F8(v1);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF05DA0C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BF05DAC8(uint64_t *a1, uint64_t a2)
{
  sub_1BF028120(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BF17923C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF03BE14(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1BF00B048(v5, sub_1BF028120);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1BF178D3C();
  swift_allocObject();
  _s13TeaFoundation16ReferenceEncoderCACycfc_0();
  v12 = sub_1BF178D0C();
  v14 = v13;
  sub_1BF17938C();
  (*(v7 + 8))(v10, v6);
  sub_1BF014E18(v12, v14);
}

uint64_t sub_1BF05DE4C(uint64_t a1, uint64_t a2)
{
  sub_1BF028120(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ThreadsafeSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - v7;
  UnfairLock.lock()();
  (*(v6 + 16))(v8, a2, v5);
  swift_beginAccess();
  sub_1BF17A9AC();
  v9 = sub_1BF17A94C();
  swift_endAccess();
  sub_1BEFF99D8(v3);
  return v9 & 1;
}

uint64_t objectdestroy_25Tm()
{

  v0 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void UnsafeLazy.value.getter()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v66 = v3;
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  v68 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_4_1();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_28_11();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v65 - v15;
  v67 = v17;
  v20 = type metadata accessor for UnsafeLazy.Loader(0, v17, v18, v19);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_4_1();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v65 - v30;
  v32 = *(v4 + 88);
  OUTLINED_FUNCTION_3_5(&v2[v32], &v70);
  (*(v22 + 16))(v31, &v2[v32], v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*v31)();
    v52 = v67;
    (*(v68 + 16))(v27, v10, v67);
    swift_storeEnumTagMultiPayload();
    v53 = OUTLINED_FUNCTION_21_14();
    OUTLINED_FUNCTION_7_2(v53, v54);
    v55 = OUTLINED_FUNCTION_30_10();
    v56(v55);
    swift_endAccess();
    v57 = *(*v2 + 96);
    v58 = OUTLINED_FUNCTION_21_14();
    OUTLINED_FUNCTION_3_5(v58, v59);
    v60 = *&v2[v57];
    OUTLINED_FUNCTION_7_2(&v2[v57], v69);
    OUTLINED_FUNCTION_3_44();
    swift_getFunctionTypeMetadata1();
    sub_1BEFF4CFC();
    sub_1BF17A65C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF17A63C();
    swift_endAccess();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v61 = sub_1BF17A4EC();

    v69[0] = v61;
    if (v61 != sub_1BF17A5AC())
    {
      do
      {
        v62 = sub_1BF17A58C();
        sub_1BF17A51C();
        if ((v62 & 1) == 0)
        {
          goto LABEL_14;
        }

        v63 = *(v60 + 32 + 16 * v61);

        sub_1BF17A62C();
        v63(v10);

        v64 = sub_1BF17A5AC();
        v61 = v69[0];
      }

      while (v69[0] != v64);
    }

    (*(v68 + 32))(v66, v10, v52);
LABEL_12:
    OUTLINED_FUNCTION_26_2();
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v68 + 32))(v66, v31, v67);
    goto LABEL_12;
  }

  v34 = *v31;
  v35 = *(v31 + 1);
  v37 = *(v31 + 2);
  v36 = *(v31 + 3);
  v65[0] = v35;
  (v34)(EnumCaseMultiPayload);
  v65[1] = v36;
  v37(v1);
  v39 = v67;
  v38 = v68;
  (*(v68 + 8))(v1, v67);
  (*(v38 + 16))(v27, v16, v39);
  swift_storeEnumTagMultiPayload();
  v40 = OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_7_2(v40, v41);
  v42 = OUTLINED_FUNCTION_30_10();
  v43(v42);
  swift_endAccess();
  v44 = *(*v2 + 96);
  v45 = OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_3_5(v45, v46);
  v47 = *&v2[v44];
  OUTLINED_FUNCTION_7_2(&v2[v44], v69);
  OUTLINED_FUNCTION_3_44();
  swift_getFunctionTypeMetadata1();
  sub_1BEFF4CFC();
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17A63C();
  swift_endAccess();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v48 = sub_1BF17A4EC();

  v69[0] = v48;
  OUTLINED_FUNCTION_22_14();
  if (v48 == sub_1BF17A5AC())
  {
LABEL_6:

    (*(v68 + 32))(v66, v16, v39);
    goto LABEL_12;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_14();
    v49 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v49 & 1) == 0)
    {
      break;
    }

    v50 = *(v47 + 32 + 16 * v48);

    sub_1BF17A62C();
    v50(v16);

    OUTLINED_FUNCTION_22_14();
    v51 = sub_1BF17A5AC();
    v48 = v69[0];
    if (v69[0] == v51)
    {
      goto LABEL_6;
    }
  }

  sub_1BF17B23C();
  __break(1u);
LABEL_14:
  sub_1BF17B23C();
  __break(1u);
}

uint64_t static CodingUserInfoKey.encodingPool.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_0_20();
  sub_1BF05E6C0(v2, v3, v4);
  v6 = OUTLINED_FUNCTION_68(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  OUTLINED_FUNCTION_1_19();
  sub_1BF17B41C();
  v10 = sub_1BF17B42C();
  result = __swift_getEnumTagSinglePayload(v9, 1, v10);
  if (result != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  __break(1u);
  return result;
}

void sub_1BF05E6C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Version.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBFC();
  Version.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF17B91C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

BOOL static Version.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v14 = OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5, a6, a7, a8, *a2, v53, v54, *a1);
  v16 = static VersionNumber.== infix(_:_:)(v14, v15);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (v10)
  {
    if (v13)
    {
      v17 = OUTLINED_FUNCTION_0_75();
      sub_1BF026144(v17, v18, v19);
      v20 = OUTLINED_FUNCTION_2_58();
      sub_1BF026144(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_0_75();
      sub_1BF026144(v23, v24, v25);
      v34 = OUTLINED_FUNCTION_1_58(v26, v27, v28, v29, v30, v31, v32, v33, v11, v13, v12, v8);
      v36 = static VersionQualifier.== infix(_:_:)(v34, v35);

      v37 = OUTLINED_FUNCTION_0_75();
      sub_1BF05E98C(v37, v38);
      return v36;
    }

    v42 = OUTLINED_FUNCTION_0_75();
    sub_1BF026144(v42, v43, v44);
    sub_1BF026144(v11, 0, v12);
    v45 = OUTLINED_FUNCTION_0_75();
    sub_1BF026144(v45, v46, v47);

LABEL_9:
    v48 = OUTLINED_FUNCTION_0_75();
    sub_1BF05E98C(v48, v49);
    v50 = OUTLINED_FUNCTION_2_58();
    sub_1BF05E98C(v50, v51);
    return 0;
  }

  sub_1BF026144(v8, 0, v9);
  if (v13)
  {
    v39 = OUTLINED_FUNCTION_2_58();
    sub_1BF026144(v39, v40, v41);
    goto LABEL_9;
  }

  sub_1BF026144(v11, 0, v12);
  sub_1BF05E98C(v8, 0);
  return 1;
}

uint64_t sub_1BF05E98C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BF05E9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v9[3] = a8;
  return static Version.< infix(_:_:)(v9, v10, a3, a4, a5, a6, a7, a8) & 1;
}

uint64_t Sequence<>.mapToDict(allowMerging:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v58 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v52 = v7;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v52 - v10;
  v56 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v54 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v57 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v55 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v52 - v21;
  OUTLINED_FUNCTION_2_3();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  OUTLINED_FUNCTION_39_0();
  v30 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v53 = v31;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v52 - v34;
  v65 = sub_1BF179CEC();
  (*(v24 + 16))(v29, v4, a2);
  v60 = v35;
  sub_1BF17A32C();
  v61 = v30;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = (v52 + 32);
  v37 = (v62 + 8);
  ++v54;
  v38 = (v52 + 8);
  v39 = (v52 + 16);
  while (1)
  {
    sub_1BF17AF0C();
    OUTLINED_FUNCTION_51_2(v22, 1, AssociatedTypeWitness);
    if (v40)
    {
      break;
    }

    (*v36)(v11, v22, AssociatedTypeWitness);
    v41 = *v37;
    if ((v58 & 1) != 0 || (v63 = v41(AssociatedTypeWitness, v62), v64 = v42, v43 = v55, sub_1BF179EAC(), , EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, AssociatedTypeWitness), (*v54)(v43, v56), EnumTagSinglePayload == 1))
    {
      v45 = v41(AssociatedTypeWitness, v62);
      v47 = v46;
      (*v39)(v57, v11, AssociatedTypeWitness);
      OUTLINED_FUNCTION_127();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, AssociatedTypeWitness);
      v63 = v45;
      v64 = v47;
      sub_1BF179E9C();
      sub_1BF179EBC();
    }

    (*v38)(v11, AssociatedTypeWitness);
  }

  (*(v53 + 8))(v60, v61);
  return v65;
}

uint64_t static BinaryDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v7 = *(a5 + 8);
  sub_1BF014DC0(a2, a3);
  v7(&v9, a4, a5);
  return sub_1BF014E18(v9, v10);
}

void static Date.read(from:)(uint64_t a1)
{
  sub_1BF05EFB0(a1);
  if (!v1)
  {
    sub_1BF17943C();
  }
}

double sub_1BF05EFB0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_42(a1);
  v4 = sub_1BF05F028(v2, v3);
  v5 = OUTLINED_FUNCTION_49();
  sub_1BF014DC0(v5, v6);
  OUTLINED_FUNCTION_16_11();
  sub_1BF05F1AC(v7, v8, v9, v10);
  sub_1BF014E18(*v1, *(v1 + 8));
  *v1 = v12;
  *(v1 + 8) = v13;
  return v4;
}

double sub_1BF05F028(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x1BF05F104);
      }

      a1 = a1;
      goto LABEL_7;
    case 2uLL:
      a1 = *(a1 + 16);
LABEL_7:
      sub_1BF05F114(a1);
      if (!v2)
      {
        v3 = v6;
      }

      break;
    case 3uLL:
      *swift_slowAlloc() = 0;
      MEMORY[0x1BFB547B0]();
      v3 = 0.0;
      break;
    default:
      v5 = swift_slowAlloc();
      *v5 = v4;
      v3 = *v5;
      MEMORY[0x1BFB547B0]();
      break;
  }

  return v3;
}

void *sub_1BF05F114(uint64_t a1)
{
  v2 = sub_1BF178F3C();
  if (v2)
  {
    v3 = v2;
    result = sub_1BF178F5C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v5)
  {
    *result = *v5;
    return MEMORY[0x1BFB547B0]();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1BF05F1AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    JUMPOUT(0x1BF05F328);
  }

  v5 = a3 >> 62;
  v9 = BYTE6(a3);
  OUTLINED_FUNCTION_11_8();
  v14 = sub_1BF05F358(v10, v11, v12, v13);
  if (!a1 || v14 >= a1)
  {
    OUTLINED_FUNCTION_11_8();
    v19 = sub_1BF05F448(v15, v16, v17, v18);
    v20 = 0;
    switch(v5)
    {
      case 1:
        v20 = a2 >> 32;
        break;
      case 2:
        v20 = *(a2 + 24);
        break;
      case 3:
        break;
      default:
        v20 = v9;
        break;
    }

    if (v20 < v19)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_11_8();
  v21 = sub_1BF17930C();
  v23 = v22;
  result = sub_1BF014E18(a2, a3);
  *a4 = v21;
  a4[1] = v23;
  return result;
}

uint64_t sub_1BF05F358(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < a1 || v5 > a1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (v10)
  {
LABEL_22:
    __break(1u);
    JUMPOUT(0x1BF05F428);
  }

  return result;
}

uint64_t sub_1BF05F448(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
LABEL_12:
    __break(1u);
    JUMPOUT(0x1BF05F4B0);
  }

  return result;
}

uint64_t static Optional<A>.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  result = sub_1BF05F5E4(v16);
  if (!v4)
  {
    if (result)
    {
      (*(a3 + 8))(a1, a2, a3);
      (*(v10 + 32))(a4, v15, a2);
      v18 = a4;
      v19 = 0;
    }

    else
    {
      v18 = a4;
      v19 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v18, v19, 1, a2);
  }

  return result;
}

uint64_t sub_1BF05F5E4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_1_42(a1);
  sub_1BF05F644(v5, v6);
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_9_21();
  sub_1BF05F1AC(v7, v8, v9, v10);
  OUTLINED_FUNCTION_14_15();
  *v1 = v3;
  v1[1] = v4;
  return v2 & 1;
}

uint64_t sub_1BF05F644(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x1BF05F714);
      }

      a1 = a1;
      goto LABEL_7;
    case 2uLL:
      a1 = *(a1 + 16);
LABEL_7:
      v4 = sub_1BF05F724(a1);
      if (!v2)
      {
        v3 = v4;
      }

      break;
    case 3uLL:
      *swift_slowAlloc() = 0;
      MEMORY[0x1BFB547B0]();
      v3 = 0;
      break;
    default:
      *swift_slowAlloc() = a1;
      MEMORY[0x1BFB547B0]();
      break;
  }

  return v3 & 1;
}

char *sub_1BF05F724(uint64_t a1)
{
  v2 = sub_1BF178F3C();
  if (v2)
  {
    v3 = v2;
    result = sub_1BF178F5C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v5)
  {
    v6 = *v5;
    *result = *v5;
    MEMORY[0x1BFB547B0]();
    return (v6 & 1);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1BF05F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = swift_slowAlloc();
  if (a3)
  {
    v9 = *(v7 + 64);
    if ((v9 & 0x8000000000000000) == 0)
    {
      memmove(v8, (a3 + a1), v9);
      sub_1BF17AF1C();

LABEL_8:
      JUMPOUT(0x1BFB547B0);
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_8;
}

uint64_t sub_1BF05F8EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(*(a2 - 8) + 64);
  sub_1BF014DC0(*a1, v4);
  sub_1BF05F1AC(v5, v3, v4, &v9);
  v6 = *a1;
  v7 = a1[1];
  *a1 = v9;

  return sub_1BF014E18(v6, v7);
}

uint64_t sub_1BF05F9E8@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  result = static String.read(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t static String.read(from:)(uint64_t *a1)
{
  v3 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  sub_1BF05FB18(a1);
  if (!v1)
  {
    sub_1BF17A10C();
    sub_1BF060240();
    sub_1BF060290();
    v7 = sub_1BF17A0DC();
    v9 = v8;

    if (!v9)
    {
      v11 = sub_1BF0E5CAC();
      OUTLINED_FUNCTION_26_10(&type metadata for BinaryDecoder.Error, v11);
      *v12 = 0;
      swift_willThrow();
    }
  }

  return v7;
}

uint64_t sub_1BF05FB18(uint64_t *a1)
{
  v4 = sub_1BF05FFE8(a1);
  if (!v1)
  {
    v5 = v4;
    if (v4 < 0)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if (MEMORY[0x1BFB51150](*a1, a1[1]) < v4)
    {
      v6 = 2;
LABEL_6:
      v7 = sub_1BF0E5CAC();
      OUTLINED_FUNCTION_26_10(&type metadata for BinaryDecoder.Error, v7);
      *v8 = v6;
      swift_willThrow();
      return v2;
    }

    if (v5)
    {
      v37 = a1;
      v10 = *a1;
      v11 = a1[1];
      v2 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v12 = v11;
        v13 = v11 >> 62;
        v14 = v10;
        v10 = v10;
        v15 = v14 >> 32;
        v16 = BYTE6(v12);
        switch(v13)
        {
          case 1uLL:
            if (v15 < v14)
            {
              goto LABEL_61;
            }

            v19 = sub_1BF178F3C();
            if (!v19)
            {
              goto LABEL_22;
            }

            v25 = sub_1BF178F5C();
            if (__OFSUB__(v10, v25))
            {
              goto LABEL_63;
            }

            v19 += v10 - v25;
LABEL_22:
            sub_1BF178F4C();
            if (!v19)
            {
              goto LABEL_65;
            }

            v26 = OUTLINED_FUNCTION_6_39();
            OUTLINED_FUNCTION_9_28(v26);
            v20 = v14 >> 32;
            v10 = v10;
            v17 = v10;
LABEL_24:
            if (v20 < v17)
            {
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
LABEL_63:
              __break(1u);
LABEL_64:
              *v37 = v14;
              v37[1] = v12;
              OUTLINED_FUNCTION_6_39();
              __break(1u);
LABEL_65:
              *v37 = v14;
              v37[1] = v12;
              OUTLINED_FUNCTION_6_39();
              __break(1u);
              JUMPOUT(0x1BF05FF34);
            }

            if (v13 == 2)
            {
              v18 = *(v14 + 16);
              v21 = *(v14 + 24);
            }

            else
            {
              v21 = v15;
              v18 = v10;
            }

LABEL_28:
            if (v21 < v20 || v20 < v18)
            {
              goto LABEL_56;
            }

            if (__OFSUB__(v20, v17))
            {
              goto LABEL_57;
            }

            if (v20 != v17)
            {
              v28 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                goto LABEL_59;
              }

              v29 = 0;
              v30 = 0;
              switch(v13)
              {
                case 1:
                  v29 = v15;
                  v30 = v10;
                  break;
                case 2:
                  v30 = *(v14 + 16);
                  v29 = *(v14 + 24);
                  break;
                case 3:
                  break;
                default:
                  v30 = 0;
                  v29 = v16;
                  break;
              }

              if (v29 < v28 || v28 < v30)
              {
                goto LABEL_60;
              }

              v32 = 0;
              switch(v13)
              {
                case 1:
                  v32 = v15;
                  break;
                case 2:
                  v32 = *(v14 + 24);
                  break;
                case 3:
                  break;
                default:
                  v32 = v16;
                  break;
              }

              if (v32 < v28)
              {
                goto LABEL_58;
              }
            }

            v10 = sub_1BF17930C();
            v11 = v33;
            sub_1BF014E18(v14, v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1BF06022C();
              v2 = v35;
            }

            v34 = *(v2 + 16);
            if (v34 >= *(v2 + 24) >> 1)
            {
              sub_1BF06022C();
              v2 = v36;
            }

            *(v2 + 16) = v34 + 1;
            *(v2 + v34 + 32) = v19;
            if (--v5)
            {
              continue;
            }

            *v37 = v10;
            v37[1] = v11;
            break;
          case 2uLL:
            v22 = *(v14 + 16);
            v19 = sub_1BF178F3C();
            if (!v19)
            {
              goto LABEL_15;
            }

            v23 = sub_1BF178F5C();
            if (__OFSUB__(v22, v23))
            {
              goto LABEL_62;
            }

            v19 += v22 - v23;
LABEL_15:
            sub_1BF178F4C();
            if (!v19)
            {
              goto LABEL_64;
            }

            v16 = BYTE6(v12);
            v24 = OUTLINED_FUNCTION_6_39();
            OUTLINED_FUNCTION_9_28(v24);
            v17 = *(v14 + 16);
            v20 = *(v14 + 24);
            v15 = v14 >> 32;
            v10 = v10;
            goto LABEL_24;
          case 3uLL:
            *OUTLINED_FUNCTION_6_39() = 0;
            MEMORY[0x1BFB547B0]();
            LOBYTE(v19) = 0;
            v20 = 0;
            v17 = 0;
            v21 = 0;
            v18 = 0;
            goto LABEL_28;
          default:
            *OUTLINED_FUNCTION_6_39() = v14;
            MEMORY[0x1BFB547B0]();
            v17 = 0;
            v18 = 0;
            LOBYTE(v19) = v14;
            v20 = BYTE6(v12);
            v21 = BYTE6(v12);
            goto LABEL_28;
        }

        break;
      }
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v2;
}

uint64_t sub_1BF05FF74(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_42(a1);
  v4 = sub_1BF060018(v2, v3);
  v5 = *v1;
  v6 = v1[1];
  sub_1BF014DC0(*v1, v6);
  OUTLINED_FUNCTION_9_21();
  sub_1BF05F1AC(v7, v8, v9, v10);
  OUTLINED_FUNCTION_14_15();
  *v1 = v5;
  v1[1] = v6;
  return v4;
}

uint64_t sub_1BF060018(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_15_12();
      if (v4 != v5)
      {
        __break(1u);
        JUMPOUT(0x1BF0600CCLL);
      }

      goto LABEL_5;
    case 2uLL:
LABEL_5:
      OUTLINED_FUNCTION_4_23();
      v6 = sub_1BF0600DC();
      if (!v2)
      {
        v3 = v6;
      }

      break;
    case 3uLL:
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_28();
      v3 = 0;
      break;
    default:
      *swift_slowAlloc() = a1;
      OUTLINED_FUNCTION_28();
      break;
  }

  return v3;
}

uint64_t *sub_1BF0600DC()
{
  v1 = OUTLINED_FUNCTION_8_20();
  if (v1)
  {
    v2 = v1;
    result = sub_1BF178F5C();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = (v0 - result + v2);
  }

  else
  {
    v4 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v4)
  {
    v5 = *v4;
    *result = *v4;
    OUTLINED_FUNCTION_28();
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1BF060154()
{
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    v7 = OUTLINED_FUNCTION_65_1();
    sub_1BEFEC638(v7, v8, v9, v10);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v2;
    v11[3] = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v11 != v0 || &v14[v2] <= v13)
    {
      memmove(v13, v14, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v13, v14, v2);
  }
}

void sub_1BF060240()
{
  if (!qword_1ED8EDD80)
  {
    v0 = sub_1BF17A65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EDD80);
    }
  }
}

unint64_t sub_1BF060290()
{
  result = qword_1ED8EDD78;
  if (!qword_1ED8EDD78)
  {
    sub_1BEFF5158(255, &qword_1ED8EDD80, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDD78);
  }

  return result;
}

uint64_t sub_1BF06030C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF05F5E4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1BF06033C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1BF05FFE8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void static Array<A>.read(from:)()
{
  OUTLINED_FUNCTION_25_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v26 - v16;
  v19 = sub_1BF05FFE8(v18);
  if (v0)
  {
    goto LABEL_7;
  }

  v20 = v19;
  if (v19 < 0)
  {
    v24 = sub_1BF0E5CAC();
    OUTLINED_FUNCTION_26_10(&type metadata for BinaryDecoder.Error, v24);
    v23 = 1;
    goto LABEL_6;
  }

  if (MEMORY[0x1BFB51150](*v6, v6[1]) < v19)
  {
    v21 = sub_1BF0E5CAC();
    OUTLINED_FUNCTION_26_10(&type metadata for BinaryDecoder.Error, v21);
    v23 = 2;
LABEL_6:
    *v22 = v23;
    swift_willThrow();
    goto LABEL_7;
  }

  v27 = v6;
  v28 = v20;
  v25 = 0;
  sub_1BF179CFC();
  v26[1] = v2 + 8;
  while (v28 != v25)
  {
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return;
    }

    (*(v2 + 8))(v27, v4, v2);
    (*(v8 + 16))(v13, v17, v4);
    sub_1BF17A65C();
    sub_1BF17A5DC();
    (*(v8 + 8))(v17, v4);
    ++v25;
  }

LABEL_7:
  OUTLINED_FUNCTION_24_1();
}

void Date.addDays(_:calendar:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BF17964C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_0_40();
  sub_1BF00EAF0(0, v6, v7, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v8);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - v11;
  v13 = OUTLINED_FUNCTION_7_17();
  v14(v13);
  sub_1BF17962C();
  v15 = OUTLINED_FUNCTION_10_8();
  v16(v15);
  v17 = sub_1BF1794AC();
  OUTLINED_FUNCTION_4_16(v12);
  if (!v18)
  {
    OUTLINED_FUNCTION_6_19();
    (*(v22 + 32))(a2, v12, v17);
    return;
  }

  if ((a1 * 60) >> 64 != (60 * a1) >> 63)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_5();
  if (!v18)
  {
    goto LABEL_11;
  }

  if ((v19 * 24) >> 64 != (24 * v19) >> 63)
  {
LABEL_12:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_4_16(v12);
  if (!v18)
  {
    OUTLINED_FUNCTION_0_40();
    sub_1BF05AC80(v12, v20, v21);
  }
}

void sub_1BF060764(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1BF05EFB0(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1BF060790()
{

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF0607C4(void *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  sub_1BF17A7EC();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12_1();
  return sub_1BF1797AC();
}

uint64_t sub_1BF060868()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF0608A0()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF060940()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF060980()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  OUTLINED_FUNCTION_12_3();
  v7 = v5 + *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1BF060ACC()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  OUTLINED_FUNCTION_12_3();
  v7 = v5 + *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1BF060C0C()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v9 | 7);
}

uint64_t sub_1BF060D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF1794AC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF060DD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF1794AC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So13NSURLResponseCSgSo23NSURLSessionTaskMetricsCSgs5Error_pSgIegggg_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF060F14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BF084358(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF060FE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF061098()
{
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF0610C8()
{
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF06114C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  sub_1BF014E18(v0[9], v0[10]);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1BF06120C()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_21_4();
  sub_1BF09704C(0, v1, v2);
  OUTLINED_FUNCTION_103();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = (v0 + v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    sub_1BF1794AC();
    OUTLINED_FUNCTION_12();
    (*(v7 + 8))(v0 + v4);
    v8 = *(type metadata accessor for AuthToken(0) + 20);
    sub_1BF17923C();
    OUTLINED_FUNCTION_12();
    (*(v9 + 8))(v5 + v8);
  }

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1BF06138C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF0613D0()
{

  if (*(v0 + 32))
  {
  }

  v1 = OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF061424()
{

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF061470()
{

  if (*(v0 + 24))
  {
  }

  v1 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF0614C0()
{

  v0 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF0614FC()
{
  OUTLINED_FUNCTION_2_3();

  v0 = OUTLINED_FUNCTION_92();
  v1(v0);
  v2 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF0615A0()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BF06161C()
{

  v0 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF06164C()
{

  v0 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF06167C()
{

  v0 = OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF061994()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1BF061C5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF061CBC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF061CF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF061D40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF061D78()
{
  sub_1BF17923C();
  OUTLINED_FUNCTION_0_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

void sub_1BF061E38(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

__n128 sub_1BF061E7C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1BF061F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF0554D0(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

void sub_1BF062004(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BF0554D0(0);
  if (*(*(v8 - 8) + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

uint64_t sub_1BF0620BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF1794AC();
  OUTLINED_FUNCTION_6_16();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1BF17923C();
  OUTLINED_FUNCTION_6_16();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1BF0621AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BF1794AC();
  OUTLINED_FUNCTION_6_16();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1BF17923C();
    OUTLINED_FUNCTION_6_16();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1BF0623C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF062400()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF062440()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF062478()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF0624B0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF0624F4()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF062658(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF17907C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1BF0626A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF17907C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1BF062714()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF06274C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF062834()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF0628C0()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BF0629D0()
{

  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF062A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF0B5EA4(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

void sub_1BF062AE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BF0B5EA4(0);
  if (*(*(v8 - 8) + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

uint64_t sub_1BF062C18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF062D10()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF062D48()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF062D80()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF062DE0()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF062E14()
{

  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF062EC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1BF062F6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF062FB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF062FF4()
{

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF0632A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF0632DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF063314()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF06334C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF063394()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BF0633D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF06340C()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF063478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF1794AC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF063524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF1794AC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF063620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Dictionary<>.disableSafeishSafety.getter(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1BF0636E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF06371C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF0637F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF17923C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF0638A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF17923C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF06397C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1BF063A6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF063AB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF063AF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1BF063BA0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1BF063BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF1794AC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF063C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF1794AC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF063D4C()
{
  sub_1BF17923C();
  OUTLINED_FUNCTION_0_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  sub_1BF014E18(*(v0 + v4), *(v0 + v4 + 8));

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1BF063DF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF063E34()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF063E68()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF063E9C()
{
  v1 = sub_1BF178C6C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1BF063F6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF063FB4()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF063FE8()
{
  sub_1BF178C6C();
  OUTLINED_FUNCTION_0_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

__n128 sub_1BF0640C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BF06412C()
{

  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF06415C()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF06419C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF0641E4()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF064224()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF06426C()
{

  v0 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF0642B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF0642F0()
{
  swift_unknownObjectRelease();

  sub_1BF104FC0(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1BF06433C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF06437C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF0643FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF1794FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF0644A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF1794FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF064550()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1BF064648()
{

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF06477C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1BF0647C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BF06480C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF06490C()
{

  v0 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

__n128 sub_1BF0649A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BF0649B4()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF0649E8()
{

  v1 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF064A28()
{
  MEMORY[0x1BFB548B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF064A60()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BF064AB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF064AF8()
{

  v1 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF064B38()
{
  swift_unknownObjectRelease();

  sub_1BF104FC0(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1BF064C18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF064D14()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF064D5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF064DAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF064E0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BF064E74()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BF064EE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1BF064F5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1BF064FDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1BF065064()
{
  OUTLINED_FUNCTION_2_56();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);

  v5 = OUTLINED_FUNCTION_86_2();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 192) & ~v2) + v4, v2 | 7);
}