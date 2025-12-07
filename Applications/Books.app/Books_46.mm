void sub_1005D51DC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = a1;

  v9 = 0;
  v32 = v8;
  v33 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
LABEL_6:
    v12 = v9;
    if (!v6)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v9 = v12;
LABEL_11:
      v6 &= v6 - 1;
      swift_retain_n();
      sub_1007A02F4();
      v13 = objc_allocWithZone(BKEpubCFILocation);
      v14 = sub_1007A2214();

      v34 = 0;
      v15 = [v13 initWithCFI:v14 error:&v34];

      if (!v15)
      {
        v11 = v34;

        sub_1007967D4();

        swift_willThrow();

        goto LABEL_6;
      }

      v16 = v34;
      v17 = v15;
      v18 = v10;
      v19 = [v10 intersectWithRangeFromHeadOf:v17 toTailOf:v17];
      if (v19)
      {
        break;
      }

      v12 = v9;
      if (!v6)
      {
LABEL_8:
        while (1)
        {
          v9 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v9 >= v7)
          {

            v28 = [v10 cfiString];
            if (v28)
            {
              v29 = v28;

              sub_1007A2254();

              sub_1007A1894();
              return;
            }

LABEL_26:
            __break(1u);
          }

          v6 = *(v3 + 8 * v9);
          ++v12;
          if (v6)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_26;
      }
    }

    v20 = v19;
    v8 = [v18 unionWithCFI:v17];

    if (!v8)
    {
      break;
    }

    v21 = _s8BookEPUB25HighlightAnnotationEntityC5BooksE14annotationUuidSSvg_0();
    v30 = v22;
    v31 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_10000B3D8(0, *(v33 + 2) + 1, 1, v33);
    }

    v24 = *(v33 + 2);
    v23 = *(v33 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v27 = sub_10000B3D8((v23 > 1), v24 + 1, 1, v33);
      v25 = v24 + 1;
      v33 = v27;
    }

    *(v33 + 2) = v25;
    v26 = &v33[16 * v24];
    *(v26 + 4) = v31;
    *(v26 + 5) = v30;
    sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
    if (sub_1007A3184())
    {
      _s8BookEPUB25HighlightAnnotationEntityC5BooksE14annotationUuidSSvg_0();
    }

    else
    {
    }
  }

  __break(1u);
}

void sub_1005D55B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  v10 = sub_1001F1160(&qword_100AECD30, &qword_100833F50);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  v14 = *(a2 + OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationModifier);
  isa = sub_1007A25D4().super.isa;
  (*(v11 + 16))(v13, a1, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  (*(v11 + 32))(v17 + v16, v13, v10);
  aBlock[4] = sub_1005D80E4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100551914;
  aBlock[3] = &unk_100A25278;
  v18 = _Block_copy(aBlock);

  [v14 modifyAnnotationsWithUUIDs:isa type:v20 performBlock:v18];
  _Block_release(v18);
}

void sub_1005D57B8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  v10 = sub_1001F1160(&unk_100ADA050, &qword_100833F70);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  v14 = *(a2 + OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationModifier);
  isa = sub_1007A25D4().super.isa;
  (*(v11 + 16))(v13, a1, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  (*(v11 + 32))(v17 + v16, v13, v10);
  aBlock[4] = sub_1005D8374;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100551914;
  aBlock[3] = &unk_100A25340;
  v18 = _Block_copy(aBlock);

  [v14 modifyAnnotationsWithUUIDs:isa type:v20 performBlock:v18];
  _Block_release(v18);
}

double sub_1005D59BC(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *__return_ptr, void *, __n128), uint64_t a6, uint64_t a7)
{
  v32[1] = a4;
  v33 = a5;
  v10 = sub_1007A1C54();
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v36 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CA4();
  v34 = *(v12 - 8);
  v35 = v12;
  __chkstk_darwin(v12);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001F1160(&qword_100AECD30, &qword_100833F50);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v32 - v18;
  if (a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v33(v40, v20);

  if (a3)
  {
    a3(v21);
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v22 = sub_1007A2D74();
  (*(v16 + 16))(v19, a7, v15);
  v23 = v40[0];
  v24 = v40[1];
  v25 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v26 = swift_allocObject();
  (*(v16 + 32))(v26 + v25, v19, v15);
  v27 = (v26 + ((v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = v23;
  v27[1] = v24;
  aBlock[4] = sub_1005D810C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A252C8;
  v28 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  v29 = v36;
  v30 = v38;
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v28);

  (*(v37 + 8))(v29, v30);
  (*(v34 + 8))(v14, v35);

  return result;
}

uint64_t sub_1005D5DC8(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *, __n128), uint64_t a6, uint64_t a7)
{
  v28 = a5;
  v29 = a7;
  v27[1] = a4;
  v9 = sub_1007A1C54();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CA4();
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001F1160(&unk_100ADA050, &qword_100833F70);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v27 - v17;
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  v28(v19);

  if (a3)
  {
    a3(v20);
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v21 = sub_1007A2D74();
  (*(v16 + 16))(v18, v29, v15);
  v22 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v23 = swift_allocObject();
  (*(v16 + 32))(v23 + v22, v18, v15);
  aBlock[4] = sub_1004FA248;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A25390;
  v24 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  v25 = v33;
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v24);

  (*(v32 + 8))(v11, v25);
  return (*(v30 + 8))(v14, v31);
}

void AnnotationProviderService.controller(_:didChange:at:for:newIndexPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationFRC);
  if (v5)
  {
    sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
    v8 = v5;
    v9 = sub_1007A3184();

    if (v9)
    {
      sub_100007484(a2, v12);
      sub_10000A7C4(0, &qword_100AECB40, AEAnnotation_ptr);
      if (swift_dynamicCast())
      {
        if ((a4 - 3) < 2)
        {
          sub_1005CF688(v11);
        }

        else if (a4 == 2)
        {
          sub_1005CED48(v11);
        }

        else if (a4 == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10079B9A4(v12);

          v10 = sub_10079F2A4();

          sub_1005CDB5C(v11, v10, 1);

          return;
        }
      }
    }
  }
}

void *sub_1005D659C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1001F1160(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size_1(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1005D6640(uint64_t a1, uint64_t a2)
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

  sub_1001F1160(&qword_100AE0BF8, &qword_100833FE0);
  v4 = *(sub_1001F1160(&qword_100AE0C00, &unk_1008214B0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size_1(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1005D6748(uint64_t a1, uint64_t a2)
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

  sub_1001F1160(&qword_100AE0A30, &qword_100821350);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1005D67F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1001F1160(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size_1(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1005D68F0(uint64_t a1, uint64_t a2)
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

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1005D6978(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1007A0044();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1005D6C1C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1005D6D90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1001F1160(&qword_100AE0C00, &unk_1008214B0);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = (&v32 - v11);
  v37 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = v37;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = -1 << *(v13 - 32);
    v33 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v18 << 6);
      v25 = *(v37 + 56);
      v26 = (*(v37 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = sub_10079BF44();
      (*(*(v29 - 8) + 16))(&v9[*(v36 + 48)], v25 + *(*(v29 - 8) + 72) * v24, v29);
      *v9 = v27;
      *(v9 + 1) = v28;
      a1 = v35;
      sub_10043AB68(v9, v35);
      sub_10043AB68(a1, a2);
      if (v20 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v34 + 72);
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v31 = v18 + 1;
    }

    else
    {
      v31 = v19;
    }

    v18 = v31 - 1;
LABEL_23:
    v15 = v32;
    a1 = v33;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

uint64_t *sub_1005D7028(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1007A35E4();
  sub_10000A7C4(0, a5, a6);
  sub_100402738(a7, a5, a6);
  result = sub_1007A2864();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_1007A3654())
      {
        goto LABEL_30;
      }

      sub_10000A7C4(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_1005D7258(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1005D73B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1005D74B0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
        goto LABEL_27;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1005D7604(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for NoteHighlight(0);
  v31 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = a4 + 8;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[8];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v18 = 0;
    v28 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[7];
      v25 = *(v31 + 72);
      sub_1005D8080(v24 + v25 * (v23 | (v18 << 6)), v10);
      sub_1001F22D4(v10, v13);
      sub_1001F22D4(v13, a2);
      if (v20 == v30)
      {
        a4 = a1;
        a1 = v29;
        goto LABEL_23;
      }

      a2 += v25;
      v26 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v19;
    }

    v18 = v27 - 1;
    a1 = v29;
LABEL_23:
    v15 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1005D782C(uint64_t a1, void *a2)
{

  sub_1001F1160(&qword_100AECD30, &qword_100833F50);
  return sub_1007A26B4();
}

void sub_1005D7880(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1006E64E4(&v11, [v7 ordinal]);
      sub_1005CDB5C(v8, a4, 0);

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1005D7990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationFRC] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v12 = OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationsChangeSubject;
  sub_1001F1160(&qword_100AD20A8, &unk_10080B870);
  swift_allocObject();
  *&a6[v12] = sub_10079B8D4();
  v13 = OBJC_IVAR____TtC5Books25AnnotationProviderService_bookmarkChangeSubject;
  sub_1001F1160(&qword_100AD20B0, &qword_100833D70);
  swift_allocObject();
  *&a6[v13] = sub_10079B8D4();
  v14 = OBJC_IVAR____TtC5Books25AnnotationProviderService_highlightChangeSubject;
  sub_1001F1160(&qword_100AD20B8, &unk_10080B880);
  swift_allocObject();
  *&a6[v14] = sub_10079B8D4();
  swift_unknownObjectWeakAssign();
  sub_10079F8B4();
  v15 = OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity;
  sub_1000077C0(&v28, &a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity]);
  *&a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationModifier] = a3;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  v16 = objc_opt_self();
  swift_unknownObjectRetain();
  v17 = [v16 standardUserDefaults];
  v18 = sub_1007A2214();
  v19 = [v17 BOOLForKey:v18];

  v20 = sub_1007A2214();
  v21 = [v17 integerForKey:v20];

  if (v21 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v21 <= 0x7FFFFFFF)
  {
    if (v21 <= 2)
    {
      switch(v21)
      {
        case 0:
          if (v19)
          {
            v22 = 5;
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_20;
        case 1:
          v22 = 1;
          goto LABEL_20;
        case 2:
          v22 = 2;
          goto LABEL_20;
      }
    }

    else if (v21 > 4)
    {
      if (v21 == 5)
      {
        v22 = 4;
        goto LABEL_20;
      }

      if (v21 == 6)
      {
        v22 = 5;
        goto LABEL_20;
      }
    }

    else if (v21 != 3)
    {
      v22 = 3;
LABEL_20:
      a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_currentHighlightStyle] = v22;
      sub_100009864(&a6[v15], &v28);
      sub_10000E3E8(&v28, v29);
      sub_10079ECA4();
      sub_10079F2D4();
      swift_allocObject();
      v23 = sub_10079F2C4();
      sub_1000074E0(&v28);
      swift_beginAccess();
      v27 = v23;
      sub_10079B964();
      swift_endAccess();
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = 0xD000000000000017;
      *(inited + 40) = 0x80000001008DAB50;
      *(inited + 48) = 3;
      *(inited + 72) = &type metadata for Int32;
      *(inited + 80) = 0xD000000000000017;
      *(inited + 88) = 0x80000001008DAB30;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 0;
      sub_100019158(inited);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
      swift_arrayDestroy();
      isa = sub_1007A2024().super.isa;

      [v17 registerDefaults:isa];

      v26.receiver = a6;
      v26.super_class = type metadata accessor for AnnotationProviderService(0);
      objc_msgSendSuper2(&v26, "init");

      return;
    }

    v22 = 0;
    goto LABEL_20;
  }

  __break(1u);
}

void sub_1005D7F2C(uint64_t a1)
{
  sub_1005D8004(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005D8004(uint64_t a1)
{
  if (!qword_100AECBC8)
  {
    sub_10079F2D4();
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AECBC8);
    }
  }
}

uint64_t sub_1005D8080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteHighlight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D810C()
{
  v1 = *(sub_1001F1160(&qword_100AECD30, &qword_100833F50) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005D782C(v0 + v2, v3);
}

uint64_t sub_1005D81A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1005D4710(a1, v4, v5, v6);
}

uint64_t sub_1005D8258(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsEvent.ReadingEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005D82B4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1001F1160(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_1005D839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(sub_1001F1160(a5, a6) - 8);
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80));

  return a7(a1, a2, a3, a4, v13, v14, v15);
}

uint64_t sub_1005D8450(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1005D2A00(a1, v4, v5, v6);
}

uint64_t sub_1005D8504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1005D2214(a1, v4, v5, v6);
}

uint64_t sub_1005D85B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D8628(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1005D203C(a1, v4, v5, v6);
}

uint64_t sub_1005D86DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002812C;

  return sub_10035803C(a1, v4);
}

uint64_t sub_1005D8794(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1005D14F8(a1, v4, v5, v6);
}

uint64_t type metadata accessor for CancelDownloadActionItem(uint64_t a1)
{
  result = qword_100AECDA8;
  if (!qword_100AECDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1005D8914@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v21);
  sub_100009864(a2, v20);
  sub_100009864(a4, v19);
  v10 = [objc_opt_self() defaultManager];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = &type metadata for MenuAssetDownloadManager;
    v18 = &off_100A13238;
    *&v15 = v10;
    *(&v15 + 1) = result;
    v16 = [objc_opt_self() defaultHelper];
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v12 = *(type metadata accessor for CancelDownloadActionItem(0) + 36);
    v13 = enum case for ContextActionType.cancelDownload(_:);
    v14 = sub_100797144();
    (*(*(v14 - 8) + 104))(a5 + v12, v13, v14);
    sub_1000077C0(v21, a5);
    sub_1000077C0(v20, a5 + 40);
    *(a5 + 80) = a3;
    sub_1000077C0(v19, a5 + 88);
    return sub_1000077C0(&v15, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005D8AB0()
{
  sub_10025FCD8(&v2);
  if (v3)
  {
    sub_1001FF7C8(&v2, &v4);
    sub_10000E3E8(&v4, v5);
    sub_1007976B4();
    if (sub_1007972D4() & 1) != 0 || (sub_10000E3E8(&v4, v5), sub_1007976B4(), (sub_1007972D4()) || (sub_10000E3E8(&v4, v5), (sub_1007975A4() & 1) == 0) || (sub_10000E3E8(&v4, v5), (sub_100797594()))
    {
      v0 = 0;
    }

    else
    {
      sub_10000E3E8(&v4, v5);
      v0 = sub_100797584();
    }

    sub_1000074E0(&v4);
  }

  else
  {
    sub_1001FF760(&v2);
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1005D8BE0()
{
  v1[13] = v0;
  sub_1007A26F4();
  v1[14] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[15] = v3;
  v1[16] = v2;

  return _swift_task_switch(sub_1005D8C78, v3, v2);
}

uint64_t sub_1005D8C78()
{
  sub_10000E3E8(*(v0 + 104), *(*(v0 + 104) + 24));
  sub_1007977A4();
  if (*(v0 + 56))
  {

    sub_1001FF70C(v0 + 16);
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 104);
    sub_1000077C0((v0 + 16), v0 + 64);
    sub_10000E3E8((v3 + 128), *(v3 + 152));
    sub_10000E3E8((v0 + 64), *(v0 + 88));
    v4 = sub_100797674();
    v6 = v5;
    *(v0 + 136) = v5;
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_1005D8E6C;

    return (sub_1002BA044)(v4, v6, &type metadata for MenuAssetDownloadManager, &off_100A13238);
  }
}

uint64_t sub_1005D8E6C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1004B2574, v3, v2);
}

uint64_t sub_1005D8FB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1005D8BE0();
}

void MainContentViewController.contentNavigationController.setter(void *a1)
{
  ObjectType = swift_getObjectType();
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v4 = &selRef_keyboardWillShow_;
  v5 = objc_msgSendSuper2(&v20, "contentNavigationController");
  if (v5)
  {
    v6 = v5;
    [v5 additionalSafeAreaInsets];
    [v6 setAdditionalSafeAreaInsets:?];
  }

  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "setContentNavigationController:", a1);
  v7 = *&v1[OBJC_IVAR___BKMainContentViewController_paletteContainerViewIfLoaded];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bringSubviewToFront:v8];

    if (a1)
    {
      v11 = [a1 navigationBar];
      v12 = [v11 _backdropViewLayerGroupName];

      if (v12)
      {
        sub_1007A2254();

        v13 = *&v8[OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView];
        v12 = sub_1007A2214();
        v4 = &selRef_keyboardWillShow_;

LABEL_10:
        [v13 _setGroupName:v12];

        v18.receiver = v1;
        v18.super_class = ObjectType;
        v14 = objc_msgSendSuper2(&v18, v4[120]);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1005D994C();
          v17 = [v16 isHidden];

          if ((v17 & 1) == 0)
          {
          }

          [v15 additionalSafeAreaInsets];
          [v15 setAdditionalSafeAreaInsets:?];
        }

        else
        {
          v15 = v8;
        }

LABEL_16:
        return;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *&v8[OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView];
    goto LABEL_10;
  }

  __break(1u);
}

double MainContentViewController.toolbarHeightPublisher.getter()
{
  swift_beginAccess();

  return result;
}

double MainContentViewController.toolbarHeightPublisher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKMainContentViewController_toolbarHeightPublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void (*MainContentViewController.contentNavigationController.modify(objc_super *a1))(uint64_t a1, char a2)
{
  a1[1].super_class = v1;
  ObjectType = swift_getObjectType();
  a1->receiver = v1;
  a1->super_class = ObjectType;
  a1[1].receiver = [(objc_super *)a1 contentNavigationController];
  return sub_1005D9474;
}

void sub_1005D9474(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    v3 = v2;
    MainContentViewController.contentNavigationController.setter(v2);
  }

  else
  {
    MainContentViewController.contentNavigationController.setter(*(a1 + 16));
  }
}

Swift::Void __swiftcall MainContentViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "viewDidLayoutSubviews");
  [*&v0[OBJC_IVAR___BKMainContentViewController_syncLayoutController] flush];
}

void *MainContentViewController.miniPlayerViewController.getter()
{
  v1 = OBJC_IVAR___BKMainContentViewController_miniPlayerViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1005D962C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BKMainContentViewController_miniPlayerViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_1005D9694(v5);
}

void sub_1005D9694(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___BKMainContentViewController_miniPlayerViewController;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    if (v5 == a1)
    {
      return;
    }

    if (!a1)
    {
      goto LABEL_9;
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 willMoveToParentViewController:0];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  [v6 removeFromSuperview];

  v8 = [a1 view];
  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  [v8 setInsetsLayoutMarginsFromSafeArea:1];

  [a1 removeFromParentViewController];
  v5 = *&v1[v4];
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_9:
  v10 = v5;
  [v1 addChildViewController:v10];
  v11 = [v10 view];
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  [v11 setInsetsLayoutMarginsFromSafeArea:0];

  v13 = sub_1005D994C();
  v14 = [v10 view];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = OBJC_IVAR____TtC5Books20PaletteContainerView_containerView;
  [*&v13[OBJC_IVAR____TtC5Books20PaletteContainerView_containerView] bounds];
  [v15 setFrame:?];
  [v15 setAutoresizingMask:18];
  [*&v13[v16] addSubview:v15];

  [v10 didMoveToParentViewController:v1];
LABEL_12:
  v17 = sub_1005D994C();
  [v17 setHidden:*&v1[v4] == 0];

  v22.receiver = v1;
  v22.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v22, "contentNavigationController");
  if (v18)
  {
    v19 = v18;
    v20 = sub_1005D994C();
    v21 = [v20 isHidden];

    if ((v21 & 1) == 0)
    {
    }

    [v19 additionalSafeAreaInsets];
    [v19 setAdditionalSafeAreaInsets:?];
  }
}

char *sub_1005D994C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___BKMainContentViewController_paletteContainerViewIfLoaded;
  v4 = *&v0[OBJC_IVAR___BKMainContentViewController_paletteContainerViewIfLoaded];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR___BKMainContentViewController_paletteContainerViewIfLoaded];
