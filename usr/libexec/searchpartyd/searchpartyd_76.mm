void sub_100879FD8(uint64_t a1, unsigned int a2)
{
  v4 = v2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_autoreleasePoolPush();
  sub_1008839A4(a1, &qword_1016ABEB8, &qword_1013BFD88, &qword_1016ABEC0);
  if (v3)
  {
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v42 = a2;
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
    (*(v8 + 16))(v10, a1, v7);
    v14 = sub_100878D64(v10, &selRef_fileHandleForReadingFromURL_error_);
    v15 = v14;
    v16 = v42;
    if (v13 <= v42)
    {
      v17 = v42;
    }

    else
    {
      v17 = v13;
    }

    v40 = qword_1016AC3B0;
    if (v17 < *(v4 + qword_1016AC3B0))
    {
      *(v4 + v40) = v17;
    }

    v39 = qword_1016AC3B8;
    if (*(v4 + qword_1016AC3B8) < HIDWORD(v13))
    {
      *(v4 + v39) = HIDWORD(v13);
    }

    v47[0] = 0;
    if ([v14 seekToOffset:4128 error:v47])
    {
      v44 = qword_1016AC3D0;
      v18 = v47[0];
      for (i = v15; ; v15 = i)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = [v15 readDataOfLength:10];
        v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v23 >> 62;
        if ((v23 >> 62) > 1)
        {
          if (v24 != 2)
          {
            break;
          }

          v27 = *(v21 + 16);
          v26 = *(v21 + 24);
          v28 = __OFSUB__(v26, v27);
          v25 = v26 - v27;
          if (v28)
          {
            goto LABEL_38;
          }
        }

        else if (v24)
        {
          LODWORD(v25) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_37;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v23);
        }

        if (v25 < 10)
        {
          break;
        }

        sub_100017D5C(v21, v23);
        sub_10087AC44(v21, v23, &v48);
        v45 = v19;
        v29 = v50;
        v31 = v48;
        v30 = v49;
        if (v50 < v16)
        {
          sub_100016590(v48, v49);
          sub_100016590(v21, v23);
        }

        else
        {
          sub_100017D5C(v48, v49);
          v41 = Data._Representation.subscript.getter();
          sub_100016590(v31, v30);
          if (v29 < *(v4 + v40))
          {
            *(v4 + v40) = v29;
          }

          if (*(v4 + v39) < v29)
          {
            *(v4 + v39) = v29;
          }

          v32 = v44;
          swift_beginAccess();
          v33 = *(v4 + v32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v32) = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {

            v36 = sub_100607478(v35);
            *(v4 + v44) = v36;

            v33 = v36;
          }

          if (v33[2] <= v41)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
          }

          sub_100017D5C(v31, v30);
          sub_100DF290C(v46, v31, v30, v29);
          sub_100016590(v46[0], v46[1]);
          *(v4 + v44) = v33;
          swift_endAccess();
          sub_100016590(v21, v23);
          sub_100016590(v48, v49);
          v16 = v42;
        }

        objc_autoreleasePoolPop(v45);
      }

      sub_100016590(v21, v23);
      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v37 = v47[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_10087A454(uint64_t a1, unsigned int a2)
{
  v4 = v2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_autoreleasePoolPush();
  sub_1008839A4(a1, &qword_1016ABEE8, &qword_1013BFDA8, &qword_1016ABEF0);
  if (v3)
  {
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v42 = a2;
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
    (*(v8 + 16))(v10, a1, v7);
    v14 = sub_100878D64(v10, &selRef_fileHandleForReadingFromURL_error_);
    v15 = v14;
    v16 = v42;
    if (v13 <= v42)
    {
      v17 = v42;
    }

    else
    {
      v17 = v13;
    }

    v40 = qword_1016AC3B0;
    if (v17 < *(v4 + qword_1016AC3B0))
    {
      *(v4 + v40) = v17;
    }

    v39 = qword_1016AC3B8;
    if (*(v4 + qword_1016AC3B8) < HIDWORD(v13))
    {
      *(v4 + v39) = HIDWORD(v13);
    }

    v47[0] = 0;
    if ([v14 seekToOffset:4128 error:v47])
    {
      v44 = qword_1016AC3D0;
      v18 = v47[0];
      for (i = v15; ; v15 = i)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = [v15 readDataOfLength:10];
        v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v23 >> 62;
        if ((v23 >> 62) > 1)
        {
          if (v24 != 2)
          {
            break;
          }

          v27 = *(v21 + 16);
          v26 = *(v21 + 24);
          v28 = __OFSUB__(v26, v27);
          v25 = v26 - v27;
          if (v28)
          {
            goto LABEL_38;
          }
        }

        else if (v24)
        {
          LODWORD(v25) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_37;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v23);
        }

        if (v25 < 10)
        {
          break;
        }

        sub_100017D5C(v21, v23);
        sub_10087AFD0(v21, v23, &v48);
        v45 = v19;
        v29 = v50;
        v31 = v48;
        v30 = v49;
        if (v50 < v16)
        {
          sub_100016590(v48, v49);
          sub_100016590(v21, v23);
        }

        else
        {
          sub_100017D5C(v48, v49);
          v41 = Data._Representation.subscript.getter();
          sub_100016590(v31, v30);
          if (v29 < *(v4 + v40))
          {
            *(v4 + v40) = v29;
          }

          if (*(v4 + v39) < v29)
          {
            *(v4 + v39) = v29;
          }

          v32 = v44;
          swift_beginAccess();
          v33 = *(v4 + v32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v32) = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {

            v36 = sub_10060748C(v35);
            *(v4 + v44) = v36;

            v33 = v36;
          }

          if (v33[2] <= v41)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
          }

          sub_100017D5C(v31, v30);
          sub_100DF2984(v46, v31, v30, v29);
          sub_100016590(v46[0], v46[1]);
          *(v4 + v44) = v33;
          swift_endAccess();
          sub_100016590(v21, v23);
          sub_100016590(v48, v49);
          v16 = v42;
        }

        objc_autoreleasePoolPop(v45);
      }

      sub_100016590(v21, v23);
      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v37 = v47[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_10087A8D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100017D5C(a1, a2);
  sub_100035310(4, a1, a2, &v36);
  v7 = v36;
  v8 = v37;
  v9 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_13:
      sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
      sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70, &unk_1013C1158);
      swift_allocError();
      *v19 = 1;
      *(v19 + 4) = 2;
      swift_willThrow();
LABEL_25:
      sub_100016590(a1, a2);
      return sub_100016590(v7, v8);
    }

    v34 = a3;
    v12 = *(v36 + 16);
    v11 = *(v36 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v12, v14))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v13 = (v13 + v12 - v14);
    }

    v15 = __OFSUB__(v11, v12);
    v16 = v11 - v12;
    if (v15)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = __DataStorage._length.getter();
    if (v17 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    if (!v9)
    {
      if ((v37 & 0xFC000000000000) != 0)
      {
        v10 = v36;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    v20 = (v36 >> 32) - v36;
    if (v36 >> 32 < v36)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v34 = a3;
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v21))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      v13 = (v13 + v7 - v21);
    }

    v22 = __DataStorage._length.getter();
    if (v22 >= v20)
    {
      v18 = (v7 >> 32) - v7;
    }

    else
    {
      v18 = v22;
    }
  }

  v23 = v13 + v18;
  if (v13)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_10087B35C(v13, v24);
  if (v3)
  {
    goto LABEL_25;
  }

  v10 = v25;
  a3 = v34;
LABEL_27:
  sub_100016590(v7, v8);
  v27 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(a2);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_37;
  }

  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v15 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v15)
  {
    __break(1u);
LABEL_34:
    LODWORD(v28) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_46;
    }

    v28 = v28;
  }

LABEL_37:
  v31 = v28 - 4;
  if (__OFSUB__(v28, 4))
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_100017D5C(a1, a2);
  sub_10002EA98(v31, a1, a2, v35);
  sub_100497060(v35[0], v35[1], &v36);
  v32 = v37;
  if (v37 >> 60 == 15)
  {
    sub_100006654(v36, v37);
    sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
    sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70, &unk_1013C1158);
    swift_allocError();
    *v33 = 1;
    *(v33 + 4) = 2;
    swift_willThrow();
    return sub_100016590(a1, a2);
  }

  else
  {
    result = sub_100016590(a1, a2);
    *a3 = v36;
    *(a3 + 8) = v32;
    *(a3 + 16) = v10;
  }

  return result;
}

uint64_t sub_10087AC44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100017D5C(a1, a2);
  sub_100035310(4, a1, a2, &v36);
  v7 = v36;
  v8 = v37;
  v9 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_13:
      sub_1000BC4D4(&qword_1016ABEB8, &qword_1013BFD88);
      sub_1000041A4(&qword_1016ABEC0, &qword_1016ABEB8, &qword_1013BFD88, &unk_1013C1158);
      swift_allocError();
      *v19 = 1;
      *(v19 + 4) = 2;
      swift_willThrow();
LABEL_25:
      sub_100016590(a1, a2);
      return sub_100016590(v7, v8);
    }

    v34 = a3;
    v12 = *(v36 + 16);
    v11 = *(v36 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v12, v14))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v13 = (v13 + v12 - v14);
    }

    v15 = __OFSUB__(v11, v12);
    v16 = v11 - v12;
    if (v15)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = __DataStorage._length.getter();
    if (v17 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    if (!v9)
    {
      if ((v37 & 0xFC000000000000) != 0)
      {
        v10 = v36;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    v20 = (v36 >> 32) - v36;
    if (v36 >> 32 < v36)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v34 = a3;
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v21))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      v13 = (v13 + v7 - v21);
    }

    v22 = __DataStorage._length.getter();
    if (v22 >= v20)
    {
      v18 = (v7 >> 32) - v7;
    }

    else
    {
      v18 = v22;
    }
  }

  v23 = v13 + v18;
  if (v13)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_10087B41C(v13, v24, &qword_1016ABEB8, &qword_1013BFD88, &qword_1016ABEC0);
  if (v3)
  {
    goto LABEL_25;
  }

  v10 = v25;
  a3 = v34;
LABEL_27:
  sub_100016590(v7, v8);
  v27 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(a2);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_37;
  }

  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v15 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v15)
  {
    __break(1u);
LABEL_34:
    LODWORD(v28) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_46;
    }

    v28 = v28;
  }

LABEL_37:
  v31 = v28 - 4;
  if (__OFSUB__(v28, 4))
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_100017D5C(a1, a2);
  sub_10002EA98(v31, a1, a2, &v35);
  sub_1004A4744();
  v32 = v37;
  if (v37 >> 60 == 15)
  {
    sub_100006654(v36, v37);
    sub_1000BC4D4(&qword_1016ABEB8, &qword_1013BFD88);
    sub_1000041A4(&qword_1016ABEC0, &qword_1016ABEB8, &qword_1013BFD88, &unk_1013C1158);
    swift_allocError();
    *v33 = 1;
    *(v33 + 4) = 2;
    swift_willThrow();
    return sub_100016590(a1, a2);
  }

  else
  {
    result = sub_100016590(a1, a2);
    *a3 = v36;
    *(a3 + 8) = v32;
    *(a3 + 16) = v10;
  }

  return result;
}

uint64_t sub_10087AFD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100017D5C(a1, a2);
  sub_100035310(4, a1, a2, &v36);
  v7 = v36;
  v8 = v37;
  v9 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_13:
      sub_1000BC4D4(&qword_1016ABEE8, &qword_1013BFDA8);
      sub_1000041A4(&qword_1016ABEF0, &qword_1016ABEE8, &qword_1013BFDA8, &unk_1013C1158);
      swift_allocError();
      *v19 = 1;
      *(v19 + 4) = 2;
      swift_willThrow();
LABEL_25:
      sub_100016590(a1, a2);
      return sub_100016590(v7, v8);
    }

    v34 = a3;
    v12 = *(v36 + 16);
    v11 = *(v36 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v12, v14))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v13 = (v13 + v12 - v14);
    }

    v15 = __OFSUB__(v11, v12);
    v16 = v11 - v12;
    if (v15)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = __DataStorage._length.getter();
    if (v17 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    if (!v9)
    {
      if ((v37 & 0xFC000000000000) != 0)
      {
        v10 = v36;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    v20 = (v36 >> 32) - v36;
    if (v36 >> 32 < v36)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v34 = a3;
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v21))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      v13 = (v13 + v7 - v21);
    }

    v22 = __DataStorage._length.getter();
    if (v22 >= v20)
    {
      v18 = (v7 >> 32) - v7;
    }

    else
    {
      v18 = v22;
    }
  }

  v23 = v13 + v18;
  if (v13)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_10087B41C(v13, v24, &qword_1016ABEE8, &qword_1013BFDA8, &qword_1016ABEF0);
  if (v3)
  {
    goto LABEL_25;
  }

  v10 = v25;
  a3 = v34;
LABEL_27:
  sub_100016590(v7, v8);
  v27 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(a2);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_37;
  }

  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v15 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v15)
  {
    __break(1u);
LABEL_34:
    LODWORD(v28) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_46;
    }

    v28 = v28;
  }

LABEL_37:
  v31 = v28 - 4;
  if (__OFSUB__(v28, 4))
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_100017D5C(a1, a2);
  sub_10002EA98(v31, a1, a2, &v35);
  sub_1004A4744();
  v32 = v37;
  if (v37 >> 60 == 15)
  {
    sub_100006654(v36, v37);
    sub_1000BC4D4(&qword_1016ABEE8, &qword_1013BFDA8);
    sub_1000041A4(&qword_1016ABEF0, &qword_1016ABEE8, &qword_1013BFDA8, &unk_1013C1158);
    swift_allocError();
    *v33 = 1;
    *(v33 + 4) = 2;
    swift_willThrow();
    return sub_100016590(a1, a2);
  }

  else
  {
    result = sub_100016590(a1, a2);
    *a3 = v36;
    *(a3 + 8) = v32;
    *(a3 + 16) = v10;
  }

  return result;
}

uint64_t sub_10087B35C(unsigned int *a1, uint64_t a2)
{
  if (a1 && (a2 - a1 + 3) >= 7)
  {
    return *a1;
  }

  sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
  sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70, &unk_1013C1158);
  swift_allocError();
  *v3 = 1;
  *(v3 + 4) = 2;
  return swift_willThrow();
}

uint64_t sub_10087B41C(unsigned int *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (a1 && (a2 - a1 + 3) >= 7)
  {
    return *a1;
  }

  sub_1000BC4D4(a3, a4);
  sub_1000041A4(a5, a3, a4, &unk_1013C1158);
  swift_allocError();
  *v9 = 1;
  *(v9 + 4) = 2;
  return swift_willThrow();
}

