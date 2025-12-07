id TTRBundleGet(uint64_t a1)
{
  if (qword_2E548[0] != -1)
  {
    sub_1FDF8();
  }

  v2 = qword_2E540;

  return v2;
}

void sub_1EA4(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = qword_2E540;
  qword_2E540 = v1;
}

void *sub_1F0C()
{
  v1 = [v0 modifiedTask];
  v4 = v1;
  if (v1)
  {
    v2 = v1;
    sub_2048C();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_204BC();
    }

    sub_204DC();
  }

  sub_2A94(&v4);
  return _swiftEmptyArrayStorage;
}

void *sub_1FF4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v1)
  {
    v2 = 0;
    v27 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v25 = v1;
    while (1)
    {
      if (v28)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_207AC();
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v26 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject tasks];
      sub_2958(0, &qword_2DBB0, INTask_ptr);
      v7 = sub_204AC();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_2087C();
      }

      else
      {
        v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2087C();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v9;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_2087C();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v29 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_207BC();
      v29 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2087C();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v31)
          {
            goto LABEL_43;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_29E8();
            for (i = 0; i != v15; ++i)
            {
              sub_29A0(&qword_2DBC0, &qword_223E8);
              v18 = sub_18BA8(v30, i, v7);
              v20 = *v19;
              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v29;
          if (v31 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v31);
            v22 = v21 + v31;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v29;
      if (v31 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
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
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_2087C();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_2364()
{
  v1 = *v0;
  v2 = [v1 tasks];
  if (v2)
  {
    v3 = v2;
    sub_2958(0, &qword_2DBB0, INTask_ptr);
    v4 = sub_204AC();

    return v4;
  }

  else
  {
    v6 = [v1 taskLists];
    if (!v6)
    {
      return _swiftEmptyArrayStorage;
    }

    v7 = v6;
    sub_2958(0, &qword_2DBB8, INTaskList_ptr);
    v8 = sub_204AC();

    v9 = sub_1FF4(v8);

    return v9;
  }
}

void *sub_2468(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v4;
  sub_2958(0, &qword_2DBB0, INTask_ptr);
  v6 = sub_204AC();

  return v6;
}

void *sub_24E8()
{
  v1 = [*v0 createdTaskList];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = [v1 tasks];

  sub_2958(0, &qword_2DBB0, INTask_ptr);
  v4 = sub_204AC();

  return v4;
}

uint64_t sub_2584(uint64_t a1, id *a2)
{
  result = sub_203FC();
  *a2 = 0;
  return result;
}

uint64_t sub_25FC(uint64_t a1, id *a2)
{
  v3 = sub_2040C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_267C@<X0>(uint64_t *a1@<X8>)
{
  sub_2041C();
  v2 = sub_203EC();

  *a1 = v2;
  return result;
}

uint64_t sub_26C0()
{
  sub_2041C();
  v0 = sub_2047C();

  return v0;
}

uint64_t sub_26FC(uint64_t a1)
{
  sub_2041C();
  sub_2044C();
}

Swift::Int sub_2750(uint64_t a1)
{
  sub_2041C();
  sub_2094C();
  sub_2044C();
  v1 = sub_2096C();

  return v1;
}

uint64_t sub_27C4(void *a1, uint64_t *a2)
{
  v2 = sub_2041C();
  v4 = v3;
  if (v2 == sub_2041C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2090C();
  }

  return v7 & 1;
}

uint64_t sub_284C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_203EC();

  *a2 = v3;
  return result;
}

uint64_t sub_2894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2041C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_28C0(uint64_t a1)
{
  v2 = sub_2C30(&qword_2DC00, &unk_22548);
  v3 = sub_2C30(&qword_2DC08, &unk_2249C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_2958(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_29A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_29E8()
{
  result = qword_2DBC8;
  if (!qword_2DBC8)
  {
    sub_2A4C(&qword_2DBC0, &qword_223E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2DBC8);
  }

  return result;
}

uint64_t sub_2A4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2A94(uint64_t a1)
{
  v2 = sub_29A0(&qword_2DBD0, &qword_223F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 initializeWithTake for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2B20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2B40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_2B7C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2C30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TTRIIntentsSnippetReminderCellViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

id sub_2CD8(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t destroy for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1)
{

  v2 = *(a1 + 88);
  if (v2 != 255)
  {
    sub_2D70(*(a1 + 72), *(a1 + 80), v2);
  }
}

void sub_2D70(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t initializeWithCopy for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;
  v9 = *(a2 + 88);
  v10 = v4;
  v11 = v5;

  if (v9 == 255)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v12 = *(a2 + 72);
    v13 = *(a2 + 80);
    sub_2CD8(v12, v13, v9);
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
    *(a1 + 88) = v9;
  }

  v14 = *(a2 + 96);
  *(a1 + 96) = v14;
  *(a1 + 104) = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  v17 = v14;

  return a1;
}

uint64_t assignWithCopy for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  v10 = *(a2 + 88);
  if (*(a1 + 88) == 255)
  {
    if (v10 == 255)
    {
      v19 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v19;
    }

    else
    {
      v16 = *(a2 + 72);
      v17 = *(a2 + 80);
      sub_2CD8(v16, v17, *(a2 + 88));
      *(a1 + 72) = v16;
      *(a1 + 80) = v17;
      *(a1 + 88) = v10;
    }
  }

  else if (v10 == 255)
  {
    sub_302C(a1 + 72);
    v18 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v18;
  }

  else
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    sub_2CD8(v11, v12, *(a2 + 88));
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    v15 = *(a1 + 88);
    *(a1 + 88) = v10;
    sub_2D70(v13, v14, v15);
  }

  v20 = *(a1 + 96);
  v21 = *(a2 + 96);
  *(a1 + 96) = v21;
  v22 = v21;

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

__n128 initializeWithTake for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t assignWithTake for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;

  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  v9 = *(a1 + 88);
  if (v9 == 255)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 88);
  if (v10 == 255)
  {
    sub_302C(a1 + 72);
LABEL_5:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_6;
  }

  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v10;
  sub_2D70(v11, v12, v9);
LABEL_6:
  v13 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v14 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v14;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3258(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_2CD8(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_2CD8(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_2D70(v6, v7, v8);
  return a1;
}

__n128 initializeWithTake for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_2D70(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_33E4(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_3400(uint64_t result, unsigned int a2)
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

char *sub_3428()
{
  v1 = sub_2020C();
  __chkstk_darwin(v1 - 8);
  v3 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2007C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v53 - v9;
  v11 = sub_2024C();
  __chkstk_darwin(v11 - 8);
  v12 = sub_2026C();
  v56 = *(v12 - 8);
  v57 = v12;
  __chkstk_darwin(v12);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2958(0, &qword_2E0E0, REMReminder_ptr);
  v66 = &protocol witness table for REMReminder;
  v63 = v0;
  v15 = v0;
  sub_2023C();
  sub_2025C();
  v16 = sub_2022C();
  v58 = v14;
  if (v16 || (v16 = [v15 title]) != 0)
  {
    v54 = v16;
    v55 = v8;
    v59 = v5;
    v60 = v4;
    sub_29A0(&qword_2DC48, &qword_22618);
    inited = swift_initStackObject();
    v61 = xmmword_22590;
    *(inited + 16) = xmmword_22590;
    *(inited + 32) = NSFontAttributeName;
    v18 = NSFontAttributeName;
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
    sub_2958(0, &qword_2DC50, UIFont_ptr);
    if (IsBoldTextEnabled)
    {
      v20 = sub_2063C();
    }

    else
    {
      v20 = sub_2064C();
    }

    *(inited + 40) = v20;
    v53[4] = sub_3DBC(inited);
    swift_setDeallocating();
    sub_469C(inited + 32, &qword_2DC58, &qword_22620);
    v21 = swift_initStackObject();
    *(v21 + 16) = v61;
    *(v21 + 32) = v18;
    *(v21 + 40) = sub_2065C();
    v53[3] = sub_3DBC(v21);
    swift_setDeallocating();
    sub_469C(v21 + 32, &qword_2DC58, &qword_22620);
    v14 = v58;
    sub_2021C();
    v53[2] = v3;
    sub_2005C();
    v59[1](v10, v60);
    v22 = swift_initStackObject();
    *(v22 + 16) = v61;
    *(v22 + 32) = NSForegroundColorAttributeName;
    sub_2958(0, &qword_2DC60, UIColor_ptr);
    v23 = NSForegroundColorAttributeName;
    *(v22 + 40) = sub_2067C();
    v53[1] = sub_3DBC(v22);
    swift_setDeallocating();
    sub_469C(v22 + 32, &qword_2DC58, &qword_22620);
    v24 = swift_initStackObject();
    *(v24 + 16) = v61;
    *(v24 + 32) = v23;
    v25 = v23;
    *(v24 + 40) = sub_2067C();
    v53[0] = sub_3DBC(v24);
    swift_setDeallocating();
    sub_469C(v24 + 32, &qword_2DC58, &qword_22620);
    v26 = swift_initStackObject();
    *(v26 + 16) = v61;
    *(v26 + 32) = v25;
    *(v26 + 40) = sub_2066C();
    sub_3DBC(v26);
    swift_setDeallocating();
    v5 = v59;
    sub_469C(v26 + 32, &qword_2DC58, &qword_22620);
    v27 = swift_initStackObject();
    *(v27 + 16) = v61;
    *(v27 + 32) = v25;
    *(v27 + 40) = [objc_opt_self() magentaColor];
    sub_3DBC(v27);
    swift_setDeallocating();
    sub_469C(v27 + 32, &qword_2DC58, &qword_22620);
    v28 = sub_200AC();
    sub_2009C();
    v29 = objc_allocWithZone(v28);
    v4 = v60;
    v30 = sub_2008C();
    v31 = v54;
    [v30 insertAttributedString:v54 atIndex:0];
    v32 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v30];

    v8 = v55;
  }

  else
  {
    v32 = 0;
  }

  sub_2021C();
  v33 = sub_2006C();
  v5[1](v8, v4);
  if (!(v33 >> 62))
  {
    v34 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    if (v34)
    {
      goto LABEL_9;
    }

LABEL_20:

    v37 = _swiftEmptyArrayStorage;
LABEL_21:
    v63 = v37;
    sub_29A0(&qword_2DC38, &qword_22610);
    sub_4638();
    sub_203CC();

    (*(v56 + 8))(v14, v57);
    return v32;
  }

  v34 = sub_2087C();
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_9:
  v62 = _swiftEmptyArrayStorage;
  result = sub_12AF0(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = v62;
    v38 = v33;
    v59 = v32;
    v60 = v33 & 0xC000000000000001;
    *&v61 = v33;
    do
    {
      if (v60)
      {
        v39 = sub_207AC();
      }

      else
      {
        v39 = *(v38 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = sub_2043C();
      v43 = v42;
      v44 = [v40 name];
      v45 = sub_2041C();
      v47 = v46;

      v63 = v41;
      v64 = v43;

      v67._countAndFlagsBits = v45;
      v67._object = v47;
      sub_2045C(v67);

      v48 = v63;
      v49 = v64;
      v62 = v37;
      v51 = v37[2];
      v50 = v37[3];
      if (v51 >= v50 >> 1)
      {
        sub_12AF0((v50 > 1), v51 + 1, 1);
        v37 = v62;
      }

      ++v36;
      v37[2] = v51 + 1;
      v52 = &v37[2 * v51];
      v52[4] = v48;
      v52[5] = v49;
      v38 = v61;
    }

    while (v34 != v36);

    v14 = v58;
    v32 = v59;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

unint64_t sub_3C24(uint64_t a1)
{
  sub_2041C();
  sub_2094C();
  sub_2044C();
  v2 = sub_2096C();

  return sub_3CB8(a1, v2);
}

unint64_t sub_3CB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2041C();
      v8 = v7;
      if (v6 == sub_2041C() && v8 == v9)
      {
        break;
      }

      v11 = sub_2090C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_3DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29A0(&qword_2DC68, qword_22628);
    v3 = sub_208BC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_3C24(v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_3EB4@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v75 = a2;
  v6 = sub_29A0(&qword_2DC10, &qword_225E8);
  __chkstk_darwin(v6 - 8);
  v76 = &v61 - v7;
  v8 = sub_29A0(&qword_2DC18, &qword_225F0);
  __chkstk_darwin(v8 - 8);
  v73 = &v61 - v9;
  v10 = sub_29A0(&qword_2DC20, &qword_225F8);
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - v11;
  v70 = sub_201DC();
  v13 = *(v70 - 8);
  __chkstk_darwin(v70);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29A0(&qword_2DC28, &qword_22600);
  __chkstk_darwin(v16 - 8);
  v18 = &v61 - v17;
  v19 = sub_201FC();
  __chkstk_darwin(v19 - 8);
  v20 = sub_29A0(&qword_2DC30, &qword_22608);
  __chkstk_darwin(v20 - 8);
  v22 = &v61 - v21;
  v23 = sub_201CC();
  v71 = *(v23 - 8);
  v72 = v23;
  __chkstk_darwin(v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2010C();
  (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  v78 = sub_2958(0, &qword_2E0E0, REMReminder_ptr);
  v79 = &protocol witness table for REMReminder;
  v77 = a1;
  v27 = a1;
  sub_201EC();
  v28 = sub_2026C();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  sub_2018C();
  sub_2015C();
  v29 = v70;
  v30 = (*(v13 + 88))(v15, v70);
  if (v30 == enum case for TTRReminderDetailViewModel.FlaggedState.supported(_:))
  {
    (*(v13 + 96))(v15, v29);
    LODWORD(v70) = *v15;
  }

  else
  {
    if (v30 != enum case for TTRReminderDetailViewModel.FlaggedState.unsupported(_:))
    {
      result = sub_208FC();
      __break(1u);
      return result;
    }

    LODWORD(v70) = 0;
  }

  v31 = v73;
  v32 = v27;
  v68 = sub_3428();
  v69 = v33;
  v73 = v34;
  v67 = sub_201BC();
  v65 = sub_2014C();
  v66 = sub_2016C();
  sub_2013C();
  v35 = sub_200DC();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v12, 1, v35) == 1)
  {
    sub_469C(v12, &qword_2DC20, &qword_225F8);
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v37 = sub_200CC();
    v63 = v38;
    v64 = v37;
    (*(v36 + 8))(v12, v35);
  }

  v39 = sub_2017C();
  v61 = v40;
  v62 = v39;
  sub_201AC();
  v41 = sub_200FC();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v31, 1, v41) == 1)
  {
    sub_469C(v31, &qword_2DC18, &qword_225F0);
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v43 = sub_200EC();
    v44 = v45;
    (*(v42 + 8))(v31, v41);
  }

  v46 = [v32 contactHandles];
  sub_2019C();
  v47 = v76;
  v48 = sub_2012C();
  v49 = v32;
  v50 = *(v48 - 8);
  if ((*(v50 + 48))(v47, 1, v48) == 1)
  {
    (*(v71 + 8))(v25, v72);

    result = sub_469C(v47, &qword_2DC10, &qword_225E8);
    v52 = 0;
  }

  else
  {
    v52 = sub_2011C();

    (*(v71 + 8))(v25, v72);
    result = (*(v50 + 8))(v47, v48);
  }

  if (v46)
  {
    v53 = 0;
  }

  else
  {
    v53 = -1;
  }

  v54 = v66;
  v55 = v65 & 1;
  *a4 = v67;
  *(a4 + 8) = v68;
  v56 = v74 & 1;
  *(a4 + 16) = v55;
  v57 = v75 & 1;
  *(a4 + 17) = v70;
  *(a4 + 18) = v56;
  *(a4 + 19) = v54 & 1;
  v58 = v63;
  *(a4 + 24) = v64;
  *(a4 + 32) = v58;
  v59 = v61;
  *(a4 + 40) = v62;
  *(a4 + 48) = v59;
  *(a4 + 56) = v43;
  *(a4 + 64) = v44;
  *(a4 + 72) = v46;
  *(a4 + 80) = 0;
  *(a4 + 88) = v53;
  *(a4 + 96) = v52;
  *(a4 + 104) = v57;
  v60 = v69;
  *(a4 + 112) = v73;
  *(a4 + 120) = v60;
  return result;
}

unint64_t sub_4638()
{
  result = qword_2DC40;
  if (!qword_2DC40)
  {
    sub_2A4C(&qword_2DC38, &qword_22610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2DC40);
  }

  return result;
}

uint64_t sub_469C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_4700()
{
  v1 = *&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;

  v3 = sub_203EC();

  [v2 setText:v3];

  v4 = *&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_topConstraint];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = 16.0;
  if (v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_isFirst])
  {
    v5 = 6.0;
  }

  [v4 setConstant:v5];

  [v0 layoutIfNeeded];
}

id sub_4924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_isFirst] = 0;
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_topConstraint] = 0;
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel] = 0;
  if (a3)
  {
    v8 = sub_203EC();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v8);

  return v9;
}

id sub_4A3C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_isFirst] = 0;
  *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_topConstraint] = 0;
  *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel] = 0;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_4B00()
{

  v1 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel);
}