LABEL_19:
    v47 = v4;
    return v5;
  }

  v6 = ObjectType;
  if (qword_100AD1358 != -1)
  {
    swift_once();
  }

  v7 = qword_100B22F78;
  v8 = objc_allocWithZone(type metadata accessor for PaletteContainerView());
  v9 = sub_100282CD4(v7);
  v10 = *&v0[v3];
  *&v0[v3] = v9;
  v11 = v9;

  v5 = v11;
  [v5 setHidden:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v50[0] = v5[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration];
  v13 = *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration + 24];
  v51 = *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration + 8];
  v12 = v51;
  v52 = v13;
  v5[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration] = 0;
  sub_1002831A0(v50, v13, v12, v14, v15);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v17 = result;
  [result safeAreaInsets];
  v48 = v18;

  v19 = *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets];
  v20 = *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets + 16];
  *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets + 16] = v48;
  *&v19.f64[0] = vmovn_s32(vuzp1q_s32(vceqq_f64(v19, v19), vorrq_s8(vcgtq_f64(v20, v48), vcgeq_f64(v48, v20))));
  WORD2(v19.f64[0]) = vuzp1_s16(*&v19, vmovn_s64(vceqq_f64(v48, v20))).i16[2];
  if ((vminv_u16(*&v19.f64[0]) & 1) == 0)
  {
    [v5 setNeedsLayout];
  }

  v49.receiver = v1;
  v49.super_class = v6;
  v21 = objc_msgSendSuper2(&v49, "contentNavigationController", v48);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 navigationBar];

    v24 = [v23 _backdropViewLayerGroupName];
    if (v24)
    {
      sub_1007A2254();

      v25 = *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView];
      v24 = sub_1007A2214();

      goto LABEL_13;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView];
LABEL_13:
  [v25 _setGroupName:v24];

  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = result;
  [result addSubview:v5];

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100816E30;
  v28 = [v5 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = result;
  v30 = [result leadingAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  *(v27 + 32) = v31;
  v32 = [v5 trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = result;
  v34 = [result trailingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v27 + 40) = v35;
  v36 = [v5 topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = result;
  v38 = [result safeAreaLayoutGuide];

  v39 = [v38 bottomAnchor];
  v40 = [v36 constraintEqualToAnchor:v39 constant:-*&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_defaultHeight]];

  *(v27 + 48) = v40;
  v41 = [v5 bottomAnchor];

  result = [v1 view];
  if (result)
  {
    v42 = result;
    v43 = objc_opt_self();
    v44 = [v42 bottomAnchor];

    v45 = [v41 constraintEqualToAnchor:v44];
    *(v27 + 56) = v45;
    sub_10002267C();
    isa = sub_1007A25D4().super.isa;

    [v43 activateConstraints:isa];

    v4 = 0;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_1005D9ECC(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "contentNavigationController");

  return v1;
}

id _s5Books25MainContentViewControllerC017contentNavigationE0So014BSUINavigationE0CSgvg_0()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "contentNavigationController");

  return v1;
}

id MainContentViewController.__allocating_init(contentNavigationController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentNavigationController:a1];

  return v3;
}

char *MainContentViewController.init(contentNavigationController:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___BKMainContentViewController_toolbarHeightPublisher;
  v27 = 0;
  sub_1001F1160(&unk_100AD20C0, &qword_1008340E0);
  swift_allocObject();
  *&v1[v4] = sub_10079B924();
  v5 = &v1[OBJC_IVAR___BKMainContentViewController_keyboardObserver];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR___BKMainContentViewController_syncLayoutController;
  *&v1[v6] = [objc_allocWithZone(TUISyncLayoutController) init];
  *&v1[OBJC_IVAR___BKMainContentViewController_miniPlayerViewController] = 0;
  *&v1[OBJC_IVAR___BKMainContentViewController_paletteContainerViewIfLoaded] = 0;
  v26.receiver = v1;
  v26.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v26, "initWithContentNavigationController:", a1);
  v8 = *&v7[OBJC_IVAR___BKMainContentViewController_syncLayoutController];
  v9 = v7;
  [v8 setDelegate:v9];
  v10 = sub_1001F2F34(&off_100A0D578);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  _s5Books16KeyboardObserverV7options6updateACShyAC6OptionOG_yAG_AA0B9AvoidanceVtctcfC_0(v10, sub_1005DAED0, v11);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = &v9[OBJC_IVAR___BKMainContentViewController_keyboardObserver];
  v21 = *&v9[OBJC_IVAR___BKMainContentViewController_keyboardObserver];
  v22 = *&v9[OBJC_IVAR___BKMainContentViewController_keyboardObserver + 8];
  v23 = *&v9[OBJC_IVAR___BKMainContentViewController_keyboardObserver + 16];
  v24 = *&v9[OBJC_IVAR___BKMainContentViewController_keyboardObserver + 24];
  *v20 = v13;
  *(v20 + 1) = v15;
  *(v20 + 2) = v17;
  *(v20 + 3) = v19;
  sub_1005DAED8(v21, v22, v23, v24);

  return v9;
}

void sub_1005DA168(uint64_t a1, double *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1005DA1C4(a2);
  }
}

void sub_1005DA1C4(double *a1)
{
  v2 = v1;
  v4 = [v1 presentedViewController];
  if (v4)
  {

    goto LABEL_4;
  }

  KeyboardAvoidance.additionalSafeAreaInsets(for:)(v1, v72);
  if (v73)
  {
LABEL_4:
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = swift_allocObject();
    v6[2] = sub_1005DB024;
    v6[3] = v5;
    v6[4] = v2;
    v7 = v2;

    v8 = [v7 transitionCoordinator];
    if (v8)
    {
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1005DAF48;
      *(v10 + 24) = v6;
      v70 = sub_10025D774;
      v71 = v10;
      aBlock = _NSConcreteStackBlock;
      v67 = 1107296256;
      v68 = sub_100569BDC;
      v69 = &unk_100A25590;
      v11 = _Block_copy(&aBlock);

      v12 = [v9 animateAlongsideTransition:v11 completion:0];
      _Block_release(v11);
      swift_unknownObjectRelease();
      if (v12)
      {
LABEL_6:

LABEL_10:

        return;
      }
    }

    v13 = *(a1 + 9) << 16;
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = objc_opt_self();
      v15 = a1[8];
      v70 = sub_1005DAF48;
      v71 = v6;
      aBlock = _NSConcreteStackBlock;
      v67 = 1107296256;
      v16 = &unk_100A25540;
LABEL_9:
      v68 = sub_1003323D0;
      v69 = v16;
      v17 = _Block_copy(&aBlock);

      [v14 animateWithDuration:v13 | 4 delay:v17 options:0 animations:v15 completion:0.0];

      _Block_release(v17);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_26;
  }

  v64 = v72[1];
  v65 = v72[0];
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 window];

    if (v20)
    {
      v21 = a1[4];
      v22 = a1[5];
      v23 = a1[6];
      v24 = a1[7];
      v74.origin.x = v21;
      v74.origin.y = v22;
      v74.size.width = v23;
      v74.size.height = v24;
      if (CGRectGetHeight(v74) > 0.0)
      {
        v75.origin.x = v21;
        v75.origin.y = v22;
        v75.size.width = v23;
        v75.size.height = v24;
        MinY = CGRectGetMinY(v75);
        v26 = sub_1005D994C();
        v27 = sub_1005D994C();
        [v27 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        [v26 convertRect:v20 toCoordinateSpace:{v29, v31, v33, v35}];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v76.origin.x = v37;
        v76.origin.y = v39;
        v76.size.width = v41;
        v76.size.height = v43;
        if (CGRectGetMinY(v76) < MinY)
        {
          v44 = swift_allocObject();
          *(v44 + 16) = v2;
          *(v44 + 40) = v64;
          *(v44 + 24) = v65;
          v45 = swift_allocObject();
          v45[2] = sub_1005DAFB0;
          v45[3] = v44;
          v45[4] = v2;
          v46 = v2;

          v47 = [v46 transitionCoordinator];
          if (v47)
          {
            v48 = v47;
            v49 = swift_allocObject();
            *(v49 + 16) = sub_1005DB04C;
            *(v49 + 24) = v45;
            v70 = sub_100282C90;
            v71 = v49;
            aBlock = _NSConcreteStackBlock;
            v67 = 1107296256;
            v68 = sub_100569BDC;
            v69 = &unk_100A25720;
            v50 = _Block_copy(&aBlock);

            v51 = [v48 animateAlongsideTransition:v50 completion:0];
            _Block_release(v50);
            swift_unknownObjectRelease();
            if (v51)
            {

              goto LABEL_10;
            }
          }

          v60 = *(a1 + 9) << 16;
          if ((v60 & 0x8000000000000000) == 0)
          {
            v61 = objc_opt_self();
            v62 = a1[8];
            v70 = sub_1005DB04C;
            v71 = v45;
            aBlock = _NSConcreteStackBlock;
            v67 = 1107296256;
            v68 = sub_1003323D0;
            v69 = &unk_100A256D0;
            v63 = _Block_copy(&aBlock);

            [v61 animateWithDuration:v60 | 4 delay:v63 options:0 animations:v62 completion:0.0];

            _Block_release(v63);

            goto LABEL_10;
          }

          goto LABEL_27;
        }
      }
    }

    v52 = swift_allocObject();
    *(v52 + 16) = v2;
    v53 = swift_allocObject();
    v53[2] = sub_1005DAF5C;
    v53[3] = v52;
    v53[4] = v2;
    v54 = v2;

    v55 = [v54 transitionCoordinator];
    if (v55)
    {
      v56 = v55;
      v57 = swift_allocObject();
      *(v57 + 16) = sub_1005DB04C;
      *(v57 + 24) = v53;
      v70 = sub_100282C90;
      v71 = v57;
      aBlock = _NSConcreteStackBlock;
      v67 = 1107296256;
      v68 = sub_100569BDC;
      v69 = &unk_100A25658;
      v58 = _Block_copy(&aBlock);

      v59 = [v56 animateAlongsideTransition:v58 completion:0];
      _Block_release(v58);
      swift_unknownObjectRelease();
      if (v59)
      {
        goto LABEL_6;
      }
    }

    v13 = *(a1 + 9) << 16;
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = objc_opt_self();
      v15 = a1[8];
      v70 = sub_1005DB04C;
      v71 = v53;
      aBlock = _NSConcreteStackBlock;
      v67 = 1107296256;
      v16 = &unk_100A25608;
      goto LABEL_9;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall MainContentViewController.viewSafeAreaInsetsDidChange()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewSafeAreaInsetsDidChange");
  v1 = *&v0[OBJC_IVAR___BKMainContentViewController_paletteContainerViewIfLoaded];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 safeAreaInsets];
      v8 = v5;

      v6 = *&v2[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets];
      v7 = *&v2[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets + 16];
      *&v2[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets + 16] = v8;
      *&v6.f64[0] = vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v6), vorrq_s8(vcgtq_f64(v7, v8), vcgeq_f64(v8, v7))));
      WORD2(v6.f64[0]) = vuzp1_s16(*&v6, vmovn_s64(vceqq_f64(v8, v7))).i16[2];
      if ((vminv_u16(*&v6.f64[0]) & 1) == 0)
      {
        [v2 setNeedsLayout];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1005DAB30(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  v4 = [a3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 setNeedsLayout];

  v6 = [a3 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 layoutIfNeeded];
}

void MainContentViewController.dockMiniPlayer(_:)(void *a1)
{
  v3 = OBJC_IVAR___BKMainContentViewController_miniPlayerViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1005D9694(v4);
}

void sub_1005DACC8(char *a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR___BKMainContentViewController_miniPlayerViewController;
  swift_beginAccess();
  v6 = *&a1[v5];
  *&a1[v5] = a3;
  v7 = a3;
  v8 = a1;
  sub_1005D9694(v6);
}

Swift::Void __swiftcall MainContentViewController.undockMiniPlayer()()
{
  v1 = OBJC_IVAR___BKMainContentViewController_miniPlayerViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
  sub_1005D9694(v2);
}

void MainContentViewController.syncLayoutControllerNeedsFlushing(_:)()
{
  v1 = [v0 view];
  [v1 setNeedsLayout];
}

double sub_1005DAED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

id sub_1005DAF60()
{
  v1 = *(v0 + 16);
  [v1 additionalSafeAreaInsets];

  return [v1 setAdditionalSafeAreaInsets:?];
}

id sub_1005DAFB0()
{
  v1 = *(v0 + 16);
  [v1 additionalSafeAreaInsets];

  return [v1 setAdditionalSafeAreaInsets:?];
}

uint64_t sub_1005DB050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v59 = a3;
  v5 = sub_100798E34();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100799274();
  __chkstk_darwin(v7 - 8);
  v54 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100798ED4();
  v10 = *(v9 - 8);
  v60 = v9;
  v61 = v10;
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1001F1160(&qword_100AE2150, &qword_1008236F8);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v51 = v44 - v15;
  v16 = sub_1007974F4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v48 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v47 = v44 - v20;
  __chkstk_darwin(v21);
  v49 = v44 - v22;
  __chkstk_darwin(v23);
  v25 = v44 - v24;
  __chkstk_darwin(v26);
  v28 = v44 - v27;
  __chkstk_darwin(v29);
  v31 = v44 - v30;
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  sub_1007974B4();
  sub_1005DC1D8(&qword_100ADA290, &type metadata accessor for ContentInfoBuildOptions, &protocol conformance descriptor for ContentInfoBuildOptions);
  v62 = a2;
  LOBYTE(a2) = sub_1007A3534();
  v32 = *(v17 + 8);
  v32(v31, v16);
  if (a2)
  {
    v33 = [v63 seriesContainer];
    if (v33)
    {
      v44[0] = v28;
      v45 = v33;
      sub_1007974B4();
      v34 = *(v17 + 16);
      v44[1] = v25;
      v46 = v12;
      v35 = v62;
      v34(v25, v62, v16);
      v34(v47, v35, v16);
      v36 = v44[0];
      v34(v48, v44[0], v16);
      v37 = v49;
      sub_1007A3554();
      sub_1007A3544();
      v32(v37, v16);
      v32(v36, v16);
      v38 = v51;
      v39 = v45;
      sub_10040499C(v31, v51);
      v32(v31, v16);
      v40 = v52;
      v41 = v53;
      (*(v52 + 16))(v50, v38, v53);
      v42 = v46;
      (*(v61 + 104))(v46, enum case for ContentKind.regularBook(_:), v60);
      *(&v65 + 1) = sub_100798E14();
      v66 = sub_1005DC1D8(&qword_100AECE50, &type metadata accessor for LibraryBookSeriesInfo, &protocol conformance descriptor for LibraryBookSeriesInfo);
      sub_1002256EC(&v64);
      v12 = v42;
      sub_100798E04();

      (*(v40 + 8))(v38, v41);
      sub_100007840(&v67, &qword_100AECE48, qword_100834150);
      v67 = v64;
      v68 = v65;
      v69 = v66;
    }
  }

  sub_100406DF0();
  sub_1005DBDA0(&v67, &v64);
  (*(v61 + 104))(v12, enum case for ContentKind.regularBook(_:), v60);
  (*(v56 + 16))(v55, v58, v57);
  sub_100798E24();
  return sub_100007840(&v67, &qword_100AECE48, qword_100834150);
}

