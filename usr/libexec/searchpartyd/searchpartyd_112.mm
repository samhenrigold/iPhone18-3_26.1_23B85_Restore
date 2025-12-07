uint64_t sub_100C618A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v29 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for CloudStorageStore.State(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v28 - v14);
  v16 = sub_1000BC4D4(&qword_1016B9550, &unk_1013E30A0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v28 - v18;
  v20 = *(v17 + 56);
  sub_100C62CE0(a1, &v28 - v18);
  sub_100C62CE0(a2, &v19[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100C62CE0(v19, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100031694(v15, v31);
      sub_100031694(&v19[v20], v30);
      sub_1000035D0(v31, v31[3]);
      dispatch thunk of CloudBacked.id.getter();
      sub_1000035D0(v30, v30[3]);
      dispatch thunk of CloudBacked.id.getter();
      v24 = static UUID.== infix(_:_:)();
      v26 = *(v29 + 8);
      v26(v7, v4);
      v26(v9, v4);
      sub_100007BAC(v30);
      sub_100007BAC(v31);
      goto LABEL_12;
    }

    sub_100007BAC(v15);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100C62CE0(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v29;
      v23 = *(v29 + 32);
      v23(v9, v13, v4);
      v23(v7, &v19[v20], v4);
      v24 = static UUID.== infix(_:_:)();
      v25 = *(v22 + 8);
      v25(v7, v4);
      v25(v9, v4);
LABEL_12:
      sub_100C62C80(v19, type metadata accessor for CloudStorageStore.State);
      return v24 & 1;
    }

    (*(v29 + 8))(v13, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_10000B3A8(v19, &qword_1016B9550, &unk_1013E30A0);
    v24 = 0;
    return v24 & 1;
  }

  sub_100C62C80(v19, type metadata accessor for CloudStorageStore.State);
  v24 = 1;
  return v24 & 1;
}

unint64_t sub_100C61C80()
{
  result = qword_1016B9530;
  if (!qword_1016B9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9530);
  }

  return result;
}

uint64_t sub_100C61CD4(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x3000000000000000) == 0)
  {
    return sub_100017D5C(result, a2);
  }

  return result;
}

uint64_t sub_100C61CE4(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x3000000000000000) == 0)
  {
    return sub_100016590(result, a2);
  }

  return result;
}

uint64_t sub_100C61CF4(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v2 = type metadata accessor for LocalFindablePreferences(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = v43 - v7;
  v8 = type metadata accessor for Row();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v43 - v13;
  v15 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  __chkstk_darwin(v15 - 8);
  v17 = v43 - v16;
  v18 = v54;
  result = Connection.prepare(_:)();
  if (!v18)
  {
    v54 = v14;
    v43[2] = 0;

    v53 = dispatch thunk of _AnySequenceBox._makeIterator()();
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v51 = *(v9 + 48);
    v52 = v9 + 48;
    if (v51(v17, 1, v8) == 1)
    {
      v20 = _swiftEmptyArrayStorage;
    }

    else
    {
      v21 = v17;
      v23 = *(v9 + 32);
      v22 = v9 + 32;
      v46 = (v22 - 16);
      v47 = v23;
      v45 = (v22 - 24);
      v20 = _swiftEmptyArrayStorage;
      v49 = v6;
      v50 = v22;
      v44 = v3;
      v48 = v21;
      do
      {
        v24 = v54;
        v47(v54, v21, v8);
        (*v46)(v12, v24, v8);
        if (qword_101694898 != -1)
        {
          swift_once();
        }

        v25 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
        sub_1000076D4(v25, qword_10177B140);
        type metadata accessor for UUID();
        Row.subscript.getter();
        if (qword_1016948F8 != -1)
        {
          swift_once();
        }

        v26 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
        sub_1000076D4(v26, qword_10177B260);
        Row.subscript.getter();
        if (v55 == 2)
        {
          v27 = 2;
        }

        else
        {
          v27 = v55 == 1;
        }

        v6[*(v2 + 20)] = v27;
        if (qword_101694900 != -1)
        {
          swift_once();
        }

        v28 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
        sub_1000076D4(v28, qword_10177B278);
        Row.subscript.getter();
        v29 = v56;
        if (v56 >> 60 == 15)
        {
          v30 = *v45;
          (*v45)(v12, v8);
          v31 = 0;
          v32 = 0xF000000000000000;
        }

        else
        {
          v33 = v2;
          v34 = v55;
          sub_1000E0A3C();
          if (DataProtocol.isNull.getter())
          {
            v30 = *v45;
            (*v45)(v12, v8);
            sub_100006654(v34, v29);
            v31 = 0;
            v32 = 0xF000000000000000;
          }

          else
          {
            v31 = Data.trimmed.getter();
            v32 = v35;
            sub_100006654(v34, v29);
            v30 = *v45;
            (*v45)(v12, v8);
          }

          v2 = v33;
          v3 = v44;
        }

        v36 = v49;
        v37 = &v49[*(v2 + 24)];
        *v37 = v31;
        v37[1] = v32;
        v6 = v36;
        sub_100C63080(v36, v57, type metadata accessor for LocalFindablePreferences);
        v30(v54, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100A5DF1C(0, v20[2] + 1, 1, v20);
        }

        v39 = v20[2];
        v38 = v20[3];
        v40 = v57;
        if (v39 >= v38 >> 1)
        {
          v42 = v57;
          v20 = sub_100A5DF1C((v38 > 1), v39 + 1, 1, v20);
          v40 = v42;
        }

        v20[2] = v39 + 1;
        sub_100C63080(v40, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39, type metadata accessor for LocalFindablePreferences);
        v41 = v48;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v21 = v41;
      }

      while (v51(v41, 1, v8) != 1);
    }

    sub_1000BC4D4(&qword_1016B9570, &qword_1013E3118);
    result = swift_allocObject();
    *(result + 16) = v20;
  }

  return result;
}

uint64_t sub_100C6234C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_1000BC4D4(&qword_1016B9560, &unk_1013E30C0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for CloudKitCoordinator.Deletion();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C62458, v2, 0);
}

