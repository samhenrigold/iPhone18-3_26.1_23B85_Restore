uint64_t sub_10017A2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v4 = type metadata accessor for Attachment(0);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();
  sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = sub_10000341C(&qword_100265FE8, &unk_1001DF330);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = sub_10000341C(&qword_100261F10, &qword_1001D8590);
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  sub_10000341C(&qword_100261F18, &unk_1001DF340);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for MainActor();
  v3[28] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[29] = v9;
  v3[30] = v8;

  return _swift_task_switch(sub_10017A4F8, v9, v8);
}

uint64_t sub_10017A4F8()
{
  v2 = *(v1 + 184);
  v43 = *(v1 + 112);
  v44 = *(v1 + 176);
  v3 = *(**(v1 + 96) + 16);
  v41 = (v2 + 48);
  v42 = (v2 + 56);
  v39 = **(v1 + 96);

  v4 = 0;
  v40 = v3;
  while (1)
  {
    if (v4 == v3)
    {
      v6 = 1;
      v7 = v3;
    }

    else
    {
      if (v4 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v9 = *(v1 + 192);
      v8 = *(v1 + 200);
      v7 = v4 + 1;
      v10 = v39 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v4;
      v11 = *(v44 + 48);
      *v9 = v4;
      sub_10017F384(v10, v9 + v11, type metadata accessor for Attachment);
      sub_10002A894(v9, v8, &qword_100261F10, &qword_1001D8590);
      v6 = 0;
    }

    v13 = *(v1 + 200);
    v12 = *(v1 + 208);
    v14 = *(v1 + 176);
    (*v42)(v13, v6, 1, v14);
    sub_10002A894(v13, v12, &qword_100261F18, &unk_1001DF340);
    if ((*v41)(v12, 1, v14) == 1)
    {
      break;
    }

    v45 = v7;
    v15 = *(v1 + 208);
    v16 = *(v1 + 136);
    v17 = *(v1 + 144);
    v18 = *(v1 + 128);
    v19 = *v15;
    v20 = *(v44 + 48);
    v21 = type metadata accessor for TaskPriority();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v17, 1, 1, v21);
    sub_10003D784(v15 + v20, v18);
    v23 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v19;
    sub_10003D784(v18, v24 + v23);
    sub_1000081F8(v17, v16, &unk_10025B5D0, &qword_1001D05A0);
    v25 = (*(v22 + 48))(v16, 1, v21);
    v26 = *(v1 + 136);
    if (v25 == 1)
    {
      sub_10000F500(*(v1 + 136), &unk_10025B5D0, &qword_1001D05A0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v22 + 8))(v26, v21);
    }

    v3 = v40;
    if (v24[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v27 = dispatch thunk of Actor.unownedExecutor.getter();
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = **(v1 + 88);
    v31 = swift_allocObject();
    *(v31 + 16) = &unk_1001DF358;
    *(v31 + 24) = v24;

    sub_10000341C(&qword_100262FE8, &qword_1001DA180);
    v32 = v29 | v27;
    if (v29 | v27)
    {
      v32 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v27;
      *(v1 + 40) = v29;
    }

    v5 = *(v1 + 144);
    *(v1 + 48) = 1;
    *(v1 + 56) = v32;
    *(v1 + 64) = v30;
    v0 = swift_task_create();

    sub_10000F500(v5, &unk_10025B5D0, &qword_1001D05A0);
    v4 = v45;
  }

  v33 = *(v1 + 96);

  sub_10000341C(&qword_100262FE8, &qword_1001DA180);
  TaskGroup.makeAsyncIterator()();
  v0 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_21:
  v0 = sub_10017E430(v0);
LABEL_17:
  **(v1 + 96) = v0;
  v35 = static MainActor.shared.getter();
  *(v1 + 248) = v35;
  v36 = swift_task_alloc();
  *(v1 + 256) = v36;
  *v36 = v1;
  v36[1] = sub_10017A9DC;
  v37 = *(v1 + 152);

  return TaskGroup.Iterator.next(isolation:)(v1 + 72, v35, &protocol witness table for MainActor, v37);
}

uint64_t sub_10017A9DC()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_10017AB20, v3, v2);
}

uint64_t sub_10017AB20()
{
  v2 = v0[9];
  v1 = v0[10];
  if (v1 != 1)
  {
    v5 = v0[12];
    v6 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[12];
      isUniquelyReferenced_nonNull_native = sub_10017E430(v6);
      v6 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v2 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v2 < v6[2])
        {
          v11 = v6 + ((*(v0[14] + 80) + 32) & ~*(v0[14] + 80)) + *(v0[14] + 72) * v2;
          v12 = *(v0[13] + 36);
          v13 = *(v11 + v12);
          *(v11 + v12) = v1;

          v14 = static MainActor.shared.getter();
          v0[31] = v14;
          v15 = swift_task_alloc();
          v0[32] = v15;
          *v15 = v0;
          v15[1] = sub_10017A9DC;
          v10 = v0[19];
          v9 = &protocol witness table for MainActor;
          isUniquelyReferenced_nonNull_native = (v0 + 9);
          v8 = v14;

          return TaskGroup.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, v8, v9, v10);
        }

LABEL_13:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, v8, v9, v10);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[20] + 8))(v0[21], v0[19]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10017AD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_10017AD44, 0, 0);
}

uint64_t sub_10017AD44()
{
  **(v0 + 16) = *(v0 + 24);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10017ADDC;

  return sub_100176AF4();
}

uint64_t sub_10017ADDC(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10017AEDC, 0, 0);
}

uint64_t sub_10017AEFC()
{

  sub_10000F500(v0 + 24, &unk_10025B1C0, &unk_1001CFA90);

  v1 = OBJC_IVAR____TtC21WritingToolsUIService17AttachmentManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10017AFE8(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10017B0A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Attachment.UploadState(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10017B260(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for Attachment.UploadState(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_10017B404(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10017B550(319, &qword_100265DF0, &type metadata accessor for UTType);
    if (v2 <= 0x3F)
    {
      sub_10017B5A4(319, &qword_100265DF8, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_10017B550(319, &unk_100265E00, type metadata accessor for CGImage);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Attachment.UploadState(319);
          if (v5 <= 0x3F)
          {
            sub_10017B5A4(319, &qword_10025B490, &type metadata for String);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10017B550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10017B5A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10017B5F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017B640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10017B694(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10017B6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017B75C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10017B7E8(uint64_t a1)
{
  sub_10017B840();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_10017B840()
{
  if (!qword_100265ED0)
  {
    v0 = type metadata accessor for DocumentResourceIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_100265ED0);
    }
  }
}

unint64_t sub_10017B8D4()
{
  result = qword_100265F00;
  if (!qword_100265F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265F00);
  }

  return result;
}

uint64_t sub_10017B970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10017BA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10017BAAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (1)
    {
      v6 = (v4 + (v3 << 6));
      v7 = v6[1];
      v22 = *v6;
      v23 = v7;
      v8 = v6[3];
      v24 = v6[2];
      v25 = v8;
      v9 = (v5 + (v3 << 6));
      v10 = v9[1];
      v26 = *v9;
      v27 = v10;
      v11 = v9[3];
      v28 = v9[2];
      v29 = v11;
      if (v22 != v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v12 = *(v23 + 16);
      if (v12 != *(v27 + 16))
      {
        break;
      }

      if (v12 && v23 != v27)
      {
        v13 = (v23 + 40);
        v14 = (v27 + 40);
        do
        {
          v15 = *(v13 - 1) == *(v14 - 1) && *v13 == *v14;
          if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }

          v13 += 2;
          v14 += 2;
        }

        while (--v12);
      }

      v16 = *(&v23 + 1);
      v17 = *(&v27 + 1);
      sub_10004CBCC(&v22, v21);
      sub_10004CBCC(&v26, v21);
      if ((sub_10017CBE0(v16, v17) & 1) == 0)
      {
        goto LABEL_34;
      }

      if (*(&v24 + 1))
      {
        if (!*(&v28 + 1) || v24 != v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_34:
          sub_1000CCB60(&v26);
          sub_1000CCB60(&v22);
          return 0;
        }
      }

      else if (*(&v28 + 1))
      {
        goto LABEL_34;
      }

      v18 = *(&v29 + 1);
      if (*(&v25 + 1))
      {
        if (!*(&v29 + 1))
        {
          goto LABEL_34;
        }

        if (v25 == v29)
        {
          sub_1000CCB60(&v26);
          sub_1000CCB60(&v22);
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1000CCB60(&v26);
          sub_1000CCB60(&v22);
          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        sub_1000CCB60(&v26);
        sub_1000CCB60(&v22);
        if (v18)
        {
          return 0;
        }
      }

      if (++v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10017BD04(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1000081B0(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v19 = v18;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = static NSObject.== infix(_:_:)();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10017BF6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v27 = v2;
  v28 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v21 = *v5;
    v22 = v8;
    v9 = v5[3];
    *v23 = v5[2];
    *&v23[16] = v9;
    v10 = v6[1];
    v24 = *v6;
    v25 = v10;
    v11 = v6[3];
    *v26 = v6[2];
    *&v26[16] = v11;
    if (v21 != v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v22 != v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v23[0])
    {
      if (v23[0] == 1)
      {
        v12 = 0x74786554676E6F6CLL;
      }

      else
      {
        v12 = 0x6F746F6870;
      }

      if (v23[0] == 1)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = v26[0];
      if (v26[0])
      {
LABEL_17:
        if (v14 == 1)
        {
          v15 = 0x74786554676E6F6CLL;
        }

        else
        {
          v15 = 0x6F746F6870;
        }

        if (v14 == 1)
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        if (v12 != v15)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v12 = 0x78655474726F6873;
      v13 = 0xE900000000000074;
      v14 = v26[0];
      if (v26[0])
      {
        goto LABEL_17;
      }
    }

    v16 = 0xE900000000000074;
    if (v12 != 0x78655474726F6873)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (v13 == v16)
    {
      sub_10017F570(&v21, v20);
      sub_10017F570(&v24, v20);

      goto LABEL_30;
    }

LABEL_29:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10017F570(&v21, v20);
    sub_10017F570(&v24, v20);

    if ((v17 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (*&v23[8] != *&v26[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_37:
      sub_10004C65C(&v24);
      sub_10004C65C(&v21);
      return 0;
    }

    v18 = sub_10017BAAC(*&v23[24], *&v26[24]);
    sub_10004C65C(&v24);
    sub_10004C65C(&v21);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

BOOL sub_10017C1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_10017F384(v13, v10, type metadata accessor for Attachment);
        sub_10017F384(v14, v7, type metadata accessor for Attachment);
        v16 = sub_10017EA28(v10, v7);
        sub_10017F3EC(v7, type metadata accessor for Attachment);
        sub_10017F3EC(v10, type metadata accessor for Attachment);
        if (!v16)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    return 0;
  }

  return v16;
}

uint64_t sub_10017C380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *v3 >> 62;
    v10 = *i >> 62;
    if (v9 == 3)
    {
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0xC000000000000000;
      }

      v12 = 0;
      v13 = v11 && *i >> 62 == 3;
      if (v13 && !v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v10 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v16 = __OFSUB__(v18, v19);
        v12 = v18 - v19;
        if (v16)
        {
          goto LABEL_138;
        }

        goto LABEL_28;
      }

      v12 = 0;
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v9)
    {
      LODWORD(v12) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_137;
      }

      v12 = v12;
      if (v10 <= 1)
      {
LABEL_29:
        if (v10)
        {
          LODWORD(v17) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
          }

          v17 = v17;
        }

        else
        {
          v17 = BYTE6(v7);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v12 = BYTE6(v6);
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v10 != 2)
    {
      if (v12)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_136;
    }

LABEL_33:
    if (v12 != v17)
    {
      return 0;
    }

    if (v12 < 1)
    {
      goto LABEL_6;
    }

    if (v9 > 1)
    {
      break;
    }

    if (v9)
    {
      v33 = v5;
      if (v5 > v5 >> 32)
      {
        goto LABEL_139;
      }

      v64 = *(v3 - 1);
      sub_10004DC4C(v5, v6);
      sub_10004DC4C(v8, v7);
      v27 = __DataStorage._bytes.getter();
      if (v27)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_141;
        }

        v27 += v33 - v34;
      }

      __DataStorage._length.getter();
      if (v10 == 2)
      {
        v62 = v27;
        v54 = *(v8 + 16);
        v53 = *(v8 + 24);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v55 = __DataStorage._offset.getter();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_155;
          }

          v29 += v54 - v55;
        }

        v16 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v16)
        {
          goto LABEL_151;
        }

        v57 = __DataStorage._length.getter();
        if (v57 >= v56)
        {
          v32 = v56;
        }

        else
        {
          v32 = v57;
        }

        result = v62;
        if (!v62)
        {
          goto LABEL_166;
        }

        if (!v29)
        {
          goto LABEL_165;
        }

        goto LABEL_127;
      }

      if (v10 == 1)
      {
        if (v8 >> 32 < v8)
        {
          goto LABEL_150;
        }

        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v35 = __DataStorage._offset.getter();
          if (__OFSUB__(v8, v35))
          {
            goto LABEL_157;
          }

          v29 += v8 - v35;
        }

        v36 = __DataStorage._length.getter();
        if (v36 >= (v8 >> 32) - v8)
        {
          v32 = (v8 >> 32) - v8;
        }

        else
        {
          v32 = v36;
        }

        result = v27;
        if (!v27)
        {
          goto LABEL_172;
        }

        if (!v29)
        {
          goto LABEL_171;
        }

LABEL_127:
        if (result == v29)
        {
          sub_10004DD08(v8, v7);
          sub_10004DD08(v64, v6);
          goto LABEL_6;
        }

        v58 = v32;
        v59 = v29;
        goto LABEL_132;
      }

      __s1[0] = v8;
      LOWORD(__s1[1]) = v7;
      BYTE2(__s1[1]) = BYTE2(v7);
      BYTE3(__s1[1]) = BYTE3(v7);
      BYTE4(__s1[1]) = BYTE4(v7);
      BYTE5(__s1[1]) = BYTE5(v7);
      if (!v27)
      {
        goto LABEL_162;
      }

      goto LABEL_131;
    }

    __s1[0] = *(v3 - 1);
    LOWORD(__s1[1]) = v6;
    BYTE2(__s1[1]) = BYTE2(v6);
    BYTE3(__s1[1]) = BYTE3(v6);
    BYTE4(__s1[1]) = BYTE4(v6);
    BYTE5(__s1[1]) = BYTE5(v6);
    if (!v10)
    {
      goto LABEL_89;
    }

    v63 = v5;
    if (v10 == 1)
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_143;
      }

      sub_10004DC4C(v5, v6);
      sub_10004DC4C(v8, v7);
      v21 = __DataStorage._bytes.getter();
      if (!v21)
      {
        goto LABEL_159;
      }

      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v23))
      {
        goto LABEL_147;
      }

      v24 = (v8 - v23 + v22);
      result = __DataStorage._length.getter();
      if (!v24)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      sub_10004DC4C(v5, v6);
      sub_10004DC4C(v8, v7);
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_152;
        }

        v24 += v41 - v42;
      }

      v16 = __OFSUB__(v40, v41);
      v20 = v40 - v41;
      if (v16)
      {
        goto LABEL_145;
      }

      result = __DataStorage._length.getter();
      if (!v24)
      {
        goto LABEL_158;
      }
    }

LABEL_101:
    if (result >= v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = result;
    }

    v47 = memcmp(__s1, v24, v46);
    sub_10004DD08(v8, v7);
    sub_10004DD08(v63, v6);
    if (v47)
    {
      return 0;
    }

LABEL_6:
    v3 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v9 != 2)
  {
    memset(__s1, 0, 14);
    if (!v10)
    {
LABEL_89:
      __s2 = v8;
      v66 = v7;
      v67 = BYTE2(v7);
      v68 = BYTE3(v7);
      v69 = BYTE4(v7);
      v70 = BYTE5(v7);
      if (memcmp(__s1, &__s2, BYTE6(v7)))
      {
        return 0;
      }

      goto LABEL_6;
    }

    v63 = v5;
    if (v10 == 2)
    {
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      sub_10004DC4C(v5, v6);
      sub_10004DC4C(v8, v7);
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v39 = __DataStorage._offset.getter();
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_153;
        }

        v24 += v38 - v39;
      }

      v16 = __OFSUB__(v37, v38);
      v20 = v37 - v38;
      if (v16)
      {
        goto LABEL_146;
      }

      result = __DataStorage._length.getter();
      if (!v24)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_142;
      }

      sub_10004DC4C(v5, v6);
      sub_10004DC4C(v8, v7);
      v43 = __DataStorage._bytes.getter();
      if (!v43)
      {
        goto LABEL_163;
      }

      v44 = v43;
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v45))
      {
        goto LABEL_148;
      }

      v24 = (v8 - v45 + v44);
      result = __DataStorage._length.getter();
      if (!v24)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_101;
  }

  v26 = *(v5 + 16);
  v64 = *(v3 - 1);
  sub_10004DC4C(v5, v6);
  sub_10004DC4C(v8, v7);
  v27 = __DataStorage._bytes.getter();
  if (v27)
  {
    v28 = __DataStorage._offset.getter();
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_140;
    }

    v27 += v26 - v28;
  }

  __DataStorage._length.getter();
  if (v10 == 2)
  {
    v61 = v27;
    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v29 = __DataStorage._bytes.getter();
    if (v29)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_154;
      }

      v29 += v49 - v50;
    }

    v16 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v16)
    {
      goto LABEL_149;
    }

    v52 = __DataStorage._length.getter();
    if (v52 >= v51)
    {
      v32 = v51;
    }

    else
    {
      v32 = v52;
    }

    result = v61;
    if (!v61)
    {
      goto LABEL_170;
    }

    if (!v29)
    {
      goto LABEL_169;
    }

    goto LABEL_127;
  }

  if (v10 == 1)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_144;
    }

    v29 = __DataStorage._bytes.getter();
    if (v29)
    {
      v30 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v30))
      {
        goto LABEL_156;
      }

      v29 += v8 - v30;
    }

    v31 = __DataStorage._length.getter();
    if (v31 >= (v8 >> 32) - v8)
    {
      v32 = (v8 >> 32) - v8;
    }

    else
    {
      v32 = v31;
    }

    result = v27;
    if (!v27)
    {
      goto LABEL_168;
    }

    if (!v29)
    {
      goto LABEL_167;
    }

    goto LABEL_127;
  }

  __s1[0] = v8;
  LOWORD(__s1[1]) = v7;
  BYTE2(__s1[1]) = BYTE2(v7);
  BYTE3(__s1[1]) = BYTE3(v7);
  BYTE4(__s1[1]) = BYTE4(v7);
  BYTE5(__s1[1]) = BYTE5(v7);
  if (v27)
  {
LABEL_131:
    v58 = BYTE6(v7);
    v59 = __s1;
    result = v27;
LABEL_132:
    v60 = memcmp(result, v59, v58);
    sub_10004DD08(v8, v7);
    sub_10004DD08(v64, v6);
    if (v60)
    {
      return 0;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __DataStorage._length.getter();
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  result = __DataStorage._length.getter();
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

uint64_t sub_10017CBE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10017CD98(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10017CF1C(unint64_t result, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v6 = result;
  sub_10000341C(a4, a5);
  result = _swift_isClassOrObjCExistentialType();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = a3 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v7 = a3;
  }

  if (*(v7 + 16) <= v6)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10017CF90(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000341C(a2, a3);
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a1 >> 62)
  {

    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v5 = a1;
    }

    return *(v5 + 16);
  }
}

uint64_t sub_10017D018(unint64_t a1, unint64_t a2)
{
  v4 = sub_10000341C(&qword_100265F68, &qword_1001DF1D0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a2 >> 62)
  {
    v11 = _CocoaArrayWrapper.subscript.getter();
    v21 = v11;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v8, v4);
      return v11;
    }

    goto LABEL_15;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v15 = "ce>) -> Array<some>>>.0";
    v16 = 0xD000000000000046;
    goto LABEL_17;
  }

  if (isClassOrObjCExistentialType)
  {
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v13 = a2;
  }

  if (*(v13 + 16) <= a1)
  {
    goto LABEL_14;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v21 = v11;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v15 = "Attachment(type: ";
  v16 = 0xD000000000000043;
LABEL_17:
  v17 = v15 | 0x8000000000000000;
  String.append(_:)(*&v16);
  v18._object = 0x80000001001E8210;
  v18._countAndFlagsBits = 0xD000000000000057;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x756F662074756220;
  v19._object = 0xEB0000000020646ELL;
  String.append(_:)(v19);
  swift_getObjectType();
  v20._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v20);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10017D2D4(unint64_t a1, unint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F438, &qword_1001D43A8);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a2 >> 62)
  {
    v11 = _CocoaArrayWrapper.subscript.getter();
    v21 = v11;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v8, v4);
      return v11;
    }

    goto LABEL_15;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v15 = "ce>) -> Array<some>>>.0";
    v16 = 0xD000000000000046;
    goto LABEL_17;
  }

  if (isClassOrObjCExistentialType)
  {
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v13 = a2;
  }

  if (*(v13 + 16) <= a1)
  {
    goto LABEL_14;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v21 = v11;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v15 = "Attachment(type: ";
  v16 = 0xD000000000000043;
LABEL_17:
  v17 = v15 | 0x8000000000000000;
  String.append(_:)(*&v16);
  v18._object = 0x80000001001E82E0;
  v18._countAndFlagsBits = 0xD000000000000048;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x756F662074756220;
  v19._object = 0xEB0000000020646ELL;
  String.append(_:)(v19);
  swift_getObjectType();
  v20._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v20);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