id sub_4B54(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_4C10()
{
  result = sub_1FFBC();
  qword_2E850 = result;
  return result;
}

uint64_t sub_4C30()
{
  result = sub_1FFCC();
  qword_2E858 = result;
  return result;
}

uint64_t sub_4C50()
{
  result = sub_1FFDC();
  qword_2E860 = result;
  return result;
}

void sub_4C70()
{
  v1 = v0;
  sub_5824();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v3 = Strong;
  v4 = &v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v42[4] = *(v4 + 4);
  v42[5] = v5;
  v6 = *(v4 + 7);
  v42[6] = *(v4 + 6);
  v42[7] = v6;
  v7 = *(v4 + 1);
  v42[0] = *v4;
  v42[1] = v7;
  v8 = *(v4 + 3);
  v42[2] = *(v4 + 2);
  v42[3] = v8;
  v9 = 0;
  if (sub_7820(v42) != 1)
  {
    v9 = *(v4 + 1);
  }

  [v3 setAttributedText:v9];

  sub_5A6C();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v12 = *(v4 + 5);
  v41[4] = *(v4 + 4);
  v41[5] = v12;
  v13 = *(v4 + 7);
  v41[6] = *(v4 + 6);
  v41[7] = v13;
  v14 = *(v4 + 1);
  v41[0] = *v4;
  v41[1] = v14;
  v15 = *(v4 + 3);
  v41[2] = *(v4 + 2);
  v41[3] = v15;
  if (sub_7820(v41) == 1 || !*(v4 + 8))
  {
    v16 = 0;
  }

  else
  {

    v16 = sub_203EC();
  }

  [v11 setText:v16];

  v43._countAndFlagsBits = 0x6E6967617373654DLL;
  v43._object = 0xED00004025203A67;
  v44._object = 0x8000000000021BC0;
  v44._countAndFlagsBits = 0xD00000000000002FLL;
  v17 = sub_2001C(v43, v44);
  v19 = v18;
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = v20;
  sub_6B24(v1, v17, v19);
  v23 = v22;

  if (v23)
  {
    v24 = sub_203EC();
  }

  else
  {
    v24 = 0;
  }

  [v21 setText:v24];

  sub_63B8();
  [v1 layoutIfNeeded];
  v25 = *(v4 + 5);
  v40[4] = *(v4 + 4);
  v40[5] = v25;
  v26 = *(v4 + 7);
  v40[6] = *(v4 + 6);
  v40[7] = v26;
  v27 = *(v4 + 1);
  v40[0] = *v4;
  v40[1] = v27;
  v28 = *(v4 + 3);
  v40[2] = *(v4 + 2);
  v40[3] = v28;
  if (sub_7820(v40) != 1 && !v4[88])
  {
    v30 = *(v4 + 9);
    v29 = *(v4 + 10);
    sub_2CD8(v30, v29, 0);
    v31 = sub_503C(v38);
    v33 = v32;
    memmove(__dst, v32, 0x80uLL);
    if (sub_7820(__dst) != 1)
    {
      v34 = *(v33 + 9);
      v35 = *(v33 + 10);
      *(v33 + 9) = 0;
      *(v33 + 10) = 0;
      v36 = *(v33 + 88);
      *(v33 + 88) = 2;
      sub_7838(v34, v35, v36);
    }

    v31(v38, 0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_202AC();
      swift_unknownObjectRelease();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = sub_2031C();
      sub_2032C();

      sub_7838(v30, v29, 0);
    }

    else
    {
      sub_7838(v30, v29, 0);
    }
  }
}

uint64_t (*sub_503C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_50A0;
}

uint64_t sub_50A0(uint64_t a1, char a2)
{
  if (a2)
  {

    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return sub_4C70();
  }
}

void *sub_50DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19.receiver = v2;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "prepareForReuse");
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_51F8();

    sub_79F4(v17);
    v6 = &v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
    swift_beginAccess();
    v7 = *(v6 + 5);
    v18[4] = *(v6 + 4);
    v18[5] = v7;
    v8 = *(v6 + 7);
    v18[6] = *(v6 + 6);
    v18[7] = v8;
    v9 = *(v6 + 1);
    v18[0] = *v6;
    v18[1] = v9;
    v10 = *(v6 + 3);
    v18[2] = *(v6 + 2);
    v18[3] = v10;
    v11 = v17[0];
    v12 = v17[1];
    v13 = v17[3];
    *(v6 + 2) = v17[2];
    *(v6 + 3) = v13;
    *v6 = v11;
    *(v6 + 1) = v12;
    v14 = v17[4];
    v15 = v17[5];
    v16 = v17[7];
    *(v6 + 6) = v17[6];
    *(v6 + 7) = v16;
    *(v6 + 4) = v14;
    *(v6 + 5) = v15;
    sub_469C(v18, &qword_2E120, &qword_228F0);
    sub_4C70();
    *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_delegate + 8] = 0;
    return swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_51F8()
{
  v1 = v0;
  v2 = [v0 arrangedSubviews];
  sub_2958(0, &qword_2DD68, UIView_ptr);
  v3 = sub_204AC();

  if (v3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2087C())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v14 = v3;
    while (1)
    {
      if (v6)
      {
        v9 = sub_207AC();
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_13;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v1 removeArrangedSubview:v9];
      isa = [v10 constraints];
      if (!isa)
      {
        sub_2958(0, &qword_2DD58, NSLayoutConstraint_ptr);
        sub_204AC();
        isa = sub_2049C().super.isa;
        v3 = v14;
      }

      [objc_opt_self() deactivateConstraints:isa];

      [v10 removeFromSuperview];
      sub_29A0(&qword_2DD50, &unk_22710);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22660;
      *(inited + 32) = v10;
      sub_10308(inited);
      ++v5;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  return _swiftEmptyArrayStorage;
}

id sub_55EC(uint64_t a1, uint64_t a2)
{
  v19.receiver = v2;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v3 = &v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
  swift_beginAccess();
  v4 = *(v3 + 5);
  v20[4] = *(v3 + 4);
  v20[5] = v4;
  v5 = *(v3 + 7);
  v20[6] = *(v3 + 6);
  v20[7] = v5;
  v6 = *(v3 + 1);
  v20[0] = *v3;
  v20[1] = v6;
  v7 = *(v3 + 3);
  v20[2] = *(v3 + 2);
  v20[3] = v7;
  v8 = sub_7820(v20) == 1 || (v3[104] & 1) == 0;
  [v2 setSeparatorStyle:v8];
  v9 = *(v3 + 5);
  v18[4] = *(v3 + 4);
  v18[5] = v9;
  v10 = *(v3 + 7);
  v18[6] = *(v3 + 6);
  v18[7] = v10;
  v11 = *(v3 + 1);
  v18[0] = *v3;
  v18[1] = v11;
  v12 = *(v3 + 3);
  v18[2] = *(v3 + 2);
  v18[3] = v12;
  v13 = 16.0;
  if (sub_7820(v18) != 1)
  {
    if (v3[18])
    {
      v13 = 52.0;
    }

    else
    {
      v13 = 16.0;
    }
  }

  v14 = sub_5794();
  v16 = v15;

  [v16 setConstant:v13];
  [v2 separatorInset];
  return [v2 setSeparatorInset:?];
}

id sub_5794()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  v3 = *&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  v4 = *&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton + 8];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = sub_6880(v1);
    v8 = v7;
    v9 = *v2;
    v10 = *(v2 + 1);
    *v2 = v6;
    *(v2 + 1) = v7;
    v5 = v6;
    v8;
    sub_794C(v9, v10);
  }

  sub_798C(v3, v4);
  return v5;
}

void sub_5824()
{
  v1 = v0;
  v2 = sub_5794();

  v4 = (v1 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel);
  swift_beginAccess();
  v5 = v4[5];
  v23[4] = v4[4];
  v23[5] = v5;
  v6 = v4[7];
  v23[6] = v4[6];
  v23[7] = v6;
  v7 = v4[1];
  v23[0] = *v4;
  v23[1] = v7;
  v8 = v4[3];
  v23[2] = v4[2];
  v23[3] = v8;
  if (sub_7820(v23) == 1 || (v4[1] & 1) == 0)
  {
    if (qword_2DB78 != -1)
    {
      swift_once();
    }

    v9 = &qword_2E858;
  }

  else
  {
    if (qword_2DB70 != -1)
    {
      swift_once();
    }

    v9 = &qword_2E850;
  }

  v10 = *v9;
  v11 = *v9;
  sub_8314(v10);

  v12 = OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton;
  v13 = *(v1 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton);
  v14 = v4[5];
  v22[4] = v4[4];
  v22[5] = v14;
  v15 = v4[7];
  v22[6] = v4[6];
  v22[7] = v15;
  v16 = v4[1];
  v22[0] = *v4;
  v22[1] = v16;
  v17 = v4[3];
  v22[2] = v4[2];
  v22[3] = v17;
  sub_7820(v22);
  v18 = v13;
  v19 = sub_203EC();

  [v18 setAccessibilityIdentifier:v19];

  v20 = *(v1 + v12);
  v21 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
  [v20 setPreferredSymbolConfiguration:v21 forImageInState:0];
}

void sub_5A6C()
{
  v2 = (v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel);
  swift_beginAccess();
  v3 = v2[5];
  v94[4] = v2[4];
  v94[5] = v3;
  v4 = v2[7];
  v94[6] = v2[6];
  v94[7] = v4;
  v5 = v2[1];
  v94[0] = *v2;
  v94[1] = v5;
  v6 = v2[3];
  v94[2] = v2[2];
  v94[3] = v6;
  if (sub_7820(v94) == 1 || (v7 = *(v2 + 4)) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      [Strong setText:0];

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_35;
  }

  v92 = *(v2 + 3);
  v93 = v7;
  v8 = v2[5];
  v88 = v2[4];
  v89 = v8;
  v9 = v2[7];
  v90 = v2[6];
  v91 = v9;
  v10 = v2[1];
  v84 = *v2;
  v85 = v10;
  v11 = v2[3];
  v86 = v2[2];
  v87 = v11;
  if (sub_7820(&v84) == 1 || (*(v2 + 19) & 1) == 0)
  {
    v12 = &selRef_secondaryLabelColor;
  }

  else
  {
    v12 = &selRef_redColor;
  }

  v15 = objc_opt_self();

  v16 = [v15 *v12];
  v17 = v2[5];
  v83[4] = v2[4];
  v83[5] = v17;
  v18 = v2[7];
  v83[6] = v2[6];
  v83[7] = v18;
  v19 = v2[1];
  v83[0] = *v2;
  v83[1] = v19;
  v20 = v2[3];
  v83[2] = v2[2];
  v83[3] = v20;
  if (sub_7820(v83) != 1)
  {
    v21._object = *(v2 + 6);
    if (v21._object)
    {
      v21._countAndFlagsBits = *(v2 + 5);
      sub_2045C(v21);
      v95._countAndFlagsBits = 8236;
      v95._object = 0xE200000000000000;
      sub_2045C(v95);
    }
  }

  v1 = OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_timeTriggerLabel;
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v23 = v22;
  v24 = sub_203EC();
  [v23 setText:v24];

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v26 = v25;

  [v26 setTextColor:v16];

LABEL_15:
  v27 = v2[5];
  v88 = v2[4];
  v89 = v27;
  v28 = v2[7];
  v90 = v2[6];
  v91 = v28;
  v29 = v2[1];
  v84 = *v2;
  v85 = v29;
  v30 = v2[3];
  v86 = v2[2];
  v87 = v30;
  if (sub_7820(&v84) != 1)
  {
    v31 = *(v2 + 15);
    if (v31)
    {
      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v2[7] & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v33 = sub_2958(0, &qword_2DC50, UIFont_ptr);

        v82 = sub_2062C();
        isa = sub_2061C().super.isa;
        v72 = objc_opt_self();
        v35 = [v72 secondaryLabelColor];
        sub_29A0(&qword_2DD40, &unk_22700);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_22670;
        *(v36 + 32) = NSFontAttributeName;
        *(v36 + 40) = isa;
        v80 = v33;
        *(v36 + 64) = v33;
        *(v36 + 72) = NSForegroundColorAttributeName;
        v79 = sub_2958(0, &qword_2DC60, UIColor_ptr);
        *(v36 + 104) = v79;
        *(v36 + 80) = v35;
        v75 = NSFontAttributeName;
        v81 = isa;
        v73 = NSForegroundColorAttributeName;
        v37 = v35;
        sub_E244(v36);
        swift_setDeallocating();
        sub_29A0(&unk_2E130, &unk_22900);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v38 = objc_allocWithZone(NSAttributedString);
        v1 = sub_203EC();
        type metadata accessor for Key(0);
        sub_78F4();
        v39 = sub_2038C().super.isa;

        v40 = [v38 initWithString:v1 attributes:v39];

        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          v42 = v41;
          v1 = [v41 text];

          if (v1)
          {
            v43 = sub_2041C();
            v45 = HIBYTE(v44) & 0xF;
            if ((v44 & 0x2000000000000000) == 0)
            {
              v45 = v43 & 0xFFFFFFFFFFFFLL;
            }

            if (v45)
            {
              v96._countAndFlagsBits = 0x4025204025204025;
              v97._object = 0x8000000000021BF0;
              v96._object = 0xE800000000000000;
              v97._countAndFlagsBits = 0xD00000000000004FLL;
              sub_2001C(v96, v97);
              v46 = swift_unknownObjectWeakLoadStrong();
              if (!v46)
              {
LABEL_39:

                __break(1u);
                return;
              }

              v47 = v46;
              v70 = v40;
              v71 = v37;

              v48 = [v47 textColor];

              if (!v48)
              {
                v48 = [v72 secondaryLabelColor];
              }

              v49 = swift_allocObject();
              *(v49 + 32) = v75;
              *(v49 + 16) = xmmword_22670;
              *(v49 + 40) = v82;
              *(v49 + 64) = v80;
              *(v49 + 72) = v73;
              *(v49 + 104) = v79;
              *(v49 + 80) = v48;
              v50 = v75;
              v51 = v73;
              v76 = v50;
              v52 = v51;
              v74 = v82;
              v78 = v48;
              sub_E244(v49);
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v53 = objc_allocWithZone(NSAttributedString);
              v54 = sub_2038C().super.isa;

              v77 = [v53 initWithString:v1 attributes:v54];

              v55 = swift_allocObject();
              *(v55 + 16) = xmmword_22590;
              *(v55 + 32) = v52;
              *(v55 + 64) = v79;
              *(v55 + 40) = v71;
              v56 = v71;
              sub_E244(v55);
              swift_setDeallocating();
              sub_469C(v55 + 32, &unk_2E130, &unk_22900);
              swift_deallocClassInstance();
              v57 = objc_allocWithZone(NSAttributedString);
              v58 = sub_203EC();
              v59 = sub_2038C().super.isa;

              v60 = [v57 initWithString:v58 attributes:v59];

              sub_2958(0, &qword_2DD48, NSAttributedString_ptr);
              v61 = swift_allocObject();
              *(v61 + 16) = xmmword_22590;
              *(v61 + 32) = v76;
              *(v61 + 64) = v80;
              *(v61 + 40) = v74;
              v62 = v74;
              sub_E244(v61);
              swift_setDeallocating();
              sub_469C(v61 + 32, &unk_2E130, &unk_22900);
              swift_deallocClassInstance();
              sub_29A0(&qword_2DD50, &unk_22710);
              v63 = swift_allocObject();
              *(v63 + 16) = xmmword_22680;
              *(v63 + 32) = v77;
              *(v63 + 40) = v60;
              v40 = v70;
              *(v63 + 48) = v70;
              v64 = v77;
              v1 = v60;
              v65 = v70;
              v37 = v71;
              v66 = sub_205AC();

              goto LABEL_31;
            }
          }

          v66 = v40;
LABEL_31:
          v67 = swift_unknownObjectWeakLoadStrong();
          if (v67)
          {
            v68 = v67;
            v69 = v66;

            [v68 setAttributedText:v69];

            return;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }
  }
}

void sub_63B8()
{
  v1 = v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v21[4] = *(v1 + 64);
  v21[5] = v2;
  v3 = *(v1 + 112);
  v21[6] = *(v1 + 96);
  v21[7] = v3;
  v4 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v4;
  v5 = *(v1 + 48);
  v21[2] = *(v1 + 32);
  v21[3] = v5;
  if (sub_7820(v21) != 1 && *(v1 + 17) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }

    v7 = Strong;
    v8 = sub_6C98();
    [v7 addArrangedSubview:v8];
  }

  v9 = *(v1 + 80);
  v20[4] = *(v1 + 64);
  v20[5] = v9;
  v10 = *(v1 + 112);
  v20[6] = *(v1 + 96);
  v20[7] = v10;
  v11 = *(v1 + 16);
  v20[0] = *v1;
  v20[1] = v11;
  v12 = *(v1 + 48);
  v20[2] = *(v1 + 32);
  v20[3] = v12;
  if (sub_7820(v20) != 1)
  {
    v13 = *(v1 + 96);
    if (v13)
    {
      v14 = v13;
      v15 = sub_6F04();
      [v15 setImage:v14 forState:0];

      v16 = OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView;
      v17 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView);
      [v14 size];
      [v17 frame];
      [v17 setFrame:?];

      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        [v18 addArrangedSubview:*(v0 + v16)];

        return;
      }

      __break(1u);
LABEL_11:
      __break(1u);
    }
  }
}