uint64_t sub_100C62458()
{
  v1 = CloudKitChangeSet.recordIDsToDelete.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v42 = v0[5];
    sub_101125704(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v9 = *(v1 + 36);
    v43 = v3;
    v41 = v0;
    v36 = v1 + 72;
    v37 = v2;
    v38 = v9;
    v39 = v1 + 64;
    v40 = v1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v12 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (v9 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v44 = v8;
      v13 = *(v42 + 48);
      v45 = v4;
      v15 = v0[6];
      v14 = v0[7];
      v16 = *(v1 + 56);
      v17 = *(*(v1 + 48) + 8 * v7);
      v18 = type metadata accessor for CloudKitChangeSet.TombstoneInfo();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v14 + v13, v16 + *(v19 + 72) * v7, v18);
      *v15 = v17;
      (*(v19 + 32))(&v15[*(v42 + 48)], v14 + v13, v18);
      v20 = v17;
      CloudKitChangeSet.TombstoneInfo.recordType.getter();
      v21 = v20;
      v4 = v45;
      CloudKitCoordinator.Deletion.init(recordType:recordID:)();
      sub_10000B3A8(v15, &qword_1016B9560, &unk_1013E30C0);
      v23 = v45[2];
      v22 = v45[3];
      if (v23 >= v22 >> 1)
      {
        sub_101125704((v22 > 1), v23 + 1, 1);
        v4 = v45;
      }

      v0 = v41;
      v24 = v41[10];
      v25 = v41[8];
      v4[2] = v23 + 1;
      result = (*(v43 + 32))(v4 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v23, v24, v25);
      v1 = v40;
      v10 = 1 << *(v40 + 32);
      if (v7 >= v10)
      {
        goto LABEL_28;
      }

      v5 = v39;
      v26 = *(v39 + 8 * v12);
      if ((v26 & (1 << v7)) == 0)
      {
        goto LABEL_29;
      }

      v9 = v38;
      if (v38 != *(v40 + 36))
      {
        goto LABEL_30;
      }

      v27 = v26 & (-2 << (v7 & 0x3F));
      if (v27)
      {
        v10 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v11 = v37;
      }

      else
      {
        v28 = v12 << 6;
        v11 = v37;
        v29 = (v36 + 8 * v12);
        v30 = v12 + 1;
        while (v30 < (v10 + 63) >> 6)
        {
          v32 = *v29++;
          v31 = v32;
          v28 += 64;
          ++v30;
          if (v32)
          {
            result = sub_1000BB408(v7, v38, 0);
            v10 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1000BB408(v7, v38, 0);
      }

LABEL_4:
      v8 = v44 + 1;
      v7 = v10;
      if (v44 + 1 == v11)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
LABEL_22:
    v0[11] = v4;
    v33 = sub_100C57874(v0[3]);
    v0[12] = v33;
    v34 = v33;
    v35 = swift_task_alloc();
    v0[13] = v35;
    *v35 = v0;
    v35[1] = sub_100C628E0;

    return sub_100C5D1D4(v4, v34);
  }

  return result;
}

uint64_t sub_100C628E0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100C62A0C;
  }

  else
  {
    v4 = sub_100C630F8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C62A0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C62AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100C5FBE0(a1, v4, v5, v6, v7);
}

uint64_t sub_100C62B88(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C5EFEC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100C62C80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100C62CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudStorageStore.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C62D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudStorageStore.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C62DA8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100C5B5F8(a1, v4, v5);
}

uint64_t sub_100C62E1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100C5BBF4(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100C62F88(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100C5B7D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100C63080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C630FC(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v34 = &v29 - v4;
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v32 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v35 = v13;
  v18 = *(v13 + 16);
  v33 = a1;
  v31 = v18;
  v18(&v29 - v16, a1, v12);
  if (*(v1 + 57) == 1)
  {
    v29 = v12;
    v30 = v1;
    static SystemInfo.lockState.getter();
    (*(v6 + 104))(v9, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v19 = *(v6 + 8);
    v19(v9, v5);
    v19(v11, v5);
    if (v37 == v36)
    {
      v20 = v35;
      v21 = v17;
      v22 = v29;
      (*(v35 + 8))(v21, v29);
      v23 = type metadata accessor for TaskPriority();
      v24 = v34;
      (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
      v25 = v32;
      v31(v32, v33, v22);
      v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      (*(v20 + 32))(v27 + v26, v25, v22);
      *(v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

      sub_1008CE048(0, 0, v24, &unk_1013E3348, v27);

      return sub_10000B3A8(v24, &qword_101698C00, &qword_10138B570);
    }

    else
    {
      sub_100C672C0(v30, v17, sub_100C640C8);
      return (*(v35 + 8))(v17, v29);
    }
  }

  else
  {
    sub_100C640C8();
    return (*(v35 + 8))(v17, v12);
  }
}

uint64_t sub_100C63640(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v34 = &v29 - v4;
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v32 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v35 = v13;
  v18 = *(v13 + 16);
  v33 = a1;
  v31 = v18;
  v18(&v29 - v16, a1, v12);
  if (*(v1 + 53) == 1)
  {
    v29 = v12;
    v30 = v1;
    static SystemInfo.lockState.getter();
    (*(v6 + 104))(v9, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v19 = *(v6 + 8);
    v19(v9, v5);
    v19(v11, v5);
    if (v37 == v36)
    {
      v20 = v35;
      v21 = v17;
      v22 = v29;
      (*(v35 + 8))(v21, v29);
      v23 = type metadata accessor for TaskPriority();
      v24 = v34;
      (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
      v25 = v32;
      v31(v32, v33, v22);
      v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      (*(v20 + 32))(v27 + v26, v25, v22);
      *(v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

      sub_1008CE048(0, 0, v24, &unk_1013E3328, v27);

      return sub_10000B3A8(v24, &qword_101698C00, &qword_10138B570);
    }

    else
    {
      sub_100C672C0(v30, v17, sub_100C64BD0);
      return (*(v35 + 8))(v17, v29);
    }
  }

  else
  {
    sub_100C64BD0();
    return (*(v35 + 8))(v17, v12);
  }
}

uint64_t sub_100C63B84(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v34 = &v29 - v4;
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v32 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v35 = v13;
  v18 = *(v13 + 16);
  v33 = a1;
  v31 = v18;
  v18(&v29 - v16, a1, v12);
  if (*(v1 + 49) == 1)
  {
    v29 = v12;
    v30 = v1;
    static SystemInfo.lockState.getter();
    (*(v6 + 104))(v9, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v19 = *(v6 + 8);
    v19(v9, v5);
    v19(v11, v5);
    if (v37 == v36)
    {
      v20 = v35;
      v21 = v17;
      v22 = v29;
      (*(v35 + 8))(v21, v29);
      v23 = type metadata accessor for TaskPriority();
      v24 = v34;
      (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
      v25 = v32;
      v31(v32, v33, v22);
      v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      (*(v20 + 32))(v27 + v26, v25, v22);
      *(v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

      sub_1008CE048(0, 0, v24, &unk_1013E3308, v27);

      return sub_10000B3A8(v24, &qword_101698C00, &qword_10138B570);
    }

    else
    {
      sub_100C672C0(v30, v17, sub_100C656D8);
      return (*(v35 + 8))(v17, v29);
    }
  }

  else
  {
    sub_100C656D8();
    return (*(v35 + 8))(v17, v12);
  }
}

uint64_t sub_100C640C8()
{
  v2 = v0;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v56 - v8;
  if (*(v0 + 57) == 1)
  {
    static SystemInfo.lockState.getter();
    (*(v4 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v10 = *(v4 + 8);
    v10(v7, v3);
    v10(v9, v3);
    if (v63 == v65)
    {
      sub_10020223C();
      swift_allocError();
      v12 = 4;
LABEL_6:
      *v11 = v12;
      *(v11 + 4) = 1;
      return swift_willThrow();
    }
  }

  v13 = sub_100C70C10(&qword_101699D28, 255, type metadata accessor for ObservationDatabase, &unk_10140B820);
  v14 = *(v13 + 16);
  v15 = type metadata accessor for ObservationDatabase(0);
  if (v14(v15, v13))
  {

    sub_10020223C();
    swift_allocError();
    v12 = 3;
    goto LABEL_6;
  }

  result = (*(v13 + 112))(v15, v13);
  if (!v1)
  {
    v17 = v14(v15, v13);
    if (!v17)
    {
      sub_10020223C();
      swift_allocError();
      v12 = 2;
      goto LABEL_6;
    }

    v18 = *(v17 + 24);

    v19._countAndFlagsBits = 0xD000000000000019;
    v19._object = 0x8000000101363F90;
    Connection.execute(_:)(v19);
    if (!v20)
    {
      sub_100C66AC8();
      Connection.handle.getter();
      _sqlite3_maintain_load_factor();
      v21 = Connection.userVersion.getter();
      v22 = v21;
      if (v21 <= 20)
      {
        if (v21 == 20)
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
        }

        else
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          v58 = 0x8000000101363FB0;
          *&v40 = 136446722;
          v56 = v40;
          v41 = v22;
          v57 = v22;
          do
          {
            if (v41 < v22)
            {
              __break(1u);
              goto LABEL_39;
            }

            LODWORD(v62) = v41 + 1;
            v42 = sub_1000076D4(v60, qword_10177B590);

            v59 = v42;
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v61 = v41;
              v47 = v46;
              v63 = v46;
              *v45 = v56;
              v48 = sub_100C661E0();
              v50 = v49;

              v51 = sub_1000136BC(v48, v50, &v63);

              *(v45 + 4) = v51;
              *(v45 + 12) = 1024;
              LODWORD(v51) = v62;
              *(v45 + 14) = v61;
              *(v45 + 18) = 1024;
              *(v45 + 20) = v51;
              _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s migrating schema %d -> %d", v45, 0x18u);
              sub_100007BAC(v47);
              v41 = v61;

              v22 = v57;

              v52 = v51;
            }

            else
            {

              v52 = v62;
            }

            v53 = v52;
            sub_1011BBFD4(v41, v52, v18);
            v63 = 0;
            v64 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);

            v63 = 0xD000000000000016;
            v64 = v58;
            LODWORD(v65) = v53;
            v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v54);

            Connection.run(_:_:)();

            v41 = v53;
          }

          while (v53 != 20);
          sub_100C7014C(type metadata accessor for ObservationDatabase, sub_1011BBDC8);
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v31 = v60;
        }

        sub_1000076D4(v31, qword_10177B590);
        swift_retain_n();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v63 = v35;
          *v34 = 136446466;
          v36 = sub_100C661E0();
          v38 = sub_1000136BC(v36, v37, &v63);

          *(v34 + 4) = v38;
          *(v34 + 12) = 1024;

          *(v34 + 14) = 20;

          _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s is available. [schema version %d]", v34, 0x12u);
          sub_100007BAC(v35);
        }

        else
        {
        }

        v55 = *(v2 + 24);
        os_unfair_lock_lock((v55 + 20));
        *(v55 + 16) = 1;
        os_unfair_lock_unlock((v55 + 20));
        LOBYTE(v63) = 1;
        AsyncStreamProvider.yield(value:transaction:)();
      }

      else
      {
        if (qword_101694A38 != -1)
        {
LABEL_39:
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000076D4(v23, qword_10177B590);
        swift_retain_n();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v63 = v27;
          *v26 = 136446722;
          v28 = sub_100C661E0();
          v30 = sub_1000136BC(v28, v29, &v63);

          *(v26 + 4) = v30;
          *(v26 + 12) = 1024;
          *(v26 + 14) = v22;
          *(v26 + 18) = 1024;

          *(v26 + 20) = 20;

          _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Schema too new! (%d) -- expected <= %d", v26, 0x18u);
          sub_100007BAC(v27);
        }

        else
        {
        }

        sub_10020223C();
        swift_allocError();
        *v39 = v22;
        *(v39 + 4) = 0;
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_100C64BD0()
{
  v2 = v0;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v56 - v8;
  if (*(v0 + 53) == 1)
  {
    static SystemInfo.lockState.getter();
    (*(v4 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v10 = *(v4 + 8);
    v10(v7, v3);
    v10(v9, v3);
    if (v63 == v65)
    {
      sub_10020223C();
      swift_allocError();
      v12 = 4;
LABEL_6:
      *v11 = v12;
      *(v11 + 4) = 1;
      return swift_willThrow();
    }
  }

  v13 = sub_100C70C10(&qword_101699E80, 255, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0);
  v14 = *(v13 + 16);
  v15 = type metadata accessor for ItemSharingKeyDatabase(0);
  if (v14(v15, v13))
  {

    sub_10020223C();
    swift_allocError();
    v12 = 3;
    goto LABEL_6;
  }

  result = (*(v13 + 112))(v15, v13);
  if (!v1)
  {
    v17 = v14(v15, v13);
    if (!v17)
    {
      sub_10020223C();
      swift_allocError();
      v12 = 2;
      goto LABEL_6;
    }

    v18 = *(v17 + 24);

    v19._countAndFlagsBits = 0xD000000000000019;
    v19._object = 0x8000000101363F90;
    Connection.execute(_:)(v19);
    if (!v20)
    {
      sub_100C66D70();
      Connection.handle.getter();
      _sqlite3_maintain_load_factor();
      v21 = Connection.userVersion.getter();
      v22 = v21;
      if (v21 <= 13)
      {
        if (v21 == 13)
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
        }

        else
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          v58 = 0x8000000101363FB0;
          *&v40 = 136446722;
          v56 = v40;
          v41 = v22;
          v57 = v22;
          do
          {
            if (v41 < v22)
            {
              __break(1u);
              goto LABEL_39;
            }

            LODWORD(v62) = v41 + 1;
            v42 = sub_1000076D4(v60, qword_10177B590);

            v59 = v42;
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v61 = v41;
              v47 = v46;
              v63 = v46;
              *v45 = v56;
              v48 = sub_100C664D8();
              v50 = v49;

              v51 = sub_1000136BC(v48, v50, &v63);

              *(v45 + 4) = v51;
              *(v45 + 12) = 1024;
              LODWORD(v51) = v62;
              *(v45 + 14) = v61;
              *(v45 + 18) = 1024;
              *(v45 + 20) = v51;
              _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s migrating schema %d -> %d", v45, 0x18u);
              sub_100007BAC(v47);
              v41 = v61;

              v22 = v57;

              v52 = v51;
            }

            else
            {

              v52 = v62;
            }

            v53 = v52;
            sub_10031D230(v41, v52, v18);
            v63 = 0;
            v64 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);

            v63 = 0xD000000000000016;
            v64 = v58;
            LODWORD(v65) = v53;
            v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v54);

            Connection.run(_:_:)();

            v41 = v53;
          }

          while (v53 != 13);
          sub_100C7014C(type metadata accessor for ItemSharingKeyDatabase, sub_10031CF3C);
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v31 = v60;
        }

        sub_1000076D4(v31, qword_10177B590);
        swift_retain_n();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v63 = v35;
          *v34 = 136446466;
          v36 = sub_100C664D8();
          v38 = sub_1000136BC(v36, v37, &v63);

          *(v34 + 4) = v38;
          *(v34 + 12) = 1024;

          *(v34 + 14) = 13;

          _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s is available. [schema version %d]", v34, 0x12u);
          sub_100007BAC(v35);
        }

        else
        {
        }

        v55 = *(v2 + 32);
        os_unfair_lock_lock((v55 + 20));
        *(v55 + 16) = 1;
        os_unfair_lock_unlock((v55 + 20));
        LOBYTE(v63) = 1;
        AsyncStreamProvider.yield(value:transaction:)();
      }

      else
      {
        if (qword_101694A38 != -1)
        {
LABEL_39:
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000076D4(v23, qword_10177B590);
        swift_retain_n();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v63 = v27;
          *v26 = 136446722;
          v28 = sub_100C664D8();
          v30 = sub_1000136BC(v28, v29, &v63);

          *(v26 + 4) = v30;
          *(v26 + 12) = 1024;
          *(v26 + 14) = v22;
          *(v26 + 18) = 1024;

          *(v26 + 20) = 13;

          _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Schema too new! (%d) -- expected <= %d", v26, 0x18u);
          sub_100007BAC(v27);
        }

        else
        {
        }

        sub_10020223C();
        swift_allocError();
        *v39 = v22;
        *(v39 + 4) = 0;
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_100C656D8()
{
  v2 = v0;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v56 - v8;
  if (*(v0 + 49) == 1)
  {
    static SystemInfo.lockState.getter();
    (*(v4 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v10 = *(v4 + 8);
    v10(v7, v3);
    v10(v9, v3);
    if (v63 == v65)
    {
      sub_10020223C();
      swift_allocError();
      v12 = 4;
LABEL_6:
      *v11 = v12;
      *(v11 + 4) = 1;
      return swift_willThrow();
    }
  }

  v13 = sub_100C70C10(&qword_101699E78, 255, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF478);
  v14 = *(v13 + 16);
  v15 = type metadata accessor for StandaloneBeaconDatabase(0);
  if (v14(v15, v13))
  {

    sub_10020223C();
    swift_allocError();
    v12 = 3;
    goto LABEL_6;
  }

  result = (*(v13 + 112))(v15, v13);
  if (!v1)
  {
    v17 = v14(v15, v13);
    if (!v17)
    {
      sub_10020223C();
      swift_allocError();
      v12 = 2;
      goto LABEL_6;
    }

    v18 = *(v17 + 24);

    v19._countAndFlagsBits = 0xD000000000000019;
    v19._object = 0x8000000101363F90;
    Connection.execute(_:)(v19);
    if (!v20)
    {
      sub_100C67018();
      Connection.handle.getter();
      _sqlite3_maintain_load_factor();
      v21 = Connection.userVersion.getter();
      v22 = v21;
      if (v21 <= 1)
      {
        if (v21 == 1)
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
        }

        else
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          v58 = 0x8000000101363FB0;
          *&v40 = 136446722;
          v56 = v40;
          v41 = v22;
          v57 = v22;
          do
          {
            if (v41 < v22)
            {
              __break(1u);
              goto LABEL_39;
            }

            LODWORD(v62) = v41 + 1;
            v42 = sub_1000076D4(v60, qword_10177B590);

            v59 = v42;
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v61 = v41;
              v47 = v46;
              v63 = v46;
              *v45 = v56;
              v48 = sub_100C667D0();
              v50 = v49;

              v51 = sub_1000136BC(v48, v50, &v63);

              *(v45 + 4) = v51;
              *(v45 + 12) = 1024;
              LODWORD(v51) = v62;
              *(v45 + 14) = v61;
              *(v45 + 18) = 1024;
              *(v45 + 20) = v51;
              _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s migrating schema %d -> %d", v45, 0x18u);
              sub_100007BAC(v47);
              v41 = v61;

              v22 = v57;

              v52 = v51;
            }

            else
            {

              v52 = v62;
            }

            v53 = v52;
            sub_10084E854(v41, v52, v18);
            v63 = 0;
            v64 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);

            v63 = 0xD000000000000016;
            v64 = v58;
            LODWORD(v65) = v53;
            v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v54);

            Connection.run(_:_:)();

            v41 = v53;
          }

          while (v53 != 1);
          sub_100C7014C(type metadata accessor for StandaloneBeaconDatabase, sub_10084E560);
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v31 = v60;
        }

        sub_1000076D4(v31, qword_10177B590);
        swift_retain_n();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v63 = v35;
          *v34 = 136446466;
          v36 = sub_100C667D0();
          v38 = sub_1000136BC(v36, v37, &v63);

          *(v34 + 4) = v38;
          *(v34 + 12) = 1024;

          *(v34 + 14) = 1;

          _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s is available. [schema version %d]", v34, 0x12u);
          sub_100007BAC(v35);
        }

        else
        {
        }

        v55 = *(v2 + 16);
        os_unfair_lock_lock((v55 + 20));
        *(v55 + 16) = 1;
        os_unfair_lock_unlock((v55 + 20));
        LOBYTE(v63) = 1;
        AsyncStreamProvider.yield(value:transaction:)();
      }

      else
      {
        if (qword_101694A38 != -1)
        {
LABEL_39:
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000076D4(v23, qword_10177B590);
        swift_retain_n();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v63 = v27;
          *v26 = 136446722;
          v28 = sub_100C667D0();
          v30 = sub_1000136BC(v28, v29, &v63);

          *(v26 + 4) = v30;
          *(v26 + 12) = 1024;
          *(v26 + 14) = v22;
          *(v26 + 18) = 1024;

          *(v26 + 20) = 1;

          _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Schema too new! (%d) -- expected <= %d", v26, 0x18u);
          sub_100007BAC(v27);
        }

        else
        {
        }

        sub_10020223C();
        swift_allocError();
        *v39 = v22;
        *(v39 + 4) = 0;
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_100C661E0()
{
  v0 = *(sub_100C70C10(&qword_101699D28, 255, type metadata accessor for ObservationDatabase, &unk_10140B820) + 16);
  type metadata accessor for ObservationDatabase(0);
  if (v0())
  {
    _StringGuts.grow(_:)(22);

    sub_100C70C10(&qword_1016B97C8, 255, type metadata accessor for ObservationDatabase, &unk_10140B7F8);
    v1._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v1);

    v2._countAndFlagsBits = 8250;
    v2._object = 0xE200000000000000;
    String.append(_:)(v2);
    v3._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 0x206574694C515320;
    v4._object = 0xE900000000000076;
    String.append(_:)(v4);
    v5._countAndFlagsBits = 0x302E31352E33;
    v5._object = 0xE600000000000000;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7._countAndFlagsBits = Connection.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 62;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  else
  {
    _StringGuts.grow(_:)(34);

    sub_100C70C10(&qword_1016B97C8, 255, type metadata accessor for ObservationDatabase, &unk_10140B7F8);
    v9._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 8250;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x206574694C515320;
    v12._object = 0xE900000000000076;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 0x302E31352E33;
    v13._object = 0xE600000000000000;
    String.append(_:)(v13);
    v14._object = 0x8000000101363FD0;
    v14._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v14);
  }

  return 60;
}

uint64_t sub_100C664D8()
{
  v0 = *(sub_100C70C10(&qword_101699E80, 255, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0) + 16);
  type metadata accessor for ItemSharingKeyDatabase(0);
  if (v0())
  {
    _StringGuts.grow(_:)(22);

    sub_100C70C10(&qword_10169DD88, 255, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0B8);
    v1._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v1);

    v2._countAndFlagsBits = 8250;
    v2._object = 0xE200000000000000;
    String.append(_:)(v2);
    v3._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 0x206574694C515320;
    v4._object = 0xE900000000000076;
    String.append(_:)(v4);
    v5._countAndFlagsBits = 0x302E31352E33;
    v5._object = 0xE600000000000000;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7._countAndFlagsBits = Connection.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 62;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  else
  {
    _StringGuts.grow(_:)(34);

    sub_100C70C10(&qword_10169DD88, 255, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0B8);
    v9._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 8250;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x206574694C515320;
    v12._object = 0xE900000000000076;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 0x302E31352E33;
    v13._object = 0xE600000000000000;
    String.append(_:)(v13);
    v14._object = 0x8000000101363FD0;
    v14._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v14);
  }

  return 60;
}

uint64_t sub_100C667D0()
{
  v0 = *(sub_100C70C10(&qword_101699E78, 255, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF478) + 16);
  type metadata accessor for StandaloneBeaconDatabase(0);
  if (v0())
  {
    _StringGuts.grow(_:)(22);

    sub_100C70C10(&qword_1016AB590, 255, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF450);
    v1._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v1);

    v2._countAndFlagsBits = 8250;
    v2._object = 0xE200000000000000;
    String.append(_:)(v2);
    v3._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 0x206574694C515320;
    v4._object = 0xE900000000000076;
    String.append(_:)(v4);
    v5._countAndFlagsBits = 0x302E31352E33;
    v5._object = 0xE600000000000000;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7._countAndFlagsBits = Connection.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 62;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  else
  {
    _StringGuts.grow(_:)(34);

    sub_100C70C10(&qword_1016AB590, 255, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF450);
    v9._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 8250;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x206574694C515320;
    v12._object = 0xE900000000000076;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 0x302E31352E33;
    v13._object = 0xE600000000000000;
    String.append(_:)(v13);
    v14._object = 0x8000000101363FD0;
    v14._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v14);
  }

  return 60;
}

uint64_t sub_100C66AC8()
{
  v1 = type metadata accessor for SystemInfo.DeviceLockState();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  if (*(v0 + 57) == 1 && (static SystemInfo.lockState.getter(), (*(v2 + 104))(v5, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v1), sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v8 = *(v2 + 8), v8(v5, v1), v8(v7, v1), v16[1] == v16[0]))
  {
    v9 = 4;
  }

  else
  {
    v10 = sub_100C70C10(&qword_101699D28, 255, type metadata accessor for ObservationDatabase, &unk_10140B820);
    v11 = *(v10 + 16);
    v12 = type metadata accessor for ObservationDatabase(0);
    if (v11(v12, v10))
    {

      v13._object = 0x8000000101364020;
      v13._countAndFlagsBits = 0xD000000000000010;
      Connection.execute(_:)(v13);
    }

    v9 = 2;
  }

  sub_10020223C();
  swift_allocError();
  *v15 = v9;
  *(v15 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_100C66D70()
{
  v1 = type metadata accessor for SystemInfo.DeviceLockState();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  if (*(v0 + 53) == 1 && (static SystemInfo.lockState.getter(), (*(v2 + 104))(v5, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v1), sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v8 = *(v2 + 8), v8(v5, v1), v8(v7, v1), v16[1] == v16[0]))
  {
    v9 = 4;
  }

  else
  {
    v10 = sub_100C70C10(&qword_101699E80, 255, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0);
    v11 = *(v10 + 16);
    v12 = type metadata accessor for ItemSharingKeyDatabase(0);
    if (v11(v12, v10))
    {

      v13._object = 0x8000000101364020;
      v13._countAndFlagsBits = 0xD000000000000010;
      Connection.execute(_:)(v13);
    }

    v9 = 2;
  }

  sub_10020223C();
  swift_allocError();
  *v15 = v9;
  *(v15 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_100C67018()
{
  v1 = type metadata accessor for SystemInfo.DeviceLockState();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  if (*(v0 + 49) == 1 && (static SystemInfo.lockState.getter(), (*(v2 + 104))(v5, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v1), sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v8 = *(v2 + 8), v8(v5, v1), v8(v7, v1), v16[1] == v16[0]))
  {
    v9 = 4;
  }

  else
  {
    v10 = sub_100C70C10(&qword_101699E78, 255, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF478);
    v11 = *(v10 + 16);
    v12 = type metadata accessor for StandaloneBeaconDatabase(0);
    if (v11(v12, v10))
    {

      v13._object = 0x8000000101364020;
      v13._countAndFlagsBits = 0xD000000000000010;
      Connection.execute(_:)(v13);
    }

    v9 = 2;
  }

  sub_10020223C();
  swift_allocError();
  *v15 = v9;
  *(v15 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_100C67430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_100C67528;

  return daemon.getter();
}

uint64_t sub_100C67528(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100C70C10(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_100C6770C;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_100C6770C(uint64_t a1)
{
  *(*v2 + 96) = a1;

  if (v1)
  {

    v3 = sub_100C67A44;
  }

  else
  {

    v3 = sub_100C6785C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C6785C()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    type metadata accessor for ObservationDatabase(0);
    sub_100C70C10(&qword_1016B97C8, 255, type metadata accessor for ObservationDatabase, &unk_10140B7F8);
    v6 = CustomStringConvertible.typeDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Waiting for first unlock to open encrypted SQLite database for %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v11 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_100C67B5C;

  return v11();
}

uint64_t sub_100C67A44()
{
  if (qword_101694A38 != -1)
  {
    swift_once();
  }

  sub_1000076D4(*(v0 + 40), qword_10177B590);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get FirstUnlockService", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100C67B5C()
{

  return _swift_task_switch(sub_100C67C58, 0, 0);
}

uint64_t sub_100C67C58()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  type metadata accessor for Transaction();
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);

  static Transaction.asyncTask(name:block:)();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C67DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_100C67E98;

  return daemon.getter();
}

uint64_t sub_100C67E98(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100C70C10(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_100C6807C;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_100C6807C(uint64_t a1)
{
  *(*v2 + 96) = a1;

  if (v1)
  {

    v3 = sub_100C70DA0;
  }

  else
  {

    v3 = sub_100C681CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C681CC()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    type metadata accessor for ItemSharingKeyDatabase(0);
    sub_100C70C10(&qword_10169DD88, 255, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0B8);
    v6 = CustomStringConvertible.typeDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Waiting for first unlock to open encrypted SQLite database for %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v11 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_100C683B4;

  return v11();
}

uint64_t sub_100C683B4()
{

  return _swift_task_switch(sub_100C684B0, 0, 0);
}

uint64_t sub_100C684B0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  type metadata accessor for Transaction();
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);

  static Transaction.asyncTask(name:block:)();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C685F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_100C686F0;

  return daemon.getter();
}

uint64_t sub_100C686F0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100C70C10(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_100C688D4;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_100C688D4(uint64_t a1)
{
  *(*v2 + 96) = a1;

  if (v1)
  {

    v3 = sub_100C70DA0;
  }

  else
  {

    v3 = sub_100C68A24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C68A24()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    type metadata accessor for StandaloneBeaconDatabase(0);
    sub_100C70C10(&qword_1016AB590, 255, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF450);
    v6 = CustomStringConvertible.typeDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Waiting for first unlock to open encrypted SQLite database for %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v11 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_100C68C0C;

  return v11();
}

uint64_t sub_100C68C0C()
{

  return _swift_task_switch(sub_100C68D08, 0, 0);
}

uint64_t sub_100C68D08()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  type metadata accessor for Transaction();
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);

  static Transaction.asyncTask(name:block:)();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C68E50(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100C68E70, 0, 0);
}

uint64_t sub_100C68E70()
{
  v12 = v0;
  sub_100C640C8();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    type metadata accessor for ObservationDatabase(0);
    sub_100C70C10(&qword_1016B97C8, 255, type metadata accessor for ObservationDatabase, &unk_10140B7F8);
    v6 = CustomStringConvertible.typeDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "SQLite database for %s opened successfully after device unlock.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C69108(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100C69128, 0, 0);
}

uint64_t sub_100C69128()
{
  v12 = v0;
  sub_100C64BD0();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    type metadata accessor for ItemSharingKeyDatabase(0);
    sub_100C70C10(&qword_10169DD88, 255, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0B8);
    v6 = CustomStringConvertible.typeDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "SQLite database for %s opened successfully after device unlock.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C693C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100C693E0, 0, 0);
}

uint64_t sub_100C693E0()
{
  v12 = v0;
  sub_100C656D8();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    type metadata accessor for StandaloneBeaconDatabase(0);
    sub_100C70C10(&qword_1016AB590, 255, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF450);
    v6 = CustomStringConvertible.typeDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "SQLite database for %s opened successfully after device unlock.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C69678()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BED8);
  v1 = sub_1000076D4(v0, qword_10177BED8);
  if (qword_101694DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BEF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C69740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for StandaloneBeaconService.BeaconStreamChange(0);
  v5[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_100C69804;

  return sub_100C6B34C();
}

uint64_t sub_100C69804()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return _swift_task_switch(sub_100C69954, v6, 0);
  }
}

uint64_t sub_100C69954()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_100C70AD8(v0[3], v1, type metadata accessor for StandaloneBeacon);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Transaction();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  static Transaction.named<A>(_:with:)();

  sub_100C70B40(v1, type metadata accessor for StandaloneBeaconService.BeaconStreamChange);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C69A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for StandaloneBeaconService.BeaconStreamChange(0);
  v5[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_100C69B3C;

  return sub_100C6B34C();
}

uint64_t sub_100C69B3C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return _swift_task_switch(sub_100C69C8C, v6, 0);
  }
}

uint64_t sub_100C69C8C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(v1, v2, v4);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Transaction();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  static Transaction.named<A>(_:with:)();

  sub_100C70B40(v1, type metadata accessor for StandaloneBeaconService.BeaconStreamChange);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C69DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StandaloneBeaconService.BeaconStreamChange(0);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016B97B8, &qword_1013E32E8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v13 = sub_1000BC4D4(&qword_1016B97C0, &qword_1013E32F0);
  __chkstk_darwin(v13);
  v16 = v26 - v15;
  result = *(a2 + 152);
  v18 = *(result + 16);
  if (v18)
  {
    v26[2] = v3;
    v27 = v9;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = result + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v28 = *(v19 + 56);
    v29 = v20;
    v30 = v19;
    v22 = v10;
    v23 = (v19 - 8);
    v24 = a3;
    v25 = (v22 + 8);
    v26[1] = result;

    do
    {
      v29(v16, v21, v13);
      sub_100C70AD8(v24, v8, type metadata accessor for StandaloneBeaconService.BeaconStreamChange);
      AsyncStream.Continuation.yield(_:)();
      (*v23)(v16, v13);
      (*v25)(v12, v27);
      v21 += v28;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_100C6A04C()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return _swift_task_switch(sub_100C6A094, v0, 0);
}

uint64_t sub_100C6A094()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100C6A150;

  return daemon.getter();
}

uint64_t sub_100C6A150(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[8] = a1;

  v3 = swift_task_alloc();
  v2[9] = v3;
  v4 = type metadata accessor for Daemon();
  v2[10] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100C70C10(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100C6A338;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100C6A338(uint64_t a1)
{
  v4 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {

    v5 = v4[4];
    v6 = sub_100C6AB10;
  }

  else
  {
    v6 = sub_100C6A47C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C6A47C()
{
  v1 = *(v0 + 96);
  *(v0 + 104) = sub_100045EDC();
  if (v1)
  {

    sub_100C70C10(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_100C6AA9C;
  }

  else
  {
    sub_100C70C10(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_100C6A5AC;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_100C6A5AC()
{
  v1 = *(v0 + 32);

  return _swift_task_switch(sub_100C6A624, v1, 0);
}

uint64_t sub_100C6A624()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = swift_allocObject();
  v0[14] = v3;
  v3[2] = v1;
  v3[3] = sub_100C70C08;
  v3[4] = v2;

  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100C6A730;

  return unsafeBlocking<A>(_:)(v4, sub_100C70C58, v3, &type metadata for () + 1);
}

uint64_t sub_100C6A730()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100C6A85C, v1, 0);
}

uint64_t sub_100C6A85C()
{
  v1 = v0[6];
  v9 = v0[13];
  v10 = v0[5];
  v2 = v0[4];
  v0[2] = sub_100A96C40();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100C70C08;
  *(v3 + 24) = v1;

  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950, &protocol conformance descriptor for AnyPublisher<A, B>);
  v4 = Publisher<>.sink(receiveValue:)();

  *(v2 + 136) = v4;

  v0[3] = *(v9 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100C70C08;
  *(v5 + 24) = v1;

  sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
  sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30, &protocol conformance descriptor for AnyPublisher<A, B>);
  v6 = Publisher<>.sink(receiveValue:)();

  *(v2 + 144) = v6;

  sub_100C6AC30(v2, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C6AA9C()
{

  v1 = *(v0 + 32);

  return _swift_task_switch(sub_100C6AB10, v1, 0);
}

uint64_t sub_100C6AB10()
{
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BED8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStore!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100C6AC30(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100C6ACD0(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100C6AD64;

  return sub_100C6B34C();
}

uint64_t sub_100C6AD64()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C6AFC4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 72) = v3;
    *v3 = v2;
    v3[1] = sub_100C6AED0;

    return sub_100C6E15C();
  }
}

uint64_t sub_100C6AED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100C6AFC4()
{
  v12 = v0;
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BED8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to publish beacons to key store: %{public}s.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_100C6AED0;

  return sub_100C6E15C();
}

uint64_t sub_100C6B1BC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10001F280(a1, v20);
  sub_1000BC4D4(a4, a5);
  if (swift_dynamicCast())
  {
    v15 = type metadata accessor for OwnedBeaconRecord;
    v16 = v14;
  }

  else
  {
    sub_10001F280(a1, v20);
    result = swift_dynamicCast();
    if (!result)
    {
      return result;
    }

    v15 = type metadata accessor for SharedBeaconRecord;
    v16 = v11;
  }

  v18 = sub_100C70B40(v16, v15);
  return a2(v18);
}

uint64_t sub_100C6B34C()
{
  v1[14] = v0;
  v1[15] = *v0;
  v2 = type metadata accessor for UUID();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_100C6B4F4, v0, 0);
}

uint64_t sub_100C6B4F4()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = 0x7365547265646E75;
  *(v0 + 64) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 440))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = _swiftEmptyArrayStorage;
    v3 = swift_task_alloc();
    *(v0 + 200) = v3;
    *v3 = v0;
    v3[1] = sub_100C6B680;

    return daemon.getter();
  }
}

uint64_t sub_100C6B680(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[26] = a1;

  v3 = swift_task_alloc();
  v2[27] = v3;
  v4 = type metadata accessor for Daemon();
  v2[28] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[29] = v6;
  v7 = sub_100C70C10(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100C6B874;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100C6B874(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v1;

  v5 = *(v3 + 112);

  if (v1)
  {
    v6 = sub_100C6D25C;
  }

  else
  {
    v6 = sub_100C6B9C4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C6B9C4()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = v1;
  sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Flushing beacon cache on beacon added/removed.", v4, 2u);
  }

  v5 = *(v0 + 240);

  return _swift_task_switch(sub_100C6BAE8, v5, 0);
}

uint64_t sub_100C6BAE8()
{

  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_100C6BBC0;
  v2 = *(v0 + 240);

  return unsafeBlocking<A>(context:_:)(v1, 0xD000000000000010, 0x800000010134A8C0, sub_100202178, v2, &type metadata for () + 1);
}

uint64_t sub_100C6BBC0()
{
  v1 = *(*v0 + 240);

  return _swift_task_switch(sub_100C6BCD8, v1, 0);
}

uint64_t sub_100C6BCD8()
{

  v1 = swift_task_alloc();
  v0[34] = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  v0[35] = v2;
  *v1 = v0;
  v1[1] = sub_100C6BDC8;
  v3 = v0[30];

  return unsafeBlocking<A>(context:_:)(v0 + 10, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_100C6BDC8()
{
  v1 = *(*v0 + 240);

  return _swift_task_switch(sub_100C6BEE0, v1, 0);
}

uint64_t sub_100C6BEE0()
{
  v1 = v0[14];
  v0[36] = v0[10];
  return _swift_task_switch(sub_100C6BF04, v1, 0);
}

uint64_t sub_100C6BF04()
{
  v1 = v0[15];
  v0[11] = v0[36];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[38] = v3;
  v4 = sub_1000041A4(&qword_10169F3A8, &qword_101698C80, &unk_1013A23F0, &protocol conformance descriptor for [A]);
  *v3 = v0;
  v3[1] = sub_100C6C018;
  v5 = v0[35];
  v6 = v0[22];

  return Sequence.asyncMap<A>(_:)(&unk_1013E3370, v2, v5, v6, v4);
}

uint64_t sub_100C6C018(uint64_t a1)
{
  v3 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[14];

    return _swift_task_switch(sub_100C6C164, v5, 0);
  }
}

uint64_t sub_100C6C164()
{
  v1 = v0[40];
  v2 = v0[14];

  sub_10039B578(v3);
  sub_100F855A4(*(v2 + 128));
  if (v1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[15];
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_100C70A6C;
    *(v8 + 24) = v7;
    v0[41] = dispatch thunk of _AnySequenceBox._map<A>(_:)();
    v0[42] = 0;

    sub_10039B578(v9);
    My = type metadata accessor for Feature.FindMy();
    v0[5] = My;
    v0[6] = sub_100C70C10(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v11 = sub_1000280DC(v0 + 2);
    (*(*(My - 8) + 104))(v11, enum case for Feature.FindMy.itemSharing(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(v0 + 2);
    if (My)
    {
      v12 = v0[30];

      return _swift_task_switch(sub_100C6C48C, v12, 0);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[45] = v13;
      *v13 = v0;
      v13[1] = sub_100C6CA00;

      return daemon.getter();
    }
  }
}

uint64_t sub_100C6C48C()
{

  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_100C6C578;
  v3 = *(v0 + 240);

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v3, v2);
}

uint64_t sub_100C6C578()
{
  v1 = *(*v0 + 240);

  return _swift_task_switch(sub_100C6C690, v1, 0);
}

uint64_t sub_100C6C690()
{
  v1 = v0[14];
  v0[44] = v0[13];
  return _swift_task_switch(sub_100C6C6B0, v1, 0);
}

uint64_t sub_100C6C6B0()
{
  v3 = v0[44];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[23];
    v6 = v0[20];
    v25 = _swiftEmptyArrayStorage;
    sub_10003301C(0, v4, 0);
    v7 = *(v3 + 16);
    if (!v7)
    {
      goto LABEL_20;
    }

    v22 = v5;
    v8 = _swiftEmptyArrayStorage;
    v2 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = v0[42];
    v10 = v0[24];
    v11 = v0[21];
    v12 = *(v6 + 72);
    sub_100C70AD8(v3 + v2, v11, type metadata accessor for SharedBeaconRecord);
    sub_100C6DDEC(v11, v10);
    if (v9)
    {
      sub_100C70B40(v0[21], type metadata accessor for SharedBeaconRecord);
    }

    v24 = v12;
    sub_100C70B40(v0[21], type metadata accessor for SharedBeaconRecord);
    v1 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    v5 = v1 + 1;
    if (v1 >= v7 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v14 = v0[24];
      v8[2] = v5;
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v15 = *(v22 + 72);
      sub_100C70BA0(v14, v8 + v23 + v15 * v1, type metadata accessor for KeyGenerationBeaconInfo);
      if (v4 == 1)
      {
        break;
      }

      v1 = v3 + v24 + v2;
      v2 = 1;
      while (1)
      {
        v7 = *(v3 + 16);
        if (v2 >= v7)
        {
          break;
        }

        v17 = v0[24];
        v18 = v0[21];
        sub_100C70AD8(v1, v18, type metadata accessor for SharedBeaconRecord);
        sub_100C6DDEC(v18, v17);
        sub_100C70B40(v0[21], type metadata accessor for SharedBeaconRecord);
        v25 = v8;
        v20 = v8[2];
        v19 = v8[3];
        v5 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          sub_10003301C((v19 > 1), v20 + 1, 1);
        }

        ++v2;
        v21 = v0[24];
        v8[2] = v5;
        sub_100C70BA0(v21, v8 + v23 + v15 * v20, type metadata accessor for KeyGenerationBeaconInfo);
        v1 += v24;
        if (v4 == v2)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      sub_10003301C((v7 > 1), v5, 1);
      v8 = v25;
    }

LABEL_10:
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
  }

  sub_10039B578(v8);
  v16 = swift_task_alloc();
  v0[45] = v16;
  *v16 = v0;
  v16[1] = sub_100C6CA00;

  return daemon.getter();
}

uint64_t sub_100C6CA00(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 368) = a1;

  v5 = swift_task_alloc();
  *(v3 + 376) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  v7 = sub_100C70C10(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v5 = v4;
  v5[1] = sub_100C6CBB8;
  v8 = *(v2 + 232);
  v9 = *(v2 + 224);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100C6CBB8(uint64_t a1)
{
  v3 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v4 = v3[14];

    v5 = sub_100C6D2E8;
    v6 = v4;
  }

  else
  {
    v7 = v3[14];

    v5 = sub_100C6CD20;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100C6CD20()
{
  v1 = getuid();
  sub_1000294F0(v1);
  v2 = v0[9];
  v0[50] = v2;
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_100C6CDD4;
  v4 = v0[19];

  return sub_100990D88(v4, v2);
}

uint64_t sub_100C6CDD4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = v2[19];
  v4 = v2[16];
  v5 = v2[17];
  if (v0)
  {
    v6 = v2[14];
    (*(v5 + 8))(v3, v4);

    v7 = sub_100C6D37C;
    v8 = v6;
  }

  else
  {
    v9 = v2[14];
    v10 = *(v5 + 8);
    v2[53] = v10;
    v2[54] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v3, v4);

    v7 = sub_100C6CF7C;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100C6CF7C()
{
  v20 = v0;
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[32], qword_10177BED8);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v18 = v0[53];
    v3 = v0[41];
    v4 = v0[39];
    v5 = v0[18];
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 134218755;
    v9 = *(v4 + 16);

    *(v7 + 4) = v9;

    *(v7 + 12) = 2048;
    v10 = *(v3 + 16);

    *(v7 + 14) = v10;

    *(v7 + 22) = 2160;
    *(v7 + 24) = 1752392040;
    *(v7 + 32) = 2081;
    v11 = getuid();
    sub_1000294F0(v11);
    sub_100C70C10(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v18(v5, v6);
    v15 = sub_1000136BC(v12, v14, &v19);

    *(v7 + 34) = v15;
    _os_log_impl(&_mh_execute_header, v1, v2, "Added %ld owned and %ld standalone beacon to key store for user: %{private,mask.hash}s.", v7, 0x2Au);
    sub_100007BAC(v8);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  static DarwinNotification.post(name:)();

  v16 = v0[1];

  return v16();
}

uint64_t sub_100C6D25C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C6D2E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C6D37C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C6D41C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for BeaconIdentifier(0);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for OwnedBeaconRecord(0);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C6D53C, 0, 0);
}

uint64_t sub_100C6D53C()
{
  v17 = v0;
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BED8);
  sub_100C70AD8(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100C70C10(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100C70B40(v7, type metadata accessor for OwnedBeaconRecord);
    v13 = sub_1000136BC(v10, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Adding owned beacon to key store: %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100C70B40(v7, type metadata accessor for OwnedBeaconRecord);
  }

  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_100C6D7D4;

  return sub_100D5F8B4();
}

uint64_t sub_100C6D7D4(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100C6D8D4, 0, 0);
}

uint64_t sub_100C6D8D4()
{
  v18 = *(v0 + 96);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = getuid();
  sub_1000294F0(v9);
  v10 = *(v1 + 20);
  v11 = *(v3 + 20);
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 16))(v2 + v11, v6 + v10, v12);
  (*(v5 + 16))(v4, v6 + *(v1 + 32), v7);
  if (v18)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  sub_100C70BA0(v2, v8, type metadata accessor for BeaconIdentifier);
  v14 = type metadata accessor for KeyGenerationBeaconInfo(0);
  (*(v5 + 32))(v8 + v14[5], v4, v7);
  v15 = (v8 + v14[6]);
  *v15 = xmmword_10138BBF0;
  v15[1] = 0u;
  v15[2] = 0u;
  *(v8 + v14[7]) = v13;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100C6DA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = type metadata accessor for StandaloneBeacon(0);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177BED8);
  sub_100C70AD8(a1, v6, type metadata accessor for StandaloneBeacon);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v32 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100C70C10(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100C70B40(v6, type metadata accessor for StandaloneBeacon);
    v16 = sub_1000136BC(v13, v15, &v34);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Adding standalone beacon to key store: %{private,mask.hash}s.", v11, 0x16u);
    sub_100007BAC(v12);
  }

  else
  {

    sub_100C70B40(v6, type metadata accessor for StandaloneBeacon);
  }

  v17 = getuid();
  sub_1000294F0(v17);
  v18 = *(type metadata accessor for BeaconIdentifier(0) + 20);
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 16))(a2 + v18, a1, v19);
  v20 = v33;
  v21 = *(v33 + 32);
  v22 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v23 = v22[5];
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 16))(a2 + v23, a1 + v21, v24);
  v25 = (a1 + *(v20 + 40));
  v26 = v25[2];
  v27 = v25[3];
  v28 = v25[4];
  v29 = v25[5];
  v30 = a2 + v22[6];
  *v30 = v26;
  *(v30 + 8) = v27;
  *(v30 + 16) = v28;
  *(v30 + 24) = v29;
  *(v30 + 32) = xmmword_10138BBF0;
  *(a2 + v22[7]) = 1;
  sub_100017D5C(v26, v27);
  return sub_100017D5C(v28, v29);
}

double sub_100C6DDEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177BED8);
  sub_100C70AD8(a1, v6, type metadata accessor for SharedBeaconRecord);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v29 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100C70C10(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100C70B40(v6, type metadata accessor for SharedBeaconRecord);
    v16 = sub_1000136BC(v13, v15, &v31);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Adding shared beacon to key store: %{private,mask.hash}s.", v11, 0x16u);
    sub_100007BAC(v12);
  }

  else
  {

    sub_100C70B40(v6, type metadata accessor for SharedBeaconRecord);
  }

  if (*(a1 + v4[16]) == 5)
  {
    v17 = 3;
  }

  else
  {
    v18 = *(a1 + v4[11]);
    v19 = *(a1 + v4[12]);
    if (v18 == 76 && (v20 = v19 == 8233, v19 = 8233, !v20) || sub_100E0EA64(v18, v19))
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }
  }

  v21 = getuid();
  v22 = v30;
  sub_1000294F0(v21);
  v23 = v4[5];
  v24 = *(type metadata accessor for BeaconIdentifier(0) + 20);
  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 16))(v22 + v24, a1 + v23, v25);
  v26 = type metadata accessor for KeyGenerationBeaconInfo(0);
  sub_100A8AD0C(v22 + v26[5]);
  v27 = (v22 + v26[6]);
  result = 0.0;
  *v27 = xmmword_10138BBF0;
  v27[1] = 0u;
  v27[2] = 0u;
  *(v22 + v26[7]) = v17;
  return result;
}

uint64_t sub_100C6E15C()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for KeySyncMetadata(0);
  v1[10] = swift_task_alloc();
  v1[11] = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v1[12] = swift_task_alloc();
  v2 = type metadata accessor for KeyAlignmentRecord(0);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[16] = v3;
  v4 = *(v3 - 8);
  v1[17] = v4;
  v1[18] = *(v4 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[22] = v5;
  *v5 = v1;
  v5[1] = sub_100C6E334;

  return daemon.getter();
}

uint64_t sub_100C6E334(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[23] = a1;

  v3 = swift_task_alloc();
  v2[24] = v3;
  v4 = type metadata accessor for Daemon();
  v2[25] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[26] = v6;
  v7 = sub_100C70C10(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100C6E528;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100C6E528(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 216) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    v7 = swift_task_alloc();
    *(v3 + 224) = v7;
    *v7 = v4;
    v7[1] = sub_100C6E718;

    return daemon.getter();
  }
}

uint64_t sub_100C6E718(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 232) = a1;

  v5 = swift_task_alloc();
  *(v3 + 240) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100C70C10(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_100C6E8D0;
  v8 = *(v2 + 208);
  v9 = *(v2 + 200);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100C6E8D0(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  *(*v2 + 248) = a1;

  if (v1)
  {
    v3 = *(v4 + 64);

    v5 = sub_100C6F78C;
  }

  else
  {

    v5 = sub_100C6EA28;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_100C6EA28()
{

  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_100C6EB14;
  v3 = *(v0 + 248);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v3, v2);
}

uint64_t sub_100C6EB14()
{
  v1 = *(*v0 + 248);

  return _swift_task_switch(sub_100C6EC2C, v1, 0);
}

uint64_t sub_100C6EC2C()
{
  v1 = v0[8];
  v0[33] = v0[7];
  return _swift_task_switch(sub_100C6EC4C, v1, 0);
}

uint64_t sub_100C6EC4C()
{
  v1 = *(v0 + 264);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 136);
    sub_101123D4C(0, v2, 0);
    v4 = v1 + 32;
    do
    {
      sub_10001F280(v4, v0 + 16);
      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      sub_1000035D0((v0 + 16), v5);
      (*(*(*(v6 + 8) + 8) + 32))(v5);
      sub_100007BAC((v0 + 16));
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_101123D4C((v7 > 1), v8 + 1, 1);
      }

      v9 = *(v0 + 168);
      v10 = *(v0 + 128);
      _swiftEmptyArrayStorage[2] = v8 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v9, v10);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  *(v0 + 272) = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage[2];
  *(v0 + 280) = v11;
  if (v11)
  {
    v12 = *(v0 + 128);
    v13 = *(v0 + 136);
    v14 = *(v13 + 16);
    v13 += 16;
    v15 = *(v13 + 64);
    *(v0 + 344) = v15;
    *(v0 + 288) = *(v13 + 56);
    *(v0 + 296) = v14;
    v16 = *(v0 + 248);
    v17 = *(v0 + 160);
    *(v0 + 304) = 0;
    *(v0 + 312) = v13 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v17, _swiftEmptyArrayStorage + ((v15 + 32) & ~v15), v12);

    return _swift_task_switch(sub_100C6EEE0, v16, 0);
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100C6EEE0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 128);
  v5 = (*(v0 + 344) + 24) & ~*(v0 + 344);
  (*(v0 + 296))(v2, *(v0 + 160), v4);
  v6 = swift_allocObject();
  *(v0 + 320) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 328) = v7;
  *v7 = v0;
  v7[1] = sub_100C6F038;
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100C70948, v6, v9);
}

uint64_t sub_100C6F038()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100C6F164, v1, 0);
}

uint64_t sub_100C6F164()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
    sub_10000B3A8(v2, &qword_10169F328, &unk_1013CB040);
    v3 = *(v0 + 304) + 1;
    if (v3 == *(v0 + 280))
    {

      v4 = *(v0 + 8);

      return v4();
    }

    else
    {
      v19 = *(v0 + 296);
      v20 = *(v0 + 248);
      v21 = *(v0 + 160);
      v22 = *(v0 + 128);
      v23 = *(v0 + 272) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 288) * v3;
      v24 = (*(v0 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      *(v0 + 304) = v3;
      *(v0 + 312) = v24;
      v19(v21, v23, v22);

      return _swift_task_switch(sub_100C6EEE0, v20, 0);
    }
  }

  else
  {
    v6 = *(v0 + 296);
    v7 = *(v0 + 160);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    sub_100C70BA0(v2, v9, type metadata accessor for KeyAlignmentRecord);
    v6(v10, v7, v8);
    v12 = *(v9 + *(v1 + 28));
    v13 = (v10 + v11[6]);
    v13[3] = &type metadata for PrimaryIndex;
    v13[4] = sub_10002A2B8();
    *v13 = v12;
    v14 = *(v1 + 32);
    v15 = v11[7];
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 16))(v10 + v15, v9 + v14, v16);
    *(v10 + v11[5]) = 8;
    v17 = swift_task_alloc();
    *(v0 + 336) = v17;
    *v17 = v0;
    v17[1] = sub_100C6F470;
    v18 = *(v0 + 80);

    return sub_1010CDAC4(v18);
  }
}

