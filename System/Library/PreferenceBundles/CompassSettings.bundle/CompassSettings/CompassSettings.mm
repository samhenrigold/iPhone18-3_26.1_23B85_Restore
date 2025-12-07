id sub_1630()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

uint64_t sub_1668(void *a1)
{
  v2 = sub_1830(&qword_81C0, &qword_31D0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v11 - v4;
  *(swift_allocObject() + 16) = a1;
  v6 = a1;
  sub_1830(&qword_81C8, &qword_31D8);
  v7 = sub_2D8C();
  v8 = sub_1E84();
  v11[0] = v7;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_2E1C();
  *(swift_allocObject() + 16) = v6;
  sub_251C();
  v9 = v6;
  sub_2DDC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1830(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v30 = a2;
  sub_1830(&qword_8298, &qword_32F8);
  __chkstk_darwin();
  v34 = &v25 - v2;
  sub_2D6C();
  __chkstk_darwin();
  v32 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2D0C();
  v4 = *(v31 - 8);
  __chkstk_darwin();
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2E3C();
  __chkstk_darwin();
  v29 = sub_2D1C();
  v35 = *(v29 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2DAC();
  __chkstk_darwin();
  v9 = sub_2D8C();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C68();
  v13 = [objc_allocWithZone(PSSpecifier) init];
  [v13 setProperty:v33 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_2D9C();
  v25 = v11;
  sub_2D7C();
  sub_2E2C();
  *v6 = v12;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = v4 + 104;
  v16 = *(v4 + 104);
  v33 = v15;
  v17 = v31;
  v16(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v31);
  sub_2D5C();
  v28 = v8;
  sub_2D2C();
  sub_1830(&qword_82A8, &unk_3300);
  v18 = v34;
  *(swift_allocObject() + 16) = xmmword_31C0;
  sub_2E2C();
  *v6 = v12;
  v16(v6, v14, v17);
  sub_2D5C();
  sub_2D2C();
  sub_2D3C();
  v19 = sub_2D4C();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v18, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E84();
    v23 = v27;
    v22 = v28;
    v24 = v25;
    sub_2DCC();

    (*(v35 + 8))(v22, v29);
    (*(v26 + 8))(v24, v23);
    return (*(v20 + 8))(v18, v19);
  }

  return result;
}

uint64_t sub_1E44()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1E84()
{
  result = qword_81D0;
  if (!qword_81D0)
  {
    sub_2D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81D0);
  }

  return result;
}

uint64_t sub_1EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_2DBC();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_2D4C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_1830(&qword_8280, &qword_32E8);
  v3[15] = swift_task_alloc();
  v6 = sub_2CFC();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  sub_2E7C();
  v3[19] = sub_2E6C();
  v8 = sub_2E5C();

  return _swift_task_switch(sub_20C4, v8, v7);
}

uint64_t sub_20C4()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];

  sub_2DFC();
  sub_2CCC();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    sub_2A7C(v0[15]);
    sub_2DEC();
    sub_2E0C();
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    v0[2] = sub_2CDC();
    v0[3] = v10;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_2AE4();
    v11 = sub_2E8C();

    v13 = *(v11 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = -v13;
      v16 = v11 + 40;
      do
      {
        v17 = (v16 + 16 * v14++);
        while (1)
        {
          if ((v14 - 1) >= *(v11 + 16))
          {
            __break(1u);
            return result;
          }

          v18 = *(v17 - 1);
          v19 = *v17;
          v20 = HIBYTE(*v17) & 0xF;
          if ((*v17 & 0x2000000000000000) == 0)
          {
            v20 = v18 & 0xFFFFFFFFFFFFLL;
          }

          if (v20)
          {
            if (v18 != 0xD000000000000011 || 0x8000000000003340 != v19)
            {
              result = sub_2E9C();
              if ((result & 1) == 0)
              {
                break;
              }
            }
          }

          ++v14;
          v17 += 2;
          if (v15 + v14 == 1)
          {
            goto LABEL_21;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2B38(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v23 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          result = sub_2B38((v22 > 1), v23 + 1, 1);
          v24 = v23 + 1;
        }

        _swiftEmptyArrayStorage[2] = v24;
        v25 = &_swiftEmptyArrayStorage[2 * v23];
        v25[4] = v18;
        v25[5] = v19;
        v16 = v11 + 40;
      }

      while (v15 + v14);
    }

LABEL_21:

    v26 = _swiftEmptyArrayStorage[2];

    if (!v26)
    {
      sub_2CEC();
      if (v27)
      {
        v28 = v0[8];
        v29 = sub_2E4C();

        [v28 setSpecifierIdentifierToScrollAndHighlight:v29];
      }
    }

    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[16];
    v34 = v0[10];
    v33 = v0[11];
    v35 = v0[9];
    sub_2DEC();
    sub_2E0C();
    (*(v34 + 8))(v33, v35);
    (*(v31 + 8))(v30, v32);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_246C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2CC0;

  return sub_1EDC(a1, a2, v6);
}

unint64_t sub_251C()
{
  result = qword_81D8;
  if (!qword_81D8)
  {
    sub_2580(&qword_81C0, &qword_31D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81D8);
  }

  return result;
}

uint64_t sub_2580(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25CC()
{
  result = qword_81E0;
  if (!qword_81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81E0);
  }

  return result;
}

uint64_t sub_263C()
{
  v1 = sub_1830(&qword_81C0, &qword_31D0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v11 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  sub_1830(&qword_81C8, &qword_31D8);
  v7 = sub_2D8C();
  v8 = sub_1E84();
  v11[0] = v7;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_2E1C();
  *(swift_allocObject() + 16) = v6;
  sub_251C();
  v9 = v6;
  sub_2DDC();
  return (*(v2 + 8))(v4, v1);
}

id sub_2804@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_2874()
{
  sub_2580(&qword_81C0, &qword_31D0);
  sub_251C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_28D8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2988;

  return sub_1EDC(a1, a2, v6);
}

uint64_t sub_2988()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2A7C(uint64_t a1)
{
  v2 = sub_1830(&qword_8280, &qword_32E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2AE4()
{
  result = qword_8288;
  if (!qword_8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8288);
  }

  return result;
}

char *sub_2B38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2B58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2B58(char *result, int64_t a2, char a3, char *a4)
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
    sub_1830(&qword_8290, &qword_32F0);
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

unint64_t sub_2C68()
{
  result = qword_82A0;
  if (!qword_82A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_82A0);
  }

  return result;
}