void *sub_10017D590(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000341C(&qword_100265FD0, &unk_1001DF250);
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
    sub_10000341C(&unk_10025B1B0, &qword_1001CFA68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10017D6C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000341C(&qword_100265F50, &qword_1001DF1B0);
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
    type metadata accessor for IAPayloadValue(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017D814(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265488, &unk_1001DDEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10017D948(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10000341C(a5, a6);
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

char *sub_10017DB24(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265FC0, &qword_1001DF238);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017DC30(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_1002653E8, &qword_1001DDC80);
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

char *sub_10017DD84(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_10025F4D8, &qword_1001D4650);
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

char *sub_10017DE90(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265490, &qword_1001DF230);
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

void *sub_10017DFC4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000341C(&qword_100265498, &unk_1001DDEB0);
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
    sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017E10C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265FA8, &qword_1001DF210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10017E240(void *result, int64_t a2, char a3, void *a4)
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

  sub_10000341C(&qword_100265588, &unk_1001DF380);
  v10 = *(sub_10000341C(&qword_100262FD0, &unk_1001D4CC0) - 8);
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
  v15 = *(sub_10000341C(&qword_100262FD0, &unk_1001D4CC0) - 8);
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

uint64_t sub_10017E4A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10017E50C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_10017E600;

  return v5(v2 + 16);
}

uint64_t sub_10017E600()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10017E714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Attachment.UploadState(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&qword_100265F30, &qword_1001DF118);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10017F384(a1, &v21 - v13, type metadata accessor for Attachment.UploadState);
  sub_10017F384(a2, &v14[v15], type metadata accessor for Attachment.UploadState);
  v16 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v14, 1, v16) != 1)
  {
    sub_10017F384(v14, v10, type metadata accessor for Attachment.UploadState);
    if (v17(&v14[v15], 1, v16) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = static DocumentResourceIdentifier.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10017F3EC(v14, type metadata accessor for Attachment.UploadState);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v15], 1, v16) != 1)
  {
LABEL_6:
    sub_10000F500(v14, &qword_100265F30, &qword_1001DF118);
    v18 = 0;
    return v18 & 1;
  }

  sub_10017F3EC(v14, type metadata accessor for Attachment.UploadState);
  v18 = 1;
  return v18 & 1;
}