uint64_t sub_100C6F470()
{
  v2 = *v1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (v0)
  {

    sub_100C70B40(v3, type metadata accessor for KeySyncMetadata);
    v5 = sub_100C70DBC;
  }

  else
  {
    sub_100C70B40(v3, type metadata accessor for KeySyncMetadata);
    v5 = sub_100C6F5F4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C6F5F4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_100C70B40(*(v0 + 120), type metadata accessor for KeyAlignmentRecord);
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 304) + 1;
  if (v4 == *(v0 + 280))
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 296);
    v8 = *(v0 + 248);
    v9 = *(v0 + 160);
    v10 = *(v0 + 128);
    v11 = *(v0 + 272) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 288) * v4;
    v12 = (*(v0 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 304) = v4;
    *(v0 + 312) = v12;
    v7(v9, v11, v10);

    return _swift_task_switch(sub_100C6EEE0, v8, 0);
  }
}

uint64_t sub_100C6F78C()
{
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BED8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100C6F8F4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for StandaloneBeaconService.BeaconStreamChange(uint64_t a1)
{
  result = qword_1016B9778;
  if (!qword_1016B9778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100C6F9BC(uint64_t a1)
{
  result = type metadata accessor for StandaloneBeacon(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100C6FA30(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for StandaloneBeaconService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100C6FAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StandaloneBeaconService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100C6FB9C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for StandaloneBeaconService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100C6FC8C()
{
  if (qword_1016949F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v2 = sub_1000076D4(v1, qword_10177B500);
  sub_100C63B84(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100C6FD34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_100C6A04C();
}

uint64_t sub_100C6FDC0()
{
  type metadata accessor for StandaloneBeaconService();
  sub_100C70C10(&qword_10169F450, v0, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100C6FEB8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BEF0);
  sub_1000076D4(v0, qword_10177BEF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C6FF54(uint64_t a1)
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C685F8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100C70074()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100C693C0(v4, v0 + v3);
}

uint64_t sub_100C7014C(void (*a1)(void), uint64_t (*a2)(char *, char *, char *))
{
  v4 = type metadata accessor for URLResourceValues();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = [objc_opt_self() defaultManager];
  a1(0);
  a2(v16, v14, v11);
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  URL.path.getter();
  v18 = String._bridgeToObjectiveC()();

  LODWORD(a1) = [v17 fileExistsAtPath:v18];

  if (a1)
  {
    v19 = v29;
    URL.setResourceValues(_:)();
    if (v19)
    {
      goto LABEL_9;
    }

    v29 = 0;
  }

  URL.path.getter();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v17 fileExistsAtPath:v20];

  if (v21)
  {
    v22 = v29;
    URL.setResourceValues(_:)();
    if (v22)
    {
      goto LABEL_9;
    }

    v29 = 0;
  }

  URL.path.getter();
  v23 = String._bridgeToObjectiveC()();

  v24 = [v17 fileExistsAtPath:v23];

  if (v24)
  {
    URL.setResourceValues(_:)();
  }

LABEL_9:

  (*(v27 + 8))(v6, v28);
  v25 = *(v8 + 8);
  v25(v11, v7);
  v25(v14, v7);
  return (v25)(v16, v7);
}

uint64_t sub_100C7048C(uint64_t a1)
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C67DA0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100C705AC()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100C69108(v4, v0 + v3);
}

uint64_t sub_100C70684(uint64_t a1)
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C67430(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100C707A4()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100C68E50(v4, v0 + v3);
}

uint64_t sub_100C7087C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_100C70948@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UUID();

  return sub_100E7401C(a1);
}

uint64_t sub_100C709BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100C6D41C(a1, a2);
}

uint64_t sub_100C70A8C()
{
  result = (*(v0 + 16))();
  if (v1)
  {
    return swift_allocError();
  }

  return result;
}

uint64_t sub_100C70AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C70B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100C70BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C70C10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100C70C58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_100B20114(v1, v2, v3);
}

uint64_t sub_100C70D08()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100C6ACD0(v2);
}

void *sub_100C70DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_101123BB8(0, v1, 0);
  v24 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v4 = result;
  v5 = 0;
  v23 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = sub_10125403C(*(*(a1 + 48) + v4));
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_101123BB8((v11 > 1), v12 + 1, 1);
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = result;
    v13[5] = v10;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v7 = v23;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v6 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1000BB408(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
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
  return result;
}

uint64_t sub_100C70FE4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000035D0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100C710B4(uint64_t a1)
{
  v3 = type metadata accessor for P256.Signing.PublicKey();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for P256.Signing.PrivateKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for KeyDropJoinToken(0) + 20));
  v12 = v11[1];
  v18 = *v11;
  v19 = v12;
  sub_100017D5C(v18, v12);
  result = P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  if (!v1)
  {
    P256.Signing.PrivateKey.publicKey.getter();
    (*(v8 + 8))(v10, v7);
    v14 = P256.Signing.PublicKey.compactRepresentation.getter();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    if (v16 >> 60 == 15)
    {
      sub_1001BAEE0();
      swift_allocError();
      *v17 = 18;
      return swift_willThrow();
    }

    else
    {
      v18 = v14;
      v19 = v16;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      return sub_100006654(v14, v16);
    }
  }

  return result;
}

Swift::Int sub_100C712F8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v24[0] = v8 + 32;
  v24[1] = v9;
  result = _minimumMergeRunLength(_:)(v9);
  if (result >= v9)
  {
    if (v9 >= 2)
    {
      v14 = -1;
      v15 = 1;
      v16 = v8 + 32;
      do
      {
        v17 = *(v8 + 32 + 24 * v15);
        v18 = v14;
        v19 = v16;
        do
        {
          if (v17 >= *v19)
          {
            break;
          }

          v20 = *(v19 + 32);
          *(v19 + 24) = *v19;
          *(v19 + 40) = *(v19 + 16);
          *v19 = v17;
          *(v19 + 8) = v20;
          v19 -= 24;
        }

        while (!__CFADD__(v18++, 1));
        ++v15;
        v16 += 24;
        --v14;
      }

      while (v15 != v9);
    }
  }

  else
  {
    v11 = result;
    v12 = v9 >> 1;
    if (v9 >= 2)
    {
      sub_1000BC4D4(a3, a4);
      v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v13[2] = v12;
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v22[0] = v13 + 4;
    v22[1] = v12;
    sub_100D099E8(v22, v23, v24, v11);
    v13[2] = 0;
  }

  *a1 = v8;
  return result;
}

Swift::Int sub_100C71470(uint64_t *a1)
{
  v2 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B31FE4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100D08BF0(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100C71518(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B31FF8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100D0BEE0(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100C71650()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BF08);
  sub_1000076D4(v0, qword_10177BF08);
  return Logger.init(subsystem:category:)();
}

void *sub_100C716D0@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_7:
    v9 = sub_100268E34(v6);
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
    return result;
  }

  result = sub_1000148E8(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v5);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100C71778()
{
  v1 = *(v0 + *(type metadata accessor for SharingCircleKeyManager.Instruction(0) + 32));
  if (*(v1 + 16) < 4uLL)
  {
    sub_100C70DC0(v1);
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80, &protocol conformance descriptor for [A]);
    v5 = BidirectionalCollection<>.joined(separator:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 93;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v2 = 91;
    v4 = 0xE100000000000000;
  }

  else
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v3;
  }

  _StringGuts.grow(_:)(45);
  v10._object = 0x800000010136FF10;
  v10._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v10);
  type metadata accessor for UUID();
  sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x3A7365707974202CLL;
  v12._object = 0xE900000000000020;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v2;
  v13._object = v4;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x69726F697270202CLL;
  v14._object = 0xEC000000203A7974;
  String.append(_:)(v14);
  _print_unlocked<A, B>(_:_:)();
  v15._countAndFlagsBits = 93;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 0;
}