void sub_6574(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_503C(v22);
    v8 = v7;
    memmove(__dst, v7, 0x80uLL);
    if (sub_7820(__dst) != 1)
    {
      v9 = *(v8 + 9);
      v10 = *(v8 + 10);
      *(v8 + 9) = v3;
      *(v8 + 10) = v2;
      v11 = *(v8 + 88);
      *(v8 + 88) = 1;

      sub_7838(v9, v10, v11);
    }

    v6(v22, 0);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v24._countAndFlagsBits = 0x6E6967617373654DLL;
    v24._object = 0xED00004025203A67;
    v25._object = 0x8000000000021BC0;
    v25._countAndFlagsBits = 0xD00000000000002FLL;
    v14 = sub_2001C(v24, v25);
    v16 = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_6B24(v13, v14, v16);
      v20 = v19;

      if (v20)
      {
        v21 = sub_203EC();
      }

      else
      {
        v21 = 0;
      }

      [v18 setText:v21];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_6748()
{
  v1 = &v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
  swift_beginAccess();
  v2 = *(v1 + 5);
  v14 = *(v1 + 4);
  v15 = v2;
  v3 = *(v1 + 7);
  v16 = *(v1 + 6);
  v17 = v3;
  v4 = *(v1 + 1);
  v10 = *v1;
  v11 = v4;
  v5 = *(v1 + 3);
  v12 = *(v1 + 2);
  v13 = v5;
  v18 = v10;
  v19 = v4;
  v20 = v12;
  v21 = v5;
  v22 = v14;
  v23 = v2;
  v24 = v16;
  v25 = v3;
  result = sub_7820(&v18);
  if (result != 1)
  {
    v9[4] = v22;
    v9[5] = v23;
    v9[6] = v24;
    v9[7] = v25;
    v9[0] = v18;
    v9[1] = v19;
    v9[2] = v20;
    v9[3] = v21;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8[4] = v14;
      v8[5] = v15;
      v8[6] = v16;
      v8[7] = v17;
      v8[0] = v10;
      v8[1] = v11;
      v8[2] = v12;
      v8[3] = v13;
      sub_7A7C(v8, &v7);
      sub_CD6C(v0, v9);
      swift_unknownObjectRelease();
      return sub_469C(&v10, &qword_2E120, &qword_228F0);
    }
  }

  return result;
}

id sub_6880(char *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TTRIVibrantCompletedButton(0)) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v2 leadingAnchor];
  v4 = [a1 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:16.0];

  v6 = [a1 contentView];
  [v6 addSubview:v2];

  sub_29A0(&qword_2DD50, &unk_22710);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22680;
  *(v7 + 32) = v5;
  v5;
  v8 = [v2 centerYAnchor];
  v9 = [a1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v7 + 40) = v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = objc_opt_self();
    v14 = [v12 leadingAnchor];

    v15 = [v2 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:12.0];

    *(v7 + 48) = v16;
    sub_2958(0, &qword_2DD58, NSLayoutConstraint_ptr);
    isa = sub_2049C().super.isa;

    [v13 activateConstraints:isa];

    [v2 addTarget:a1 action:"didTapCompleteButton:" forControlEvents:0x2000];
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v13[4] = *(v3 + 64);
  v13[5] = v4;
  v5 = *(v3 + 112);
  v13[6] = *(v3 + 96);
  v13[7] = v5;
  v6 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v6;
  v7 = *(v3 + 48);
  v13[2] = *(v3 + 32);
  v13[3] = v7;
  if (sub_7820(v13) == 1)
  {
    return 0;
  }

  if (*(v3 + 88) > 1u)
  {
    if (*(v3 + 88) != 2)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (!*(v3 + 88))
  {
LABEL_7:
    sub_29A0(&qword_2DD30, &qword_226F8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_22590;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_78A0();
    *(v12 + 32) = 3026478;
    *(v12 + 40) = 0xE300000000000000;
    return sub_2042C();
  }

  v10 = *(v3 + 72);
  v9 = *(v3 + 80);
  sub_29A0(&qword_2DD30, &qword_226F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22590;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_78A0();
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  sub_2CD8(v10, v9, 1);
  return sub_2042C();
}

char *sub_6C98()
{
  v1 = OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView;
  v2 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView);
  }

  else
  {
    v4 = v0;
    if (qword_2DB80 != -1)
    {
      swift_once();
    }

    v5 = qword_2E860;
    v6 = type metadata accessor for TTRIVibrantTemplateImageView();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image] = 0;
    v8 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
    v9 = objc_allocWithZone(UIImageView);
    v10 = v5;
    *&v7[v8] = [v9 init];
    v11 = [objc_opt_self() effectWithStyle:4];
    v12 = [objc_opt_self() effectForBlurEffect:v11 style:1];

    v25.receiver = v7;
    v25.super_class = v6;
    v13 = objc_msgSendSuper2(&v25, "initWithEffect:", v12);

    v14 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
    v15 = *&v13[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView];
    v16 = v13;
    [v15 setAutoresizingMask:18];
    [*&v13[v14] setUserInteractionEnabled:0];
    v17 = [v16 contentView];
    [v17 addSubview:*&v13[v14]];

    v18 = v10;
    sub_8B28(v5);

    v19 = *&v13[v14];
    v20 = *&v16[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image];
    if (v20)
    {
      v21 = [v20 imageWithRenderingMode:2];
    }

    else
    {
      v21 = 0;
    }

    [v19 setImage:v21];

    [v16 invalidateIntrinsicContentSize];
    v22 = *(v4 + v1);
    *(v4 + v1) = v16;
    v3 = v16;

    v2 = 0;
  }

  v23 = v2;
  return v3;
}

id sub_6F04()
{
  v1 = OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView;
  v2 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView);
  }

  else
  {
    sub_200BC();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 addTarget:v0 action:"didTapAppLinkButton:" forControlEvents:0x2000];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_6F9C()
{
  v1 = (v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel);
  swift_beginAccess();
  v2 = v1[5];
  v12 = v1[4];
  v13 = v2;
  v3 = v1[7];
  v14 = v1[6];
  v15 = v3;
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v10 = v1[2];
  v11 = v5;
  v16 = v9[0];
  v17 = v4;
  v18 = v10;
  v19 = v5;
  v20 = v12;
  v21 = v2;
  v22 = v14;
  v23 = v3;
  result = sub_7820(&v16);
  if (result != 1)
  {
    v8[4] = v20;
    v8[5] = v21;
    v8[6] = v22;
    v8[7] = v23;
    v8[0] = v16;
    v8[1] = v17;
    v8[2] = v18;
    v8[3] = v19;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_7A0C(v9, v7);
      sub_E568(v8);
      swift_unknownObjectRelease();
      return sub_469C(v9, &qword_2E120, &qword_228F0);
    }
  }

  return result;
}

uint64_t sub_70B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_206DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_469C(v9, &qword_2DD60, &unk_22720);
}

id sub_7140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
  sub_79F4(v17);
  v8 = v17[5];
  *(v7 + 4) = v17[4];
  *(v7 + 5) = v8;
  v9 = v17[7];
  *(v7 + 6) = v17[6];
  *(v7 + 7) = v9;
  v10 = v17[1];
  *v7 = v17[0];
  *(v7 + 1) = v10;
  v11 = v17[3];
  *(v7 + 2) = v17[2];
  *(v7 + 3) = v11;
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView] = 0;
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView] = 0;
  if (a3)
  {
    v13 = sub_203EC();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v13);

  return v14;
}

id sub_72FC(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
  sub_79F4(v14);
  v6 = v14[5];
  *(v5 + 4) = v14[4];
  *(v5 + 5) = v6;
  v7 = v14[7];
  *(v5 + 6) = v14[6];
  *(v5 + 7) = v7;
  v8 = v14[1];
  *v5 = v14[0];
  *(v5 + 1) = v8;
  v9 = v14[3];
  *(v5 + 2) = v14[2];
  *(v5 + 3) = v9;
  *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = &v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView] = 0;
  *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView] = 0;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

void sub_746C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 80);
  v5[4] = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 64);
  v5[5] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 112);
  v5[6] = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 96);
  v5[7] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 16);
  v5[0] = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel);
  v5[1] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 48);
  v5[2] = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 32);
  v5[3] = v4;
  sub_469C(v5, &qword_2E120, &qword_228F0);
  sub_79CC(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_delegate);
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  sub_794C(*(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton), *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton + 8));
}

void *_s21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCellC21CompletedButtonHolderVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

void destroy for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7820(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_7838(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2D70(a1, a2, a3);
  }
}

uint64_t sub_784C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_78A0()
{
  result = qword_2DD38;
  if (!qword_2DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2DD38);
  }

  return result;
}

unint64_t sub_78F4()
{
  result = qword_2DC00;
  if (!qword_2DC00)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2DC00);
  }

  return result;
}

void sub_794C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_798C(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

double sub_79F4(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_7A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A0(&qword_2E120, &qword_228F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_7ADC()
{
  v1 = [objc_opt_self() effectWithStyle:4];
  v2 = [objc_opt_self() effectForBlurEffect:v1 style:6];

  v3 = [v0 initWithEffect:v2];
  v4 = v3;
  [v4 setAutoresizingMask:18];
  v5 = [objc_allocWithZone(UIView) init];
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.5];

  [v5 setBackgroundColor:v7];
  [v5 setAutoresizingMask:18];
  v8 = [v4 contentView];

  [v8 addSubview:v5];
  return v4;
}

void sub_7D04()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TTRIVibrantTableCell();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = [v0 selectedBackgroundView];
  if (!v1 || (v2 = v1, type metadata accessor for TTRIVibrantTableCell.VibrantSelectedBackgroundView(), v3 = swift_dynamicCastClass(), v2, !v3))
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRIVibrantTableCell.VibrantSelectedBackgroundView()) init];
    [v0 setSelectedBackgroundView:v4];

    v5 = [objc_opt_self() ttr_systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.00390625];

    [v0 setBackgroundColor:v6];
  }

  v7 = [v0 selectedBackgroundView];
  if (v7)
  {
    v8 = v7;
    [v0 bounds];
    [v8 setFrame:?];
  }
}

id sub_7F44(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4, a2);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

char *sub_803C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image] = 0;
  v5 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
  *&v2[v5] = [objc_allocWithZone(UIImageView) init];
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
    v9 = *&v6[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView];
    v10 = v6;
    [v9 setAutoresizingMask:18];
    [*&v7[v8] setUserInteractionEnabled:0];
    v11 = [v10 contentView];
    [v11 addSubview:*&v7[v8]];

    sub_8B28(0);
    v12 = *&v7[v8];
    v13 = *&v10[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image];
    if (v13)
    {
      v14 = [v13 imageWithRenderingMode:2];
    }

    else
    {
      v14 = 0;
    }

    [v12 setImage:v14];

    [v10 invalidateIntrinsicContentSize];
  }

  return v7;
}

uint64_t type metadata accessor for TTRIVibrantCompletedButton(uint64_t a1)
{
  result = qword_2DE08;
  if (!qword_2DE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8314(void *a1)
{
  v2 = v1;
  v3 = qword_2DE00;
  v4 = *&v1[qword_2DE00];
  *&v2[qword_2DE00] = a1;
  v5 = a1;

  v6 = [v2 traitCollection];
  v7 = [v6 isAmbientPresented];

  if (v7)
  {
    v8 = *&v2[v3];
    v9 = type metadata accessor for TTRIVibrantCompletedButton(0);
    v14.receiver = v2;
    v14.super_class = v9;
    objc_msgSendSuper2(&v14, "setImage:forState:", v8, 0);
    v10 = [objc_opt_self() secondaryLabelColor];
    v13.receiver = v2;
    v13.super_class = v9;
    objc_msgSendSuper2(&v13, "setTintColor:", v10);
  }

  else
  {
    v11 = *&v2[v3];
    v12 = v11;
    sub_8B28(v11);
  }
}

char *sub_845C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIVibrantTemplateImageView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image] = 0;
  v4 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
  *&v3[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = [objc_opt_self() effectWithStyle:4];
  v6 = [objc_opt_self() effectForBlurEffect:v5 style:1];

  v22.receiver = v3;
  v22.super_class = v2;
  v7 = objc_msgSendSuper2(&v22, "initWithEffect:", v6);

  v8 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
  v9 = *&v7[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView];
  v10 = v7;
  [v9 setAutoresizingMask:18];
  [*&v7[v8] setUserInteractionEnabled:0];
  v11 = [v10 contentView];
  [v11 addSubview:*&v7[v8]];

  sub_8B28(0);
  v12 = *&v7[v8];
  v13 = *&v10[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image];
  if (v13)
  {
    v14 = [v13 imageWithRenderingMode:2];
  }

  else
  {
    v14 = 0;
  }

  v15 = qword_2DDF8;
  [v12 setImage:v14];

  [v10 invalidateIntrinsicContentSize];
  *&v1[v15] = v10;
  *&v1[qword_2DE00] = 0;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for TTRIVibrantCompletedButton(0);
  v16 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = qword_2DDF8;
  v18 = *&v16[qword_2DDF8];
  v19 = v16;
  [v18 setUserInteractionEnabled:0];
  [*&v16[v17] setAutoresizingMask:2];
  [v19 addSubview:*&v16[v17]];

  return v19;
}

char *sub_86E0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIVibrantTemplateImageView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image] = 0;
  v6 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
  *&v5[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = [objc_opt_self() effectWithStyle:4];
  v8 = [objc_opt_self() effectForBlurEffect:v7 style:1];

  v25.receiver = v5;
  v25.super_class = v4;
  v9 = objc_msgSendSuper2(&v25, "initWithEffect:", v8);

  v10 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
  v11 = *&v9[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView];
  v12 = v9;
  [v11 setAutoresizingMask:18];
  [*&v9[v10] setUserInteractionEnabled:0];
  v13 = [v12 contentView];
  [v13 addSubview:*&v9[v10]];

  sub_8B28(0);
  v14 = *&v9[v10];
  v15 = *&v12[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image];
  if (v15)
  {
    v16 = [v15 imageWithRenderingMode:2];
  }

  else
  {
    v16 = 0;
  }

  v17 = qword_2DDF8;
  [v14 setImage:v16];

  [v12 invalidateIntrinsicContentSize];
  *&v2[v17] = v12;
  *&v2[qword_2DE00] = 0;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for TTRIVibrantCompletedButton(0);
  v18 = objc_msgSendSuper2(&v24, "initWithCoder:", a1);
  v19 = v18;
  if (v18)
  {
    v20 = qword_2DDF8;
    v21 = *&v18[qword_2DDF8];
    v22 = v18;
    [v21 setUserInteractionEnabled:0];
    [*&v19[v20] setAutoresizingMask:2];
    [v22 addSubview:*&v19[v20]];
  }

  return v19;
}

