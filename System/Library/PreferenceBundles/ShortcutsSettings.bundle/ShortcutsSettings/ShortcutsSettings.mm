unint64_t sub_18F0()
{
  result = qword_CA70;
  if (!qword_CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA70);
  }

  return result;
}

uint64_t sub_1960(void *a1)
{
  sub_2590(&qword_CA78, &qword_5E60);
  sub_2DEC();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = v15 - v6;
  *(swift_allocObject() + 16) = a1;
  v8 = a1;
  sub_2590(&qword_CA80, &qword_5E68);
  v9 = sub_4B08();
  sub_2DC4();
  v12 = sub_2CB0(v10, v11, &protocol conformance descriptor for PreferencesControllerView);
  v15[0] = v9;
  v15[1] = v12;
  swift_getOpaqueTypeConformance2();
  sub_4BD8();
  *(swift_allocObject() + 16) = v8;
  sub_27BC();
  v13 = v8;
  sub_4B98();
  return (*(v4 + 8))(v7, v1);
}

uint64_t sub_1B38(uint64_t a1)
{
  v3 = sub_4B38();
  __chkstk_darwin(v3 - 8);
  sub_4B08();
  sub_2DEC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CFC(0, &qword_CAC8, off_8288);
  v9 = [objc_allocWithZone(PSSpecifier) init];
  v10 = sub_4BF8();
  sub_2A74(a1, v10, v11, v9);
  sub_2E04();
  sub_4B18();
  sub_4AF8();
  sub_4B68();
  sub_2CFC(0, &qword_CAD0, NSBundle_ptr);
  if (!sub_4C38())
  {
    v12 = [objc_opt_self() mainBundle];
  }

  sub_2E10();
  sub_4B78();
  sub_2DC4();
  sub_2CB0(v13, v14, &protocol conformance descriptor for PreferencesControllerView);
  sub_2E10();
  sub_4B88();
  v15 = sub_2E10();
  sub_2D3C(v15, v16, v17);

  return (*(v5 + 8))(v8, v1);
}

uint64_t sub_1DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_4B38();
  v3[9] = v4;
  sub_2DDC(v4);
  v3[10] = v5;
  v3[11] = sub_2E1C();
  v6 = sub_4B58();
  v3[12] = v6;
  sub_2DDC(v6);
  v3[13] = v7;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v8 = sub_4AE8();
  v3[16] = v8;
  sub_2DDC(v8);
  v3[17] = v9;
  v3[18] = sub_2E1C();
  sub_2590(&qword_CA98, &qword_5E80);
  v3[19] = sub_2E1C();
  v10 = sub_4AD8();
  v3[20] = v10;
  sub_2DDC(v10);
  v3[21] = v11;
  v3[22] = sub_2E1C();
  sub_4C28();
  v3[23] = sub_4C18();
  v13 = sub_4C08();

  return _swift_task_switch(sub_1FEC, v13, v12);
}