Swift::Int sub_10087B4D0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10087B9FC(v8, v9, a1, v4);
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
    return sub_10087B704(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_10087B5FC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        sub_1000BC4D4(&qword_1016ABEB0, &unk_1013BFD40);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10087C374(v7, v8, a1, v4);
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
    return sub_10087B988(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10087B704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0);
  v9 = __chkstk_darwin(v8);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v41 = &v28 - v12;
  result = __chkstk_darwin(v11);
  v40 = &v28 - v15;
  v30 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v14 + 72);
    v38 = v41 + 8;
    v39 = v40 + 8;
    v18 = v16 + v17 * (a3 - 1);
    v35 = -v17;
    v36 = v16;
    v19 = a1 - a3;
    v29 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v33 = v18;
    v34 = a3;
    v31 = v20;
    v32 = v19;
    while (1)
    {
      v21 = v40;
      sub_1000295D4(v20, v40, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v22 = v41;
      sub_1000295D4(v18, v41, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v23 = *(v8 + 20);
      v24 = *(v39 + v23);
      v25 = *(v38 + v23);
      sub_10001F1B0(v22, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      result = sub_10001F1B0(v21, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v18 = v33 + v29;
        v19 = v32 - 1;
        v20 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_10087EE70(v20, v37, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10087EE70(v26, v18, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v18 += v35;
      v20 += v35;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10087B988(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (v7 >= *v9)
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *(v9 + 12);
      *(v9 + 8) = *v9;
      *v9 = v7;
      *(v9 + 4) = v10;
      v9 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10087B9FC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v128 = type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0);
  v9 = *(v128 - 8);
  v10 = __chkstk_darwin(v128);
  v115 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v123 = &v108 - v13;
  v14 = __chkstk_darwin(v12);
  result = __chkstk_darwin(v14);
  v18 = a3[1];
  v116 = v9;
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_99:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_101:
      v129 = v20;
      v104 = *(v20 + 2);
      if (v104 >= 2)
      {
        while (*a3)
        {
          v105 = *&v20[16 * v104];
          v106 = *&v20[16 * v104 + 24];
          sub_10087C8E8(*a3 + *(v116 + 72) * v105, *a3 + *(v116 + 72) * *&v20[16 * v104 + 16], *a3 + *(v116 + 72) * v106, v5);
          if (v6)
          {
          }

          if (v106 < v105)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_100B31E68(v20);
          }

          if (v104 - 2 >= *(v20 + 2))
          {
            goto LABEL_125;
          }

          v107 = &v20[16 * v104];
          *v107 = v105;
          *(v107 + 1) = v106;
          v129 = v20;
          result = sub_100B31DDC(v104 - 1);
          v20 = v129;
          v104 = *(v129 + 2);
          if (v104 <= 1)
          {
          }
        }

        goto LABEL_135;
      }
    }

LABEL_131:
    result = sub_100B31E68(v20);
    v20 = result;
    goto LABEL_101;
  }

  v109 = a4;
  v19 = 0;
  v126 = &v108 - v16;
  v127 = v17;
  v124 = v17 + 8;
  v125 = &v108 - v16 + 8;
  v20 = _swiftEmptyArrayStorage;
  v112 = a3;
  while (1)
  {
    v21 = v19;
    v113 = v19;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v110 = v6;
      v22 = *a3;
      v6 = *(v9 + 72);
      v5 = v22 + v6 * (v19 + 1);
      v23 = v19;
      v24 = v126;
      sub_1000295D4(v5, v126, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v25 = v127;
      sub_1000295D4(v22 + v6 * v23, v127, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v26 = *(v128 + 20);
      LODWORD(v119) = *&v125[v26];
      LODWORD(v118) = *(v124 + v26);
      sub_10001F1B0(v25, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      result = sub_10001F1B0(v24, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v27 = v23 + 2;
      v120 = v6;
      v121 = v18;
      v28 = v22 + v6 * v27;
      while (v18 != v27)
      {
        LODWORD(v122) = v119 < v118;
        v29 = v126;
        sub_1000295D4(v28, v126, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v30 = v127;
        sub_1000295D4(v5, v127, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v31 = *(v128 + 20);
        v6 = v20;
        v32 = *&v125[v31];
        v33 = *(v124 + v31);
        sub_10001F1B0(v30, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v18 = v121;
        result = sub_10001F1B0(v29, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v34 = v32 >= v33;
        v20 = v6;
        v35 = v34;
        ++v27;
        v28 += v120;
        v5 += v120;
        if (((v122 ^ v35) & 1) == 0)
        {
          v18 = v27 - 1;
          break;
        }
      }

      a3 = v112;
      v21 = v113;
      v9 = v116;
      if (v119 >= v118)
      {
        goto LABEL_26;
      }

      if (v18 < v113)
      {
        goto LABEL_128;
      }

      if (v113 >= v18)
      {
LABEL_26:
        v6 = v110;
      }

      else
      {
        v36 = v120 * (v18 - 1);
        v37 = v18 * v120;
        v38 = v18;
        v39 = v18;
        v40 = v113;
        v41 = v113 * v120;
        do
        {
          if (v40 != --v39)
          {
            v42 = *v112;
            if (!*v112)
            {
              goto LABEL_134;
            }

            v5 = v42 + v41;
            sub_10087EE70(v42 + v41, v115, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
            if (v41 < v36 || v5 >= v42 + v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10087EE70(v115, v42 + v36, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
            v9 = v116;
          }

          ++v40;
          v36 -= v120;
          v37 -= v120;
          v41 += v120;
        }

        while (v40 < v39);
        v6 = v110;
        a3 = v112;
        v21 = v113;
        v18 = v38;
      }
    }

    v43 = a3[1];
    if (v18 >= v43)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_127;
    }

    if (v18 - v21 >= v109)
    {
LABEL_37:
      v45 = v18;
      goto LABEL_38;
    }

    if (__OFADD__(v21, v109))
    {
      goto LABEL_129;
    }

    if (v21 + v109 >= v43)
    {
      v44 = a3[1];
    }

    else
    {
      v44 = v21 + v109;
    }

    if (v44 < v21)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v18 == v44)
    {
      goto LABEL_37;
    }

    v108 = v20;
    v110 = v6;
    v91 = *a3;
    v92 = *(v9 + 72);
    v93 = *a3 + v92 * (v18 - 1);
    v94 = -v92;
    v95 = v113 - v18;
    v122 = v91;
    v114 = v92;
    v5 = v91 + v18 * v92;
    v96 = v128;
    v117 = v44;
LABEL_91:
    v120 = v93;
    v121 = v18;
    v118 = v5;
    v119 = v95;
    v97 = v93;
LABEL_92:
    v98 = v126;
    sub_1000295D4(v5, v126, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    v99 = v127;
    sub_1000295D4(v97, v127, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    v100 = *(v96 + 20);
    v101 = *&v125[v100];
    v102 = *(v124 + v100);
    sub_10001F1B0(v99, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    result = sub_10001F1B0(v98, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    if (v101 < v102)
    {
      break;
    }

    v96 = v128;
LABEL_90:
    v18 = v121 + 1;
    v93 = v120 + v114;
    v95 = v119 - 1;
    v5 = v118 + v114;
    v45 = v117;
    if (v121 + 1 != v117)
    {
      goto LABEL_91;
    }

    v6 = v110;
    a3 = v112;
    v9 = v116;
    v20 = v108;
LABEL_38:
    if (v45 < v113)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v47 = *(v20 + 2);
    v46 = *(v20 + 3);
    v5 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_100A5B430((v46 > 1), v47 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v5;
    v48 = &v20[16 * v47];
    *(v48 + 4) = v113;
    *(v48 + 5) = v45;
    v49 = *v111;
    if (!*v111)
    {
      goto LABEL_136;
    }

    v117 = v45;
    if (v47)
    {
      while (2)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          v55 = &v20[16 * v5 + 32];
          v56 = *(v55 - 64);
          v57 = *(v55 - 56);
          v61 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          if (v61)
          {
            goto LABEL_113;
          }

          v60 = *(v55 - 48);
          v59 = *(v55 - 40);
          v61 = __OFSUB__(v59, v60);
          v53 = v59 - v60;
          v54 = v61;
          if (v61)
          {
            goto LABEL_114;
          }

          v62 = &v20[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v61 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v61)
          {
            goto LABEL_116;
          }

          v61 = __OFADD__(v53, v65);
          v66 = v53 + v65;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v66 >= v58)
          {
            v84 = &v20[16 * v50 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v61 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v61)
            {
              goto LABEL_123;
            }

            if (v53 < v87)
            {
              v50 = v5 - 2;
            }
          }

          else
          {
LABEL_58:
            if (v54)
            {
              goto LABEL_115;
            }

            v67 = &v20[16 * v5];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_118;
            }

            v73 = &v20[16 * v50 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_122;
            }

            if (v71 + v76 < v53)
            {
              goto LABEL_72;
            }

            if (v53 < v76)
            {
              v50 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v51 = *(v20 + 4);
            v52 = *(v20 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
            goto LABEL_58;
          }

          v77 = &v20[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_72:
          if (v72)
          {
            goto LABEL_117;
          }

          v80 = &v20[16 * v50];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_120;
          }

          if (v83 < v71)
          {
            break;
          }
        }

        v88 = v50 - 1;
        if (v50 - 1 >= v5)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v89 = *&v20[16 * v88 + 32];
        v5 = *&v20[16 * v50 + 40];
        sub_10087C8E8(*a3 + *(v9 + 72) * v89, *a3 + *(v9 + 72) * *&v20[16 * v50 + 32], *a3 + *(v9 + 72) * v5, v49);
        if (v6)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100B31E68(v20);
        }

        if (v88 >= *(v20 + 2))
        {
          goto LABEL_112;
        }

        v90 = &v20[16 * v88];
        *(v90 + 4) = v89;
        *(v90 + 5) = v5;
        v129 = v20;
        result = sub_100B31DDC(v50);
        v20 = v129;
        v5 = *(v129 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = a3[1];
    v19 = v117;
    if (v117 >= v18)
    {
      goto LABEL_99;
    }
  }

  if (v122)
  {
    v103 = v123;
    sub_10087EE70(v5, v123, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    v96 = v128;
    swift_arrayInitWithTakeFrontToBack();
    sub_10087EE70(v103, v97, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    v97 += v94;
    v5 += v94;
    v34 = __CFADD__(v95++, 1);
    if (v34)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_10087C374(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v85;
    if (!*v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_100B31E68(v10);
      v10 = result;
    }

    v80 = *(v10 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v10[16 * v80];
        v82 = *&v10[16 * v80 + 24];
        sub_10087CE30((*a3 + 8 * v81), (*a3 + 8 * *&v10[16 * v80 + 16]), (*a3 + 8 * v82), v5);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100B31E68(v10);
        }

        if (v80 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v83 = &v10[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_100B31DDC(v80 - 1);
        v80 = *(v10 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*a3 + 8 * v9);
      v13 = 8 * v11;
      v14 = (*a3 + 8 * v11);
      v17 = *v14;
      v16 = v14 + 4;
      v15 = v17;
      v18 = v11 + 2;
      v19 = v12;
      while (v7 != v18)
      {
        v20 = *v16;
        v16 += 2;
        v21 = (v12 < v15) ^ (v20 >= v19);
        ++v18;
        v19 = v20;
        if ((v21 & 1) == 0)
        {
          v9 = v18 - 1;
          if (v12 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v22 = 8 * v9 - 8;
        v23 = v9;
        v24 = v11;
        do
        {
          if (v24 != --v23)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v25 = *(v26 + v13);
            *(v26 + v13) = *(v26 + v22);
            *(v26 + v22) = v25;
          }

          ++v24;
          v22 -= 8;
          v13 += 8;
        }

        while (v24 < v23);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v35 = *(v10 + 3);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_100A5B430((v35 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v36;
    v37 = &v10[16 * v5];
    *(v37 + 4) = v11;
    *(v37 + 5) = v9;
    v38 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v10 + 4);
          v41 = *(v10 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v10[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_107;
          }

          v62 = &v10[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v66 = &v10[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_71:
        if (v61)
        {
          goto LABEL_106;
        }

        v69 = &v10[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_109;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_78:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v78 = *&v10[16 * v77 + 32];
        v5 = *&v10[16 * v39 + 40];
        sub_10087CE30((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v39 + 32]), (*a3 + 8 * v5), v38);
        if (v4)
        {
        }

        if (v5 < v78)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100B31E68(v10);
        }

        if (v77 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v79 = &v10[16 * v77];
        *(v79 + 4) = v78;
        *(v79 + 5) = v5;
        result = sub_100B31DDC(v39);
        v36 = *(v10 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v10[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v10[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_108;
      }

      if (v55 >= v47)
      {
        v73 = &v10[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_112;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 8 * v9 - 8;
  v29 = v11 - v9;
LABEL_30:
  v30 = *(v27 + 8 * v9);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *v32)
    {
LABEL_29:
      ++v9;
      v28 += 8;
      --v29;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *(v32 + 12);
    *(v32 + 8) = *v32;
    *v32 = v30;
    *(v32 + 4) = v33;
    v32 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_10087C8E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0);
  v8 = __chkstk_darwin(v48);
  v47 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v46 = &v36 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v51 = a1;
  v50 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v38 = v47 + 8;
      v39 = v46 + 8;
      v26 = -v13;
      v27 = v25;
      v40 = a4;
      v41 = a1;
      v42 = v26;
      do
      {
        v36 = v25;
        v28 = a2 + v26;
        v43 = a2;
        v44 = a2 + v26;
        while (1)
        {
          if (a2 <= a1)
          {
            v51 = a2;
            v49 = v36;
            goto LABEL_59;
          }

          v30 = a3;
          v37 = v25;
          a3 += v26;
          v31 = v27 + v26;
          v32 = v46;
          sub_1000295D4(v27 + v26, v46, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
          v33 = v47;
          v34 = v48;
          sub_1000295D4(v28, v47, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
          v35 = *(v34 + 20);
          LODWORD(v45) = *(v39 + v35);
          LODWORD(v34) = *(v38 + v35);
          sub_10001F1B0(v33, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
          sub_10001F1B0(v32, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
          if (v45 < v34)
          {
            break;
          }

          v25 = v31;
          if (v30 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v44;
            v26 = v42;
          }

          else
          {
            v28 = v44;
            v26 = v42;
            if (v30 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v31;
          a1 = v41;
          v29 = v31 > v40;
          a2 = v43;
          if (!v29)
          {
            goto LABEL_57;
          }
        }

        if (v30 < v43 || a3 >= v43)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v37;
          v26 = v42;
        }

        else
        {
          a2 = v44;
          v25 = v37;
          v26 = v42;
          if (v30 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v41;
      }

      while (v27 > v40);
    }

LABEL_57:
    v51 = a2;
    v49 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v16;
    v49 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v42 = v47 + 8;
      v43 = v46 + 8;
      v44 = a3;
      do
      {
        v19 = v46;
        sub_1000295D4(a2, v46, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v20 = v47;
        sub_1000295D4(a4, v47, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v21 = *(v48 + 20);
        v22 = *(v43 + v21);
        v23 = *(v42 + v21);
        sub_10001F1B0(v20, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        sub_10001F1B0(v19, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v44;
          }

          else
          {
            v24 = v44;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v13;
          a4 += v13;
        }

        else if (a1 < a2 || a1 >= a2 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 += v13;
          v24 = v44;
        }

        else
        {
          v24 = v44;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v24);
    }
  }

LABEL_59:
  sub_10060ABD4(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_10087CE30(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v20 = *(v18 - 2);
      v18 -= 8;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v21 >> 3));
  }

  return 1;
}

void sub_10087D034(uint64_t a1)
{
  v3 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_1000295D4(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for SharedBeaconRecord);
      sub_1010F5A64(v9, v5);
      sub_10001F1B0(v9, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v5, &unk_101698C30, &unk_101392630);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_10087D23C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);

        sub_1010F5CB0(v12, v13, v14);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_10087D37C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_100017D5C(*v11, v13);
        sub_1010F6048(v12, v13, &v14);
        sub_100016590(v12, v13);
        sub_100006654(v14, *(&v14 + 1));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_10087D4BC(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_1010F6494(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_10087D5F0(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_1010F6870(*(*(a1 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_10087D6E4(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
    sub_100009D18(&qword_101698E28, &qword_101698D00, SPHandle_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1000128F8(a1);
      return;
    }

    while (1)
    {
      v16 = sub_1010F6FE0(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_10087D930(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *(v11 + 8);
        v13 = *(v11 + 16);
        v14 = *v11;

        sub_1010F7524(v14, v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_10087DAAC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(char *))
{
  v24 = a3;
  v25 = a5;
  v23 = a2;
  v8 = sub_1000BC4D4(a2, a3);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = a4(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - v13;
  if (*(*v5 + 16))
  {
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    v22[1] = v12 + 8;
    v22[2] = v12 + 16;

    v19 = 0;
    while (v17)
    {
      v20 = v19;
LABEL_10:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v12 + 16))(v14, *(a1 + 48) + *(v12 + 72) * (v21 | (v20 << 6)), v11);
      v25(v14);
      (*(v12 + 8))(v14, v11);
      sub_10000B3A8(v10, v23, v24);
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v17 = *(a1 + 56 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_10087DCC8(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016A59B8, &qword_1013B34D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for BeaconIdentifier(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_1000295D4(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for BeaconIdentifier);
      sub_1010F7F58(v5);
      sub_10001F1B0(v9, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v5, &qword_1016A59B8, &qword_1013B34D8);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10087DED0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    goto LABEL_10;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v5, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v6, v5))
    {
LABEL_13:
      __DataStorage._length.getter();
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    __break(1u);
LABEL_10:
    v7 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v7, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return Data._Representation.replaceSubrange(_:with:count:)();
}

uint64_t sub_10087E0A8(uint64_t a1, uint64_t a2)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && (type metadata accessor for BeaconIdentifier(0), (static UUID.== infix(_:_:)()))
  {
    v4 = *(type metadata accessor for BeaconKeyServiceBuilder.FileKey(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      v7 = 0x7261646E6F636553;
    }

    else
    {
      v7 = 0x7972616D697250;
    }

    if (v5)
    {
      v8 = 0xE900000000000079;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v6)
    {
      v9 = 0x7261646E6F636553;
    }

    else
    {
      v9 = 0x7972616D697250;
    }

    if (v6)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 == v9 && v8 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_10087E194()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for BeaconIdentifier(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100869810(v0 + v3, v0 + v6);
}

uint64_t sub_10087E2F8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014650;

  return sub_100869EA0(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10087E3E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10087E430(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
  v9 = *(v4 + 16);
  v8 = v4 + 16;
  v9(v6, a1, v3);
  v10 = sub_100878D64(v6, &selRef_fileHandleForReadingFromURL_error_);
  if (!v1)
  {
    v11 = v10;
    v93 = 0;
    if (([v10 seekToOffset:0 error:&v93] & 1) == 0)
    {
      v18 = v93;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_22:

      return;
    }

    v12 = v93;
    v13 = [v11 readDataOfLength:3];
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_20;
      }

      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      v21 = __OFSUB__(v19, v20);
      v22 = v19 - v20;
      if (!v21)
      {
        if (v22 != 3)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      if (!v17)
      {
        if (BYTE6(v16) != 3)
        {
          goto LABEL_20;
        }

LABEL_14:
        if (Data._Representation.subscript.getter() != 75 || Data._Representation.subscript.getter() != 73 || Data._Representation.subscript.getter() != 77)
        {
          goto LABEL_20;
        }

        v23 = [v11 readDataOfLength:1];
        v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v24;

        v25 = v7 >> 62;
        if ((v7 >> 62) > 1)
        {
          if (v25 != 2)
          {
            goto LABEL_36;
          }

          v29 = *(v8 + 16);
          v28 = *(v8 + 24);
          v21 = __OFSUB__(v28, v29);
          v26 = v28 - v29;
          if (!v21)
          {
LABEL_30:
            if (v26 == 1 && Data._Representation.subscript.getter() == 1)
            {
              v30 = [v11 readDataOfLength:4];
              v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = v31;

              v33 = v32 >> 62;
              v91 = v32;
              if ((v32 >> 62) > 1)
              {
                if (v33 != 2)
                {
                  goto LABEL_66;
                }

                v37 = *(v92 + 16);
                v89 = *(v92 + 24);
                v90 = v37;
                v38 = __DataStorage._bytes.getter();
                if (v38)
                {
                  v88 = v38;
                  v39 = __DataStorage._offset.getter();
                  v40 = v90;
                  if (__OFSUB__(v90, v39))
                  {
LABEL_116:
                    __break(1u);
                    goto LABEL_117;
                  }

                  v88 += v90 - v39;
                }

                else
                {
                  v88 = 0;
                  v40 = v90;
                }

                v46 = v89 - v40;
                if (!__OFSUB__(v89, v40))
                {
                  v47 = __DataStorage._length.getter();
                  if (v47 >= v46)
                  {
                    v45 = v46;
                  }

                  else
                  {
                    v45 = v47;
                  }

                  v44 = v88;
                  if (!v88)
                  {
                    goto LABEL_66;
                  }

LABEL_55:
                  if ((v45 + 3) >= 7)
                  {
                    v34 = *v44;
                    goto LABEL_57;
                  }

LABEL_66:
                  sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
                  sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70, &unk_1013C1158);
                  swift_allocError();
                  *v57 = 0;
                  *(v57 + 4) = 1;
                  swift_willThrow();
LABEL_112:
                  sub_100016590(v92, v91);
                  goto LABEL_37;
                }
              }

              else
              {
                if (!v33)
                {
                  if ((v32 & 0xFC000000000000) != 0)
                  {
                    v34 = v92;
LABEL_57:
                    v87 = v34;
                    v48 = [v11 readDataOfLength:4];
                    v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v50 = v49;

                    v51 = v50 >> 62;
                    v89 = v50;
                    if ((v50 >> 62) > 1)
                    {
                      if (v51 != 2)
                      {
                        goto LABEL_98;
                      }

                      v53 = *(v90 + 24);
                      v88 = *(v90 + 16);
                      v86 = v53;
                      v54 = __DataStorage._bytes.getter();
                      if (v54)
                      {
                        v55 = v54;
                        v56 = __DataStorage._offset.getter();
                        if (__OFSUB__(v88, v56))
                        {
LABEL_120:
                          __break(1u);
                          goto LABEL_121;
                        }

                        v85 = v88 - v56 + v55;
                      }

                      else
                      {
                        v85 = 0;
                      }

                      v62 = v86 - v88;
                      if (!__OFSUB__(v86, v88))
                      {
                        v63 = __DataStorage._length.getter();
                        if (v63 >= v62)
                        {
                          v61 = v62;
                        }

                        else
                        {
                          v61 = v63;
                        }

                        v60 = v85;
                        if (!v85)
                        {
                          goto LABEL_98;
                        }

LABEL_80:
                        if ((v61 + 3) >= 7)
                        {
                          v52 = *v60;
                          goto LABEL_82;
                        }

LABEL_98:
                        sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
                        sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70, &unk_1013C1158);
                        swift_allocError();
                        *v74 = 1;
                        *(v74 + 4) = 2;
                        swift_willThrow();
LABEL_111:
                        sub_100016590(v90, v89);
                        goto LABEL_112;
                      }

LABEL_119:
                      __break(1u);
                      goto LABEL_120;
                    }

                    if (!v51)
                    {
                      if ((v50 & 0xFC000000000000) != 0)
                      {
                        v52 = v90;
LABEL_82:
                        LODWORD(v85) = v52;
                        v64 = [v11 readDataOfLength:4];
                        v86 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                        v66 = v65;

                        v88 = v66;
                        v67 = v66 >> 62;
                        if ((v66 >> 62) > 1)
                        {
                          if (v67 != 2)
                          {
LABEL_110:
                            sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
                            sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70, &unk_1013C1158);
                            swift_allocError();
                            *v82 = 1;
                            *(v82 + 4) = 2;
                            swift_willThrow();
                            sub_100016590(v86, v88);
                            goto LABEL_111;
                          }

                          v68 = *(v86 + 16);
                          v84 = *(v86 + 24);
                          v69 = __DataStorage._bytes.getter();
                          if (v69)
                          {
                            v70 = __DataStorage._offset.getter();
                            if (__OFSUB__(v68, v70))
                            {
LABEL_124:
                              __break(1u);
                              goto LABEL_125;
                            }

                            v69 += v68 - v70;
                          }

                          v21 = __OFSUB__(v84, v68);
                          v71 = v84 - v68;
                          if (!v21)
                          {
                            v72 = __DataStorage._length.getter();
                            if (v72 >= v71)
                            {
                              v73 = v71;
                            }

                            else
                            {
                              v73 = v72;
                            }

                            if (v69 && (v73 + 3) >= 7)
                            {
                              goto LABEL_106;
                            }

                            goto LABEL_110;
                          }

LABEL_123:
                          __break(1u);
                          goto LABEL_124;
                        }

                        if (!v67)
                        {
                          if ((v88 & 0xFC000000000000) != 0)
                          {
LABEL_106:
                            Data._Representation.subscript.getter();
                            sub_100016590(v14, v16);
                            sub_100016590(v8, v7);
                            sub_100016590(v92, v91);

                            sub_100016590(v90, v89);
                            sub_100016590(v86, v88);
                            return;
                          }

                          goto LABEL_110;
                        }

                        v75 = v86;
                        v84 = (v86 >> 32) - v86;
                        if (v86 >> 32 >= v86)
                        {
                          v76 = __DataStorage._bytes.getter();
                          if (v76)
                          {
                            v77 = v76;
                            v78 = __DataStorage._offset.getter();
                            if (!__OFSUB__(v75, v78))
                            {
                              v79 = v75 - v78 + v77;
                              v80 = __DataStorage._length.getter();
                              if (v79)
                              {
                                v81 = v84;
                                if (v80 < v84)
                                {
                                  v81 = v80;
                                }

                                if ((v81 + 3) >= 7)
                                {
                                  goto LABEL_106;
                                }
                              }

                              goto LABEL_110;
                            }

LABEL_125:
                            __break(1u);
                            return;
                          }

                          goto LABEL_109;
                        }

LABEL_122:
                        __break(1u);
                        goto LABEL_123;
                      }

                      goto LABEL_98;
                    }

                    v88 = v90;
                    v85 = (v90 >> 32) - v90;
                    if (v90 >> 32 >= v90)
                    {
                      v86 = __DataStorage._bytes.getter();
                      if (!v86)
                      {
                        __DataStorage._length.getter();
                        goto LABEL_98;
                      }

                      v58 = __DataStorage._offset.getter();
                      if (!__OFSUB__(v88, v58))
                      {
                        v88 = v88 - v58 + v86;
                        v59 = __DataStorage._length.getter();
                        if (!v88)
                        {
                          goto LABEL_98;
                        }

                        v60 = v88;
                        v61 = v85;
                        if (v59 < v85)
                        {
                          v61 = v59;
                        }

                        goto LABEL_80;
                      }

LABEL_121:
                      __break(1u);
                      goto LABEL_122;
                    }

LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }

                  goto LABEL_66;
                }

                v89 = (v92 >> 32) - v92;
                v90 = v92;
                if (v92 >> 32 >= v92)
                {
                  v41 = __DataStorage._bytes.getter();
                  if (!v41)
                  {
                    __DataStorage._length.getter();
                    goto LABEL_66;
                  }

                  v88 = v41;
                  v42 = __DataStorage._offset.getter();
                  if (!__OFSUB__(v90, v42))
                  {
                    v90 = v90 - v42 + v88;
                    v43 = __DataStorage._length.getter();
                    v44 = v90;
                    if (!v90)
                    {
                      goto LABEL_66;
                    }

                    v45 = v89;
                    if (v43 < v89)
                    {
                      v45 = v43;
                    }

                    goto LABEL_55;
                  }

LABEL_117:
                  __break(1u);
                  goto LABEL_118;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_116;
            }

LABEL_36:
            v35 = Data._Representation.subscript.getter();
            sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
            sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70, &unk_1013C1158);
            swift_allocError();
            *v36 = v35;
            *(v36 + 4) = 0;
            swift_willThrow();
LABEL_37:
            sub_100016590(v8, v7);
            goto LABEL_21;
          }

          __break(1u);
        }

        else if (!v25)
        {
          v26 = BYTE6(v7);
          goto LABEL_30;
        }

        LODWORD(v26) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          __break(1u);
        }

        v26 = v26;
        goto LABEL_30;
      }

      if (!__OFSUB__(HIDWORD(v14), v14))
      {
        if (HIDWORD(v14) - v14 == 3)
        {
          goto LABEL_14;
        }

LABEL_20:
        sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
        sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70, &unk_1013C1158);
        swift_allocError();
        *v27 = 0;
        *(v27 + 4) = 2;
        swift_willThrow();
LABEL_21:
        sub_100016590(v14, v16);
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_109:
    __DataStorage._length.getter();
    goto LABEL_110;
  }
}

uint64_t sub_10087EE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10087EED8(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v14 = v1[2];
  v8 = v1[4];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014744;

  return sub_10086A3B0(a1, v14, v7, v8, v1 + v4, v9, v10, v11);
}

uint64_t sub_10087F054()
{
  v2 = *(type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_10086A8A8(v7, v0 + v3, v8, v9, v10, v11);
}

uint64_t sub_10087F1BC(uint64_t a1)
{
  v1[11] = a1;
  v2 = type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v3 = type metadata accessor for DirectorySequence();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return _swift_task_switch(sub_10087F488, 0, 0);
}

uint64_t sub_10087F488()
{
  v179 = v0;
  v173 = [objc_opt_self() defaultManager];
  if (qword_101694A00 != -1)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v1 = v0[41];
    v2 = v0[34];
    v3 = v0[35];
    v4 = v0[11];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016ABAA8);
    v166 = *(v3 + 16);
    v166(v1, v4, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[41];
    v10 = v0[34];
    v11 = v0[35];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v178[0] = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_10087E3E8(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v174 = *(v11 + 8);
      v174(v9, v10);
      v17 = sub_1000136BC(v14, v16, v178);

      *(v12 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Verify file integrity for directory: %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    else
    {

      v174 = *(v11 + 8);
      v174(v9, v10);
    }

    v18 = v0[34];
    v19 = v0[35];
    v20 = v0[30];
    NSFileManager.flatSequence(at:includingPropertiesForKeys:)();
    DirectorySequence.next()();
    v172 = *(v19 + 48);
    if (v172(v20, 1, v18) == 1)
    {
      v21 = _swiftEmptyArrayStorage;
    }

    else
    {
      v162 = *(v0[35] + 32);
      v21 = _swiftEmptyArrayStorage;
      v156 = v0[12];
      v158 = v0[13];
      do
      {
        v160 = v21;
        while (1)
        {
          v162(v0[40], v0[30], v0[34]);
          if (URL.pathExtension.getter() == 0x70616D79656BLL && v24 == 0xE600000000000000)
          {
            break;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
            goto LABEL_18;
          }

          v166(v0[39], v0[40], v0[34]);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.error.getter();
          v29 = os_log_type_enabled(v27, v28);
          v30 = v0[39];
          v31 = v0[34];
          if (v29)
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v178[0] = v33;
            *v32 = 136315138;
            v34 = URL.path.getter();
            v36 = v35;
            v174(v30, v31);
            v37 = sub_1000136BC(v34, v36, v178);

            *(v32 + 4) = v37;
            _os_log_impl(&_mh_execute_header, v27, v28, "Removing unexpected file: %s", v32, 0xCu);
            sub_100007BAC(v33);
          }

          else
          {

            v174(v30, v31);
          }

          URL._bridgeToObjectiveC()(v38);
          v42 = v41;
          v0[6] = 0;
          v43 = [v173 removeItemAtURL:v41 error:v0 + 6];

          v44 = v0[6];
          if (v43)
          {
            v45 = v44;
          }

          else
          {
            v46 = v44;
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          v174(v0[40], v0[34]);
          v22 = v0[34];
          v23 = v0[30];
          DirectorySequence.next()();
          if (v172(v23, 1, v22) == 1)
          {
            v21 = v160;
            goto LABEL_32;
          }
        }

LABEL_18:
        v39 = v0[40];
        v40 = objc_autoreleasePoolPush();
        sub_10087E430(v39);
        v47 = v0[40];
        v48 = v0[34];
        v50 = HIDWORD(v49);
        v52 = HIDWORD(v51);
        v54 = v0[25];
        v53 = v0[26];
        v55 = v51;
        v56 = v40;
        LODWORD(v40) = v49;
        objc_autoreleasePoolPop(v56);
        v166(v53, v47, v48);
        v57 = v53 + *(v156 + 20);
        *v57 = v55;
        *(v57 + 4) = v52;
        *(v57 + 8) = v40;
        *(v57 + 12) = v50;
        sub_1000295D4(v53, v54, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v21 = v160;
        }

        else
        {
          v21 = sub_100A5E0B4(0, v160[2] + 1, 1, v160);
        }

        v60 = v21[2];
        v59 = v21[3];
        if (v60 >= v59 >> 1)
        {
          v21 = sub_100A5E0B4((v59 > 1), v60 + 1, 1, v21);
        }

        v61 = v0[40];
        v62 = v0[34];
        v63 = v0[30];
        v64 = v0[25];
        sub_10001F1B0(v0[26], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v174(v61, v62);
        v21[2] = v60 + 1;
        sub_10087EE70(v64, v21 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v60, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        DirectorySequence.next()();
      }

      while (v172(v63, 1, v62) != 1);
    }

LABEL_32:
    (*(v0[32] + 8))(v0[33], v0[31]);
    v65 = v21[2];
    v66 = _swiftEmptyArrayStorage;
    v161 = v21;
    if (v65)
    {
      v68 = v0[12];
      v67 = v0[13];
      v178[0] = _swiftEmptyArrayStorage;
      sub_101125314(0, v65, 0);
      v66 = v178[0];
      v69 = v21 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v70 = *(v67 + 72);
      while (1)
      {
        v71 = v0[24];
        sub_1000295D4(v69, v71, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v175 = *(v71 + *(v68 + 20) + 8);
        sub_10001F1B0(v71, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v72 = v175;
        if (vcgt_u32(v175, vdup_lane_s32(v175, 1)).u8[0])
        {
          break;
        }

        v178[0] = v66;
        v74 = *(v66 + 2);
        v73 = *(v66 + 3);
        if (v74 >= v73 >> 1)
        {
          sub_101125314((v73 > 1), v74 + 1, 1);
          v72 = v175;
          v66 = v178[0];
        }

        *(v66 + 2) = v74 + 1;
        *&v66[8 * v74 + 32] = v72;
        v69 += v70;
        if (!--v65)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_78;
    }

LABEL_38:
    v178[0] = v66;

    sub_100865634(v178);

    if (!*(v178[0] + 2))
    {
      v90 = v0[34];
      v91 = v0[35];
      v92 = v0[29];

      (*(v91 + 56))(v92, 1, 1, v90);
      goto LABEL_57;
    }

    v75 = *(v178[0] + 8);
    v176 = *(v178[0] + 9);

    v76 = v161;
    v77 = v161[2];
    if (!v77)
    {
      break;
    }

    v78 = 0;
    v80 = v0[12];
    v79 = v0[13];
    v81 = _swiftEmptyArrayStorage;
    v169 = v75;
    while (v78 < v76[2])
    {
      v82 = v0[23];
      v83 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v84 = *(v79 + 72);
      sub_1000295D4(v76 + v83 + v84 * v78, v82, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v85 = v82 + *(v80 + 20);
      if (*(v85 + 8) == v75 && *(v85 + 12) == v176)
      {
        sub_10087EE70(v0[23], v0[22], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v178[0] = v81;
        if ((v86 & 1) == 0)
        {
          sub_1011252D0(0, *(v81 + 2) + 1, 1);
          v81 = v178[0];
        }

        v88 = *(v81 + 2);
        v87 = *(v81 + 3);
        if (v88 >= v87 >> 1)
        {
          sub_1011252D0((v87 > 1), v88 + 1, 1);
          v81 = v178[0];
        }

        v89 = v0[22];
        *(v81 + 2) = v88 + 1;
        sub_10087EE70(v89, &v81[v83 + v88 * v84], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v75 = v169;
      }

      else
      {
        sub_10001F1B0(v0[23], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      }

      ++v78;
      v76 = v161;
      if (v77 == v78)
      {
        goto LABEL_53;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    swift_once();
  }

  v81 = _swiftEmptyArrayStorage;
LABEL_53:
  v178[0] = v81;

  sub_10086558C(v178);

  if (*(v178[0] + 2))
  {
    v93 = v0[34];
    v94 = v0[35];
    v95 = v0[28];
    v96 = v0[21];
    v97 = *(v0[13] + 80);
    sub_1000295D4(&v178[0][(v97 + 32) & ~v97], v96, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);

    (*(v94 + 32))(v95, v96, v93);
    v98 = 0;
  }

  else
  {

    v98 = 1;
  }

  v99 = v0[28];
  v100 = v0[29];
  (*(v0[35] + 56))(v99, v98, 1, v0[34]);
  sub_1000D2AD8(v99, v100, &unk_101696AC0, &qword_101390A60);
LABEL_57:
  v101 = v161[2];
  if (v101)
  {
    v102 = v0[13];
    v163 = v0[12];
    v103 = v161 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v177 = *(v102 + 72);
    v149 = v0[17] + 12;
    v150 = v0[18] + 8;
    v155 = v0[14] + 12;
    v157 = v0[15] + 8;
    v159 = (v0[35] + 32);
    while (1)
    {
      v106 = v0[34];
      v107 = v0[29];
      v108 = v0[27];
      sub_1000295D4(v103, v0[20], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      sub_1000D2A70(v107, v108, &unk_101696AC0, &qword_101390A60);
      if (v172(v108, 1, v106) == 1)
      {
        break;
      }

      (*v159)(v0[38], v0[27], v0[34]);
      if ((static URL.== infix(_:_:)() & 1) == 0)
      {
        v174(v0[38], v0[34]);
        goto LABEL_68;
      }

      v109 = v0[20];
      v111 = v0[17];
      v110 = v0[18];
      sub_1000295D4(v109, v0[19], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      sub_1000295D4(v109, v110, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      sub_1000295D4(v109, v111, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.default.getter();
      v114 = os_log_type_enabled(v112, v113);
      v164 = v0[34];
      v167 = v0[38];
      v115 = v0[19];
      v116 = v0[20];
      v117 = v0[18];
      if (v114)
      {
        v152 = v0[17];
        v153 = v113;
        v118 = swift_slowAlloc();
        v170 = v101;
        v119 = swift_slowAlloc();
        v178[0] = v119;
        *v118 = 136315650;
        v154 = v116;
        v120 = URL.path.getter();
        log = v112;
        v121 = v103;
        v123 = v122;
        sub_10001F1B0(v115, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v124 = sub_1000136BC(v120, v123, v178);
        v103 = v121;

        *(v118 + 4) = v124;
        *(v118 + 12) = 1024;
        LODWORD(v124) = *(v150 + *(v163 + 20));
        sub_10001F1B0(v117, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        *(v118 + 14) = v124;
        *(v118 + 18) = 1024;
        LODWORD(v124) = *(v149 + *(v163 + 20));
        sub_10001F1B0(v152, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        *(v118 + 20) = v124;
        _os_log_impl(&_mh_execute_header, log, v153, "KEEP: %s [%u...%u]", v118, 0x18u);
        sub_100007BAC(v119);
        v101 = v170;

        v174(v167, v164);
        v105 = v154;
      }

      else
      {
        sub_10001F1B0(v0[17], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        sub_10001F1B0(v117, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);

        sub_10001F1B0(v115, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
        v174(v167, v164);
        v105 = v116;
      }

LABEL_61:
      sub_10001F1B0(v105, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v103 += v177;
      if (!--v101)
      {
        goto LABEL_74;
      }
    }

    sub_10000B3A8(v0[27], &unk_101696AC0, &qword_101390A60);
LABEL_68:
    v125 = v0[20];
    v126 = v0[15];
    v127 = v0[14];
    sub_1000295D4(v125, v0[16], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    sub_1000295D4(v125, v126, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    sub_1000295D4(v125, v127, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.default.getter();
    v130 = os_log_type_enabled(v128, v129);
    v132 = v0[15];
    v131 = v0[16];
    if (v130)
    {
      v165 = v0[14];
      v133 = swift_slowAlloc();
      v171 = v101;
      v134 = swift_slowAlloc();
      v178[0] = v134;
      *v133 = 136315650;
      v168 = v103;
      v135 = URL.path.getter();
      v137 = v136;
      sub_10001F1B0(v131, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      v138 = sub_1000136BC(v135, v137, v178);

      *(v133 + 4) = v138;
      *(v133 + 12) = 1024;
      LODWORD(v138) = *(v157 + *(v163 + 20));
      sub_10001F1B0(v132, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      *(v133 + 14) = v138;
      *(v133 + 18) = 1024;
      v103 = v168;
      LODWORD(v138) = *(v155 + *(v163 + 20));
      sub_10001F1B0(v165, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      *(v133 + 20) = v138;
      _os_log_impl(&_mh_execute_header, v128, v129, "TOSS: %s [%u...%u]", v133, 0x18u);
      sub_100007BAC(v134);
      v101 = v171;
    }

    else
    {
      sub_10001F1B0(v0[14], type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
      sub_10001F1B0(v132, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);

      sub_10001F1B0(v131, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
    }

    URL._bridgeToObjectiveC()(v139);
    v141 = v140;
    v0[5] = 0;
    v142 = [v173 removeItemAtURL:v140 error:v0 + 5];

    v143 = v0[5];
    v144 = v0[20];
    if (v142)
    {
      v104 = v143;
    }

    else
    {
      v145 = v143;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v105 = v144;
    goto LABEL_61;
  }

LABEL_74:

  v146 = v0[29];

  sub_10000B3A8(v146, &unk_101696AC0, &qword_101390A60);

  v147 = v0[1];

  return v147();
}

uint64_t sub_100880D44(uint64_t a1)
{
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, v5, &unk_101696AC0, &qword_101390A60);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = objc_autoreleasePoolPush();
    sub_10087E430(v9);
    if (v1)
    {
      objc_autoreleasePoolPop(v11);
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      v13 = v12;
      v14 = HIDWORD(v12);
      objc_autoreleasePoolPop(v11);
      result = (*(v7 + 8))(v9, v6);
      if (v14 < v13)
      {
        __break(1u);
      }

      else
      {
        return v13;
      }
    }
  }

  return result;
}

char *sub_100880F5C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v10 = a2;
  v11 = 0;
  v12 = a3;
  while (1)
  {
    v14 = v12 > a2;
    if (v12 >= a1)
    {
      break;
    }

    if (v12 > a2 || a4 == v12)
    {
      goto LABEL_13;
    }

    v11 = 1;
LABEL_2:
    if (__CFADD__(v12++, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  if (v12 <= a2)
  {
    if (a4 == v12)
    {
      if (v11)
      {
        v14 = 0;
        goto LABEL_13;
      }

      return 0;
    }

    goto LABEL_2;
  }

  if ((v11 & 1) == 0)
  {
    a1 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v14 = 1;
LABEL_13:
  v4 = a1 - 1;
  if (!a1)
  {
    goto LABEL_38;
  }

  if (v4 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a1 - 1;
  }

  if (v6 < a3)
  {
    goto LABEL_39;
  }

  a1 = sub_100A5BCE0(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(a1 + 2);
  v12 = *(a1 + 3);
  v5 = v7 + 1;
  if (v7 < v12 >> 1)
  {
    goto LABEL_19;
  }

LABEL_40:
  a1 = sub_100A5BCE0((v12 > 1), v5, 1, a1);
LABEL_19:
  *(a1 + 2) = v5;
  v15 = &a1[16 * v7];
  *(v15 + 4) = a3;
  *(v15 + 5) = v6;
  if (v4 > a4)
  {

    return a4 + 1;
  }

  if (!v14)
  {

    return 0;
  }

LABEL_24:
  v17 = (v10 + 1);
  if (v10 == -1)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v17 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = (v10 + 1);
  }

  if (v5 > a4)
  {
    goto LABEL_42;
  }

  v10 = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v18 = v10;
    goto LABEL_31;
  }

LABEL_43:
  v18 = sub_100A5BCE0(0, *(v10 + 2) + 1, 1, v10);
LABEL_31:
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_100A5BCE0((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[16 * v20];
  *(v21 + 4) = v5;
  *(v21 + 5) = a4;

  if (v17 >= a3)
  {
    return 0;
  }

  result = v17;
  if (v17 <= 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100881154(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 | a4)
  {
    if (a4 >= a1 && a2 >= a3)
    {
      v4 = a1;
      if (qword_101694A00 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_1016ABAA8);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v8 = 136446466;
        v20 = v4;
        _print_unlocked<A, B>(_:_:)();
        v9._countAndFlagsBits = 3026478;
        v9._object = 0xE300000000000000;
        String.append(_:)(v9);
        _print_unlocked<A, B>(_:_:)();
        v10 = sub_1000136BC(0, 0xE000000000000000, &v21);

        *(v8 + 4) = v10;
        *(v8 + 12) = 2082;
        _print_unlocked<A, B>(_:_:)();
        v11._countAndFlagsBits = 3026478;
        v11._object = 0xE300000000000000;
        String.append(_:)(v11);
        _print_unlocked<A, B>(_:_:)();
        v12 = sub_1000136BC(0, 0xE000000000000000, &v21);

        *(v8 + 14) = v12;
        v13 = "requested [%{public}s] and hole [%{public}s] cannnot overlap!";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v6, v7, v13, v8, 0x16u);
        swift_arrayDestroy();

        return v20;
      }

      goto LABEL_21;
    }

    if (a1 && a1 - 1 == a4)
    {
      if (a2 >= a3)
      {
        return a3;
      }

      __break(1u);
    }

    if (a2 == -1)
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 == a3)
      {
        a3 = a1;
        if (a4 >= a1)
        {
          return a3;
        }

        __break(1u);
      }

      v4 = a1;
      if (qword_101694A00 == -1)
      {
LABEL_19:
        v14 = type metadata accessor for Logger();
        sub_1000076D4(v14, qword_1016ABAA8);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v8 = 136446466;
          v20 = v4;
          _print_unlocked<A, B>(_:_:)();
          v15._countAndFlagsBits = 3026478;
          v15._object = 0xE300000000000000;
          String.append(_:)(v15);
          _print_unlocked<A, B>(_:_:)();
          v16 = sub_1000136BC(0, 0xE000000000000000, &v21);

          *(v8 + 4) = v16;
          *(v8 + 12) = 2082;
          _print_unlocked<A, B>(_:_:)();
          v17._countAndFlagsBits = 3026478;
          v17._object = 0xE300000000000000;
          String.append(_:)(v17);
          _print_unlocked<A, B>(_:_:)();
          v18 = sub_1000136BC(0, 0xE000000000000000, &v21);

          *(v8 + 14) = v18;
          v13 = "ERROR: Unadjacent hole! requested [%{public}s] and hole [%{public}s]";
          goto LABEL_9;
        }

LABEL_21:

        return v4;
      }
    }

    swift_once();
    goto LABEL_19;
  }

  return a1;
}

char *sub_1008815E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v12 = 0;
  v13 = a3;
  while (1)
  {
    v15 = v13 > a2;
    if (v13 >= a1)
    {
      break;
    }

    if (v13 > a2 || a4 == v13)
    {
      goto LABEL_13;
    }

    v12 = 1;
LABEL_2:
    if (__CFADD__(v13++, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  if (v13 <= a2)
  {
    if (a4 == v13)
    {
      if (v12)
      {
        v15 = 0;
        goto LABEL_13;
      }

      return _swiftEmptyArrayStorage;
    }

    goto LABEL_2;
  }

  if ((v12 & 1) == 0)
  {
    v4 = _swiftEmptyArrayStorage;
    v23 = a2 + 1;
    if (a2 == -1)
    {
      goto LABEL_40;
    }

LABEL_27:
    if (v23 <= a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = v23;
    }

    if (v24 > a4)
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_32:
      v26 = *(v4 + 2);
      v25 = *(v4 + 3);
      if (v26 >= v25 >> 1)
      {
        v4 = sub_100A5BCE0((v25 > 1), v26 + 1, 1, v4);
      }

      *(v4 + 2) = v26 + 1;
      v27 = &v4[16 * v26];
      *(v27 + 4) = v24;
      *(v27 + 5) = a4;
      if (v23 < a3 && v23 >= 2)
      {
        v28 = static os_log_type_t.default.getter();
        if (qword_101694A20 != -1)
        {
          swift_once();
        }

        v29 = qword_10177B550;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_101385D80;
        v34 = v23;
        _print_unlocked<A, B>(_:_:)();
        v31._countAndFlagsBits = 3026478;
        v31._object = 0xE300000000000000;
        String.append(_:)(v31);
        _print_unlocked<A, B>(_:_:)();
        *(v30 + 56) = &type metadata for String;
        *(v30 + 64) = sub_100008C00();
        *(v30 + 32) = 0;
        *(v30 + 40) = 0xE000000000000000;
        os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Hole created %@", 15, 2, v30);
      }

      return v4;
    }

    v4 = sub_100A5BCE0(0, *(v4 + 2) + 1, 1, v4);
    goto LABEL_32;
  }

  v15 = 1;
LABEL_13:
  v8 = a1 - 1;
  if (!a1)
  {
    goto LABEL_44;
  }

  if (v8 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a1 - 1;
  }

  if (v6 >= a3)
  {
    v4 = sub_100A5BCE0(0, 1, 1, _swiftEmptyArrayStorage);
    v7 = *(v4 + 2);
    v13 = *(v4 + 3);
    v5 = v7 + 1;
    if (v7 < v13 >> 1)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  v4 = sub_100A5BCE0((v13 > 1), v5, 1, v4);
LABEL_19:
  *(v4 + 2) = v5;
  v16 = &v4[16 * v7];
  *(v16 + 4) = a3;
  *(v16 + 5) = v6;
  if (v8 > a4)
  {
    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_1016ABAA8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v20 = 136446210;
      _print_unlocked<A, B>(_:_:)();
      v21._countAndFlagsBits = 3026478;
      v21._object = 0xE300000000000000;
      String.append(_:)(v21);
      _print_unlocked<A, B>(_:_:)();
      v22 = sub_1000136BC(0, 0xE000000000000000, &v34);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Hole created %{public}s", v20, 0xCu);
      sub_100007BAC(v33);
    }
  }

  if (v15)
  {
    v23 = a2 + 1;
    if (a2 != -1)
    {
      goto LABEL_27;
    }

LABEL_40:
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v4;
}

uint64_t sub_100881A78(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100881B1C(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v3 = sub_1000BC4D4(&qword_1016ABE88, &unk_1013BFCF0);
  __chkstk_darwin(v3 - 8);
  v98 = v93 - v4;
  v5 = type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo(0);
  v95 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v101 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v94 = v93 - v9;
  __chkstk_darwin(v8);
  v100 = v93 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v106 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v93 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v93 - v19;
  __chkstk_darwin(v18);
  v22 = v93 - v21;
  v104 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  v96 = v5;
  v23 = *(v5 + 20);
  v105 = a2;
  v24 = a2 + v23;
  v108 = *(a2 + v23);
  v109[0] = dispatch thunk of CustomStringConvertible.description.getter();
  v109[1] = v25;
  v26._countAndFlagsBits = 45;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27 = *(v24 + 8);
  v28 = v11;
  v108 = v27;
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  v103 = v22;
  URL.appendingPathComponent(_:)();

  v107 = v20;
  URL.appendingPathExtension(_:)();
  v30 = v12 + 8;
  v31 = *(v12 + 8);
  v31(v17, v28);
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_1000076D4(v32, qword_1016ABAA8);
  v34 = v100;
  sub_1000295D4(v105, v100, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
  (*(v12 + 16))(v106, v107, v28);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v102 = v30;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v93[1] = v33;
    v39 = v38;
    v93[0] = swift_slowAlloc();
    v109[0] = v93[0];
    *v39 = 136315394;
    v40 = URL.path.getter();
    v41 = v34;
    v42 = v31;
    v43 = v28;
    v45 = v44;
    sub_10001F1B0(v41, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    v46 = sub_1000136BC(v40, v45, v109);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2080;
    v47 = v106;
    v48 = URL.path.getter();
    v50 = v49;
    v42(v47, v43);
    v51 = sub_1000136BC(v48, v50, v109);
    v28 = v43;
    v31 = v42;

    *(v39 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v35, v36, "Renaming %s to %s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v31(v106, v28);
    sub_10001F1B0(v34, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
  }

  v53 = v101;
  URL._bridgeToObjectiveC()(v52);
  v55 = v54;
  v109[0] = 0;
  v56 = v104;
  v57 = [v104 removeItemAtURL:v54 error:v109];

  if (v57)
  {
    v58 = v109[0];
  }

  else
  {
    v60 = v109[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v99 = 0;
  }

  URL._bridgeToObjectiveC()(v59);
  v62 = v61;
  URL._bridgeToObjectiveC()(v63);
  v65 = v64;
  v109[0] = 0;
  v66 = [v56 moveItemAtURL:v62 toURL:v64 error:v109];

  v67 = v109[0];
  if (v66)
  {
    v68 = v98;
    sub_1000D2A70(v97, v98, &qword_1016ABE88, &unk_1013BFCF0);
    if ((*(v95 + 48))(v68, 1, v96) == 1)
    {
      v69 = v67;

      v31(v107, v28);
      v31(v103, v28);
      return sub_10000B3A8(v68, &qword_1016ABE88, &unk_1013BFCF0);
    }

    v74 = v94;
    sub_10087EE70(v68, v94, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    sub_1000295D4(v74, v53, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    v75 = v67;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v109[0] = v79;
      *v78 = 136315138;
      v80 = URL.path.getter();
      v81 = v53;
      v82 = v31;
      v83 = v28;
      v85 = v84;
      sub_10001F1B0(v81, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
      v86 = sub_1000136BC(v80, v85, v109);
      v28 = v83;
      v31 = v82;

      *(v78 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v76, v77, "Deleting %s", v78, 0xCu);
      sub_100007BAC(v79);
      v56 = v104;

      v74 = v94;
    }

    else
    {

      sub_10001F1B0(v53, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    }

    URL._bridgeToObjectiveC()(v87);
    v89 = v88;
    v109[0] = 0;
    v90 = [v56 removeItemAtURL:v88 error:v109];

    if (v90)
    {
      v91 = v109[0];
    }

    else
    {
      v92 = v109[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    sub_10001F1B0(v74, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    v72 = v107;
    v73 = v28;
  }

  else
  {
    v71 = v109[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v72 = v107;
    v73 = v28;
  }

  v31(v72, v73);
  return (v31)(v103, v28);
}

uint64_t sub_100882478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[105] = v3;
  v4[99] = a3;
  v4[93] = a2;
  v4[87] = a1;
  v5 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v4[106] = v5;
  v6 = *(v5 - 8);
  v4[107] = v6;
  v4[108] = *(v6 + 64);
  v4[109] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[112] = v7;
  v8 = *(v7 - 8);
  v4[113] = v8;
  v4[114] = *(v8 + 64);
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();

  return _swift_task_switch(sub_100882624, 0, 0);
}

uint64_t sub_100882624()
{
  v1 = (*(v0 + 696) + *(*(v0 + 848) + 24));
  v2 = *v1;
  *(v0 + 960) = *v1;
  v3 = v1[1];
  *(v0 + 968) = v3;
  v4 = v1[2];
  *(v0 + 976) = v4;
  v5 = v1[3];
  *(v0 + 984) = v5;
  v6 = v1[4];
  *(v0 + 992) = v6;
  v7 = v1[5];
  *(v0 + 1000) = v7;
  if (v3 >> 60 == 15)
  {
    sub_100883394();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9(0);
  }

  v11 = *(v0 + 944);
  v12 = *(v0 + 904);
  v42 = *(v0 + 896);
  sub_100017D5C(v2, v3);
  sub_100017D5C(v4, v5);
  sub_10002E98C(v6, v7);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  type metadata accessor for BeaconIdentifier(0);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v13 = *(v12 + 8);
  *(v0 + 1008) = v13;
  *(v0 + 1016) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v11, v42);
  URL.appendingPathComponent(_:)();
  if (v7 >> 60 != 15)
  {
    URL.appendingPathComponent(_:)();
  }

  v14 = *(v0 + 936);
  v15 = *(v0 + 928);
  v16 = *(v0 + 904);
  v17 = *(v0 + 896);
  v43 = *(v0 + 888);
  v44 = *(v0 + 880);
  v18 = *(v0 + 872);
  v38 = v18;
  v39 = *(v0 + 912);
  v19 = *(v0 + 864);
  v20 = *(v0 + 856);
  v21 = *(v0 + 840);
  v40 = *(v0 + 744);
  v41 = *(v0 + 792);
  v22 = *(v0 + 696);
  (*(v16 + 56))();
  (*(v16 + 16))(v15, v14, v17);
  sub_1000295D4(v22, v18, type metadata accessor for KeyGenerationBeaconInfo);
  v23 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v24 = (v39 + *(v20 + 80) + v23) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v0 + 1024) = v25;
  *(v25 + 16) = v21;
  v26 = v25 + v23;
  v27 = *(v16 + 32);
  v27(v26, v15, v17);
  sub_10087EE70(v38, v25 + v24, type metadata accessor for KeyGenerationBeaconInfo);
  v28 = (v25 + ((v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = v40;
  v28[1] = v41;

  swift_asyncLet_begin();
  sub_1000D2A70(v43, v44, &unk_101696AC0, &qword_101390A60);
  if ((*(v16 + 48))(v44, 1, v17) == 1)
  {
    sub_10000B3A8(*(v0 + 880), &unk_101696AC0, &qword_101390A60);
    *(v0 + 1058) = 0;

    return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1056, sub_100882D54, v0 + 656);
  }

  v29 = *(v0 + 744);
  v27(*(v0 + 920), *(v0 + 880), *(v0 + 896));
  if (v29)
  {
    v30 = *(v0 + 792);
    if (v30)
    {
      v31 = *(v0 + 744) / 0x60uLL;
      v32 = v30 / 0x60;
      if (v32 >= v31)
      {
        v33 = v31 + 1;
        v34 = v32 + 1;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  v33 = 0;
  v34 = 0;
LABEL_16:
  v35 = swift_task_alloc();
  *(v0 + 1032) = v35;
  *v35 = v0;
  v35[1] = sub_100882BA8;
  v36 = *(v0 + 920);
  v37 = *(v0 + 696);

  return sub_10086E8A0(v36, v37, 1, v33, v34, 1);
}

uint64_t sub_100882BA8(char a1)
{
  v4 = *v2;
  *(*v2 + 1040) = v1;

  if (v1)
  {
    v5 = sub_100882F18;
  }

  else
  {
    *(v4 + 1057) = a1 & 1;
    v5 = sub_100882CD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100882CD4()
{
  (*(v0 + 1008))(*(v0 + 920), *(v0 + 896));
  *(v0 + 1058) = *(v0 + 1057);

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1056, sub_100882D54, v0 + 656);
}

uint64_t sub_100882D54()
{
  *(v1 + 1048) = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 16, v1 + 1056, sub_1008830F0, v1 + 704);
  }

  *(v1 + 1059) = *(v1 + 1056);
  return _swift_asyncLet_finish(v1 + 16, v1 + 1056, sub_100882DA4, v1 + 752);
}

uint64_t sub_100882DC0()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 896);
  v5 = *(v0 + 888);
  sub_100883574(*(v0 + 960), *(v0 + 968), *(v0 + 976), *(v0 + 984), *(v0 + 992), *(v0 + 1000));
  sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
  v1(v3, v4);
  v1(v2, v4);

  v6 = *(v0 + 8);
  v7 = (*(v0 + 1059) | *(v0 + 1058)) & 1;

  return v6(v7);
}

uint64_t sub_100882F18()
{
  (*(v0 + 1008))(*(v0 + 920), *(v0 + 896));

  return _swift_asyncLet_finish(v0 + 16, v0 + 1056, sub_100882F90, v0 + 800);
}

uint64_t sub_100882FAC()
{
  v1 = v0[126];
  v2 = v0[119];
  v3 = v0[117];
  v4 = v0[112];
  v5 = v0[111];
  sub_100883574(v0[120], v0[121], v0[122], v0[123], v0[124], v0[125]);
  sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
  v1(v3, v4);
  v1(v2, v4);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_10088310C()
{
  v1 = v0[126];
  v2 = v0[119];
  v3 = v0[117];
  v4 = v0[112];
  v5 = v0[111];
  sub_100883574(v0[120], v0[121], v0[122], v0[123], v0[124], v0[125]);
  sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
  v1(v3, v4);
  v1(v2, v4);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_100883250(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10086C328(a1, v8, v9, v10, v1 + v6, v11, v12);
}

unint64_t sub_100883394()
{
  result = qword_1016ABE80;
  if (!qword_1016ABE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ABE80);
  }

  return result;
}

uint64_t sub_1008833E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_10086E7D0(a1, v10, v1 + v6, v1 + v9, v12, v13);
}

uint64_t sub_100883574(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 != 15)
  {
    sub_100016590(result, a2);
    sub_100016590(a3, a4);

    return sub_100006654(a5, a6);
  }

  return result;
}

uint64_t sub_100883620(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for BeaconIdentifier(0);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + v5;
  v12 = *(v1 + v5);
  v13 = *(v11 + 8);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_100014744;

  return sub_10086CCC4(a1, v9, v10, v1 + v4, v12, v13, v1 + v7, v14);
}

uint64_t sub_100883820()
{
  v2 = *(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10086D12C(v0 + v3);
}

uint64_t sub_1008838F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_10086E6E8(v2);
}

void sub_1008839A4(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
  (*(v10 + 16))(v12, a1, v9);
  v13 = sub_100878D64(v12, &selRef_fileHandleForReadingFromURL_error_);
  if (!v4)
  {
    v14 = v13;
    v98 = 0;
    if (([v13 seekToOffset:0 error:&v98] & 1) == 0)
    {
      v22 = v98;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_22:

      return;
    }

    v15 = v98;
    v16 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
    v17 = [v14 readDataOfLength:3];
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_20;
      }

      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (!v25)
      {
        if (v26 != 3)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      if (!v21)
      {
        if (BYTE6(v20) != 3)
        {
          goto LABEL_20;
        }

LABEL_14:
        if (Data._Representation.subscript.getter() != 75 || Data._Representation.subscript.getter() != 73 || Data._Representation.subscript.getter() != 77)
        {
          goto LABEL_20;
        }

        v27 = [v14 readDataOfLength:1];
        v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = v29;
        v31 = v29 >> 62;
        if ((v29 >> 62) > 1)
        {
          v32 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
          if (v31 != 2)
          {
            goto LABEL_36;
          }

          v36 = *(v97 + 16);
          v35 = *(v97 + 24);
          v25 = __OFSUB__(v35, v36);
          v33 = v35 - v36;
          if (!v25)
          {
LABEL_30:
            if (v33 == 1 && Data._Representation.subscript.getter() == 1)
            {
              v94 = v30;
              v37 = [v14 v32[306]];
              v95 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = v38;

              v96 = v39;
              v40 = v39 >> 62;
              if ((v39 >> 62) > 1)
              {
                if (v40 != 2)
                {
                  goto LABEL_65;
                }

                v44 = *(v95 + 16);
                v92 = *(v95 + 24);
                v93 = v44;
                v45 = __DataStorage._bytes.getter();
                if (v45)
                {
                  v91 = v45;
                  v46 = __DataStorage._offset.getter();
                  v47 = v93;
                  if (__OFSUB__(v93, v46))
                  {
LABEL_116:
                    __break(1u);
                    goto LABEL_117;
                  }

                  v91 += v93 - v46;
                }

                else
                {
                  v91 = 0;
                  v47 = v93;
                }

                v53 = v92 - v47;
                if (!__OFSUB__(v92, v47))
                {
                  v54 = __DataStorage._length.getter();
                  if (v54 >= v53)
                  {
                    v52 = v53;
                  }

                  else
                  {
                    v52 = v54;
                  }

                  v51 = v91;
                  if (!v91)
                  {
                    goto LABEL_65;
                  }

LABEL_54:
                  if ((v52 + 3) >= 7)
                  {
                    v41 = *v51;
                    goto LABEL_56;
                  }

LABEL_65:
                  sub_1000BC4D4(a2, a3);
                  sub_1000041A4(a4, a2, a3, &unk_1013C1158);
                  swift_allocError();
                  *v62 = 0;
                  *(v62 + 4) = 1;
                  swift_willThrow();
LABEL_112:
                  sub_100016590(v95, v96);
                  sub_100016590(v97, v94);
                  goto LABEL_21;
                }
              }

              else
              {
                if (!v40)
                {
                  if ((v96 & 0xFC000000000000) != 0)
                  {
                    v41 = v95;
LABEL_56:
                    v90 = v41;
                    v55 = [v14 readDataOfLength:4];
                    v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v57 = v56;

                    v93 = v57;
                    v58 = v57 >> 62;
                    if ((v57 >> 62) > 1)
                    {
                      if (v58 != 2)
                      {
                        goto LABEL_90;
                      }

                      v60 = *(v92 + 16);
                      v91 = *(v92 + 24);
                      v89 = __DataStorage._bytes.getter();
                      if (v89)
                      {
                        v61 = __DataStorage._offset.getter();
                        if (__OFSUB__(v60, v61))
                        {
LABEL_120:
                          __break(1u);
                          goto LABEL_121;
                        }

                        v89 += v60 - v61;
                      }

                      else
                      {
                        v89 = 0;
                      }

                      v25 = __OFSUB__(v91, v60);
                      v67 = v91 - v60;
                      if (!v25)
                      {
                        v68 = __DataStorage._length.getter();
                        if (v68 >= v67)
                        {
                          v66 = v67;
                        }

                        else
                        {
                          v66 = v68;
                        }

                        v65 = v89;
                        if (!v89)
                        {
                          goto LABEL_90;
                        }

LABEL_79:
                        if ((v66 + 3) >= 7)
                        {
                          v59 = *v65;
LABEL_81:
                          LODWORD(v88) = v59;
                          v69 = [v14 readDataOfLength:4];
                          v89 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                          v71 = v70;

                          v91 = v71;
                          v72 = v71 >> 62;
                          if ((v71 >> 62) <= 1)
                          {
                            if (!v72)
                            {
                              if ((v91 & 0xFC000000000000) != 0)
                              {
LABEL_108:
                                v83 = v97;
                                v84 = v94;
                                Data._Representation.subscript.getter();
                                sub_100016590(v18, v20);
                                sub_100016590(v83, v84);
                                sub_100016590(v95, v96);

                                sub_100016590(v92, v93);
                                sub_100016590(v89, v91);
                                return;
                              }

                              goto LABEL_110;
                            }

                            v75 = v89;
                            v86 = (v89 >> 32) - v89;
                            if (v89 >> 32 >= v89)
                            {
                              v87 = __DataStorage._bytes.getter();
                              if (v87)
                              {
                                v76 = __DataStorage._offset.getter();
                                if (!__OFSUB__(v75, v76))
                                {
                                  v77 = v75 - v76 + v87;
                                  v78 = __DataStorage._length.getter();
                                  if (v77)
                                  {
                                    v79 = v86;
                                    if (v78 < v86)
                                    {
                                      v79 = v78;
                                    }

                                    if ((v79 + 3) >= 7)
                                    {
                                      goto LABEL_108;
                                    }
                                  }

                                  goto LABEL_110;
                                }

LABEL_125:
                                __break(1u);
                                return;
                              }

                              __DataStorage._length.getter();
LABEL_110:
                              sub_1000BC4D4(a2, a3);
                              sub_1000041A4(a4, a2, a3, &unk_1013C1158);
                              swift_allocError();
                              *v85 = 1;
                              *(v85 + 4) = 2;
                              swift_willThrow();
                              sub_100016590(v89, v91);
                              goto LABEL_111;
                            }

                            goto LABEL_122;
                          }

                          if (v72 != 2)
                          {
                            goto LABEL_110;
                          }

                          v16 = *(v89 + 16);
                          v86 = *(v89 + 24);
                          v87 = __DataStorage._bytes.getter();
                          if (v87)
                          {
                            v73 = __DataStorage._offset.getter();
                            if (__OFSUB__(v16, v73))
                            {
LABEL_124:
                              __break(1u);
                              goto LABEL_125;
                            }

                            v87 += v16 - v73;
                            goto LABEL_102;
                          }

LABEL_101:
                          v87 = 0;
LABEL_102:
                          v25 = __OFSUB__(v86, v16);
                          v80 = v86 - v16;
                          if (!v25)
                          {
                            v81 = __DataStorage._length.getter();
                            if (v81 >= v80)
                            {
                              v82 = v80;
                            }

                            else
                            {
                              v82 = v81;
                            }

                            if (v87 && (v82 + 3) >= 7)
                            {
                              goto LABEL_108;
                            }

                            goto LABEL_110;
                          }

                          goto LABEL_123;
                        }

LABEL_90:
                        sub_1000BC4D4(a2, a3);
                        sub_1000041A4(a4, a2, a3, &unk_1013C1158);
                        swift_allocError();
                        *v74 = 1;
                        *(v74 + 4) = 2;
                        swift_willThrow();
LABEL_111:
                        sub_100016590(v92, v93);
                        goto LABEL_112;
                      }

LABEL_119:
                      __break(1u);
                      goto LABEL_120;
                    }

                    if (!v58)
                    {
                      if ((v93 & 0xFC000000000000) != 0)
                      {
                        v59 = v92;
                        goto LABEL_81;
                      }

                      goto LABEL_90;
                    }

                    v91 = v92;
                    v88 = (v92 >> 32) - v92;
                    if (v92 >> 32 >= v92)
                    {
                      v89 = __DataStorage._bytes.getter();
                      if (!v89)
                      {
                        __DataStorage._length.getter();
                        goto LABEL_90;
                      }

                      v63 = __DataStorage._offset.getter();
                      if (!__OFSUB__(v91, v63))
                      {
                        v91 = v91 - v63 + v89;
                        v64 = __DataStorage._length.getter();
                        if (!v91)
                        {
                          goto LABEL_90;
                        }

                        v65 = v91;
                        v66 = v88;
                        if (v64 < v88)
                        {
                          v66 = v64;
                        }

                        goto LABEL_79;
                      }

LABEL_121:
                      __break(1u);
LABEL_122:
                      __break(1u);
LABEL_123:
                      __break(1u);
                      goto LABEL_124;
                    }

LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }

                  goto LABEL_65;
                }

                v92 = (v95 >> 32) - v95;
                v93 = v95;
                if (v95 >> 32 >= v95)
                {
                  v48 = __DataStorage._bytes.getter();
                  if (!v48)
                  {
                    __DataStorage._length.getter();
                    goto LABEL_65;
                  }

                  v91 = v48;
                  v49 = __DataStorage._offset.getter();
                  if (!__OFSUB__(v93, v49))
                  {
                    v93 = v93 - v49 + v91;
                    v50 = __DataStorage._length.getter();
                    v51 = v93;
                    if (!v93)
                    {
                      goto LABEL_65;
                    }

                    v52 = v92;
                    if (v50 < v92)
                    {
                      v52 = v50;
                    }

                    goto LABEL_54;
                  }

LABEL_117:
                  __break(1u);
                  goto LABEL_118;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_116;
            }

LABEL_36:
            v42 = Data._Representation.subscript.getter();
            sub_1000BC4D4(a2, a3);
            sub_1000041A4(a4, a2, a3, &unk_1013C1158);
            swift_allocError();
            *v43 = v42;
            *(v43 + 4) = 0;
            swift_willThrow();
            sub_100016590(v97, v30);
            goto LABEL_21;
          }

          __break(1u);
        }

        else
        {
          v32 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
          if (!v31)
          {
            v33 = BYTE6(v30);
            goto LABEL_30;
          }
        }

        LODWORD(v33) = HIDWORD(v97) - v97;
        if (__OFSUB__(HIDWORD(v97), v97))
        {
          __break(1u);
        }

        v33 = v33;
        goto LABEL_30;
      }

      if (!__OFSUB__(HIDWORD(v18), v18))
      {
        if (HIDWORD(v18) - v18 == 3)
        {
          goto LABEL_14;
        }

LABEL_20:
        sub_1000BC4D4(a2, a3);
        sub_1000041A4(a4, a2, a3, &unk_1013C1158);
        swift_allocError();
        *v34 = 0;
        *(v34 + 4) = 2;
        swift_willThrow();
LABEL_21:
        sub_100016590(v18, v20);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_101;
  }
}

uint64_t sub_1008843F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10086C574(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1008844B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100010F48(a1, v4);
}

uint64_t sub_100884570()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10086D740();
}

uint64_t sub_100884624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016ABF48, &qword_1013BFE28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1008846D4(uint64_t a1)
{
  if (!qword_1016ABFB8)
  {
    v2 = sub_10049E92C();
    v4 = type metadata accessor for KeyIndexMapGenerator.Header(a1, &type metadata for Advertisement, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1016ABFB8);
    }
  }
}

uint64_t sub_100884744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1008847C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10088484C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for URL();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1008848D8()
{
  if (!qword_1016AC050)
  {
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AC050);
    }
  }
}

unint64_t sub_100884944()
{
  result = qword_1016AC080;
  if (!qword_1016AC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC080);
  }

  return result;
}

uint64_t sub_1008849E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = __chkstk_darwin(v11);
  v40 = &v37 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v37 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v37 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v37 - v23;
  __chkstk_darwin(v22);
  v26 = &v37 - v25;
  if (!a2)
  {
    v39 = a3;
    v27 = a1;
    if (qword_101694A18 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177B538);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Caller attempted to calculate dateInterval for bucket 0!", v31, 2u);
    }

    a2 = 1;
    a1 = v27;
  }

  v38 = a2;
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  v32 = *(v8 + 16);
  v32(v21, a1, v7);
  Date.init(timeInterval:since:)();
  v39 = v26;
  v32(v21, v26, v7);
  Date.init(timeInterval:since:)();
  v32(v21, v18, v7);
  Date.init(timeInterval:since:)();
  Date.timeIntervalSince1970.getter();
  v33 = *(v8 + 8);
  v33(v13, v7);
  v34 = v40;
  Date.init(timeIntervalSince1970:)();
  if (v38 == 1)
  {
    v35 = v24;
  }

  else
  {
    v35 = v18;
  }

  v32(v21, v35, v7);
  v32(v41, v34, v7);
  DateInterval.init(start:end:)();
  v33(v34, v7);
  v33(v18, v7);
  v33(v24, v7);
  return (v33)(v39, v7);
}

uint64_t sub_100884E1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, char *a7@<X8>)
{
  v183 = a6;
  v186 = a5;
  v179 = a3;
  v167 = a2;
  v193 = a7;
  v182 = type metadata accessor for Calendar.Component();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for Date();
  v184 = *(v178 - 8);
  v10 = __chkstk_darwin(v178);
  v170 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v162 = &v161 - v13;
  v14 = __chkstk_darwin(v12);
  v168 = &v161 - v15;
  v16 = __chkstk_darwin(v14);
  v161 = &v161 - v17;
  v18 = __chkstk_darwin(v16);
  v173 = &v161 - v19;
  __chkstk_darwin(v18);
  v171 = &v161 - v20;
  v200 = type metadata accessor for UUID();
  v21 = *(v200 - 8);
  __chkstk_darwin(v200);
  v23 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v25 = __chkstk_darwin(v24);
  v166 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v164 = &v161 - v28;
  v29 = __chkstk_darwin(v27);
  v165 = &v161 - v30;
  v31 = __chkstk_darwin(v29);
  v163 = &v161 - v32;
  v33 = __chkstk_darwin(v31);
  v177 = &v161 - v34;
  __chkstk_darwin(v33);
  v36 = &v161 - v35;
  v175 = type metadata accessor for Calendar();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v185 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  LODWORD(v191) = static os_log_type_t.default.getter();
  if (qword_101695098 != -1)
  {
    swift_once();
  }

  v199 = qword_10177C3E0;
  v198 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v38 = swift_allocObject();
  v197 = xmmword_10138BBE0;
  *(v38 + 16) = xmmword_10138BBE0;
  v172 = a4;
  sub_1000D3410(a4, v36);
  v39 = String.init<A>(describing:)();
  v41 = v40;
  *(v38 + 56) = &type metadata for String;
  v42 = sub_100008C00();
  *(v38 + 64) = v42;
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  v44 = a1[3];
  v43 = a1[4];
  v45 = sub_1000035D0(a1, v44);
  v46 = *(*(v43 + 8) + 8);
  v195 = *(v46 + 32);
  v196 = v45;
  v195(v44, v46);
  v47 = UUID.uuidString.getter();
  v49 = v48;
  v194 = *(v21 + 8);
  v194(v23, v200);
  *(v38 + 96) = &type metadata for String;
  *(v38 + 104) = v42;
  *(v38 + 72) = v47;
  *(v38 + 80) = v49;
  v50 = v199;
  os_log(_:dso:log:_:_:)(v191, &_mh_execute_header, v199, "Last known good key start date %@ for beacon %@ ", 48, 2, v38);

  v176 = static os_log_type_t.default.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = v197;
  v201 = v186;
  v169 = v186;
  sub_1000BC4D4(&qword_1016AC150, ":^\n");
  v52 = String.init<A>(describing:)();
  *(v51 + 56) = &type metadata for String;
  *(v51 + 64) = v42;
  *(v51 + 32) = v52;
  *(v51 + 40) = v53;
  v188 = v46;
  v189 = v44;
  v187 = v46 + 32;
  v195(v44, v46);
  v54 = UUID.uuidString.getter();
  v56 = v55;
  v190 = v23;
  v192 = v21 + 8;
  v194(v23, v200);
  *(v51 + 96) = &type metadata for String;
  *(v51 + 104) = v42;
  v191 = v42;
  *(v51 + 72) = v54;
  *(v51 + 80) = v56;
  os_log(_:dso:log:_:_:)(v176, &_mh_execute_header, v50, "Last online location info %@ for beacon %@ ", 43, 2, v51);

  v57 = v177;
  sub_1000D3410(v179, v177);
  v58 = v184;
  v59 = *(v184 + 48);
  v60 = v178;
  if (v59(v57, 1, v178) != 1)
  {
    v74 = *(v58 + 32);
    v75 = v171;
    v179 = v74;
    v74(v171, v57, v60);
    v76 = sub_1000035D0(v183, v183[3]);
    v77 = sub_1010741F8(*v76);
    v78 = v181;
    v79 = v180;
    v80 = v182;
    result = (*(v181 + 104))(v180, enum case for Calendar.Component.minute(_:), v182);
    if (!__OFSUB__(0, v77))
    {
      v81 = v163;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v78 + 8))(v79, v80);
      if (v59(v81, 1, v60) == 1)
      {
        v82 = v173;
        (*(v184 + 16))(v173, v75, v60);
        v83 = v59(v81, 1, v60);
        v84 = v165;
        v85 = v75;
        if (v83 != 1)
        {
          sub_1000D3480(v81);
        }
      }

      else
      {
        v82 = v173;
        v179(v173, v81, v60);
        v84 = v165;
        v85 = v75;
      }

      sub_1000D3410(v172, v84);
      if (v59(v84, 1, v60) == 1)
      {
        sub_1000D3480(v84);
        v89 = v193;
        v90 = v200;
        v58 = v184;
        v91 = v190;
      }

      else
      {
        v104 = v161;
        v179(v161, v84, v60);
        v105 = static Date.> infix(_:_:)();
        v89 = v193;
        v91 = v190;
        if (v105)
        {
          v58 = v184;
          (*(v184 + 16))(v193, v104, v60);
          v106 = static os_log_type_t.default.getter();
          v107 = swift_allocObject();
          *(v107 + 16) = v197;
          sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v108 = dispatch thunk of CustomStringConvertible.description.getter();
          v70 = v85;
          v109 = v191;
          *(v107 + 56) = &type metadata for String;
          *(v107 + 64) = v109;
          *(v107 + 32) = v108;
          *(v107 + 40) = v110;
          v195(v189, v188);
          v111 = UUID.uuidString.getter();
          v112 = v91;
          v114 = v113;
          v194(v112, v200);
          *(v107 + 96) = &type metadata for String;
          *(v107 + 104) = v109;
          *(v107 + 72) = v111;
          *(v107 + 80) = v114;
          os_log(_:dso:log:_:_:)(v106, &_mh_execute_header, v199, "Fetch limit set to most recent key date %@ for beacon %@ ", 57, 2, v107);

          v103 = *(v58 + 8);
          v103(v104, v60);
          v103(v173, v60);
LABEL_22:
          v115 = v70;
LABEL_27:
          v103(v115, v60);
          goto LABEL_28;
        }

        v58 = v184;
        (*(v184 + 8))(v104, v60);
        v90 = v200;
      }

      (*(v58 + 16))(v89, v82, v60);
      v125 = static os_log_type_t.default.getter();
      v126 = swift_allocObject();
      *(v126 + 16) = v197;
      sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v127 = dispatch thunk of CustomStringConvertible.description.getter();
      v128 = v191;
      *(v126 + 56) = &type metadata for String;
      *(v126 + 64) = v128;
      *(v126 + 32) = v127;
      *(v126 + 40) = v129;
      v195(v189, v188);
      v130 = UUID.uuidString.getter();
      v131 = v91;
      v133 = v132;
      v194(v131, v90);
      *(v126 + 96) = &type metadata for String;
      *(v126 + 104) = v128;
      *(v126 + 72) = v130;
      *(v126 + 80) = v133;
      os_log(_:dso:log:_:_:)(v125, &_mh_execute_header, v199, "Fetch limit set to policy limit %@ for beacon %@ ", 49, 2, v126);

      v103 = *(v58 + 8);
      v103(v173, v60);
      v115 = v171;
      goto LABEL_27;
    }

LABEL_35:
    __break(1u);
    return result;
  }

  sub_1000D3480(v57);
  v61 = sub_1000035D0(v183, v183[3]);
  v62 = sub_1010741A4(*v61);
  v63 = v181;
  v64 = v180;
  v65 = v182;
  result = (*(v181 + 104))(v180, enum case for Calendar.Component.day(_:), v182);
  if (__OFSUB__(0, v62))
  {
    __break(1u);
    goto LABEL_35;
  }

  v67 = v164;
  v68 = v167;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v63 + 8))(v64, v65);
  v69 = v67;
  if (v59(v67, 1, v60) == 1)
  {
    v70 = v168;
    (*(v58 + 16))(v168, v68, v60);
    v71 = v59(v69, 1, v60) == 1;
    v72 = v172;
    if (!v71)
    {
      v73 = v172;
      sub_1000D3480(v69);
      v72 = v73;
    }
  }

  else
  {
    v70 = v168;
    (*(v58 + 32))(v168, v69, v60);
    v72 = v172;
  }

  v86 = v166;
  sub_1000D3410(v72, v166);
  if (v59(v86, 1, v60) != 1)
  {
    v92 = v162;
    (*(v58 + 32))(v162, v86, v60);
    v93 = static Date.> infix(_:_:)();
    v87 = v193;
    v88 = v190;
    if ((v93 & 1) == 0)
    {
      (*(v58 + 8))(v92, v60);
      goto LABEL_24;
    }

    (*(v58 + 16))(v193, v92, v60);
    v94 = static os_log_type_t.default.getter();
    v95 = swift_allocObject();
    *(v95 + 16) = v197;
    sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    v97 = v191;
    *(v95 + 56) = &type metadata for String;
    *(v95 + 64) = v97;
    *(v95 + 32) = v96;
    *(v95 + 40) = v98;
    v195(v189, v188);
    v99 = UUID.uuidString.getter();
    v100 = v88;
    v102 = v101;
    v194(v100, v200);
    *(v95 + 96) = &type metadata for String;
    *(v95 + 104) = v97;
    *(v95 + 72) = v99;
    *(v95 + 80) = v102;
    os_log(_:dso:log:_:_:)(v94, &_mh_execute_header, v199, "Fetch limit set to most recent key date %@ for beacon %@ ", 57, 2, v95);

    v103 = *(v58 + 8);
    v103(v92, v60);
    goto LABEL_22;
  }

  sub_1000D3480(v86);
  v87 = v193;
  v88 = v190;
LABEL_24:
  (*(v58 + 16))(v87, v70, v60);
  v116 = static os_log_type_t.default.getter();
  v117 = swift_allocObject();
  *(v117 + 16) = v197;
  sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v118 = dispatch thunk of CustomStringConvertible.description.getter();
  v119 = v191;
  *(v117 + 56) = &type metadata for String;
  *(v117 + 64) = v119;
  *(v117 + 32) = v118;
  *(v117 + 40) = v120;
  v195(v189, v188);
  v121 = UUID.uuidString.getter();
  v122 = v88;
  v124 = v123;
  v194(v122, v200);
  *(v117 + 96) = &type metadata for String;
  *(v117 + 104) = v119;
  *(v117 + 72) = v121;
  *(v117 + 80) = v124;
  os_log(_:dso:log:_:_:)(v116, &_mh_execute_header, v199, "Fetch limit set to longest look back %@ for beacon %@ ", 54, 2, v117);

  v103 = *(v58 + 8);
  v103(v70, v60);
LABEL_28:
  v134 = v200;
  v135 = v193;
  if (v186)
  {
    v136 = v169;
    v137 = [v136 timestamp];
    v138 = v60;
    v139 = v170;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v137) = static Date.> infix(_:_:)();
    v103(v139, v138);
    if (v137)
    {
      v140 = sub_1000035D0(v183, v183[3]);
      if (sub_1010749C8(*v140))
      {
        v141 = [v136 timestamp];
        v142 = v170;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v103(v135, v138);
        (*(v58 + 32))(v135, v142, v138);
        v143 = static os_log_type_t.default.getter();
        v144 = swift_allocObject();
        *(v144 + 16) = v197;
        sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v145 = dispatch thunk of CustomStringConvertible.description.getter();
        v147 = v190;
        v146 = v191;
        *(v144 + 56) = &type metadata for String;
        *(v144 + 64) = v146;
        *(v144 + 32) = v145;
        *(v144 + 40) = v148;
        v195(v189, v188);
        v149 = UUID.uuidString.getter();
        v151 = v150;
        v194(v147, v200);
        *(v144 + 96) = &type metadata for String;
        *(v144 + 104) = v146;
        *(v144 + 72) = v149;
        *(v144 + 80) = v151;
        os_log(_:dso:log:_:_:)(v143, &_mh_execute_header, v199, "Fetch limit updated to last online location date %@ for beacon %@ ", 66, 2, v144);

        type metadata accessor for Transaction();
        static Transaction.asyncTask(name:block:)();
      }
    }

    v134 = v200;
  }

  v152 = static os_log_type_t.default.getter();
  v153 = swift_allocObject();
  *(v153 + 16) = v197;
  sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v154 = dispatch thunk of CustomStringConvertible.description.getter();
  v156 = v190;
  v155 = v191;
  *(v153 + 56) = &type metadata for String;
  *(v153 + 64) = v155;
  *(v153 + 32) = v154;
  *(v153 + 40) = v157;
  v195(v189, v188);
  v158 = UUID.uuidString.getter();
  v160 = v159;
  v194(v156, v134);
  *(v153 + 96) = &type metadata for String;
  *(v153 + 104) = v155;
  *(v153 + 72) = v158;
  *(v153 + 80) = v160;
  os_log(_:dso:log:_:_:)(v152, &_mh_execute_header, v199, "Adjusted location fetch start date %@ for beacon %@ ", 52, 2, v153);

  return (*(v174 + 8))(v185, v175);
}

uint64_t sub_1008861D0(char a1)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v2 = v5;
  if (a1)
  {
    v3 = sub_101073C10(v5);

    if ((v3 & 0x8000000000000000) == 0)
    {
      return v3;
    }

    __break(1u);
  }

  v3 = sub_101073524(v2);

  if ((v3 & 0x8000000000000000) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008862A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B538);
  sub_1000076D4(v0, qword_10177B538);
  return Logger.init(subsystem:category:)();
}

uint64_t TimeBasedKeySequence.description.getter(char a1)
{
  if (a1)
  {
    return 0x61646E6F6365732ELL;
  }

  else
  {
    return 0x7972616D6972702ELL;
  }
}

searchpartyd::TimeBasedKeySequence_optional __swiftcall TimeBasedKeySequence.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v1.value = searchpartyd_TimeBasedKeySequence_secondary;
  }

  else
  {
    v1.value = searchpartyd_TimeBasedKeySequence_unknownDefault;
  }

  if (rawValue == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_100886388()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1008863D8()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100886410(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *sub_10088645C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_10088647C(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_100886494()
{
  if (*v0)
  {
    return 0x61646E6F6365732ELL;
  }

  else
  {
    return 0x7972616D6972702ELL;
  }
}

char *sub_1008864D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeBasedKeysCriteria(0);
  v50 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  v14 = [a1 dateInterval];
  if (v14)
  {
    v15 = v14;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v13, v7, v4);
LABEL_3:
    swift_storeEnumTagMultiPayload();
LABEL_4:
    sub_100887D08(v13, a2);
    return (*(v50 + 56))(a2, 0, 1, v8);
  }

  v17 = [a1 sequence];
  if (!v17)
  {
LABEL_14:
    v26 = [a1 indices];
    if (!v26)
    {
      v37 = [a1 index];
      if (v37)
      {
        v38 = v37;
        v39 = [a1 hint];
        if (v39)
        {
          v40 = v39;
          v41 = [v38 unsignedLongLongValue];
          v42 = [v40 unsignedCharValue];

          *v13 = v41;
          v13[8] = v42;
          goto LABEL_3;
        }
      }

      goto LABEL_3;
    }

    v27 = v26;
    sub_100390F70();
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v29)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
LABEL_17:
        v46 = v11;
        v47 = a1;
        v48 = v8;
        v49 = a2;
        v51 = _swiftEmptyArrayStorage;
        result = sub_101123BF8(0, v29 & ~(v29 >> 63), 0);
        if (v29 < 0)
        {
          __break(1u);
          return result;
        }

        v30 = 0;
        v31 = v51;
        do
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v32 = *(v28 + 8 * v30 + 32);
          }

          v33 = v32;
          v34 = [v32 unsignedLongLongValue];

          v51 = v31;
          v36 = v31[2];
          v35 = v31[3];
          if (v36 >= v35 >> 1)
          {
            sub_101123BF8((v35 > 1), v36 + 1, 1);
            v31 = v51;
          }

          ++v30;
          v31[2] = v36 + 1;
          v31[v36 + 4] = v34;
        }

        while (v29 != v30);

        v8 = v48;
        a2 = v49;
        v11 = v46;
LABEL_38:
        *v11 = v31;
        swift_storeEnumTagMultiPayload();
        sub_100887D08(v11, v13);
        goto LABEL_4;
      }
    }

    v31 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v18 = v17;
  v19 = [a1 index];
  if (!v19)
  {
    v20 = v18;
LABEL_13:

    goto LABEL_14;
  }

  v20 = v19;
  v21 = [a1 hint];
  if (!v21)
  {

    goto LABEL_13;
  }

  v22 = v21;
  v23 = [v18 integerValue];
  if (v23 == 1)
  {
    v24 = a1;
    v25 = 0;
    goto LABEL_30;
  }

  if (v23 == 2)
  {
    v24 = a1;
    v25 = 1;
LABEL_30:
    v43 = [v20 unsignedLongLongValue];
    v44 = [v22 unsignedCharValue];

    *v13 = v25;
    *(v13 + 1) = v43;
    v13[16] = v44;
    goto LABEL_3;
  }

  v45 = *(v50 + 56);

  return v45(a2, 1, 1, v8);
}

uint64_t TimeBasedKeysCriteria.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeBasedKeysCriteria(0);
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100886F38(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v39, ".dateInterval(");
      HIBYTE(v39[1]) = -18;
      sub_100887CC0(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 41;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v23 = v39[0];
      (*(v3 + 8))(v5, v2);
      return v23;
    }

    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v39[0] = 0xD000000000000010;
    v39[1] = 0x8000000101361C00;
    v32 = Array.description.getter();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *v8;
      v26 = v8[8];
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_101385D80;
      *(v27 + 56) = &type metadata for UInt8;
      *(v27 + 64) = &protocol witness table for UInt8;
      *(v27 + 32) = v26;
      v14 = String.init(format:_:)();
      v16 = v28;
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v39[0] = 0xD000000000000017;
      v39[1] = 0x8000000101361BE0;
      v38 = v25;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        return 0x6F4D74666972642ELL;
      }

      v10 = *v8;
      v11 = *(v8 + 1);
      v12 = v8[16];
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_101385D80;
      *(v13 + 56) = &type metadata for UInt8;
      *(v13 + 64) = &protocol witness table for UInt8;
      *(v13 + 32) = v12;
      v14 = String.init(format:_:)();
      v16 = v15;
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v39[0] = 0xD000000000000013;
      v39[1] = 0x8000000101361BC0;
      if (v10)
      {
        v17 = 0x61646E6F6365732ELL;
      }

      else
      {
        v17 = 0x7972616D6972702ELL;
      }

      if (v10)
      {
        v18 = 0xEA00000000007972;
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      v19 = v18;
      String.append(_:)(*&v17);

      v20._countAndFlagsBits = 8236;
      v20._object = 0xE200000000000000;
      String.append(_:)(v20);
      v38 = v11;
    }

    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 8236;
    v30._object = 0xE200000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = v14;
    v31._object = v16;
    String.append(_:)(v31);
  }

  v36._countAndFlagsBits = 41;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  return v39[0];
}

uint64_t type metadata accessor for TimeBasedKeysCriteria(uint64_t a1)
{
  result = qword_1016AC100;
  if (!qword_1016AC100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100886F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedKeysCriteria(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100886FA0()
{
  result = qword_1016AC088;
  if (!qword_1016AC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC088);
  }

  return result;
}

void sub_100887008(uint64_t a1)
{
  type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    sub_1008870A4();
    if (v2 <= 0x3F)
    {
      sub_1008870F4();
      if (v3 <= 0x3F)
      {
        sub_100887154();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1008870A4()
{
  if (!qword_1016AC110)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AC110);
    }
  }
}

void sub_1008870F4()
{
  if (!qword_1016AC118)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016AC118);
    }
  }
}

void sub_100887154()
{
  if (!qword_1016AC120)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1016AC120);
    }
  }
}

uint64_t sub_1008871D8()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 16) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD00000000000003FLL;
  *(v1 + 16) = 0x8000000101361E00;

  return _swift_task_switch(sub_100887320, v1, 0);
}

uint64_t sub_100887320()
{
  sub_10114C8F4(v0[2]);
  type metadata accessor for AnalyticsPublisher();
  v0[3] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1008873F4;
  v2 = v0[2];

  return sub_101163F78(v2);
}

uint64_t sub_1008873F4()
{

  return _swift_task_switch(sub_10088750C, 0, 0);
}

uint64_t sub_10088750C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10088756C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v60 = a1;
  v7 = type metadata accessor for UUID();
  v62 = *(v7 - 1);
  __chkstk_darwin(v7);
  v64 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v61 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v56[-v14];
  v16 = __chkstk_darwin(v13);
  v66 = &v56[-v17];
  __chkstk_darwin(v16);
  v65 = &v56[-v18];
  v19 = sub_1008861D0(a4 & 1);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v20 = sub_101073524(v67);

  if (v20 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v63 = v7;
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_100887CC0(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v21 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v7 = *(v10 + 16);
  if (v21)
  {
    v22 = a2;
  }

  else
  {
    v22 = a3;
  }

  (v7)(v66, v22, v9);
  Date.timeIntervalSince(_:)();
  v24 = v23 / (v19 * 60.0);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v24 <= -1.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 >= 1.84467441e19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  LODWORD(v59) = a4;
  a4 = v24 + 1;
  if (v24 != -1)
  {
    if (qword_101694A18 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_12:
  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177B538);
  (v7)(v15, a2, v9);
  v26 = v61;
  (v7)(v61, a3, v9);
  v27 = v62;
  v28 = v63;
  (*(v62 + 16))(v64, v60, v63);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v67 = v60;
    *v31 = 136447491;
    v32 = (v59 & 1) == 0;
    if (v59)
    {
      v33 = 0x61646E6F6365732ELL;
    }

    else
    {
      v33 = 0x7972616D6972702ELL;
    }

    v59 = v29;
    if (v32)
    {
      v34 = 0xE800000000000000;
    }

    else
    {
      v34 = 0xEA00000000007972;
    }

    v35 = sub_1000136BC(v33, v34, &v67);
    v57 = v30;
    v36 = v26;
    v37 = v35;

    *(v31 + 4) = v37;
    *(v31 + 12) = 2048;
    v58 = a4;
    *(v31 + 14) = a4;
    *(v31 + 22) = 2082;
    sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = *(v10 + 8);
    v41(v15, v9);
    v42 = sub_1000136BC(v38, v40, &v67);

    *(v31 + 24) = v42;
    *(v31 + 32) = 2082;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v41(v36, v9);
    v46 = sub_1000136BC(v43, v45, &v67);

    *(v31 + 34) = v46;
    *(v31 + 42) = 2160;
    *(v31 + 44) = 1752392040;
    *(v31 + 52) = 2081;
    sub_100887CC0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47 = v63;
    v48 = v64;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    (*(v27 + 8))(v48, v47);
    v52 = sub_1000136BC(v49, v51, &v67);

    *(v31 + 54) = v52;
    v53 = v59;
    _os_log_impl(&_mh_execute_header, v59, v57, "Bucket [%{public}s] calculated to ‣%llu baseTime: %{public}s date: %{public}s  beacon: %{private,mask.hash}s.", v31, 0x3Eu);
    swift_arrayDestroy();

    v41(v66, v9);
    v41(v65, v9);
    return v58;
  }

  else
  {

    (*(v27 + 8))(v64, v28);
    v55 = *(v10 + 8);
    v55(v26, v9);
    v55(v15, v9);
    v55(v66, v9);
    v55(v65, v9);
    return a4;
  }
}

uint64_t sub_100887CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100887D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedKeysCriteria(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100887D6C()
{
  if (v0[6])
  {
    v1 = v0[6];
  }

  else
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for XPCScheduler();
    v1 = swift_allocObject();
    v1[8] = v4;
    v1[9] = 0;
    v1[2] = 0xD000000000000013;
    v1[3] = 0x8000000101361F80;
    v1[4] = 0x3FF0000000000000;
    v1[5] = v2;
    v1[6] = v3;
    v1[7] = sub_1008890AC;
    swift_retain_n();
    sub_10073C0D8();

    v0[6] = v1;
  }

  return v1;
}

uint64_t sub_100887E70(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10088803C();
  }

  return result;
}

uint64_t sub_100887EC8(uint64_t a1)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074564(v10);
  v4 = v3;

  *(v1 + 24) = v4 * 60.0;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074570(v10);
  v6 = v5;

  *(v1 + 32) = v6 * 60.0;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_10107457C(v10);
  v8 = v7;

  *(v1 + 40) = v8 * 60.0;
  *(v1 + 48) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_10088803C()
{
  v1 = type metadata accessor for UnwantedTrackingUserNotification(0);
  __chkstk_darwin(v1);
  v88 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for WildModeAssociationRecord(0);
  v3 = *(v77 - 8);
  v4 = __chkstk_darwin(v77);
  v78 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v76 = &v72 - v7;
  v8 = __chkstk_darwin(v6);
  v85 = &v72 - v9;
  v10 = __chkstk_darwin(v8);
  v79 = &v72 - v11;
  __chkstk_darwin(v10);
  v13 = &v72 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694F58 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    sub_100EB3A04(0xD000000000000012, 0x8000000101361ED0, qword_10177C218);
    if (v19)
    {
      v20 = v0[5];
    }

    else
    {
      v20 = v18;
    }

    static Date.trustedNow.getter(v17);
    v21 = static os_log_type_t.info.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v22 = qword_10177C3F8;
    v87 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    v86 = xmmword_101385D80;
    *(v23 + 16) = xmmword_101385D80;
    *(v23 + 56) = &type metadata for Double;
    *(v23 + 64) = &protocol witness table for Double;
    *(v23 + 32) = v20;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "schedulerFired purgeAge: %f [seconds]", v72);

    v89 = *(v0 + 2);
    v24 = sub_10002F740();
    __chkstk_darwin(v24);
    v74 = v17;
    *(&v72 - 2) = v17;
    *(&v72 - 1) = v20;
    v26 = sub_10002EBE8(sub_100888F10, (&v72 - 4), v25);
    v27 = v26[2];
    v75 = v15;
    if (!v27)
    {
      break;
    }

    v84 = v22;
    v73 = v14;
    v28 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v90 = v26;
    v80 = v28;
    v15 = v26 + v28;
    v83 = v94;
    v29 = *(v3 + 72);
    v82 = "followingPlaySound&id=";
    v81 = "sHandle8@NSError16";
    v30 = v26 + v28;
    v91 = v27;
    v92 = v29;
    do
    {
      sub_100888F34(v30, v13, type metadata accessor for WildModeAssociationRecord);
      v31 = static os_log_type_t.default.getter();
      v32 = swift_allocObject();
      *(v32 + 16) = v86;
      v33 = UUID.uuidString.getter();
      v35 = v34;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_100008C00();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v84, "Purge UT record and withdraw notification with uuid %@", 54, 2, v32);

      v36 = *(v89 + 168);
      if (qword_101694550 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for URL();
      v38 = sub_1000076D4(v37, qword_10177A8D0);
      v39 = __chkstk_darwin(v38);
      *(&v72 - 4) = v36;
      *(&v72 - 3) = v13;
      *(&v72 - 2) = v39;
      OS_dispatch_queue.sync<A>(execute:)();
      v40 = v88;
      sub_100888F34(v13, &v88[*(v1 + 20)], type metadata accessor for WildModeAssociationRecord);
      *v40 = 2;
      v40[*(v1 + 24)] = 66;
      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      v96[3] = v1;
      v96[4] = &off_1016159B8;
      v41 = sub_1000280DC(v96);
      sub_100888F34(v40, v41, type metadata accessor for UnwantedTrackingUserNotification);
      v42 = objc_allocWithZone(UNUserNotificationCenter);
      v43 = String._bridgeToObjectiveC()();

      v44 = [v42 initWithBundleIdentifier:v43];

      sub_10001F280(v96, v95);
      v45 = swift_allocObject();
      sub_100031694(v95, v45 + 16);
      *(v45 + 56) = v44;
      v94[2] = sub_10079A23C;
      v94[3] = v45;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v94[0] = sub_100888E9C;
      v94[1] = &unk_1016373A8;
      v46 = _Block_copy(aBlock);
      v47 = v44;

      [v47 getDeliveredNotificationsWithCompletionHandler:v46];
      _Block_release(v46);

      sub_100888F9C(v40, type metadata accessor for UnwantedTrackingUserNotification);
      sub_100007BAC(v96);
      sub_100888F9C(v13, type metadata accessor for WildModeAssociationRecord);
      v30 += v92;
      --v27;
    }

    while (v27);
    v48 = 0;
    v0 = _swiftEmptyArrayStorage;
    v14 = 250;
    v17 = v15;
    v13 = v77;
    v3 = v79;
    v1 = v90;
    do
    {
      if (v48 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      sub_100888F34(v17, v3, type metadata accessor for WildModeAssociationRecord);
      v50 = *(v3 + *(v13 + 16));
      if (v50 == 8 || (v50 & 0xFA) == 0)
      {
        sub_100888F9C(v3, type metadata accessor for WildModeAssociationRecord);
        v49 = v92;
      }

      else
      {
        sub_100888FFC(v3, v85);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124B2C(0, *(v0 + 2) + 1, 1);
          v0 = aBlock[0];
        }

        v49 = v92;
        v54 = *(v0 + 2);
        v53 = *(v0 + 3);
        if (v54 >= v53 >> 1)
        {
          sub_101124B2C((v53 > 1), v54 + 1, 1);
          v49 = v92;
          v0 = aBlock[0];
        }

        *(v0 + 2) = v54 + 1;
        sub_100888FFC(v85, v0 + v80 + v54 * v49);
        v3 = v79;
        v1 = v90;
      }

      ++v48;
      v17 += v49;
    }

    while (v91 != v48);
    v55 = *(v0 + 2);

    v3 = 0;
    v0 = _swiftEmptyArrayStorage;
    v14 = 1;
    v1 = 379;
    v17 = v76;
    while (v3 < v90[2])
    {
      sub_100888F34(v15, v17, type metadata accessor for WildModeAssociationRecord);
      v56 = v17[*(v13 + 16)];
      v57 = v56 > 8;
      v58 = (1 << v56) & 0x17B;
      if (v57 || v58 == 0)
      {
        sub_100888FFC(v17, v78);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v0;
        if ((v60 & 1) == 0)
        {
          sub_101124B2C(0, *(v0 + 2) + 1, 1);
          v0 = aBlock[0];
        }

        v61 = v92;
        v63 = *(v0 + 2);
        v62 = *(v0 + 3);
        if (v63 >= v62 >> 1)
        {
          sub_101124B2C((v62 > 1), v63 + 1, 1);
          v61 = v92;
          v0 = aBlock[0];
        }

        *(v0 + 2) = v63 + 1;
        sub_100888FFC(v78, v0 + v80 + v63 * v61);
        v13 = v77;
        v17 = v76;
      }

      else
      {
        sub_100888F9C(v17, type metadata accessor for WildModeAssociationRecord);
      }

      ++v3;
      v15 += v92;
      if (v91 == v3)
      {

        v64 = *(v0 + 2);

        v14 = v73;
        if (v55)
        {
          if (qword_101694BE8 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_1000076D4(v65, qword_10177BA08);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 67109120;
            _os_log_impl(&_mh_execute_header, v66, v67, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v68, 8u);
          }

          ThrottledDarwinPoster.post(bypassRateLimit:)(0);
          if (v69)
          {
          }
        }

        if (v64)
        {
          sub_100A8AF58();
        }

        return (*(v75 + 8))(v74, v14);
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v70 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v70, &_mh_execute_header, v22, "No records to purge", 19, 2, _swiftEmptyArrayStorage);
  return (*(v75 + 8))(v74, v14);
}

uint64_t sub_100888C44(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = type metadata accessor for WildModeAssociationRecord(0);
  sub_1000D3410(a1 + *(v14 + 44), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000D3480(v6);
    Date.addingTimeInterval(_:)();
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v11 = v13;
  }

  v15 = static Date.< infix(_:_:)();
  (*(v8 + 8))(v11, v7);
  return v15 & 1;
}

uint64_t sub_100888E38()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100888E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100889060();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_100888F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100888F9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100888FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WildModeAssociationRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100889060()
{
  result = qword_1016AC248;
  if (!qword_1016AC248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016AC248);
  }

  return result;
}

uint64_t static AirPodsLESendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static AirPodsLESendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

double AirPodsLESendPairingStatusCommandPayload.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1008891E8(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1008891E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v33, v34);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v33);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v33, v34);
  v35 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v10 = v9;
  sub_10015049C(v33, v34);
  v30 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v31 = v11;
  sub_10015049C(v33, v34);
  v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v28 = v14;
  v29 = v12;
  sub_1000E0A3C();
  v15 = DataProtocol.intValue.getter();
  result = sub_10002EA98(v15, v30, v31, v32);
  v16 = v32[0];
  v17 = v32[1];
  v18 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    v19 = v35;
    if (!v18)
    {
      v20 = BYTE6(v8);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v19 = v35;
  if (v18 != 2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = *(v7 + 16);
  v21 = *(v7 + 24);
  v23 = __OFSUB__(v21, v22);
  v20 = v21 - v22;
  if (v23)
  {
    __break(1u);
LABEL_11:
    LODWORD(v20) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20 = v20;
  }

LABEL_13:
  if (v20 != 60)
  {
    goto LABEL_27;
  }

  v24 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(v10);
      goto LABEL_23;
    }

LABEL_21:
    LODWORD(v25) = HIDWORD(v19) - v19;
    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      v25 = v25;
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (v24 != 2)
  {
    goto LABEL_28;
  }

  v27 = *(v19 + 16);
  v26 = *(v19 + 24);
  v23 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v23)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  if (v25 == 4)
  {
    sub_100007BAC(v33);
    result = sub_100007BAC(a1);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v19;
    a2[3] = v10;
    a2[4] = v16;
    a2[5] = v17;
    a2[6] = v29;
    a2[7] = v28;
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_100889460(uint64_t a1)
{
  *(a1 + 8) = sub_100889490();
  result = sub_1008894E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100889490()
{
  result = qword_1016AC258;
  if (!qword_1016AC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC258);
  }

  return result;
}

unint64_t sub_1008894E4()
{
  result = qword_1016AC260;
  if (!qword_1016AC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC260);
  }

  return result;
}

id sub_100889548()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(ACAccountStore) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1008895B4(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v117 = *(v2 - 8);
  v118 = v2;
  __chkstk_darwin(v2);
  v116 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v4 - 8);
  v6 = &v99 - v5;
  v7 = type metadata accessor for PairingLockCheckEndPoint(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v99 - v11;
  sub_1000BC4D4(&qword_1016AC350, &qword_1013C0780);
  swift_allocObject();
  v123 = Future.init()();
  v13 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C3B0;
  v113 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  v112 = xmmword_101385D80;
  *(v15 + 16) = xmmword_101385D80;
  *(v15 + 56) = &type metadata for String;
  v114 = sub_100008C00();
  *(v15 + 64) = v114;
  *(v15 + 32) = 0xD000000000000022;
  *(v15 + 40) = 0x8000000101362200;
  v121 = v14;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "%@", 2, 2, v15);

  sub_1003CD400(v12);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v16 = type metadata accessor for FMNMockingPreferences();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v18 = swift_allocObject();
  sub_10088CB90(v12, v10, type metadata accessor for PairingLockCheckEndPoint);
  v122 = sub_100621154(v10, v17, v18);
  sub_10088CBF8(v12, type metadata accessor for PairingLockCheckEndPoint);
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  v23 = a1[4];
  v24 = a1[5];
  v25 = a1[14];
  v125 = a1[15];
  v126 = v25;
  v124 = *(a1 + 8);
  v26 = a1[12];
  v27 = a1[13];

  *(&v98 + 1) = v27;
  *&v98 = v26;
  v97 = v124;
  v119 = v20;
  v120 = v21;
  v115 = v23;
  *&v124 = v24;
  v28 = sub_101079CC0(v19, v20, v21, v22, v23, v24, v126, v125, v97, v98, 10);
  v30 = v29;
  v31 = sub_100889548();
  v32 = sub_100513CD8();

  if (!v32 || (v33 = sub_100513FCC(), v35 = v34, v32, !v35))
  {

    v79 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v121, "Unable to retrieve masked identifier", 36, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPPairingSessionError(0);
    *&v128 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v80 = v138;
    Future.finish(error:)();
    sub_100006654(v28, v30);

LABEL_12:

    return;
  }

  v111 = v35;
  v36 = Data.hexString.getter();
  v106 = v37;
  v107 = v36;
  v38 = Data.hexString.getter();
  v102 = v39;
  v103 = v38;
  v40 = a1[6];
  v104 = a1[7];
  v105 = v40;
  v42 = a1[8];
  v41 = a1[9];
  v43 = a1[11];
  v101 = a1[10];
  v108 = v42;
  v109 = v43;
  v44 = a1[19];
  *&v110 = a1[18];
  *(&v110 + 1) = v44;
  v45 = a1[20];
  v119 = a1[21];
  v120 = v45;
  v47 = a1[22];
  v46 = a1[23];
  v48 = v41;

  v127 = v30;
  sub_10002E98C(v28, v30);
  v49 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v138 = v49;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v51 = v138;
  v52 = [objc_opt_self() currentDevice];
  if (v52)
  {
    v53 = v52;
    v99 = v46;
    v100 = v33;
    v125 = v28;
    v126 = v47;
    v54 = [v52 serverFriendlyDescription];

    if (v54)
    {
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = v51;
      sub_100FFACA0(v55, v57, 0xD000000000000011, 0x800000010134EA40, v58);
      v59 = v138;
      v60 = v116;
      Date.init()();
      v61 = Date.epoch.getter();
      (*(v117 + 8))(v60, v118);
      *&v138 = v61;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = v59;
      sub_100FFACA0(v62, v64, 0xD000000000000015, 0x800000010134EA60, v65);
      v66 = v138;
      *&v138 = 1;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = v66;
      sub_100FFACA0(v67, v69, 0xD000000000000013, 0x800000010134EA80, v70);
      v71 = v138;
      v73 = sub_1008D9A78(v72);
      v75 = v74;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = v71;
      sub_100FFACA0(v73, v75, 0x6567412D72657355, 0xEA0000000000746ELL, v76);
      v77 = v138;
      v78 = v127;
      if (v127 >> 60 != 15)
      {
        v81 = v125;
        sub_100017D5C(v125, v127);
        v82 = Data.base64EncodedString(options:)(0);
        v83 = swift_isUniquelyReferenced_nonNull_native();
        *&v138 = v77;
        sub_100FFACA0(v82._countAndFlagsBits, v82._object, 0x49532D454D4D2D58, 0xEB00000000374E47, v83);
        sub_100006654(v81, v78);
      }

      v118 = v138;
      v84 = v101;
      *&v138 = v107;
      *(&v138 + 1) = v106;
      *&v139 = v103;
      *(&v139 + 1) = v102;
      *&v140 = v115;
      *(&v140 + 1) = v124;
      *&v141 = v105;
      *(&v141 + 1) = v104;
      *&v85 = v101;
      v86 = v109;
      *(&v85 + 1) = v109;
      *&v142 = v108;
      *(&v142 + 1) = v48;
      v87 = v110;
      v143 = v85;
      v144 = v110;
      v89 = v119;
      v88 = v120;
      *&v145 = v120;
      *(&v145 + 1) = v119;
      v90 = v99;
      *&v146 = v126;
      *(&v146 + 1) = v99;
      *&v147 = v100;
      *(&v147 + 1) = v111;
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      sub_100017D5C(v84, v86);
      sub_100017D5C(v87, *(&v87 + 1));
      sub_100017D5C(v88, v89);
      sub_100017D5C(v126, v90);
      JSONEncoder.init()();
      v134 = v144;
      v135 = v145;
      v136 = v146;
      v137 = v147;
      v130 = v140;
      v131 = v141;
      v132 = v142;
      v133 = v143;
      v128 = v138;
      v129 = v139;
      sub_10088CC58();
      v91 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v93 = v92;

      v94 = v125;
      v95 = v127;
      sub_100006654(v125, v127);
      sub_10088CD08(&v138);
      v96 = v118;

      sub_100017D5C(v91, v93);

      sub_100016590(v91, v93);

      sub_100017D5C(v91, v93);
      sub_1004FCCF0(v96, v91, v93, 0, v122);

      sub_100016590(v91, v93);

      Future.addFailure(block:)();

      Future.addSuccess(block:)();

      sub_100016590(v91, v93);
      sub_100006654(v94, v95);
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10088A1AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v38 = a2;
    v7 = static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v8 = qword_10177C3B0;
    v36 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    v35 = xmmword_101385D80;
    *(v9 + 16) = xmmword_101385D80;
    type metadata accessor for FMNServerInteractionController.FMNResponseFields();
    sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v37 = v8;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Pairing success: %@", 19, 2, v9);

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    (*(v4 + 104))(v6, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v3);
    dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
    v13 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v15 = v14;
    sub_10088CD88();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v13, v15);
    v43[0] = v44;
    v43[1] = v45;
    v43[2] = v46;
    v43[3] = v47;
    v39 = v44;
    v40 = v45;
    v41 = v46;
    v42 = v47;
    Future.finish(result:)();

    sub_100407FCC(v43);
  }

  else
  {
    v16 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (*(v16 + 16) && (v17 = sub_100771D58(0xD000000000000016, 0x8000000101362130), (v18 & 1) != 0))
    {
      v19 = (*(v16 + 56) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];

      v22 = static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v23 = qword_10177C3B0;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10138BBE0;
      *(v24 + 56) = &type metadata for String;
      v25 = sub_100008C00();
      *(v24 + 64) = v25;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      type metadata accessor for FMNServerInteractionController.FMNResponseFields();
      sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v24 + 96) = &type metadata for String;
      *(v24 + 104) = v25;
      *(v24 + 72) = v26;
      *(v24 + 80) = v27;
      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Pairing lock failed with error: %@, response: %@", 48, 2, v24);
    }

    else
    {

      v28 = static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v29 = qword_10177C3B0;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_101385D80;
      type metadata accessor for FMNServerInteractionController.FMNResponseFields();
      sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100008C00();
      *(v30 + 32) = v31;
      *(v30 + 40) = v33;
      os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Pairing lock failed: %@", 23, 2, v30);
    }

    type metadata accessor for SPPairingSessionError(0);
    *&v43[0] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v34 = v44;
    Future.finish(error:)();
  }
}

void sub_10088A8CC(void *a1, uint64_t a2, const char *a3)
{
  v5 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v11 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, a3, 43, 2, v7);

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

void sub_10088AA80(uint64_t a1)
{
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v1 = static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v2 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    type metadata accessor for FMNServerInteractionController.FMNResponseFields();
    sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    v7 = sub_100008C00();
    *(v3 + 64) = v7;
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Ack pairing success: %@", 23, 2, v3);

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v8 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v10 = v9;
    sub_10088CB34();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v8, v10);
    v29 = static os_log_type_t.default.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v7;
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v2, "Ack pairing status code: %@", 27, 2, v30);

    Future.finish(result:)();
  }

  else
  {
    v11 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (*(v11 + 16) && (v12 = sub_100771D58(0xD000000000000016, 0x8000000101362130), (v13 & 1) != 0))
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];

      v17 = static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v18 = qword_10177C3B0;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10138BBE0;
      *(v19 + 56) = &type metadata for String;
      v20 = sub_100008C00();
      *(v19 + 64) = v20;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      type metadata accessor for FMNServerInteractionController.FMNResponseFields();
      sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v19 + 96) = &type metadata for String;
      *(v19 + 104) = v20;
      *(v19 + 72) = v21;
      *(v19 + 80) = v22;
      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Pairing lock ack failed with error: %@, response: %@", 52, 2, v19);
    }

    else
    {

      v23 = static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v24 = qword_10177C3B0;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_101385D80;
      type metadata accessor for FMNServerInteractionController.FMNResponseFields();
      sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100008C00();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Pairing lock ack failed: %@", 27, 2, v25);
    }

    type metadata accessor for SPPairingSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }
}

uint64_t sub_10088B120(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "#Durian: Remove pairing lock command failed. Error - %@", 55, 2, v6);

  return a2(a1);
}

void sub_10088B260(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v4 = static os_log_type_t.default.getter();
  if (v3 == 200)
  {
    if (qword_101695068 != -1)
    {
      v11 = v4;
      swift_once();
      v4 = v11;
    }

    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10177C3B0, "#Durian: Remove pairing lock was successful.", 44, 2, _swiftEmptyArrayStorage);
    a2(0);
  }

  else
  {
    v5 = v4;
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v6 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    v12 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100008C00();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "#Durian: Remove pairing lock failed. Status code - %@", 53, 2, v7);

    type metadata accessor for SPPairingSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    a2(v12);
  }
}

uint64_t sub_10088B494()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10088B4F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10088B538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10088B5B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a1;
  v7 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for UnpairEndPoint(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v40 = a3;
  v41 = a4;

  v20 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v21 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  sub_100015794(v42, v18);
  v23 = String.init<A>(describing:)();
  v25 = v24;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "#Durian: Removing pairing lock for UUID - %@", 44, 2, v22);

  sub_10088BFC8(a2, &v44);
  sub_101079450(a2);
  if (v26)
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
    sub_100F01DA0(v15);
    type metadata accessor for SearchPartyURLSessionFactory(0);
    swift_allocObject();
    v32 = type metadata accessor for FMNMockingPreferences();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    v33 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    type metadata accessor for ServerInteractionController(0);
    v34 = swift_allocObject();
    sub_10088CB90(v15, v13, type metadata accessor for UnpairEndPoint);
    v35 = sub_100620D3C(v13, v33, v34);
    sub_10088CBF8(v15, type metadata accessor for UnpairEndPoint);

    sub_100017D5C(v30, v31);
    sub_1004FC9E4(v29, v30, v31, 0, v35);

    sub_100165328(v29, v30, v31);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_10088CB88;
    *(v36 + 24) = v19;

    Future.addFailure(block:)();

    v37 = swift_allocObject();
    *(v37 + 16) = sub_10088CB88;
    *(v37 + 24) = v19;

    Future.addSuccess(block:)();

    sub_100165328(v29, v30, v31);
  }

  else
  {
    v38 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v21, "#Durian: Could not create unpair command", 40, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPPairingSessionError(0);
    v43 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = v44;
    sub_100FC7B20(v44, v40, v41);
  }
}

void sub_10088BAE8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v6 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for UnpairEndPoint(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v18 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  sub_100015794(a1, v17);
  v21 = String.init<A>(describing:)();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100008C00();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "#Durian: Removing pairing lock for UUID - %@", 44, 2, v20);

  sub_10088BFC8(a2, &v44);
  sub_101079450(a2);
  if (v24)
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
    sub_100F01DA0(v14);
    type metadata accessor for SearchPartyURLSessionFactory(0);
    swift_allocObject();
    v30 = type metadata accessor for FMNMockingPreferences();
    (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
    v31 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    type metadata accessor for ServerInteractionController(0);
    v32 = swift_allocObject();
    sub_10088CB90(v14, v12, type metadata accessor for UnpairEndPoint);
    v33 = sub_100620D3C(v12, v31, v32);
    sub_10088CBF8(v14, type metadata accessor for UnpairEndPoint);

    sub_100017D5C(v28, v29);
    sub_1004FC9E4(v27, v28, v29, 0, v33);

    sub_100165328(v27, v28, v29);
    v34 = swift_allocObject();
    v36 = v41;
    v35 = v42;
    *(v34 + 16) = v41;
    *(v34 + 24) = v35;

    Future.addFailure(block:)();

    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;

    Future.addSuccess(block:)();

    sub_100165328(v27, v28, v29);
  }

  else
  {
    v38 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v19, "#Durian: Could not create unpair command", 40, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPPairingSessionError(0);
    v43 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = v44;
    v41(v44);
  }
}

void sub_10088C010(void *a1)
{
  v2 = type metadata accessor for Date();
  v98 = *(v2 - 8);
  v99 = v2;
  __chkstk_darwin(v2);
  v97 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v4 - 8);
  v6 = &v75 - v5;
  v7 = type metadata accessor for PairingLockAckEndPoint(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v75 - v11;
  v13 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C3B0;
  v76 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  v75 = xmmword_101385D80;
  *(v15 + 16) = xmmword_101385D80;
  *(v15 + 56) = &type metadata for String;
  v77 = sub_100008C00();
  *(v15 + 64) = v77;
  *(v15 + 32) = 0xD00000000000001BLL;
  *(v15 + 40) = 0x80000001013620E0;
  v78 = v14;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "%@", 2, 2, v15);

  sub_1000BC4D4(&qword_1016AC338, ">W\n");
  swift_allocObject();
  v101 = Future.init()();
  sub_10050B114(v12);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v16 = type metadata accessor for FMNMockingPreferences();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v18 = swift_allocObject();
  sub_10088CB90(v12, v10, type metadata accessor for PairingLockAckEndPoint);
  v100 = sub_1006225CC(v10, v17, v18);
  sub_10088CBF8(v12, type metadata accessor for PairingLockAckEndPoint);
  v19 = Data.hexString.getter();
  v92 = v20;
  v93 = v19;
  v21 = Data.hexString.getter();
  v90 = v22;
  v91 = v21;
  v24 = a1[4];
  v23 = a1[5];
  v25 = a1[7];
  v86 = a1[6];
  v87 = v24;
  v85 = v25;
  v26 = a1[9];
  v84 = a1[8];
  v27 = a1[10];
  v94 = a1[11];
  v95 = v27;
  v28 = a1[12];
  v96 = a1[13];
  v29 = a1[14];
  v30 = a1[15];
  v31 = a1[16];
  v32 = a1[17];
  v33 = a1[18];
  v34 = v23;

  v89 = v26;

  v88 = v33;

  v35 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v112 = v35;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v37 = v112;
  v38 = [objc_opt_self() currentDevice];
  if (v38)
  {
    v39 = v38;
    v79 = v28;
    v80 = v30;
    v81 = v29;
    v82 = v32;
    v83 = v31;
    v40 = [v38 serverFriendlyDescription];

    if (v40)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = swift_isUniquelyReferenced_nonNull_native();
      *&v112 = v37;
      sub_100FFACA0(v41, v43, 0xD000000000000011, 0x800000010134EA40, v44);
      v45 = v112;
      v46 = v97;
      Date.init()();
      v47 = Date.epoch.getter();
      (*(v98 + 8))(v46, v99);
      *&v112 = v47;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *&v112 = v45;
      sub_100FFACA0(v48, v50, 0xD000000000000015, 0x800000010134EA60, v51);
      v52 = v112;
      *&v112 = 1;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      *&v112 = v52;
      sub_100FFACA0(v53, v55, 0xD000000000000013, 0x800000010134EA80, v56);
      v57 = v112;
      v59 = sub_1008D9A78(v58);
      v61 = v60;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      *&v112 = v57;
      sub_100FFACA0(v59, v61, 0x6567412D72657355, 0xEA0000000000746ELL, v62);
      v99 = v112;
      *&v112 = v93;
      *(&v112 + 1) = v92;
      *&v113 = v91;
      *(&v113 + 1) = v90;
      *&v114 = v87;
      *(&v114 + 1) = v34;
      *&v115 = v86;
      *(&v115 + 1) = v85;
      *&v116 = v84;
      *(&v116 + 1) = v89;
      v63 = v94;
      v64 = v95;
      *&v117 = v95;
      *(&v117 + 1) = v94;
      v66 = v79;
      v65 = v80;
      v67 = v96;
      *&v118 = v79;
      *(&v118 + 1) = v96;
      v69 = v81;
      v68 = v82;
      *&v119 = v81;
      *(&v119 + 1) = v80;
      v70 = v83;
      *&v120 = v83;
      *(&v120 + 1) = v82;
      v121 = v88;
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      sub_100017D5C(v64, v63);
      sub_100017D5C(v66, v67);
      sub_100017D5C(v69, v65);
      sub_100017D5C(v70, v68);
      JSONEncoder.init()();
      v108 = v118;
      v109 = v119;
      v110 = v120;
      v111 = v121;
      v104 = v114;
      v105 = v115;
      v106 = v116;
      v107 = v117;
      v102 = v112;
      v103 = v113;
      sub_10088C9BC();
      v71 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v73 = v72;

      sub_10088CA6C(&v112);
      v74 = v99;

      sub_100017D5C(v71, v73);

      sub_100016590(v71, v73);

      sub_100017D5C(v71, v73);
      sub_1004FD920(v74, v71, v73, 0, v100);

      sub_100016590(v71, v73);

      Future.addFailure(block:)();

      Future.addSuccess(block:)();

      sub_100016590(v71, v73);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_10088C9BC()
{
  result = qword_1016AC340;
  if (!qword_1016AC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC340);
  }

  return result;
}

uint64_t sub_10088CAEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10088CB34()
{
  result = qword_1016AC348;
  if (!qword_1016AC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC348);
  }

  return result;
}

uint64_t sub_10088CB90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10088CBF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10088CC58()
{
  result = qword_1016AC358;
  if (!qword_1016AC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC358);
  }

  return result;
}

unint64_t sub_10088CD88()
{
  result = qword_1016AC360;
  if (!qword_1016AC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC360);
  }

  return result;
}

__n128 sub_10088CDEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10088CE20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10088CE68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10088CEE4(uint64_t a1, uint64_t a2)
{

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 44;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);
}

uint64_t sub_10088CFA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10088D4B8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

double sub_10088CFD4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

Swift::Int sub_10088CFE0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_10088CEE4(v1, v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10088D05C(uint64_t a1)
{
  sub_10088CEE4(*v1, v1[1]);
  String.hash(into:)();
}

Swift::Int sub_10088D0B4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  sub_10088CEE4(v2, v3);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10088D12C(uint64_t a1)
{
  v2 = sub_10088D764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10088D168(uint64_t a1)
{
  v2 = sub_10088D764();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10088D1A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_10088CEE4(*a1, a1[1]);
  v5 = v4;
  v7 = v6;
  sub_10088CEE4(v2, v3);
  if (v5 == v9 && v7 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10088D250@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10088D7B8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10088D280(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10088CEE4(v2, v3);
  sub_10015049C(v5, v5[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100007BAC(v5);
}

uint64_t sub_10088D34C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10088D4B8();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void sub_10088D380(uint64_t *a1@<X8>)
{
  sub_10088CEE4(*v1, v1[1]);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_10088D3B4()
{
  result = qword_1016AC368;
  if (!qword_1016AC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC368);
  }

  return result;
}