uint64_t sub_100C71A10()
{
  v1 = v0[4];
  if (*(v1 + *(type metadata accessor for SharingCircleKeyManager.Instruction(0) + 40)) == 1)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v2 = qword_10177B348;
    v0[5] = qword_10177B348;

    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_100C71BD8;
    v4 = v0 + 3;
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v2 = qword_10177B348;
    v0[7] = qword_10177B348;

    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_100C71D74;
    v4 = v0 + 2;
  }

  return unsafeBlocking<A>(_:)(v4, sub_1000DFF78, v2, &type metadata for Configuration);
}

uint64_t sub_100C71BD8()
{

  return _swift_task_switch(sub_100C71CF0, 0, 0);
}

uint64_t sub_100C71CF0()
{
  v1 = sub_101074B1C(*(v0 + 24));

  v3 = *(v0 + 8);

  v2.n128_f64[0] = v1 * 86400.0;
  return v3(v2);
}

uint64_t sub_100C71D74()
{

  return _swift_task_switch(sub_100C71E8C, 0, 0);
}

uint64_t sub_100C71E8C()
{
  v1 = sub_101074B00(*(v0 + 16));

  v3 = *(v0 + 8);

  v2.n128_f64[0] = v1 * 86400.0;
  return v3(v2);
}

uint64_t sub_100C71F10()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100C71F9C;

  return sub_100C719F0();
}

uint64_t sub_100C71F9C(double a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100C7209C, 0, 0);
}

uint64_t sub_100C7209C()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v1 = sub_101073C10(*(v0 + 16));

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!is_mul_ok(v1, 0x3CuLL))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v0 + 32) / (60 * v1);
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100C72204()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 24) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100C72304;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_100C72304()
{

  return _swift_task_switch(sub_100C7241C, 0, 0);
}

uint64_t sub_100C7241C()
{
  v1 = sub_101074B38(*(v0 + 16));

  v3 = *(v0 + 8);

  v2.n128_f64[0] = v1 * 86400.0;
  return v3(v2);
}

uint64_t sub_100C724A0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100C72560, 0, 0);
}

uint64_t sub_100C72560()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  (*(v2 + 16))(v1, v4 + *(v5 + 48), v3);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B348;
  v0[8] = qword_10177B348;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_100C72698;

  return unsafeBlocking<A>(_:)(v0 + 2, sub_1000DFF78, v6, &type metadata for Configuration);
}

uint64_t sub_100C72698()
{

  return _swift_task_switch(sub_100C727B0, 0, 0);
}

uint64_t sub_100C727B0()
{
  sub_101074B54(*(v0 + 16));

  DateInterval.init(start:duration:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C72874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000101351030 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100C72908(uint64_t a1)
{
  v2 = sub_100D14770();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C72944(uint64_t a1)
{
  v2 = sub_100D14770();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C72980@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B9EB8, &qword_1013E3CD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100D14770();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100007BAC(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_100C72AFC(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016B9EA8, &qword_1013E3CC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_100D14770();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100C72C38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for KeyDropJoinToken(0);
  v83 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v70 - v7;
  v79 = type metadata accessor for HashAlgorithm();
  v9 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for SharingCircleSecretValue(0);
  v92 = *(v85 - 8);
  __chkstk_darwin(v85);
  v12 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v70 - v14;
  v16 = type metadata accessor for SymmetricKey256();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v86 = v15;
  v81 = v17 + 56;
  v82 = v16;
  v80 = v18;
  (v18)(v15, 1, 1);
  if (qword_101694778 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177AE28);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v84 = v8;
    if (v22)
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = *(a1 + 16);

      _os_log_impl(&_mh_execute_header, v20, v21, "Initializing DelegatedKeychain with %ld secretValues.", v23, 0xCu);
      v8 = v84;
    }

    else
    {
    }

    v24 = v92;
    v88 = *(a1 + 16);
    if (!v88)
    {
      break;
    }

    v90 = 0;
    v25 = 0;
    v94 = a1 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    v74 = enum case for HashAlgorithm.sha256(_:);
    v73 = (v9 + 104);
    v72 = (v9 + 8);
    v93 = _swiftEmptyArrayStorage;
    v76 = a1;
    v77 = (v17 + 32);
    v89 = 0xF000000000000000;
    v17 = v85;
    v9 = v88;
    v75 = v6;
    while (v25 < *(a1 + 16))
    {
      sub_100D11DC8(v94 + *(v24 + 72) * v25, v12, type metadata accessor for SharingCircleSecretValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_100D12974(v12, v8, type metadata accessor for KeyDropJoinToken);
          sub_100D11DC8(v8, v6, type metadata accessor for KeyDropJoinToken);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v93 = sub_100A5B698(0, v93[2] + 1, 1, v93);
          }

          v28 = v93[2];
          v27 = v93[3];
          if (v28 >= v27 >> 1)
          {
            v93 = sub_100A5B698((v27 > 1), v28 + 1, 1, v93);
          }

          sub_100018D00(v8, type metadata accessor for KeyDropJoinToken);
          v29 = v93;
          v93[2] = v28 + 1;
          sub_100D12974(v6, v29 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v28, type metadata accessor for KeyDropJoinToken);
          v24 = v92;
          goto LABEL_8;
        }

LABEL_7:
        sub_100018D00(v12, type metadata accessor for SharingCircleSecretValue);
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v35 = v86;
        sub_10000B3A8(v86, &qword_101698360, &qword_1013E35F0);
        v36 = v82;
        (*v77)(v35, v12, v82);
        v37 = v36;
        v9 = v88;
        v80(v35, 0, 1, v37);
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_7;
      }

      v30 = *v12;
      v6 = v12[1];
      sub_100017D5C(*v12, v6);
      sub_10002EA98(57, v30, v6, &v95);
      a1 = v95;
      v31 = v96;
      v32 = v96 >> 62;
      if ((v96 >> 62) > 1)
      {
        v33 = v91;
        if (v32 != 2)
        {
          goto LABEL_58;
        }

        v39 = *(v95 + 16);
        v38 = *(v95 + 24);
        v40 = __OFSUB__(v38, v39);
        v34 = v38 - v39;
        if (v40)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v33 = v91;
        if (v32)
        {
          LODWORD(v34) = HIDWORD(v95) - v95;
          if (__OFSUB__(HIDWORD(v95), v95))
          {
            goto LABEL_46;
          }

          v34 = v34;
        }

        else
        {
          v34 = BYTE6(v96);
        }
      }

      if (v34 != 57)
      {
        goto LABEL_58;
      }

      v41 = sub_100A7A194(v95, v96, 0, 0);
      if (v33)
      {
        v91 = v33;
        v61 = static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v17 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_101385D80;
        v95 = v91;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v9 = String.init<A>(describing:)();
        v64 = v63;
        *(v62 + 56) = &type metadata for String;
        *(v62 + 64) = sub_100008C00();
        *(v62 + 32) = v9;
        *(v62 + 40) = v64;
        os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v17, "Error deriving advertisementKey: %@", 35, 2, v62);

        sub_1001BAF88();
        v65 = swift_allocError();
        *v66 = 0;
        swift_willThrow();

        goto LABEL_62;
      }

      v8 = v41;
      v42 = sub_100A7829C(v41, 0, 2);
      v91 = 0;
      v9 = v42;
      v17 = v43;
      CCECCryptorRelease();
      v44 = v17 >> 62;
      v87 = v6;
      if ((v17 >> 62) > 1)
      {
        if (v44 != 2)
        {
          goto LABEL_64;
        }

        v47 = *(v9 + 16);
        v46 = *(v9 + 24);
        v40 = __OFSUB__(v46, v47);
        v45 = v46 - v47;
        if (v40)
        {
          goto LABEL_47;
        }
      }

      else if (v44)
      {
        LODWORD(v45) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_48;
        }

        v45 = v45;
      }

      else
      {
        v45 = BYTE6(v17);
      }

      if (v45 != 28)
      {
        if (v44 == 1)
        {
          LODWORD(v44) = HIDWORD(v9) - v9;
          if (!__OFSUB__(HIDWORD(v9), v9))
          {
            v69 = v44;
            goto LABEL_65;
          }

          __break(1u);
        }

        if (v44 == 2)
        {
          v60 = *(v9 + 16);
          v59 = *(v9 + 24);
          v69 = v59 - v60;
          if (__OFSUB__(v59, v60))
          {
            __break(1u);
LABEL_58:
            sub_100016590(a1, v31);
            goto LABEL_63;
          }
        }

        else
        {
          v69 = BYTE6(v17);
        }

        while (1)
        {
LABEL_65:
          sub_100018350();
          v65 = swift_allocError();
          *v68 = 28;
          *(v68 + 8) = v69;
          *(v68 + 16) = 0;
          swift_willThrow();
          sub_100016590(v9, v17);
LABEL_62:
          v95 = 0;
          v96 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v67._countAndFlagsBits = 0xD000000000000021;
          v67._object = 0x800000010134CB30;
          String.append(_:)(v67);
          v97 = v65;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
LABEL_63:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_64:
          v69 = 0;
        }
      }

      v48 = v30;
      sub_100016590(a1, v31);
      v49 = v78;
      v50 = v79;
      (*v73)(v78, v74, v79);
      v51 = Data.hash(algorithm:)();
      v53 = v52;
      sub_100006654(v90, v89);
      sub_100016590(v9, v17);
      sub_100016590(v48, v87);
      (*v72)(v49, v50);
      v89 = v53;
      v90 = v51;
      a1 = v76;
      v6 = v75;
      v8 = v84;
      v17 = v85;
      v24 = v92;
      v9 = v88;
LABEL_8:
      if (v9 == ++v25)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

  v90 = 0;
  v93 = _swiftEmptyArrayStorage;
  v89 = 0xF000000000000000;
LABEL_43:

  v54 = v71;
  *v71 = v93;
  v55 = type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  result = sub_1000D2AD8(v86, v54 + *(v55 + 20), &qword_101698360, &qword_1013E35F0);
  v57 = (v54 + *(v55 + 24));
  v58 = v89;
  *v57 = v90;
  v57[1] = v58;
  return result;
}

uint64_t sub_100C73710(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for MemberSharingCircle(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100C73814, v1, 0);
}

uint64_t sub_100C73814()
{
  v18 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[10] = sub_1000076D4(v3, qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100018D00(v7, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Restore member sharing circle keys: share-id: %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100018D00(v7, type metadata accessor for MemberSharingCircle);
  }

  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_100C73AB0;
  v15 = v0[2];

  return sub_100CAA29C(v15);
}

uint64_t sub_100C73AB0(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 148) = a1;

  return _swift_task_switch(sub_100C73BC8, v2, 0);
}

uint64_t sub_100C73BC8()
{
  v26 = v0;
  if (*(v0 + 148) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_100C74004;
    v2 = *(v0 + 40);
    v3 = *(v0 + 16);

    return sub_100CA8F80(v2, v3, 0);
  }

  else
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 16);
    sub_100D11DC8(v6, *(v0 + 64), type metadata accessor for MemberSharingCircle);
    sub_100D11DC8(v6, v5, type metadata accessor for MemberSharingCircle);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 64);
    if (v9)
    {
      v11 = *(v0 + 48);
      v12 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v12 = 136446723;
      v13 = *(v10 + *(v11 + 40));
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v15 = 0xE500000000000000;
          v14 = 0x746E65732ELL;
        }

        else
        {
          if (v13 == 4)
          {
            v14 = 0xD000000000000013;
          }

          else
          {
            v14 = 0x64656C6961662ELL;
          }

          if (v13 == 4)
          {
            v15 = 0x800000010134B830;
          }

          else
          {
            v15 = 0xE700000000000000;
          }
        }
      }

      else if (*(v10 + *(v11 + 40)))
      {
        if (v13 == 1)
        {
          v14 = 0x657470656363612ELL;
        }

        else
        {
          v14 = 0x747365757165722ELL;
        }

        if (v13 == 1)
        {
          v15 = 0xE900000000000064;
        }

        else
        {
          v15 = 0xEA00000000006465;
        }
      }

      else
      {
        v15 = 0xEB00000000646574;
        v14 = 0x70656363616E752ELL;
      }

      v17 = *(v0 + 56);
      sub_100018D00(*(v0 + 64), type metadata accessor for MemberSharingCircle);
      v18 = sub_1000136BC(v14, v15, v25);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      sub_100018D00(v17, type metadata accessor for MemberSharingCircle);
      v22 = sub_1000136BC(v19, v21, v25);

      *(v12 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v7, v8, "Member circle to restore is not allowed to restore keys, state: %{public}s, Share-id: %{private,mask.hash}s.", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v16 = *(v0 + 56);

      sub_100018D00(v16, type metadata accessor for MemberSharingCircle);
      sub_100018D00(v10, type metadata accessor for MemberSharingCircle);
    }

    sub_1001BAEE0();
    swift_allocError();
    *v23 = 19;
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_100C74004()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100C7456C;
  }

  else
  {
    v4 = sub_100C74130;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C74130()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1000BC4D4(&qword_1016A7A78, &qword_1013B6AE8);
  v3 = *(v1 + 80);
  *(v0 + 144) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 112) = v5;
  *(v5 + 16) = xmmword_101385D80;
  sub_100D11DC8(v2, v5 + v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_100C7423C;

  return sub_100C862AC(v5);
}

