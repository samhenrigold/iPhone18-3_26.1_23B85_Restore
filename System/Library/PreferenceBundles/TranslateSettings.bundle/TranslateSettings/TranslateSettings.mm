unint64_t sub_1590()
{
  result = qword_8148;
  if (!qword_8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8148);
  }

  return result;
}

uint64_t sub_1600(uint64_t a1)
{
  sub_2A38();
  __chkstk_darwin();
  v2 = sub_2A08();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28D8(0, &qword_8198, LTUITranslateSettingsController_ptr);
  v6 = [objc_allocWithZone(PSSpecifier) init];
  [v6 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_2A18();
  sub_29F8();
  sub_2A68();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = sub_2A78();
  v11 = v10;
  LOBYTE(ObjCClassFromMetadata) = v12;
  sub_288C(&qword_8160, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_2A88();
  sub_2920(v9, v11, ObjCClassFromMetadata & 1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_18A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_2A38();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_2A58();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_29E8();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  sub_226C(&qword_8170, &qword_2E10);
  v3[19] = swift_task_alloc();
  v7 = sub_29D8();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  sub_2B18();
  v3[23] = sub_2B08();
  v9 = sub_2AF8();

  return _swift_task_switch(sub_1AF0, v9, v8);
}

uint64_t sub_1AF0()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];

  sub_2AB8();
  sub_29A8();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    sub_2544(v0[19]);
    sub_2AA8();
    sub_2AC8();
    (*(v9 + 8))(v7, v8);
    goto LABEL_39;
  }

  (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
  sub_2AA8();
  v0[2] = sub_29B8();
  v0[3] = v10;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_25AC();
  v11 = sub_2B28();

  v13 = *(v11 + 16);
  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

  v14 = 0;
  v15 = -v13;
  v16 = v11 + 40;
  v17 = _swiftEmptyArrayStorage;
  do
  {
    v18 = (v16 + 16 * v14++);
    while (1)
    {
      if ((v14 - 1) >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = HIBYTE(*v18) & 0xF;
      if ((*v18 & 0x2000000000000000) == 0)
      {
        v21 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        if (v19 != 0xD000000000000013 || 0x8000000000002E70 != v20)
        {
          result = sub_2B38();
          if ((result & 1) == 0)
          {
            break;
          }
        }
      }

      ++v14;
      v18 += 2;
      if (v15 + v14 == 1)
      {
        goto LABEL_23;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v46 = v16;
    if ((result & 1) == 0)
    {
      result = sub_2600(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      result = sub_2600((v23 > 1), v24 + 1, 1);
      v25 = v24 + 1;
    }

    _swiftEmptyArrayStorage[2] = v25;
    v26 = &_swiftEmptyArrayStorage[2 * v24];
    v26[4] = v19;
    v26[5] = v20;
    v16 = v46;
  }

  while (v15 + v14);
LABEL_23:

  v27 = _swiftEmptyArrayStorage[2];
  if (v27)
  {
    goto LABEL_24;
  }

  sub_29C8();
  if (v36)
  {
    v37 = v0[8];

    v38 = sub_2AE8();

    [v37 setSpecifierIdentifierToScrollAndHighlight:v38];

    goto LABEL_38;
  }

  v27 = _swiftEmptyArrayStorage[2];
  if (v27)
  {
LABEL_24:
    v28 = (v0[10] + 8);
    while (1)
    {
      v32 = *(v17 + 4);
      v31 = *(v17 + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v27 - 1) > *(v17 + 3) >> 1)
      {
        v17 = sub_272C(isUniquelyReferenced_nonNull_native, v27, 1, v17);
      }

      sub_2838((v17 + 32));
      v34 = *(v17 + 2);
      memmove(v17 + 32, v17 + 48, 16 * v34 - 16);
      *(v17 + 2) = v34 - 1;
      if (v32 == 0xD00000000000001ELL && 0x8000000000002E90 == v31)
      {
      }

      else
      {
        v35 = sub_2B38();

        if ((v35 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v29 = v0[11];
      v30 = v0[9];
      sub_28D8(0, &qword_8180, LTUITranslateSettingsDownloadController_ptr);
      sub_2A28();
      sub_288C(&qword_8188, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_2A48();
      (*v28)(v29, v30);
LABEL_27:
      v27 = *(v17 + 2);
      if (!v27)
      {

        goto LABEL_38;
      }
    }
  }

LABEL_38:
  v40 = v0[21];
  v39 = v0[22];
  v41 = v0[20];
  v43 = v0[13];
  v42 = v0[14];
  v44 = v0[12];
  sub_2AC8();
  (*(v43 + 8))(v42, v44);
  (*(v40 + 8))(v39, v41);
LABEL_39:

  v45 = v0[1];

  return v45();
}

uint64_t sub_2038()
{
  v1 = sub_226C(&qword_8150, &qword_2DF0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v11 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  sub_226C(&qword_8158, &qword_2DF8);
  v7 = sub_2A08();
  v8 = sub_288C(&qword_8160, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v11[0] = v7;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_2AD8();
  *(swift_allocObject() + 16) = v6;
  sub_2498();
  v9 = v6;
  sub_2A98();
  return (*(v2 + 8))(v4, v1);
}

id sub_2230@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_226C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_22F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23A4;

  return sub_18A0(a1, a2, v6);
}

uint64_t sub_23A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2498()
{
  result = qword_8168;
  if (!qword_8168)
  {
    sub_24FC(&qword_8150, &qword_2DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8168);
  }

  return result;
}

uint64_t sub_24FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2544(uint64_t a1)
{
  v2 = sub_226C(&qword_8170, &qword_2E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25AC()
{
  result = qword_8178;
  if (!qword_8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8178);
  }

  return result;
}

char *sub_2600(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2620(char *result, int64_t a2, char a3, char *a4)
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
    sub_226C(&qword_8190, &qword_2E18);
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

char *sub_272C(char *result, int64_t a2, char a3, char *a4)
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
    sub_226C(&qword_8190, &qword_2E18);
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

uint64_t sub_288C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_28D8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2920(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2940()
{
  sub_24FC(&qword_8150, &qword_2DF0);
  sub_2498();
  return swift_getOpaqueTypeConformance2();
}