void sub_8968(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for TTRIVibrantCompletedButton(0);
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v2 = *&v1[qword_2DDF8];
  [v1 intrinsicContentSize];
  [v2 frame];
  [v2 setFrame:?];
}

void sub_8A40()
{
  v1 = *(v0 + qword_2DE00);
}

id sub_8A9C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_8AD4(uint64_t a1)
{
  v2 = *(a1 + qword_2DE00);
}

id sub_8B28(void *a1)
{
  v2 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image;
  v3 = *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image];
  *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image] = a1;
  v4 = a1;

  v5 = *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView];
  v6 = *&v1[v2];
  if (v6)
  {
    v7 = [v6 imageWithRenderingMode:2];
  }

  else
  {
    v7 = 0;
  }

  [v5 setImage:v7];

  return [v1 invalidateIntrinsicContentSize];
}

uint64_t sub_8BD0()
{
  v0 = sub_2036C();
  sub_F9EC(v0, qword_2DE60);
  v1 = sub_F954(v0, qword_2DE60);
  if (qword_2DB98 != -1)
  {
    swift_once();
  }

  v2 = sub_F954(v0, qword_2E890);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_8C98()
{
  v0 = objc_allocWithZone(CNContactStore);

  return [v0 init];
}

void *sub_8CD0(uint64_t a1)
{
  v2 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v54 - v7);
  v9 = type metadata accessor for TTRIIntentsSnippetSection(0);
  __chkstk_darwin(v9);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = _swiftEmptyArrayStorage;
  v74 = _swiftEmptyArrayStorage;
  v59 = *(a1 + 16);
  if (!v59)
  {
    return v13;
  }

  v14 = 0;
  v58 = *(v9 + 24);
  v57 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v64 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_cachedReminders;
  v56 = *(v10 + 72);
  v15 = 1;
  v63 = v2;
  v55 = v8;
  v54 = v9;
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v61 = v14;
    sub_FC8C(v57 + v56 * v14, v12, type metadata accessor for TTRIIntentsSnippetSection);
    v73 = _swiftEmptyArrayStorage;
    v17 = v12[1];
    if (v17)
    {
      v18 = *v12;
      v19 = sub_29A0(&qword_2DFF8, &qword_22848);
      v20 = *(v19 + 48);
      v21 = v12;
      v22 = *(v19 + 64);
      *v8 = v18;
      v8[1] = v17;
      sub_FBB0(v21 + *(v9 + 20), v8 + v20, &qword_2E000, &qword_22850);
      *(v8 + v22) = v15 & 1;
      swift_storeEnumTagMultiPayload();

      v23 = sub_1199C(0, 1, 1, _swiftEmptyArrayStorage);
      v25 = v23[2];
      v24 = v23[3];
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1199C((v24 > 1), v25 + 1, 1, v23);
      }

      v23[2] = v25 + 1;
      sub_FC28(v8, v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25);
      v73 = v23;
      v12 = v60;
    }

    v26 = *(v12 + v58);
    v27 = v26 >> 62;
    if (v26 >> 62)
    {
      break;
    }

    v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    v69 = v28 - 1;
    if (v28)
    {
      goto LABEL_11;
    }

LABEL_4:
    v14 = v61 + 1;
    sub_10320(v13);
    v16 = v73;
    sub_FA50(v12, type metadata accessor for TTRIIntentsSnippetSection);
    sub_10320(v16);
    v15 = 0;
    v13 = _swiftEmptyArrayStorage;
    if (v14 == v59)
    {
      return v74;
    }
  }

  result = sub_2087C();
  v69 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_47;
  }

  v28 = sub_2087C();
  if (!v28)
  {
    goto LABEL_4;
  }

LABEL_11:
  v68 = v26;
  v72 = _swiftEmptyArrayStorage;
  result = sub_12B10(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v13 = v72;
    v30 = v68;
    if (v27)
    {
      v31 = sub_2087C();
    }

    else
    {
      v31 = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8));
    }

    result = swift_beginAccess();
    if (v31 >= 1)
    {
      v32 = v30;
      v33 = 0;
      v67 = v30 & 0xC000000000000001;
      v62 = v30 & 0xFFFFFFFFFFFFFF8;
      v34 = v28 - 1;
      v66 = v31;
      do
      {
        if (v67)
        {
          v35 = sub_207AC();
        }

        else
        {
          if (v33 >= *(v62 + 16))
          {
            goto LABEL_45;
          }

          v35 = *(v32 + 8 * v33 + 32);
        }

        v36 = v35;
        v37 = [v35 parentReminder];
        v38 = v37;
        if (v37)
        {
          v39 = [v37 objectID];
          v40 = *(v65 + v64);
          if ((v40 & 0xC000000000000001) != 0)
          {
            v41 = v39;

            v42 = sub_2085C();
            if (v42)
            {
              v70 = v42;
              sub_2958(0, &qword_2E0E0, REMReminder_ptr);
              swift_dynamicCast();
              v43 = *&v71[0];
LABEL_28:

              if (v43)
              {

                LODWORD(v38) = 1;
                goto LABEL_32;
              }
            }

            else
            {
            }

            LODWORD(v38) = 0;
            goto LABEL_32;
          }

          if (*(v40 + 16))
          {
            v41 = v39;

            v44 = sub_11F58(v41);
            if (v45)
            {
              v43 = *(*(v40 + 56) + 8 * v44);
              goto LABEL_28;
            }

            LODWORD(v38) = 0;
          }

          else
          {

            LODWORD(v38) = 0;
          }
        }

LABEL_32:
        v46 = v69 == v33;
        v47 = v36;
        sub_3EB4(v47, v46, v38, v71);
        v48 = v71[5];
        *(v6 + 72) = v71[4];
        *(v6 + 88) = v48;
        v49 = v71[7];
        *(v6 + 104) = v71[6];
        *(v6 + 120) = v49;
        v50 = v71[1];
        *(v6 + 8) = v71[0];
        *(v6 + 24) = v50;
        v51 = v71[3];
        *(v6 + 40) = v71[2];
        *v6 = v47;
        *(v6 + 56) = v51;
        swift_storeEnumTagMultiPayload();
        v72 = v13;
        v53 = v13[2];
        v52 = v13[3];
        if (v53 >= v52 >> 1)
        {
          sub_12B10((v52 > 1), v53 + 1, 1);
          v13 = v72;
        }

        v13[2] = v53 + 1;
        result = sub_FC28(v6, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v53);
        if (v34 == v33)
        {
          v8 = v55;
          v9 = v54;
          v12 = v60;
          goto LABEL_4;
        }

        ++v33;
        v32 = v68;
      }

      while (v66 != v33);
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

char *sub_9598(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v48 = a2[4];
  v49 = v3;
  v4 = a2[7];
  v50 = a2[6];
  v51 = v4;
  v5 = a2[1];
  v44 = *a2;
  v45 = v5;
  v6 = a2[3];
  v46 = a2[2];
  v47 = v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_203EC();
    isa = sub_1FF5C().super.isa;
    v11 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:isa];

    type metadata accessor for TTRIIntentsSnippetReminderViewCell();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      *(v12 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_delegate + 8) = &off_291B0;
      swift_unknownObjectWeakAssign();
      v39 = v48;
      v40 = v49;
      v41 = v50;
      v42 = v51;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      nullsub_2();
      v14 = &v13[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
      swift_beginAccess();
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 3);
      v43[2] = *(v14 + 2);
      v43[3] = v17;
      v43[0] = v15;
      v43[1] = v16;
      v18 = *(v14 + 4);
      v19 = *(v14 + 5);
      v20 = *(v14 + 7);
      v43[6] = *(v14 + 6);
      v43[7] = v20;
      v43[4] = v18;
      v43[5] = v19;
      v21 = v51;
      v23 = v48;
      v22 = v49;
      *(v14 + 6) = v50;
      *(v14 + 7) = v21;
      *(v14 + 4) = v23;
      *(v14 + 5) = v22;
      v24 = v35;
      v25 = v36;
      v26 = v38;
      *(v14 + 2) = v37;
      *(v14 + 3) = v26;
      *v14 = v24;
      *(v14 + 1) = v25;
      sub_7A7C(a2, v34);
      sub_469C(v43, &qword_2E120, &qword_228F0);
      sub_4C70();
    }

    else
    {
      if (qword_2DB88 != -1)
      {
        swift_once();
      }

      v27 = sub_2036C();
      sub_F954(v27, qword_2DE60);
      v28 = v11;
      v29 = sub_2035C();
      v30 = sub_2056C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&dword_0, v29, v30, "Expected to dequeue reminder cell, but got %@", v31, 0xCu);
        sub_469C(v32, &qword_2E0D8, &qword_228D0);
      }

      v13 = [objc_allocWithZone(UITableViewCell) init];
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *sub_989C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_203EC();
    isa = sub_1FF5C().super.isa;
    v11 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:isa];

    type metadata accessor for TTRIIntentsSnippetHeaderCell();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = (v12 + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel);
      *v13 = a2;
      v13[1] = a3;
      v14 = v12;

      sub_4700();
      v14[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_isFirst] = a4 & 1;
      sub_4700();
    }

    else
    {
      if (qword_2DB88 != -1)
      {
        swift_once();
      }

      v15 = sub_2036C();
      sub_F954(v15, qword_2DE60);
      v16 = v11;
      v17 = sub_2035C();
      v18 = sub_2056C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&dword_0, v17, v18, "Expected to dequeue header cell, but got %@", v19, 0xCu);
        sub_469C(v20, &qword_2E0D8, &qword_228D0);
      }

      v14 = [objc_allocWithZone(UITableViewCell) init];
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_9AE8()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = Strong;
  [Strong setEstimatedRowHeight:UITableViewAutomaticDimension];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [objc_opt_self() effectWithStyle:4];
  v6 = [objc_opt_self() effectForBlurEffect:v5 style:5];

  [v4 setSeparatorEffect:v6];
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTableFooterView:v9];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTableHeaderView:v12];

  v13 = swift_unknownObjectWeakLoadStrong();
  [v13 reloadData];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v14 invalidateIntrinsicContentSize];
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    [v16 layoutIfNeeded];
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    [v18 setInsetsLayoutMarginsFromSafeArea:1];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_9E68(unint64_t a1)
{
  v2 = sub_E470(_swiftEmptyArrayStorage);
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2087C())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_207AC();
      }

      else
      {
        if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }

        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 remObjectID];
      if ((v2 & 0xC000000000000001) != 0)
      {
        if (v2 >= 0)
        {
          v2 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v11 = v8;
        v12 = sub_2084C();
        if (__OFADD__(v12, 1))
        {
          goto LABEL_30;
        }

        v2 = sub_DC5C(v2, v12 + 1);
      }

      else
      {
        v13 = v8;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_11F58(v10);
      v17 = *(v2 + 16);
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_29;
      }

      v21 = v16;
      if (*(v2 + 24) < v20)
      {
        sub_131A4(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_11F58(v10);
        if ((v21 & 1) != (v22 & 1))
        {
          sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
          result = sub_2092C();
          __break(1u);
          return result;
        }

LABEL_21:
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_22;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v25 = v15;
      sub_E034();
      v15 = v25;
      if (v21)
      {
LABEL_4:
        v5 = *(v2 + 56);
        v6 = *(v5 + 8 * v15);
        *(v5 + 8 * v15) = v8;

        goto LABEL_5;
      }

LABEL_22:
      *(v2 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      *(*(v2 + 48) + 8 * v15) = v10;
      *(*(v2 + 56) + 8 * v15) = v8;

      v23 = *(v2 + 16);
      v19 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v19)
      {
        goto LABEL_31;
      }

      *(v2 + 16) = v24;
LABEL_5:
      ++v4;
      if (v9 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:
  v26 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_cachedReminders;
  swift_beginAccess();
  *(v28 + v26) = v2;
}

void *sub_A0F4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2085C();

    if (v4)
    {
      sub_2958(0, &qword_2E0E0, REMReminder_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_11F58(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_A1B8(void *a1)
{
  if (!a1)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_469C(&v18, &qword_2E0F8, &qword_228D8);
    goto LABEL_20;
  }

  if (![a1 intentResponse] || (sub_2958(0, &qword_2E110, INIntentResponse_ptr), sub_29A0(&qword_2E108, &unk_228E0), (swift_dynamicCast() & 1) == 0))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_11;
  }

  if (!*(&v19 + 1))
  {
LABEL_11:
    sub_469C(&v18, &qword_2E0F8, &qword_228D8);
    if ([a1 intent])
    {
      sub_2958(0, &qword_2E100, INIntent_ptr);
      sub_29A0(&qword_2E108, &unk_228E0);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_FB54(&v18, v21);
          if (qword_2DB88 != -1)
          {
            swift_once();
          }

          v9 = sub_2036C();
          sub_F954(v9, qword_2DE60);
          v10 = a1;
          v4 = sub_2035C();
          v11 = sub_2054C();

          if (!os_log_type_enabled(v4, v11))
          {
            goto LABEL_23;
          }

          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138412290;
          v14 = [v10 intent];
          *(v12 + 4) = v14;
          *v13 = v14;
          _os_log_impl(&dword_0, v4, v11, "getting tasks from {intent: %@}", v12, 0xCu);
          sub_469C(v13, &qword_2E0D8, &qword_228D0);

          goto LABEL_18;
        }

LABEL_21:
        sub_469C(&v18, &qword_2E0F8, &qword_228D8);
        return;
      }
    }

LABEL_20:
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_21;
  }

  sub_FB54(&v18, v21);
  if (qword_2DB88 != -1)
  {
    swift_once();
  }

  v2 = sub_2036C();
  sub_F954(v2, qword_2DE60);
  v3 = a1;
  v4 = sub_2035C();
  v5 = sub_2054C();
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_23;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  *v6 = 138412290;
  v8 = [v3 intentResponse];

  if (v8)
  {
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "getting tasks from {response: %@}", v6, 0xCu);
    sub_469C(v7, &qword_2E0D8, &qword_228D0);

LABEL_18:

LABEL_23:

    v15 = v22;
    v16 = v23;
    sub_FB6C(v21, v22);
    v17 = (*(v16 + 8))(v15, v16);
    sub_A60C(v17);

    sub_FAB0(v21);
    return;
  }

  __break(1u);
}

void *sub_A60C(unint64_t a1)
{
  v2 = v1;
  v28 = _swiftEmptyArrayStorage;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_24:
    v5 = sub_2087C();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_207AC();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v10 = sub_2060C();

    ++v6;
    if (v10)
    {
      sub_2048C();
      if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v28 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_204BC();
      }

      sub_204DC();
      v6 = v9;
    }
  }

  v11 = *(v2 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_store);
  sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
  isa = sub_2049C().super.isa;

  v28 = 0;
  v13 = [v11 fetchRemindersWithObjectIDs:isa error:{&v28, 0}];

  v14 = v28;
  if (v13)
  {
    sub_2958(0, &qword_2E0E0, REMReminder_ptr);
    sub_FAFC(&qword_2E0F0, &qword_2E0E8, REMObjectID_ptr);
    v15 = sub_2039C();
    v16 = v14;

    v17 = sub_E194(v15);
  }

  else
  {
    v18 = v28;
    sub_1FE1C();

    swift_willThrow();
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v19 = sub_2036C();
    sub_F954(v19, qword_2DE60);
    swift_errorRetain();
    v20 = sub_2035C();
    v21 = sub_2055C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = sub_2093C();
      v26 = sub_D568(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_0, v20, v21, "Failed to fetch reminders from INTasks {error: %s}", v22, 0xCu);
      sub_FAB0(v23);
    }

    return _swiftEmptyArrayStorage;
  }

  return v17;
}