uint64_t sub_1005DB720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = sub_100799274();
  __chkstk_darwin(v4 - 8);
  v54 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AE2148, &qword_1008236F0);
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = v46 - v9;
  v10 = sub_1007974F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v50 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = v46 - v14;
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  __chkstk_darwin(v18);
  v20 = v46 - v19;
  __chkstk_darwin(v21);
  v23 = v46 - v22;
  __chkstk_darwin(v24);
  v26 = v46 - v25;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_1007974B4();
  v56 = sub_1005DC1D8(&qword_100ADA290, &type metadata accessor for ContentInfoBuildOptions, &protocol conformance descriptor for ContentInfoBuildOptions);
  v57 = a1;
  LOBYTE(a1) = sub_1007A3534();
  v27 = *(v11 + 8);
  v27(v26, v10);
  if (a1)
  {
    v28 = [v58 seriesContainer];
    if (v28)
    {
      v47 = v28;
      sub_1007974B4();
      v29 = *(v11 + 16);
      v46[1] = v20;
      v48 = v6;
      v30 = v57;
      v29(v20, v57, v10);
      v29(v49, v30, v10);
      v29(v50, v23, v10);
      sub_1007A3554();
      sub_1007A3544();
      v27(v17, v10);
      v27(v23, v10);
      v31 = v52;
      v32 = v47;
      sub_100405380(v26, v52);
      v27(v26, v10);
      v33 = v53;
      v34 = v48;
      (*(v53 + 16))(v51, v31, v48);
      *(&v60 + 1) = sub_1007992A4();
      v61 = sub_1005DC1D8(&qword_100AECE58, &type metadata accessor for LibraryAudiobookSeriesInfo, &protocol conformance descriptor for LibraryAudiobookSeriesInfo);
      sub_1002256EC(&v59);
      sub_100799294();

      (*(v33 + 8))(v31, v34);
      sub_100007840(&v62, &qword_100AECE48, qword_100834150);
      v62 = v59;
      v63 = v60;
      v64 = v61;
    }
  }

  sub_1007974D4();
  v35 = v57;
  v36 = sub_1007A3534();
  v27(v26, v10);
  v37 = v35;
  if (v36)
  {
    v38 = [v58 supplementalContentAssets];
    if (v38)
    {
      v39 = v38;
      sub_1002BACBC();
      sub_1005DC1D8(&qword_100AD9FD0, sub_1002BACBC, &protocol conformance descriptor for NSObject);
      v40 = sub_1007A2834();

      __chkstk_darwin(v41);
      v46[-2] = v37;
      sub_100400EB4(sub_1005DC1BC, &v46[-4], v40);
    }
  }

  v42 = v58;
  sub_100406DF0();
  sub_1005DBDA0(&v62, &v59);
  v43 = [v42 hasRACSupport];
  if (v43)
  {
    v44 = v43;
    [v43 BOOLValue];
  }

  sub_1007991F4();
  return sub_100007840(&v62, &qword_100AECE48, qword_100834150);
}

uint64_t sub_1005DBDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AECE48, qword_100834150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005DBE10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE2278, &qword_1008237E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-1] - v5;
  BKLibraryAsset.contentInfo(options:)(a1, v13);
  if (!v13[3])
  {
    sub_100007840(v13, &unk_100AF1C40, &unk_100818DB0);
    v7 = sub_100798F64();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
LABEL_5:
    sub_100007840(v6, &qword_100AE2278, &qword_1008237E8);
    sub_100798F64();
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }

  sub_1001F1160(&qword_100ADA250, &unk_100823780);
  v7 = sub_100798F64();
  v8 = swift_dynamicCast();
  v9 = *(v7 - 8);
  v10 = *(v9 + 56);
  v10(v6, v8 ^ 1u, 1, v7);
  if ((*(v9 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_5;
  }

  (*(v9 + 32))(a2, v6, v7);
  return (v10)(a2, 0, 1, v7);
}

uint64_t sub_1005DC098()
{
  v1 = [v0 seriesIsOrdered];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 BOOLValue];
  }

  else
  {
    v4 = [v0 seriesBooks];
    if (v4 && (v5 = v4, sub_1002BACBC(), sub_1005DC1D8(&qword_100AD9FD0, sub_1002BACBC, &protocol conformance descriptor for NSObject), v6 = sub_1007A2834(), v5, v7 = sub_100401CAC(v6), , v7))
    {
      v8 = [v7 seriesType];

      if (v8 <= 3)
      {
        return 0x10202u >> (8 * v8);
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 2;
    }
  }

  return v3;
}

uint64_t sub_1005DC1D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005DC224()
{
  result = qword_100AECE60;
  if (!qword_100AECE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECE60);
  }

  return result;
}

unint64_t sub_1005DC27C()
{
  result = qword_100AECE68;
  if (!qword_100AECE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECE68);
  }

  return result;
}

uint64_t sub_1005DC308()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23690);
  v21 = sub_100008B98(v3, qword_100B23690);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1005DC6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  return _swift_task_switch(sub_1005DC6D0, 0, 0);
}

uint64_t sub_1005DC6D0()
{
  sub_100795A94();
  *(v0 + 184) = *(v0 + 104);
  *(v0 + 200) = *(v0 + 120);
  *(v0 + 216) = *(v0 + 136);
  sub_100795DF4();
  sub_1007A26F4();
  *(v0 + 224) = sub_1007A26E4();
  v2 = sub_1007A2694();
  *(v0 + 232) = v2;
  *(v0 + 240) = v1;

  return _swift_task_switch(sub_1005DC794, v2, v1);
}

uint64_t sub_1005DC794(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_100795D54();
  v4 = v1[18];
  v5 = v1[19];
  v1[31] = v5;
  v6 = swift_task_alloc();
  v1[32] = v6;
  *v6 = v1;
  v6[1] = sub_1005DC854;
  v7 = v1[25];

  return sub_1004F8A20(v2, v3, v4, v5, v7);
}

uint64_t sub_1005DC854()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1005DCA7C;
  }

  else
  {

    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1005DC970;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005DC970()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);

  sub_1004FA184(v0 + 16);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1005DCA18, 0, 0);
}

uint64_t sub_1005DCA18(uint64_t a1)
{
  sub_100795D24();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1005DCA7C()
{
  v1 = *(v0 + 200);

  swift_unknownObjectRelease();

  sub_1004FA184(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005DCB30@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1908 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23690);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1005DCBD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F1160(&qword_100AECEA0, &qword_100834368);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1001F1160(&qword_100AECEA8, &qword_100834370);
  __chkstk_darwin(v3);
  sub_1007961D4();
  v5._countAndFlagsBits = 0x2079616C50;
  v5._object = 0xE500000000000000;
  sub_1007961C4(v5);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AECEB0, &unk_1008343A0);
  sub_1007961B4();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_1007961C4(v6);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_1005DCD78(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_1005DC6AC(a1, v5, v4);
}

uint64_t sub_1005DCE24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005DCF9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1005DCE50()
{
  result = qword_100AECE70;
  if (!qword_100AECE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECE70);
  }

  return result;
}

uint64_t sub_1005DCEA4(uint64_t a1)
{
  v2 = sub_1005DCEE0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1005DCEE0()
{
  result = qword_100AECE78;
  if (!qword_100AECE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECE78);
  }

  return result;
}

unint64_t sub_1005DCF38()
{
  result = qword_100AECE80;
  if (!qword_100AECE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECE80);
  }

  return result;
}

uint64_t sub_1005DCF9C()
{
  v56 = sub_100796274();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = v45 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v1 - 8);
  v53 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v52 = v45 - v4;
  v5 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v5 - 8);
  v68 = v45 - v6;
  v67 = sub_1007967F4();
  v70 = *(v67 - 8);
  __chkstk_darwin(v67);
  v8 = (v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100796CF4();
  v69 = *(v9 - 8);
  v10 = v69;
  __chkstk_darwin(v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v45 - v14;
  v16 = sub_1007A21D4();
  v57 = v16;
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v45 - v21;
  v48 = sub_100796814();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v50 = v45 - v25;
  v51 = sub_1001F1160(&qword_100AECE98, &unk_100834350);
  v45[1] = "sDeferringSystemGestures";
  sub_1007A2154();
  sub_100796C94();
  v26 = *(v17 + 16);
  v62 = v17 + 16;
  v66 = v26;
  v26(v19, v22, v16);
  v27 = *(v10 + 16);
  v61 = v10 + 16;
  v65 = v27;
  v45[0] = v12;
  v27(v12, v15, v9);
  v64 = type metadata accessor for BundleFinder();
  v28 = v8;
  *v8 = v64;
  v63 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v29 = *(v70 + 104);
  v70 += 104;
  v58 = v28;
  v30 = v67;
  v29(v28);
  v46 = v29;
  sub_100796834();
  v31 = *(v69 + 8);
  v69 += 8;
  v60 = v31;
  v31(v15, v9);
  v59 = *(v17 + 8);
  v32 = v57;
  v59(v22, v57);
  sub_1007A2154();
  sub_100796C94();
  v66(v19, v22, v32);
  v33 = v45[0];
  v34 = v9;
  v65(v45[0], v15, v9);
  v35 = v58;
  *v58 = v64;
  (v29)(v35, v63, v30);
  v36 = v68;
  v37 = v33;
  sub_100796834();
  v60(v15, v34);
  v38 = v57;
  v59(v22, v57);
  (*(v47 + 56))(v36, 0, 1, v48);
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  sub_1007A2154();
  sub_100796C94();
  v66(v19, v22, v38);
  v65(v37, v15, v34);
  v39 = v58;
  *v58 = v64;
  (v46)(v39, v63, v67);
  sub_100796834();
  v60(v15, v34);
  v59(v22, v38);
  v40 = v52;
  sub_100795CF4();
  v41 = sub_100795CE4();
  v42 = *(*(v41 - 8) + 56);
  v42(v40, 0, 1, v41);
  v42(v53, 1, 1, v41);
  (*(v55 + 104))(v54, enum case for InputConnectionBehavior.default(_:), v56);
  sub_100282BC4();
  v43 = sub_100795E74();
  sub_1001F1160(&qword_100AD57D0, &qword_100823520);
  sub_100795B74();
  v71 = 0u;
  v72 = 0u;
  *&v73 = 0;
  sub_100795B64();
  sub_100795AA4();
  return v43;
}

uint64_t sub_1005DDA98(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1007A2254();
  v9 = v8;
  objc_allocWithZone(sub_1001F1160(&qword_100AD4B38, &unk_10080ED50));
  v10 = a2;
  v11 = a3;
  v12 = swift_task_alloc();
  v4[5] = v12;
  *v12 = v4;
  v12[1] = sub_1005DDBA0;

  return sub_1005DE8A4(v7, v9, a2, v11);
}

uint64_t sub_1005DDBA0(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

double sub_1005DDD98()
{
  v1 = swift_isaMask & *v0;
  (*(*(*(v1 + qword_100AECEE0) - 8) + 8))(&v0[*(v1 + qword_100AECEE0 + 64)]);
  (*(*(*(v1 + qword_100AECEE0 + 16) - 8) + 8))(&v0[*((swift_isaMask & *v0) + qword_100AECEE0 + 72)]);
  (*(*(*(v1 + qword_100AECEE0 + 8) - 8) + 8))(&v0[*((swift_isaMask & *v0) + qword_100AECEE0 + 80)]);
  (*(*(*(v1 + qword_100AECEE0 + 24) - 8) + 8))(&v0[*((swift_isaMask & *v0) + qword_100AECEE0 + 88)]);

  return result;
}

double sub_1005DDFC4(char *a1)
{
  v2 = swift_isaMask & *a1;
  (*(*(*(v2 + qword_100AECEE0) - 8) + 8))(&a1[*(v2 + qword_100AECEE0 + 64)]);
  (*(*(*(v2 + qword_100AECEE0 + 16) - 8) + 8))(&a1[*((swift_isaMask & *a1) + qword_100AECEE0 + 72)]);
  (*(*(*(v2 + qword_100AECEE0 + 8) - 8) + 8))(&a1[*((swift_isaMask & *a1) + qword_100AECEE0 + 80)]);
  (*(*(*(v2 + qword_100AECEE0 + 24) - 8) + 8))(&a1[*((swift_isaMask & *a1) + qword_100AECEE0 + 88)]);

  return result;
}

uint64_t sub_1005DE258(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1005DE3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v7 = type metadata accessor for ReportIssueDataManager();
  v5[5] = v7;
  v5[6] = &off_100A2FB30;
  v5[2] = a1;
  type metadata accessor for ReportIssueInteractor();
  v5[20] = swift_allocObject();
  sub_10022569C((v5 + 2), v7);
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  v5[21] = v9;
  (*(v8 + 16))();
  v10 = *v9;
  v5[10] = v7;
  v5[11] = &off_100A2FB30;
  v5[7] = v10;

  return _swift_task_switch(sub_1005DE524, 0, 0);
}

uint64_t sub_1005DE524(double a1)
{
  swift_defaultActor_initialize();
  if (qword_100AD1BA8 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v5 = *(v1 + 136);
  v4 = *(v1 + 144);
  v6 = *(v1 + 128);
  v7 = qword_100B23B18;
  v8 = qword_100B23B20;
  v9 = byte_100B23B28;
  *(v1 + 96) = qword_100B23B10;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 120) = v9;
  sub_1001F1160(&qword_100AECF98, &qword_1008344B0);
  swift_allocObject();

  v3[14] = sub_10079B924();
  sub_1001F1160(&qword_100ADB0A8, &unk_100819060);
  swift_allocObject();
  v3[15] = sub_10079B8D4();
  v3[16] = 0;
  sub_100009864(v1 + 56, (v3 + 17));
  v3[22] = v6;
  v3[23] = v5;
  v3[24] = v4;
  v3[25] = v2;
  v10 = v4;
  v11 = v2;
  v12 = swift_task_alloc();
  *(v1 + 176) = v12;
  *v12 = v1;
  v12[1] = sub_1005DE6CC;

  return sub_10073E3BC();
}

uint64_t sub_1005DE6CC()
{

  sub_1005DF6C0(&qword_100AECFB0, type metadata accessor for ReportIssueInteractor, &unk_100842D74);
  swift_getObjectType();
  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1005DE82C, v1, v0);
}

uint64_t sub_1005DE82C()
{
  sub_1000074E0(v0 + 7);
  sub_1000074E0(v0 + 2);

  v1 = v0[1];
  v2 = v0[20];

  return v1(v2);
}

uint64_t sub_1005DE8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v5[36] = type metadata accessor for ReportIssueView(0);
  v5[37] = swift_task_alloc();
  sub_1007A26F4();
  v5[38] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[39] = v7;
  v5[40] = v6;

  return _swift_task_switch(sub_1005DE974, v7, v6);
}

uint64_t sub_1005DE974()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v26 = *(v0 + 272);
  v4 = *(v0 + 264);
  v5 = *((swift_isaMask & *v3) + qword_100AECEE0 + 96);
  *(v0 + 328) = v5;
  *(v3 + v5) = &_swiftEmptySetSingleton;
  type metadata accessor for ReportIssuePresenter();
  swift_allocObject();
  v6 = sub_1002F9D00();
  v7 = *((swift_isaMask & *v3) + qword_100AECEE0 + 72);
  *(v0 + 336) = v7;
  *(v3 + v7) = v6;
  *(v1 + v2[7]) = swift_getKeyPath();
  sub_1001F1160(&qword_100AD61C8, &qword_1008127F0);
  swift_storeEnumTagMultiPayload();
  *(v0 + 344) = sub_1001F1160(&qword_100ADB0B0, &qword_100819070);
  swift_allocObject();

  *v1 = sub_10079B8D4();
  type metadata accessor for ReportIssueViewModel(0);
  sub_1005DF6C0(&qword_100AECF70, type metadata accessor for ReportIssueViewModel, &protocol conformance descriptor for ReportIssueViewModel);
  v1[1] = sub_10079C024();
  v1[2] = v8;
  v9 = v2[6];
  *(v1 + v9) = swift_getKeyPath();
  sub_1001F1160(&qword_100AF6570, &qword_1008344A0);
  swift_storeEnumTagMultiPayload();
  v10 = v1 + v2[8];
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  sub_10079DFE4();
  v11 = *(v0 + 32);
  *v10 = *(v0 + 16);
  *(v10 + 2) = v11;
  v12 = v1 + v2[9];
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xE000000000000000;
  sub_10079DFE4();
  v13 = *(v0 + 56);
  *v12 = *(v0 + 40);
  *(v12 + 2) = v13;
  v14 = *((swift_isaMask & *v3) + qword_100AECEE0 + 64);
  *(v0 + 352) = v14;
  sub_1005DF5F8(v1, v3 + v14);
  v15 = objc_allocWithZone(BSUIReportIssueNetworkManager);
  v16 = v4;
  v17 = v26;
  v18 = [v15 init];
  type metadata accessor for ReportIssueDataManager();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = swift_task_alloc();
  *(v0 + 360) = v20;
  *v20 = v0;
  v20[1] = sub_1005DED00;
  v21 = *(v0 + 264);
  v22 = *(v0 + 272);
  v23 = *(v0 + 248);
  v24 = *(v0 + 256);

  return sub_1005DE3E4(v19, v23, v24, v21, v22);
}