uint64_t sub_1FEC()
{
  v2 = v0[19];
  v1 = v0[20];

  sub_4BB8();
  sub_4AA8();
  v3 = sub_2E10();
  v4(v3);
  if (sub_2990(v2, 1, v1) != 1)
  {
    (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
    sub_4BA8();
    v0[2] = sub_4AB8();
    v0[3] = v8;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_2A20();
    v9 = sub_4C48();

    v11 = 0;
    v12 = *(v9 + 16);
    v13 = v9 + 40;
    v14 = &_swiftEmptyArrayStorage;
LABEL_4:
    v15 = (v13 + 16 * v11);
    while (v12 != v11)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = HIBYTE(*v15) & 0xF;
      if ((*v15 & 0x2000000000000000) == 0)
      {
        v18 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        if (v16 != 0xD000000000000013 || 0x8000000000005A00 != v17)
        {
          sub_2E04();
          result = sub_4C58();
          if ((result & 1) == 0)
          {

            result = swift_isUniquelyReferenced_nonNull_native();
            v50 = v14;
            if ((result & 1) == 0)
            {
              result = sub_2868(0, *(v14 + 2) + 1, 1);
            }

            v13 = v9 + 40;
            v21 = *(v14 + 2);
            v20 = *(v14 + 3);
            v22 = v21 + 1;
            if (v21 >= v20 >> 1)
            {
              v24 = v21 + 1;
              v49 = v21;
              result = sub_2868((v20 > 1), v21 + 1, 1);
              v22 = v24;
              v21 = v49;
              v13 = v9 + 40;
              v14 = v50;
            }

            ++v11;
            *(v14 + 2) = v22;
            v23 = &v14[16 * v21];
            *(v23 + 4) = v16;
            *(v23 + 5) = v17;
            goto LABEL_4;
          }
        }
      }

      v15 += 2;
      ++v11;
    }

    v25 = *(v14 + 2);
    if (!v25)
    {
      v37 = sub_4AC8();
      if (v38)
      {
        v39 = v37;
        v40 = v38;
        v41 = v0[8];

        sub_2AF0(v39, v40, v41);
      }

      else
      {
        v25 = *(v14 + 2);
        if (v25)
        {
          goto LABEL_22;
        }
      }

LABEL_44:
      v43 = v0[21];
      v42 = v0[22];
      v44 = v0[20];
      v46 = v0[13];
      v45 = v0[14];
      v47 = v0[12];
      sub_4BC8();
      (*(v46 + 8))(v45, v47);
      (*(v43 + 8))(v42, v44);
      goto LABEL_45;
    }

    while (1)
    {
LABEL_22:
      v27 = *(v14 + 4);
      v26 = *(v14 + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v25 - 1) > *(v14 + 3) >> 1)
      {
        v14 = sub_2B54(isUniquelyReferenced_nonNull_native, v25, 1, v14);
      }

      sub_2C5C((v14 + 32));
      v29 = *(v14 + 2);
      memmove(v14 + 32, v14 + 48, 16 * v29 - 16);
      *(v14 + 2) = v29 - 1;
      v30 = v27 == 0xD000000000000019 && 0x8000000000005A20 == v26;
      if (v30 || (sub_4C58() & 1) != 0)
      {

        v31 = &unk_CAB8;
        v32 = off_8280;
      }

      else
      {
        if (v27 == 0xD000000000000015 && 0x8000000000005A40 == v26)
        {
        }

        else
        {
          v36 = sub_4C58();

          if ((v36 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v31 = &unk_CAA8;
        v32 = &off_8290;
      }

      sub_2CFC(0, v31, v32);
      sub_4B28();
      sub_2CB0(&qword_CAB0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_2E04();
      sub_4B48();
      v33 = sub_2E04();
      v34(v33);
LABEL_32:
      v25 = *(v14 + 2);
      if (!v25)
      {

        goto LABEL_44;
      }
    }
  }

  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  sub_29B8(v0[19]);
  sub_4BA8();
  sub_4BC8();
  (*(v7 + 8))(v5, v6);
LABEL_45:

  v48 = v0[1];

  return v48();
}

id sub_2528()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

id sub_2568@<X0>(void *a1@<X8>)
{
  result = sub_2528();
  *a1 = result;
  return result;
}

uint64_t sub_2590(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2618(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26C8;

  return sub_1DDC(a1, a2, v6);
}

uint64_t sub_26C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_27BC()
{
  result = qword_CA90;
  if (!qword_CA90)
  {
    sub_2820(&qword_CA78, &qword_5E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA90);
  }

  return result;
}

uint64_t sub_2820(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_2868(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2888(char *result, int64_t a2, char a3, char *a4)
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
    sub_2590(&qword_CAC0, &qword_5E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_29B8(uint64_t a1)
{
  v2 = sub_2590(&qword_CA98, &qword_5E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2A20()
{
  result = qword_CAA0;
  if (!qword_CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CAA0);
  }

  return result;
}

void sub_2A74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_4BE8();

  [a4 setProperty:a1 forKey:v6];
}

void sub_2AF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_4BE8();

  [a3 setSpecifierIdentifierToScrollAndHighlight:v4];
}

char *sub_2B54(char *result, int64_t a2, char a3, char *a4)
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
    sub_2590(&qword_CAC0, &qword_5E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2CB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2CFC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2D3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2D5C()
{
  sub_2820(&qword_CA78, &qword_5E60);
  sub_27BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2E1C()
{

  return swift_task_alloc();
}

id getWFShortcutsSettingsLogObject()
{
  if (qword_CCA0 != -1)
  {
    dispatch_once(&qword_CCA0, &stru_8610);
  }

  v1 = qword_CCA8;

  return v1;
}

void sub_3A64(id a1)
{
  qword_CCA8 = os_log_create(WFLogSubsystem, "ShortcutsSettings");

  _objc_release_x1();
}

id WFShortcutsSettingsLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFShortcutsSettingsGetValueForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:0 table:v3];

  return v6;
}