id sub_A9C8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_cachedReminders;
  swift_beginAccess();
  v5 = *(v2 + v4);

  v6 = sub_A0F4(a1, v5);

  if (!v6)
  {
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v7 = sub_2036C();
    sub_F954(v7, qword_2DE60);
    v8 = a1;
    v9 = sub_2035C();
    v10 = sub_2054C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_0, v9, v10, "Dont have id in cache, fetching %@", v11, 0xCu);
      sub_469C(v12, &qword_2E0D8, &qword_228D0);
    }

    v14 = *(v2 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_store);
    v25 = 0;
    v6 = [v14 fetchReminderWithObjectID:v8 error:&v25];
    v15 = v25;
    if (!v6)
    {
      v16 = v15;
      sub_1FE1C();

      swift_willThrow();
      swift_errorRetain();
      v17 = sub_2035C();
      v18 = sub_2055C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_2093C();
        v23 = sub_D568(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_0, v17, v18, "Failed to fetch reminder by id {error: %s}", v19, 0xCu);
        sub_FAB0(v20);
      }

      else
      {
      }

      return 0;
    }
  }

  return v6;
}

id sub_ACE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_store;
  *&v4[v7] = [objc_allocWithZone(REMStore) initUserInteractive:1];
  v8 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_contactsProvider;
  sub_2958(0, &qword_2E140, OS_dispatch_queue_ptr);
  sub_2059C();
  sub_2028C();
  sub_2027C();
  sub_202BC();
  swift_allocObject();
  *&v4[v8] = sub_2029C();
  v9 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_timeProvider;
  sub_2004C();
  swift_allocObject();
  *&v4[v9] = sub_2003C();
  *&v4[OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_maxContentHeight] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_cachedReminders;
  *&v4[v10] = sub_E470(_swiftEmptyArrayStorage);
  if (a2)
  {
    v11 = sub_203EC();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_AF00(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_store;
  *&v2[v4] = [objc_allocWithZone(REMStore) initUserInteractive:1];
  v5 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_contactsProvider;
  sub_2958(0, &qword_2E140, OS_dispatch_queue_ptr);
  sub_2059C();
  sub_2028C();
  sub_2027C();
  sub_202BC();
  swift_allocObject();
  *&v2[v5] = sub_2029C();
  v6 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_timeProvider;
  sub_2004C();
  swift_allocObject();
  *&v2[v6] = sub_2003C();
  *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_maxContentHeight] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_cachedReminders;
  *&v2[v7] = sub_E470(_swiftEmptyArrayStorage);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id sub_B0B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_B19C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [objc_allocWithZone(INInteraction) initWithIntent:a1 response:a2];
  if (qword_2DB88 != -1)
  {
    swift_once();
  }

  v5 = sub_2036C();
  sub_F954(v5, qword_2DE60);
  v6 = sub_2035C();
  v7 = sub_2054C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Configuring TTRIIntentsSnippetViewController as plugin", v8, 2u);
  }

  v11 = v4;
  sub_A1B8(v4);
  v10 = v9;

  if (v10)
  {
    sub_9E68(v10);
    sub_B350(v10, v11);
  }

  [v3 setTitle:0];
  objc_opt_self();
  [v3 setWantsConfirmationInsets:swift_dynamicCastObjCClass() != 0];
}

void sub_B350(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_29A0(&qword_2E000, &qword_22850);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v38 = [a2 intent];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = sub_CB1C(a1);
    v10 = sub_8CD0(v9);

    *(v3 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel) = v10;

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong reloadData];

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      [v12 invalidateIntrinsicContentSize];
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v37 = v14;
      [v14 layoutIfNeeded];

      v15 = v37;
LABEL_17:

      return;
    }

LABEL_16:
    v15 = v38;
    goto LABEL_17;
  }

  v16 = sub_F24C(a2);
  if (v16 && (v17 = v16, v18 = sub_2052C(), v17, (v18 & 1) == 0))
  {
    v31 = sub_1E5A8(a1);
    v32 = sub_8CD0(v31);

    *(v3 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel) = v32;

    v33 = swift_unknownObjectWeakLoadStrong();
    [v33 reloadData];

    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      [v34 invalidateIntrinsicContentSize];
    }

    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      v38 = v36;
      [v36 layoutIfNeeded];
      goto LABEL_16;
    }
  }

  else
  {
    sub_29A0(&qword_2E0D0, &unk_22960);
    v19 = (type metadata accessor for TTRIIntentsSnippetSection(0) - 8);
    v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_22590;
    v22 = (v21 + v20);
    v23 = sub_2030C();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    *v22 = 0;
    v22[1] = 0;
    sub_FBB0(v8, v22 + v19[7], &qword_2E000, &qword_22850);
    v24 = sub_1A63C(a1, 0, 0);
    sub_469C(v8, &qword_2E000, &qword_22850);
    *(v22 + v19[8]) = v24;
    v25 = sub_8CD0(v21);
    swift_setDeallocating();
    sub_FA50(v22, type metadata accessor for TTRIIntentsSnippetSection);
    swift_deallocClassInstance();
    *(v3 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel) = v25;

    v26 = swift_unknownObjectWeakLoadStrong();
    [v26 reloadData];

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      [v27 invalidateIntrinsicContentSize];
    }

    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      [v29 layoutIfNeeded];
    }
  }
}

double sub_B79C(char a1, double a2, double a3, double a4, CGFloat a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v11 = Strong;
  [Strong contentSize];
  [v11 setFrame:{0.0, 0.0, a4, a5}];
  sub_F334(v11, a1 & 1, a5);
  if (*(v5 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_maxContentHeight) > v12)
  {
    v13 = *(v5 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_maxContentHeight);
  }

  else
  {
    v13 = v12;
  }

  *(v5 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_maxContentHeight) = v13;
  if (qword_2DB88 != -1)
  {
    swift_once();
  }

  v14 = sub_2036C();
  sub_F954(v14, qword_2DE60);
  v15 = sub_2035C();
  v16 = sub_2054C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136446722;
    v25 = v18;
    type metadata accessor for CGSize(0);
    sub_2082C();
    v19 = sub_D568(0, 0xE000000000000000, &v25);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2082;
    v20 = sub_204EC();
    v22 = sub_D568(v20, v21, &v25);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2082;
    sub_2082C();
    v23 = sub_D568(0, 0xE000000000000000, &v25);

    *(v17 + 24) = v23;
    _os_log_impl(&dword_0, v15, v16, "preferred content size {originalContentSize: %{public}s, tableContentHeight: %{public}s, preferredContentSize: %{public}s}", v17, 0x20u);
    swift_arrayDestroy();
  }

  return a2;
}

char *sub_BC5C(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = &v18[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
      v8 = a2[2];
      *(a1 + 2) = v8;
      *(a1 + 6) = *(a2 + 6);
      v9 = a2[5];
      *(a1 + 4) = a2[4];
      *(a1 + 5) = v9;
      v10 = a2[7];
      *(a1 + 6) = a2[6];
      *(a1 + 7) = v10;
      v11 = a2[9];
      *(a1 + 8) = a2[8];
      *(a1 + 9) = v11;
      v12 = *(a2 + 96);
      v13 = v6;
      v14 = v7;
      v15 = v8;

      if (v12 == 255)
      {
        *(a1 + 5) = *(a2 + 5);
        a1[96] = *(a2 + 96);
      }

      else
      {
        v16 = a2[10];
        v17 = a2[11];
        sub_2CD8(v16, v17, v12);
        *(a1 + 10) = v16;
        *(a1 + 11) = v17;
        a1[96] = v12;
      }

      v25 = a2[13];
      *(a1 + 13) = v25;
      a1[112] = *(a2 + 112);
      v26 = a2[15];
      v27 = a2[16];
      *(a1 + 15) = v26;
      *(a1 + 16) = v27;
      v28 = v25;
    }

    else
    {
      v19 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v19;

      v20 = sub_29A0(&qword_2DFF8, &qword_22848);
      v21 = *(v20 + 48);
      v22 = sub_2030C();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(a2 + v21, 1, v22))
      {
        v24 = sub_29A0(&qword_2E000, &qword_22850);
        memcpy(&a1[v21], a2 + v21, *(*(v24 - 8) + 64));
      }

      else
      {
        (*(v23 + 16))(&a1[v21], a2 + v21, v22);
        (*(v23 + 56))(&a1[v21], 0, 1, v22);
      }

      a1[*(v20 + 64)] = *(a2 + *(v20 + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_BEE0(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = *(a1 + 96);
    if (v3 != 255)
    {
      sub_2D70(*(a1 + 80), *(a1 + 88), v3);
    }
  }

  else
  {

    v5 = *(sub_29A0(&qword_2DFF8, &qword_22848) + 48);
    v6 = sub_2030C();
    v8 = *(v6 - 8);
    result = (*(v8 + 48))(a1 + v5, 1, v6);
    if (!result)
    {
      v7 = *(v8 + 8);

      return v7(a1 + v5, v6);
    }
  }

  return result;
}

uint64_t sub_C044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v6;
    v7 = *(a2 + 16);
    *(a1 + 16) = v7;
    *(a1 + 24) = *(a2 + 24);
    v8 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v8;
    v9 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v9;
    v10 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v10;
    v11 = *(a2 + 96);
    v12 = v5;
    v13 = v6;
    v14 = v7;

    if (v11 == 255)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      v15 = *(a2 + 80);
      v16 = *(a2 + 88);
      sub_2CD8(v15, v16, v11);
      *(a1 + 80) = v15;
      *(a1 + 88) = v16;
      *(a1 + 96) = v11;
    }

    v23 = *(a2 + 104);
    *(a1 + 104) = v23;
    *(a1 + 112) = *(a2 + 112);
    v24 = *(a2 + 120);
    v25 = *(a2 + 128);
    *(a1 + 120) = v24;
    *(a1 + 128) = v25;
    v26 = v23;
  }

  else
  {
    v17 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v17;

    v18 = sub_29A0(&qword_2DFF8, &qword_22848);
    v19 = *(v18 + 48);
    v20 = sub_2030C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(a2 + v19, 1, v20))
    {
      v22 = sub_29A0(&qword_2E000, &qword_22850);
      memcpy((a1 + v19), (a2 + v19), *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v21 + 16))(a1 + v19, a2 + v19, v20);
      (*(v21 + 56))(a1 + v19, 0, 1, v20);
    }

    *(a1 + *(v18 + 64)) = *(a2 + *(v18 + 64));
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_C274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_FA50(a1, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      v6 = *(a2 + 8);
      *(a1 + 8) = v6;
      v7 = *(a2 + 16);
      *(a1 + 16) = v7;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 25) = *(a2 + 25);
      *(a1 + 26) = *(a2 + 26);
      *(a1 + 27) = *(a2 + 27);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      v8 = *(a2 + 96);
      v9 = v5;
      v10 = v6;
      v11 = v7;

      if (v8 == 255)
      {
        v19 = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 80) = v19;
      }

      else
      {
        v12 = *(a2 + 80);
        v13 = *(a2 + 88);
        sub_2CD8(v12, v13, v8);
        *(a1 + 80) = v12;
        *(a1 + 88) = v13;
        *(a1 + 96) = v8;
      }

      v20 = *(a2 + 104);
      *(a1 + 104) = v20;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      v21 = v20;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);

      v14 = sub_29A0(&qword_2DFF8, &qword_22848);
      v15 = *(v14 + 48);
      v16 = sub_2030C();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2 + v15, 1, v16))
      {
        v18 = sub_29A0(&qword_2E000, &qword_22850);
        memcpy((a1 + v15), (a2 + v15), *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v17 + 16))(a1 + v15, a2 + v15, v16);
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
      }

      *(a1 + *(v14 + 64)) = *(a2 + *(v14 + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(uint64_t a1)
{
  result = qword_2E078;
  if (!qword_2E078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_C55C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = sub_29A0(&qword_2DFF8, &qword_22848);
    v9 = *(v8 + 48);
    v10 = sub_2030C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2 + v9, 1, v10))
    {
      v12 = sub_29A0(&qword_2E000, &qword_22850);
      memcpy(a1 + v9, a2 + v9, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
    }

    *(a1 + *(v8 + 64)) = *(a2 + *(v8 + 64));
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *sub_C704(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_FA50(a1, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = sub_29A0(&qword_2DFF8, &qword_22848);
    v9 = *(v8 + 48);
    v10 = sub_2030C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(&a2[v9], 1, v10))
    {
      v12 = sub_29A0(&qword_2E000, &qword_22850);
      memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))(&a1[v9], &a2[v9], v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
    }

    a1[*(v8 + 64)] = a2[*(v8 + 64)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void sub_C934(uint64_t a1)
{
  sub_C9E0(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v2[4] = v2;
    v2[5] = &unk_22898;
    swift_initEnumMetadataMultiPayload();
  }
}

void sub_C9E0(uint64_t a1)
{
  if (!qword_2E088)
  {
    sub_2030C();
    v1 = sub_206CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2E088);
    }
  }
}

void sub_CA38(char a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  if (a2)
  {
    v7 = a5.n128_u64[0];
    v8 = a4.n128_u64[0];
    sub_2958(0, &qword_2E0B8, INParameter_ptr);
    sub_FAFC(&qword_2E0C0, &qword_2E0B8, INParameter_ptr);
    v9.super.isa = sub_204FC().super.isa;
    a4.n128_u64[0] = v8;
    a5.n128_u64[0] = v7;
    isa = v9.super.isa;
  }

  else
  {
    isa = 0;
  }

  v11 = isa;
  (*(a3 + 16))(a3, a1 & 1, a4, a5);
}

void *sub_CB1C(unint64_t a1)
{
  v3 = sub_29A0(&qword_2E000, &qword_22850);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-1] - v4;
  v6 = *(v1 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_timeProvider);
  v15[3] = sub_2004C();
  v15[4] = &protocol witness table for TTRCurrentTimeProvider;
  v15[0] = v6;

  LOBYTE(v6) = sub_205CC();
  sub_FAB0(v15);
  if (v6)
  {
    return sub_10568(a1);
  }

  if (sub_205FC())
  {
    return sub_10F3C(a1);
  }

  if (sub_205DC())
  {
    return sub_1E070(a1);
  }

  if (sub_205EC())
  {
    return sub_1E5A8(a1);
  }

  sub_29A0(&qword_2E0D0, &unk_22960);
  v8 = (type metadata accessor for TTRIIntentsSnippetSection(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22590;
  v11 = (v10 + v9);
  v12 = sub_2030C();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  *v11 = 0;
  v11[1] = 0;
  sub_FBB0(v5, v10 + v9 + v8[7], &qword_2E000, &qword_22850);
  v13 = sub_1A63C(a1, 0, 0);
  sub_469C(v5, &qword_2E000, &qword_22850);
  result = v10;
  *(v11 + v8[8]) = v13;
  return result;
}

void sub_CD6C(char *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_A9C8(*a2);
  if (v5)
  {
    v44 = v5;
    swift_beginAccess();
    v6 = sub_DB10(v4);
    swift_endAccess();

    v7 = *(a2 + 16);
    v8 = *(a2 + 8);
    v9 = *(a2 + 17);
    v10 = *(a2 + 18);
    v11 = *(a2 + 19);
    v12 = *(a2 + 24);
    v14 = *(a2 + 64);
    v13 = *(a2 + 72);
    v43 = *(a2 + 96);
    v15 = *(a2 + 104);
    v16 = *(a2 + 112);
    v41 = *(a2 + 80);
    v42 = *(a2 + 120);
    *&v47 = v4;
    *(&v47 + 1) = v8;
    LOBYTE(v48) = (v7 & 1) == 0;
    BYTE1(v48) = v9;
    BYTE2(v48) = v10;
    BYTE3(v48) = v11;
    *(&v48 + 1) = v12;
    v17 = *(a2 + 88);
    v40 = *(a2 + 48);
    v49 = *(a2 + 32);
    v50 = v40;
    *&v51 = v14;
    *(&v51 + 1) = v13;
    *&v52 = v41;
    BYTE8(v52) = v17;
    *&v53 = v43;
    BYTE8(v53) = v15;
    *&v54 = v16;
    *(&v54 + 1) = v42;
    v61 = v53;
    v62 = v54;
    v59 = v51;
    v60 = v52;
    v57 = v49;
    v58 = v40;
    v55 = v47;
    v56 = v48;
    nullsub_2();
    v18 = &a1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
    swift_beginAccess();
    v19 = *(v18 + 5);
    v63[4] = *(v18 + 4);
    v63[5] = v19;
    v20 = *(v18 + 7);
    v63[6] = *(v18 + 6);
    v63[7] = v20;
    v21 = *(v18 + 1);
    v63[0] = *v18;
    v63[1] = v21;
    v22 = *(v18 + 2);
    v23 = *(v18 + 3);
    *(v18 + 2) = v49;
    *(v18 + 3) = v40;
    v24 = v56;
    *v18 = v55;
    *(v18 + 1) = v24;
    v25 = v62;
    *(v18 + 6) = v61;
    *(v18 + 7) = v25;
    v26 = v60;
    *(v18 + 4) = v59;
    *(v18 + 5) = v26;
    v63[2] = v22;
    v63[3] = v23;

    v27 = v4;
    v28 = v8;

    sub_FD48(v13, v41, v17);

    v29 = v43;
    sub_7A7C(&v47, v46);
    sub_469C(v63, &qword_2E120, &qword_228F0);
    sub_4C70();
    sub_FCF4(&v47);
    v30 = sub_2000C();
    __chkstk_darwin(v30);
    v31 = swift_allocObject();
    v32 = *(a2 + 80);
    *(v31 + 88) = *(a2 + 64);
    *(v31 + 104) = v32;
    v33 = *(a2 + 112);
    *(v31 + 120) = *(a2 + 96);
    *(v31 + 136) = v33;
    v34 = *(a2 + 16);
    *(v31 + 24) = *a2;
    *(v31 + 40) = v34;
    v35 = *(a2 + 48);
    *(v31 + 56) = *(a2 + 32);
    *(v31 + 16) = a1;
    *(v31 + 72) = v35;
    v36 = a1;
    sub_7A7C(a2, v46);
    sub_1FFEC();
  }

  else
  {
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v37 = sub_2036C();
    sub_F954(v37, qword_2DE60);
    v45 = sub_2035C();
    v38 = sub_2055C();
    if (os_log_type_enabled(v45, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v45, v38, "didn't get reminder object on toggle request", v39, 2u);
    }
  }
}

void sub_D168(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a3[5];
  v54 = a3[4];
  v55 = v4;
  v5 = a3[7];
  v56 = a3[6];
  v57 = v5;
  v6 = a3[1];
  v50 = *a3;
  v51 = v6;
  v7 = a3[3];
  v52 = a3[2];
  v53 = v7;
  if (a1)
  {
    swift_errorRetain();
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v9 = sub_2036C();
    sub_F954(v9, qword_2DE60);
    swift_errorRetain();
    v10 = sub_2035C();
    v11 = sub_2055C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v49[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_2093C();
      v16 = sub_D568(v14, v15, v49);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "Failed toggling reminder complete: %s", v12, 0xCu);
      sub_FAB0(v13);
    }

    v45 = v54;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    nullsub_2();
    v17 = (a2 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel);
    swift_beginAccess();
    v18 = v17[5];
    v49[4] = v17[4];
    v49[5] = v18;
    v19 = v17[7];
    v49[6] = v17[6];
    v49[7] = v19;
    v20 = v17[1];
    v49[0] = *v17;
    v49[1] = v20;
    v21 = v17[3];
    v49[2] = v17[2];
    v49[3] = v21;
    v22 = v41;
    v23 = v42;
    v24 = v44;
    v17[2] = v43;
    v17[3] = v24;
    *v17 = v22;
    v17[1] = v23;
    v25 = v45;
    v26 = v46;
    v27 = v48;
    v17[6] = v47;
    v17[7] = v27;
    v17[4] = v25;
    v17[5] = v26;
    sub_7A7C(a3, v40);
    sub_469C(v49, &qword_2E120, &qword_228F0);
    sub_4C70();
  }

  else
  {
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v28 = sub_2036C();
    sub_F954(v28, qword_2DE60);
    sub_7A7C(a3, v49);
    v29 = sub_2035C();
    v30 = sub_2054C();
    sub_FCF4(a3);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v49[0] = v33;
      *v31 = 138412546;
      v34 = *a3;
      *(v31 + 4) = *a3;
      *v32 = v34;
      *(v31 + 12) = 2080;
      v35 = (a3[1] & 1) == 0;
      if (a3[1])
      {
        v36 = 20302;
      }

      else
      {
        v36 = 5457241;
      }

      if (v35)
      {
        v37 = 0xE300000000000000;
      }

      else
      {
        v37 = 0xE200000000000000;
      }

      v38 = v34;
      v39 = sub_D568(v36, v37, v49);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_0, v29, v30, "toggle complete for reminder {reminderID: %@}, {expected completed: %s}", v31, 0x16u);
      sub_469C(v32, &qword_2E0D8, &qword_228D0);

      sub_FAB0(v33);
    }
  }
}