uint64_t sub_100C7423C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = (*(*v2 + 144) + 32) & ~*(*v2 + 144);
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  swift_setDeallocating();
  sub_100018D00(v5 + v6, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_deallocClassInstance();
  v7 = *(v3 + 24);
  if (v1)
  {
    v8 = sub_100C745F8;
  }

  else
  {
    v8 = sub_100C743CC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C743CC()
{
  v1 = v0[16];
  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = *(v1 + 32);

    sub_100018D00(v2, type metadata accessor for SharingCircleKeyManager.Instruction);

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v0[5];

    sub_1001BAEE0();
    swift_allocError();
    *v7 = 16;
    swift_willThrow();
    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100C7456C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C745F8()
{
  sub_100018D00(*(v0 + 40), type metadata accessor for SharingCircleKeyManager.Instruction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C746A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for MemberSharingCircle(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100C747A4, v1, 0);
}

uint64_t sub_100C747A4()
{
  v18 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[10] = sub_1000076D4(v3, qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100018D00(v7, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Download keys: share-id: %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100018D00(v7, type metadata accessor for MemberSharingCircle);
  }

  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_100C74A40;
  v15 = v0[2];

  return sub_100CAA29C(v15);
}

uint64_t sub_100C74A40(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 148) = a1;

  return _swift_task_switch(sub_100C74B58, v2, 0);
}

uint64_t sub_100C74B58()
{
  v26 = v0;
  if (*(v0 + 148) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_100C74F94;
    v2 = *(v0 + 40);
    v3 = *(v0 + 16);

    return sub_100CA8F80(v2, v3, 1);
  }

  else
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 16);
    sub_100D11DC8(v6, *(v0 + 64), type metadata accessor for MemberSharingCircle);
    sub_100D11DC8(v6, v5, type metadata accessor for MemberSharingCircle);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 64);
    if (v9)
    {
      v11 = *(v0 + 48);
      v12 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v12 = 136446723;
      v13 = *(v10 + *(v11 + 40));
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v15 = 0xE500000000000000;
          v14 = 0x746E65732ELL;
        }

        else
        {
          if (v13 == 4)
          {
            v14 = 0xD000000000000013;
          }

          else
          {
            v14 = 0x64656C6961662ELL;
          }

          if (v13 == 4)
          {
            v15 = 0x800000010134B830;
          }

          else
          {
            v15 = 0xE700000000000000;
          }
        }
      }

      else if (*(v10 + *(v11 + 40)))
      {
        if (v13 == 1)
        {
          v14 = 0x657470656363612ELL;
        }

        else
        {
          v14 = 0x747365757165722ELL;
        }

        if (v13 == 1)
        {
          v15 = 0xE900000000000064;
        }

        else
        {
          v15 = 0xEA00000000006465;
        }
      }

      else
      {
        v15 = 0xEB00000000646574;
        v14 = 0x70656363616E752ELL;
      }

      v17 = *(v0 + 56);
      sub_100018D00(*(v0 + 64), type metadata accessor for MemberSharingCircle);
      v18 = sub_1000136BC(v14, v15, v25);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      sub_100018D00(v17, type metadata accessor for MemberSharingCircle);
      v22 = sub_1000136BC(v19, v21, v25);

      *(v12 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v7, v8, "Member circle to restore is not allowed to download keys, state: %{public}s, Share-id: %{private,mask.hash}s.", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v16 = *(v0 + 56);

      sub_100018D00(v16, type metadata accessor for MemberSharingCircle);
      sub_100018D00(v10, type metadata accessor for MemberSharingCircle);
    }

    sub_1001BAEE0();
    swift_allocError();
    *v23 = 19;
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_100C74F94()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100D148F8;
  }

  else
  {
    v4 = sub_100C750C0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C750C0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1000BC4D4(&qword_1016A7A78, &qword_1013B6AE8);
  v3 = *(v1 + 80);
  *(v0 + 144) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 112) = v5;
  *(v5 + 16) = xmmword_101385D80;
  sub_100D11DC8(v2, v5 + v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_100C751CC;

  return sub_100C862AC(v5);
}

uint64_t sub_100C751CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = (*(*v2 + 144) + 32) & ~*(*v2 + 144);
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  swift_setDeallocating();
  sub_100018D00(v5 + v6, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_deallocClassInstance();
  v7 = *(v3 + 24);
  if (v1)
  {
    v8 = sub_100D148DC;
  }

  else
  {
    v8 = sub_100D14900;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C7535C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100C75420, v2, 0);
}

uint64_t sub_100C75420()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v15 = *(v0 + 24);
  v14 = sub_100B04978(&off_101608470);
  UUID.init()();
  v5 = sub_100907F84(_swiftEmptyArrayStorage);
  UUID.init()();
  v6 = v3[5];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 16);
  v8(v1 + v6, v4, v7);
  v8(v1 + v3[6], v15, v7);
  *(v1 + v3[8]) = v14;
  *(v1 + v3[9]) = 5;
  *(v1 + v3[10]) = 1;
  *(v1 + v3[11]) = v5;
  static Date.trustedNow.getter(v1 + v3[12]);
  sub_1000BC4D4(&qword_1016A7A78, &qword_1013B6AE8);
  v9 = *(v2 + 80);
  *(v0 + 88) = v9;
  v10 = (v9 + 32) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 64) = v11;
  *(v11 + 16) = xmmword_101385D80;
  sub_100D11DC8(v1, v11 + v10, type metadata accessor for SharingCircleKeyManager.Instruction);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_100C7561C;

  return sub_100C862AC(v11);
}

uint64_t sub_100C7561C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 88);
  v5 = *(v2 + 32);
  if (v0)
  {
    swift_setDeallocating();
    sub_100018D00(v3 + ((v4 + 32) & ~v4), type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_deallocClassInstance();
    v6 = sub_100C75878;
  }

  else
  {

    swift_setDeallocating();
    sub_100018D00(v3 + ((v4 + 32) & ~v4), type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_deallocClassInstance();
    v6 = sub_100C757F4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C757F4()
{
  sub_100018D00(*(v0 + 56), type metadata accessor for SharingCircleKeyManager.Instruction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C75878()
{
  sub_100018D00(*(v0 + 56), type metadata accessor for SharingCircleKeyManager.Instruction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C758FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C75A04, v1, 0);
}

uint64_t sub_100C75A04()
{
  v1 = v0[2];
  v2 = type metadata accessor for OwnerSharingCircle(0);
  v3 = *(v1 + v2[7]);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[4];
  v7 = v0[5];
  v28 = sub_100B04978((&off_10164ED98)[v3]);
  v8 = *(v7 + 16);
  v8(v4, v1 + v2[5], v6);
  v8(v5, v1 + v2[6], v6);
  if (qword_101694560 != -1)
  {
    swift_once();
  }

  v9 = v0[6];
  v10 = v0[4];
  v11 = sub_1000076D4(v10, qword_10177A900);
  v8(v9, v11, v10);
  v26 = 0x4000201u >> (8 * v3);
  v27 = 8u >> (v3 & 0xF);
  v13 = v0[9];
  v12 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  v19 = sub_100907F84(_swiftEmptyArrayStorage);
  UUID.init()();
  v20 = *(v17 + 32);
  v20(v12 + v13[5], v14, v18);
  v20(v12 + v13[6], v15, v18);
  v20(v12 + v13[7], v16, v18);
  *(v12 + v13[8]) = v28;
  *(v12 + v13[9]) = v26;
  *(v12 + v13[10]) = 1;
  *(v12 + v13[11]) = v19;
  static Date.trustedNow.getter(v12 + v13[12]);
  if (v27)
  {
    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    v21[1] = sub_100C75CF4;
    v22 = v0[10];

    return sub_100CAAC60(v22);
  }

  else
  {
    v24 = swift_task_alloc();
    v0[12] = v24;
    *v24 = v0;
    v24[1] = sub_100C75E20;
    v25 = v0[10];

    return sub_100CB753C(v25, 0);
  }
}

uint64_t sub_100C75CF4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[14] = v1;
    v5 = v4[3];
    v6 = sub_100C75FFC;
  }

  else
  {
    v5 = v4[3];
    v4[13] = a1;
    v6 = sub_100C75F4C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C75E20(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[14] = v1;
    v5 = v4[3];
    v6 = sub_100C75FFC;
  }

  else
  {
    v5 = v4[3];
    v4[13] = a1;
    v6 = sub_100C75F4C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C75F4C()
{
  sub_100018D00(v0[10], type metadata accessor for SharingCircleKeyManager.Instruction);

  v1 = v0[1];
  v2 = v0[13];

  return v1(v2);
}

uint64_t sub_100C75FFC()
{
  sub_100018D00(*(v0 + 80), type metadata accessor for SharingCircleKeyManager.Instruction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C760A8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100C76138, v1, 0);
}

uint64_t sub_100C76138()
{
  v1 = v0[12];
  v2 = type metadata accessor for OwnerSharingCircle(0);
  v0[15] = v2;
  v3 = *(v2 + 20);
  if (*(v1 + *(v2 + 28)) == 3)
  {
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_100C76274;
    v5 = v0[14];

    return sub_100C7B39C(v5, v1 + v3);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_100C7671C;

    return sub_100C7BA0C((v0 + 2), v1 + v3);
  }
}

uint64_t sub_100C76274()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1003C2A74;
  }

  else
  {
    v4 = sub_100C763A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C763A0()
{
  v1 = *(v0[12] + *(v0[15] + 32));
  v0[18] = v1;
  v0[11] = v1;

  v2 = swift_task_alloc();
  v0[19] = v2;
  v3 = sub_1000BC4D4(&qword_1016B9BF0, &qword_1013E3790);
  v4 = type metadata accessor for OwnerPeerTrust(0);
  v5 = sub_1000041A4(&qword_1016B9BF8, &qword_1016B9BF0, &qword_1013E3790, &protocol conformance descriptor for [A : B].Keys);
  *v2 = v0;
  v2[1] = sub_100C764E0;
  v6 = v0[13];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E37A0, v6, v3, v4, v5);
}

uint64_t sub_100C764E0(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[13];

    return _swift_task_switch(sub_100C76624, v5, 0);
  }
}

uint64_t sub_100C76624()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 96);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v0 + 104);
  *(v4 + 32) = v3;
  v5 = sub_1005C6BF0(sub_100D13DB8, v4, v1);
  v6 = *(v0 + 112);

  sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

  v8 = *(v0 + 8);
  if (!v2)
  {
    v7 = v5;
  }

  return v8(v7);
}

uint64_t sub_100C7671C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 104);

    return _swift_task_switch(sub_100C76868, v6, 0);
  }
}

uint64_t sub_100C76868()
{
  v1 = *(v0[12] + *(v0[15] + 32));
  v0[23] = v1;
  v0[10] = v1;

  v2 = swift_task_alloc();
  v0[24] = v2;
  v3 = sub_1000BC4D4(&qword_1016B9BF0, &qword_1013E3790);
  v4 = type metadata accessor for OwnerPeerTrust(0);
  v5 = sub_1000041A4(&qword_1016B9BF8, &qword_1016B9BF0, &qword_1013E3790, &protocol conformance descriptor for [A : B].Keys);
  *v2 = v0;
  v2[1] = sub_100C769A8;
  v6 = v0[13];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E3788, v6, v3, v4, v5);
}

uint64_t sub_100C769A8(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[13];

    return _swift_task_switch(sub_100C76AEC, v5, 0);
  }
}

uint64_t sub_100C76AEC()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[12];
  v3 = v0[13];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v0 + 2;
  v5[4] = v4;
  v6 = sub_1005C6BF0(sub_100D13CEC, v5, v1);
  sub_1001BAF34((v0 + 2));

  v8 = v0[1];
  if (!v2)
  {
    v7 = v6;
  }

  return v8(v7);
}

uint64_t sub_100C76BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C76CA4, 0, 0);
}

uint64_t sub_100C76CA4()
{
  v1 = *(*(v0 + 32) + 120);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100C76CC8, v1, 0);
}

uint64_t sub_100C76CC8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v7 = v0;
  v7[1] = sub_100D148FC;
  v9 = v0[2];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D1492C, v6, v8);
}

uint64_t sub_100C76E40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for OwnerSharingCircle(0);
  result = sub_100CA1724(a1, a2, (a3 + *(v9 + 20)), a4);
  if (!v4)
  {
    v11 = type metadata accessor for KeyDropCreateRequest.Member(0);
    return (*(*(v11 - 8) + 56))(a4, 0, 1, v11);
  }

  return result;
}

uint64_t sub_100C76EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C76FC4, 0, 0);
}

uint64_t sub_100C76FC4()
{
  v1 = *(*(v0 + 32) + 120);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100C76FE8, v1, 0);
}

uint64_t sub_100C76FE8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v7 = v0;
  v7[1] = sub_100B4189C;
  v9 = v0[2];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D1492C, v6, v8);
}

uint64_t sub_100C77160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for OwnerSharingCircle(0);
  result = sub_100CA2188(a1, a2, (a3 + *(v9 + 20)), a4);
  if (!v4)
  {
    v11 = type metadata accessor for KeyDropCreateRequest.Member(0);
    return (*(*(v11 - 8) + 56))(a4, 0, 1, v11);
  }

  return result;
}

uint64_t sub_100C77218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = v5;
  *(v6 + 244) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  *(v6 + 96) = *(type metadata accessor for KeyDropInterface.KeyPackage(0) - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_100C7734C, v5, 0);
}

uint64_t sub_100C7734C()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
  sub_100D13B44();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v23 = *(v0 + 244);
  v3 = *(v0 + 72);
  v25 = *(v0 + 80);

  v24 = *(v0 + 40);
  *(v0 + 168) = v24;
  v22 = sub_10112A6E4(&off_101608B90);
  v4 = type metadata accessor for MemberSharingCircle(0);
  v5 = v4[7];
  v6 = v2[5];
  v7 = type metadata accessor for UUID();
  *(v0 + 176) = v7;
  v8 = *(*(v7 - 8) + 16);
  v8(v1 + v6, v3 + v5, v7);
  v8(v1 + v2[6], v3 + v4[6], v7);
  v8(v1 + v2[7], v3 + v4[8], v7);
  v9 = sub_100907F84(_swiftEmptyArrayStorage);
  UUID.init()();
  *(v1 + v2[8]) = v22;
  *(v1 + v2[9]) = v23;
  *(v1 + v2[10]) = 1;
  *(v1 + v2[11]) = v9;
  static Date.trustedNow.getter(v1 + v2[12]);
  v10 = (v25 + *(type metadata accessor for MemberPeerTrust(0) + 36));
  *(v0 + 184) = *v10;
  *(v0 + 192) = v10[1];
  v11 = *(v24 + 16);
  *(v0 + 200) = v11;
  if (v11)
  {
    v12 = *(v0 + 96);
    *(v0 + 240) = *(v12 + 80);
    *(v0 + 208) = *(v12 + 72);
    *(v0 + 216) = 0;
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    sub_100D11DC8(*(v0 + 168) + ((*(v0 + 240) + 32) & ~*(v0 + 240)), v15, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100CA0FC8(v15, v13, v14, v16);
    v17 = swift_task_alloc();
    *(v0 + 224) = v17;
    *v17 = v0;
    v17[1] = sub_100C77B9C;
    v18 = *(v0 + 160);
    v19 = *(v0 + 112);

    return sub_100C8DBA8(v19, v18);
  }

  else
  {

    sub_100018D00(*(v0 + 160), type metadata accessor for SharingCircleKeyManager.Instruction);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100C77B9C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_100C78328;
  }

  else
  {
    v4 = sub_100C77CC8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C77CC8()
{
  v56 = v0;
  v1 = *(v0 + 120);
  sub_100018D00(*(v0 + 112), type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100018D00(v1, type metadata accessor for KeyDropInterface.KeyPackage);
  v2 = *(v0 + 216) + 1;
  if (v2 == *(v0 + 200))
  {
LABEL_2:

    sub_100018D00(*(v0 + 160), type metadata accessor for SharingCircleKeyManager.Instruction);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 232);
    while (1)
    {
      *(v0 + 216) = v2;
      v29 = *(v0 + 184);
      v30 = *(v0 + 192);
      v32 = *(v0 + 112);
      v31 = *(v0 + 120);
      sub_100D11DC8(*(v0 + 168) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 208) * v2, v31, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100CA0FC8(v31, v29, v30, v32);
      if (!v5)
      {
        break;
      }

      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 152);
      v34 = *(v0 + 160);
      v36 = *(v0 + 136);
      v35 = *(v0 + 144);
      v37 = *(v0 + 120);
      v38 = *(v0 + 104);
      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177BF08);
      sub_100D11DC8(v34, v33, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v34, v35, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v34, v36, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v37, v38, type metadata accessor for KeyDropInterface.KeyPackage);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v53 = v41;
        v7 = *(v0 + 144);
        v6 = *(v0 + 152);
        v54 = *(v0 + 120);
        v51 = *(v0 + 136);
        v52 = *(v0 + 104);
        v8 = swift_slowAlloc();
        v55[0] = swift_slowAlloc();
        *v8 = 136447747;
        log = v40;
        v9 = sub_100C71778();
        v11 = v10;
        sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
        v12 = sub_1000136BC(v9, v11, v55);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2160;
        *(v8 + 14) = 1752392040;
        *(v8 + 22) = 2081;
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;
        sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
        v16 = sub_1000136BC(v13, v15, v55);

        *(v8 + 24) = v16;
        *(v8 + 32) = 2160;
        *(v8 + 34) = 1752392040;
        *(v8 + 42) = 2081;
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
        v20 = sub_1000136BC(v17, v19, v55);

        *(v8 + 44) = v20;
        *(v8 + 52) = 2080;
        v21 = sub_10125403C(*v52);
        v23 = v22;
        sub_100018D00(v52, type metadata accessor for KeyDropInterface.KeyPackage);
        v24 = sub_1000136BC(v21, v23, v55);

        *(v8 + 54) = v24;
        *(v8 + 62) = 2082;
        swift_getErrorValue();
        v25 = Error.localizedDescription.getter();
        v27 = sub_1000136BC(v25, v26, v55);

        *(v8 + 64) = v27;
        _os_log_impl(&_mh_execute_header, log, v53, "Failed to save key initial key package %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s,\n packageType: %s, error: %{public}s.", v8, 0x48u);
        swift_arrayDestroy();

        v28 = v54;
      }

      else
      {
        v42 = *(v0 + 144);
        v43 = *(v0 + 152);
        v44 = *(v0 + 136);
        v45 = *(v0 + 120);
        v46 = *(v0 + 104);

        sub_100018D00(v46, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v42, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = v45;
      }

      sub_100018D00(v28, type metadata accessor for KeyDropInterface.KeyPackage);
      v5 = 0;
      v2 = *(v0 + 216) + 1;
      if (v2 == *(v0 + 200))
      {
        goto LABEL_2;
      }
    }

    v47 = swift_task_alloc();
    *(v0 + 224) = v47;
    *v47 = v0;
    v47[1] = sub_100C77B9C;
    v48 = *(v0 + 160);
    v49 = *(v0 + 112);

    return sub_100C8DBA8(v49, v48);
  }
}