BOOL sub_10017EA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_10000341C(&qword_100265F18, &qword_1001DF110);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for Attachment(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v53 = v14;
  v21 = *(v14 + 24);
  v22 = *(v11 + 48);
  v51 = a1;
  sub_1000081F8(a1 + v21, v13, &qword_10025F4E0, &unk_1001D1110);
  v52 = a2;
  v23 = a2 + v21;
  v24 = v5;
  sub_1000081F8(v23, &v13[v22], &qword_10025F4E0, &unk_1001D1110);
  v25 = *(v5 + 48);
  if (v25(v13, 1, v4) == 1)
  {
    if (v25(&v13[v22], 1, v4) == 1)
    {
      sub_10000F500(v13, &qword_10025F4E0, &unk_1001D1110);
      goto LABEL_19;
    }

LABEL_16:
    sub_10000F500(v13, &qword_100265F18, &qword_1001DF110);
    return 0;
  }

  sub_1000081F8(v13, v10, &qword_10025F4E0, &unk_1001D1110);
  if (v25(&v13[v22], 1, v4) == 1)
  {
    (*(v24 + 8))(v10, v4);
    goto LABEL_16;
  }

  (*(v24 + 32))(v7, &v13[v22], v4);
  sub_10017B970(&qword_100265F28, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v24 + 8);
  v28(v7, v4);
  v28(v10, v4);
  sub_10000F500(v13, &qword_10025F4E0, &unk_1001D1110);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v29 = v52;
  v30 = v53;
  v31 = v53[7];
  v32 = v51;
  v33 = (v51 + v31);
  v34 = *(v51 + v31 + 8);
  v35 = (v52 + v31);
  v36 = *(v52 + v31 + 8);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v37 = v53[8];
  v38 = *(v51 + v37);
  v39 = *(v51 + v37 + 8);
  v40 = (v52 + v37);
  if ((v38 != *v40 || v39 != v40[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v41 = v30[9];
  v42 = *(v29 + v41);
  if (*(v32 + v41))
  {
    if (!v42)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    sub_10017B970(&qword_100265F20, type metadata accessor for CGImage, &unk_1001CE6C4);
    v43 = v42;
    v44 = static _CFObject.== infix(_:_:)();

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  if ((sub_10017E714(v32 + v30[10], v29 + v30[10]) & 1) == 0)
  {
    return 0;
  }

  v45 = v30[11];
  v46 = (v32 + v45);
  v47 = *(v32 + v45 + 8);
  v48 = (v29 + v45);
  v49 = v48[1];
  if (v47)
  {
    return v49 && (*v46 == *v48 && v47 == v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v49;
}

uint64_t sub_10017EF24(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10017EFDC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = __DataStorage._length.getter();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_10017EF24(v3, v7);

  return v8;
}

uint64_t sub_10017F0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == enum case for Data.Deallocator.none(_:))
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_10017EFDC(v10, a2);
  }

  else
  {
    v13 = Data.Deallocator._deallocator.getter();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t sub_10017F2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017F384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10017F3EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10017F50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment.UploadState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10017F5E0()
{
  result = qword_100265FD8;
  if (!qword_100265FD8)
  {
    sub_100003E34(&qword_100265FE0, qword_1001DF290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265FD8);
  }

  return result;
}

uint64_t sub_10017F648()
{
  v1 = type metadata accessor for Attachment(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[6];
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[10];
  v11 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if (!(*(*(v11 - 8) + 48))(v5 + v10, 1, v11))
  {
    v12 = type metadata accessor for DocumentResourceIdentifier();
    (*(*(v12 - 8) + 8))(v5 + v10, v12);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10017F878(uint64_t a1)
{
  v4 = *(type metadata accessor for Attachment(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100028688;

  return sub_10017AD20(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10017F970(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_10017F9A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100028688;

  return sub_10017E50C(a1, v4);
}

uint64_t sub_10017FA90(unsigned __int8 a1)
{
  _StringGuts.grow(_:)(4701);
  v2._countAndFlagsBits = 0xD000000000000145;
  v2._object = 0x80000001001E8B90;
  String.append(_:)(v2);
  v3 = 0x80000001001E9E10;
  v4 = 0xD000000000000061;
  if (a1 != 2)
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  v5 = 0x80000001001E9F80;
  v6 = 0xD000000000000096;
  if (a1)
  {
    v6 = 0xD0000000000000F3;
    v5 = 0x80000001001E9E80;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (a1 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0xD0000000000002EFLL;
  v10._object = 0x80000001001E8CE0;
  String.append(_:)(v10);
  v11._object = 0x80000001001E4A30;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000641;
  v12._object = 0x80000001001E8FD0;
  String.append(_:)(v12);
  v13._object = 0x80000001001E4A30;
  v13._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v13);
  v14._object = 0x80000001001E9620;
  v14._countAndFlagsBits = 0x1000000000000632;
  String.append(_:)(v14);
  v15._object = 0x80000001001E4A30;
  v15._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD0000000000001AELL;
  v16._object = 0x80000001001E9C60;
  String.append(_:)(v16);
  return 0;
}

uint64_t sub_10017FC38@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3 == 2)
  {
    v6._countAndFlagsBits = 0x6F746F6870;
    v6._object = 0xE500000000000000;
    String.append(_:)(v6);
    v5 = &off_10024A068;
  }

  else if (v3 == 1)
  {
    v4._countAndFlagsBits = 0x74786554676E6F6CLL;
    v4._object = 0xE800000000000000;
    String.append(_:)(v4);
    v5 = &off_10024A018;
  }

  else
  {
    v7._countAndFlagsBits = 0x78655474726F6873;
    v7._object = 0xE900000000000074;
    String.append(_:)(v7);
    v5 = &off_100249FC8;
  }

  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = v5[2];
  if (v9)
  {
    sub_100163C20(0, v9, 0);
    v10 = (v5 + 5);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 34;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_100163C20((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = 34;
      v17[5] = 0xE100000000000000;
      v10 += 2;
      --v9;
    }

    while (v9);
  }

  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100183068();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  *a2 = 8237;
  a2[1] = v23;
  return result;
}

char *sub_10017FE98(unsigned __int8 a1)
{
  v2 = sub_10000341C(&qword_100265FF8, &qword_1001DF3D0);
  __chkstk_darwin(v2 - 8);
  v295 = v256 - v3;
  v4 = sub_10000341C(&qword_100266000, &qword_1001DF3D8);
  __chkstk_darwin(v4 - 8);
  v293 = v256 - v5;
  v294 = type metadata accessor for DateComponents();
  v297 = *(v294 - 8);
  __chkstk_darwin(v294);
  v292 = v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for Calendar();
  v296 = *(v291 - 8);
  __chkstk_darwin(v291);
  v290 = v256 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_100266008, &unk_1001DF3E0);
  v9 = __chkstk_darwin(v8 - 8);
  v274 = v256 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v279 = v256 - v11;
  v304 = type metadata accessor for PromptExampleBuilder.ExampleMessage(0);
  v302 = *(v304 - 8);
  v12 = __chkstk_darwin(v304);
  v260 = v256 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v284 = v256 - v15;
  v16 = __chkstk_darwin(v14);
  v259 = v256 - v17;
  v18 = __chkstk_darwin(v16);
  v283 = v256 - v19;
  v20 = __chkstk_darwin(v18);
  v282 = v256 - v21;
  v22 = __chkstk_darwin(v20);
  v277 = v256 - v23;
  v24 = __chkstk_darwin(v22);
  v281 = v256 - v25;
  v26 = __chkstk_darwin(v24);
  v273 = v256 - v27;
  v28 = __chkstk_darwin(v26);
  v272 = v256 - v29;
  v30 = __chkstk_darwin(v28);
  v288 = v256 - v31;
  v32 = __chkstk_darwin(v30);
  v287 = v256 - v33;
  v34 = __chkstk_darwin(v32);
  v271 = v256 - v35;
  v36 = __chkstk_darwin(v34);
  v278 = v256 - v37;
  v38 = __chkstk_darwin(v36);
  v270 = v256 - v39;
  v40 = __chkstk_darwin(v38);
  v286 = v256 - v41;
  v42 = __chkstk_darwin(v40);
  v303 = v256 - v43;
  v44 = __chkstk_darwin(v42);
  v276 = v256 - v45;
  v46 = __chkstk_darwin(v44);
  v298 = v256 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = v256 - v49;
  v51 = __chkstk_darwin(v48);
  v53 = v256 - v52;
  v54 = __chkstk_darwin(v51);
  v56 = v256 - v55;
  v57 = __chkstk_darwin(v54);
  v59 = v256 - v58;
  v60 = __chkstk_darwin(v57);
  v62 = v256 - v61;
  v63 = __chkstk_darwin(v60);
  v65 = v256 - v64;
  __chkstk_darwin(v63);
  v67 = v256 - v66;
  v308 = _swiftEmptyArrayStorage;
  if (a1 > 1u)
  {
    v83 = v303;
    if (a1 != 2)
    {
      goto LABEL_25;
    }

    v88 = enum case for ChatMessageRole.user(_:);
    v89 = type metadata accessor for ChatMessageRole();
    (*(*(v89 - 8) + 104))(v62, v88, v89);
    v90 = &v62[*(v304 + 20)];
    *v90 = 0xD00000000000001CLL;
    *(v90 + 1) = 0x80000001001E89E0;
    *(v90 + 2) = 0;
    *(v90 + 3) = 0;
    *(v90 + 4) = 0xD000000000000055;
    *(v90 + 5) = 0x80000001001E8A40;
    v90[48] = 1;
    v79 = sub_10017D920(0, 1, 1, _swiftEmptyArrayStorage);
    v92 = v79[2];
    v91 = v79[3];
    if (v92 >= v91 >> 1)
    {
      v79 = sub_10017D920((v91 > 1), v92 + 1, 1, v79);
    }

    v79[2] = v92 + 1;
    sub_10004DE04(v62, v79 + ((*(v302 + 80) + 32) & ~*(v302 + 80)) + *(v302 + 72) * v92);
    v84 = sub_10017DB24(0, 1, 1, _swiftEmptyArrayStorage);
    v86 = *(v84 + 2);
    v93 = *(v84 + 3);
    v87 = v86 + 1;
    if (v86 >= v93 >> 1)
    {
      v84 = sub_10017DB24((v93 > 1), v86 + 1, 1, v84);
    }
  }

  else if (a1)
  {
    v94 = enum case for ChatMessageRole.user(_:);
    v95 = type metadata accessor for ChatMessageRole();
    (*(*(v95 - 8) + 104))(v59, v94, v95);
    v96 = &v59[*(v304 + 20)];
    *v96 = 0xD00000000000001CLL;
    *(v96 + 1) = 0x80000001001E89E0;
    *(v96 + 2) = 0xD000000000000033;
    *(v96 + 3) = 0x80000001001E8A00;
    *(v96 + 4) = 0xD000000000000055;
    *(v96 + 5) = 0x80000001001E8A40;
    v96[48] = 1;
    v79 = sub_10017D920(0, 1, 1, _swiftEmptyArrayStorage);
    v98 = v79[2];
    v97 = v79[3];
    if (v98 >= v97 >> 1)
    {
      v79 = sub_10017D920((v97 > 1), v98 + 1, 1, v79);
    }

    v79[2] = v98 + 1;
    sub_10004DE04(v59, v79 + ((*(v302 + 80) + 32) & ~*(v302 + 80)) + *(v302 + 72) * v98);
    v84 = sub_10017DB24(0, 1, 1, _swiftEmptyArrayStorage);
    v86 = *(v84 + 2);
    v99 = *(v84 + 3);
    v87 = v86 + 1;
    if (v86 >= v99 >> 1)
    {
      v84 = sub_10017DB24((v99 > 1), v86 + 1, 1, v84);
    }

    v83 = v303;
  }

  else
  {
    v299 = v50;
    v68 = sub_10004D4A8(0xD000000000000028, 0x80000001001E8AA0, 0, 0, 0, 0, _swiftEmptyArrayStorage);
    v69 = enum case for ChatMessageRole.assistant(_:);
    v70 = type metadata accessor for ChatMessageRole();
    v71 = *(v70 - 8);
    v72 = *(v71 + 104);
    v301 = v69;
    v300 = v72;
    v289 = (v71 + 104);
    v72(v67, v69, v70);
    v73 = &v67[*(v304 + 20)];
    *v73 = 0x1000000000000014;
    *(v73 + 1) = 0x80000001001E8AD0;
    *(v73 + 2) = &off_10024A0E0;
    *(v73 + 3) = 0;
    *(v73 + 4) = 0;
    *(v73 + 5) = 0;
    v73[48] = 2;

    v74 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = sub_10017D920(0, v68[2] + 1, 1, v68);
    }

    v76 = v74[2];
    v75 = v74[3];
    if (v76 >= v75 >> 1)
    {
      v74 = sub_10017D920((v75 > 1), v76 + 1, 1, v74);
    }

    v74[2] = v76 + 1;
    v77 = (*(v302 + 80) + 32) & ~*(v302 + 80);
    v78 = *(v302 + 72);
    sub_10004DE04(v67, v74 + v77 + v78 * v76);
    v79 = sub_10004D4A8(0xD00000000000002DLL, 0x80000001001E8AF0, 0, 0, 0, 0, v74);

    v300(v65, v301, v70);
    v80 = &v65[*(v304 + 20)];
    *v80 = 0xD000000000000032;
    *(v80 + 1) = 0x80000001001E8B20;
    *(v80 + 2) = &off_10024A130;
    *(v80 + 3) = 0;
    *(v80 + 4) = 0;
    *(v80 + 5) = 0;
    v80[48] = 2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_10017D920(0, v79[2] + 1, 1, v79);
    }

    v82 = v79[2];
    v81 = v79[3];
    v83 = v303;
    if (v82 >= v81 >> 1)
    {
      v79 = sub_10017D920((v81 > 1), v82 + 1, 1, v79);
    }

    v79[2] = v82 + 1;
    sub_10004DE04(v65, v79 + v77 + v82 * v78);
    v84 = sub_10017DB24(0, 1, 1, _swiftEmptyArrayStorage);
    v86 = *(v84 + 2);
    v85 = *(v84 + 3);
    v87 = v86 + 1;
    if (v86 >= v85 >> 1)
    {
      v84 = sub_10017DB24((v85 > 1), v86 + 1, 1, v84);
    }

    v50 = v299;
  }

  *(v84 + 2) = v87;
  *&v84[8 * v86 + 32] = v79;
  v308 = v84;
LABEL_25:
  v275 = sub_10000341C(&qword_100265FC0, &qword_1001DF238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  v101 = sub_10004D4A8(0x2061206574697257, 0xEC0000006D656F70, 0, 0, 0, 0, _swiftEmptyArrayStorage);
  v102 = enum case for ChatMessageRole.assistant(_:);
  v103 = type metadata accessor for ChatMessageRole();
  v104 = *(v103 - 8);
  v105 = *(v104 + 104);
  v301 = v102;
  v300 = (v104 + 104);
  v105(v56, v102, v103);
  v106 = &v56[*(v304 + 20)];
  *v106 = xmmword_1001DF3B0;
  *(v106 + 2) = &off_10024A180;
  *(v106 + 3) = 0;
  *(v106 + 4) = 0;
  *(v106 + 5) = 0;
  v106[48] = 2;

  v107 = v101;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v107 = sub_10017D920(0, v101[2] + 1, 1, v101);
  }

  v109 = v107[2];
  v108 = v107[3];
  if (v109 >= v108 >> 1)
  {
    v299 = v50;
    v107 = sub_10017D920((v108 > 1), v109 + 1, 1, v107);
    v50 = v299;
  }

  v107[2] = v109 + 1;
  v303 = ((*(v302 + 80) + 32) & ~*(v302 + 80));
  v302 = *(v302 + 72);
  sub_10004DE04(v56, &v303[v107 + v302 * v109]);
  *(inited + 32) = v107;
  v110 = sub_10004D4A8(0xD000000000000019, 0x80000001001E8360, 0, 0, 0, 0, _swiftEmptyArrayStorage);
  v105(v53, v301, v103);
  v111 = &v53[*(v304 + 20)];
  *v111 = &off_10024A1D0;
  *(v111 + 1) = 0;
  *(v111 + 2) = 0;
  *(v111 + 3) = 1;
  *(v111 + 4) = 0;
  *(v111 + 5) = 0;
  v111[48] = 2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v110 = sub_10017D920(0, v110[2] + 1, 1, v110);
  }

  v113 = v110[2];
  v112 = v110[3];
  if (v113 >= v112 >> 1)
  {
    v110 = sub_10017D920((v112 > 1), v113 + 1, 1, v110);
  }

  v110[2] = v113 + 1;
  sub_10004DE04(v53, &v303[v110 + v113 * v302]);
  v306 = sub_100006100(_swiftEmptyArrayStorage);
  sub_100093E98(0x73616D6F6854, 0xE600000000000000, 0x656D616E20796DLL, 0xE700000000000000);
  v280 = 0xD000000000000010;
  sub_100093E98(0x796C6C6153, 0xE500000000000000, 0xD000000000000010, 0x80000001001E8380);
  sub_100093E98(0xD000000000000015, 0x80000001001E83A0, 0x6E6F73616572, 0xE600000000000000);
  v114 = v306;
  LODWORD(v299) = enum case for ChatMessageRole.user(_:);
  (v105)(v50);
  v115 = &v50[*(v304 + 20)];
  *v115 = v114;
  *(v115 + 1) = 0;
  *(v115 + 2) = 0;
  *(v115 + 3) = 2;
  *(v115 + 4) = 0;
  *(v115 + 5) = 0;
  v115[48] = 2;

  v116 = v110;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v116 = sub_10017D920(0, v110[2] + 1, 1, v110);
  }

  v118 = v116[2];
  v117 = v116[3];
  if (v118 >= v117 >> 1)
  {
    v116 = sub_10017D920((v117 > 1), v118 + 1, 1, v116);
  }

  v116[2] = v118 + 1;
  sub_10004DE04(v50, &v303[v116 + v118 * v302]);
  v119 = v298;
  v105(v298, v301, v103);
  v120 = v119 + *(v304 + 20);
  *v120 = 0xD000000000000034;
  *(v120 + 8) = 0x80000001001E83C0;
  *(v120 + 16) = &off_10024A268;
  *(v120 + 24) = 0;
  *(v120 + 32) = 0;
  *(v120 + 40) = 0;
  *(v120 + 48) = 2;

  v121 = v116;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v121 = sub_10017D920(0, v116[2] + 1, 1, v116);
  }

  v123 = v121[2];
  v122 = v121[3];
  if (v123 >= v122 >> 1)
  {
    v121 = sub_10017D920((v122 > 1), v123 + 1, 1, v121);
  }

  v121[2] = v123 + 1;
  sub_10004DE04(v298, &v303[v121 + v123 * v302]);
  v285 = "ffOriginatorMode [";
  v124 = sub_10004D4A8(0xD00000000000001ALL, 0x80000001001E4B90, 0, 0, 0, 0, v121);

  v125 = v276;
  v105(v276, v301, v103);
  v126 = v125 + *(v304 + 20);
  *v126 = 0xD000000000000034;
  *(v126 + 8) = 0x80000001001E83C0;
  *(v126 + 16) = &off_10024A2B8;
  *(v126 + 24) = 0;
  *(v126 + 32) = 0;
  *(v126 + 40) = 0;
  *(v126 + 48) = 2;

  v127 = v124;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v127 = sub_10017D920(0, v124[2] + 1, 1, v124);
  }

  v129 = v127[2];
  v128 = v127[3];
  if (v129 >= v128 >> 1)
  {
    v127 = sub_10017D920((v128 > 1), v129 + 1, 1, v127);
  }

  v127[2] = v129 + 1;
  sub_10004DE04(v125, &v303[v127 + v129 * v302]);
  *(inited + 40) = v127;
  sub_10019E41C(inited);
  v298 = swift_initStackObject();
  *(v298 + 16) = xmmword_1001DF3C0;
  v130 = sub_10004D4A8(0xD000000000000038, 0x80000001001E8400, 0, 0, 0, 0, _swiftEmptyArrayStorage);
  v105(v83, v301, v103);
  v131 = v83 + *(v304 + 20);
  *v131 = &off_10024A308;
  *(v131 + 8) = 0;
  *(v131 + 16) = 0;
  *(v131 + 24) = 1;
  *(v131 + 32) = 0;
  *(v131 + 40) = 0;
  *(v131 + 48) = 2;

  v132 = v130;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v132 = sub_10017D920(0, v130[2] + 1, 1, v130);
  }

  v134 = v132[2];
  v133 = v132[3];
  v289 = v105;
  v269 = v103;
  if (v134 >= v133 >> 1)
  {
    v132 = sub_10017D920((v133 > 1), v134 + 1, 1, v132);
  }

  v132[2] = v134 + 1;
  sub_10004DE04(v83, &v303[v132 + v134 * v302]);
  v306 = sub_100006100(_swiftEmptyArrayStorage);
  sub_100093E98(0x6D5320796C6C6153, 0xEB00000000687469, 0xD000000000000015, 0x80000001001E2E40);
  v261 = 0xD000000000000012;
  sub_100093E98(0x6D5320796D6D6F54, 0xEB00000000687469, 0xD000000000000012, 0x80000001001E2E60);
  v135 = v306;
  v306 = 0;
  v307 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v136 = v290;
  static Calendar.current.getter();
  v137 = v296;
  v138 = *(v296 + 56);
  v139 = v291;
  v276 = (v296 + 56);
  v275 = v138;
  v138(v293, 1, 1, v291);
  v140 = type metadata accessor for TimeZone();
  v141 = *(v140 - 8);
  v142 = *(v141 + 56);
  v268 = v140;
  v267 = v142;
  v266 = v141 + 56;
  (v142)(v295, 1, 1);
  v143 = v292;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v144 = v279;
  Calendar.date(from:)();
  v145 = *(v297 + 8);
  v297 += 8;
  v265 = v145;
  v145(v143, v294);
  v146 = *(v137 + 8);
  v296 = v137 + 8;
  v264 = v146;
  v146(v136, v139);
  v147 = type metadata accessor for Date();
  v148 = *(v147 - 8);
  v149 = *(v148 + 48);
  v263 = v148 + 48;
  v262 = v149;
  result = v149(v144, 1, v147);
  if (result == 1)
  {
    __break(1u);
LABEL_113:
    __break(1u);
    return result;
  }

  v256[1] = sub_100182E1C();
  v151._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v151);

  v152 = *(v148 + 8);
  v258 = v147;
  v256[2] = v148 + 8;
  v256[0] = v152;
  v152(v144, v147);
  v153._countAndFlagsBits = 0xD00000000000001CLL;
  v153._object = 0x80000001001E8440;
  String.append(_:)(v153);
  v154 = v306;
  v306 = v135;
  sub_100093E98(v154, v307, 0xD00000000000001ALL, 0x80000001001E2E80);

  v257 = "Son's Birthday Party Event";
  v279 = 0xD000000000000011;
  sub_100093E98(0x6E616874616E6F4ALL, 0xEE006874696D5320, 0xD000000000000011, 0x80000001001E2EA0);
  v155 = v306;
  v156 = v286;
  v157 = v269;
  v158 = v289;
  v289(v286, v299, v269);
  v159 = v156 + *(v304 + 20);
  *v159 = v155;
  *(v159 + 8) = 0;
  *(v159 + 16) = 0;
  *(v159 + 24) = 2;
  *(v159 + 32) = 0;
  *(v159 + 40) = 0;
  *(v159 + 48) = 2;

  v160 = v132;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_10017D920(0, v132[2] + 1, 1, v132);
  }

  v162 = v160[2];
  v161 = v160[3];
  v163 = v270;
  if (v162 >= v161 >> 1)
  {
    v160 = sub_10017D920((v161 > 1), v162 + 1, 1, v160);
  }

  v160[2] = v162 + 1;
  sub_10004DE04(v286, &v303[v160 + v162 * v302]);
  v158(v163, v301, v157);
  v164 = v163 + *(v304 + 20);
  *v164 = 0xD0000000000000BFLL;
  *(v164 + 8) = 0x80000001001E8460;
  *(v164 + 16) = &off_10024A3C8;
  *(v164 + 24) = 0;
  *(v164 + 32) = 0;
  *(v164 + 40) = 0;
  *(v164 + 48) = 2;

  v165 = v160;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v165 = sub_10017D920(0, v160[2] + 1, 1, v160);
  }

  v167 = v165[2];
  v166 = v165[3];
  v168 = v272;
  if (v167 >= v166 >> 1)
  {
    v165 = sub_10017D920((v166 > 1), v167 + 1, 1, v165);
  }

  v165[2] = v167 + 1;
  sub_10004DE04(v163, &v303[v165 + v167 * v302]);
  v169 = sub_10004D4A8(0xD00000000000001ALL, v285 | 0x8000000000000000, 0, 0, 0, 0, v165);

  v170 = v278;
  v158(v278, v301, v157);
  v171 = v170 + *(v304 + 20);
  *v171 = 0xD0000000000000BFLL;
  *(v171 + 8) = 0x80000001001E8460;
  *(v171 + 16) = &off_10024A418;
  *(v171 + 24) = 0;
  *(v171 + 32) = 0;
  *(v171 + 40) = 0;
  *(v171 + 48) = 2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v169 = sub_10017D920(0, v169[2] + 1, 1, v169);
  }

  v173 = v169[2];
  v172 = v169[3];
  if (v173 >= v172 >> 1)
  {
    v169 = sub_10017D920((v172 > 1), v173 + 1, 1, v169);
    v170 = v278;
  }

  v169[2] = v173 + 1;
  sub_10004DE04(v170, &v303[v169 + v173 * v302]);
  *(v298 + 32) = v169;
  v174 = sub_10004D4A8(0xD000000000000036, 0x80000001001E8520, 0, 0, 0, 0, _swiftEmptyArrayStorage);
  v175 = v271;
  v158(v271, v301, v157);
  v176 = v175 + *(v304 + 20);
  *v176 = &off_10024A468;
  *(v176 + 8) = 0;
  *(v176 + 16) = 0;
  *(v176 + 24) = 1;
  *(v176 + 32) = 0;
  *(v176 + 40) = 0;
  *(v176 + 48) = 2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v178 = v174;
  v179 = v174;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v179 = sub_10017D920(0, v174[2] + 1, 1, v174);
    v178 = v174;
  }

  v181 = v179[2];
  v180 = v179[3];
  if (v181 >= v180 >> 1)
  {
    v286 = v178;
    v179 = sub_10017D920((v180 > 1), v181 + 1, 1, v179);
  }

  v179[2] = v181 + 1;
  sub_10004DE04(v175, &v303[v179 + v181 * v302]);
  v306 = sub_100006100(_swiftEmptyArrayStorage);
  sub_100093E98(0xD000000000000020, 0x80000001001E8560, 0xD000000000000016, 0x80000001001E2EC0);
  sub_100093E98(0x6E656C6C65637865, 0xE900000000000074, v261, 0x80000001001E2EE0);
  sub_100093E98(0x2064656C6C697247, 0xEE006E6F6D6C6173, 0x4F20736568736944, 0xEE00646572656472);
  v182 = v306;
  v183 = v287;
  v158(v287, v299, v157);
  v184 = v183 + *(v304 + 20);
  *v184 = v182;
  *(v184 + 8) = 0;
  *(v184 + 16) = 0;
  *(v184 + 24) = 2;
  *(v184 + 32) = 0;
  *(v184 + 40) = 0;
  *(v184 + 48) = 2;

  v185 = v179;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v185 = sub_10017D920(0, v179[2] + 1, 1, v179);
  }

  v187 = v185[2];
  v186 = v185[3];
  if (v187 >= v186 >> 1)
  {
    v185 = sub_10017D920((v186 > 1), v187 + 1, 1, v185);
  }

  v185[2] = v187 + 1;
  sub_10004DE04(v287, &v303[v185 + v187 * v302]);
  *(v298 + 40) = v185;
  v188 = sub_10004D4A8(0xD000000000000031, 0x80000001001E8590, 0, 0, 0, 0, _swiftEmptyArrayStorage);
  v189 = v288;
  v158(v288, v301, v157);
  v190 = v189 + *(v304 + 20);
  *v190 = &off_10024A500;
  *(v190 + 8) = 0;
  *(v190 + 16) = 0;
  *(v190 + 24) = 1;
  *(v190 + 32) = 0;
  *(v190 + 40) = 0;
  *(v190 + 48) = 2;

  v191 = swift_isUniquelyReferenced_nonNull_native();
  v192 = v188;
  v193 = v188;
  if ((v191 & 1) == 0)
  {
    v193 = sub_10017D920(0, v188[2] + 1, 1, v188);
    v192 = v188;
  }

  v195 = v193[2];
  v194 = v193[3];
  v196 = v273;
  if (v195 >= v194 >> 1)
  {
    v287 = v192;
    v193 = sub_10017D920((v194 > 1), v195 + 1, 1, v193);
  }

  v193[2] = v195 + 1;
  sub_10004DE04(v288, &v303[v193 + v195 * v302]);
  v306 = sub_100006100(_swiftEmptyArrayStorage);
  sub_100093E98(0x3220656E7544, 0xE600000000000000, 0x7645206569766F4DLL, 0xEB00000000746E65);
  sub_100093E98(53, 0xE100000000000000, 0xD000000000000015, 0x80000001001E2F20);
  sub_100093E98(0xD00000000000002FLL, 0x80000001001E85D0, 0x657469726F766146, 0xEE00737472615020);
  sub_100093E98(0xD00000000000002ELL, 0x80000001001E8600, v279, 0x80000001001E2F00);
  v197 = v306;
  v198 = v289;
  v289(v168, v299, v157);
  v199 = v168 + *(v304 + 20);
  *v199 = v197;
  *(v199 + 8) = 0;
  *(v199 + 16) = 0;
  *(v199 + 24) = 2;
  *(v199 + 32) = 0;
  *(v199 + 40) = 0;
  *(v199 + 48) = 2;

  v200 = v193;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v200 = sub_10017D920(0, v193[2] + 1, 1, v193);
  }

  v202 = v200[2];
  v201 = v200[3];
  if (v202 >= v201 >> 1)
  {
    v200 = sub_10017D920((v201 > 1), v202 + 1, 1, v200);
  }

  v200[2] = v202 + 1;
  sub_10004DE04(v168, &v303[v200 + v202 * v302]);
  *(v298 + 48) = v200;
  v203 = sub_10004D4A8(0xD000000000000043, 0x80000001001E8630, 0, 0, 0, 0, _swiftEmptyArrayStorage);
  v198(v196, v301, v157);
  v204 = v196 + *(v304 + 20);
  *v204 = &off_10024A5C0;
  *(v204 + 8) = 0;
  *(v204 + 16) = 0;
  *(v204 + 24) = 1;
  *(v204 + 32) = 0;
  *(v204 + 40) = 0;
  *(v204 + 48) = 2;

  v205 = v203;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v205 = sub_10017D920(0, v203[2] + 1, 1, v203);
  }

  v207 = v205[2];
  v206 = v205[3];
  if (v207 >= v206 >> 1)
  {
    v205 = sub_10017D920((v206 > 1), v207 + 1, 1, v205);
  }

  v205[2] = v207 + 1;
  sub_10004DE04(v196, &v303[v205 + v207 * v302]);
  v208 = sub_100006100(_swiftEmptyArrayStorage);
  v306 = 0;
  v307 = 0xE000000000000000;
  v209 = v290;
  static Calendar.current.getter();
  v210 = v291;
  v275(v293, 1, 1, v291);
  v267(v295, 1, 1, v268);
  v211 = v292;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v212 = v274;
  Calendar.date(from:)();
  v265(v211, v294);
  v264(v209, v210);
  v213 = v258;
  result = v262(v212, 1, v258);
  if (result == 1)
  {
    goto LABEL_113;
  }

  v214._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v214);

  (v256[0])(v212, v213);
  v215 = v306;
  v306 = v208;
  sub_100093E98(v215, v307, 0x67616C4620786953, 0xEF746E6576452073);

  sub_100093E98(3748388, 0xE300000000000000, 0x502074656B636954, 0xEC00000065636972);
  sub_100093E98(0xD000000000000015, 0x80000001001E8680, 0x657469726F766146, 0xEE00736564695220);
  sub_100093E98(57, 0xE100000000000000, v280, 0x80000001001E2F40);
  v216 = v306;
  v217 = v281;
  v198(v281, v299, v157);
  v218 = v217 + *(v304 + 20);
  *v218 = v216;
  *(v218 + 8) = 0;
  *(v218 + 16) = 0;
  *(v218 + 24) = 2;
  *(v218 + 32) = 0;
  *(v218 + 40) = 0;
  *(v218 + 48) = 2;

  v219 = v205;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v219 = sub_10017D920(0, v205[2] + 1, 1, v205);
  }

  v221 = v219[2];
  v220 = v219[3];
  v222 = v259;
  if (v221 >= v220 >> 1)
  {
    v219 = sub_10017D920((v220 > 1), v221 + 1, 1, v219);
  }

  v219[2] = v221 + 1;
  sub_10004DE04(v281, &v303[v219 + v221 * v302]);
  *(v298 + 56) = v219;
  v223 = sub_10004D4A8(0xD000000000000029, 0x80000001001E86A0, 0, 0, 0, 0, _swiftEmptyArrayStorage);
  v224 = v277;
  v198(v277, v301, v157);
  v225 = v224 + *(v304 + 20);
  *v225 = &off_10024A680;
  *(v225 + 8) = 0;
  *(v225 + 16) = 0;
  *(v225 + 24) = 1;
  *(v225 + 32) = 0;
  *(v225 + 40) = 0;
  *(v225 + 48) = 2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v223 = sub_10017D920(0, v223[2] + 1, 1, v223);
  }

  v227 = v223[2];
  v226 = v223[3];
  if (v227 >= v226 >> 1)
  {
    v223 = sub_10017D920((v226 > 1), v227 + 1, 1, v223);
    v224 = v277;
  }

  v223[2] = v227 + 1;
  sub_10004DE04(v224, &v303[v223 + v227 * v302]);
  v306 = sub_100006100(_swiftEmptyArrayStorage);
  sub_100093E98(0xD0000000000001BELL, 0x80000001001E86D0, 0x20676E697465654DLL, 0xED00007365746F4ELL);
  v228 = v306;
  v229 = v282;
  v198(v282, v299, v157);
  v230 = v229 + *(v304 + 20);
  *v230 = v228;
  *(v230 + 8) = 0;
  *(v230 + 16) = 0;
  *(v230 + 24) = 2;
  *(v230 + 32) = 0;
  *(v230 + 40) = 0;
  *(v230 + 48) = 2;

  v231 = v223;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v231 = sub_10017D920(0, v223[2] + 1, 1, v223);
  }

  v233 = v231[2];
  v232 = v231[3];
  if (v233 >= v232 >> 1)
  {
    v231 = sub_10017D920((v232 > 1), v233 + 1, 1, v231);
  }

  v231[2] = v233 + 1;
  sub_10004DE04(v282, &v303[v231 + v233 * v302]);
  v234 = v283;
  v198(v283, v301, v157);
  v235 = v234 + *(v304 + 20);
  *v235 = 0xD000000000000049;
  *(v235 + 8) = 0x80000001001E8890;
  *(v235 + 16) = &off_10024A6C8;
  *(v235 + 24) = 0;
  *(v235 + 32) = 0;
  *(v235 + 40) = 0;
  *(v235 + 48) = 2;

  v236 = v231;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v236 = sub_10017D920(0, v231[2] + 1, 1, v231);
  }

  v238 = v236[2];
  v237 = v236[3];
  if (v238 >= v237 >> 1)
  {
    v236 = sub_10017D920((v237 > 1), v238 + 1, 1, v236);
  }

  v236[2] = v238 + 1;
  sub_10004DE04(v283, &v303[v236 + v238 * v302]);
  v239 = sub_10004D4A8(0xD00000000000001ALL, v285 | 0x8000000000000000, 0, 0, 0, 0, v236);

  v198(v222, v301, v157);
  v240 = v222 + *(v304 + 20);
  *v240 = 0xD000000000000049;
  *(v240 + 8) = 0x80000001001E8890;
  *(v240 + 16) = &off_10024A718;
  *(v240 + 24) = 0;
  *(v240 + 32) = 0;
  *(v240 + 40) = 0;
  *(v240 + 48) = 2;

  v241 = v239;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v241 = sub_10017D920(0, v239[2] + 1, 1, v239);
  }

  v243 = v241[2];
  v242 = v241[3];
  if (v243 >= v242 >> 1)
  {
    v241 = sub_10017D920((v242 > 1), v243 + 1, 1, v241);
  }

  v241[2] = v243 + 1;
  sub_10004DE04(v222, &v303[v241 + v243 * v302]);
  *(v298 + 64) = v241;
  v244 = sub_10004D4A8(0xD00000000000002BLL, 0x80000001001E88E0, 0, 0, 0, 0, _swiftEmptyArrayStorage);
  v245 = v284;
  v198(v284, v301, v157);
  v246 = v245 + *(v304 + 20);
  *v246 = &off_10024A768;
  *(v246 + 8) = 0;
  *(v246 + 16) = 0;
  *(v246 + 24) = 1;
  *(v246 + 32) = 0;
  *(v246 + 40) = 0;
  *(v246 + 48) = 2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v244 = sub_10017D920(0, v244[2] + 1, 1, v244);
  }

  v248 = v244[2];
  v247 = v244[3];
  if (v248 >= v247 >> 1)
  {
    v244 = sub_10017D920((v247 > 1), v248 + 1, 1, v244);
  }

  v244[2] = v248 + 1;
  sub_10004DE04(v284, &v303[v244 + v248 * v302]);
  v305 = sub_100006100(_swiftEmptyArrayStorage);
  sub_100093E98(0xD000000000000025, 0x80000001001E8910, 0xD000000000000013, 0x80000001001E2F60);
  sub_100093E98(0xD000000000000022, 0x80000001001E8940, v279, v257 | 0x8000000000000000);
  sub_100093E98(0xD000000000000026, 0x80000001001E8970, 0xD000000000000015, 0x80000001001E2F80);
  sub_100093E98(0xD000000000000037, 0x80000001001E89A0, v280, 0x80000001001E2FA0);
  v249 = v305;
  v250 = v260;
  v198(v260, v299, v157);
  v251 = v250 + *(v304 + 20);
  *v251 = v249;
  *(v251 + 8) = 0;
  *(v251 + 16) = 0;
  *(v251 + 24) = 2;
  *(v251 + 32) = 0;
  *(v251 + 40) = 0;
  *(v251 + 48) = 2;

  v252 = v244;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v252 = sub_10017D920(0, v244[2] + 1, 1, v244);
  }

  v254 = v252[2];
  v253 = v252[3];
  if (v254 >= v253 >> 1)
  {
    v252 = sub_10017D920((v253 > 1), v254 + 1, 1, v252);
  }

  v252[2] = v254 + 1;
  sub_10004DE04(v250, &v303[v252 + v254 * v302]);
  v255 = v298;
  *(v298 + 72) = v252;
  sub_10019E41C(v255);
  return v308;
}