unint64_t sub_D568(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_D634(v11, 0, 0, 1, a1, a2);
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
    sub_F98C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_FAB0(v11);
  return v7;
}

unint64_t sub_D634(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_D740(a5, a6);
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
    result = sub_207CC();
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

void *sub_D740(uint64_t a1, unint64_t a2)
{
  v3 = sub_D78C(a1, a2);
  sub_D8BC(&off_28E98);
  return v3;
}

void *sub_D78C(uint64_t a1, unint64_t a2)
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

  v6 = sub_D9A8(v5, 0);
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

  result = sub_207CC();
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
        v10 = sub_2046C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_D9A8(v10, 0);
        result = sub_2079C();
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

uint64_t sub_D8BC(uint64_t result)
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

  result = sub_DA1C(result, v11, 1, v3);
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

void *sub_D9A8(uint64_t a1, uint64_t a2)
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

  sub_29A0(&qword_2E0C8, &unk_228C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_DA1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29A0(&qword_2E0C8, &unk_228C0);
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

uint64_t sub_DB10(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_11F58(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_DEA8(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_E034();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_2085C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_2084C();
  v8 = sub_DC5C(v4, v7);

  v9 = sub_11F58(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_DEA8(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_DC5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A0(&qword_2E118, &qword_229F0);
    v2 = sub_208AC();
    v19 = v2;
    sub_2083C();
    v3 = sub_2086C();
    if (v3)
    {
      v4 = v3;
      sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_2958(0, &qword_2E0E0, REMReminder_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_131A4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2068C(*(v19 + 40));
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
        v5 = sub_2086C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_DEA8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_206EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_2068C(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

id sub_E034()
{
  v1 = v0;
  sub_29A0(&qword_2E118, &qword_229F0);
  v2 = *v0;
  v3 = sub_2088C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_E194(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2084C();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_11CA4(v2, 0);

    v1 = sub_18CB0(&v5, v3 + 4, v2, v1);
    sub_FB4C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

unint64_t sub_E244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29A0(&qword_2E128, &qword_228F8);
    v3 = sub_208BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBB0(v4, &v11, &unk_2E130, &unk_22900);
      v5 = v11;
      result = sub_3C24(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_FC18(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_E36C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29A0(&unk_2E150, &qword_22918);
    v3 = sub_208BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_11FA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_E470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29A0(&qword_2E118, &qword_229F0);
    v3 = sub_208BC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_11F58(v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_E568(void **a1)
{
  v2 = *a1;
  v3 = sub_A9C8(*a1);
  if (v3)
  {
    v12 = v3;
    v4 = [v3 userActivity];
    if (v4)
    {
      v5 = v4;
      sub_2058C();
    }
  }

  else
  {
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v6 = sub_2036C();
    sub_F954(v6, qword_2DE60);
    sub_7A7C(a1, v13);
    v7 = sub_2035C();
    v8 = sub_2055C();
    sub_FCF4(a1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v2;
      *v10 = v2;
      v11 = v2;
      _os_log_impl(&dword_0, v7, v8, "Didn't get reminder object on app link launch request {id: %@}", v9, 0xCu);
      sub_469C(v10, &qword_2E0D8, &qword_228D0);
    }
  }
}

unint64_t sub_E718(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1FFAC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v39 - v10;
  v12 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1FF8C();
  v17 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel;
  if (v16 < *(*(v3 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel) + 16))
  {
    result = sub_1FF8C();
    if ((result & 0x8000000000000000) == 0)
    {
      v19 = *(v3 + v17);
      if (result >= *(v19 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_FC8C(v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * result, v15, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v20 = *v15;
          v21 = *(v15 + 88);
          v39[4] = *(v15 + 72);
          v39[5] = v21;
          v22 = *(v15 + 120);
          v39[6] = *(v15 + 104);
          v39[7] = v22;
          v23 = *(v15 + 24);
          v39[0] = *(v15 + 8);
          v39[1] = v23;
          v24 = *(v15 + 56);
          v39[2] = *(v15 + 40);
          v39[3] = v24;

          v25 = sub_9598(a1, v39);
          sub_FCF4(v39);
        }

        else
        {
          v35 = *v15;
          v36 = *(v15 + 1);
          v37 = sub_29A0(&qword_2DFF8, &qword_22848);
          v38 = *(v37 + 48);
          v25 = sub_989C(a1, v35, v36, v15[*(v37 + 64)]);

          sub_469C(&v15[v38], &qword_2E000, &qword_22850);
        }

        return v25;
      }

      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_2DB88 != -1)
  {
LABEL_14:
    swift_once();
  }

  v26 = sub_2036C();
  sub_F954(v26, qword_2DE60);
  v27 = *(v6 + 16);
  v27(v11, a1, v5);
  v27(v9, a1, v5);
  v28 = sub_2035C();
  v29 = sub_2055C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134218240;
    v31 = sub_1FF9C();
    v32 = *(v6 + 8);
    v32(v11, v5);
    *(v30 + 4) = v31;
    *(v30 + 12) = 2048;
    v33 = sub_1FF8C();
    v32(v9, v5);
    *(v30 + 14) = v33;
    _os_log_impl(&dword_0, v28, v29, "Got asked for path {section: %ld, row: %ld} with no coresponding item", v30, 0x16u);
  }

  else
  {
    v34 = *(v6 + 8);
    v34(v9, v5);
    v34(v11, v5);
  }

  return [objc_allocWithZone(UITableViewCell) init];
}

id sub_EB48()
{
  v1 = v0;
  v44 = sub_1FE3C();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2030C();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v43 - v8);
  v10 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - v16;
  v18 = __chkstk_darwin(v15);
  v47 = &v43 - v19;
  __chkstk_darwin(v18);
  v48 = &v43 - v20;
  result = sub_1FF8C();
  v22 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel;
  if (result < *(*(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel) + 16))
  {
    v23 = sub_1FF8C();
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v24 = *(v0 + v22);
      if (v23 < *(v24 + 16))
      {
        v25 = v48;
        sub_FC8C(v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v48, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        v26 = v25;
        v27 = v47;
        sub_FC8C(v26, v47, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_FC8C(v27, v14, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);

          v36 = *(sub_29A0(&qword_2DFF8, &qword_22848) + 48);
          v38 = v45;
          v37 = v46;
          if ((*(v45 + 48))(&v14[v36], 1, v46) == 1)
          {
            sub_FA50(v48, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
            sub_469C(&v14[v36], &qword_2E000, &qword_22850);
            return sub_FA50(v27, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
          }

          (*(v38 + 32))(v7, &v14[v36], v37);
          if (qword_2DB88 != -1)
          {
            swift_once();
          }

          v39 = sub_2036C();
          sub_F954(v39, qword_2DE60);
          sub_202FC();
          sub_FE2C(0x696E532069726953, 0xEC00000074657070, 0x7265646E696D6552, 0xED00007473694C20, v3);
          v40 = *(v43 + 8);
          v41 = v44;
          v40(v3, v44);
          result = [objc_opt_self() defaultWorkspace];
          if (result)
          {
            v42 = result;
            sub_202FC();
            sub_205BC();

            v40(v3, v41);
            (*(v38 + 8))(v7, v37);
            goto LABEL_14;
          }

LABEL_21:
          __break(1u);
          return result;
        }

        sub_FC8C(v27, v17, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        v7 = *v17;
        v28 = *(v17 + 88);
        v49[4] = *(v17 + 72);
        v49[5] = v28;
        v29 = *(v17 + 120);
        v49[6] = *(v17 + 104);
        v49[7] = v29;
        v30 = *(v17 + 24);
        v49[0] = *(v17 + 8);
        v49[1] = v30;
        v31 = *(v17 + 56);
        v49[2] = *(v17 + 40);
        v49[3] = v31;
        sub_FCF4(v49);
        sub_29A0(&qword_2E148, &qword_22910);
        *v9 = [v7 remObjectID];
        sub_202EC();
        v1 = v45;
        v14 = v46;
        (*(v45 + 104))(v9, enum case for REMNavigationSpecifier.reminder(_:), v46);
        if (qword_2DB88 == -1)
        {
LABEL_6:
          v32 = sub_2036C();
          sub_F954(v32, qword_2DE60);
          sub_202FC();
          sub_FE2C(0x696E532069726953, 0xEC00000074657070, 0x7265646E696D6552, 0xE800000000000000, v3);
          v33 = *(v43 + 8);
          v34 = v44;
          v33(v3, v44);
          result = [objc_opt_self() defaultWorkspace];
          if (result)
          {
            v35 = result;
            sub_202FC();
            sub_205BC();

            v33(v3, v34);
            (*(v1 + 8))(v9, v14);
LABEL_14:
            sub_FA50(v48, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
            v27 = v47;
            return sub_FA50(v27, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
          }

          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        swift_once();
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

id sub_F24C(void *a1)
{
  v2 = [a1 intentResponse];
  if (!v2)
  {
LABEL_5:
    v6 = [a1 intentResponse];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v5 = [v8 createdTaskList];

        return v5;
      }
    }

    return 0;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    goto LABEL_5;
  }

  v5 = [v4 modifiedTaskList];

  return v5;
}

void sub_F334(void *a1, uint64_t a2, CGFloat a3)
{
  v4 = a2;
  v6 = sub_1FFAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 numberOfSections];
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v12 = v10;
  if (v10)
  {
    v13 = 0;
    v14 = (v7 + 8);
    MaxY = 0.0;
    *&v11 = 134219520;
    v32 = v11;
    v33 = v10;
    while (1)
    {
      v16 = [a1 numberOfRowsInSection:{v13, v32}];
      if ((v16 & 0x8000000000000000) != 0)
      {
        break;
      }

      v17 = v16;
      if (v16)
      {
        v18 = 0;
        while (1)
        {
          sub_1FF7C();
          isa = sub_1FF5C().super.isa;
          (*v14)(v9, v6);
          [a1 rectForRowAtIndexPath:isa];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          if (v4)
          {
            v35.origin.x = v21;
            v35.origin.y = v23;
            v35.size.width = v25;
            v35.size.height = v27;
            if (CGRectGetMaxY(v35) > a3)
            {
              break;
            }
          }

          ++v18;
          v34.origin.x = v21;
          v34.origin.y = v23;
          v34.size.width = v25;
          v34.size.height = v27;
          MaxY = CGRectGetMaxY(v34);
          if (v17 == v18)
          {
            goto LABEL_5;
          }
        }

        if (qword_2DB88 != -1)
        {
          swift_once();
        }

        v28 = sub_2036C();
        sub_F954(v28, qword_2DE60);
        sub_CB14();
        sub_CB14();
        sub_CB14();
        sub_CB14();
        sub_CB14();
        sub_CB14();
        v29 = sub_2035C();
        v30 = sub_2054C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = v32;
          *(v31 + 4) = v18;
          *(v31 + 12) = 1040;
          *(v31 + 14) = 1;
          *(v31 + 18) = 2048;
          v36.origin.x = v21;
          v36.origin.y = v23;
          v36.size.width = v25;
          v36.size.height = v27;
          *(v31 + 20) = CGRectGetMaxY(v36);
          *(v31 + 28) = 1040;
          *(v31 + 30) = 1;
          *(v31 + 34) = 2048;
          *(v31 + 36) = MaxY;
          *(v31 + 44) = 1040;
          *(v31 + 46) = 1;
          *(v31 + 50) = 2048;
          *(v31 + 52) = a3;
          _os_log_impl(&dword_0, v29, v30, "Adding row %ld would be too large to fit, stopping at previous height. { currentRowMaxY:  %.*f, previousMaxY: %.*f, maxHeight: %.*f}", v31, 0x3Cu);
          v12 = v33;
        }
      }

LABEL_5:
      if (++v13 == v12)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_F668(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, __n128, __n128), __n128 a4, __n128 a5)
{
  if (!a1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_2071C())
    {
      goto LABEL_4;
    }
  }

  else if (*(a1 + 16))
  {
LABEL_4:
    if (a3)
    {
LABEL_5:
      a4.n128_u64[0] = 0;
      a5.n128_u64[0] = 0;
      v10 = a1;
LABEL_24:
      a3(1, v10, a4, a5);
      return;
    }

    goto LABEL_26;
  }

  sub_A1B8(a2);
  if (!v11)
  {
    if (a3)
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  sub_9E68(v11);
  if (!a2)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_B350(v12, a2);
  v13 = [v5 extensionContext];
  if (!v13 || (v14 = v13, [v13 hostedViewMinimumAllowedSize], v16 = v15, v18 = v17, v14, (v19 = objc_msgSend(v6, "extensionContext")) == 0))
  {
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v29 = sub_2036C();
    sub_F954(v29, qword_2DE60);
    v30 = sub_2035C();
    v31 = sub_2056C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Unable to determine hostedViewMinimumAllowedSize", v32, 2u);
    }

    if (!a3)
    {
      goto LABEL_28;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      [Strong contentSize];
      v27 = v35;
      v28 = v36;

      goto LABEL_23;
    }

LABEL_22:
    v27 = 0;
    v28 = 0;
    goto LABEL_23;
  }

  v20 = v19;
  [v19 hostedViewMaximumAllowedSize];
  v22 = v21;
  v24 = v23;

  v25 = sub_B79C(1, v16, v18, v22, v24);
  if (a3)
  {
    v27 = *&v25;
    v28 = v26;

LABEL_23:
    v10 = a1;
    a4.n128_u64[0] = v27;
    a5.n128_u64[0] = v28;
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_F904(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F914()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F954(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_F98C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_F9EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_FA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_FAB0(void *a1)
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

uint64_t sub_FAFC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2958(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_FB54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_FB6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_FBB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_29A0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_FC18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_FC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_FC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_FD48(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2CD8(result, a2, a3);
  }

  return result;
}

uint64_t sub_FD9C()
{

  v1 = *(v0 + 112);
  if (v1 != 255)
  {
    sub_2D70(*(v0 + 96), *(v0 + 104), v1);
  }

  return _swift_deallocObject(v0, 152, 7);
}

void sub_FE2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = sub_1FE3C();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2034C();
  sub_29A0(&qword_2E280, &qword_22938);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22920;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_102BC();
  *(inited + 48) = sub_206BC();
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x8000000000022070;
  v23 = a1;
  *(inited + 72) = sub_203EC();
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x8000000000022090;
  v24 = a3;
  *(inited + 96) = sub_203EC();
  sub_E36C(inited);
  swift_setDeallocating();
  sub_29A0(&qword_2E290, &qword_22940);
  swift_arrayDestroy();
  sub_2033C();

  if (qword_2DB90 != -1)
  {
    swift_once();
  }

  v13 = sub_2036C();
  sub_F954(v13, qword_2E878);
  v14 = v27;
  (*(v27 + 16))(v11, v26, v9);

  v15 = sub_2035C();
  v16 = sub_2057C();

  v17 = v9;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_D568(v23, a2, &v28);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_D568(v24, a4, &v28);
    *(v18 + 22) = 2080;
    v19 = sub_1FE2C();
    v21 = v20;
    (*(v14 + 8))(v11, v17);
    v22 = sub_D568(v19, v21, &v28);

    *(v18 + 24) = v22;
    _os_log_impl(&dword_0, v15, v16, "Navigating (%s) -> (%s) {url:%s}", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v11, v9);
  }
}

uint64_t sub_10248(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = sub_2036C();
  sub_F9EC(v5, a2);
  sub_F954(v5, a2);
  v6 = [objc_opt_self() *a3];
  return sub_2037C();
}

unint64_t sub_102BC()
{
  result = qword_2E288;
  if (!qword_2E288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2E288);
  }

  return result;
}

uint64_t sub_10320(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_119C4(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_2E368, &qword_229F8, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10470(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2087C();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v2 >> 62))
  {
    v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_2087C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_11EB8(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10568(uint64_t a1)
{
  v1 = type metadata accessor for TTRIIntentsSnippetSection(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v77 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29A0(&qword_2E000, &qword_22850);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v70 - v8;
  v10 = sub_29A0(&qword_2E2A0, &qword_22948);
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v76 = &v70 - v15;
  v16 = __chkstk_darwin(v14);
  v78 = (&v70 - v17);
  __chkstk_darwin(v16);
  v19 = (&v70 - v18);

  v21 = sub_19388(v20);

  v22 = v21[2];
  v75 = v2;
  if (v22 && (v23 = sub_12020(1), (v24 & 1) != 0))
  {
    v25 = *(v21[7] + 8 * v23);
    v26 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
    v27 = sub_202CC();
    (*(*(v27 - 8) + 104))(v9, v26, v27);
    v28 = enum case for REMNavigationSpecifier.today(_:);
    v29 = sub_2030C();
    v71 = v1;
    v30 = v7;
    v31 = v29;
    v32 = *(v29 - 8);
    (*(v32 + 104))(v9, v28, v29);
    (*(v32 + 56))(v9, 0, 1, v31);

    v79._countAndFlagsBits = 0x7961646F54;
    v80._object = 0x80000000000220B0;
    v79._object = 0xE500000000000000;
    v80._countAndFlagsBits = 0xD000000000000010;
    v33 = sub_2001C(v79, v80);
    v35 = v34;
    sub_FBB0(v9, v30, &qword_2E000, &qword_22850);
    *v19 = v33;
    v19[1] = v35;
    v7 = v30;
    v1 = v71;
    sub_FBB0(v7, v19 + *(v71 + 20), &qword_2E000, &qword_22850);
    v36 = sub_1A63C(v25, sub_1AED4, 0);

    sub_469C(v7, &qword_2E000, &qword_22850);
    v2 = v75;
    sub_469C(v9, &qword_2E000, &qword_22850);
    *(v19 + *(v1 + 24)) = v36;
    v37 = *(v2 + 56);
    v37(v19, 0, 1, v1);
  }

  else
  {
    v37 = *(v2 + 56);
    v37(v19, 1, 1, v1);
  }

  v38 = v21[2];
  v74 = v19;
  if (v38 && (v39 = sub_12020(0), (v40 & 1) != 0))
  {
    v71 = *(v21[7] + 8 * v39);

    v41 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
    v42 = sub_202CC();
    (*(*(v42 - 8) + 104))(v9, v41, v42);
    v43 = enum case for REMNavigationSpecifier.today(_:);
    v44 = sub_2030C();
    v45 = v7;
    v46 = *(v44 - 8);
    (*(v46 + 104))(v9, v43, v44);
    (*(v46 + 56))(v9, 0, 1, v44);
    v47 = sub_2002C();
    v49 = v48;
    sub_FBB0(v9, v45, &qword_2E000, &qword_22850);
    v50 = v78;
    *v78 = v47;
    v50[1] = v49;
    sub_FBB0(v45, v50 + *(v1 + 20), &qword_2E000, &qword_22850);
    v51 = sub_1A63C(v71, 0, 0);

    sub_469C(v45, &qword_2E000, &qword_22850);
    v2 = v75;
    sub_469C(v9, &qword_2E000, &qword_22850);
    v52 = 0;
    *(v50 + *(v1 + 24)) = v51;
    v19 = v74;
  }

  else
  {

    v52 = 1;
  }

  v53 = v78;
  v37(v78, v52, 1, v1);
  sub_29A0(&qword_2E2A8, &qword_22950);
  v54 = *(v72 + 72);
  v55 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v56 = swift_allocObject() + v55;
  sub_FBB0(v19, v56, &qword_2E2A0, &qword_22948);
  sub_FBB0(v53, v56 + v54, &qword_2E2A0, &qword_22948);
  v57 = v76;
  sub_FBB0(v56, v76, &qword_2E2A0, &qword_22948);
  sub_1DFC0(v57, v13, &qword_2E2A0, &qword_22948);
  v58 = *(v2 + 48);
  if (v58(v13, 1, v1) == 1)
  {
    sub_469C(v13, &qword_2E2A0, &qword_22948);
    v59 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_19818(v13, v77);
    v59 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_119C4(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage, &qword_2E0D0, &unk_22960, type metadata accessor for TTRIIntentsSnippetSection);
    }

    v61 = v59[2];
    v60 = v59[3];
    if (v61 >= v60 >> 1)
    {
      v59 = sub_119C4((v60 > 1), v61 + 1, 1, v59, &qword_2E0D0, &unk_22960, type metadata accessor for TTRIIntentsSnippetSection);
    }

    v59[2] = v61 + 1;
    sub_19818(v77, v59 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v61);
  }

  v62 = v56 + v54;
  v63 = v76;
  sub_FBB0(v62, v76, &qword_2E2A0, &qword_22948);
  sub_1DFC0(v63, v13, &qword_2E2A0, &qword_22948);
  if (v58(v13, 1, v1) == 1)
  {
    sub_469C(v13, &qword_2E2A0, &qword_22948);
    v64 = v74;
  }

  else
  {
    sub_19818(v13, v77);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v74;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_119C4(0, v59[2] + 1, 1, v59, &qword_2E0D0, &unk_22960, type metadata accessor for TTRIIntentsSnippetSection);
    }

    v66 = v75;
    v68 = v59[2];
    v67 = v59[3];
    if (v68 >= v67 >> 1)
    {
      v59 = sub_119C4((v67 > 1), v68 + 1, 1, v59, &qword_2E0D0, &unk_22960, type metadata accessor for TTRIIntentsSnippetSection);
    }

    v59[2] = v68 + 1;
    sub_19818(v77, v59 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v68);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_469C(v78, &qword_2E2A0, &qword_22948);
  sub_469C(v64, &qword_2E2A0, &qword_22948);
  return v59;
}

uint64_t type metadata accessor for TTRIIntentsSnippetSection(uint64_t a1)
{
  result = qword_2E3E0;
  if (!qword_2E3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10F3C(uint64_t a1)
{
  v1 = sub_29A0(&qword_2E000, &qword_22850);
  __chkstk_darwin(v1 - 8);
  v3 = &v57 - v2;
  v61 = sub_1FEAC();
  v76 = *(v61 - 8);
  __chkstk_darwin(v61);
  v75 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29A0(&qword_2E2B0, &qword_22958);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - v6;
  v72 = sub_29A0(&qword_2E2C0, &qword_22978);
  v8 = *(v72 - 8);
  __chkstk_darwin(v72);
  v77 = &v57 - v9;
  v10 = type metadata accessor for TTRIIntentsSnippetSection(0);
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin(v10);
  v69 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));

  v13 = sub_1B1F8(v12);

  v14 = v13[2];
  v73 = v8;
  v74 = v7;
  if (v14)
  {
    v15 = sub_11D2C(v14, 0);
    v68 = sub_18EB4(&v79, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v14, v13);
    v16 = v79;

    sub_FB4C(v16);
    if (v68 != v14)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:

      __break(1u);

      __break(1u);
      return result;
    }

    v8 = v73;
    v7 = v74;
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
  }

  v79 = v15;
  sub_14128(&v79);
  v17 = v61;
  v18 = v79;
  v19 = v79[2];
  if (v19)
  {
    v79 = _swiftEmptyArrayStorage;
    sub_12B54(0, v19, 0);
    v20 = 0;
    v21 = v79;
    v68 = (v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
    v67 = (v76 + 48);
    v59 = (v76 + 32);
    v58 = (v76 + 8);
    v57 = "Today View Title";
    v66 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
    v65 = enum case for REMNavigationSpecifier.scheduled(_:);
    v60 = v3;
    v63 = v19;
    v64 = v18;
    while (1)
    {
      if (v20 >= v18[2])
      {
        __break(1u);
        goto LABEL_32;
      }

      v76 = 0;
      v22 = v77;
      sub_FBB0(v68 + *(v8 + 72) * v20, v77, &qword_2E2C0, &qword_22978);
      v23 = *(v22 + *(v72 + 48));
      sub_FBB0(v22, v7, &qword_2E2B0, &qword_22958);
      if ((*v67)(v7, 1, v17) != 1)
      {
        break;
      }

      v81._object = (v57 | 0x8000000000000000);
      v80._countAndFlagsBits = 0x7564656863736E55;
      v80._object = 0xEB0000000064656CLL;
      v81._countAndFlagsBits = 0xD000000000000032;
      v24 = sub_2001C(v80, v81);
      v26 = v25;
LABEL_18:
      v41 = sub_202CC();
      (*(*(v41 - 8) + 104))(v3, v66, v41);
      v42 = sub_2030C();
      v43 = *(v42 - 8);
      (*(v43 + 104))(v3, v65, v42);
      (*(v43 + 56))(v3, 0, 1, v42);
      if (v23 >> 62)
      {
        v51 = sub_2087C();
        if (v51)
        {
          v52 = v51;
          v44 = sub_11CA4(v51, 0);

          sub_18A08((v44 + 4), v52, v23);
          v54 = v53;

          v55 = v54 == v52;
          v17 = v61;
          if (!v55)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v44 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v44 = (v23 & 0xFFFFFFFFFFFFFF8);
      }

      v78 = v44;
      v45 = v76;
      sub_141DC(&v78);
      v46 = v69;
      if (v45)
      {
        goto LABEL_34;
      }

      v47 = v78;
      *v69 = v24;
      *(v46 + 8) = v26;
      v48 = v71;
      sub_1DFC0(v3, v46 + *(v71 + 20), &qword_2E000, &qword_22850);
      *(v46 + *(v48 + 24)) = v47;
      sub_469C(v77, &qword_2E2C0, &qword_22978);
      v79 = v21;
      v50 = v21[2];
      v49 = v21[3];
      if (v50 >= v49 >> 1)
      {
        sub_12B54((v49 > 1), v50 + 1, 1);
        v21 = v79;
      }

      ++v20;
      v21[2] = v50 + 1;
      sub_19818(v46, v21 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v50);
      v18 = v64;
      v8 = v73;
      v7 = v74;
      if (v63 == v20)
      {

        return v21;
      }
    }

    v62 = v21;
    (*v59)(v75, v7, v17);
    v27 = [objc_allocWithZone(NSDateFormatter) init];
    [v27 setDateStyle:4];
    [v27 setDoesRelativeDateFormatting:1];
    isa = sub_1FE6C().super.isa;
    v29 = [v27 stringFromDate:isa];

    v24 = sub_2041C();
    v26 = v30;

    [v27 setDoesRelativeDateFormatting:0];
    v31 = sub_1FE6C().super.isa;
    v32 = [v27 stringFromDate:v31];

    v33 = sub_2041C();
    v35 = v34;

    if (v24 == v33 && v26 == v35)
    {

      v3 = v60;
      v21 = v62;
    }

    else
    {
      v36 = sub_2090C();

      v3 = v60;
      v21 = v62;
      if ((v36 & 1) == 0)
      {
LABEL_17:
        v17 = v61;
        (*v58)(v75, v61);
        goto LABEL_18;
      }
    }

    if (qword_2DBA0 != -1)
    {
      swift_once();
    }

    v37 = qword_2E298;
    v38 = sub_1FE6C().super.isa;
    v39 = [v37 stringFromDate:v38];

    v24 = sub_2041C();
    v26 = v40;

    goto LABEL_17;
  }

  return _swiftEmptyArrayStorage;
}

void sub_11858()
{
  v0 = sub_1FEDC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1FECC();
  isa = sub_1FEBC().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  v6 = sub_203EC();
  [v4 setLocalizedDateFormatFromTemplate:v6];

  qword_2E298 = v4;
}

void *sub_119C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_29A0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_11BA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29A0(&qword_2E2D8, &qword_22988);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_11CA4(uint64_t a1, uint64_t a2)
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

  sub_29A0(&qword_2DD50, &unk_22710);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

void *sub_11D2C(uint64_t a1, uint64_t a2)
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

  sub_29A0(&qword_2E2E0, &qword_22990);
  v4 = *(sub_29A0(&qword_2E2C0, &qword_22978) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
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

void *sub_11E34(uint64_t a1, uint64_t a2)
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

  sub_29A0(&qword_2E338, &qword_229C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_11EB8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2087C();
LABEL_9:
  result = sub_207BC();
  *v2 = result;
  return result;
}

unint64_t sub_11F58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2068C(*(v2 + 40));
  return sub_12A24(a1, v4, &qword_2E0E8, REMObjectID_ptr);
}

unint64_t sub_11FA8(uint64_t a1, uint64_t a2)
{
  sub_2094C();
  sub_2044C();
  v4 = sub_2096C();

  return sub_1237C(a1, a2, v4);
}

unint64_t sub_12020(uint64_t a1)
{
  v1 = a1;
  sub_2094C();
  sub_2095C(v1 & 1);
  v2 = sub_2096C();

  return sub_12434(v1, v2);
}

unint64_t sub_1208C(uint64_t a1)
{
  v2 = sub_1FEAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29A0(&qword_2E2B0, &qword_22958);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  sub_2094C();
  sub_FBB0(a1, v8, &qword_2E2B0, &qword_22958);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_2095C(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_2095C(1u);
    sub_1E028(&qword_2E310, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_203BC();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_2096C();
  return sub_124A4(a1, v9);
}

unint64_t sub_1229C(void *a1)
{
  sub_2094C();
  if (a1)
  {
    sub_2095C(1u);
    v2 = a1;
    sub_206AC();
  }

  else
  {
    sub_2095C(0);
  }

  v3 = sub_2096C();

  return sub_12920(a1, v3);
}

unint64_t sub_1232C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2068C(*(v2 + 40));
  return sub_12A24(a1, v4, &qword_2E340, REMList_ptr);
}

unint64_t sub_1237C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2090C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_12434(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_124A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = sub_1FEAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29A0(&qword_2E318, &qword_229B0);
  __chkstk_darwin(v37);
  v9 = &v28 - v8;
  v10 = sub_29A0(&qword_2E2B0, &qword_22958) - 8;
  v11 = __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v39 = v3;
  v16 = -1 << *(v3 + 32);
  v17 = a2 & ~v16;
  v36 = v3 + 64;
  if ((*(v3 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = (v6 + 48);
    v20 = *(v12 + 72);
    v34 = v13;
    v35 = v20;
    v28 = (v6 + 48);
    v29 = (v6 + 32);
    v32 = (v6 + 8);
    v33 = ~v16;
    while (1)
    {
      sub_FBB0(*(v39 + 48) + v35 * v17, v15, &qword_2E2B0, &qword_22958);
      v21 = *(v37 + 48);
      sub_FBB0(v15, v9, &qword_2E2B0, &qword_22958);
      sub_FBB0(v38, &v9[v21], &qword_2E2B0, &qword_22958);
      v22 = *v19;
      if ((*v19)(v9, 1, v5) == 1)
      {
        break;
      }

      v23 = v34;
      sub_FBB0(v9, v34, &qword_2E2B0, &qword_22958);
      if (v22(&v9[v21], 1, v5) == 1)
      {
        sub_469C(v15, &qword_2E2B0, &qword_22958);
        (*v32)(v23, v5);
        v18 = v33;
LABEL_4:
        sub_469C(v9, &qword_2E318, &qword_229B0);
        goto LABEL_5;
      }

      v24 = &v9[v21];
      v25 = v30;
      (*v29)(v30, v24, v5);
      sub_1E028(&qword_2E320, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v31 = sub_203DC();
      v26 = *v32;
      (*v32)(v25, v5);
      sub_469C(v15, &qword_2E2B0, &qword_22958);
      v26(v23, v5);
      v19 = v28;
      sub_469C(v9, &qword_2E2B0, &qword_22958);
      v18 = v33;
      if (v31)
      {
        return v17;
      }

LABEL_5:
      v17 = (v17 + 1) & v18;
      if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return v17;
      }
    }

    sub_469C(v15, &qword_2E2B0, &qword_22958);
    if (v22(&v9[v21], 1, v5) == 1)
    {
      sub_469C(v9, &qword_2E2B0, &qword_22958);
      return v17;
    }

    goto LABEL_4;
  }

  return v17;
}

unint64_t sub_12920(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
          v10 = v9;
          v11 = a1;
          v12 = sub_2069C();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_12A24(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_2958(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_2069C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

char *sub_12AF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_12B98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_12B10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_12CA4(a1, a2, a3, *v3, &qword_2E368, &qword_229F8, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
  *v3 = result;
  return result;
}

void *sub_12B54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_12CA4(a1, a2, a3, *v3, &qword_2E0D0, &unk_22960, type metadata accessor for TTRIIntentsSnippetSection);
  *v3 = result;
  return result;
}

char *sub_12B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_29A0(&qword_2E370, &qword_22A00);
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

void *sub_12CA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_29A0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_12E80(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_29A0(&qword_2E2E0, &qword_22990);
  v10 = *(sub_29A0(&qword_2E2C0, &qword_22978) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_29A0(&qword_2E2C0, &qword_22978) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_13070(void *result, int64_t a2, char a3, void *a4)
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
    sub_29A0(&qword_2E338, &qword_229C8);
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
    sub_29A0(&qword_2E330, &qword_229C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_131A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29A0(&qword_2E118, &qword_229F0);
  result = sub_2089C();
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

      result = sub_2068C(*(v7 + 40));
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

uint64_t sub_1340C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29A0(&qword_2E2B8, &qword_22970);
  v30 = v4;
  result = sub_2089C();
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

      sub_2094C();
      sub_2095C(v20);
      result = sub_2096C();
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

uint64_t sub_1369C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1FEAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29A0(&qword_2E2B0, &qword_22958);
  v52 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = *v2;
  sub_29A0(&qword_2E308, &qword_229A8);
  v53 = v4;
  result = sub_2089C();
  v15 = result;
  if (*(v13 + 16))
  {
    v50 = v5;
    v44 = v2;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v49 = (v6 + 48);
    v46 = (v6 + 32);
    v45 = (v6 + 8);
    v22 = result + 64;
    v47 = v13;
    v57 = result;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_15:
      v28 = v24 | (v16 << 6);
      v29 = *(v13 + 48);
      v55 = *(v52 + 72);
      v56 = v25;
      v30 = v29 + v55 * v28;
      if (v53)
      {
        sub_1DFC0(v30, v12, &qword_2E2B0, &qword_22958);
        v54 = *(*(v13 + 56) + 8 * v28);
      }

      else
      {
        sub_FBB0(v30, v12, &qword_2E2B0, &qword_22958);
        v54 = *(*(v13 + 56) + 8 * v28);
      }

      sub_2094C();
      v31 = v12;
      v32 = v51;
      sub_FBB0(v12, v51, &qword_2E2B0, &qword_22958);
      v33 = v50;
      if ((*v49)(v32, 1, v50) == 1)
      {
        sub_2095C(0);
      }

      else
      {
        v34 = v48;
        (*v46)(v48, v32, v33);
        sub_2095C(1u);
        sub_1E028(&qword_2E310, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        sub_203BC();
        v35 = v34;
        v13 = v47;
        (*v45)(v35, v33);
      }

      result = sub_2096C();
      v36 = -1 << *(v57 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      v12 = v31;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v15 = v57;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v15 = v57;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1DFC0(v12, v15[6] + v55 * v23, &qword_2E2B0, &qword_22958);
      *(v15[7] + 8 * v23) = v54;
      ++v15[2];
      v20 = v56;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_37;
    }

    v43 = 1 << *(v13 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v13 + 16) = 0;
  }

LABEL_37:
  *v3 = v15;
  return result;
}

uint64_t sub_13C00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29A0(&qword_2E358, &qword_229E0);
  v33 = v4;
  result = sub_2089C();
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
      if ((v33 & 1) == 0)
      {
        v22 = v20;
      }

      sub_2094C();
      if (v20)
      {
        sub_2095C(1u);
        v23 = v20;
        sub_206AC();
      }

      else
      {
        sub_2095C(0);
      }

      result = sub_2096C();
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

LABEL_38:
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
        goto LABEL_38;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_13EB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29A0(&qword_2E348, &qword_229D0);
  result = sub_2089C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      }

      result = sub_2068C(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_14128(uint64_t *a1)
{
  v2 = *(sub_29A0(&qword_2E2C0, &qword_22978) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_19300(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_142C4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_141DC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_19314(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1DEAC(v6);
  return sub_207EC();
}

Swift::Int sub_14258(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19328(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_14408(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_142C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_208EC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_29A0(&qword_2E2C0, &qword_22978);
        v6 = sub_204CC();
        v6[2] = v5;
      }

      v7 = *(sub_29A0(&qword_2E2C0, &qword_22978) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_14D84(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_14510(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_14408(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_208EC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_29A0(&qword_2E330, &qword_229C0);
        v5 = sub_204CC();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1602C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_14BBC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_14510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_29A0(&qword_2E2B0, &qword_22958);
  v9 = __chkstk_darwin(v8 - 8);
  v54 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_1FEAC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v46 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v56 = &v39 - v17;
  v50 = sub_29A0(&qword_2E2C0, &qword_22978);
  v18 = __chkstk_darwin(v50);
  v49 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v59 = &v39 - v21;
  result = __chkstk_darwin(v20);
  v58 = &v39 - v24;
  v41 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v23 + 72);
    v55 = (v14 + 48);
    v51 = (v14 + 8);
    v52 = (v14 + 32);
    v27 = v25 + v26 * (a3 - 1);
    v47 = -v26;
    v48 = v25;
    v28 = a1 - a3;
    v40 = v26;
    v29 = v25 + v26 * a3;
    v53 = v12;
    v30 = v56;
LABEL_6:
    v44 = v27;
    v45 = a3;
    v42 = v29;
    v43 = v28;
    while (1)
    {
      v57 = v28;
      v31 = v58;
      sub_FBB0(v29, v58, &qword_2E2C0, &qword_22978);
      sub_FBB0(v27, v59, &qword_2E2C0, &qword_22978);
      sub_FBB0(v31, v12, &qword_2E2B0, &qword_22958);
      v32 = *v55;
      if ((*v55)(v12, 1, v13) == 1)
      {
        sub_469C(v12, &qword_2E2B0, &qword_22958);
        sub_469C(v59, &qword_2E2C0, &qword_22978);
        result = sub_469C(v58, &qword_2E2C0, &qword_22978);
LABEL_5:
        a3 = v45 + 1;
        v27 = v44 + v40;
        v28 = v43 - 1;
        v29 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return result;
        }

        goto LABEL_6;
      }

      v33 = *v52;
      (*v52)(v30, v12, v13);
      v34 = v54;
      sub_FBB0(v59, v54, &qword_2E2B0, &qword_22958);
      if (v32(v34, 1, v13) == 1)
      {
        (*v51)(v30, v13);
        sub_469C(v34, &qword_2E2B0, &qword_22958);
        sub_469C(v59, &qword_2E2C0, &qword_22978);
        result = sub_469C(v58, &qword_2E2C0, &qword_22978);
        v12 = v53;
      }

      else
      {
        v35 = v46;
        v33(v46, v34, v13);
        v36 = sub_1FE7C();
        v37 = *v51;
        (*v51)(v35, v13);
        v37(v56, v13);
        sub_469C(v59, &qword_2E2C0, &qword_22978);
        result = sub_469C(v58, &qword_2E2C0, &qword_22978);
        v12 = v53;
        if ((v36 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v48)
      {
        break;
      }

      v38 = v49;
      sub_1DFC0(v29, v49, &qword_2E2C0, &qword_22978);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1DFC0(v38, v27, &qword_2E2C0, &qword_22978);
      v27 += v47;
      v29 += v47;
      v28 = v57 + 1;
      if (v57 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_14A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(char *__return_ptr, void **, void **), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v25 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v26 = a3;
      v16 = *(v13 + 8 * a3);
      v17 = v15;
      v18 = v14;
      do
      {
        v19 = *v18;
        v29 = v16;
        v28 = v19;
        v20 = v16;
        v21 = v19;
        a5(&v27, &v29, &v28);

        if (v27 != 1)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return result;
        }

        v22 = *v18;
        v16 = *(v18 + 8);
        *v18 = v16;
        *(v18 + 8) = v22;
        v18 -= 8;
      }

      while (!__CFADD__(v17++, 1));
      a3 = v26 + 1;
      v14 += 8;
      --v15;
      if (v26 + 1 != v25)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_14BBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
LABEL_6:
    v23 = v4;
    v24 = a3;
    v6 = *(v25 + 16 * a3);
    v22 = v5;
    while (1)
    {
      v26 = v5;
      v7 = *v4;
      v8 = v6;

      v9 = v7;

      v10 = [v8 displayName];
      v11 = sub_2041C();
      v13 = v12;

      v14 = [v9 displayName];
      v15 = sub_2041C();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v24 + 1;
        v4 = v23 + 16;
        v5 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_2090C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v25)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v20;
      v4 -= 16;
      v5 = v26 + 1;
      if (v26 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}