uint64_t sub_100C78328()
{
  v54 = v0;
  sub_100018D00(*(v0 + 112), type metadata accessor for KeyDropInterface.KeyPackage);
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v2, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v2, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v6, type metadata accessor for KeyDropInterface.KeyPackage);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v51 = v9;
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v52 = *(v0 + 120);
    v49 = *(v0 + 136);
    v50 = *(v0 + 104);
    v12 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v12 = 136447747;
    log = v8;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, v53);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v53);

    *(v12 + 24) = v20;
    *(v12 + 32) = 2160;
    *(v12 + 34) = 1752392040;
    *(v12 + 42) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v49, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v53);

    *(v12 + 44) = v24;
    *(v12 + 52) = 2080;
    v25 = sub_10125403C(*v50);
    v27 = v26;
    sub_100018D00(v50, type metadata accessor for KeyDropInterface.KeyPackage);
    v28 = sub_1000136BC(v25, v27, v53);

    *(v12 + 54) = v28;
    *(v12 + 62) = 2082;
    swift_getErrorValue();
    v29 = Error.localizedDescription.getter();
    v31 = sub_1000136BC(v29, v30, v53);

    *(v12 + 64) = v31;
    _os_log_impl(&_mh_execute_header, log, v51, "Failed to save key initial key package %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s,\n packageType: %s, error: %{public}s.", v12, 0x48u);
    swift_arrayDestroy();

    v32 = v52;
  }

  else
  {
    v33 = *(v0 + 144);
    v34 = *(v0 + 152);
    v35 = *(v0 + 136);
    v36 = *(v0 + 120);
    v37 = *(v0 + 104);

    sub_100018D00(v37, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
    v32 = v36;
  }

  sub_100018D00(v32, type metadata accessor for KeyDropInterface.KeyPackage);
  v38 = *(v0 + 216) + 1;
  if (v38 == *(v0 + 200))
  {

    sub_100018D00(*(v0 + 160), type metadata accessor for SharingCircleKeyManager.Instruction);

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {
    *(v0 + 216) = v38;
    v39 = *(v0 + 184);
    v40 = *(v0 + 192);
    v42 = *(v0 + 112);
    v41 = *(v0 + 120);
    sub_100D11DC8(*(v0 + 168) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 208) * v38, v41, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100CA0FC8(v41, v39, v40, v42);
    v45 = swift_task_alloc();
    *(v0 + 224) = v45;
    *v45 = v0;
    v45[1] = sub_100C77B9C;
    v46 = *(v0 + 160);
    v47 = *(v0 + 112);

    return sub_100C8DBA8(v47, v46);
  }
}

uint64_t sub_100C78964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a2;
  v4[12] = v3;
  v4[10] = a1;
  v4[13] = *v3;
  sub_1000BC4D4(&qword_1016B9AF8, &unk_1013E35F8);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for KeyDropJoinToken(0);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[18] = v7;
  *v7 = v4;
  v7[1] = sub_100C78AC4;

  return sub_100C7BA0C((v4 + 2), a3);
}

uint64_t sub_100C78AC4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_100C78DE4;
  }

  else
  {
    v4 = sub_100C78BF0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C78BF0()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[6];

  sub_1001BAF34((v0 + 2));
  *(swift_task_alloc() + 16) = v5;
  sub_1012BB600(sub_100D14930, v6, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10000B3A8(v0[14], &qword_1016B9AF8, &unk_1013E35F8);
    sub_1001BAEE0();
    swift_allocError();
    *v7 = 13;
    swift_willThrow();
LABEL_5:

    v10 = v0[1];
    goto LABEL_6;
  }

  v8 = v0[17];
  sub_100D12974(v0[14], v8, type metadata accessor for KeyDropJoinToken);
  sub_100C710B4(v8);
  v9 = v0[17];
  if (v1)
  {
    sub_100018D00(v9, type metadata accessor for KeyDropJoinToken);
    goto LABEL_5;
  }

  sub_100018D00(v9, type metadata accessor for KeyDropJoinToken);

  v10 = v0[1];
LABEL_6:

  return v10();
}

uint64_t sub_100C78DE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C78E54(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for SymmetricKey256();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for PeerCommunicationIdentifier(0);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for OwnerPeerTrust(0);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[16] = v6;
  v7 = *(v6 - 8);
  v3[17] = v7;
  v3[18] = *(v7 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v3[21] = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle(0);
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_100C79140, v2, 0);
}

uint64_t sub_100C79140(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 32);
  URLComponents.init()();
  v4 = *(v2 + 20);
  *(v1 + 280) = v4;
  v5 = swift_task_alloc();
  *(v1 + 216) = v5;
  *v5 = v1;
  v5[1] = sub_100C791F8;
  v6 = *(v1 + 208);

  return sub_100C7B39C(v6, v3 + v4);
}

uint64_t sub_100C791F8()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100C79F8C;
  }

  else
  {
    v4 = sub_100C79324;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C79324()
{
  v1 = *(*(v0 + 40) + 120);
  *(v0 + 232) = v1;
  return _swift_task_switch(sub_100C79348, v1, 0);
}

uint64_t sub_100C79348()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  (*(v4 + 16))(v2, *(v0 + 32) + *(v0 + 280), v3);
  v5 = *(v4 + 80);
  *(v0 + 284) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 240) = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v3);

  v8 = swift_task_alloc();
  *(v0 + 248) = v8;
  *v8 = v0;
  v8[1] = sub_100C794B8;
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D14928, v7, v10);
}

uint64_t sub_100C794B8()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100C795E4, v1, 0);
}

uint64_t sub_100C795E4()
{
  v1 = v0[22];
  v2 = v0[21];
  if ((*(v0[23] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[26];
    v4 = v0[3];
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    sub_1001BAEE0();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    v6 = type metadata accessor for URLComponents();
    (*(*(v6 - 8) + 8))(v4, v6);
    sub_100018D00(v3, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v7 = v0[1];

    return v7();
  }

  v9 = v0[24];
  sub_100D12974(v2, v9, type metadata accessor for OwnerSharingCircle);
  v10 = *(v9 + *(v1 + 32));
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = sub_1003A85FC(*(v10 + 16), 0);
  v13 = sub_1003CC2CC();

  sub_1000128F8(v19);
  if (v13 != v11)
  {
    __break(1u);
LABEL_8:
    v12 = _swiftEmptyArrayStorage;
  }

  v0[32] = v12;
  v0[2] = v12;
  v14 = swift_task_alloc();
  v0[33] = v14;
  v15 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v16 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0, &protocol conformance descriptor for [A]);
  *v14 = v0;
  v14[1] = sub_100C7992C;
  v17 = v0[12];
  v18 = v0[5];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E3770, v18, v15, v17, v16);
}

uint64_t sub_100C7992C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 272) = a1;

  if (v1)
  {
  }

  else
  {
    v5 = *(v3 + 40);

    return _swift_task_switch(sub_100C79A70, v5, 0);
  }
}

void sub_100C79A70()
{
  v1 = v0[34];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[12];
    v4 = v0[13];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = v0[14];
      v7 = v0[11];
      sub_100D11DC8(v0[34] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v6, type metadata accessor for OwnerPeerTrust);
      v8 = *(v5 + 28);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v6) = sub_10098BFC0(v6 + v8, v7);
      sub_100018D00(v7, type metadata accessor for PeerCommunicationIdentifier);
      if (v6)
      {
        break;
      }

      ++v3;
      sub_100018D00(v0[14], type metadata accessor for OwnerPeerTrust);
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[14];
    v19 = v0[15];
    v20 = v0[12];
    v21 = v0[13];
    v22 = v0[7];
    v23 = v0[8];
    v24 = v0[6];

    sub_100D12974(v18, v19, type metadata accessor for OwnerPeerTrust);
    (*(v21 + 56))(v19, 0, 1, v20);
    sub_10000B3A8(v19, &qword_101697798, &unk_10138C4F0);
    sub_1000D2A70(v16 + *(v17 + 20), v24, &qword_101698360, &qword_1013E35F0);
    if ((*(v23 + 48))(v24, 1, v22) == 1)
    {
      sub_10000B3A8(v0[6], &qword_101698360, &qword_1013E35F0);
LABEL_11:
      v9 = v0[26];
      v10 = v0[24];
      v15 = 21;
      v14 = v0[3];
      goto LABEL_12;
    }

    v25 = v0[25];
    v26 = v0[26];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    if (*(v26 + *(v25 + 24) + 8) >> 60 == 15)
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
      goto LABEL_11;
    }

    v30 = v0[26];
    v31 = v0[24];
    v33 = v0[8];
    v32 = v0[9];
    v38 = v0[7];
    v34 = SymmetricKey256.data.getter();
    v36 = v35;
    v37 = Data.base64EncodedString(options:)(0);
    sub_100016590(v34, v36);
    String.append(_:)(v37);

    URLComponents.fragment.setter();
    (*(v33 + 8))(v32, v38);
    sub_100018D00(v31, type metadata accessor for OwnerSharingCircle);
    sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v29 = v0[1];
  }

  else
  {
LABEL_6:
    v9 = v0[26];
    v10 = v0[24];
    v11 = v0[15];
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[3];

    (*(v13 + 56))(v11, 1, 1, v12);
    sub_10000B3A8(v11, &qword_101697798, &unk_10138C4F0);
    v15 = 14;
LABEL_12:
    sub_1001BAEE0();
    swift_allocError();
    *v27 = v15;
    swift_willThrow();
    sub_100018D00(v10, type metadata accessor for OwnerSharingCircle);
    v28 = type metadata accessor for URLComponents();
    (*(*(v28 - 8) + 8))(v14, v28);
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v29 = v0[1];
  }

  v29();
}

uint64_t sub_100C79F8C()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for URLComponents();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100C7A0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C7A174, 0, 0);
}

uint64_t sub_100C7A174()
{
  v1 = *(*(v0 + 32) + 120);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100C7A198, v1, 0);
}

uint64_t sub_100C7A198()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v7 = v0;
  v7[1] = sub_100D148FC;
  v9 = v0[2];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D1492C, v6, v8);
}

uint64_t sub_100C7A310(uint64_t a1, uint64_t a2)
{
  v3[59] = a2;
  v3[60] = v2;
  v3[58] = a1;
  v5 = type metadata accessor for KeyDropJoinToken(0);
  v3[61] = v5;
  v3[62] = *(v5 - 8);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle(0);
  v3[65] = v6;
  v3[66] = swift_task_alloc();
  v7 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v3[67] = v7;
  v3[68] = *(v7 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  v3[71] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[72] = v8;
  v3[73] = *(v8 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v3[77] = swift_task_alloc();
  v9 = *(v6 + 20);
  v10 = swift_task_alloc();
  v3[78] = v10;
  *v10 = v3;
  v10[1] = sub_100C7A598;

  return sub_100C7BA0C((v3 + 46), a1 + v9);
}

uint64_t sub_100C7A598()
{
  v2 = *v1;
  v2[79] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[60];

    return _swift_task_switch(sub_100C7A760, v5, 0);
  }
}

void sub_100C7A760()
{
  v96 = v0;
  v1 = *(v0 + 376);
  if (v1 >> 60 == 15)
  {
    sub_1001BAEE0();
    swift_allocError();
    *v2 = 15;
    swift_willThrow();
    sub_1001BAF34(v0 + 368);
LABEL_3:

    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = *(v0 + 368);
  v5 = *(v0 + 632);
  v6 = *(v0 + 600);
  v7 = *(v0 + 464);
  sub_100017D5C(v4, *(v0 + 376));
  v8 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v7, v6);
  objc_autoreleasePoolPop(v8);
  if (v5)
  {
    return;
  }

  v9 = *(v0 + 592);
  v10 = *(v0 + 464);
  v11 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v10, v9);
  objc_autoreleasePoolPop(v11);
  v12 = *(v0 + 616);
  v13 = *(v0 + 608);
  v14 = *(v0 + 592);
  v15 = *(v0 + 576);
  v16 = *(*(v0 + 584) + 32);
  v16(v12, *(v0 + 600), v15);
  *(v12 + *(v13 + 20)) = 0;
  v16(v12 + *(v13 + 24), v14, v15);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  *(v0 + 432) = v4;
  *(v0 + 440) = v1;
  sub_100313230();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v19 = v18;
  v20 = *(v0 + 568);
  v21 = *(v0 + 472);
  v22 = v17;

  sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v24 = type metadata accessor for EncryptedData();
  v90 = *(*(v24 - 8) + 56);
  v91 = v24;
  v90(v20, 1, 1);
  sub_100017D5C(v22, v19);
  v94 = v22;
  sub_10125A120(0, v22, v19, v20, (v0 + 296));
  *(inited + 32) = *(v0 + 296);
  v25 = *(v0 + 312);
  v26 = *(v0 + 328);
  v27 = *(v0 + 344);
  *(inited + 96) = *(v0 + 360);
  *(inited + 64) = v26;
  *(inited + 80) = v27;
  *(inited + 48) = v25;
  v28 = (v21 + *(type metadata accessor for OwnerPeerTrust(0) + 36));
  v29 = *v28;
  v30 = v28[1];
  sub_100017D5C(*v28, v30);
  v31 = sub_100D11764(inited, v29, v30);
  v32 = *(v0 + 616);
  v83 = v28;
  v85 = v31;
  v89 = v19;
  v33 = *(v0 + 560);
  v34 = *(v0 + 536);
  v88 = *(v0 + 472);
  sub_100016590(v29, v30);
  swift_setDeallocating();
  sub_100391554(inited + 32);
  sub_100D11DC8(v32, &v33[*(v34 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
  *v33 = 7;
  v82 = v34;
  *&v33[*(v34 + 24)] = v85;
  v35 = *(v0 + 400);
  v36 = swift_task_alloc();
  *(v36 + 16) = v88;

  v37 = sub_10013D028(sub_100D13A2C, v36, v35);

  v38 = v37[2];
  if (v38 > 1)
  {
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 528);
    v40 = *(v0 + 464);
    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177BF08);
    sub_100D11DC8(v40, v39, type metadata accessor for OwnerSharingCircle);
    swift_bridgeObjectRetain_n();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 528);
    if (v44)
    {
      log = v42;
      v86 = v43;
      v46 = *(v0 + 528);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v95 = v48;
      *v47 = 141558531;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      sub_100018D00(v46, type metadata accessor for OwnerSharingCircle);
      v52 = sub_1000136BC(v49, v51, &v95);

      *(v47 + 14) = v52;
      *(v47 + 22) = 2048;
      v53 = v37[2];

      *(v47 + 24) = v53;

      _os_log_impl(&_mh_execute_header, log, v86, "Multiple join tokens found for ownerCircle: %{private,mask.hash}s, count: %ld.", v47, 0x20u);
      sub_100007BAC(v48);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_100018D00(v45, type metadata accessor for OwnerSharingCircle);
    }

    v38 = v37[2];
  }

  if (!v38)
  {
    v58 = *(v0 + 616);
    v59 = *(v0 + 560);

    sub_1001BAEE0();
    swift_allocError();
    *v60 = 13;
    swift_willThrow();
    sub_100006654(v4, v1);
    sub_1001BAF34(v0 + 368);
    sub_100016590(v94, v89);
    sub_100018D00(v59, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v58, type metadata accessor for KeyDropInterface.KeyAlignment);
    goto LABEL_3;
  }

  v54 = *(v0 + 504);
  v55 = *(v0 + 512);
  v56 = *(*(v0 + 496) + 80);
  sub_100D11DC8(v37 + ((v56 + 32) & ~v56), v54, type metadata accessor for KeyDropJoinToken);

  sub_100D12974(v54, v55, type metadata accessor for KeyDropJoinToken);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100D13BF8(&qword_1016B9BD8, type metadata accessor for KeyDropJoinToken, &unk_1014011BC);
  v57 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v61 = *(v0 + 568);
  v62 = v57;
  v64 = v63;

  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_101385D80;
  (v90)(v61, 1, 1, v91);
  sub_100017D5C(v62, v64);
  v92 = v62;
  v93 = v64;
  sub_10125A120(0, v62, v64, v61, (v0 + 224));
  *(v65 + 32) = *(v0 + 224);
  v66 = *(v0 + 240);
  v67 = *(v0 + 256);
  v68 = *(v0 + 272);
  *(v65 + 96) = *(v0 + 288);
  *(v65 + 64) = v67;
  *(v65 + 80) = v68;
  *(v65 + 48) = v66;
  v70 = *v83;
  v69 = v83[1];
  sub_100017D5C(*v83, v69);
  v71 = sub_100D11764(v65, v70, v69);
  v72 = *(v0 + 616);
  v84 = *(v0 + 560);
  v73 = *(v0 + 552);
  v74 = *(v0 + 544);
  v87 = *(v0 + 512);
  loga = v71;
  sub_100016590(v70, v69);
  swift_setDeallocating();
  sub_100391554(v65 + 32);
  sub_100D11DC8(v72, &v73[*(v82 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
  *v73 = 11;
  *&v73[*(v82 + 24)] = loga;
  sub_1000BC4D4(&qword_1016B3D18, &qword_1013E3760);
  v75 = *(v74 + 72);
  v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_10138BBE0;
  v78 = v77 + v76;
  sub_100D11DC8(v84, v78, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100D12974(v73, v78 + v75, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100006654(v4, v1);
  sub_1001BAF34(v0 + 368);
  sub_100016590(v92, v93);
  sub_100016590(v94, v89);
  sub_100018D00(v87, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v84, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100018D00(v72, type metadata accessor for KeyDropInterface.KeyAlignment);

  v79 = *(v0 + 8);

  v79(v77);
}

uint64_t sub_100C7B39C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C7B474, 0, 0);
}

uint64_t sub_100C7B474()
{
  v1 = *(*(v0 + 40) + 120);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_100C7B498, v1, 0);
}

uint64_t sub_100C7B498()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[6];
  v5 = v0[4];
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[14] = v8;
  *(v8 + 16) = v2;
  (*(v3 + 32))(v8 + v7, v1, v4);

  v9 = swift_task_alloc();
  v0[15] = v9;
  v10 = sub_1000BC4D4(&qword_10169C9A8, &qword_101398A30);
  *v9 = v0;
  v9[1] = sub_100C7B61C;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_100D14924, v8, v10);
}

uint64_t sub_100C7B61C()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100C7B748, v1, 0);
}

uint64_t sub_100C7B76C()
{
  v22 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE28);
  v1(v2, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 128);
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 134218499;
    *(v13 + 4) = *(v9 + 16);

    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Got %ld keys in the delegated keychain for %{private,mask.hash}s.", v13, 0x20u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  sub_100C72C38(*(v0 + 128), *(v0 + 24));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100C7BA0C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for UUID();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100C7BAD8, 0, 0);
}

uint64_t sub_100C7BAD8()
{
  v1 = *(*(v0 + 104) + 120);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100C7BAFC, v1, 0);
}

uint64_t sub_100C7BAFC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[14];
  (*(v3 + 16))(v1, v0[12], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[19] = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);

  v7 = swift_task_alloc();
  v0[20] = v7;
  v8 = sub_1000BC4D4(&qword_10169C9A8, &qword_101398A30);
  *v7 = v0;
  v7[1] = sub_100C7BC74;

  return unsafeBlocking<A>(context:_:)(v0 + 10, 0xD000000000000010, 0x800000010134A8C0, sub_100D1398C, v6, v8);
}