unint64_t sub_100182E1C()
{
  result = qword_100266010;
  if (!qword_100266010)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266010);
  }

  return result;
}

unint64_t sub_100182E74()
{
  v24 = _swiftEmptyArrayStorage;
  sub_100163C20(0, 3, 0);
  v0 = _swiftEmptyArrayStorage;
  v21 = 0;
  sub_10017FC38(&v21, &v22);
  v1 = v22;
  v2 = v23;
  v4 = _swiftEmptyArrayStorage[2];
  v3 = _swiftEmptyArrayStorage[3];
  if (v4 >= v3 >> 1)
  {
    sub_100163C20((v3 > 1), v4 + 1, 1);
    v0 = v24;
  }

  v0[2] = v4 + 1;
  v5 = &v0[2 * v4];
  v5[4] = v1;
  v5[5] = v2;
  v21 = 1;
  sub_10017FC38(&v21, &v22);
  v6 = v22;
  v7 = v23;
  v24 = v0;
  v9 = v0[2];
  v8 = v0[3];
  if (v9 >= v8 >> 1)
  {
    sub_100163C20((v8 > 1), v9 + 1, 1);
    v0 = v24;
  }

  v0[2] = v9 + 1;
  v10 = &v0[2 * v9];
  v10[4] = v6;
  v10[5] = v7;
  v21 = 2;
  sub_10017FC38(&v21, &v22);
  v11 = v22;
  v12 = v23;
  v24 = v0;
  v14 = v0[2];
  v13 = v0[3];
  if (v14 >= v13 >> 1)
  {
    sub_100163C20((v13 > 1), v14 + 1, 1);
    v0 = v24;
  }

  v0[2] = v14 + 1;
  v15 = &v0[2 * v14];
  v15[4] = v11;
  v15[5] = v12;
  v22 = v0;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100183068();
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  v22 = 0xD000000000000024;
  v23 = 0x80000001001E8B60;
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  return v22;
}

unint64_t sub_100183068()
{
  result = qword_10025F3D0;
  if (!qword_10025F3D0)
  {
    sub_100003E34(&qword_10025CC10, &qword_1001D1FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F3D0);
  }

  return result;
}