uint64_t sub_1005DED00(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  *(*v1 + 368) = a1;

  v5 = *(v2 + 320);
  v6 = *(v2 + 312);

  return _swift_task_switch(sub_1005DEE60, v6, v5);
}

uint64_t sub_1005DEE60()
{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[35];
  v8 = *((swift_isaMask & *v4) + qword_100AECEE0 + 80);
  v0[47] = v8;
  *(v4 + v8) = v1;
  type metadata accessor for ReportIssueRouter();
  swift_allocObject();
  *(v4 + *((swift_isaMask & *v4) + qword_100AECEE0 + 88)) = sub_10020180C();
  v0[27] = *(v4 + v2);
  sub_100005920(&qword_100ADB0C0, &qword_100ADB0B0, &qword_100819070, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100005920(&qword_100AECF78, &qword_100ADB0B0, &qword_100819070, &protocol conformance descriptor for PassthroughSubject<A, B>);

  sub_10079BAE4();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v0[28] = *(*(v4 + v3) + 32);

  sub_1001F1160(&qword_100AD4D80, &unk_10080EFE0);
  sub_100005920(&qword_100AD4D88, &qword_100AD4D80, &unk_10080EFE0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100005920(&qword_100AECF80, &qword_100AD4D80, &unk_10080EFE0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10079BAE4();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v5 = *(*(v4 + v3) + 24);
  v0[48] = v5;
  v0[29] = v5;
  v6 = *(v4 + v8);
  v0[49] = v6;

  return _swift_task_switch(sub_1005DF198, v6, 0);
}

uint64_t sub_1005DF198()
{
  v0[50] = *(v0[49] + 120);

  v1 = v0[39];
  v2 = v0[40];

  return _swift_task_switch(sub_1005DF20C, v1, v2);
}

uint64_t sub_1005DF20C()
{
  v1 = v0[47];
  v2 = v0[35];
  sub_1001F1160(&qword_100ADB0A8, &unk_100819060);
  sub_100005920(&qword_100AECF88, &qword_100ADB0A8, &unk_100819060, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100005920(&qword_100AECF90, &qword_100ADB0A8, &unk_100819060, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10079BAE4();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v3 = *(v2 + v1);
  v0[51] = v3;

  return _swift_task_switch(sub_1005DF380, v3, 0);
}

uint64_t sub_1005DF380()
{
  v0[52] = *(v0[51] + 112);

  v1 = v0[39];
  v2 = v0[40];

  return _swift_task_switch(sub_1005DF3F4, v1, v2);
}

uint64_t sub_1005DF3F4()
{
  v1 = *(v0 + 416);
  v6 = *(v0 + 296);
  v7 = *(v0 + 352);
  v2 = *(v0 + 280);

  *(v0 + 240) = v1;

  sub_1001F1160(&qword_100AECF98, &qword_1008344B0);
  sub_1001F1160(&qword_100ADB0B8, &qword_100819078);
  sub_100005920(&qword_100AECFA0, &qword_100AECF98, &qword_1008344B0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_100005920(&qword_100AECFA8, &qword_100ADB0B8, &qword_100819078, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10079BAE4();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  *(v0 + 168) = 0;
  *(v0 + 160) = 0;
  *(v0 + 176) = 2;

  sub_10079B8C4();

  sub_1005DF65C(v2 + v7, v6);
  v3 = sub_10079CBC4();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1005DF5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportIssueView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005DF65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportIssueView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005DF6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005DF708()
{
  *(v0 + *((swift_isaMask & *v0) + qword_100AECEE0 + 96)) = &_swiftEmptySetSingleton;
  sub_1007A38A4();
  __break(1u);
}

uint64_t sub_1005DF7B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002812C;

  return sub_1005DDA98(v2, v3, v4, v5);
}

uint64_t sub_1005DF884(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s5Books7SidebarO9DataModelV12StandardItemV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t static Sidebar.DataModel.Account.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a5 && (a1 == a4 && a2 == a5 || (sub_1007A3AB4() & 1) != 0))
    {
      goto LABEL_6;
    }
  }

  else if (!a5)
  {
LABEL_6:
    sub_100009818();
    return sub_1007A3184() & 1;
  }

  return 0;
}

uint64_t sub_1005DF95C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1007A3AB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v4)
  {
LABEL_8:
    sub_100009818();
    return sub_1007A3184() & 1;
  }

  return 0;
}

uint64_t sub_1005DFA04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s5Books7SidebarO9DataModelV14SelectionStateV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t sub_1005DFA50()
{

  sub_1000074E0((v0 + 40));

  return swift_deallocClassInstance();
}

BOOL _s5Books7SidebarO9DataModelV12AccountStateO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    if (!a8)
    {
      return (a5 ^ a1 ^ 1) & 1;
    }

    return 0;
  }

  if (a4 == 1)
  {
    if (a8 == 1)
    {
      if (a2)
      {
        if (!a6 || (a1 != a5 || a2 != a6) && (sub_1007A3AB4() & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if (a6)
      {
        goto LABEL_18;
      }

      sub_100009818();
      if (sub_1007A3184())
      {
        v9 = 1;
        return v9 & 1;
      }

LABEL_18:
      v9 = 0;
      return v9 & 1;
    }

    return 0;
  }

  return a8 == 2 && !(a6 | a5 | a7);
}

uint64_t _s5Books7SidebarO9DataModelV12StandardItemV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1007A3AB4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v5 && (sub_1007A3AB4() & 1) == 0)
  {
    return 0;
  }

  if (a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48))
  {
    return 1;
  }

  return sub_1007A3AB4();
}

uint64_t _s5Books7SidebarO9DataModelV14SelectionStateV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_1007A3AB4()) && *(a1 + 16) == *(a2 + 16) && a1[3] == *(a2 + 24))
  {
    v5 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1005DFCDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005DFD00(uint64_t a1)
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

uint64_t sub_1005DFD1C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005DFD30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1005DFD8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1005DFE1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1005DFE64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005DFEF0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1005DFF38(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1005DFF80(uint64_t result, unsigned int a2)
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

uint64_t sub_1005DFFAC(uint64_t a1, int a2)
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

uint64_t sub_1005DFFF4(uint64_t result, int a2, int a3)
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

uint64_t sub_1005E0078(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 41))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 40);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1005E00C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_1005E013C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005E0284();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1005E01A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005E0284();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1005E0204(uint64_t a1)
{
  sub_1005E0284();
  sub_10079CC64();
  __break(1u);
}

unint64_t sub_1005E0230()
{
  result = qword_100AED098;
  if (!qword_100AED098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED098);
  }

  return result;
}

unint64_t sub_1005E0284()
{
  result = qword_100AED0A0;
  if (!qword_100AED0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED0A0);
  }

  return result;
}

id sub_1005E03C0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 63) = 0;
  *&v4[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField] = 0;
  *&v4[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingLeadingAXConstraint] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for SidebarLabelListCell();
  v10 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_10000A7C4(0, &qword_100AE15B0, UITraitCollection_ptr);
  v11 = v10;
  sub_1007A2E04();
  sub_1007A3104();

  swift_unknownObjectRelease();

  return v11;
}

id sub_1005E050C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 63) = 0;
  *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField] = 0;
  *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingLeadingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingLeadingAXConstraint] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SidebarLabelListCell();
  v4 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);
  if (v4)
  {
    sub_10000A7C4(0, &qword_100AE15B0, UITraitCollection_ptr);
    v5 = v4;
    sub_1007A2E04();
    sub_1007A3104();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1005E064C()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100AED100, &qword_1008420B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  isa = sub_10079B234().super.super.isa;
  v9 = type metadata accessor for SidebarLabelListCell();
  v23.receiver = v1;
  v23.super_class = v9;
  objc_msgSendSuper2(&v23, "_bridgedUpdateConfigurationUsingState:", isa);

  v10 = sub_10079B224();
  sub_1005E13EC(v10);

  sub_1007A2E94();
  if (*(&v21 + 1))
  {
    sub_1001F1160(&qword_100AE91E8, &qword_10082F260);
    v11 = sub_10079B3D4();
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v7, v12 ^ 1u, 1, v11);
  }

  else
  {
    sub_100007840(&v20, &qword_100AED110, &qword_10082F740);
    v11 = sub_10079B3D4();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  v13 = sub_10079B224();
  v14 = [v13 preferredContentSizeCategory];

  sub_1007A2EE4();
  sub_10079B3D4();
  v15 = *(v11 - 8);
  v16 = *(v15 + 48);
  if (!v16(v7, 1, v11))
  {
    v17 = sub_10079B304();
    sub_10079B2A4();
    v17(&v20, 0);
  }

  sub_1000077D8(v7, v4, &unk_100AED100, &qword_1008420B0);
  if (v16(v4, 1, v11) == 1)
  {
    sub_100007840(v4, &unk_100AED100, &qword_1008420B0);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  else
  {
    *(&v21 + 1) = v11;
    v22 = &protocol witness table for UIListContentConfiguration;
    v18 = sub_1002256EC(&v20);
    (*(v15 + 32))(v18, v4, v11);
  }

  sub_1007A2EA4();
  return sub_100007840(v7, &unk_100AED100, &qword_1008420B0);
}

uint64_t sub_1005E0A84(char a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    if ([v2 isEditing] & 1) == 0 && (a1)
    {
      sub_1005E0E50(1);
      sub_1005E16F8(1);
    }

    result = [v2 isEditing];
    if (result & 1) != 0 || (a1)
    {
      sub_1005E0E50(0);
      v6 = OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField;
      v7 = *&v2[OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField];
      if (v7)
      {
        [v7 becomeFirstResponder];
      }

      sub_1005E0E50(0);
      result = *&v2[v6];
      if (a2)
      {
        if (result)
        {
          [result setText:0];
        }

        sub_1005E0E50(0);
        result = *&v2[v6];
        if (!result)
        {
          return result;
        }

        v8 = "setPlaceholder:";
        v9 = 0;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v8 = "selectAll:";
        v9 = v2;
      }

      return [result v8];
    }
  }

  return result;
}

void sub_1005E0B9C(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SidebarLabelListCell();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v2 = &v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item];
  v3 = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 48];
  v8[2] = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 32];
  v9[0] = v3;
  *(v9 + 15) = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 63];
  v4 = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 16];
  v8[0] = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item];
  v8[1] = v4;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 63) = 0;
  sub_100007840(v8, &qword_100AE8CD8, &unk_100834B90);
  *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingDelegate + 8] = 0;
  swift_unknownObjectWeakAssign();
  [v1 setEditing:0];
  sub_1005E0E50(0);
  v5 = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField];
  if (v5)
  {
    v6 = v5;
    [v6 setHidden:1];
    [v6 setUserInteractionEnabled:0];
    [v6 setText:0];
    [v6 setPlaceholder:0];
  }
}

void sub_1005E0D88(void *a1)
{
  if (a1)
  {
    v2 = [a1 preferredContentSizeCategory];
    v3 = sub_1007A2EE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = sub_1007A2EE4() & 1;
  if ((v3 & 1) != v4)
  {

    sub_1005E13EC(0);
  }
}

void sub_1005E0E50(char a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v3 = OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField;
    if (!*&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField] && (([v1 isEditing] & 1) != 0 || (a1 & 1) != 0))
    {
      v4 = [v1 contentView];
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5 && (v6 = v5, (v7 = [v5 textLayoutGuide]) != 0))
      {
        v40 = v7;
        v8 = [v6 imageLayoutGuide];
        if (v8)
        {
          v9 = v8;
          v10 = [objc_allocWithZone(UITextField) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
          [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v6 addSubview:v10];
          v11 = [v10 leadingAnchor];
          v12 = [v40 leadingAnchor];
          v13 = [v11 constraintEqualToAnchor:v12];

          v14 = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingLeadingConstraint];
          *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingLeadingConstraint] = v13;

          v15 = [v10 leadingAnchor];
          v39 = v9;
          v16 = [v9 trailingAnchor];
          v17 = [v15 constraintEqualToAnchor:v16];

          v18 = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingLeadingAXConstraint];
          *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingLeadingAXConstraint] = v17;

          sub_1005E13EC(0);
          v19 = objc_opt_self();
          sub_1001F1160(&unk_100AD8160, &unk_100813160);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_100811370;
          v21 = [v10 trailingAnchor];
          v22 = [v1 contentView];
          v23 = [v22 layoutMarginsGuide];

          v24 = [v23 trailingAnchor];
          v25 = [v21 constraintEqualToAnchor:v24];

          *(v20 + 32) = v25;
          v26 = [v10 topAnchor];
          v27 = [v40 topAnchor];
          v28 = [v26 constraintEqualToAnchor:v27];

          *(v20 + 40) = v28;
          v29 = [v10 bottomAnchor];

          v30 = [v40 bottomAnchor];
          v31 = [v29 constraintEqualToAnchor:v30];

          *(v20 + 48) = v31;
          sub_10000A7C4(0, &qword_100AE9010, NSLayoutConstraint_ptr);
          isa = sub_1007A25D4().super.isa;

          [v19 activateConstraints:isa];

          [v10 setEnablesReturnKeyAutomatically:1];
          [v10 setKeyboardType:0];
          [v10 setReturnKeyType:9];
          [v10 setDelegate:v1];
          [v10 setAdjustsFontForContentSizeCategory:1];
          v33 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
          [v10 setFont:v33];

          v34 = *&v1[v3];
          *&v1[v3] = v10;
          v35 = v10;

          sub_1005E0E50(0);
          v36 = *&v1[v3];
          if (v36)
          {
            v37 = v36;
            [v37 setHidden:1];
            [v37 setUserInteractionEnabled:0];
            [v37 setText:0];
            [v37 setPlaceholder:0];
          }

          v4 = v39;
        }

        v38 = v40;
      }

      else
      {
        v38 = v4;
      }
    }
  }
}

void sub_1005E13EC(void *a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&unk_100AED100, &qword_1008420B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-v5 - 8];
  v7 = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingLeadingConstraint];
  if (!v7)
  {
    return;
  }

  v8 = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingLeadingAXConstraint];
  if (!v8)
  {
    return;
  }

  v9 = v7;
  v10 = v8;
  sub_1007A2E94();
  if (v24)
  {
    sub_1001F1160(&qword_100AE91E8, &qword_10082F260);
    v11 = sub_10079B3D4();
    v12 = swift_dynamicCast();
    v13 = *(v11 - 8);
    (*(v13 + 56))(v6, v12 ^ 1u, 1, v11);
    if ((*(v13 + 48))(v6, 1, v11) != 1)
    {
      sub_10079B374();
      v15 = v14;
      (*(v13 + 8))(v6, v11);
      goto LABEL_8;
    }
  }

  else
  {
    sub_100007840(v23, &qword_100AED110, &qword_10082F740);
    v16 = sub_10079B3D4();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  }

  sub_100007840(v6, &unk_100AED100, &qword_1008420B0);
  v15 = 0.0;
LABEL_8:
  [v10 constant];
  if (v17 != v15)
  {
    [v10 setConstant:v15];
    if (a1)
    {
      goto LABEL_10;
    }

LABEL_12:
    v18 = [v2 traitCollection];
    goto LABEL_13;
  }

  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = a1;
LABEL_13:
  v19 = a1;
  v20 = [v18 preferredContentSizeCategory];
  v21 = sub_1007A2EE4();

  if (((v21 ^ [v9 isActive]) & 1) == 0)
  {
    [v9 setActive:(v21 & 1) == 0];
  }

  if ((v21 & 1) != [v10 isActive])
  {
    [v10 setActive:?];
  }
}