uint64_t sub_100C7BC74()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_100C7BDA0, v1, 0);
}

uint64_t sub_100C7BDC4()
{
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF08);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 168);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Got %ld keys in the sharing circle secrets keychain.", v6, 0xCu);
  }

  else
  {
  }

  sub_100D0E5C0(*(v0 + 168), v0 + 16);
  v7 = *(v0 + 88);
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v10 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v10;
  *v7 = v8;
  v7[1] = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100C7BF64(uint64_t a1, char a2)
{
  *(v3 + 188) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100C7C07C, v2, 0);
}

uint64_t sub_100C7C07C()
{
  v39 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 112) = v2;
  if (v2)
  {
    v3 = *(*(v0 + 40) + 80);
    *(v0 + 184) = v3;
    *(v0 + 189) = 0;
    *(v0 + 120) = 1;
    sub_100D11DC8(v1 + ((v3 + 32) & ~v3), *(v0 + 104), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = type metadata accessor for Logger();
    *(v0 + 128) = sub_1000076D4(v8, qword_10177BF08);
    sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v5, v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v5, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    if (v11)
    {
      v37 = v10;
      v15 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v15 = 136447235;
      v16 = sub_100C71778();
      v18 = v17;
      sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
      v19 = sub_1000136BC(v16, v18, v38);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
      v23 = sub_1000136BC(v20, v22, v38);

      *(v15 + 24) = v23;
      *(v15 + 32) = 2160;
      *(v15 + 34) = 1752392040;
      *(v15 + 42) = 2081;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
      v27 = sub_1000136BC(v24, v26, v38);

      *(v15 + 44) = v27;
      _os_log_impl(&_mh_execute_header, v9, v37, "Upload keys: %{public}s, share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v15, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v31 = *(*(v0 + 104) + *(*(v0 + 32) + 36));
    *(v0 + 190) = v31;
    if (v31 == 4)
    {
      v32 = swift_task_alloc();
      *(v0 + 136) = v32;
      *v32 = v0;
      v32[1] = sub_100C7C5E4;
      v33 = *(v0 + 104);

      return sub_100CAAC60(v33);
    }

    else
    {
      v34 = swift_task_alloc();
      *(v0 + 144) = v34;
      *v34 = v0;
      v34[1] = sub_100C7C710;
      v35 = *(v0 + 104);
      v36 = *(v0 + 188);

      return sub_100CB753C(v35, v36);
    }
  }

  else
  {
    sub_1001BAEE0();
    swift_allocError();
    *v28 = 20;
    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_100C7C5E4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[20] = v1;
    v5 = v4[3];
    v6 = sub_100C7D12C;
  }

  else
  {
    v5 = v4[3];
    v4[19] = a1;
    v6 = sub_100C7C83C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C7C710(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[20] = v1;
    v5 = v4[3];
    v6 = sub_100C7D12C;
  }

  else
  {
    v5 = v4[3];
    v4[19] = a1;
    v6 = sub_100C7C83C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C7C83C()
{
  v64 = v0;
  if (*(*(v0 + 152) + 16))
  {
    v1 = *(v0 + 104);
    v2 = *(*(v0 + 32) + 20);
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    *v3 = v0;
    v3[1] = sub_100C7D208;
    v4 = *(v0 + 152);
    v5 = *(v0 + 190);

    return sub_10105B150(v1 + v2, v5, v4);
  }

  v7 = *(v0 + 104);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);

  sub_100D11DC8(v7, v8, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v7, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 104);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v16 = 141558787;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v60 = v11;
    type metadata accessor for UUID();
    v62 = v13;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v15, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v63);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v63);

    *(v16 + 34) = v24;
    _os_log_impl(&_mh_execute_header, v10, v60, "No keys to upload for share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v16, 0x2Au);
    swift_arrayDestroy();

    v25 = v62;
  }

  else
  {

    sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v15, type metadata accessor for SharingCircleKeyManager.Instruction);
    v25 = v13;
  }

  sub_100018D00(v25, type metadata accessor for SharingCircleKeyManager.Instruction);
  v27 = *(v0 + 112);
  v26 = *(v0 + 120);
  if (v26 == v27)
  {
    if ((*(v0 + 189) & 1) == 0)
    {
      sub_1001BAEE0();
      swift_allocError();
      *v53 = 20;
      swift_willThrow();
    }

    v28 = *(v0 + 8);

    return v28();
  }

  if (v26 >= v27)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 120) = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      sub_100D11DC8(*(v0 + 16) + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 40) + 72) * v26, *(v0 + 104), type metadata accessor for SharingCircleKeyManager.Instruction);
      if (qword_101694DF8 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_30:
  swift_once();
LABEL_14:
  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  v32 = *(v0 + 80);
  v31 = *(v0 + 88);
  v33 = type metadata accessor for Logger();
  *(v0 + 128) = sub_1000076D4(v33, qword_10177BF08);
  sub_100D11DC8(v30, v29, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v30, v31, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v30, v32, type metadata accessor for SharingCircleKeyManager.Instruction);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v38 = *(v0 + 88);
  v37 = *(v0 + 96);
  v39 = *(v0 + 80);
  if (v36)
  {
    v61 = v35;
    v40 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v40 = 136447235;
    v41 = sub_100C71778();
    v43 = v42;
    sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
    v44 = sub_1000136BC(v41, v43, v63);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2160;
    *(v40 + 14) = 1752392040;
    *(v40 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);
    v48 = sub_1000136BC(v45, v47, v63);

    *(v40 + 24) = v48;
    *(v40 + 32) = 2160;
    *(v40 + 34) = 1752392040;
    *(v40 + 42) = 2081;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    sub_100018D00(v39, type metadata accessor for SharingCircleKeyManager.Instruction);
    v52 = sub_1000136BC(v49, v51, v63);

    *(v40 + 44) = v52;
    _os_log_impl(&_mh_execute_header, v34, v61, "Upload keys: %{public}s, share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v40, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v39, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v54 = *(*(v0 + 104) + *(*(v0 + 32) + 36));
  *(v0 + 190) = v54;
  if (v54 == 4)
  {
    v55 = swift_task_alloc();
    *(v0 + 136) = v55;
    *v55 = v0;
    v55[1] = sub_100C7C5E4;
    v56 = *(v0 + 104);

    return sub_100CAAC60(v56);
  }

  else
  {
    v57 = swift_task_alloc();
    *(v0 + 144) = v57;
    *v57 = v0;
    v57[1] = sub_100C7C710;
    v58 = *(v0 + 104);
    v59 = *(v0 + 188);

    return sub_100CB753C(v58, v59);
  }
}

uint64_t sub_100C7D12C()
{
  sub_100018D00(*(v0 + 104), type metadata accessor for SharingCircleKeyManager.Instruction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C7D208()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 24);

  if (v0)
  {
    v4 = sub_100C7DB10;
  }

  else
  {
    v4 = sub_100C7D350;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C7D350()
{
  v57 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  sub_100D11DC8(v1, *(v0 + 72), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v1, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v9 = 141558787;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v53 = v4;
    type metadata accessor for UUID();
    v55 = v6;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, &v56);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, &v56);

    *(v9 + 34) = v17;
    _os_log_impl(&_mh_execute_header, v3, v53, "Received key upload result for circle %{private,mask.hash}s beacon: %{private,mask.hash}s.", v9, 0x2Au);
    swift_arrayDestroy();

    v18 = v55;
  }

  else
  {

    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v18 = v6;
  }

  sub_100018D00(v18, type metadata accessor for SharingCircleKeyManager.Instruction);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  if (v19 == v20)
  {

    v21 = *(v0 + 8);

    return v21();
  }

  *(v0 + 189) = 1;
  if (v19 >= v20)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 120) = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      sub_100D11DC8(*(v0 + 16) + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 40) + 72) * v19, *(v0 + 104), type metadata accessor for SharingCircleKeyManager.Instruction);
      if (qword_101694DF8 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_11:
  v23 = *(v0 + 96);
  v24 = *(v0 + 104);
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = type metadata accessor for Logger();
  *(v0 + 128) = sub_1000076D4(v27, qword_10177BF08);
  sub_100D11DC8(v24, v23, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v24, v25, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v24, v26, type metadata accessor for SharingCircleKeyManager.Instruction);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v32 = *(v0 + 88);
  v31 = *(v0 + 96);
  v33 = *(v0 + 80);
  if (v30)
  {
    v54 = v29;
    v34 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v34 = 136447235;
    v35 = sub_100C71778();
    v37 = v36;
    sub_100018D00(v31, type metadata accessor for SharingCircleKeyManager.Instruction);
    v38 = sub_1000136BC(v35, v37, &v56);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2160;
    *(v34 + 14) = 1752392040;
    *(v34 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
    v42 = sub_1000136BC(v39, v41, &v56);

    *(v34 + 24) = v42;
    *(v34 + 32) = 2160;
    *(v34 + 34) = 1752392040;
    *(v34 + 42) = 2081;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
    v46 = sub_1000136BC(v43, v45, &v56);

    *(v34 + 44) = v46;
    _os_log_impl(&_mh_execute_header, v28, v54, "Upload keys: %{public}s, share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v34, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v31, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v47 = *(*(v0 + 104) + *(*(v0 + 32) + 36));
  *(v0 + 190) = v47;
  if (v47 == 4)
  {
    v48 = swift_task_alloc();
    *(v0 + 136) = v48;
    *v48 = v0;
    v48[1] = sub_100C7C5E4;
    v49 = *(v0 + 104);

    return sub_100CAAC60(v49);
  }

  else
  {
    v50 = swift_task_alloc();
    *(v0 + 144) = v50;
    *v50 = v0;
    v50[1] = sub_100C7C710;
    v51 = *(v0 + 104);
    v52 = *(v0 + 188);

    return sub_100CB753C(v51, v52);
  }
}

uint64_t sub_100C7DB10()
{
  sub_100018D00(*(v0 + 104), type metadata accessor for SharingCircleKeyManager.Instruction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C7DBEC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C7DC98, v1, 0);
}

uint64_t sub_100C7DC98()
{
  v28 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BF08);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v26 = v7;
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136447235;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, &v27);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, &v27);

    *(v12 + 24) = v20;
    *(v12 + 32) = 2160;
    *(v12 + 34) = 1752392040;
    *(v12 + 42) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, &v27);

    *(v12 + 44) = v24;
    _os_log_impl(&_mh_execute_header, v6, v26, "Generate package requests: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v12, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0[9] = qword_10177B348;

  return _swift_task_switch(sub_100C7E054, 0, 0);
}

uint64_t sub_100C7E054()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100C7E118;
  v2 = *(v0 + 72);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v2, &type metadata for Configuration);
}

uint64_t sub_100C7E118()
{

  return _swift_task_switch(sub_100C7E230, 0, 0);
}

uint64_t sub_100C7E230()
{
  v1 = v0[4];
  v0[11] = v0[2];
  return _swift_task_switch(sub_100C7E254, v1, 0);
}

uint64_t sub_100C7E254()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_101074B70(v0[11]);

  v4 = *(v2 + *(v1 + 44));
  v5 = *(v2 + *(v1 + 32));
  v6 = swift_task_alloc();
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  sub_1005C6A20(sub_100D1396C, v6, v5);
  v8 = v7;

  v9 = v0[1];

  return v9(v8);
}