uint64_t sub_1001830CC(uint64_t a1, uint64_t a2)
{

  v3 = OBJC_IVAR____TtC21WritingToolsUIService25WritingToolsIntentManager_text;
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WritingToolsIntentManager(uint64_t a1)
{
  result = qword_100266050;
  if (!qword_100266050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001831E4(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001832B8()
{
  if (*v0)
  {
    return 0x657669746361;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

void sub_100183370()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  v43 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_fullScreenView];
  v44 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_fullScreenView + 8];
  v45 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_fullScreenView + 16];
  v46 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_fullScreenView + 24];
  objc_allocWithZone(sub_10000341C(&qword_100266180, &qword_1001DF5C8));

  v3 = UIHostingController.init(rootView:)();
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v7 = [v1 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v3 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  [v8 addSubview:v9];

  v11 = [v3 view];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v1 addChildViewController:v3];
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001CE090;
  v14 = [v3 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  *(v13 + 32) = v20;
  v21 = [v3 view];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v13 + 40) = v27;
  v28 = [v3 view];
  if (!v28)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v13 + 48) = v34;
  v35 = [v3 view];

  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = [v35 bottomAnchor];

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v39 = objc_opt_self();
    v40 = [v38 bottomAnchor];

    v41 = [v36 constraintEqualToAnchor:v40];
    *(v13 + 56) = v41;
    sub_1000B128C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v39 activateConstraints:isa];

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_10018391C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_presentationModel;
  v3 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_presentationModel];
  swift_getKeyPath();
  v37 = v3;
  sub_1001701F8();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  if (v5)
  {
    if (qword_10025A730 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F34C(v6, qword_100276FF8);
    v7 = static os_log_type_t.error.getter();
    v8 = Logger.logObject.getter();
    if (!os_log_type_enabled(v8, v7))
    {
      goto LABEL_7;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "refreshKeyboardLayoutTrackingHeight unexpected nil size class";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v8, v7, v10, v9, 2u);

LABEL_7:

    return;
  }

  switch(v4)
  {
    case 0:
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000F34C(v33, qword_100276FF8);
      v7 = static os_log_type_t.error.getter();
      v8 = Logger.logObject.getter();
      if (!os_log_type_enabled(v8, v7))
      {
        goto LABEL_7;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "refreshKeyboardLayoutTrackingHeight for unexpected unspecified size class";
      goto LABEL_6;
    case 2:
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000F34C(v27, qword_100276FF8);
      v28 = static os_log_type_t.default.getter();
      v29 = v1;
      v30 = Logger.logObject.getter();

      if (os_log_type_enabled(v30, v28))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        *(v31 + 4) = 0x4051800000000000;
        _os_log_impl(&_mh_execute_header, v30, v28, "refreshKeyboardLayoutTrackingHeight for UCB height: %f", v31, 0xCu);
      }

      v32 = *&v29[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_writingToolsDelegate];
      if (v32 && ([v32 respondsToSelector:"updateKeyboardTrackingHeight:"] & 1) != 0)
      {
        [v32 updateKeyboardTrackingHeight:70.0];
      }

      break;
    case 1:
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000F34C(v11, qword_100276FF8);
      v12 = static os_log_type_t.default.getter();
      v13 = v1;
      v14 = Logger.logObject.getter();

      if (os_log_type_enabled(v14, v12))
      {
        v36 = v13;
        v15 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v37 = v35;
        *v15 = 136315138;
        v16 = *&v1[v2];
        swift_getKeyPath();

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v17 = *(v16 + 64);
        v18 = *(v16 + 72);

        v38.width = v17;
        v38.height = v18;
        v19 = NSStringFromCGSize(v38);
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = sub_10002510C(v20, v22, &v37);

        *(v15 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v14, v12, "refreshKeyboardLayoutTrackingHeight for preferred content size: %s", v15, 0xCu);
        sub_10000F4B4(v35);

        v13 = v36;
      }

      v24 = *&v13[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_writingToolsDelegate];
      if (v24 && ([v24 respondsToSelector:"updateKeyboardTrackingHeight:"] & 1) != 0)
      {
        v25 = *&v1[v2];
        swift_getKeyPath();
        v37 = v25;
        swift_unknownObjectRetain();

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v26 = *(v25 + 72);

        [v24 updateKeyboardTrackingHeight:v26];
        swift_unknownObjectRelease();
      }

      break;
    default:
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000F34C(v34, qword_100276FF8);
      v7 = static os_log_type_t.error.getter();
      v8 = Logger.logObject.getter();
      if (!os_log_type_enabled(v8, v7))
      {
        goto LABEL_7;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "refreshKeyboardLayoutTrackingHeight for unexpected unknown size class";
      goto LABEL_6;
  }
}

id sub_100183F0C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FullscreenViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_100184018(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100184044(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018408C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100184118()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v10, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100184274@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v3 = sub_10000341C(&qword_100266190, &qword_1001DF6F0);
  v91 = *(v3 - 8);
  v92 = v3;
  __chkstk_darwin(v3);
  v79 = &v74 - v4;
  v5 = sub_10000341C(&qword_100266198, &qword_1001DF6F8);
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = __chkstk_darwin(v5);
  v84 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v83 = &v74 - v8;
  v9 = type metadata accessor for Divider();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = __chkstk_darwin(v9);
  v82 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v74 - v12;
  v13 = type metadata accessor for Attachment(0);
  v14 = *(v13 - 8);
  v94 = v13;
  v95 = v14;
  __chkstk_darwin(v13);
  v80 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000341C(&qword_1002661A0, &unk_1001DF700);
  v17 = __chkstk_darwin(v16 - 8);
  v90 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v89 = &v74 - v19;
  v20 = sub_10000341C(&qword_10025AAA8, &unk_1001CE240);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v74 - v22;
  v24 = sub_10000341C(&qword_1002661A8, &unk_1001DF710);
  v87 = *(v24 - 8);
  v88 = v24;
  v25 = __chkstk_darwin(v24);
  v86 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v74 - v27;
  v29 = swift_allocObject();
  v30 = *(a1 + 80);
  *(v29 + 80) = *(a1 + 64);
  *(v29 + 96) = v30;
  *(v29 + 112) = *(a1 + 96);
  *(v29 + 128) = *(a1 + 112);
  v31 = *(a1 + 16);
  *(v29 + 16) = *a1;
  *(v29 + 32) = v31;
  v32 = *(a1 + 48);
  *(v29 + 48) = *(a1 + 32);
  *(v29 + 64) = v32;
  sub_10018557C(a1, &v106);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  LOBYTE(v106) = static Edge.Set.all.getter();
  *(&v106 + 1) = 0;
  LOBYTE(v107) = 0;
  sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240, &protocol conformance descriptor for Button<A>);
  sub_1001855B4();
  v85 = v28;
  View.labelStyle<A>(_:)();
  (*(v21 + 8))(v23, v20);
  v33 = sub_100184118();
  swift_getKeyPath();
  *&v106 = v33;
  sub_1001857BC(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = *(v33 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  swift_getKeyPath();
  *&v106 = v34;
  sub_1001857BC(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v35 = *(v34 + 16);

  v36 = *(v35 + 16);
  if (!v36)
  {
LABEL_12:

    v48 = v90;
    v49 = v87;
    v50 = v93;
LABEL_14:
    v51 = v89;
    (*(v91 + 56))(v89, 1, 1, v92);
    v52 = v88;
    goto LABEL_16;
  }

  v37 = 0;
  v38 = v80;
  v39 = &v80[*(v94 + 44)];
  v40 = *(a1 + 64);
  v108 = *(a1 + 48);
  v109 = v40;
  v110 = *(a1 + 80);
  v42 = *(a1 + 16);
  v41 = *(a1 + 32);
  v74 = a1;
  v106 = v42;
  v107 = v41;
  v43 = v35 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
  v94 = *(v95 + 72);
  v95 = v36 - 1;
  while (1)
  {
    sub_1000A6690(v43, v38);
    v45 = *v39;
    v44 = *(v39 + 1);
    v102 = v108;
    v103 = v109;
    v104 = v110;
    v100 = v106;
    v101 = v107;
    sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
    Binding.wrappedValue.getter();
    v105[0] = v96;
    v105[1] = v97;
    v105[2] = v98;
    v105[3] = v99;
    v46 = v96;

    sub_10004C65C(v105);
    if (!v44)
    {
      sub_10003D7E8(v38);

      goto LABEL_9;
    }

    if (__PAIR128__(v44, v45) == v46)
    {
      break;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10003D7E8(v38);
    if (v47)
    {
      goto LABEL_15;
    }

LABEL_9:
    if (v95 == v37)
    {

      v50 = v93;
      v48 = v90;
      v49 = v87;
      goto LABEL_14;
    }

    ++v37;
    v43 += v94;
    if (v37 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  sub_10003D7E8(v38);
LABEL_15:

  v53 = v81;
  Divider.init()();
  v54 = static Axis.Set.horizontal.getter();
  __chkstk_darwin(v54);
  *(&v74 - 2) = v74;
  sub_10000341C(&qword_1002661C0, &qword_1001DF780);
  sub_100007120(&qword_1002661C8, &qword_1002661C0, &qword_1001DF780, &protocol conformance descriptor for HStack<A>);
  v55 = v83;
  ScrollView.init(_:showsIndicators:content:)();
  v56 = v75;
  v57 = v76;
  v58 = *(v75 + 16);
  v59 = v82;
  v58(v82, v53, v76);
  v60 = v77;
  v95 = *(v77 + 16);
  v61 = v55;
  v62 = v78;
  (v95)(v84, v61, v78);
  v63 = v79;
  v58(v79, v59, v57);
  v64 = sub_10000341C(&qword_1002661D0, &qword_1001DF788);
  v65 = v84;
  (v95)(v63 + *(v64 + 48), v84, v62);
  v66 = *(v60 + 8);
  v66(v83, v62);
  v67 = *(v56 + 8);
  v67(v81, v57);
  v66(v65, v62);
  v67(v82, v57);
  v51 = v89;
  sub_100185690(v63, v89);
  (*(v91 + 56))(v51, 0, 1, v92);
  v50 = v93;
  v48 = v90;
  v49 = v87;
  v52 = v88;
LABEL_16:
  v69 = v85;
  v68 = v86;
  v70 = *(v49 + 16);
  v70(v86, v85, v52);
  sub_100185618(v51, v48);
  v70(v50, v68, v52);
  v71 = sub_10000341C(&qword_1002661B8, &qword_1001DF778);
  sub_100185618(v48, &v50[*(v71 + 48)]);
  sub_10000F500(v51, &qword_1002661A0, &unk_1001DF700);
  v72 = *(v49 + 8);
  v72(v69, v52);
  sub_10000F500(v48, &qword_1002661A0, &unk_1001DF700);
  return (v72)(v68, v52);
}

uint64_t sub_100184D98()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

void sub_100184E00(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10000341C(&qword_1002661D8, &unk_1001DF790);
  sub_100184E58(a1, a2 + *(v4 + 44));
}

void sub_100184E58(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = type metadata accessor for Attachment(0);
  v28 = *(v29 - 8);
  v3 = __chkstk_darwin(v29);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v30 = &v25 - v5;
  v6 = sub_100184118();
  swift_getKeyPath();
  *&v35 = v6;
  sub_1001857BC(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  swift_getKeyPath();
  *&v35 = v7;
  sub_1001857BC(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v8 = *(v7 + 16);

  v27 = *(v8 + 16);
  if (v27)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      v11 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v12 = *(v28 + 72);
      v13 = v8;
      v14 = v30;
      sub_1000A6690(v8 + v11 + v12 * v9, v30);
      v15 = (v14 + *(v29 + 44));
      v16 = *v15;
      v17 = v15[1];
      v18 = a1[4];
      v37 = a1[3];
      v38 = v18;
      v39 = a1[5];
      v19 = a1[1];
      v36 = a1[2];
      v35 = v19;
      sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
      Binding.wrappedValue.getter();
      v40[0] = v31;
      v40[1] = v32;
      v40[2] = v33;
      v40[3] = v34;
      v20 = v31;

      sub_10004C65C(v40);
      if (v17)
      {
        if (__PAIR128__(v17, v16) == v20)
        {

          v8 = v13;
LABEL_11:
          sub_10003D784(v30, v26);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100163CE0(0, v10[2] + 1, 1);
            v10 = v41;
          }

          v24 = v10[2];
          v23 = v10[3];
          if (v24 >= v23 >> 1)
          {
            sub_100163CE0((v23 > 1), v24 + 1, 1);
            v10 = v41;
          }

          v10[2] = v24 + 1;
          sub_10003D784(v26, v10 + v11 + v24 * v12);
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v8 = v13;
        if (v21)
        {
          goto LABEL_11;
        }
      }

      else
      {

        v8 = v13;
      }

      sub_10003D7E8(v30);
LABEL_5:
      if (v27 == ++v9)
      {
        goto LABEL_17;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_17:

  *&v35 = v10;
  sub_10000341C(&qword_10025F848, &qword_1001D50C0);
  type metadata accessor for URL();
  sub_10000341C(&qword_1002661E0, &qword_1001DF7A0);
  sub_100007120(&qword_100265650, &qword_10025F848, &qword_1001D50C0, &protocol conformance descriptor for [A]);
  sub_100185700();
  sub_1001857BC(&qword_100265668, type metadata accessor for Attachment, &unk_1001DF044);
  ForEach<>.init(_:content:)();
}

double sub_10018538C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotoAttachmentView(0);
  sub_1000A6690(a1, a2 + *(v4 + 20));
  type metadata accessor for CompositionModel(0);
  sub_1001857BC(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v5 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v9);
  v6 = (a2 + *(sub_10000341C(&qword_1002661E0, &qword_1001DF7A0) + 36));
  v7 = v9[1];
  *v6 = v9[0];
  v6[1] = v7;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_100185480@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 80);
  v9[4] = *(v2 + 64);
  v9[5] = v4;
  v9[6] = *(v2 + 96);
  v10 = *(v2 + 112);
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v6 = *(v2 + 48);
  v9[2] = *(v2 + 32);
  v9[3] = v6;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = sub_10000341C(&qword_100266188, &qword_1001DF6E8);
  return sub_100184274(v9, (a2 + *(v7 + 44)));
}

uint64_t sub_100185504(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 129, 7);
}

unint64_t sub_1001855B4()
{
  result = qword_1002661B0;
  if (!qword_1002661B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002661B0);
  }

  return result;
}

uint64_t sub_100185618(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002661A0, &unk_1001DF700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100185690(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100266190, &qword_1001DF6F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100185700()
{
  result = qword_1002661E8;
  if (!qword_1002661E8)
  {
    sub_100003E34(&qword_1002661E0, &qword_1001DF7A0);
    sub_1001857BC(&qword_1002661F0, type metadata accessor for PhotoAttachmentView, &unk_1001DF7E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002661E8);
  }

  return result;
}

uint64_t sub_1001857BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100185848()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_100185988@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhotoAttachmentView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  Image.init(uiImage:)();
  (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
  v14 = Image.resizable(capInsets:resizingMode:)();

  (*(v10 + 8))(v12, v9);
  sub_100186574(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_100186818(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *a3 = v14;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = sub_10018687C;
  *(a3 + 32) = v16;

  sub_100058574(sub_10018687C, v16);
  sub_1000F3AB4(sub_10018687C, v16);

  return result;
}

double sub_100185BB8(uint64_t a1)
{
  sub_100185848();
  swift_getKeyPath();
  sub_1000637F0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = type metadata accessor for PhotoAttachmentView(0);
  sub_100175970(a1 + *(v2 + 20));

  return result;
}

void sub_100185C68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(v4 + *(type metadata accessor for Attachment(0) + 36));
  if (v5)
  {
    v6 = objc_allocWithZone(UIImage);
    v7 = v5;
    v8 = [v6 initWithCGImage:v7];
    v5 = static Alignment.center.getter();
    v10 = v9;
    sub_100185988(v8, v2, v16);

    v11 = v16[0];
    v12 = v16[1];
    v13 = v19;
    LOBYTE(v16[0]) = v17;
    v14 = 256;
    if (!v18)
    {
      v14 = 0;
    }

    v15 = v14 | v17;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v15 = 0;
    v13 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = v13;
}

char *sub_100185D60()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for PlatformCloseButton();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v3[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform];
  v5 = *&v3[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform];
  v6 = *&v3[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform + 8];
  *v4 = v1;
  v4[1] = v2;
  sub_100058574(v1, v2);
  sub_1000F3AB4(v5, v6);
  return v3;
}

uint64_t sub_100185DDC(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = (a1 + OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform);
  v5 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform);
  v6 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform + 8);
  *v4 = v3;
  v4[1] = v2;
  sub_100058574(v3, v2);

  return sub_1000F3AB4(v5, v6);
}

uint64_t sub_100185E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100186AFC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100185E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100186AFC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100185EF8(uint64_t a1)
{
  sub_100186AFC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *sub_100185F20(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform];
  *v10 = 0;
  *(v10 + 1) = 0;
  result = [objc_opt_self() roundButtonWithStyle:0];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_closeButton] = result;
    v16.receiver = v4;
    v16.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
    v13 = OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_closeButton;
    v14 = *&v12[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_closeButton];
    v15 = v12;
    [v14 addTarget:v15 action:"didTapCloseButton" forControlEvents:64];
    [v15 addSubview:*&v12[v13]];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001862D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Attachment(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100186390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for Attachment(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PhotoAttachmentView(uint64_t a1)
{
  result = qword_100266298;
  if (!qword_100266298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018647C(uint64_t a1)
{
  sub_100186500(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Attachment(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100186500(uint64_t a1)
{
  if (!qword_10025DE18)
  {
    type metadata accessor for CompositionModel(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10025DE18);
    }
  }
}

uint64_t sub_100186574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoAttachmentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001865D8()
{
  v1 = (type metadata accessor for PhotoAttachmentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for Attachment(0);

  v8 = v7[6];
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v7[10];
  v12 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if (!(*(*(v12 - 8) + 48))(v5 + v11, 1, v12))
  {
    v13 = type metadata accessor for DocumentResourceIdentifier();
    (*(*(v13 - 8) + 8))(v5 + v11, v13);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100186818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoAttachmentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10018687C()
{
  v1 = *(type metadata accessor for PhotoAttachmentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100185BB8(v2);
}

uint64_t sub_1001868E4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001868FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100186958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1001869BC()
{
  result = qword_1002662D0;
  if (!qword_1002662D0)
  {
    sub_100003E34(&qword_1002662D8, &qword_1001DF8B8);
    sub_100186A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002662D0);
  }

  return result;
}

unint64_t sub_100186A40()
{
  result = qword_1002662E0;
  if (!qword_1002662E0)
  {
    sub_100003E34(&qword_1002662E8, &qword_1001DF8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002662E0);
  }

  return result;
}

unint64_t sub_100186AA8()
{
  result = qword_1002662F0;
  if (!qword_1002662F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002662F0);
  }

  return result;
}

unint64_t sub_100186AFC()
{
  result = qword_1002662F8;
  if (!qword_1002662F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002662F8);
  }

  return result;
}

double sub_100186C30(void *a1)
{
  v2 = v1;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F08);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138739971;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "contact picker picked contact: %{sensitive}@", v8, 0xCu);
    sub_100186D9C(v9);
  }

  v11 = *(v2 + OBJC_IVAR____TtCV21WritingToolsUIService17ContactPickerView11Coordinator_onSelectContact);

  v11(v5);

  return result;
}

uint64_t sub_100186D9C(uint64_t a1)
{
  v2 = sub_10000341C(&unk_10025D580, &qword_1001CFA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100186E04()
{
  _StringGuts.grow(_:)(637);
  v0._countAndFlagsBits = 0xD0000000000000DDLL;
  v0._object = 0x80000001001EA3B0;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0xD000000000000080;
  v1._object = 0x80000001001EA490;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  v2._object = 0x80000001001EA520;
  v2._countAndFlagsBits = 0xD000000000000036;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0xD0000000000000E4;
  v3._object = 0x80000001001EA560;
  String.append(_:)(v3);
  return 0;
}

uint64_t sub_100186F48()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_1002772D8);
  sub_10000F34C(v0, qword_1002772D8);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_1001CF9E0;
  Schema.Field.init<A>(name:description:type:)();
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_10018B50C(&qword_1002664D8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_100187110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_10000341C(&qword_100266520, &qword_1001E00F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100027874(a1, a1[3]);
  sub_10018ABE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
    sub_10018B50C(&qword_100260F68, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001872D8()
{
  if (*v0)
  {
    return 0x656D656E69666572;
  }

  else
  {
    return 2036625250;
  }
}

uint64_t sub_100187314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D656E69666572 && a2 == 0xEB0000000073746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001873F4(uint64_t a1)
{
  v2 = sub_10018ABE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100187430(uint64_t a1)
{
  v2 = sub_10018ABE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018746C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10018A3E8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1001874E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
    sub_10018B50C(&qword_1002664D8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    GeneratedValues.extract<A>(field:)();
    v7 = type metadata accessor for GeneratedValues();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v8;
  }

  return result;
}

uint64_t sub_100187688()
{
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480, &unk_1001DFA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100187724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480, &unk_1001DFA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1001877BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018A27C(&qword_100266480, &unk_1001DFA30);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100187908()
{
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480, &unk_1001DFA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1001879A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480, &unk_1001DFA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_100187A3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018A27C(&qword_100266480, &unk_1001DFA30);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100187B88()
{
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480, &unk_1001DFA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_100187C24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480, &unk_1001DFA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_100187CBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018A27C(&qword_100266480, &unk_1001DFA30);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100187E08()
{
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480, &unk_1001DFA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_100187EA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480, &unk_1001DFA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_100187F3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018A27C(&qword_100266480, &unk_1001DFA30);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100188088()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_1002772F0);
  sub_10000F34C(v0, qword_1002772F0);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_1001CF9E0;
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_100188208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000341C(&qword_100266538, &qword_1001E00F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100027874(a1, a1[3]);
  sub_10018B644();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1001883A4()
{
  if (*v0)
  {
    return 0x74706D6F7270;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1001883D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001884AC(uint64_t a1)
{
  v2 = sub_10018B644();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001884E8(uint64_t a1)
{
  v2 = sub_10018B644();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100188568@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    GeneratedValues.extract<A>(field:)();
    v7 = type metadata accessor for GeneratedValues();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v8;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_1001886CC()
{

  v1 = OBJC_IVAR____TtC21WritingToolsUIService11SummaryTool___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummaryTool(uint64_t a1)
{
  result = qword_1002663C0;
  if (!qword_1002663C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001887DC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10018887C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3[2] = *a2;
  v3[3] = v4;
  v5 = a2[3];
  v3[4] = a2[2];
  v3[5] = v5;
  v3[6] = *v2;

  return _swift_task_switch(sub_100188904, 0, 0);
}

uint64_t sub_100188904()
{
  v1 = v0[5];
  v2 = v0[4];
  sub_100187CBC(v0[2], v0[3]);
  sub_100187F3C(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100188984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002B2A0;

  return Tooling.invoke(arguments:)(a1, a2, a3, a4);
}

uint64_t sub_100188A48()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480, &unk_1001DFA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_100188AE4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480, &unk_1001DFA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_100188B80(uint64_t a1)
{
  v2 = sub_10018A27C(&qword_100266488, &unk_1001DFB08);

  return Tooling.argumentsSchema.getter(a1, v2);
}

uint64_t sub_100188BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = sub_10018A27C(&qword_100266488, &unk_1001DFB08);
  *v7 = v3;
  v7[1] = sub_100028688;

  return Tooling.invoke(arguments:)(a1, a2, a3, v8);
}

uint64_t sub_100188CC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x74786554676E6F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6F746F6870;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x78655474726F6873;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74786554676E6F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6F746F6870;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x78655474726F6873;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100188DC4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100188E68(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100188EF8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100188F98@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018A610(*a1);
  *a2 = result;
  return result;
}

void sub_100188FC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0xE800000000000000;
  v5 = 0x74786554676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6F746F6870;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x78655474726F6873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001890E8()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_100277308);
  sub_10000F34C(v0, qword_100277308);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_1001CF9F0;
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  sub_10018A84C();
  Schema.Field.init<A>(name:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_100189270(void *a1)
{
  v3 = v1;
  v5 = sub_10000341C(&qword_100266560, &qword_1001E0108);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100027874(a1, a1[3]);
  sub_10018B698();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = *(v3 + 32);
    v10[12] = 2;
    sub_10018B740();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100189450()
{
  v1 = 0x7972657571;
  if (*v0 != 1)
  {
    v1 = 0x6570795461746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1001894A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10018AC38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001894D4(uint64_t a1)
{
  v2 = sub_10018B698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189510(uint64_t a1)
{
  v2 = sub_10018B698();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10018954C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10018AD4C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1001895AC()
{
  v0 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v5 = JSONEncoder.init()();
  (*(v2 + 104))(v4, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v1);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  result = dispatch thunk of JSONEncoder.outputFormatting.setter();
  qword_100277320 = v5;
  return result;
}

uint64_t sub_1001896FC()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_100277328);
  sub_10000F34C(v0, qword_100277328);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_1001CF9D0;
  sub_10000341C(&qword_100266508, &qword_1001E00E8);
  sub_10018B578(&qword_100266528, sub_10018B5F0, &protocol conformance descriptor for <A> [A]);
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_100189884(void *a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002664F8, &qword_1001E00E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100027874(a1, a1[3]);
  sub_10018B464();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10000341C(&qword_100266508, &qword_1001E00E8);
  sub_10018B578(&qword_100266510, sub_10018B4B8, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100189A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574736575716572 && a2 == 0xED00006F666E4964)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100189AD0(uint64_t a1)
{
  v2 = sub_10018B464();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189B0C(uint64_t a1)
{
  v2 = sub_10018B464();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100189B88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10000341C(&qword_100266508, &qword_1001E00E8);
  sub_10018B578(&qword_100266528, sub_10018B5F0, &protocol conformance descriptor for <A> [A]);
  GeneratedValues.extract<A>(field:)();
  v5 = type metadata accessor for GeneratedValues();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_100189CC4(uint64_t a1, uint64_t *a2)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *(v2 + 32);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100189D84;

  return sub_10018AFAC(v4, v5);
}

uint64_t sub_100189D84(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100189EA0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100189ED0(uint64_t a1)
{
  v2 = sub_10009A590();

  return Tooling.argumentsSchema.getter(a1, v2);
}

uint64_t sub_100189F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = sub_10009A590();
  *v7 = v3;
  v7[1] = sub_10002B2A0;

  return Tooling.invoke(arguments:)(a1, a2, a3, v8);
}

uint64_t sub_100189FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10018A340();
  v5 = sub_10018A394();

  return static CaseIterable<>.schema.getter(a1, a2, v4, v5);
}

uint64_t sub_10018A048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10018A340();
  sub_10018A394();
  return CaseIterable<>.init(from:)();
}

double sub_10018A0D8@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_10018A65C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_10018A158()
{
  result = qword_100266470;
  if (!qword_100266470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266470);
  }

  return result;
}

unint64_t sub_10018A1B0()
{
  result = qword_100266478;
  if (!qword_100266478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266478);
  }

  return result;
}

uint64_t sub_10018A220()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_10018A27C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SummaryTool(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10018A2F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

unint64_t sub_10018A340()
{
  result = qword_100266490;
  if (!qword_100266490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266490);
  }

  return result;
}

unint64_t sub_10018A394()
{
  result = qword_100266498;
  if (!qword_100266498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266498);
  }

  return result;
}

uint64_t sub_10018A3E8(void *a1)
{
  v3 = sub_10000341C(&qword_1002664E0, &qword_1001E00D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_10018ABE4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
    v9[15] = 1;
    sub_10018B50C(&qword_1002664F0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000F4B4(a1);
  return v7;
}

unint64_t sub_10018A610(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10024AC90, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10018A65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    GeneratedValues.extract<A>(field:)();
    sub_10018A84C();
    GeneratedValues.extract<A>(field:)();
    v7 = type metadata accessor for GeneratedValues();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v8;
  }

  return result;
}

unint64_t sub_10018A84C()
{
  result = qword_1002664A0;
  if (!qword_1002664A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664A0);
  }

  return result;
}

uint64_t sub_10018A8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10018A8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018A954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10018A99C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10018AA20()
{
  result = qword_1002664A8;
  if (!qword_1002664A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664A8);
  }

  return result;
}

unint64_t sub_10018AA78()
{
  result = qword_1002664B0;
  if (!qword_1002664B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664B0);
  }

  return result;
}

unint64_t sub_10018AAD0()
{
  result = qword_1002664B8;
  if (!qword_1002664B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664B8);
  }

  return result;
}

unint64_t sub_10018AB28()
{
  result = qword_1002664C0;
  if (!qword_1002664C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664C0);
  }

  return result;
}

unint64_t sub_10018AB80()
{
  result = qword_1002664C8;
  if (!qword_1002664C8)
  {
    sub_100003E34(&qword_1002664D0, &qword_1001E0088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664C8);
  }

  return result;
}

unint64_t sub_10018ABE4()
{
  result = qword_1002664E8;
  if (!qword_1002664E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664E8);
  }

  return result;
}

uint64_t sub_10018AC38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10018AD4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000341C(&qword_100266548, &qword_1001E0100);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_100027874(a1, a1[3]);
  sub_10018B698();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000F4B4(a1);
  }

  v23 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v19 = v9;
  v22 = 1;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v12;
  v20 = 2;
  sub_10018B6EC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v21;
  result = sub_10000F4B4(a1);
  *a2 = v19;
  *(a2 + 8) = v11;
  v15 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_10018AFAC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_10018B0A0;

  return v6(a1);
}

uint64_t sub_10018B0A0(uint64_t a1)
{
  v3 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10018B1D4, 0, 0);
  }
}

uint64_t sub_10018B1D4()
{
  if (qword_10025A880 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  *(v0 + 128) = *(v0 + 144);
  sub_10004DBF8();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  if (v1)
  {
    v5 = *(v0 + 8);

    return v5();
  }

  sub_10004DC4C(v2, v4);
  v7 = sub_100097014(v2, v4);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    sub_10004DD08(v2, v4);
LABEL_15:
    sub_10004DD08(v2, v4);
    goto LABEL_16;
  }

  *(v0 + 96) = v2;
  *(v0 + 104) = v4;
  sub_10004DC4C(v2, v4);
  sub_10000341C(&qword_10025F350, &unk_1001D40F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10004DD08(v2, v4);
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_10004DCA0(v0 + 56);
LABEL_14:
    v9 = sub_100095E84(v2, v4);
    v10 = v12;
    goto LABEL_15;
  }

  sub_100008198((v0 + 56), v0 + 16);
  sub_100027874((v0 + 16), *(v0 + 40));
  HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
  sub_10004DD08(v2, v4);
  if ((HasContiguous & 1) == 0)
  {
    sub_10000F4B4((v0 + 16));
    goto LABEL_14;
  }

  sub_100027874((v0 + 16), *(v0 + 40));
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_10004DD08(v2, v4);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  sub_10000F4B4((v0 + 16));
LABEL_16:
  v13 = *(v0 + 8);

  return v13(v9, v10);
}

unint64_t sub_10018B464()
{
  result = qword_100266500;
  if (!qword_100266500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266500);
  }

  return result;
}

unint64_t sub_10018B4B8()
{
  result = qword_100266518;
  if (!qword_100266518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266518);
  }

  return result;
}

uint64_t sub_10018B50C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(&qword_10025CC10, &qword_1001D1FB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10018B578(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(&qword_100266508, &qword_1001E00E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018B5F0()
{
  result = qword_100266530;
  if (!qword_100266530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266530);
  }

  return result;
}

unint64_t sub_10018B644()
{
  result = qword_100266540;
  if (!qword_100266540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266540);
  }

  return result;
}

unint64_t sub_10018B698()
{
  result = qword_100266550;
  if (!qword_100266550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266550);
  }

  return result;
}

unint64_t sub_10018B6EC()
{
  result = qword_100266558;
  if (!qword_100266558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266558);
  }

  return result;
}

unint64_t sub_10018B740()
{
  result = qword_100266568;
  if (!qword_100266568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266568);
  }

  return result;
}

unint64_t sub_10018B7DC()
{
  result = qword_100266570;
  if (!qword_100266570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266570);
  }

  return result;
}

unint64_t sub_10018B834()
{
  result = qword_100266578;
  if (!qword_100266578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266578);
  }

  return result;
}

unint64_t sub_10018B88C()
{
  result = qword_100266580;
  if (!qword_100266580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266580);
  }

  return result;
}

unint64_t sub_10018B8E4()
{
  result = qword_100266588;
  if (!qword_100266588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266588);
  }

  return result;
}

unint64_t sub_10018B93C()
{
  result = qword_100266590;
  if (!qword_100266590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266590);
  }

  return result;
}

unint64_t sub_10018B994()
{
  result = qword_100266598;
  if (!qword_100266598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266598);
  }

  return result;
}

unint64_t sub_10018B9EC()
{
  result = qword_1002665A0;
  if (!qword_1002665A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665A0);
  }

  return result;
}

unint64_t sub_10018BA44()
{
  result = qword_1002665A8;
  if (!qword_1002665A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665A8);
  }

  return result;
}

unint64_t sub_10018BA9C()
{
  result = qword_1002665B0;
  if (!qword_1002665B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665B0);
  }

  return result;
}

unint64_t sub_10018BAF4()
{
  result = qword_1002665B8;
  if (!qword_1002665B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665B8);
  }

  return result;
}

unint64_t sub_10018BB4C()
{
  result = qword_1002665C0;
  if (!qword_1002665C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665C0);
  }

  return result;
}

unint64_t sub_10018BBA4()
{
  result = qword_1002665C8;
  if (!qword_1002665C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665C8);
  }

  return result;
}

uint64_t sub_10018BC14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10018BC5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018BCB4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10018BCCC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10018BCE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10018BD30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018BD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v45 = sub_10000341C(&qword_1002665F0, &qword_1001E0750);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = &v41 - v3;
  v5 = sub_10000341C(&qword_1002665F8, &unk_1001E0758);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = __chkstk_darwin(v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v41 - v8;
  v9 = sub_10000341C(&qword_1002600B0, &qword_1001DA0A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = sub_10000341C(&qword_100266600, &unk_1001E0768);
  v14 = __chkstk_darwin(v13 - 8);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  v18 = *(a1 + 18) == 1;
  v41 = &v41 - v16;
  if (v18)
  {
    sub_100003734(a1, &v50);
    v19 = swift_allocObject();
    v20 = v53;
    v19[3] = v52;
    v19[4] = v20;
    v19[5] = v54;
    v21 = v51;
    v19[1] = v50;
    v19[2] = v21;
    sub_10000341C(&qword_1002600B8, &qword_1001D56E0);
    sub_1000AF918();
    Button.init(action:label:)();
    (*(v10 + 32))(v17, v12, v9);
    (*(v10 + 56))(v17, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(&v41 - v16, 1, 1, v9);
  }

  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  *&v50 = *a1;
  v22 = v50;
  *(&v50 + 1) = v23;
  LOBYTE(v51) = v24;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.projectedValue.getter();
  v25 = *(a1 + 17);
  v26 = *(a1 + 24);
  v27 = *(a1 + 32);
  v50 = v55;
  LOBYTE(v51) = v56;
  BYTE1(v51) = v25;
  *(&v51 + 1) = v26;
  *&v52 = v27;
  *&v55 = v22;
  *(&v55 + 1) = v23;
  v56 = v24;

  FocusState.Binding.projectedValue.getter();
  v28 = sub_10018CA54();
  View.focused(_:)();

  type metadata accessor for IntelligenceUI.PromptEntryView();
  *&v50 = &type metadata for OpenEndedAdjustmentView;
  *(&v50 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v43;
  v30 = v45;
  View.representablePreferredFocusableView<A>(_:resolver:)();
  (*(v44 + 8))(v4, v30);
  v31 = v41;
  v32 = v42;
  sub_1000081F8(v41, v42, &qword_100266600, &unk_1001E0768);
  v34 = v46;
  v33 = v47;
  v35 = *(v47 + 16);
  v36 = v48;
  v35(v46, v29, v48);
  v37 = v49;
  sub_1000081F8(v32, v49, &qword_100266600, &unk_1001E0768);
  v38 = sub_10000341C(&qword_100266608, &unk_1001E0778);
  v35((v37 + *(v38 + 48)), v34, v36);
  v39 = *(v33 + 8);
  v39(v29, v36);
  sub_10000F500(v31, &qword_100266600, &unk_1001E0768);
  v39(v34, v36);
  return sub_10000F500(v32, &qword_100266600, &unk_1001E0768);
}

uint64_t sub_10018C370(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  if (v6 == 1)
  {
    v7 = v2;
    v8 = v3;
    v9 = v4;

    FocusState.Binding.wrappedValue.getter();
    FocusState.Binding.wrappedValue.setter();
  }

  sub_1000081F8((a1 + 5), &v7, &unk_10025B1C0, &unk_1001CFA90);
  if (!v10)
  {
    return sub_10000F500(&v7, &unk_10025B1C0, &unk_1001CFA90);
  }

  sub_100027874(&v7, v10);
  if (qword_10025A620 != -1)
  {
    swift_once();
  }

  sub_100009C54(qword_100276E30);
  return sub_10000F4B4(&v7);
}

uint64_t sub_10018C4E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  sub_10000341C(&unk_100262F20, &qword_1001D56F8);
  TintShapeStyle.init()();
  *a1 = v2;
  v3 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(sub_10000341C(&unk_100262F10, &qword_1001D56F0) + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  LOBYTE(v3) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(sub_10000341C(&unk_100262F00, &qword_1001D56E8) + 36);
  *v14 = v3;
  *(v14 + 1) = v7;
  *(v14 + 2) = v9;
  *(v14 + 3) = v11;
  *(v14 + 4) = v13;
  v14[40] = 0;
  if (qword_10025A7B8 != -1)
  {
    swift_once();
  }

  v15 = qword_100277168;
  v16 = static Alignment.center.getter();
  v18 = v17;
  v19 = a1 + *(sub_10000341C(&qword_1002600B8, &qword_1001D56E0) + 36);
  *v19 = v15;
  *(v19 + 4) = 256;
  *(v19 + 2) = v16;
  *(v19 + 3) = v18;
}

uint64_t sub_10018C66C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000341C(&qword_1002665D8, &qword_1001E0738);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_10000341C(&qword_1002665E0, &qword_1001E0740);
  sub_10018BD94(v1, &v5[*(v6 + 44)]);
  v7 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10018CAC4(v5, a1);
  result = sub_10000341C(&qword_1002665E8, &qword_1001E0748);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

void sub_10018C794(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UIPromptBackgroundView.Configuration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_projectBox();
  v7 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  dispatch thunk of UIPromptBackgroundView.configuration.setter();
}

void *sub_10018C8AC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  v8 = v1[3];
  v7 = v1[4];
  v9 = type metadata accessor for OpenEndedAdjustmentViewCoordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC21WritingToolsUIService34OpenEndedAdjustmentViewCoordinator_owner];
  *v11 = v3;
  *(v11 + 1) = v4;
  v11[16] = v5;
  v11[17] = v6;
  *(v11 + 3) = v8;
  *(v11 + 4) = v7;
  v13.receiver = v10;
  v13.super_class = v9;

  result = objc_msgSendSuper2(&v13, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10018C960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10018D9D4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10018C9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10018D9D4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10018CA28(uint64_t a1)
{
  sub_10018D9D4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10018CA54()
{
  result = qword_1002665D0;
  if (!qword_1002665D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665D0);
  }

  return result;
}

uint64_t sub_10018CAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002665D8, &qword_1001E0738);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018CB34(uint64_t a1, uint64_t a2)
{

  if (*(v2 + 80))
  {
    sub_10000F4B4((v2 + 56));
  }

  return _swift_deallocObject(v2, 96, 7);
}

uint64_t sub_10018CB94@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10018CBC0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

void sub_10018CC44(void *a1, uint64_t a2, void **a3, uint64_t a4, int a5, char a6)
{
  LODWORD(v81) = a5;
  v79 = a3;
  v80 = a4;
  v8 = sub_10000341C(&unk_1002628E8, &unk_1001E07C0);
  __chkstk_darwin(v8 - 8);
  v73 = &v62 - v9;
  v10 = type metadata accessor for UIButton.Configuration();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin(v10);
  v75 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for IntelligenceUI.PromptEntryView.PlaceholderConfiguration();
  v74 = *(v76 - 8);
  v12 = __chkstk_darwin(v76);
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v62 - v14;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v15 - 8);
  v70 = v15;
  __chkstk_darwin(v15);
  v67 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for UIPromptBackgroundView.FillStyle();
  v63 = *(v64 - 8);
  v18 = __chkstk_darwin(v64);
  v20 = (&v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v22 = &v62 - v21;
  v23 = type metadata accessor for UIPromptBackgroundView.Configuration();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v62 - v28;
  v30 = IntelligenceUI.PromptEntryView.trailingButton.getter();
  [v30 setNeedsUpdateConfiguration];

  v31 = IntelligenceUI.PromptEntryView.textView.getter();
  [v31 setSelectable:1];

  v32 = IntelligenceUI.PromptEntryView.textView.getter();
  [v32 setEditable:1];

  [a1 setUserInteractionEnabled:a6 & 1];
  dispatch thunk of IntelligenceUI.PromptEntryView.accessoryView.setter();
  aBlock = v79;
  v83 = v80;
  LOBYTE(v84) = v81;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  if (v88 == 1)
  {
    v33 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
    dispatch thunk of UIPromptBackgroundView.configuration.getter();

    static UIPromptBackgroundView.Configuration.intelligent.getter();
    sub_10018D98C(&unk_100262900, &type metadata accessor for UIPromptBackgroundView.Configuration, &protocol conformance descriptor for UIPromptBackgroundView.Configuration);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = *(v24 + 8);
    v35(v27, v23);
    v35(v29, v23);
    if ((v34 & 1) == 0)
    {
      v36 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
      static UIPromptBackgroundView.Configuration.intelligent.getter();
      dispatch thunk of UIPromptBackgroundView.configuration.setter();
    }
  }

  else
  {
    v37 = swift_allocBox();
    static UIPromptBackgroundView.Configuration.default.getter();
    if (a6)
    {
      if (qword_10025A808 != -1)
      {
        swift_once();
      }

      v38 = v64;
      v39 = sub_10000F34C(v64, qword_1002771B8);
      (*(v63 + 16))(v22, v39, v38);
    }

    else
    {
      v40 = [objc_opt_self() _textFieldDisabledBackgroundColor];
      if (!v40)
      {
        __break(1u);
        return;
      }

      *v20 = v40;
      (*(v63 + 104))(v20, enum case for UIPromptBackgroundView.FillStyle.solid(_:), v64);
    }

    UIPromptBackgroundView.Configuration.fillStyle.setter();
    UIPromptBackgroundView.Configuration.shadowRadius.setter();
    v41 = objc_opt_self();
    v42 = [v41 clearColor];
    UIPromptBackgroundView.Configuration.shadowColor.setter();
    sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
    v43 = static OS_dispatch_queue.main.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    *(v44 + 24) = v37;
    v86 = sub_10018D718;
    v87 = v44;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_1001256BC;
    v85 = &unk_100251FC8;
    v45 = _Block_copy(&aBlock);
    a1;

    v46 = v65;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10018D98C(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v81 = v37;
    sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
    sub_100007120(&qword_100262470, &unk_10025D5E0, &qword_1001DAE20, &protocol conformance descriptor for [A]);
    v47 = v67;
    v48 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);

    (*(v69 + 8))(v47, v48);
    (*(v66 + 8))(v46, v68);
    sub_1000081B0(0, &qword_100262510, UIColor_ptr);
    if (qword_10025A7D0 != -1)
    {
      swift_once();
    }

    UIColor.init(_:)();
    v49 = v72;
    IntelligenceUI.PromptEntryView.PlaceholderConfiguration.init(textColor:)();
    v50 = v74;
    v51 = v76;
    (*(v74 + 16))(v71, v49, v76);
    dispatch thunk of IntelligenceUI.PromptEntryView.placeholderConfiguration.setter();
    v52 = v75;
    static UIButton.Configuration.borderless()();
    v53 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle2];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    sub_100125454(0);
    v54 = String._bridgeToObjectiveC()();

    v55 = [objc_opt_self() _systemImageNamed:v54];

    UIButton.Configuration.image.setter();
    v56 = [v41 secondaryLabelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v57 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    v59 = v77;
    v58 = v78;
    v60 = v73;
    (*(v77 + 16))(v73, v52, v78);
    (*(v59 + 56))(v60, 0, 1, v58);
    UIButton.configuration.setter();

    v61 = IntelligenceUI.PromptEntryView.textView.getter();
    [v61 setKeyboardAppearance:13];

    (*(v59 + 8))(v52, v58);
    (*(v50 + 8))(v49, v51);
  }
}

uint64_t sub_10018D6D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018D720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10018D738()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for IntelligenceUI.PromptEntryView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  dispatch thunk of IntelligenceUI.PromptEntryView.placeholder.setter();
  dispatch thunk of IntelligenceUI.PromptEntryView.isLeadingButtonVisible.setter();
  v3 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  [v3 setConfigurationUpdateHandler:0];

  v4 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  [v4 setUserInteractionEnabled:0];

  dispatch thunk of IntelligenceUI.PromptEntryView.isLeadingButtonConfiguredAsToggle.setter();
  dispatch thunk of IntelligenceUI.PromptEntryView.trailingButtonActivatesDictationWhenEmpty.setter();
  sub_10000341C(&qword_100262918, &qword_1001E07D0);
  sub_100007120(&qword_100262920, &qword_100262918, &qword_1001E07D0, &protocol conformance descriptor for ClosedRange<A>);
  dispatch thunk of IntelligenceUI.PromptEntryView.visibleLineLimit.setter();
  sub_10000341C(&qword_100266610, &qword_1001E07D8);
  UIViewRepresentableContext.coordinator.getter();
  sub_10018D98C(&qword_100266618, type metadata accessor for OpenEndedAdjustmentViewCoordinator, &unk_1001D1C84);
  dispatch thunk of IntelligenceUI.PromptEntryView.delegate.setter();
  return v2;
}

uint64_t sub_10018D98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10018D9D4()
{
  result = qword_100266620;
  if (!qword_100266620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266620);
  }

  return result;
}

unint64_t sub_10018DA2C()
{
  result = qword_100266628;
  if (!qword_100266628)
  {
    sub_100003E34(&qword_1002665E8, &qword_1001E0748);
    sub_100007120(&unk_100266630, &qword_1002665D8, &qword_1001E0738, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266628);
  }

  return result;
}

uint64_t (*sub_10018DAE4())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1000284C4();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_10018DB88;
}

uint64_t sub_10018DB50(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_10018DB88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = a4;
  return v5(v7);
}

uint64_t sub_10018DC20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000341C(&qword_100266640, &qword_1001E0920);
  __chkstk_darwin(v6 - 8);
  v8 = v33 - v7;
  v9 = sub_10000341C(&qword_100266648, &qword_1001E0928);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_10000341C(&qword_100266650, &qword_1001E0930);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v33 - v15;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0x4040000000000000;
  v8[16] = 0;
  v17 = sub_10000341C(&qword_100266658, &qword_1001E0938);
  sub_10018DEDC(a1, a2 & 1, &v8[*(v17 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v8, v12, &qword_100266640, &qword_1001E0920);
  v18 = &v12[*(v10 + 44)];
  v19 = v33[5];
  *(v18 + 4) = v33[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v33[6];
  v20 = v33[1];
  *v18 = v33[0];
  *(v18 + 1) = v20;
  v21 = v33[3];
  *(v18 + 2) = v33[2];
  *(v18 + 3) = v21;
  LOBYTE(v8) = static Edge.Set.horizontal.getter();
  sub_10002A894(v12, v16, &qword_100266648, &qword_1001E0928);
  v22 = &v16[*(v14 + 44)];
  *v22 = v8;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  LOBYTE(v8) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10002A894(v16, a3, &qword_100266650, &qword_1001E0930);
  result = sub_10000341C(&unk_100266660, &unk_1001E0940);
  v32 = a3 + *(result + 36);
  *v32 = v8;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_10018DEDC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v39 = a1;
  v4 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v34 - v5;
  v6 = sub_10000341C(&unk_100266670, &qword_1001E0950);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = &v34 - v10;
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x20656C62616E45;
  v12._object = 0xE700000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  v13._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v13);

  v14._object = 0x80000001001EA990;
  v14._countAndFlagsBits = 0xD000000000000025;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  LocalizedStringKey.init(stringInterpolation:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v36 = v16;
  v37 = v15;
  v35 = v17;
  v46 = v18;
  KeyPath = swift_getKeyPath();
  if (qword_10025A7C8 != -1)
  {
    swift_once();
  }

  v34 = qword_100277178;

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x20705520746553;
  v19._object = 0xE700000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v20);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
  LocalizedStringKey.init(stringInterpolation:)();
  v22 = swift_allocObject();
  *(v22 + 16) = v39;
  *(v22 + 24) = v38 & 1;

  v23 = v40;
  Button<>.init(_:action:)();
  v47[0] = 0;
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  sub_10018E5E8();
  v24 = v45;
  v25 = v42;
  View.buttonStyle<A>(_:)();
  (*(v41 + 8))(v23, v25);
  v26 = *(v7 + 16);
  v27 = v43;
  v26(v43, v24, v6);
  v29 = v36;
  v28 = v37;
  *a3 = v37;
  *(a3 + 8) = v29;
  LOBYTE(v23) = v35 & 1;
  *(a3 + 16) = v35 & 1;
  v30 = KeyPath;
  *(a3 + 24) = v46;
  *(a3 + 32) = v30;
  *(a3 + 40) = 1;
  *(a3 + 48) = v34;
  v31 = sub_10000341C(&unk_100266688, &unk_1001E0988);
  v26((a3 + *(v31 + 48)), v27, v6);
  sub_100007D98(v28, v29, v23);
  v32 = *(v7 + 8);

  v32(v45, v6);
  v32(v27, v6);
  sub_10002A984(v28, v29, v23);
}

double sub_10018E3CC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v13;
  }

  swift_getKeyPath();
  v13 = a1;
  sub_1000637F0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong respondsToSelector:"enrollmentBegan"])
    {
      [v10 enrollmentBegan];
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10018E5A4(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 25, 7);
}