void sub_1005E16F8(int a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    sub_1005E0E50(0);
    v3 = *&v1[OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField];
    if (v3)
    {
      v13 = v3;
      if (([v13 isHidden] ^ a1))
      {
      }

      else
      {
        v4 = a1 ^ 1;
        v5 = a1 & 1;
        [v13 setUserInteractionEnabled:a1 & 1];
        v6 = objc_opt_self();
        v7 = swift_allocObject();
        *(v7 + 16) = v13;
        *(v7 + 24) = v4 & 1;
        *(v7 + 32) = v1;
        *(v7 + 40) = v5;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_1005E2364;
        *(v8 + 24) = v7;
        aBlock[4] = sub_10025D79C;
        aBlock[5] = v8;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100685954;
        aBlock[3] = &unk_100A25EA8;
        v9 = _Block_copy(aBlock);
        v10 = v13;
        v11 = v1;

        [v6 performWithoutAnimation:v9];

        _Block_release(v9);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_1005E1920(void *a1, char a2, void *a3, char a4)
{
  v8 = sub_1001F1160(&unk_100AED100, &qword_1008420B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27[-1] - v9;
  v11 = sub_10079B3D4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v27[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setHidden:{a2 & 1, v13}];
  sub_1007A2E94();
  if (!v28)
  {
    sub_100007840(v27, &qword_100AED110, &qword_10082F740);
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_100007840(v10, &unk_100AED100, &qword_1008420B0);
  }

  sub_1001F1160(&qword_100AE91E8, &qword_10082F260);
  v16 = swift_dynamicCast();
  (*(v12 + 56))(v10, v16 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100007840(v10, &unk_100AED100, &qword_1008420B0);
  }

  (*(v12 + 32))(v15, v10, v11);
  if (a4)
  {
    sub_10079B394();
    if (v17)
    {
      v18 = sub_1007A2214();
    }

    else
    {
      v18 = 0;
    }

    [a1 setText:v18];

    sub_10079B394();
    if (v22)
    {
      v23 = sub_1007A2214();
    }

    else
    {
      v23 = 0;
    }

    [a1 setPlaceholder:v23];

    sub_10079B3A4();
  }

  else
  {
    v20 = [a1 text];
    if (v20)
    {
      v21 = v20;
      sub_1007A2254();
    }

    sub_10079B3A4();
    [a1 setText:0];
    [a1 setPlaceholder:0];
  }

  v28 = v11;
  v29 = &protocol witness table for UIListContentConfiguration;
  v24 = sub_1002256EC(v27);
  (*(v12 + 16))(v24, v15, v11);
  sub_1007A2EA4();
  v25 = [a3 contentView];
  [v25 layoutBelowIfNeeded];

  return (*(v12 + 8))(v15, v11);
}

id sub_1005E1CD0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SidebarLabelListCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005E1F28()
{
  v1 = sub_1001F1160(&unk_100AED100, &qword_1008420B0);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - v2;
  sub_1005E0E50(0);
  v4 = *(v0 + OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField);
  if (v4 && ([v4 isEditing] & 1) != 0)
  {
    return 0;
  }

  v5 = v0 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item;
  v6 = *(v0 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 16);
  v21 = *(v0 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item);
  v22 = v6;
  v7 = *(v0 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 48);
  v23 = *(v0 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 32);
  v24[0] = v7;
  *(v24 + 15) = *(v0 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 63);
  v8 = v22;
  if (!*(&v21 + 1))
  {
    v17 = v21;
    v18 = v22;
    v10 = *(v5 + 48);
    v19 = *(v5 + 32);
    *v20 = v10;
    *&v20[15] = *(v5 + 63);
    sub_1000077D8(&v21, v16, &qword_100AE8CD8, &unk_100834B90);
    sub_100007840(&v17, &qword_100AE8CD8, &unk_100834B90);
    sub_1007A2E94();
    if (v16[3])
    {
      sub_1001F1160(&qword_100AE91E8, &qword_10082F260);
      v11 = sub_10079B3D4();
      v12 = swift_dynamicCast();
      v13 = *(v11 - 8);
      (*(v13 + 56))(v3, v12 ^ 1u, 1, v11);
      if ((*(v13 + 48))(v3, 1, v11) != 1)
      {
        v8 = sub_10079B394();
        (*(v13 + 8))(v3, v11);
        return v8;
      }
    }

    else
    {
      sub_100007840(v16, &qword_100AED110, &qword_10082F740);
      v14 = sub_10079B3D4();
      (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    }

    sub_100007840(v3, &unk_100AED100, &qword_1008420B0);
    return 0;
  }

  v17 = v21;
  v18 = v22;
  v9 = *(v5 + 48);
  v19 = *(v5 + 32);
  *v20 = v9;
  *&v20[15] = *(v5 + 63);
  sub_1000077D8(&v21, v16, &qword_100AE8CD8, &unk_100834B90);

  sub_100007840(&v17, &qword_100AE8CD8, &unk_100834B90);
  return v8;
}

id sub_1005E2244(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1007A2214();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1005E22C4()
{
  sub_1005E0E50(0);
  v1 = OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField;
  result = *(v0 + OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField);
  if (result)
  {
    if ([result isEditing])
    {
      sub_1005E0E50(0);
      result = *(v0 + v1);
      if (result)
      {
        result = [result text];
        if (result)
        {
          v3 = result;
          v4 = sub_1007A2254();

          return v4;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_1005E2380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1005E23EC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AED118);
  sub_100008B98(v0, qword_100AED118);
  return sub_10079ACD4();
}

void sub_1005E246C(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BKMediaTypeRecommendationProvider____lazy_storage___recommendationService;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, &v6, &qword_100AED160, &qword_100834BC0);
  if (v7)
  {
    sub_1000077C0(&v6, a1);
  }

  else
  {
    v4 = v1;
    sub_100007840(&v6, &qword_100AED160, &qword_100834BC0);
    sub_100017E74();
    v5 = sub_1007A2D74();
    sub_1001F1160(&qword_100AED168, &unk_100834BC8);
    sub_1007A2CC4();

    if (v7)
    {
      sub_1000077C0(&v6, a1);
      sub_100009864(a1, &v6);
      swift_beginAccess();
      sub_1005E30A4(&v6, v4 + v3);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005E25A4()
{
  v1 = [objc_opt_self() delegate];
  v2 = [v1 containerHost];
  sub_1000076D8(v4);

  sub_10000E3E8(v4, v4[3]);
  sub_1001F1160(&qword_100AED168, &unk_100834BC8);
  sub_100798CD4();

  return sub_1000074E0(v4);
}

uint64_t sub_1005E266C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_1001F1160(&qword_100AE3180, &unk_100825550);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005E2714, 0, 0);
}

uint64_t sub_1005E2714()
{
  sub_1005E246C((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_10000E3E8(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1005E27DC;
  v4 = v0[9];

  return dispatch thunk of MediaTypeRecommendationServiceType.fetchRecommendedMediaType()(v4, v1, v2);
}

uint64_t sub_1005E27DC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1005E2A00;
  }

  else
  {
    v2 = sub_1005E28F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005E28F0()
{
  sub_1005E31D4(v0[9], v0[10]);
  sub_1000074E0(v0 + 2);
  v1 = v0[10];
  v2 = v0[8];
  v3 = sub_1005E2C88(v1);
  v4 = [objc_opt_self() sharedInstance];
  v11._countAndFlagsBits = 0x80000001008E0600;
  v5.super.isa = v2;
  v10.value._rawValue = v3;
  v10.is_nil = 113;
  v11._object = 52;
  sub_1007A32F4(v5, v10, v11, v6);

  sub_100007840(v1, &qword_100AE3180, &unk_100825550);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005E2A00()
{
  sub_1000074E0(v0 + 2);
  if (qword_100AD1910 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AED118);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch recommended media type: %@", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480, &qword_1008113B0);
  }

  else
  {
  }

  v7 = v0[10];
  v8 = sub_10079A734();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = v0[10];
  v10 = v0[8];
  v11 = sub_1005E2C88(v9);
  v12 = [objc_opt_self() sharedInstance];
  v19._countAndFlagsBits = 0x80000001008E0600;
  v13.super.isa = v10;
  v18.value._rawValue = v11;
  v18.is_nil = 113;
  v19._object = 52;
  sub_1007A32F4(v13, v18, v19, v14);

  sub_100007840(v9, &qword_100AE3180, &unk_100825550);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005E2C88(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE3180, &unk_100825550);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_10079A734();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v4, &qword_100AE3180, &unk_100825550);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(v4, &qword_100AE3180, &unk_100825550);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10080B690;
    v11 = sub_10079A724();
    *(v10 + 56) = &type metadata for String;
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

id sub_1005E3018()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaTypeRecommendationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005E30A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AED160, &qword_100834BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E3114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_1005E266C(a1, v4, v5, v7, v6);
}

uint64_t sub_1005E31D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE3180, &unk_100825550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall LibraryCollectionTitleView.contentDidChange()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LibraryCollectionTitleView();
  objc_msgSendSuper2(&v5, "contentDidChange");
  [v0 largeTitleHeight];
  if (v1 >= 0.0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [v0 largeTitleHeight];
      [v3 largeTitleVisibilityDidChangeWithIsVisible:v4 > 20.0];
      swift_unknownObjectRelease();
    }
  }
}

id LibraryCollectionTitleView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___BKLibraryCollectionTitleView_minHeightThatCountsAsVisible] = 0x4034000000000000;
  swift_unknownObjectWeakInit();
  v10.receiver = v4;
  v10.super_class = type metadata accessor for LibraryCollectionTitleView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id LibraryCollectionTitleView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___BKLibraryCollectionTitleView_minHeightThatCountsAsVisible] = 0x4034000000000000;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LibraryCollectionTitleView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id LibraryCollectionTitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryCollectionTitleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005E361C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v6 = &v21[-v5];
  v7 = sub_100796424();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10079E784();
  v11 = sub_10079E774();
  v12 = sub_10079E764();

  if (*(v12 + 16) && (v13 = sub_10000E53C(0x65526E4972616579, 0xEC00000077656976), (v14 & 1) != 0))
  {
    sub_100007484(*(v12 + 56) + 32 * v13, v22);

    sub_1000076D4(v22, v23);
    sub_100796464();
    swift_allocObject();
    sub_100796454();
    (*(v8 + 104))(v10, enum case for JSONDecoder.DateDecodingStrategy.iso8601(_:), v7);
    sub_100796434();
    v15 = type metadata accessor for YearInReview.RemoteConfiguration(0);
    sub_1005E7CE0(&qword_100AED380, type metadata accessor for YearInReview.RemoteConfiguration, &unk_100834DF0);
    sub_100796414();
    sub_1000074E0(v23);

    return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
  }

  else
  {

    sub_10079AC54();
    v16 = sub_10079ACC4();
    v17 = sub_1007A29D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No remote config for year in review found", v18, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v19 = type metadata accessor for YearInReview.RemoteConfiguration(0);
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }
}

void sub_1005E3AE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  sub_100798B74();
  *&v3[OBJC_IVAR___BKYearInReviewEligibilityService_eligibilityProvider] = a1;

  *&v3[OBJC_IVAR___BKYearInReviewEligibilityService_notificationScheduler] = a2;

  v11 = OBJC_IVAR___BKYearInReviewEligibilityService_topPicksObserver;
  swift_beginAccess();
  v12 = *&v3[v11];
  *&v4[v11] = a3;

  v13 = a3;
  sub_1007A2714();
  v14 = sub_1007A2744();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v4;
  v16 = v4;
  sub_1005E3DA4(0, 0, v10, &unk_100834E28, v15);

  sub_100007840(v10, &qword_100AD67D0, &qword_100814660);
  v17 = *&v4[v11];
  if (v17)
  {
    v18 = v17;
    sub_1004B9D54();
  }

  v19 = [objc_opt_self() defaultCenter];
  v20 = sub_1007A2E44();
  [v19 addObserver:v16 selector:"onConfigurationChange:" name:v20 object:0];

  sub_100798B74();
  v21 = *&v16[OBJC_IVAR___BKYearInReviewEligibilityService_setupPromise];
  v22 = [objc_allocWithZone(NSObject) init];
  [v21 finishWithResult:v22];
}

uint64_t sub_1005E3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000077D8(a3, v25 - v10, &qword_100AD67D0, &qword_100814660);
  v12 = sub_1007A2744();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007840(v11, &qword_100AD67D0, &qword_100814660);
  }

  else
  {
    sub_1007A2734();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1007A2694();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1007A2304() + 32;
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

uint64_t sub_1005E4064(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v44 = sub_1001F1160(&qword_100AED368, &qword_100834E30);
  __chkstk_darwin(v44);
  v43 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = v39 - v5;
  v41 = sub_1001F1160(&qword_100AED370, &qword_100834E38);
  __chkstk_darwin(v41);
  v45 = v39 - v6;
  v7 = sub_1001F1160(&qword_100AE39D8, &qword_100825F48);
  __chkstk_darwin(v7 - 8);
  v9 = v39 - v8;
  v10 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v10 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v39 - v14;
  v16 = sub_100796BB4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v47 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  sub_1000077D8(v2, v9, &qword_100AE39D8, &qword_100825F48);
  sub_10020B3C8(v9, v15, &unk_100ADB5C0, &unk_100816880);
  v22 = *(v17 + 48);
  if (v22(v15, 1, v16) == 1)
  {
    v23 = v15;
LABEL_5:
    sub_100007840(v23, &unk_100ADB5C0, &unk_100816880);
    v27 = 0;
    return v27 & 1;
  }

  v24 = v15;
  v25 = *(v17 + 32);
  v25(v21, v24, v16);
  v26 = type metadata accessor for YearInReview.RemoteConfiguration.DateRange(0);
  sub_1000077D8(v2 + *(v26 + 20), v9, &qword_100AE39D8, &qword_100825F48);
  sub_10020B3C8(v9, v12, &unk_100ADB5C0, &unk_100816880);
  if (v22(v12, 1, v16) == 1)
  {
    (*(v17 + 8))(v21, v16);
    v23 = v12;
    goto LABEL_5;
  }

  v28 = v47;
  v25(v47, v12, v16);
  v29 = sub_1005E7CE0(&qword_100AED378, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_1007A20F4();
  if (result)
  {
    v31 = *(v17 + 16);
    v39[1] = v29;
    v40 = v21;
    v32 = v25;
    v33 = v42;
    v31(v42, v21, v16);
    v34 = v44;
    v31((v33 + *(v44 + 48)), v28, v16);
    v35 = v43;
    sub_1000077D8(v33, v43, &qword_100AED368, &qword_100834E30);
    v36 = *(v34 + 48);
    v37 = v45;
    v32(v45, v35, v16);
    v38 = *(v17 + 8);
    v38(v35 + v36, v16);
    sub_10020B3C8(v33, v35, &qword_100AED368, &qword_100834E30);
    v32((v37 + *(v41 + 36)), v35 + *(v34 + 48), v16);
    v38(v35, v16);
    if (sub_1007A20E4())
    {
      v27 = sub_1007A20F4();
    }

    else
    {
      v27 = 0;
    }

    sub_100007840(v37, &qword_100AED370, &qword_100834E38);
    v38(v47, v16);
    v38(v40, v16);
    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005E4608()
{
  v1 = 0x65746144646E65;
  if (*v0 != 1)
  {
    v1 = 0x4F65676E61526E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_1005E4674@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1005E83C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1005E469C(uint64_t a1)
{
  v2 = sub_1005E8070();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E46D8(uint64_t a1)
{
  v2 = sub_1005E8070();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005E4714(void *a1)
{
  v3 = sub_1001F1160(&qword_100AED3E0, &qword_100834E78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000E3E8(a1, a1[3]);
  sub_1005E8070();
  sub_1007A3CC4();
  v11 = 0;
  sub_1001F1160(&qword_100AE39D8, &qword_100825F48);
  sub_1005E8258();
  sub_1007A3A44();
  if (!v1)
  {
    type metadata accessor for YearInReview.RemoteConfiguration.DateRange(0);
    v10 = 1;
    sub_1007A3A44();
    v9 = 2;
    sub_1007A39F4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1005E48F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = sub_1001F1160(&qword_100AE39D8, &qword_100825F48);
  __chkstk_darwin(v24);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v23 = &v21 - v6;
  v25 = sub_1001F1160(&qword_100AED3B8, &qword_100834E70);
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v21 - v7;
  v9 = type metadata accessor for YearInReview.RemoteConfiguration.DateRange(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100796BB4();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v14 = *(v9 + 20);
  v13(&v11[v14], 1, 1, v12);
  sub_10000E3E8(a1, a1[3]);
  sub_1005E8070();
  v15 = v26;
  sub_1007A3CB4();
  if (v15)
  {
    sub_1000074E0(a1);
    sub_100007840(v11, &qword_100AE39D8, &qword_100825F48);
    return sub_100007840(&v11[v14], &qword_100AE39D8, &qword_100825F48);
  }

  else
  {
    v29 = 0;
    sub_1005E80C4();
    sub_1007A39D4();
    sub_1005E8180(v23, v11);
    v28 = 1;
    sub_1007A39D4();
    sub_1005E8180(v4, &v11[v14]);
    v27 = 2;
    v16 = sub_1007A3984();
    v18 = v17;
    (*(v22 + 8))(v8, v25);
    v19 = &v11[*(v9 + 24)];
    *v19 = v16;
    v19[8] = v18 & 1;
    sub_1005E81F0(v11, v21, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1000074E0(a1);
    return sub_1004438C0(v11, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
  }
}

uint64_t sub_1005E4CCC(uint64_t a1)
{
  v2 = sub_1005E7CE0(&qword_100AED400, type metadata accessor for YearInReview.RemoteConfiguration.DateRange, &unk_100834D00);

  return ReflectedStringConvertible.description.getter(a1, v2);
}

uint64_t sub_1005E4D38(void *a1)
{
  v3 = sub_1001F1160(&qword_100AED3A0, &qword_100834E68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000E3E8(a1, a1[3]);
  sub_1005E801C();
  sub_1007A3CC4();
  v11 = 0;
  sub_1007A3A34();
  if (!v1)
  {
    type metadata accessor for YearInReview.RemoteConfiguration(0);
    v10 = 1;
    type metadata accessor for YearInReview.RemoteConfiguration.DateRange(0);
    sub_1005E7CE0(&qword_100AED3A8, type metadata accessor for YearInReview.RemoteConfiguration.DateRange, &unk_100834D28);
    sub_1007A3A04();
    v9 = 2;
    sub_1007A3A04();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1005E4F30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1001F1160(&qword_100AE39E0, &unk_100834C90);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v25 = sub_1001F1160(&qword_100AED388, &qword_100834E60);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - v9;
  v11 = type metadata accessor for YearInReview.RemoteConfiguration(0);
  __chkstk_darwin(v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E3E8(a1, a1[3]);
  sub_1005E801C();
  v24 = v10;
  v14 = v26;
  sub_1007A3CB4();
  if (v14)
  {
    return sub_1000074E0(a1);
  }

  v15 = a1;
  v16 = v23;
  v17 = v5;
  v29 = 0;
  *v13 = sub_1007A39C4();
  type metadata accessor for YearInReview.RemoteConfiguration.DateRange(0);
  v28 = 1;
  v26 = sub_1005E7CE0(&qword_100AED398, type metadata accessor for YearInReview.RemoteConfiguration.DateRange, &unk_100834D50);
  sub_1007A3994();
  v21 = *(v11 + 20);
  sub_10020B3C8(v8, v13 + v21, &qword_100AE39E0, &unk_100834C90);
  v27 = 2;
  v18 = v25;
  v19 = v24;
  sub_1007A3994();
  (*(v16 + 8))(v19, v18);
  sub_10020B3C8(v17, v13 + *(v11 + 24), &qword_100AE39E0, &unk_100834C90);
  sub_1005E81F0(v13, v22, type metadata accessor for YearInReview.RemoteConfiguration);
  sub_1000074E0(v15);
  return sub_1004438C0(v13, type metadata accessor for YearInReview.RemoteConfiguration);
}

uint64_t sub_1005E52CC()
{
  v1 = 0x6163696669746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x736B636950706F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1918985593;
  }
}

uint64_t sub_1005E5330@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1005E84E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1005E5358(uint64_t a1)
{
  v2 = sub_1005E801C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E5394(uint64_t a1)
{
  v2 = sub_1005E801C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005E5400(uint64_t a1)
{
  v2 = sub_1005E7CE0(&qword_100AED3B0, type metadata accessor for YearInReview.RemoteConfiguration, &unk_100834DA0);

  return ReflectedStringConvertible.description.getter(a1, v2);
}

unint64_t sub_1005E546C(uint64_t a1, void *a2)
{
  result = 0xD000000000000012;
  if (!a2)
  {
    return 0xD000000000000026;
  }

  if (a2 == 1)
  {
    return 0xD000000000000021;
  }

  if (a2 != 2)
  {
    sub_1007A3744(32);

    v5._countAndFlagsBits = a1;
    v5._object = a2;
    sub_1007A23D4(v5);
    return 0xD00000000000001ELL;
  }

  return result;
}

id YearInReviewEligibilityService.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  v3 = v0;
  v4 = sub_1007A2E44();
  [v2 removeObserver:v3 name:v4 object:0];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_1005E5740()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v4 = &v35[-1] - v3;
  v5 = sub_1001F1160(&qword_100AD6948, &qword_100825F50);
  __chkstk_darwin(v5);
  v7 = &v35[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35[-1] - v9;
  __chkstk_darwin(v11);
  v13 = &v35[-1] - v12;
  sub_1005E361C(&v35[-1] - v12);
  if (qword_100AD1918 != -1)
  {
    swift_once();
  }

  v14 = sub_10079ACE4();
  sub_100008B98(v14, qword_100AED1A8);
  sub_1000077D8(v13, v10, &qword_100AD6948, &qword_100825F50);
  v15 = sub_10079ACC4();
  v16 = sub_1007A2994();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35[0] = v19;
    *v18 = 136315138;
    sub_1000077D8(v10, v7, &qword_100AD6948, &qword_100825F50);
    v20 = sub_1007A22E4();
    v22 = v21;
    sub_100007840(v10, &qword_100AD6948, &qword_100825F50);
    v23 = sub_1000070F4(v20, v22, v35);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "RemoteConfiguration did change: %s", v18, 0xCu);
    sub_1000074E0(v19);

    v1 = v34;
  }

  else
  {

    sub_100007840(v10, &qword_100AD6948, &qword_100825F50);
  }

  v24 = *&v1[OBJC_IVAR___BKYearInReviewEligibilityService_eligibilityProvider];
  if (!v24)
  {
    __break(1u);
    goto LABEL_12;
  }

  v25 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_config;
  swift_beginAccess();

  sub_1005E8DA8(v13, v24 + v25);
  swift_endAccess();

  v26 = *&v1[OBJC_IVAR___BKYearInReviewEligibilityService_notificationScheduler];
  if (!v26)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v27 = OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_config;
  swift_beginAccess();

  sub_1005E8DA8(v13, v26 + v27);
  swift_endAccess();

  sub_1007A2714();
  v28 = sub_1007A2744();
  (*(*(v28 - 8) + 56))(v4, 0, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v1;
  v30 = v1;
  sub_1005E3DA4(0, 0, v4, &unk_100834EB8, v29);

  sub_100007840(v4, &qword_100AD67D0, &qword_100814660);
  v31 = OBJC_IVAR___BKYearInReviewEligibilityService_topPicksObserver;
  swift_beginAccess();
  v32 = *&v30[v31];
  if (v32)
  {
    swift_endAccess();
    v33 = v32;
    sub_1004B9D54();

    sub_100007840(v13, &qword_100AD6948, &qword_100825F50);
  }

  else
  {
    sub_100007840(v13, &qword_100AD6948, &qword_100825F50);
    swift_endAccess();
  }
}

void sub_1005E5CE4()
{
  v1 = *(v0[6] + OBJC_IVAR___BKYearInReviewEligibilityService_notificationScheduler);
  v0[7] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1005E5D98;

    sub_10043F8D0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005E5D98(char a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1005E6100;
  }

  else
  {

    v4 = sub_1005E5EB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005E5EB8()
{
  v21 = v0;
  if (qword_100AD1918 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AED1A8);
  v2 = sub_10079ACC4();
  v3 = sub_1007A2994();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    v7 = 0xE800000000000000;
    *v5 = 136315138;
    v8 = 0x6769666E6F436F6ELL;
    v9 = 0xEB00000000657461;
    v10 = 0x44646E4574736170;
    v11 = 0x6967696C45746F6ELL;
    v12 = 0xEB00000000656C62;
    if (v4 != 4)
    {
      v11 = 0xD000000000000015;
      v12 = 0x80000001008E0890;
    }

    if (v4 != 3)
    {
      v10 = v11;
      v9 = v12;
    }

    v13 = 0xD000000000000015;
    v14 = 0x80000001008E08D0;
    if (v4 != 1)
    {
      v13 = 0xD00000000000001CLL;
      v14 = 0x80000001008E08B0;
    }

    if (v4)
    {
      v8 = v13;
      v7 = v14;
    }

    if (v4 <= 2)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    if (v4 <= 2)
    {
      v16 = v7;
    }

    else
    {
      v16 = v9;
    }

    v17 = sub_1000070F4(v15, v16, &v20);

    *(v5 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v2, v3, "Notification scheduling with result: %s", v5, 0xCu);
    sub_1000074E0(v6);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1005E6100()
{
  v12 = v0;

  if (qword_100AD1918 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AED1A8);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_1007A3B84();
    v8 = sub_1000070F4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Notification scheduling failed with error: %s", v4, 0xCu);
    sub_1000074E0(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1005E62E8()
{
  v1 = *(v0[19] + OBJC_IVAR___BKYearInReviewEligibilityService_setupPromise);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1005E6410;
  v2 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AED410, &qword_100834E98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10023CCFC;
  v0[13] = &unk_100A26048;
  v0[14] = v2;
  [v1 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005E6410()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1005E6580;
  }

  else
  {
    v2 = sub_1005E6520;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005E6520()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E6580(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_1005E66D4()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 environment];

  v3 = [v2 context];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v8[4] = sub_1005E8C94;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1005E6CCC;
  v8[3] = &unk_100A26098;
  v5 = _Block_copy(v8);
  v6 = v0;

  v7 = [objc_opt_self() valueWithNewPromiseInContext:v3 fromExecutor:v5];
  _Block_release(v5);

  if (!v7)
  {
    __break(1u);
  }
}

void sub_1005E6830(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (a1)
  {
    v13 = a1;
    if (sub_1007A3114())
    {
      v8 = sub_1007A2744();
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = a3;
      v9[5] = v13;
      v10 = a3;
      sub_1003457A0(0, 0, v7, &unk_100834EA8, v9);
    }

    else
    {
      v11 = v13;
    }
  }
}

uint64_t sub_1005E6988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_1005E6A1C;

  return sub_1005E62C8();
}

uint64_t sub_1005E6A1C()
{

  return _swift_task_switch(sub_1005E6B18, 0, 0);
}

uint64_t sub_1005E6B18()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___BKYearInReviewEligibilityService_topPicksObserver;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v0[6];
  if (v3)
  {
    v5 = *(v3 + OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_isEligible);
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 sharedInstance];
    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10080B690;
    *(v9 + 56) = sub_1005E8D5C();
    *(v9 + 32) = v7;
    v10 = v7;
    v20._countAndFlagsBits = 0x80000001008E0930;
    v11.super.isa = v4;
    v18.value._rawValue = v9;
    v18.is_nil = 124;
    v20._object = 237;
    sub_1007A32F4(v11, v18, v20, v12);
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    v19.value._rawValue = _swiftEmptyArrayStorage;
    v21._countAndFlagsBits = 0x80000001008E0930;
    v13.super.isa = v4;
    v19.is_nil = 124;
    v21._object = 234;
    sub_1007A32F4(v13, v19, v21, v14);
  }

  v15 = v0[1];

  return v15();
}

void sub_1005E6CCC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1005E6DE4(void *a1)
{
  if (![a1 isNumber])
  {
    goto LABEL_11;
  }

  v3 = [a1 toNumber];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v3 integerValue];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
      goto LABEL_7;
    }

LABEL_11:
    sub_1005E8C40();
    sub_1007A3B84();
    v10 = [a1 context];
    v11 = sub_1007A2214();

    v12 = [objc_opt_self() valueWithNewErrorFromMessage:v11 inContext:v10];

    if (v12)
    {
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v6 = 0;
LABEL_7:
  if (*(v1 + OBJC_IVAR___BKYearInReviewEligibilityService_eligibilityProvider))
  {

    v7 = sub_1004B84DC(v6);

    v8 = [a1 context];
    v9 = [objc_opt_self() valueWithBool:v7 & 1 inContext:v8];

    if (v9)
    {

      return;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1005E6FFC(void *a1)
{
  v3 = [a1 context];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v9[4] = sub_1005E83B0;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1005E6CCC;
  v9[3] = &unk_100A25FD0;
  v5 = _Block_copy(v9);
  v6 = a1;
  v7 = v1;

  v8 = [objc_opt_self() valueWithNewPromiseInContext:v3 fromExecutor:v5];
  _Block_release(v5);

  if (!v8)
  {
    __break(1u);
  }
}

void sub_1005E7120(void *a1, void *a2, void *a3, void *a4)
{
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  if (a1)
  {
    v25 = a1;
    if (sub_1007A3114())
    {
      if ([a3 isNumber])
      {
        v11 = [a3 toNumber];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 integerValue];
          if (v13 < 3)
          {
            v14 = v13;
            v15 = swift_allocObject();
            v15[2] = a4;
            v15[3] = a2;
            v15[4] = v25;
            v16 = sub_1007A2744();
            (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
            v17 = swift_allocObject();
            *(v17 + 16) = 0;
            *(v17 + 24) = 0;
            *(v17 + 32) = a4;
            *(v17 + 40) = v14;
            *(v17 + 48) = v25;
            *(v17 + 56) = sub_1005E8810;
            *(v17 + 64) = v15;
            v18 = a2;

            v19 = v25;
            v20 = a4;
            v21 = v19;
            v22 = v20;
            sub_10050CBCC(0, 0, v10, &unk_100834E88, v17);

            return;
          }
        }
      }

      sub_1005E8608(0, 1uLL, a2, v25);
    }

    v23 = v25;
  }
}

uint64_t sub_1005E7370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 184) = a5;
  *(v8 + 120) = a4;
  *(v8 + 128) = a6;
  v9 = swift_task_alloc();
  *(v8 + 152) = v9;
  *v9 = v8;
  v9[1] = sub_1005E740C;

  return sub_1005E62C8();
}

uint64_t sub_1005E740C()
{

  return _swift_task_switch(sub_1005E7508, 0, 0);
}

void sub_1005E7508()
{
  v1 = *(*(v0 + 120) + OBJC_IVAR___BKYearInReviewEligibilityService_eligibilityProvider);
  *(v0 + 160) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v2[1] = sub_1005E75C4;
    v3 = *(v0 + 184);

    sub_1004B8F78(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005E75C4(char a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_1005E7800;
  }

  else
  {

    *(v4 + 185) = a1 & 1;
    v5 = sub_1005E76F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005E76F8()
{
  v1 = *(v0 + 185);
  v2 = *(v0 + 128);
  v3 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10080B690;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 32) = v1;
  v11._countAndFlagsBits = 0x80000001008E0930;
  v5.super.isa = v2;
  v10.value._rawValue = v4;
  v10.is_nil = 124;
  v11._object = 286;
  sub_1007A32F4(v5, v10, v11, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005E7800()
{
  v1 = v0[22];

  v0[14] = v1;
  swift_errorRetain();
  sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  if (swift_dynamicCast())
  {

    v2 = v0[13];
    v3 = v0[17];
    if (v2)
    {
      v4 = v0 + 2;
      v5 = v0[12];
      v0[5] = &type metadata for YearInReviewEligibilityService.ServiceError;
      v0[6] = sub_1005E8944();
      v0[2] = v5;
      v0[3] = v2;
    }

    else
    {
      v0[10] = &type metadata for YearInReviewEligibilityService.ServiceError;
      v0[11] = sub_1005E8944();
      v0[7] = 0;
      v0[8] = 0;
      v4 = v0 + 7;
    }

    v3(v4);
    sub_1000074E0(v4);

    v6 = v0[1];
  }

  else
  {

    v6 = v0[1];
  }

  return v6();
}

void sub_1005E79FC(uint64_t a1)
{
  sub_1005E7A78(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1005E7A78(uint64_t a1)
{
  if (!qword_100AED278)
  {
    type metadata accessor for YearInReview.RemoteConfiguration.DateRange(255);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AED278);
    }
  }
}

void sub_1005E7B18(uint64_t a1)
{
  sub_1005E7B9C(319);
  if (v1 <= 0x3F)
  {
    sub_1005E7C00();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005E7B9C(uint64_t a1)
{
  if (!qword_100AED318)
  {
    sub_1001F1234(&unk_100ADB5C0, &unk_100816880);
    v1 = sub_1007A1E34();
    if (!v2)
    {
      atomic_store(v1, &qword_100AED318);
    }
  }
}

void sub_1005E7C00()
{
  if (!qword_100AED320)
  {
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AED320);
    }
  }
}

uint64_t sub_1005E7CE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005E7D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1005E5CC4(a1, v4, v5, v6);
}

uint64_t sub_1005E7DDC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AED1A8);
  sub_100008B98(v0, qword_100AED1A8);
  return sub_10079ACD4();
}

id sub_1005E7E5C()
{
  result = sub_1005E7E7C();
  qword_100B236A8 = result;
  return result;
}

id sub_1005E7E7C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1007A2044();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  sub_10000E53C(0xD00000000000001BLL, 0x80000001008CE990);
  v4 = v3;

  if ((v4 & 1) == 0)
  {
LABEL_6:
    v9 = [objc_opt_self() books];
    v10 = [v9 userDefaults];

    return v10;
  }

  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_1007A2214();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    return v7;
  }

  v11 = [objc_opt_self() standardUserDefaults];

  return v11;
}

unint64_t sub_1005E801C()
{
  result = qword_100AED390;
  if (!qword_100AED390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED390);
  }

  return result;
}

unint64_t sub_1005E8070()
{
  result = qword_100AED3C0;
  if (!qword_100AED3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED3C0);
  }

  return result;
}

unint64_t sub_1005E80C4()
{
  result = qword_100AED3C8;
  if (!qword_100AED3C8)
  {
    sub_1001F1234(&qword_100AE39D8, &qword_100825F48);
    sub_1005E8314(&qword_100AED3D0, &qword_100AED3D8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED3C8);
  }

  return result;
}

uint64_t sub_1005E8180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE39D8, &qword_100825F48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E81F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1005E8258()
{
  result = qword_100AED3E8;
  if (!qword_100AED3E8)
  {
    sub_1001F1234(&qword_100AE39D8, &qword_100825F48);
    sub_1005E8314(&qword_100AED3F0, &qword_100AED3F8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED3E8);
  }

  return result;
}

uint64_t sub_1005E8314(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(&unk_100ADB5C0, &unk_100816880);
    sub_1005E7CE0(a2, &type metadata accessor for Date, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005E83C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1007A3AB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1007A3AB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F65676E61526E69 && a2 == 0xED00007465736666)
  {

    return 2;
  }

  else
  {
    v6 = sub_1007A3AB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1005E84E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v3 || (sub_1007A3AB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974 || (sub_1007A3AB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736B636950706F74 && a2 == 0xEC00000064726143)
  {

    return 2;
  }

  else
  {
    v6 = sub_1007A3AB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_1005E8608(uint64_t a1, unint64_t a2, void *a3, objc_class *a4)
{
  if (a3)
  {
    sub_1005E8C18(a1, a2);
    v8 = a3;
    if (sub_1007A3114())
    {
      v9 = [objc_opt_self() sharedInstance];
      sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_10080B690;
      sub_1005E8C40();
      v11 = sub_1007A3B84();
      v13 = v12;
      sub_1005E8C2C(a1, a2);
      *(v10 + 56) = &type metadata for String;
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      v26._countAndFlagsBits = 0x80000001008E0930;
      v14.super.isa = v8;
      v24.value._rawValue = v10;
      v24.is_nil = 124;
      v26._object = 303;
      sub_1007A32F4(v14, v24, v26, v15);

      return result;
    }

    sub_1005E8C2C(a1, a2);
  }

  v17 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10080B690;
  *(v18 + 56) = &type metadata for Bool;
  *(v18 + 32) = 0;
  v27._countAndFlagsBits = 0x80000001008E0930;
  v19.super.isa = a4;
  v25.value._rawValue = v18;
  v25.is_nil = 124;
  v27._object = 300;
  sub_1007A32F4(v19, v25, v27, v20);

  return result;
}

uint64_t sub_1005E8810(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_10000E3E8(a1, v4);

  return sub_1005E89C4(v6, v2, v3, v4, v5);
}

uint64_t sub_1005E8864(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002812C;

  return sub_1005E7370(a1, v4, v5, v6, v10, v7, v8, v9);
}

unint64_t sub_1005E8944()
{
  result = qword_100AED408;
  if (!qword_100AED408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED408);
  }

  return result;
}

uint64_t sub_1005E89C4(uint64_t a1, void *a2, objc_class *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  if (!a2)
  {
    goto LABEL_5;
  }

  v12 = a2;
  if ((sub_1007A3114() & 1) == 0)
  {

LABEL_5:
    v13 = [objc_opt_self() sharedInstance];
    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10080B690;
    *(v19 + 56) = &type metadata for Bool;
    *(v19 + 32) = 0;
    v27._countAndFlagsBits = 0x80000001008E0930;
    v20.super.isa = a3;
    v25.value._rawValue = v19;
    v25.is_nil = 124;
    v27._object = 300;
    sub_1007A32F4(v20, v25, v27, v21);
    goto LABEL_6;
  }

  v13 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10080B690;
  v15 = sub_1007A3B84();
  *(v14 + 56) = &type metadata for String;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v26._countAndFlagsBits = 0x80000001008E0930;
  v17.super.isa = v12;
  v24.value._rawValue = v14;
  v24.is_nil = 124;
  v26._object = 303;
  sub_1007A32F4(v17, v24, v26, v18);

LABEL_6:

  return (*(v8 + 8))(v11, a4);
}

double sub_1005E8C18(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

double sub_1005E8C2C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_1005E8C40()
{
  result = qword_100AED418;
  if (!qword_100AED418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED418);
  }

  return result;
}

uint64_t sub_1005E8C9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_1005E6988(a1, v4, v5, v7, v6);
}

unint64_t sub_1005E8D5C()
{
  result = qword_100AED420;
  if (!qword_100AED420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AED420);
  }

  return result;
}

uint64_t sub_1005E8DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD6948, &qword_100825F50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E8E18(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1005E8E30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005E8E8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1005E8F10()
{
  result = qword_100AED428;
  if (!qword_100AED428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED428);
  }

  return result;
}

unint64_t sub_1005E8F68()
{
  result = qword_100AED430;
  if (!qword_100AED430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED430);
  }

  return result;
}

unint64_t sub_1005E8FC4()
{
  result = qword_100AED438;
  if (!qword_100AED438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED438);
  }

  return result;
}

unint64_t sub_1005E901C()
{
  result = qword_100AED440;
  if (!qword_100AED440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED440);
  }

  return result;
}

unint64_t sub_1005E9074()
{
  result = qword_100AED448;
  if (!qword_100AED448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED448);
  }

  return result;
}

unint64_t sub_1005E90CC()
{
  result = qword_100AED450;
  if (!qword_100AED450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED450);
  }

  return result;
}

void sub_1005E912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_1002F4A28(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = sub_10000E53C(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        sub_1002F0D14();
        v15 = v17;
      }

      sub_1002EF7D8(v11, v15);
      *v5 = v15;
    }
  }
}

void sub_1005E9274(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v20;
  }

  else
  {
    v15 = sub_10000E53C(a2, a3);
    v17 = v16;

    if (v17)
    {
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v7;
      v21 = *v7;
      if (!v18)
      {
        a6();
        v19 = v21;
      }

      a5(v15, v19);
      *v7 = v19;
    }
  }
}

void sub_1005E938C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001F1160(&qword_100ADD620, &unk_10081C9F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_100798B14();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_100007840(a1, &qword_100ADD620, &unk_10081C9F0);
    sub_1002EEDE8(a2, a3, v9);

    sub_100007840(v9, &qword_100ADD620, &unk_10081C9F0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1002F5480(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }
}

void sub_1005E9564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001F1160(&qword_100AE2380, &unk_1008352E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1007991C4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_100007840(a1, &qword_100AE2380, &unk_1008352E0);
    sub_1002EF034(a2, a3, v9);

    sub_100007840(v9, &qword_100AE2380, &unk_1008352E0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1002F5AF0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }
}

void sub_1005E973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001F1160(&qword_100AE2378, &qword_100823C88);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1007974A4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_100007840(a1, &qword_100AE2378, &qword_100823C88);
    sub_1002EF1DC(a2, a3, v9);

    sub_100007840(v9, &qword_100AE2378, &qword_100823C88);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1002F5C94(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }
}

void sub_1005E9954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1002F5FF8(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1002F9CDC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1002F1DF8();
        v11 = v13;
      }

      sub_1002EFCDC(v9, v11);
      *v3 = v11;
    }
  }
}

void sub_1005E9A54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(unint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v20;
  }

  else
  {
    v15 = sub_10000E53C(a2, a3);
    v17 = v16;

    if (v17)
    {
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v7;
      v21 = *v7;
      if (!v18)
      {
        a6();
        v19 = v21;
      }

      a5(v15, v19);
      *v7 = v19;
    }
  }
}

void sub_1005E9BEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(unint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v20;
  }

  else
  {
    v15 = sub_10000E53C(a2, a3);
    v17 = v16;

    if (v17)
    {
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v7;
      v21 = *v7;
      if (!v18)
      {
        a6();
        v19 = v21;
      }

      a5(v15, v19);
      *v7 = v19;
    }
  }
}

uint64_t sub_1005E9D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AEDE70, &qword_100835288);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_10079A1A4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_100007840(a1, &qword_100AEDE70, &qword_100835288);
    v14 = sub_1002F9CDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002F2658();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1002F0000(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100007840(v8, &qword_100AEDE70, &qword_100835288);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1002F6520(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1005E9F54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AED480, &unk_100835290);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_10079A6D4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_100007840(a1, &qword_100AED480, &unk_100835290);
    v14 = sub_1002F9CDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002F2A40();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1002F0018(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100007840(v8, &qword_100AED480, &unk_100835290);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1002F6850(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1005EA1A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AE3180, &unk_100825550);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_10079A734();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_100007840(a1, &qword_100AE3180, &unk_100825550);
    v14 = sub_1002F9CDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002F2C00();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1002F0030(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100007840(v8, &qword_100AE3180, &unk_100825550);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1002F69DC(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1005EA3F4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&qword_100AED4B0, &qword_100837340);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_10079A4E4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_100007840(a1, &qword_100AED4B0, &qword_100837340);
    sub_1002EF42C(a2, v7);
    v13 = sub_10079A404();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_100007840(v7, &qword_100AED4B0, &qword_100837340);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1002F6B68(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_10079A404();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1005EA620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AED488, &unk_1008352A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1001F1160(&qword_100ADAD60, &unk_100821FB0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - v12;
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_100007840(a1, &qword_100AED488, &unk_1008352A0);
    v14 = sub_1002F9CDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002F2F7C();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1002F038C(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100007840(v8, &qword_100AED488, &unk_1008352A0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1002F6F5C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

void sub_1005EA878(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a3 == -1)
  {
    v13 = sub_10000E53C(a4, a5);
    v15 = v14;

    if (v15)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v6;
      v19 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002F3514();
        v17 = v19;
      }

      sub_1002F9074(*(*(v17 + 56) + 24 * v13), *(*(v17 + 56) + 24 * v13 + 8), *(*(v17 + 56) + 24 * v13 + 16));
      sub_1002F0550(v13, v17);
      *v6 = v17;
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v6;
    sub_1002F722C(a1, a2, a3 & 1, a4, a5, v12);

    *v6 = v18;
  }
}

uint64_t sub_1005EA998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AED498, &qword_1008352B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_10079A4B4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_100007840(a1, &qword_100AED498, &qword_1008352B8);
    v14 = sub_1002F9CDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002F3C30();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1002F08DC(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100007840(v8, &qword_100AED498, &qword_1008352B8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1002F756C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1005EABE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AED490, &qword_1008352B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_100007840(a1, &qword_100AED490, &qword_1008352B0);
    v14 = sub_1002F9CDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002F3C58();
        v18 = v22;
      }

      sub_1005F5308(*(v18 + 56) + *(v10 + 72) * v16, v8);
      sub_1002F08F4(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100007840(v8, &qword_100AED490, &qword_1008352B0);
  }

  else
  {
    sub_1005F5308(a1, v13);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1002F76F8(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1005EAE14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AED4A0, &unk_100841B90);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1007A0044();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_100007840(a1, &qword_100AED4A0, &unk_100841B90);
    v14 = sub_1002F9CDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002F4168();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1002F0B30(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100007840(v8, &qword_100AED4A0, &unk_100841B90);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1002F79D0(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1005EB064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AF4280, &unk_1008352C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1007A1B34();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_100007840(a1, &qword_100AF4280, &unk_1008352C0);
    v14 = sub_1002F9CDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002F4140();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1002F0B18(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100007840(v8, &qword_100AF4280, &unk_1008352C0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1002F7844(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1005EB2B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AED4A8, &unk_1008352D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_10079A0D4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_100007840(a1, &qword_100AED4A8, &unk_1008352D0);
    v14 = sub_1002F9CDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002F46CC();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1002F0B48(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100007840(v8, &qword_100AED4A8, &unk_1008352D0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1002F7E84(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1005EB504(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1005EB5D0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AED458);
  sub_100008B98(v0, qword_100AED458);
  return sub_10079ACD4();
}

uint64_t sub_1005EB650(uint64_t a1)
{
  v1[18] = a1;
  sub_1007A26F4();
  v1[19] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_1005EB6E8, v3, v2);
}

uint64_t sub_1005EB6E8()
{
  v1 = [objc_opt_self() defaultManager];
  v0[22] = v1;
  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  isa = sub_1007A25D4().super.isa;
  v0[23] = isa;
  v0[2] = v0;
  v0[3] = sub_1005EB860;
  v3 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AED478, &qword_100835278);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1005EB9D4;
  v0[13] = &unk_100A26450;
  v0[14] = v3;
  [v1 deleteAssets:isa exhaustive:1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005EB860()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_1005EB968, v2, v1);
}

uint64_t sub_1005EB968()
{
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1005EB9D4(uint64_t a1)
{
  sub_10000E3E8((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_1005EBA08(uint64_t a1)
{
  v1[26] = a1;
  sub_1007A26F4();
  v1[27] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[28] = v3;
  v1[29] = v2;

  return _swift_task_switch(sub_1005EBAA0, v3, v2);
}

uint64_t sub_1005EBAA0()
{
  v34 = v0;
  v1 = v0[26];
  v33 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = (v0[26] + 32);
    v0 = &selRef_iq_downloadProgressStatusesWithAssetID_item_;
    while (1)
    {
      if (v4)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v7 isLocal])
      {
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        v1 = &v33;
        sub_1007A37E4();
      }

      else
      {
      }

      ++v3;
      if (v9 == i)
      {
        v0 = v32;
        v10 = v33;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_18:
  v0[30] = v10;
  v0[18] = v10;
  sub_1001F1160(&unk_100AF4D90, &qword_100842620);
  sub_1005F5538();
  if (sub_1007A28A4())
  {
    v0[31] = [objc_opt_self() defaultManager];
    if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
      v11 = sub_1007A38D4();
      v0[32] = v11;
      if (v11)
      {
LABEL_22:
        if (v11 < 1)
        {
          __break(1u);
          goto LABEL_50;
        }

        v12 = 0;
        while (1)
        {
          v0[33] = v12;
          v13 = v0[30];
          v14 = (v13 & 0xC000000000000001) != 0 ? sub_1007A3784() : *(v13 + 8 * v12 + 32);
          v15 = v14;
          v0[34] = v14;
          if ([v14 isAudiobook])
          {
            v16 = [v15 supplementalContentAssets];
            if (v16)
            {
              break;
            }
          }

          v12 = (v0[33] + 1);
          if (v12 == v0[32])
          {
            goto LABEL_45;
          }
        }

        v17 = v16;
        sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
        sub_100402738(&qword_100AD9FD0, &qword_100ADA990, BKLibraryAsset_ptr);
        v18 = sub_1007A2834();

        if ((v18 & 0xC000000000000001) != 0)
        {
          v19 = sub_1007A3624();
          if (v19)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v19 = *(v18 + 16);
          if (v19)
          {
LABEL_32:
            if (v19 < 1)
            {
              v20 = _swiftEmptyArrayStorage;
            }

            else
            {
              sub_1001F1160(&unk_100AD8160, &unk_100813160);
              v20 = swift_allocObject();
              v21 = j__malloc_size_1(v20);
              v22 = v21 - 32;
              if (v21 < 32)
              {
                v22 = v21 - 25;
              }

              v20[2] = v19;
              v20[3] = ((2 * (v22 >> 3)) | 1);
            }

            v25 = sub_1005D6D74(v0 + 18, v20 + 4, v19, v18);
            v11 = sub_10004DC54(v0[18]);
            if (v25 == v19)
            {
              goto LABEL_43;
            }

LABEL_50:
            __break(1u);
            return _swift_continuation_await(v11);
          }
        }

LABEL_43:
        v26 = v0[31];
        isa = sub_1007A25D4().super.isa;
        v0[35] = isa;

        v0[10] = v0;
        v0[11] = sub_1005EC058;
        v28 = swift_continuation_init();
        v0[25] = sub_1001F1160(&qword_100AED478, &qword_100835278);
        v0[18] = _NSConcreteStackBlock;
        v0[19] = 1107296256;
        v0[20] = sub_1005EB9D4;
        v0[21] = &unk_100A265E0;
        v0[22] = v28;
        [v26 deleteAssets:isa exhaustive:0 completion:v0 + 18];
        v11 = (v0 + 10);
        goto LABEL_46;
      }
    }

    else
    {
      v11 = *(v10 + 16);
      v0[32] = v11;
      if (v11)
      {
        goto LABEL_22;
      }
    }

LABEL_45:
    v29 = v0[31];
    sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    v30 = sub_1007A25D4().super.isa;
    v0[36] = v30;

    v0[2] = v0;
    v0[3] = sub_1005EC54C;
    v31 = swift_continuation_init();
    v0[25] = sub_1001F1160(&qword_100AED478, &qword_100835278);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1005EB9D4;
    v0[21] = &unk_100A265B8;
    v0[22] = v31;
    [v29 deleteAssets:v30 exhaustive:0 completion:v0 + 18];
    v11 = (v0 + 2);
LABEL_46:

    return _swift_continuation_await(v11);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1005EC058()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return _swift_task_switch(sub_1005EC160, v2, v1);
}

uint64_t sub_1005EC160()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 264) + 1;
  if (v2 == *(v0 + 256))
  {
LABEL_2:
    v3 = *(v0 + 248);
    sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    isa = sub_1007A25D4().super.isa;
    *(v0 + 288) = isa;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1005EC54C;
    v5 = swift_continuation_init();
    *(v0 + 200) = sub_1001F1160(&qword_100AED478, &qword_100835278);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1005EB9D4;
    *(v0 + 168) = &unk_100A265B8;
    *(v0 + 176) = v5;
    [v3 deleteAssets:isa exhaustive:0 completion:v0 + 144];
    v6 = v0 + 16;
    goto LABEL_3;
  }

  while (1)
  {
    *(v0 + 264) = v2;
    v7 = *(v0 + 240);
    v8 = (v7 & 0xC000000000000001) != 0 ? sub_1007A3784() : *(v7 + 8 * v2 + 32);
    v9 = v8;
    *(v0 + 272) = v8;
    if ([v8 isAudiobook])
    {
      v10 = [v9 supplementalContentAssets];
      if (v10)
      {
        break;
      }
    }

    v2 = *(v0 + 264) + 1;
    if (v2 == *(v0 + 256))
    {
      goto LABEL_2;
    }
  }

  v11 = v10;
  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  sub_100402738(&qword_100AD9FD0, &qword_100ADA990, BKLibraryAsset_ptr);
  v12 = sub_1007A2834();

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_1007A3624();
    if (v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = *(v12 + 16);
    if (v13)
    {
LABEL_15:
      if (v13 < 1)
      {
        v14 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1001F1160(&unk_100AD8160, &unk_100813160);
        v14 = swift_allocObject();
        v15 = j__malloc_size_1(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 25;
        }

        v14[2] = v13;
        v14[3] = ((2 * (v16 >> 3)) | 1);
      }

      v17 = sub_1005D6D74((v0 + 144), v14 + 4, v13, v12);
      v6 = sub_10004DC54(*(v0 + 144));
      if (v17 != v13)
      {
        __break(1u);
        return _swift_continuation_await(v6);
      }

      goto LABEL_23;
    }
  }

LABEL_23:
  v18 = *(v0 + 248);
  v19 = sub_1007A25D4().super.isa;
  *(v0 + 280) = v19;

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1005EC058;
  v20 = swift_continuation_init();
  *(v0 + 200) = sub_1001F1160(&qword_100AED478, &qword_100835278);
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1005EB9D4;
  *(v0 + 168) = &unk_100A265E0;
  *(v0 + 176) = v20;
  [v18 deleteAssets:v19 exhaustive:0 completion:v0 + 144];
  v6 = v0 + 80;
LABEL_3:

  return _swift_continuation_await(v6);
}

uint64_t sub_1005EC54C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return _swift_task_switch(sub_1005EC654, v2, v1);
}

uint64_t sub_1005EC654()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005EC6C8(uint64_t a1, uint64_t a2)
{
  v2[38] = a1;
  v2[39] = a2;
  sub_1007A26F4();
  v2[40] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[41] = v4;
  v2[42] = v3;

  return _swift_task_switch(sub_1005EC760, v4, v3);
}

uint64_t sub_1005EC760()
{
  v1 = v0[38];
  v0[43] = [objc_opt_self() defaultManager];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[44] = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:
    v13 = swift_task_alloc();
    v0[52] = v13;
    *v13 = v0;
    v13[1] = sub_1005ED2C8;
    v14 = v0[38];

    return sub_1005EDBA0(v14);
  }

LABEL_19:
  v21 = sub_1007A38D4();
  v0[44] = v21;
  if (!v21)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    v4 = v0[38];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_1007A3784();
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    v0[45] = v5;
    v0[46] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v7 = v0[43];
    v8 = swift_allocObject();
    v0[47] = v8;
    *(v8 + 16) = 0;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v6;
    v0[22] = sub_1005F536C;
    v0[23] = v9;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100201C54;
    v0[21] = &unk_100A26518;
    v10 = _Block_copy(v0 + 18);

    v11 = v6;

    [v7 performBlockOnWorkerQueueAndWait:v10];
    _Block_release(v10);
    swift_beginAccess();
    v12 = *(v8 + 16);
    v0[48] = v12;
    if (v12)
    {
      break;
    }

    v3 = v0[46];
    if (v3 == v0[44])
    {
      goto LABEL_11;
    }
  }

  v16 = v0[43];

  v17 = [v16 collectionController];
  v0[49] = v17;
  v18 = v11;
  sub_10068597C(v12);
  isa = sub_1007A2824().super.isa;
  v0[50] = isa;

  v0[2] = v0;
  v0[7] = v0 + 53;
  v0[3] = sub_1005ECB34;
  v20 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AE6E70, qword_10082AFF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1005EB504;
  v0[13] = &unk_100A26540;
  v0[14] = v20;
  [v17 removeBook:v18 fromCollections:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005ECB34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  if (v2)
  {

    v3 = *(v1 + 328);
    v4 = *(v1 + 336);
    v5 = sub_1005ED538;
  }

  else
  {
    v3 = *(v1 + 328);
    v4 = *(v1 + 336);
    v5 = sub_1005ECC4C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005ECC4C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);
  v3 = *(v0 + 312);
  swift_unknownObjectRelease();

  v4 = *(v0 + 384);
  if (!v3)
  {

    v12 = *(v0 + 8);

    return v12();
  }

  v5 = *(v0 + 312);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = v5;
    sub_1007A35E4();
    sub_10000A7C4(0, &unk_100AE5830, BKCollectionMember_ptr);
    sub_100402738(&qword_100AE2258, &unk_100AE5830, BKCollectionMember_ptr);
    v7 = sub_1007A2864();
    v4 = *(v0 + 192);
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    v11 = *(v0 + 224);
  }

  else
  {
    v14 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v11 = v16 & *(v4 + 56);

    v7 = v5;
    v10 = 0;
  }

  v17 = (v9 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v18 = v10;
  v19 = v11;
  v20 = v10;
  if (v11)
  {
LABEL_16:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v4 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (v22)
    {
      while (1)
      {
        v24 = v17;
        v25 = v8;
        v26 = v4;
        v27 = v22;
        v7 = [v22 collectionID];
        if (!v7)
        {
          goto LABEL_40;
        }

        v28 = v7;
        v50 = *(v0 + 312);
        v51 = *(v0 + 360);
        v29 = sub_1007A2254();
        v31 = v30;

        sub_1004146B0(v50, v51, v29, v31);

        v10 = v20;
        v11 = v21;
        v4 = v26;
        v8 = v25;
        v17 = v24;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_18:
        v23 = sub_1007A3654();
        if (v23)
        {
          *(v0 + 296) = v23;
          sub_10000A7C4(0, &unk_100AE5830, BKCollectionMember_ptr);
          swift_dynamicCast();
          v22 = *(v0 + 288);
          v20 = v10;
          v21 = v11;
          if (v22)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_23:
    v32 = *(v0 + 360);
    v33 = *(v0 + 312);
    sub_10004DC54(v4);

    v34 = *(v0 + 368);
    if (v34 == *(v0 + 352))
    {
LABEL_31:
      v43 = swift_task_alloc();
      *(v0 + 416) = v43;
      *v43 = v0;
      v43[1] = sub_1005ED2C8;
      v44 = *(v0 + 304);

      return sub_1005EDBA0(v44);
    }

    while (1)
    {
      v35 = *(v0 + 304);
      if ((v35 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        if (v34 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v7 = *(v35 + 8 * v34 + 32);
      }

      v36 = v7;
      *(v0 + 360) = v7;
      *(v0 + 368) = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v37 = *(v0 + 344);
      v38 = swift_allocObject();
      *(v0 + 376) = v38;
      *(v38 + 16) = 0;
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      *(v39 + 24) = v36;
      *(v0 + 176) = sub_1005F536C;
      *(v0 + 184) = v39;
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_100201C54;
      *(v0 + 168) = &unk_100A26518;
      v40 = _Block_copy((v0 + 144));

      v41 = v36;

      [v37 performBlockOnWorkerQueueAndWait:v40];
      _Block_release(v40);
      swift_beginAccess();
      v42 = *(v38 + 16);
      *(v0 + 384) = v42;
      if (v42)
      {
        v45 = *(v0 + 344);

        v46 = [v45 collectionController];
        *(v0 + 392) = v46;
        v47 = v41;
        sub_10068597C(v42);
        isa = sub_1007A2824().super.isa;
        *(v0 + 400) = isa;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 424;
        *(v0 + 24) = sub_1005ECB34;
        v49 = swift_continuation_init();
        *(v0 + 136) = sub_1001F1160(&unk_100AE6E70, qword_10082AFF0);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1005EB504;
        *(v0 + 104) = &unk_100A26540;
        *(v0 + 112) = v49;
        [v46 removeBook:v47 fromCollections:isa completion:v0 + 80];
        v7 = (v0 + 16);

        return _swift_continuation_await(v7);
      }

      v34 = *(v0 + 368);
      if (v34 == *(v0 + 352))
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_23;
      }

      v19 = *(v8 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return _swift_continuation_await(v7);
}

uint64_t sub_1005ED2C8()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return _swift_task_switch(sub_1005ED3E8, v3, v2);
}

void sub_1005ED3E8()
{
  v1 = *(v0 + 312);

  if (!v1)
  {
LABEL_12:

    v14 = *(v0 + 8);

    v14();
    return;
  }

  v2 = *(v0 + 352);
  v15 = *(v0 + 312);
  if (!v2)
  {
LABEL_11:

    goto LABEL_12;
  }

  v3 = 0;
  v4 = *(v0 + 304);
  v16 = v4 & 0xC000000000000001;
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  v6 = v4 + 32;
  while (1)
  {
    if (v16)
    {
      v7 = sub_1007A3784();
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_16;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v10 = *(v0 + 352);
    v11 = *(v0 + 312);
    v12 = sub_1007A2254();
    sub_1004146B0(v11, v8, v12, v13);

    ++v3;
    if (v9 == v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1005ED538(uint64_t a1)
{
  v39 = v1;
  v2 = v1[50];
  v3 = v1[45];
  swift_willThrow();
  swift_unknownObjectRelease();

  if (qword_100AD1928 != -1)
  {
LABEL_21:
    swift_once();
  }

  v4 = v1[45];
  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100AED458);
  v6 = v4;
  swift_errorRetain();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29B4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[45];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v10 permanentOrTemporaryAssetID];
    v13 = sub_1007A2254();
    v15 = v14;

    v16 = sub_1000070F4(v13, v15, v38);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v17 = sub_1007A3B84();
    v19 = sub_1000070F4(v17, v18, v38);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error removing book from collections. assetID: %s error: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = v1[46];
  if (v20 == v1[44])
  {
LABEL_13:
    v30 = swift_task_alloc();
    v1[52] = v30;
    *v30 = v1;
    v30[1] = sub_1005ED2C8;
    v31 = v1[38];

    return sub_1005EDBA0(v31);
  }

  else
  {
    while (1)
    {
      v21 = v1[38];
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = sub_1007A3784();
      }

      else
      {
        if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v22 = *(v21 + 8 * v20 + 32);
      }

      v23 = v22;
      v1[45] = v22;
      v1[46] = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v24 = v1[43];
      v25 = swift_allocObject();
      v1[47] = v25;
      *(v25 + 16) = 0;
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = v23;
      v1[22] = sub_1005F536C;
      v1[23] = v26;
      v1[18] = _NSConcreteStackBlock;
      v1[19] = 1107296256;
      v1[20] = sub_100201C54;
      v1[21] = &unk_100A26518;
      v27 = _Block_copy(v1 + 18);

      v28 = v23;

      [v24 performBlockOnWorkerQueueAndWait:v27];
      _Block_release(v27);
      swift_beginAccess();
      v29 = *(v25 + 16);
      v1[48] = v29;
      if (v29)
      {
        break;
      }

      v20 = v1[46];
      if (v20 == v1[44])
      {
        goto LABEL_13;
      }
    }

    v33 = v1[43];

    v34 = [v33 collectionController];
    v1[49] = v34;
    v35 = v28;
    sub_10068597C(v29);
    isa = sub_1007A2824().super.isa;
    v1[50] = isa;

    v1[2] = v1;
    v1[7] = v1 + 53;
    v1[3] = sub_1005ECB34;
    v37 = swift_continuation_init();
    v1[17] = sub_1001F1160(&unk_100AE6E70, qword_10082AFF0);
    v1[10] = _NSConcreteStackBlock;
    v1[11] = 1107296256;
    v1[12] = sub_1005EB504;
    v1[13] = &unk_100A26540;
    v1[14] = v37;
    [v34 removeBook:v35 fromCollections:isa completion:v1 + 10];

    return _swift_continuation_await(v1 + 2);
  }
}

double sub_1005EDAD0(int a1, uint64_t a2, id a3)
{
  v4 = [a3 collectionMembers];
  if (v4)
  {
    v5 = v4;
    sub_10000A7C4(0, &unk_100AE5830, BKCollectionMember_ptr);
    sub_100402738(&qword_100AE2258, &unk_100AE5830, BKCollectionMember_ptr);
    v6 = sub_1007A2834();
  }

  else
  {
    v6 = 0;
  }

  swift_beginAccess();
  *(a2 + 16) = v6;

  return result;
}

uint64_t sub_1005EDBA0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1007A26F4();
  v1[4] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1005EDC3C, v3, v2);
}

uint64_t sub_1005EDC3C(uint64_t a1)
{
  v2 = v1[2];
  if (v2 >> 62)
  {
    v3 = sub_1007A38D4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = sub_1003BD0CC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return withCheckedContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = 0;
    v13 = v2 & 0xC000000000000001;
    v26 = v1[2] + 32;
    do
    {
      if (v13)
      {
        v14 = sub_1007A3784();
      }

      else
      {
        v14 = *(v26 + 8 * v12);
      }

      v15 = v14;
      v16 = [v14 permanentOrTemporaryAssetID];
      v17 = sub_1007A2254();
      v19 = v18;

      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_1003BD0CC((v20 > 1), v21 + 1, 1);
      }

      ++v12;
      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
    }

    while (v3 != v12);
  }

  v1[7] = _swiftEmptyArrayStorage;
  v23 = sub_1007A26E4();
  v1[8] = v23;
  v24 = swift_task_alloc();
  v1[9] = v24;
  *(v24 + 16) = _swiftEmptyArrayStorage;
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_1005EDE6C;
  v6 = &protocol witness table for MainActor;
  v9 = sub_1005F5374;
  v8 = 0x80000001008E0B60;
  v11 = &type metadata for () + 8;
  v5 = v23;
  v7 = 0xD000000000000026;
  v10 = v24;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1005EDE6C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1004EA6AC, v3, v2);
}

uint64_t sub_1005EDFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  v3[25] = swift_task_alloc();
  v3[26] = sub_1007A26F4();
  v3[27] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[28] = v5;
  v3[29] = v4;

  return _swift_task_switch(sub_1005EE0C8, v5, v4);
}

uint64_t sub_1005EE0C8()
{
  v1 = [*(v0 + 184) collectionID];
  if (!v1)
  {
    sub_1007A2254();
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1007A2254();
  v5 = v4;

  v6 = sub_1007A2254();
  if (!v5)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v3 != v6 || v5 != v7)
  {
    v9 = sub_1007A3AB4();

    if (v9)
    {
      goto LABEL_24;
    }

LABEL_11:
    v10 = *(v0 + 176);
    if (v10 >> 62)
    {
      v11 = sub_1007A38D4();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11)
    {
      v12 = sub_1007A37F4();
      if (v11 < 0)
      {
        __break(1u);
        return _swift_continuation_await(v12);
      }

      v13 = 0;
      v24 = *(v0 + 176) + 32;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = sub_1007A3784();
        }

        else
        {
          v14 = *(v24 + 8 * v13);
        }

        v15 = v14;
        ++v13;
        [objc_allocWithZone(NSNumber) initWithShort:{objc_msgSend(v14, "contentType")}];

        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
      }

      while (v11 != v13);
    }

    *(v0 + 248) = _swiftEmptyArrayStorage;
    v16 = *(v0 + 184);
    v17 = [objc_opt_self() defaultManager];
    v18 = [v17 collectionController];
    *(v0 + 256) = v18;

    sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    isa = sub_1007A25D4().super.isa;
    *(v0 + 264) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 280;
    *(v0 + 24) = sub_1005EE744;
    v20 = swift_continuation_init();
    *(v0 + 136) = sub_1001F1160(&unk_100AE6E70, qword_10082AFF0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1005EB504;
    *(v0 + 104) = &unk_100A26608;
    *(v0 + 112) = v20;
    [v18 removeBooks:isa fromCollection:v16 completion:v0 + 80];
    v12 = v0 + 16;

    return _swift_continuation_await(v12);
  }

LABEL_24:
  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  *v21 = v0;
  v21[1] = sub_1005EE4A4;
  v22 = *(v0 + 176);

  return sub_1005EDBA0(v22);
}

uint64_t sub_1005EE4A4()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1005EE5C4, v3, v2);
}

id sub_1005EE5C4()
{
  v1 = *(v0 + 176);

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    v13 = *(v0 + 8);

    return v13();
  }

LABEL_14:
  v2 = sub_1007A38D4();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v3 = 0;
  v14 = v1 & 0xFFFFFFFFFFFFFF8;
  v15 = v1 & 0xC000000000000001;
  v1 = *(v0 + 176) + 32;
  while (1)
  {
    if (v15)
    {
      v4 = sub_1007A3784();
    }

    else
    {
      if (v3 >= *(v14 + 16))
      {
        goto LABEL_13;
      }

      v4 = *(v1 + 8 * v3);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    result = [*(v0 + 184) collectionID];
    if (!result)
    {
      break;
    }

    v8 = result;
    v9 = *(v0 + 192);
    v10 = sub_1007A2254();
    v12 = v11;

    sub_1004146B0(v9, v5, v10, v12);

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005EE744()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {

    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = sub_1005EEAB0;
  }

  else
  {
    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = sub_1005EE85C;
  }

  return _swift_task_switch(v5, v3, v4);
}

void sub_1005EE85C()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 280);
  swift_unknownObjectRelease();

  if (v2 != 1)
  {

LABEL_17:

    v24 = *(v0 + 8);

    v24();
    return;
  }

  v3 = *(v0 + 176);
  if (v3 >> 62)
  {
    v4 = sub_1007A38D4();
    if (!v4)
    {
LABEL_16:
      v17 = *(v0 + 248);
      v18 = *(v0 + 200);
      v19 = *(v0 + 184);
      v20 = sub_1007A2744();
      (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
      v21 = v19;
      v22 = sub_1007A26E4();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = &protocol witness table for MainActor;
      v23[4] = v17;
      v23[5] = v21;
      sub_1003457A0(0, 0, v18, &unk_100835318, v23);

      goto LABEL_17;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  v5 = 0;
  v6 = *(v0 + 176);
  v25 = v6 & 0xFFFFFFFFFFFFFF8;
  v26 = v6 & 0xC000000000000001;
  v7 = v6 + 32;
  while (1)
  {
    if (v26)
    {
      v8 = sub_1007A3784();
    }

    else
    {
      if (v5 >= *(v25 + 16))
      {
        goto LABEL_21;
      }

      v8 = *(v7 + 8 * v5);
    }

    v9 = v8;
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v11 = [*(v0 + 184) collectionID];
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = v11;
    v13 = *(v0 + 192);
    v14 = sub_1007A2254();
    v16 = v15;

    sub_1004146B0(v13, v9, v14, v16);

    ++v5;
    if (v10 == v4)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}