void sub_100C7E360(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v47 = a4;
  v48 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v9 = __chkstk_darwin(v48);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  v14 = type metadata accessor for BookmarkMetaData(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (*(a2 + 16) && (v19 = sub_100771F0C(v18), (v20 & 1) != 0))
  {
    sub_100D11DC8(*(a2 + 56) + *(v15 + 72) * v19, v17, type metadata accessor for BookmarkMetaData);
    v21 = *(v17 + 1);
    sub_100018D00(v17, type metadata accessor for BookmarkMetaData);
  }

  else
  {
    v21 = 0;
  }

  if (((v18 - 10) < 9 || (v18 - 7) <= 1) && v21)
  {
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177BF08);
    sub_100D11DC8(a3, v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v25 = 136315651;
      v26 = sub_10125403C(v18);
      v28 = sub_1000136BC(v26, v27, &v49);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2160;
      *(v25 + 14) = 1752392040;
      *(v25 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
      v32 = sub_1000136BC(v29, v31, &v49);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "Already downloaded key type %s (Skipped),\nnot including in request for circle %{private,mask.hash}s.", v25, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v33 = 0;
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 2;
  }

  else
  {
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177BF08);
    sub_100D11DC8(a3, v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_20;
    }

    v37 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = v46;
    *v37 = 136315907;
    v38 = sub_10125403C(v18);
    v40 = sub_1000136BC(v38, v39, &v49);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v21;
    *(v37 + 22) = 2160;
    *(v37 + 24) = 1752392040;
    *(v37 + 32) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    v44 = sub_1000136BC(v41, v43, &v49);

    *(v37 + 34) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Downloading key type %s starting from last downloaded index %llu,\nfor circle %{private,mask.hash}s.", v37, 0x2Au);
    swift_arrayDestroy();

    if (v21)
    {
      while (1)
      {
        v45 = v21 + 1;
        if (v21 != -1)
        {
          break;
        }

        __break(1u);
LABEL_20:

        sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
        if (!v21)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v45 = 0;
    }

    *a5 = v18;
    a5[1] = v45;
    a5[2] = 0;
    v33 = v47;
  }

  a5[3] = v33;
}

unint64_t sub_100C7E99C(char a1)
{
  result = 0x7972616D697270;
  switch(a1)
  {
    case 1:
      return 0x7261646E6F636573;
    case 2:
      v3 = 9;
      goto LABEL_12;
    case 3:
      v3 = 11;
      goto LABEL_12;
    case 4:
      return 0x646E7542646C6977;
    case 5:
      return 0x417972616D697270;
    case 6:
      return 0xD000000000000010;
    case 7:
      return 0xD000000000000012;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0x697463656E6E6F63;
    case 10:
      return 0x656E774F7261656ELL;
    case 11:
      return 0x656B6F546E696F6ALL;
    case 12:
      v3 = 5;
LABEL_12:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x7461636F4C626577;
      break;
    case 15:
      result = 0x646174654D626577;
      break;
    case 16:
      result = 0x6D65744974736F6CLL;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100C7EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v4[22] = v7;
  v8 = *(v7 - 8);
  v4[23] = v8;
  v4[24] = *(v8 + 64);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[32] = v9;
  v4[33] = *(v9 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = type metadata accessor for KeyDropDownloadKeysMetadataResponse(0);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_100C7EED0, v3, 0);
}

uint64_t sub_100C7EED0()
{
  v1 = *(*(v0 + 96) + 120);
  *(v0 + 320) = v1;
  return _swift_task_switch(sub_100C7EEF4, v1, 0);
}

uint64_t sub_100C7EEF4()
{

  v1 = swift_task_alloc();
  v0[41] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[42] = v2;
  *v1 = v0;
  v1[1] = sub_100C7EFD8;
  v3 = v0[40];

  return unsafeBlocking<A>(context:_:)(v0 + 4, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100C7EFD8()
{
  v1 = *(*v0 + 320);

  return _swift_task_switch(sub_100C7F0F0, v1, 0);
}

uint64_t sub_100C7F0F0()
{
  v1 = v0[12];
  v0[43] = v0[4];
  return _swift_task_switch(sub_100C7F114, v1, 0);
}

uint64_t sub_100C7F114()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 72);
  *(v0 + 352) = *(*(v0 + 344) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v3 = *(v1 + 20);
  *(v0 + 28) = v3;
  v4 = *(v1 + 24);
  *(v0 + 576) = v4;
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = swift_task_alloc();
  *(v0 + 360) = v6;
  *v6 = v0;
  v6[1] = sub_100C7F214;
  v7 = *(v0 + 288);

  return sub_10068D5D4(v2 + v3, v2 + v4, v7);
}

uint64_t sub_100C7F214(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  v5 = v3[36];
  v6 = v3[33];
  v7 = v3[32];
  v8 = v3[12];
  v11 = *(v6 + 8);
  v9 = v6 + 8;
  v10 = v11;
  if (v1)
  {
    v10(v5, v7);

    v12 = sub_100C83EF0;
  }

  else
  {
    v4[48] = v10;
    v4[49] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v5, v7);

    v12 = sub_100C7F3DC;
  }

  return _swift_task_switch(v12, v8, 0);
}

uint64_t sub_100C7F3DC()
{
  v49 = v0;
  v1 = *(v0 + 368);
  if (v1[2])
  {
    v2 = v1[4];
    *(v0 + 400) = v2;
    v3 = v1[5];
    *(v0 + 408) = v3;

    if (v3)
    {
      v4 = *(v0 + 28);
      v5 = *(v0 + 72);
      v6 = swift_task_alloc();
      *(v0 + 416) = v6;
      *v6 = v0;
      v6[1] = sub_100C7FB84;
      v7 = *(v0 + 304);

      return sub_1011ADA9C(v7, v5 + v4, v2, v3);
    }
  }

  else
  {
  }

  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 216);
  v10 = *(v0 + 72);
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177AE40);
  sub_100D11DC8(v10, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 216);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48[0] = v16;
    *v15 = 136315138;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v48);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Fetch token not found for imported share %s", v15, 0xCu);
    sub_100007BAC(v16);
  }

  else
  {
    v21 = *(v0 + 216);

    sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  sub_1001BAEE0();
  v22 = swift_allocError();
  *v23 = 31;
  swift_willThrow();
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 200);
  v25 = *(v0 + 72);
  sub_1000076D4(v11, qword_10177AE40);
  sub_100D11DC8(v25, v24, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v22;
    v29 = *(v0 + 200);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48[0] = v32;
    *v30 = 141558531;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v36 = v29;
    v22 = v28;
    sub_100018D00(v36, type metadata accessor for SharingCircleKeyManager.Instruction);
    v37 = sub_1000136BC(v33, v35, v48);

    *(v30 + 14) = v37;
    *(v30 + 22) = 2112;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 24) = v38;
    *v31 = v38;
    _os_log_impl(&_mh_execute_header, v26, v27, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v30, 0x20u);
    sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v32);
  }

  else
  {
    v39 = *(v0 + 200);

    sub_100018D00(v39, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v22;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v40 = *(v0 + 208);
    v41 = *(v0 + 184);
    v42 = *(v0 + 104);
    v43 = *(v0 + 72);
    v44 = type metadata accessor for TaskPriority();
    (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
    sub_100D11DC8(v43, v40, type metadata accessor for SharingCircleKeyManager.Instruction);
    v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    sub_100D12974(v40, v46 + v45, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v42, &unk_1013E3750, v46);
  }

  swift_willThrow();

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_100C7FB84()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);

    v4 = sub_100C843C4;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 96);
    v4 = sub_100C7FCAC;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100C7FCAC()
{
  v1 = v0[51];
  v2 = v0[39];
  v3 = v0[37];
  sub_100D12974(v0[38], v2, type metadata accessor for KeyDropDownloadKeysMetadataResponse);
  v4 = (v2 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[54] = v7;
  *v7 = v0;
  v7[1] = sub_100C7FD8C;
  v8 = v0[50];
  v9 = v0[11];
  v11 = v0[9];
  v10 = v0[10];

  return sub_100C9BFF8(v5, v6, v10, v9, v8, v1, v11);
}

uint64_t sub_100C7FD8C()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = v2[12];

    v4 = sub_100C84898;
  }

  else
  {
    v5 = v2[39];
    v3 = v2[40];
    v6 = v2[37];

    v2[56] = *(v5 + *(v6 + 24));
    v4 = sub_100C7FEDC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C7FEDC()
{

  v1 = swift_task_alloc();
  v0[57] = v1;
  *v1 = v0;
  v1[1] = sub_100C7FFB4;
  v2 = v0[42];
  v3 = v0[40];

  return unsafeBlocking<A>(context:_:)(v0 + 6, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100C7FFB4()
{
  v1 = *(*v0 + 320);

  return _swift_task_switch(sub_100C800CC, v1, 0);
}

uint64_t sub_100C800CC()
{
  v1 = v0[12];
  v0[58] = v0[6];
  return _swift_task_switch(sub_100C800F0, v1, 0);
}

uint64_t sub_100C800F0()
{
  v112 = v0;
  v1 = *(*(v0 + 448) + 16);
  *(v0 + 472) = v1;
  if (v1)
  {
    v2 = 0;
    *(v0 + 480) = OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore;
    *(v0 + 580) = enum case for Connection.TransactionMode.deferred(_:);
    v3 = *(v0 + 440);
    do
    {
      *(v0 + 488) = v2;
      v4 = *(v0 + 448);
      if (v2 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v5 = v4 + 16 * v2;
      v110 = *(v5 + 32);
      v6 = *(v5 + 40);
      v7 = qword_101694780;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 240);
      v9 = *(v0 + 248);
      v10 = *(v0 + 232);
      v11 = *(v0 + 72);
      v108 = type metadata accessor for Logger();
      sub_1000076D4(v108, qword_10177AE40);
      sub_100D11DC8(v11, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v11, v8, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v11, v10, type metadata accessor for SharingCircleKeyManager.Instruction);
      swift_bridgeObjectRetain_n();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v107 = v13;
        v14 = *(v0 + 248);
        v104 = *(v0 + 240);
        v106 = *(v0 + 232);
        v15 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v15 = 136447747;
        log = v12;
        v16 = sub_100C71778();
        v18 = v17;
        sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
        v19 = sub_1000136BC(v16, v18, v111);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        v20 = sub_10125403C(v110);
        v22 = sub_1000136BC(v20, v21, v111);

        *(v15 + 14) = v22;
        *(v15 + 22) = 2160;
        *(v15 + 24) = 1752392040;
        *(v15 + 32) = 2081;
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        sub_100018D00(v104, type metadata accessor for SharingCircleKeyManager.Instruction);
        v26 = sub_1000136BC(v23, v25, v111);

        *(v15 + 34) = v26;
        *(v15 + 42) = 2160;
        *(v15 + 44) = 1752392040;
        *(v15 + 52) = 2081;
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        v0 = v109;
        sub_100018D00(v106, type metadata accessor for SharingCircleKeyManager.Instruction);
        v30 = sub_1000136BC(v27, v29, v111);

        *(v15 + 54) = v30;
        *(v15 + 62) = 2048;
        v31 = *(v6 + 16);

        *(v15 + 64) = v31;

        _os_log_impl(&_mh_execute_header, log, v107, "Save key package for imported share: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nkeys: %ld.", v15, 0x48u);
        swift_arrayDestroy();

        if (!*(v6 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        v32 = *(v0 + 240);
        v33 = *(v0 + 248);
        v34 = *(v0 + 232);
        swift_bridgeObjectRelease_n();

        sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
        if (!*(v6 + 16))
        {
LABEL_21:
          sub_100D11DC8(*(v0 + 72), *(v0 + 224), type metadata accessor for SharingCircleKeyManager.Instruction);

          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.error.getter();

          v50 = os_log_type_enabled(v48, v49);
          v51 = *(v0 + 224);
          if (v50)
          {
            v52 = swift_slowAlloc();
            v111[0] = swift_slowAlloc();
            *v52 = 136315394;
            v53 = sub_1012561CC(v110, v6);
            v55 = v54;

            v56 = sub_1000136BC(v53, v55, v111);

            *(v52 + 4) = v56;
            *(v52 + 12) = 2080;
            v57 = sub_100C71778();
            v59 = v58;
            sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
            v0 = v109;
            v60 = sub_1000136BC(v57, v59, v111);

            *(v52 + 14) = v60;
            _os_log_impl(&_mh_execute_header, v48, v49, "There are no keys to save for imported share in the package: %s, instruction: %s.", v52, 0x16u);
            swift_arrayDestroy();

            break;
          }

          sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
          goto LABEL_17;
        }
      }

      v35 = sub_100D0F100(v110, v6, *(v0 + 80), *(v0 + 88));
      *(v0 + 496) = v3;
      *(v0 + 504) = v36;
      if (v3)
      {

        if (qword_101694780 == -1)
        {
LABEL_24:
          v61 = *(v0 + 200);
          v62 = *(v0 + 72);
          sub_1000076D4(v108, qword_10177AE40);
          sub_100D11DC8(v62, v61, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = *(v0 + 200);
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v111[0] = v68;
            *v66 = 141558531;
            *(v66 + 4) = 1752392040;
            *(v66 + 12) = 2081;
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v69 = dispatch thunk of CustomStringConvertible.description.getter();
            v71 = v70;
            sub_100018D00(v65, type metadata accessor for SharingCircleKeyManager.Instruction);
            v72 = sub_1000136BC(v69, v71, v111);

            *(v66 + 14) = v72;
            *(v66 + 22) = 2112;
            swift_errorRetain();
            v73 = _swift_stdlib_bridgeErrorToNSError();
            *(v66 + 24) = v73;
            *v67 = v73;
            _os_log_impl(&_mh_execute_header, v63, v64, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v66, 0x20u);
            sub_10000B3A8(v67, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v68);
          }

          else
          {
            v96 = *(v0 + 200);

            sub_100018D00(v96, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          *(v0 + 40) = v3;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
          {
            v97 = *(v0 + 208);
            v98 = *(v0 + 184);
            v99 = *(v0 + 104);
            v100 = *(v0 + 72);
            v101 = type metadata accessor for TaskPriority();
            (*(*(v101 - 8) + 56))(v99, 1, 1, v101);
            sub_100D11DC8(v100, v97, type metadata accessor for SharingCircleKeyManager.Instruction);
            v102 = (*(v98 + 80) + 32) & ~*(v98 + 80);
            v103 = swift_allocObject();
            *(v103 + 16) = 0;
            *(v103 + 24) = 0;
            sub_100D12974(v97, v103 + v102, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100A838D4(0, 0, v99, &unk_1013E3750, v103);
          }

          swift_willThrow();
          sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

          v46 = *(v0 + 8);
          goto LABEL_18;
        }

LABEL_51:
        swift_once();
        goto LABEL_24;
      }

      v37 = v35;
      v38 = v36;

      if (v37 == 17)
      {
        v83 = *(v38 + 16);
        v84 = _swiftEmptyArrayStorage;
        if (v83)
        {
          *(v0 + 64) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v83, 0);
          v84 = *(v0 + 64);
          v85 = (v38 + 48);
          do
          {
            v87 = *(v85 - 2);
            v86 = *(v85 - 1);
            v88 = *v85;
            sub_100017D5C(v86, *v85);
            *(v109 + 64) = v84;
            v90 = v84[2];
            v89 = v84[3];
            if (v90 >= v89 >> 1)
            {
              sub_101123DB0((v89 > 1), v90 + 1, 1);
              v84 = *(v109 + 64);
            }

            v84[2] = v90 + 1;
            v91 = &v84[4 * v90];
            *(v91 + 32) = 0;
            v85 += 3;
            v91[5] = v87;
            v91[6] = v86;
            v91[7] = v88;
            --v83;
          }

          while (v83);

          v0 = v109;
        }

        *(v0 + 512) = v84;
        v92 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 520) = v92;
        v95 = getuid();
        sub_1000294F0(v95);
        v94 = sub_100C80FF0;
        goto LABEL_40;
      }

      if (v37 == 18)
      {
        v74 = *(v38 + 16);
        v75 = _swiftEmptyArrayStorage;
        if (v74)
        {
          *(v0 + 56) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v74, 0);
          v75 = *(v0 + 56);
          v76 = (v38 + 48);
          do
          {
            v78 = *(v76 - 2);
            v77 = *(v76 - 1);
            v79 = *v76;
            sub_100017D5C(v77, *v76);
            *(v0 + 56) = v75;
            v81 = v75[2];
            v80 = v75[3];
            if (v81 >= v80 >> 1)
            {
              sub_101123DB0((v80 > 1), v81 + 1, 1);
              v75 = *(v109 + 56);
            }

            v75[2] = v81 + 1;
            v82 = &v75[4 * v81];
            *(v82 + 32) = 1;
            v76 += 3;
            v82[5] = v78;
            v82[6] = v77;
            v82[7] = v79;
            --v74;
            v0 = v109;
          }

          while (v74);
        }

        *(v0 + 544) = v75;
        v92 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 552) = v92;
        v93 = getuid();
        sub_1000294F0(v93);
        v94 = sub_100C82770;
LABEL_40:

        return _swift_task_switch(v94, v92, 0);
      }

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v111[0] = v42;
        *v41 = 136315138;
        v43 = sub_10125403C(v37);
        v45 = sub_1000136BC(v43, v44, v111);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "unsupported package type for imported share: %s", v41, 0xCu);
        sub_100007BAC(v42);
      }

      v3 = 0;
      v2 = *(v0 + 488) + 1;
    }

    while (v2 != *(v0 + 472));
  }

LABEL_17:
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

  v46 = *(v0 + 8);
LABEL_18:

  return v46();
}

uint64_t sub_100C80FF0()
{
  v1 = *(*(v0 + 520) + 112);
  if (!v1)
  {

    sub_10020223C();
    v17 = swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v2 = *(v1 + 32);

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3 != 1 || (v4 = sub_100D13BF8(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0), v5 = *(v4 + 16), v6 = type metadata accessor for ItemSharingKeyDatabase(0), (v7 = v5(v6, v4)) == 0))
  {

    sub_10020223C();
    v17 = swift_allocError();
    *v22 = 2;
    *(v22 + 4) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v44 = *(v0 + 496);
  v41 = *(v0 + 580);
  v35 = *(v0 + 280);
  v8 = *(v0 + 168);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 136);
  v12 = *(v0 + 120);
  v37 = *(v0 + 112);
  v39 = *(v0 + 512);
  v13 = *(v0 + 72);
  v14 = v13 + *(v0 + 576);
  v33 = v13 + *(v0 + 28);
  v15 = *(v7 + 24);

  (*(v10 + 16))(v8, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_publicKeysSuffix, v9);
  v16 = swift_task_alloc();
  v16[2] = v39;
  v16[3] = v8;
  v16[4] = v14;
  v16[5] = v33;
  v16[6] = v35;
  v16[7] = v15;
  (*(v12 + 104))(v11, v41, v37);
  Connection.transaction(_:block:)();
  v17 = v44;
  *(v0 + 528) = v44;
  if (v44)
  {
    v18 = *(v0 + 152);
    v42 = *(v0 + 144);
    v45 = *(v0 + 168);
    v19 = *(v0 + 136);
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);

    (*(v20 + 8))(v19, v21);

    (*(v18 + 8))(v45, v42);
LABEL_8:
    *(v0 + 536) = v17;
    v24 = *(v0 + 96);
    (*(v0 + 384))(*(v0 + 280), *(v0 + 256));
    v25 = sub_100C8226C;
    v26 = v24;
    goto LABEL_9;
  }

  v43 = *(v0 + 384);
  v36 = *(v0 + 256);
  v38 = *(v0 + 280);
  v34 = *(v0 + 168);
  v28 = *(v0 + 144);
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v30 = *(v0 + 112);
  v31 = *(v0 + 120);
  v40 = *(v0 + 96);

  (*(v31 + 8))(v29, v30);

  (*(v27 + 8))(v34, v28);
  v43(v38, v36);
  v25 = sub_100C813A4;
  v26 = v40;
LABEL_9:

  return _swift_task_switch(v25, v26, 0);
}

uint64_t sub_100C813A4()
{
  v110 = v0;

  v1 = *(v0 + 488) + 1;
  if (v1 != *(v0 + 472))
  {
    v4 = *(v0 + 528);
    do
    {
      *(v0 + 488) = v1;
      v5 = *(v0 + 448);
      if (v1 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v6 = v5 + 16 * v1;
      v108 = *(v6 + 32);
      v7 = *(v6 + 40);
      v8 = qword_101694780;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 240);
      v10 = *(v0 + 248);
      v11 = *(v0 + 232);
      v12 = *(v0 + 72);
      v107 = type metadata accessor for Logger();
      sub_1000076D4(v107, qword_10177AE40);
      sub_100D11DC8(v12, v10, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v12, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v12, v11, type metadata accessor for SharingCircleKeyManager.Instruction);
      swift_bridgeObjectRetain_n();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v106 = v14;
        v16 = *(v0 + 240);
        v15 = *(v0 + 248);
        v105 = *(v0 + 232);
        v17 = swift_slowAlloc();
        v109[0] = swift_slowAlloc();
        *v17 = 136447747;
        log = v13;
        v18 = sub_100C71778();
        v20 = v19;
        sub_100018D00(v15, type metadata accessor for SharingCircleKeyManager.Instruction);
        v21 = sub_1000136BC(v18, v20, v109);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        v22 = sub_10125403C(v108);
        v24 = sub_1000136BC(v22, v23, v109);

        *(v17 + 14) = v24;
        *(v17 + 22) = 2160;
        *(v17 + 24) = 1752392040;
        *(v17 + 32) = 2081;
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = sub_1000136BC(v25, v27, v109);

        *(v17 + 34) = v28;
        *(v17 + 42) = 2160;
        *(v17 + 44) = 1752392040;
        *(v17 + 52) = 2081;
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        sub_100018D00(v105, type metadata accessor for SharingCircleKeyManager.Instruction);
        v32 = sub_1000136BC(v29, v31, v109);

        *(v17 + 54) = v32;
        *(v17 + 62) = 2048;
        v33 = *(v7 + 16);

        *(v17 + 64) = v33;

        _os_log_impl(&_mh_execute_header, log, v106, "Save key package for imported share: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nkeys: %ld.", v17, 0x48u);
        swift_arrayDestroy();

        if (!*(v7 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        v34 = *(v0 + 240);
        v35 = *(v0 + 248);
        v36 = *(v0 + 232);
        swift_bridgeObjectRelease_n();

        sub_100018D00(v36, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
        if (!*(v7 + 16))
        {
LABEL_21:
          sub_100D11DC8(*(v0 + 72), *(v0 + 224), type metadata accessor for SharingCircleKeyManager.Instruction);

          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.error.getter();

          v50 = os_log_type_enabled(v48, v49);
          v51 = *(v0 + 224);
          if (v50)
          {
            v52 = swift_slowAlloc();
            v109[0] = swift_slowAlloc();
            *v52 = 136315394;
            v53 = sub_1012561CC(v108, v7);
            v55 = v54;

            v56 = sub_1000136BC(v53, v55, v109);

            *(v52 + 4) = v56;
            *(v52 + 12) = 2080;
            v57 = sub_100C71778();
            v59 = v58;
            sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
            v60 = sub_1000136BC(v57, v59, v109);

            *(v52 + 14) = v60;
            _os_log_impl(&_mh_execute_header, v48, v49, "There are no keys to save for imported share in the package: %s, instruction: %s.", v52, 0x16u);
            swift_arrayDestroy();

            break;
          }

          sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
          goto LABEL_3;
        }
      }

      v37 = sub_100D0F100(v108, v7, *(v0 + 80), *(v0 + 88));
      *(v0 + 496) = v4;
      *(v0 + 504) = v38;
      if (v4)
      {

        if (qword_101694780 == -1)
        {
LABEL_24:
          v61 = *(v0 + 200);
          v62 = *(v0 + 72);
          sub_1000076D4(v107, qword_10177AE40);
          sub_100D11DC8(v62, v61, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = *(v0 + 200);
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v109[0] = v68;
            *v66 = 141558531;
            *(v66 + 4) = 1752392040;
            *(v66 + 12) = 2081;
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v69 = dispatch thunk of CustomStringConvertible.description.getter();
            v71 = v70;
            sub_100018D00(v65, type metadata accessor for SharingCircleKeyManager.Instruction);
            v72 = sub_1000136BC(v69, v71, v109);

            *(v66 + 14) = v72;
            *(v66 + 22) = 2112;
            swift_errorRetain();
            v73 = _swift_stdlib_bridgeErrorToNSError();
            *(v66 + 24) = v73;
            *v67 = v73;
            _os_log_impl(&_mh_execute_header, v63, v64, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v66, 0x20u);
            sub_10000B3A8(v67, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v68);
          }

          else
          {
            v96 = *(v0 + 200);

            sub_100018D00(v96, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          *(v0 + 40) = v4;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
          {
            v97 = *(v0 + 208);
            v98 = *(v0 + 184);
            v99 = *(v0 + 104);
            v100 = *(v0 + 72);
            v101 = type metadata accessor for TaskPriority();
            (*(*(v101 - 8) + 56))(v99, 1, 1, v101);
            sub_100D11DC8(v100, v97, type metadata accessor for SharingCircleKeyManager.Instruction);
            v102 = (*(v98 + 80) + 32) & ~*(v98 + 80);
            v103 = swift_allocObject();
            *(v103 + 16) = 0;
            *(v103 + 24) = 0;
            sub_100D12974(v97, v103 + v102, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100A838D4(0, 0, v99, &unk_1013E3750, v103);
          }

          swift_willThrow();
          sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

          v2 = *(v0 + 8);
          goto LABEL_4;
        }

LABEL_51:
        swift_once();
        goto LABEL_24;
      }

      v39 = v37;
      v40 = v38;

      if (v39 == 17)
      {
        v83 = *(v40 + 16);
        v84 = _swiftEmptyArrayStorage;
        if (v83)
        {
          *(v0 + 64) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v83, 0);
          v84 = *(v0 + 64);
          v85 = (v40 + 48);
          do
          {
            v87 = *(v85 - 2);
            v86 = *(v85 - 1);
            v88 = *v85;
            sub_100017D5C(v86, *v85);
            *(v0 + 64) = v84;
            v90 = v84[2];
            v89 = v84[3];
            if (v90 >= v89 >> 1)
            {
              sub_101123DB0((v89 > 1), v90 + 1, 1);
              v84 = *(v0 + 64);
            }

            v84[2] = v90 + 1;
            v91 = &v84[4 * v90];
            *(v91 + 32) = 0;
            v85 += 3;
            v91[5] = v87;
            v91[6] = v86;
            v91[7] = v88;
            --v83;
          }

          while (v83);
        }

        *(v0 + 512) = v84;
        v92 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 520) = v92;
        v95 = getuid();
        sub_1000294F0(v95);
        v94 = sub_100C80FF0;
        goto LABEL_40;
      }

      if (v39 == 18)
      {
        v74 = *(v40 + 16);
        v75 = _swiftEmptyArrayStorage;
        if (v74)
        {
          *(v0 + 56) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v74, 0);
          v75 = *(v0 + 56);
          v76 = (v40 + 48);
          do
          {
            v78 = *(v76 - 2);
            v77 = *(v76 - 1);
            v79 = *v76;
            sub_100017D5C(v77, *v76);
            *(v0 + 56) = v75;
            v81 = v75[2];
            v80 = v75[3];
            if (v81 >= v80 >> 1)
            {
              sub_101123DB0((v80 > 1), v81 + 1, 1);
              v75 = *(v0 + 56);
            }

            v75[2] = v81 + 1;
            v82 = &v75[4 * v81];
            *(v82 + 32) = 1;
            v76 += 3;
            v82[5] = v78;
            v82[6] = v77;
            v82[7] = v79;
            --v74;
          }

          while (v74);
        }

        *(v0 + 544) = v75;
        v92 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 552) = v92;
        v93 = getuid();
        sub_1000294F0(v93);
        v94 = sub_100C82770;
LABEL_40:

        return _swift_task_switch(v94, v92, 0);
      }

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v109[0] = v44;
        *v43 = 136315138;
        v45 = sub_10125403C(v39);
        v47 = sub_1000136BC(v45, v46, v109);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v41, v42, "unsupported package type for imported share: %s", v43, 0xCu);
        sub_100007BAC(v44);
      }

      v4 = 0;
      v1 = *(v0 + 488) + 1;
    }

    while (v1 != *(v0 + 472));
  }

LABEL_3:
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

  v2 = *(v0 + 8);
LABEL_4:

  return v2();
}