unint64_t sub_10018E5E8()
{
  result = qword_100266680;
  if (!qword_100266680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266680);
  }

  return result;
}

uint64_t sub_10018E6B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018E73C()
{
  result = qword_1002666A8;
  if (!qword_1002666A8)
  {
    sub_100003E34(&qword_100266648, &qword_1001E0928);
    sub_100007120(&unk_1002666B0, &qword_100266640, &qword_1001E0920, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002666A8);
  }

  return result;
}

uint64_t sub_10018E7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v53 = sub_10000341C(&qword_1002666C8, &unk_1001E0B48);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v43 - v3;
  v4 = sub_10000341C(&qword_10025A990, &qword_1001CE170);
  __chkstk_darwin(v4);
  v6 = &v43 - v5;
  v7 = sub_10000341C(&qword_1002666D0, &qword_1001E0B58);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  *(&v43 - v8) = 0x4010000000000000;
  v10 = sub_10000341C(&qword_1002666D8, &qword_1001E0B60);
  sub_10018EFCC(a1, &v9[*(v10 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v9, v6, &qword_1002666D0, &qword_1001E0B58);
  v49 = v4;
  v11 = *(v4 + 36);
  v48 = v6;
  v12 = &v6[v11];
  v13 = v55[8];
  v14 = v55[10];
  v15 = v55[11];
  *(v12 + 4) = v55[9];
  *(v12 + 5) = v14;
  *(v12 + 6) = v15;
  v16 = v55[6];
  *v12 = v55[5];
  *(v12 + 1) = v16;
  *(v12 + 2) = v55[7];
  *(v12 + 3) = v13;
  type metadata accessor for MainActor();
  sub_1000AE0F0(a1, v55);
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  v19 = *(a1 + 48);
  *(v18 + 64) = *(a1 + 32);
  *(v18 + 80) = v19;
  *(v18 + 96) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v20;
  v21 = type metadata accessor for TaskPriority();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v43 - v24;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v45 = type metadata accessor for _TaskModifier2();
    v46 = &v43;
    v44 = *(v45 - 8);
    __chkstk_darwin(v45);
    v43 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    v47 = &v43;
    _StringGuts.grow(_:)(17);

    *&v55[0] = 0xD000000000000044;
    *(&v55[0] + 1) = 0x80000001001EA9C0;
    v54 = 160;
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    __chkstk_darwin(v28);
    (*(v22 + 16))(&v43 - v24, &v43 - v24, v21);
    v29 = v43;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v22 + 8))(v25, v21);
    v30 = v50;
    sub_10002A894(v48, v50, &qword_10025A990, &qword_1001CE170);
    v31 = sub_10000341C(&qword_10025A998, &qword_1001CE178);
    (*(v44 + 32))(v30 + *(v31 + 36), v29, v45);
  }

  else
  {
    v32 = sub_10000341C(&qword_10025A9A0, &unk_1001CE180);
    v30 = v50;
    v33 = (v50 + *(v32 + 36));
    v34 = type metadata accessor for _TaskModifier();
    (*(v22 + 32))(&v33[*(v34 + 20)], &v43 - v24, v21);
    *v33 = &unk_1001E0B70;
    *(v33 + 1) = v18;
    sub_10002A894(v48, v30, &qword_10025A990, &qword_1001CE170);
  }

  v55[0] = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v35 = v54;
  swift_getKeyPath();
  *&v55[0] = v35;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v35 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);

  LOBYTE(v54) = v36;
  v37 = swift_allocObject();
  v38 = *(a1 + 48);
  *(v37 + 48) = *(a1 + 32);
  *(v37 + 64) = v38;
  *(v37 + 80) = *(a1 + 64);
  v39 = *(a1 + 16);
  *(v37 + 16) = *a1;
  *(v37 + 32) = v39;
  sub_1000AE0F0(a1, v55);
  v40 = sub_10019A234();
  *&v55[0] = v49;
  *(&v55[0] + 1) = v40;
  swift_getOpaqueTypeConformance2();
  sub_100035198();
  v41 = v53;
  View.onChange<A>(of:initial:_:)();

  return (*(v52 + 8))(v30, v41);
}

void sub_10018EFCC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v76 = sub_10000341C(&qword_100266708, &qword_1001E0C58);
  v3 = __chkstk_darwin(v76);
  v79 = &v72[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v77 = &v72[-v5];
  v6 = sub_10000341C(&qword_100266710, &qword_1001E0C60);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v72[-v8];
  v10 = sub_10000341C(&qword_100266718, &qword_1001E0C68);
  v11 = __chkstk_darwin(v10);
  v80 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v72[-v14];
  __chkstk_darwin(v13);
  v81 = &v72[-v16];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v17 = 1;
  v9[16] = 1;
  v18 = sub_10000341C(&qword_100266720, &qword_1001E0C70);
  sub_10018F8DC(a1, &v9[*(v18 + 44)]);
  *&v9[*(v7 + 44)] = 0x3FF0000000000000;
  v119 = *(a1 + 16);
  v75 = a1;
  v92[0] = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v19 = *&v82[0];
  swift_getKeyPath();
  *&v92[0] = v19;
  sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v7) = *(v19 + 112);

  if ((v7 & 1) == 0)
  {
    v92[0] = v119;
    State.wrappedValue.getter();
    v20 = *&v82[0];
    swift_getKeyPath();
    *&v92[0] = v20;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v20 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) == 0;
  }

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  sub_10002A894(v9, v15, &qword_100266710, &qword_1001E0C60);
  v23 = &v15[*(v10 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_10002AAC0;
  v23[2] = v22;
  sub_10002A894(v15, v81, &qword_100266718, &qword_1001E0C68);
  v92[0] = v119;
  State.wrappedValue.getter();
  v24 = *&v82[0];
  swift_getKeyPath();
  *&v92[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(v24 + 72);
  v25 = *(v24 + 80);
  v27 = *(v24 + 88);
  v28 = *(v24 + 96);
  sub_10002879C(v26, v25, v27, *(v24 + 96));

  if (v28 != 255)
  {
    if (!v28 && v26 == 5)
    {
      if (v27)
      {
        v29 = v27;
LABEL_10:
        *&v92[0] = v25;
        *(&v92[0] + 1) = v29;
        sub_10002AC34();
        v32 = Text.init<A>(_:)();
        v34 = v33;
        v36 = v35;
        v38 = v37;
        type metadata accessor for PresentationModel(0);
        sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
        v39 = Environment.init<A>(_:)();
        v120 = v32;
        v121 = v34;
        v122 = v36 & 1;
        v123 = v38;
        v124 = v39;
        v41 = v40 & 1;
        v125 = v40 & 1;
        v42 = static Color.blue.getter();
        sub_1000E4714(v42, &v106);

        sub_10002A984(v32, v34, v36 & 1);

        j__swift_release(v39, v41);
        v43 = swift_getKeyPath();
        v74 = v43;
        v114 = 0;
        v44 = static Edge.Set.horizontal.getter();
        v45 = v44;
        v73 = v44;
        v46 = EdgeInsets.init(_all:)();
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v115 = 0;
        __chkstk_darwin(v46);
        *&v72[-16] = v75;
        sub_10000341C(&qword_100266728, &qword_1001E0D00);
        sub_100007120(&qword_100266730, &qword_100266728, &qword_1001E0D00, &protocol conformance descriptor for HStack<A>);
        v55 = v77;
        _GlassEffectContainer.init(smoothness:content:)();
        *(v55 + *(v76 + 36)) = 0x3FF0000000000000;
        v57 = v80;
        v56 = v81;
        sub_1000081F8(v81, v80, &qword_100266718, &qword_1001E0C68);
        v58 = v79;
        sub_1000081F8(v55, v79, &qword_100266708, &qword_1001E0C58);
        v59 = v78;
        sub_1000081F8(v57, v78, &qword_100266718, &qword_1001E0C68);
        v60 = sub_10000341C(&qword_100266738, &qword_1001E0D08);
        v61 = (v59 + *(v60 + 48));
        v83 = v110;
        v84 = v111;
        v85 = v112;
        v86 = v113;
        v82[0] = v106;
        v82[1] = v107;
        v82[2] = v108;
        v82[3] = v109;
        *&v87 = v43;
        *(&v87 + 1) = 1;
        LOBYTE(v88) = 0;
        DWORD1(v88) = *&v117[3];
        *(&v88 + 1) = *v117;
        BYTE8(v88) = v45;
        *(&v88 + 9) = *v116;
        HIDWORD(v88) = *&v116[3];
        *&v89 = v48;
        *(&v89 + 1) = v50;
        *&v90 = v52;
        *(&v90 + 1) = v54;
        LOBYTE(v91) = 0;
        *(&v91 + 1) = *v118;
        DWORD1(v91) = *&v118[3];
        *(&v91 + 1) = 0;
        v62 = v106;
        v63 = v107;
        v64 = v109;
        v61[2] = v108;
        v61[3] = v64;
        *v61 = v62;
        v61[1] = v63;
        v65 = v83;
        v66 = v84;
        v67 = v86;
        v61[6] = v85;
        v61[7] = v67;
        v61[4] = v65;
        v61[5] = v66;
        v68 = v87;
        v69 = v88;
        v70 = v91;
        v61[11] = v90;
        v61[12] = v70;
        v71 = v89;
        v61[9] = v69;
        v61[10] = v71;
        v61[8] = v68;
        sub_1000081F8(v58, v59 + *(v60 + 64), &qword_100266708, &qword_1001E0C58);
        sub_1000081F8(v82, v92, &qword_100266740, &qword_1001E0D10);
        sub_10000F500(v55, &qword_100266708, &qword_1001E0C58);
        sub_10000F500(v56, &qword_100266718, &qword_1001E0C68);
        sub_10000F500(v58, &qword_100266708, &qword_1001E0C58);
        v92[4] = v110;
        v92[5] = v111;
        v92[6] = v112;
        v92[7] = v113;
        v92[0] = v106;
        v92[1] = v107;
        v92[2] = v108;
        v92[3] = v109;
        v93 = v74;
        v94 = 1;
        v95 = 0;
        *&v96[3] = *&v117[3];
        *v96 = *v117;
        v97 = v73;
        *&v98[3] = *&v116[3];
        *v98 = *v116;
        v99 = v48;
        v100 = v50;
        v101 = v52;
        v102 = v54;
        v103 = 0;
        *&v104[3] = *&v118[3];
        *v104 = *v118;
        v105 = 0;
        sub_10000F500(v92, &qword_100266740, &qword_1001E0D10);
        sub_10000F500(v57, &qword_100266718, &qword_1001E0C68);
        return;
      }

      sub_10000F3F4(v26, v25, 0, 0);
    }

    v30 = sub_100106A3C(v26, v25, v27, v28);
    v29 = v31;
    sub_1000278C0(v26, v25, v27, v28);
    v25 = v30;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10018F8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v153 = type metadata accessor for FeedbackView(0);
  __chkstk_darwin(v153);
  v152 = v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&qword_10025BB58, &unk_1001D09D0);
  v5 = __chkstk_darwin(v4 - 8);
  v165 = v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v168 = v136 - v7;
  *&v156 = type metadata accessor for PopoverAttachmentAnchor();
  v150 = *(v156 - 8);
  __chkstk_darwin(v156);
  v149 = (v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = type metadata accessor for IconOnlyLabelStyle();
  v141 = *(v167 - 8);
  __chkstk_darwin(v167);
  v140 = v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_10000341C(&qword_10025AAA8, &unk_1001CE240);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = v136 - v10;
  v145 = sub_10000341C(&qword_1002667A8, &qword_1001E0E38);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v154 = v136 - v11;
  v142 = sub_10000341C(&qword_10025AAA0, &unk_1001E0E40);
  __chkstk_darwin(v142);
  v143 = v136 - v12;
  v155 = sub_10000341C(&qword_10025AA80, &qword_1001CE228);
  __chkstk_darwin(v155);
  v147 = v136 - v13;
  v161 = sub_10000341C(&qword_1002667B0, &qword_1001E0E50);
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v146 = v136 - v14;
  v15 = sub_10000341C(&qword_1002667B8, &qword_1001E0E58);
  v16 = __chkstk_darwin(v15 - 8);
  v164 = v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v169 = v136 - v18;
  v159 = type metadata accessor for ButtonToggleStyle();
  v162 = *(v159 - 8);
  __chkstk_darwin(v159);
  *&v157 = v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v157 + 1) = sub_10000341C(&qword_10025BB60, &unk_1001E0E60);
  v158 = *(*(&v157 + 1) - 8);
  __chkstk_darwin(*(&v157 + 1));
  v21 = v136 - v20;
  v22 = sub_10000341C(&qword_10025BB68, &qword_1001D09E0);
  v23 = v22 - 8;
  v24 = __chkstk_darwin(v22);
  v163 = v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = (v136 - v26);
  v179 = *(a1 + 16);
  v148 = a1;
  v177 = *(a1 + 16);
  v28 = sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.projectedValue.getter();
  v29 = v170;
  v30 = v171;
  swift_getKeyPath();
  v177 = v29;
  v178 = v30;
  v136[3] = sub_10000341C(&qword_1002667C0, &unk_1001E0E70);
  Binding.subscript.getter();

  *(&v156 + 1) = v174;

  sub_10000341C(&qword_10025BB78, &unk_1001DE2C0);
  v31 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v32 = v28;
  v33 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  v34 = sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v136[2] = v31;
  *&v170 = v31;
  *(&v170 + 1) = v167;
  v136[1] = v33;
  v171 = v33;
  v172 = v34;
  swift_getOpaqueTypeConformance2();
  Toggle.init(isOn:label:)();
  v35 = v157;
  ButtonToggleStyle.init()();
  sub_100007120(&qword_10025BB80, &qword_10025BB60, &unk_1001E0E60, &protocol conformance descriptor for Toggle<A>);
  sub_10019A648(&qword_10025BB88, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
  v36 = *(&v157 + 1);
  v37 = v159;
  View.toggleStyle<A>(_:)();
  v162[1](v35, v37);
  (*(v158 + 8))(v21, v36);
  v38 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v40 = *(v23 + 44);
  v162 = v27;
  v41 = (v27 + v40);
  *v41 = KeyPath;
  v41[1] = v38;
  v170 = v179;
  State.wrappedValue.getter();
  v42 = v177;
  swift_getKeyPath();
  *&v170 = v42;
  v43 = sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v42 + 96);
  v151 = v32;
  if (!v44 && *(v42 + 72) != 5)
  {

    goto LABEL_7;
  }

  v172 = &type metadata for WritingTools;
  v173 = sub_10002AC88();
  LOBYTE(v170) = 3;
  v45 = isFeatureEnabled(_:)();
  sub_10000F4B4(&v170);

  if ((v45 & 1) == 0)
  {
LABEL_7:
    v57 = 1;
    v58 = v169;
    v59 = v161;
    v60 = v160;
    goto LABEL_10;
  }

  v46 = swift_allocObject();
  v47 = v148;
  v48 = *(v148 + 48);
  *(v46 + 48) = *(v148 + 32);
  *(v46 + 64) = v48;
  *(v46 + 80) = *(v47 + 64);
  v49 = *(v47 + 16);
  *(v46 + 16) = *v47;
  *(v46 + 32) = v49;
  __chkstk_darwin(v46);
  sub_1000AE0F0(v47, &v170);
  v50 = v137;
  Button.init(action:label:)();
  v51 = v140;
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240, &protocol conformance descriptor for Button<A>);
  v52 = v139;
  v53 = v167;
  View.labelStyle<A>(_:)();
  (*(v141 + 8))(v51, v53);
  (*(v138 + 8))(v50, v52);
  v170 = v179;
  State.wrappedValue.getter();
  v54 = v177;
  swift_getKeyPath();
  *&v170 = v54;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = *(v54 + 112);
  v159 = v43;
  if (v55)
  {
    v56 = 1;
  }

  else
  {
    swift_getKeyPath();
    *&v170 = v54;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = *(v54 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) == 0;
  }

  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  *(v62 + 16) = v56;
  v63 = v143;
  (*(v144 + 32))(v143, v154, v145);
  v64 = (v63 + *(v142 + 36));
  *v64 = v61;
  v64[1] = sub_100035DEC;
  v64[2] = v62;
  LOBYTE(v61) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v147;
  sub_10002A894(v63, v147, &qword_10025AAA0, &unk_1001E0E40);
  v74 = v73 + *(v155 + 36);
  *v74 = v61;
  *(v74 + 8) = v66;
  *(v74 + 16) = v68;
  *(v74 + 24) = v70;
  *(v74 + 32) = v72;
  *(v74 + 40) = 0;
  v177 = v179;
  State.projectedValue.getter();
  v76 = *(&v170 + 1);
  v75 = v170;
  v77 = v171;
  swift_getKeyPath();
  v177 = __PAIR128__(v76, v75);
  v178 = v77;
  Binding.subscript.getter();

  v158 = v175;
  LODWORD(v167) = v176;

  static UnitPoint.top.getter();
  v78 = v149;
  *v149 = v79;
  v78[1] = v80;
  v81 = v150;
  (*(v150 + 104))(v78, enum case for PopoverAttachmentAnchor.point(_:), v156);
  v82 = swift_allocObject();
  v83 = *(v47 + 48);
  *(v82 + 48) = *(v47 + 32);
  *(v82 + 64) = v83;
  *(v82 + 80) = *(v47 + 64);
  v84 = *(v47 + 16);
  *(v82 + 16) = *v47;
  *(v82 + 32) = v84;
  sub_1000AE0F0(v47, &v170);
  Edge.Set.init(_:)();
  sub_10000341C(&qword_10025AA88, &unk_1001CE230);
  sub_10019A788();
  v85 = sub_100003E34(&qword_10025AAD0, &qword_1001CE250);
  v86 = sub_100003E34(&qword_10025AAD8, &qword_1001CE258);
  v87 = sub_10019A814();
  *&v170 = v86;
  *(&v170 + 1) = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v170 = v85;
  *(&v170 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v89 = v146;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v81 + 8))(v78, v156);
  sub_10000F500(v73, &qword_10025AA80, &qword_1001CE228);
  v60 = v160;
  v58 = v169;
  v59 = v161;
  (*(v160 + 32))(v169, v89, v161);
  v57 = 0;
  v43 = v159;
LABEL_10:
  v90 = 1;
  (*(v60 + 56))(v58, v57, 1, v59);
  v91 = type metadata accessor for FeedbackFeatureFlags();
  v172 = v91;
  v173 = sub_10019A648(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v92 = sub_10002DB6C(&v170);
  (*(*(v91 - 8) + 104))(v92, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v91);
  LOBYTE(v91) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v170);
  if (v91)
  {
    v170 = v179;
    State.wrappedValue.getter();
    v93 = v177;
    swift_getKeyPath();
    *&v170 = v93;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v94 = *(v93 + 80);
    v95 = *(v93 + 88);
    v96 = *(v93 + 96);
    v167 = *(v93 + 72);
    v161 = v94;
    v160 = v95;
    LODWORD(v158) = v96;
    sub_10002879C(v167, v94, v95, v96);

    v170 = v179;
    State.wrappedValue.getter();
    v97 = v177;
    swift_getKeyPath();
    *&v170 = v97;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v98 = *(v97 + 40);
    *&v157 = *(v97 + 32);
    *(&v157 + 1) = v98;

    v170 = v179;
    State.wrappedValue.getter();
    v99 = v177;
    swift_getKeyPath();
    *&v170 = v99;
    v159 = v43;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v100 = *(v99 + 56);
    *&v156 = *(v99 + 48);
    *(&v156 + 1) = v100;

    v170 = v179;
    State.wrappedValue.getter();
    v101 = v177;
    swift_getKeyPath();
    *&v170 = v101;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v102 = *(v101 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback + 8);
    v154 = *(v101 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);
    v155 = v102;

    v170 = v179;
    State.wrappedValue.getter();
    v103 = v177;
    swift_getKeyPath();
    *&v170 = v103;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v104 = *(v103 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
    if (v104)
    {
      v105 = v104;
      v106 = [v105 string];
      v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v149 = v107;
    }

    else
    {

      v150 = 0;
      v149 = 0xE000000000000000;
    }

    v170 = v179;
    State.wrappedValue.getter();
    v108 = v177;
    swift_getKeyPath();
    *&v170 = v108;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v109 = *(v108 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
    v110 = *(v108 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);

    v170 = v179;
    State.wrappedValue.getter();
    v111 = v177;
    swift_getKeyPath();
    *&v170 = v111;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v112 = *(v111 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);

    if (v112)
    {
      v170 = v179;
      State.wrappedValue.getter();
      v113 = v177;
      swift_getKeyPath();
      *&v170 = v113;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v114 = *(v113 + 112);
    }

    else
    {
      v114 = 1;
    }

    v170 = v179;
    State.wrappedValue.getter();
    v115 = v177;
    swift_getKeyPath();
    *&v170 = v115;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v117 = *(v115 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
    v116 = *(v115 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);

    v118 = v152;
    *(v152 + 25) = 0;
    v119 = *(v153 + 92);
    *(v118 + v119) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    v120 = v161;
    *(v118 + 128) = v167;
    *(v118 + 136) = v120;
    *(v118 + 144) = v160;
    *(v118 + 152) = v158;
    v121 = v157;
    *(v118 + 24) = v156;
    *(v118 + 8) = v121;
    v122 = v155;
    *(v118 + 40) = v154;
    *(v118 + 48) = v122;
    *(v118 + 56) = 0;
    *(v118 + 64) = 0;
    v123 = v149;
    *(v118 + 72) = v150;
    *(v118 + 80) = v123;
    *(v118 + 88) = v109;
    *(v118 + 96) = v110;
    *v118 = 0;
    *(v118 + 153) = v114;
    *(v118 + 154) = 0;
    *(v118 + 156) = 0;
    *&v177 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v124 = v170;
    *(v118 + 104) = _swiftEmptyArrayStorage;
    *(v118 + 112) = _swiftEmptyArrayStorage;
    *(v118 + 120) = _swiftEmptyArrayStorage;
    v125 = *(&v170 + 1);
    *(v118 + 208) = v124;
    *(v118 + 160) = 0u;
    *(v118 + 176) = 0u;
    *(v118 + 192) = 0;
    *(v118 + 216) = v125;
    *(v118 + 224) = v117;
    *(v118 + 232) = v116;
    LOBYTE(v170) = 0;
    sub_10019A648(&qword_10025BBA0, type metadata accessor for FeedbackView, &unk_1001D8444);
    sub_1000354E8();
    View.buttonStyle<A>(_:)();
    sub_10003553C(v118);
    v90 = 0;
  }

  v126 = sub_10000341C(&qword_10025BB50, &qword_1001E0EB0);
  v127 = v168;
  (*(*(v126 - 8) + 56))(v168, v90, 1, v126);
  v128 = v162;
  v129 = v163;
  sub_1000081F8(v162, v163, &qword_10025BB68, &qword_1001D09E0);
  v130 = v169;
  v131 = v164;
  sub_1000081F8(v169, v164, &qword_1002667B8, &qword_1001E0E58);
  v132 = v165;
  sub_1000081F8(v127, v165, &qword_10025BB58, &unk_1001D09D0);
  v133 = v166;
  sub_1000081F8(v129, v166, &qword_10025BB68, &qword_1001D09E0);
  v134 = sub_10000341C(&qword_1002667C8, &qword_1001E0EB8);
  sub_1000081F8(v131, v133 + *(v134 + 48), &qword_1002667B8, &qword_1001E0E58);
  sub_1000081F8(v132, v133 + *(v134 + 64), &qword_10025BB58, &unk_1001D09D0);
  sub_10000F500(v127, &qword_10025BB58, &unk_1001D09D0);
  sub_10000F500(v130, &qword_1002667B8, &qword_1001E0E58);
  sub_10000F500(v128, &qword_10025BB68, &qword_1001D09E0);
  sub_10000F500(v132, &qword_10025BB58, &unk_1001D09D0);
  sub_10000F500(v131, &qword_1002667B8, &qword_1001E0E58);
  return sub_10000F500(v129, &qword_10025BB68, &qword_1001D09E0);
}

uint64_t sub_10019132C()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001915A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100191640, v6, v5);
}