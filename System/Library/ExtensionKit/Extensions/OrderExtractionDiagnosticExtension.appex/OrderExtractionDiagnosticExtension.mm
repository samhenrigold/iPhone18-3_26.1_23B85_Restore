char *sub_100001448(uint64_t a1)
{
  v2 = sub_10000C450();
  __chkstk_darwin(v2);
  if ((sub_100009B08(a1) & 1) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000163C();
  v4 = sub_100001D00(v3);

  return v4;
}

void sub_10000163C()
{
  v0 = sub_10000C340();
  v61 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v51 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = &v51 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = (&v51 - v11);
  v13 = __chkstk_darwin(v10);
  v15 = &v51 - v14;
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  sub_10000C1D0();
  sub_10000C1B0();
  v18 = sub_10000C1C0();

  v19.super.isa = sub_10000C120().super.isa;
  v20 = v63;
  sub_100001FF0(v17);
  if (v20)
  {
    v63 = v20;
  }

  else
  {
    v58 = v12;
    v59 = v15;
    v56 = v6;
    v57 = v9;
    v55 = v3;
    v22 = v61;
    v60 = v0;
    v65 = &_swiftEmptyArrayStorage;
    __chkstk_darwin(v21);
    *(&v51 - 4) = v19.super.isa;
    *(&v51 - 3) = &v65;
    *(&v51 - 2) = v62;
    *(&v51 - 1) = v17;
    sub_10000C580();
    isa = v19.super.isa;
    sub_1000033B8(v59);
    v63 = 0;
    v53 = v18;
    v23 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      v23 = sub_100007684(0, v23[2] + 1, 1, v23, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
    }

    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_100007684((v24 > 1), v25 + 1, 1, v23, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
    }

    v23[2] = v25 + 1;
    v26 = *(v22 + 4);
    v27 = (v22[80] + 32) & ~v22[80];
    v28 = *(v22 + 9);
    v29 = v23 + v27 + v28 * v25;
    v30 = v60;
    v26(v29, v59, v60);
    v31 = v63;
    sub_100003578(v58);
    if (v31)
    {
      v63 = v31;

      (*(v22 + 1))(v17, v30);
    }

    else
    {
      v51 = (v22 + 32);
      v52 = v26;
      v59 = v28;
      v33 = v23[2];
      v32 = v23[3];
      if (v33 >= v32 >> 1)
      {
        v23 = sub_100007684((v32 > 1), v33 + 1, 1, v23, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
      }

      v23[2] = v33 + 1;
      v34 = v23 + v27 + v33 * v59;
      v35 = v60;
      v52(v34, v58, v60);
      sub_10000373C(v57);
      v37 = v23[2];
      v36 = v23[3];
      v38 = v23;
      if (v37 >= v36 >> 1)
      {
        v38 = sub_100007684((v36 > 1), v37 + 1, 1, v23, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
      }

      v38[2] = v37 + 1;
      v23 = v38;
      v52(v38 + v27 + v37 * v59, v57, v35);
      sub_100003900(v17, v56);
      v63 = 0;
      v40 = v23[2];
      v39 = v23[3];
      v62 = (v40 + 1);
      if (v40 >= v39 >> 1)
      {
        v23 = sub_100007684((v39 > 1), v62, 1, v23, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
      }

      v23[2] = v62;
      v41 = v23 + v27;
      v52(v23 + v27 + v40 * v59, v56, v35);
      v64 = &_swiftEmptyArrayStorage;
      sub_10000C710();
      v42 = 0;
      v58 = (v22 + 16);
      v61 = v22 + 8;
      v22 = v55;
      while (1)
      {
        if (v42 >= v23[2])
        {
          __break(1u);
          goto LABEL_21;
        }

        v43 = v60;
        (*v58)(v22, v41, v60);
        v44 = objc_allocWithZone(DEAttachmentItem);
        sub_10000C310(v45);
        v47 = v46;
        v48 = [v44 initWithPathURL:v46];

        if (!v48)
        {
          break;
        }

        ++v42;
        v49 = v43;
        v50 = *v61;
        (*v61)(v22, v49);
        sub_10000C6F0();
        sub_10000C720();
        sub_10000C730();
        sub_10000C700();
        v41 += v59;
        if (v62 == v42)
        {

          v50(v17, v60);
          return;
        }
      }

      __break(1u);
    }
  }
}

char *sub_100001D00(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10000C750();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_10000796C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_10000C6E0();
        sub_10000ADC0(0, &qword_1000142D0, DEAttachmentItem_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10000796C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100009D64(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000ADC0(0, &qword_1000142D0, DEAttachmentItem_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10000796C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100009D64(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_100001FF0(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10000C3E0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C340();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  v10 = [v9 temporaryDirectory];

  sub_10000C330();
  v11 = v23;
  v12 = [v8 defaultManager];
  sub_10000C3D0();
  sub_10000C3B0();
  (*(v2 + 8))(v4, v1);
  sub_10000C320();

  sub_10000C310(v13);
  v15 = v14;
  v25 = 0;
  LOBYTE(v1) = [v12 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v25];

  if (v1)
  {
    v16 = *(v5 + 8);
    v17 = v25;
    v16(v7, v24);
  }

  else
  {
    v18 = v25;
    sub_10000C300();

    swift_willThrow();
    v19 = *(v5 + 8);
    v20 = v11;
    v21 = v24;
    v19(v20, v24);
    v19(v7, v21);
  }
}

void sub_1000022CC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v7 = sub_10000C340();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = [objc_opt_self() currentQueryGenerationToken];
  v43 = 0;
  v15 = [a1 setQueryGenerationFromToken:v14 error:&v43];

  if (v15)
  {
    v16 = v43;
    sub_10000268C(a4, v13);
    if (!v4)
    {
      v17 = v42;
      v18 = *v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_100007684(0, v18[2] + 1, 1, v18, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
        *v42 = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      v22 = v21 + 1;
      v41 = v7;
      if (v21 >= v20 >> 1)
      {
        v40 = v21 + 1;
        v37 = sub_100007684((v20 > 1), v21 + 1, 1, v18, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
        v22 = v40;
        v18 = v37;
        *v42 = v37;
      }

      v18[2] = v22;
      v24 = *(v8 + 32);
      v23 = v8 + 32;
      v25 = (*(v23 + 48) + 32) & ~*(v23 + 48);
      v26 = v18 + v25;
      v27 = *(v23 + 40);
      v28 = &v26[v27 * v21];
      v29 = v24;
      (v24)(v28, v13, v41);
      sub_100002D64(a1, a4, v11);
      v40 = v25;
      v30 = v42;
      v31 = *v42;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *v30 = v31;
      if ((v32 & 1) == 0)
      {
        v31 = sub_100007684(0, *(v31 + 2) + 1, 1, v31, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
        *v42 = v31;
      }

      v33 = v40;
      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      if (v35 >= v34 >> 1)
      {
        v38 = sub_100007684((v34 > 1), v35 + 1, 1, v31, &qword_1000143F0, &qword_10000CEA8, &type metadata accessor for URL);
        v33 = v40;
        v31 = v38;
        *v42 = v38;
      }

      *(v31 + 2) = v35 + 1;
      v29(&v31[v33 + v35 * v27], v11);
    }
  }

  else
  {
    v36 = v43;
    sub_10000C300();

    swift_willThrow();
  }
}

void sub_10000268C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a1;
  v41 = a2;
  v44 = sub_10000C2B0();
  v40 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C290();
  v50 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009D1C(&qword_100014498, &qword_10000CF10);
  __chkstk_darwin(v6 - 8);
  v8 = v36 - v7;
  v9 = sub_10000C1E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C250();
  v13 = sub_10000C240();
  v14 = v49;
  v15 = sub_10000C590();
  v16 = v14;
  if (v14)
  {
  }

  else
  {
    v48 = v12;
    v49 = v15;
    v42 = v10;
    v36[1] = v5;
    v36[2] = v3;
    if (v15 >> 62)
    {
      goto LABEL_27;
    }

    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v18 = v44;
    v37 = v13;
    v38 = v16;
    if (v17)
    {
      v13 = 0;
      v46 = v15 & 0xFFFFFFFFFFFFFF8;
      v47 = v15 & 0xC000000000000001;
      v19 = (v42 + 48);
      v16 = (v42 + 32);
      v20 = &_swiftEmptyArrayStorage;
      v45 = v17;
      while (1)
      {
        if (v47)
        {
          sub_10000C6E0();
          v22 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v13 >= *(v46 + 16))
          {
            goto LABEL_26;
          }

          v21 = *(v15 + 8 * v13 + 32);
          v22 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            v17 = sub_10000C750();
            v15 = v49;
            goto LABEL_5;
          }
        }

        sub_10000C1F0();
        if ((*v19)(v8, 1, v9) == 1)
        {
          sub_10000B7F0(v8, &qword_100014498, &qword_10000CF10);
        }

        else
        {
          v23 = *v16;
          (*v16)(v48, v8, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_100007684(0, v20[2] + 1, 1, v20, &qword_1000144B8, &qword_10000CF20, &type metadata accessor for CascadeExtractedOrder);
          }

          v25 = v20[2];
          v24 = v20[3];
          v26 = v20;
          if (v25 >= v24 >> 1)
          {
            v26 = sub_100007684((v24 > 1), v25 + 1, 1, v20, &qword_1000144B8, &qword_10000CF20, &type metadata accessor for CascadeExtractedOrder);
          }

          v26[2] = v25 + 1;
          v20 = v26;
          v23(v26 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25, v48, v9);
          v18 = v44;
        }

        ++v13;
        v15 = v49;
        if (v22 == v45)
        {
          goto LABEL_22;
        }
      }
    }

    v20 = &_swiftEmptyArrayStorage;
LABEL_22:

    v52 = v20;
    v27 = v41;
    sub_10000C320();
    sub_10000C2F0();
    swift_allocObject();
    sub_10000C2E0();
    sub_100009D1C(&qword_100014410, &qword_10000CEB8);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10000CE00;
    sub_10000C280();
    sub_10000C270();
    v51 = v28;
    sub_10000B904(&qword_100014418, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
    sub_100009D1C(&qword_100014420, &qword_10000CEC0);
    sub_10000AE6C();
    sub_10000C5E0();
    sub_10000C2A0();
    (*(v40 + 104))(v39, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v18);
    sub_10000C2C0();
    sub_100009D1C(&qword_1000144A0, &qword_10000CF18);
    sub_10000B0B0();
    v29 = v38;
    v30 = sub_10000C2D0();
    if (v29)
    {
      v32 = sub_10000C340();
      (*(*(v32 - 8) + 8))(v27, v32);
    }

    else
    {
      v33 = v30;
      v34 = v31;

      sub_10000C380();
      v35 = v37;

      sub_100009F70(v33, v34);
    }
  }
}

void sub_100002D64(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v42 = a2;
  v40 = a3;
  v3 = type metadata accessor for ExtractedOrderSnapshot(0);
  v36 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_10000C2B0();
  v39 = *(v45 - 8);
  __chkstk_darwin(v45);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000C290();
  v41 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C230();
  v9 = sub_10000C210();
  sub_100009D1C(&qword_100014400, &qword_10000CEB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10000CE10;
  v11 = objc_allocWithZone(NSSortDescriptor);
  v12 = sub_10000C4B0();
  v13 = [v11 initWithKey:v12 ascending:0];

  v14 = v9;
  *(v10 + 32) = v13;
  sub_10000ADC0(0, &qword_100014408, NSSortDescriptor_ptr);
  isa = sub_10000C520().super.isa;

  [v9 setSortDescriptors:isa];

  v16 = v44;
  v17 = sub_10000C590();
  if (v16)
  {
    goto LABEL_2;
  }

  v18 = v17;
  v43 = v8;
  v44 = 0;
  if (v17 >> 62)
  {
    v19 = sub_10000C750();
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v45;
  if (v19)
  {
    v35 = v9;
    v47 = &_swiftEmptyArrayStorage;
    sub_10000798C(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return;
    }

    v21 = 0;
    v22 = v47;
    v23 = v36;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v24 = sub_10000C6E0();
      }

      else
      {
        v24 = *(v18 + 8 * v21 + 32);
      }

      sub_1000042CC(v24, v5);
      v47 = v22;
      v26 = v22[2];
      v25 = v22[3];
      if (v26 >= v25 >> 1)
      {
        sub_10000798C((v25 > 1), v26 + 1, 1);
        v23 = v36;
        v22 = v47;
      }

      ++v21;
      v22[2] = v26 + 1;
      sub_10000AE08(v5, v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v26);
      v20 = v45;
    }

    while (v19 != v21);

    v14 = v35;
  }

  else
  {

    v22 = &_swiftEmptyArrayStorage;
  }

  v47 = v22;
  v27 = v40;
  sub_10000C320();
  sub_10000C2F0();
  swift_allocObject();
  sub_10000C2E0();
  sub_100009D1C(&qword_100014410, &qword_10000CEB8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10000CE00;
  sub_10000C280();
  sub_10000C270();
  v46 = v28;
  sub_10000B904(&qword_100014418, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100009D1C(&qword_100014420, &qword_10000CEC0);
  sub_10000AE6C();
  sub_10000C5E0();
  sub_10000C2A0();
  (*(v39 + 104))(v38, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v20);
  sub_10000C2C0();
  sub_100009D1C(&qword_100014430, &qword_10000CEC8);
  sub_10000AF18();
  v29 = v44;
  v30 = sub_10000C2D0();
  if (!v29)
  {
    v33 = v30;
    v34 = v31;

    sub_10000C380();

    sub_100009F70(v33, v34);
LABEL_2:

    return;
  }

  v32 = sub_10000C340();
  (*(*(v32 - 8) + 8))(v27, v32);
}

uint64_t sub_1000033B8@<X0>(uint64_t x8_0@<X8>)
{
  *(swift_allocObject() + 16) = &_swiftEmptyArrayStorage;
  sub_10000C3F0();
  sub_10000B904(&qword_1000143F8, &type metadata accessor for Library.Streams.WalletPaymentsCommerce.FoundIn.OrderEmail, &protocol conformance descriptor for Library.Streams.WalletPaymentsCommerce.FoundIn.OrderEmail);
  sub_10000C420();
  if (v2)
  {
  }

  sub_10000AC28(v6, v6[3]);

  sub_10000C460();

  sub_10000ACA4(v6);
  swift_beginAccess();

  sub_100004D80(v5, 0x616D45726564724FLL, 0xEA00000000006C69, x8_0);
}

uint64_t sub_100003578@<X0>(uint64_t x8_0@<X8>)
{
  *(swift_allocObject() + 16) = &_swiftEmptyArrayStorage;
  sub_10000C410();
  sub_10000B904(&qword_1000143E8, &type metadata accessor for Library.Streams.WalletPaymentsCommerce.FoundIn.TrackedOrder, &protocol conformance descriptor for Library.Streams.WalletPaymentsCommerce.FoundIn.TrackedOrder);
  sub_10000C420();
  if (v2)
  {
  }

  sub_10000AC28(v6, v6[3]);

  sub_10000C460();

  sub_10000ACA4(v6);
  swift_beginAccess();

  sub_100004D80(v5, 0x4F64656B63617254, 0xEC00000072656472, x8_0);
}

uint64_t sub_10000373C@<X0>(uint64_t x8_0@<X8>)
{
  *(swift_allocObject() + 16) = &_swiftEmptyArrayStorage;
  sub_10000C400();
  sub_10000B904(&qword_1000143E0, &type metadata accessor for Library.Streams.WalletPaymentsCommerce.FoundIn.ClassicOrder, &protocol conformance descriptor for Library.Streams.WalletPaymentsCommerce.FoundIn.ClassicOrder);
  sub_10000C420();
  if (v2)
  {
  }

  sub_10000AC28(v6, v6[3]);

  sub_10000C460();

  sub_10000ACA4(v6);
  swift_beginAccess();

  sub_100004D80(v5, 0x4F63697373616C43, 0xEC00000072656472, x8_0);
}

uint64_t sub_100003900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v3 = sub_10000C340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v54 = &xmmword_10000CE00;
  v7 = sub_10000C4B0();
  v8 = [v6 setEnumeratorWithUseCase:v7];

  aBlock = 0;
  v9 = [v8 allSets:&aBlock];
  swift_unknownObjectRelease();
  v10 = aBlock;
  if (!v9)
  {
    v30 = aBlock;
    sub_10000C300();

    return swift_willThrow();
  }

  sub_100009D1C(&qword_1000142E0, qword_10000CE58);
  v11 = sub_10000C530();
  v12 = v10;

  v13 = swift_allocObject();
  v14 = sub_100009DD0(&_swiftEmptyArrayStorage);
  v56 = v13;
  *(v13 + 16) = v14;
  v46 = v13 + 16;
  v43 = a2;
  v44 = v4;
  v45 = v3;
  if (v11 >> 62)
  {
    v15 = sub_10000C750();
    if (v15)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_4:
      if (v15 < 1)
      {
        __break(1u);
      }

      v16 = 0;
      v50 = &v60;
      v51 = v11 & 0xC000000000000001;
      v52 = v15;
      v53 = v11;
      do
      {
        if (v51)
        {
          v17 = sub_10000C6E0();
        }

        else
        {
          v17 = *(v11 + 8 * v16 + 32);
        }

        v18 = v17;
        ++v16;
        v19 = sub_10000C4B0();
        v20 = [v18 changePublisherWithUseCase:v19];

        v21 = swift_allocObject();
        *(v21 + 16) = 1;
        v62 = sub_100009EE4;
        v63 = v21;
        aBlock = _NSConcreteStackBlock;
        v59 = 1107296256;
        v60 = sub_1000057EC;
        v61 = &unk_1000109B8;
        v22 = _Block_copy(&aBlock);

        v23 = swift_allocObject();
        v24 = v55;
        v25 = v56;
        v23[2] = v55;
        v23[3] = v18;
        v23[4] = v25;
        v62 = sub_100009F4C;
        v63 = v23;
        aBlock = _NSConcreteStackBlock;
        v59 = 1107296256;
        v60 = sub_1000062F4;
        v61 = &unk_100010A08;
        v26 = _Block_copy(&aBlock);
        v27 = v24;
        v28 = v18;

        v29 = [v20 drivableSinkWithBookmark:0 completion:v22 shouldContinue:v26];
        _Block_release(v26);
        _Block_release(v22);

        v11 = v53;
      }

      while (v52 != v16);
    }
  }

  v32 = objc_opt_self();
  swift_beginAccess();

  sub_100009D1C(&qword_1000143A8, &qword_10000CE70);
  isa = sub_10000C470().super.isa;

  v57 = 0;
  v34 = [v32 dataWithJSONObject:isa options:3 error:&v57];

  v35 = v57;
  if (v34)
  {
    v36 = sub_10000C370();
    v38 = v37;

    v39 = v48;
    sub_10000C320();
    v40 = v49;
    sub_10000C380();
    if (v40)
    {
      (*(v44 + 8))(v39, v45);
      sub_100009F70(v36, v38);
    }

    else
    {
      sub_100009F70(v36, v38);
      (*(v44 + 32))(v43, v39, v45);
    }
  }

  else
  {
    v41 = v35;
    sub_10000C300();

    swift_willThrow();
  }
}

unint64_t *sub_100003EE4(uint64_t a1)
{
  v35 = sub_10000C150();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_10000C650();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v36 = v4;
  v43 = &_swiftEmptyArrayStorage;
  sub_100007A14(0, v5 & ~(v5 >> 63), 0);
  v6 = v43;
  if (v38)
  {
    result = sub_10000C610();
  }

  else
  {
    result = sub_10000C5F0();
    v8 = *(a1 + 36);
  }

  v40 = result;
  v41 = v8;
  v42 = v38 != 0;
  v9 = v36;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v33 = v5;
    v34 = v37 + 32;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v11 = a1;
    }

    v31 = a1 + 56;
    v32 = v11;
    v29[1] = v1;
    v30 = a1 + 64;
    while (v10 < v5)
    {
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_38;
      }

      v14 = v40;
      v15 = v41;
      v16 = v42;
      sub_100009908(v40, v41, v42, a1);
      sub_10000C160();
      v43 = v6;
      v18 = v6[2];
      v17 = v6[3];
      if (v18 >= v17 >> 1)
      {
        sub_100007A14((v17 > 1), v18 + 1, 1);
        v9 = v36;
        v6 = v43;
      }

      v6[2] = v18 + 1;
      result = (*(v37 + 32))(v6 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v18, v9, v35);
      if (v38)
      {
        if (!v16)
        {
          goto LABEL_43;
        }

        if (sub_10000C620())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v5 = v33;
        sub_100009D1C(&qword_100014480, &qword_10000CEF8);
        v12 = sub_10000C550();
        sub_10000C670();
        result = v12(v39, 0);
      }

      else
      {
        if (v16)
        {
          goto LABEL_44;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v19 = 1 << *(a1 + 32);
        if (v14 >= v19)
        {
          goto LABEL_39;
        }

        v20 = v14 >> 6;
        v21 = *(v31 + 8 * (v14 >> 6));
        if (((v21 >> v14) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(a1 + 36) != v15)
        {
          goto LABEL_41;
        }

        v22 = v21 & (-2 << (v14 & 0x3F));
        if (v22)
        {
          v19 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v20 << 6;
          v24 = v20 + 1;
          v25 = (v30 + 8 * v20);
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              result = sub_10000B0A4(v14, v15, 0);
              v19 = __clz(__rbit64(v26)) + v23;
              goto LABEL_34;
            }
          }

          result = sub_10000B0A4(v14, v15, 0);
        }

LABEL_34:
        v28 = *(a1 + 36);
        v40 = v19;
        v41 = v28;
        v42 = 0;
        v5 = v33;
      }

      v9 = v36;
      if (v10 == v5)
      {
        sub_10000B0A4(v40, v41, v42);
        return v6;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_1000042CC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100009D1C(&qword_100014448, &qword_10000CED0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v113 = &v106 - v9;
  __chkstk_darwin(v8);
  v112 = &v106 - v10;
  v11 = sub_100009D1C(&qword_100014450, &qword_10000CED8);
  v122 = *(v11 - 8);
  __chkstk_darwin(v11);
  v119 = (&v106 - v12);
  v130 = sub_10000C190();
  v13 = *(v130 - 8);
  v14 = __chkstk_darwin(v130);
  v129 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v123 = (&v106 - v16);
  v17 = sub_100009D1C(&qword_100014458, &qword_10000CEE0);
  v18 = __chkstk_darwin(v17 - 8);
  v126 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v124 = (&v106 - v20);
  v21 = type metadata accessor for ExtractedOrderSnapshot(0);
  v22 = v21[9];
  v23 = sub_10000C3A0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v106 = v22;
  (v25)(a2 + v22, 1, 1, v23);
  v107 = v21[11];
  (v25)(a2 + v107, 1, 1, v23);
  v108 = v21[15];
  v115 = v25;
  v116 = v23;
  v114 = v26;
  (v25)(a2 + v108, 1, 1, v23);
  v27 = [a1 trackedOrderIdentifier];
  v28 = sub_10000C4C0();
  v30 = v29;

  *a2 = v28;
  a2[1] = v30;
  v31 = [a1 trackedOrderIdentifier];
  sub_10000C4C0();

  v32 = [a1 orderContent];
  sub_10000C130();
  v33 = [a1 orderContentModificationDate];
  sub_10000C390();

  v34 = sub_10000C200();
  v35 = sub_100003EE4(v34);
  v128 = 0;

  v125 = sub_100009FC4(v35);

  isUniquelyReferenced_nonNull_native = sub_10000C220();
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_53;
  }

  v37 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v127 = v11;
    v111 = a2;
    v110 = a1;
    v117 = v7;
    v109 = v21;
    if (!v37)
    {

      a1 = &_swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    v38 = isUniquelyReferenced_nonNull_native;
    v131 = &_swiftEmptyArrayStorage;
    sub_1000079D0(0, v37 & ~(v37 >> 63), 0);
    if (v37 < 0)
    {
      break;
    }

    v39 = 0;
    a1 = v131;
    v40 = v38;
    v41 = v38 & 0xC000000000000001;
    v42 = v123;
    v43 = v40;
    do
    {
      if (v41)
      {
        sub_10000C6E0();
      }

      else
      {
        v44 = *(v40 + 8 * v39 + 32);
      }

      sub_10000C1A0();
      v131 = a1;
      v46 = a1[2];
      v45 = a1[3];
      if (v46 >= v45 >> 1)
      {
        sub_1000079D0((v45 > 1), v46 + 1, 1);
        v42 = v123;
        a1 = v131;
      }

      ++v39;
      a1[2] = v46 + 1;
      (*(v13 + 32))(a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v46, v42, v130);
      v11 = v127;
      v40 = v43;
    }

    while (v37 != v39);

LABEL_14:
    v118 = v13 + 16;
    v47 = a1[2];
    v48 = v122;
    v122 += 6;
    v123 = (v48 + 7);
    v120 = v13 + 8;
    v121 = (v13 + 32);

    v49 = 0;
    a2 = a1;
    v21 = v125;
    v7 = v126;
    if (!v47)
    {
LABEL_15:
      v50 = 1;
      v49 = v47;
      goto LABEL_18;
    }

    while (v49 < a1[2])
    {
      v51 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v49;
      v52 = *(v11 + 48);
      v53 = v119;
      *v119 = v49;
      (*(v13 + 16))(v53 + v52, v51, v130);
      sub_10000AFCC(v53, v7, &qword_100014450, &qword_10000CED8);
      v50 = 0;
      ++v49;
LABEL_18:
      (*v123)(v7, v50, 1, v11);
      v54 = v124;
      sub_10000AFCC(v7, v124, &qword_100014458, &qword_10000CEE0);
      if ((*v122)(v54, 1, v11) == 1)
      {
        goto LABEL_26;
      }

      v7 = *v54;
      (*v121)(v129, v54 + *(v11 + 48), v130);
      v55 = sub_10000C170();

      v56 = v128;
      v11 = sub_10000A50C(v55, v21);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_native = sub_100008260(a2);
        a2 = isUniquelyReferenced_nonNull_native;
        if ((v7 & 0x8000000000000000) != 0)
        {
LABEL_25:
          __break(1u);
LABEL_26:

          v57 = v109;
          v58 = v111;
          *(v111 + v109[7]) = a2;
          v59 = v110;
          *(v58 + v57[8]) = [v110 isMarkedAsComplete];
          v60 = [v59 isMarkedAsCompleteModificationDate];
          if (v60)
          {
            v61 = v112;
            v62 = v60;
            sub_10000C390();

            v63 = 0;
            v65 = v116;
            v64 = v117;
            v66 = v115;
          }

          else
          {
            v63 = 1;
            v65 = v116;
            v64 = v117;
            v66 = v115;
            v61 = v112;
          }

          (v66)(v61, v63, 1, v65);
          sub_10000B034(v61, v58 + v106);
          *(v58 + v57[10]) = [v59 notificationsEnabled];
          v67 = [v59 notificationsEnabledModificationDate];
          if (v67)
          {
            v68 = v113;
            v69 = v67;
            sub_10000C390();

            v70 = v68;
          }

          else
          {
            v70 = v113;
          }

          v71 = v70;
          v66();
          sub_10000B034(v71, v58 + v107);
          v72 = [v59 merchantEmailMessageID];
          if (v72)
          {
            v73 = v72;
            v74 = sub_10000C4C0();
            v76 = v75;
          }

          else
          {
            v74 = 0;
            v76 = 0;
          }

          v77 = (v58 + v57[12]);
          *v77 = v74;
          v77[1] = v76;
          v78 = [v59 merchantEmailMessageIDHash];
          if (v78)
          {
            v79 = v78;
            v80 = sub_10000C4C0();
            v82 = v81;
          }

          else
          {
            v80 = 0;
            v82 = 0;
          }

          v83 = (v58 + v57[13]);
          *v83 = v80;
          v83[1] = v82;
          v84 = [v59 merchantEmailAddress];
          if (v84)
          {
            v85 = v84;
            v86 = sub_10000C4C0();
            v88 = v87;
          }

          else
          {
            v86 = 0;
            v88 = 0;
          }

          v89 = (v58 + v57[14]);
          *v89 = v86;
          v89[1] = v88;
          v90 = [v59 merchantEmailDateSent];
          if (v90)
          {
            v91 = v90;
            sub_10000C390();

            v92 = 0;
          }

          else
          {
            v92 = 1;
          }

          (v66)(v64, v92, 1, v65);
          sub_10000B034(v64, v58 + v108);
          v93 = [v59 merchantEmailDisplayName];
          if (v93)
          {
            v94 = v93;
            v95 = sub_10000C4C0();
            v97 = v96;
          }

          else
          {
            v95 = 0;
            v97 = 0;
          }

          v98 = (v58 + v57[16]);
          *v98 = v95;
          v98[1] = v97;
          v99 = [v59 recipientEmailAddress];
          if (v99)
          {
            v100 = v99;
            v101 = sub_10000C4C0();
            v103 = v102;
          }

          else
          {

            v101 = 0;
            v103 = 0;
          }

          v104 = (v58 + v57[17]);
          *v104 = v101;
          v104[1] = v103;
          return;
        }
      }

      if (v7 >= a2[2])
      {
        __break(1u);
        break;
      }

      v128 = v56;
      sub_10000C180();
      isUniquelyReferenced_nonNull_native = (*(v13 + 8))(v129, v130);
      v7 = v126;
      v11 = v127;
      if (v49 == v47)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_53:
    v105 = isUniquelyReferenced_nonNull_native;
    v37 = sub_10000C750();
    isUniquelyReferenced_nonNull_native = v105;
  }

  __break(1u);
}

uint64_t sub_100004D80@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v47 = sub_10000C4F0();
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v50[0] = a2;
  *(&v50[0] + 1) = a3;

  v51._countAndFlagsBits = 0x6E6F736A2ELL;
  v51._object = 0xE500000000000000;
  sub_10000C510(v51);
  v45 = v13;
  sub_10000C320();

  v14 = *(a1 + 16);
  if (v14)
  {
    v40 = a4;
    v41 = v11;
    v42 = v10;
    v49 = &_swiftEmptyArrayStorage;
    sub_10000796C(0, v14, 0);
    v15 = v49;
    v46 = objc_opt_self();
    v16 = (v44 + 8);
    v17 = a1 + 40;
    while (1)
    {

      sub_10000C4E0();
      v18 = sub_10000C4D0();
      v20 = v19;
      (*v16)(v9, v47);
      if (v20 >> 60 == 15)
      {
        __break(1u);
      }

      isa = sub_10000C360().super.isa;
      sub_10000ACF0(v18, v20);
      v48 = 0;
      v22 = [v46 JSONObjectWithData:isa options:0 error:&v48];

      v23 = v48;
      if (!v22)
      {
        break;
      }

      sub_10000C5D0();

      swift_unknownObjectRelease();
      v49 = v15;
      v25 = v15[2];
      v24 = v15[3];
      if (v25 >= v24 >> 1)
      {
        sub_10000796C((v24 > 1), v25 + 1, 1);
        v15 = v49;
      }

      v15[2] = v25 + 1;
      sub_100009D64(v50, &v15[4 * v25 + 4]);
      v17 += 16;
      if (!--v14)
      {
        v11 = v41;
        v10 = v42;
        v28 = v40;
        goto LABEL_11;
      }
    }

    v26 = v23;
    sub_10000C300();

    swift_willThrow();
    (*(v41 + 8))(v45, v42);
  }

  else
  {
    v28 = a4;
LABEL_11:
    v29 = objc_opt_self();
    v30 = sub_10000C520().super.isa;

    *&v50[0] = 0;
    v31 = [v29 dataWithJSONObject:v30 options:3 error:v50];

    v32 = *&v50[0];
    if (v31)
    {
      v33 = sub_10000C370();
      v35 = v34;

      v36 = v45;
      v37 = v43;
      sub_10000C380();
      if (v37)
      {
        (*(v11 + 8))(v36, v10);
      }

      else
      {
        (*(v11 + 32))(v28, v36, v10);
      }

      return sub_100009F70(v33, v35);
    }

    else
    {
      v38 = v32;
      sub_10000C300();

      swift_willThrow();
      return (*(v11 + 8))(v45, v10);
    }
  }
}

uint64_t sub_100005224(uint64_t *a1)
{
  v2 = sub_10000C450();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_10000C430();
    swift_errorRetain();
    v7 = sub_10000C440();
    v8 = sub_10000C560();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to read the order emails: %@", v9, 0xCu);
      sub_10000B7F0(v10, &qword_1000142C8, "h\n");
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1000053D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_10000C450();
  v6 = __chkstk_darwin(v5);
  v7 = a3(v6);
  v9 = v8;
  swift_beginAccess();
  v10 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100007860(0, *(v10 + 2) + 1, 1, v10);
    *(a2 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100007860((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = v7;
  *(v14 + 5) = v9;
  *(a2 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_10000565C(void *a1, uint64_t a2)
{
  v4 = sub_10000C450();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(a2 + 16) == 1 && ![a1 state])
  {
    sub_10000C430();
    v9 = sub_10000C440();
    v10 = sub_10000C570();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Successfully processed all cascade set updates. Updating bookmark.", v11, 2u);
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    result = swift_beginAccess();
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_1000057EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

void sub_100005874(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10000C450();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C3E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 sharedItem];
  sub_100005FF8(a3, v14);
  v15 = [a1 sharedItemChangeType];
  if (v15 == 2)
  {
    v16 = sub_10000C3B0();
    v18 = v17;
    swift_beginAccess();
    sub_1000061FC(0, v16, v18);
    swift_endAccess();

    (*(v11 + 8))(v13, v10);
    return;
  }

  if (v15 == 1)
  {
    (*(v11 + 8))(v13, v10);

    return;
  }

  v58 = v8;
  if (v15)
  {
LABEL_36:
    sub_10000C740();
    __break(1u);
    return;
  }

  v60 = a4;
  v61 = v13;
  v19 = [a1 allLocalInstances];
  sub_100009D1C(&qword_1000143B0, &qword_10000CE78);
  v20 = sub_10000C530();

  if (v20 >> 62)
  {
LABEL_34:
    v21 = sub_10000C750();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v7;
  v63 = v14;
  v62 = v11;
  if (v21)
  {
    v11 = 0;
    v7 = v20 & 0xC000000000000001;
    v22 = &_swiftEmptyArrayStorage;
    v14 = &OrderExtractionDiagnosticExtension;
    do
    {
      v23 = v11;
      while (1)
      {
        if (v7)
        {
          v24 = sub_10000C6E0();
        }

        else
        {
          if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v24 = *(v20 + 8 * v23 + 32);
        }

        v25 = v24;
        v11 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v26 = [v24 metaContent];
        if (v26)
        {
          break;
        }

        ++v23;
        if (v11 == v21)
        {
          goto LABEL_26;
        }
      }

      v57 = v10;
      v27 = v26;
      v28 = [v26 sourceItemIdentifier];

      v56 = sub_10000C4C0();
      v30 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100007860(0, *(v22 + 2) + 1, 1, v22);
      }

      v32 = *(v22 + 2);
      v31 = *(v22 + 3);
      if (v32 >= v31 >> 1)
      {
        v22 = sub_100007860((v31 > 1), v32 + 1, 1, v22);
      }

      *(v22 + 2) = v32 + 1;
      v33 = &v22[16 * v32];
      *(v33 + 4) = v56;
      *(v33 + 5) = v30;
      v10 = v57;
    }

    while (v11 != v21);
  }

  else
  {
    v22 = &_swiftEmptyArrayStorage;
  }

LABEL_26:

  if (*(v22 + 2))
  {
    v34 = *(v22 + 4);
    v35 = *(v22 + 5);
    swift_bridgeObjectRetain_n();

    v36 = v63;
    v37 = [(__objc2_class_ro *)v63 content];
    if (v37)
    {
      v38 = v37;

      objc_opt_self();
      v39 = swift_dynamicCastObjCClassUnconditional();
      sub_100009D1C(&qword_1000143B8, &qword_10000CE80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10000CE00;
      v66 = 0xD000000000000014;
      v67 = 0x800000010000D1D0;
      sub_10000C6A0();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v34;
      *(inited + 80) = v35;
      v66 = 0x73746E65746E6F63;
      v67 = 0xE800000000000000;
      sub_10000C6A0();
      v41 = [v39 jsonDictionary];
      v42 = sub_10000C480();

      *(inited + 168) = sub_100009D1C(&qword_1000143A8, &qword_10000CE70);
      *(inited + 144) = v42;
      v43 = sub_10000A9EC(inited);
      swift_setDeallocating();
      sub_100009D1C(&qword_1000143C0, &qword_10000CE88);
      swift_arrayDestroy();
      v44 = v61;
      v45 = sub_10000C3B0();
      v47 = v46;
      v48 = v60;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = *(v48 + 16);
      *(v48 + 16) = 0x8000000000000000;
      sub_10000961C(v43, v45, v47, isUniquelyReferenced_nonNull_native);

      *(v48 + 16) = v65;
      swift_endAccess();

      (*(v62 + 8))(v44, v10);
      return;
    }

    __break(1u);
    goto LABEL_36;
  }

  v50 = v64;
  sub_10000C430();
  v51 = sub_10000C440();
  v52 = sub_10000C560();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v63;
  if (v53)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Failed to find sourceItemIdentifier for added cascade set item.", v55, 2u);
  }

  (*(v58 + 8))(v50, v59);
  (*(v62 + 8))(v61, v10);
}

uint64_t sub_100005FF8(void *a1, uint64_t a2)
{
  v2 = [a1 prefixedSharedIdentifier:a2];
  v3 = sub_10000C370();
  v5 = v4;

  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C350();
  sub_10000C3C0();

  return sub_100009F70(v3, v5);
}

uint64_t sub_1000061FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10000961C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100007D88(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100009798();
        v14 = v16;
      }

      result = sub_10000946C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1000062F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_10000638C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1000063E8(char a1)
{
  result = 0x6E6F43726564726FLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0x6D6574496C69616DLL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000024;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
    case 13:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

Swift::Int sub_1000065DC()
{
  v1 = *v0;
  sub_10000C860();
  sub_10000C870(v1);
  return sub_10000C880();
}

Swift::Int sub_100006650(uint64_t a1)
{
  v2 = *v1;
  sub_10000C860();
  sub_10000C870(v2);
  return sub_10000C880();
}

uint64_t sub_10000669C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000BC88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000066DC(uint64_t a1)
{
  v2 = sub_10000B6E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006718(uint64_t a1)
{
  v2 = sub_10000B6E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100006754(void *a1)
{
  v3 = v1;
  v5 = sub_100009D1C(&qword_100014590, &qword_10000CF98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000AC28(a1, a1[3]);
  sub_10000B6E8();
  sub_10000C8A0();
  LOBYTE(v12) = 0;
  sub_10000C800();
  if (!v2)
  {
    v9 = type metadata accessor for ExtractedOrderSnapshot(0);
    LOBYTE(v12) = 1;
    sub_10000C140();
    sub_10000B904(&qword_100014598, &type metadata accessor for ExtractedOrder, &protocol conformance descriptor for ExtractedOrder);
    sub_10000C820();
    LOBYTE(v12) = 2;
    sub_10000C3A0();
    sub_10000B904(&qword_1000145A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10000C820();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_100009D1C(&qword_1000145A8, &qword_10000CFA0);
    sub_10000B73C();
    sub_10000C820();
    LOBYTE(v12) = 4;
    sub_10000C810();
    LOBYTE(v12) = 5;
    sub_10000C7F0();
    LOBYTE(v12) = 6;
    sub_10000C810();
    LOBYTE(v12) = 7;
    sub_10000C7F0();
    LOBYTE(v12) = 8;
    sub_10000C7E0();
    LOBYTE(v12) = 9;
    sub_10000C7E0();
    LOBYTE(v12) = 10;
    sub_10000C7E0();
    LOBYTE(v12) = 11;
    sub_10000C7F0();
    LOBYTE(v12) = 12;
    sub_10000C7E0();
    LOBYTE(v12) = 13;
    sub_10000C7E0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100006BCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_100009D1C(&qword_100014448, &qword_10000CED0);
  v4 = __chkstk_darwin(v3 - 8);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v70 = &v64 - v7;
  __chkstk_darwin(v6);
  v71 = &v64 - v8;
  v9 = sub_10000C3A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C140();
  v72 = *(v12 - 8);
  v73 = v12;
  __chkstk_darwin(v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100009D1C(&qword_1000145C0, &qword_10000CFA8);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v16 = &v64 - v15;
  v17 = type metadata accessor for ExtractedOrderSnapshot(0);
  v18 = __chkstk_darwin(v17);
  v20 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v10 + 56);
  v83 = *(v18 + 36);
  v21(v20 + v83, 1, 1, v9);
  v82 = *(v17 + 44);
  v21(v20 + v82, 1, 1, v9);
  v80 = *(v17 + 60);
  v81 = v20;
  v21(v20 + v80, 1, 1, v9);
  v22 = a1[3];
  v79 = a1;
  sub_10000AC28(a1, v22);
  sub_10000B6E8();
  v76 = v16;
  v23 = v78;
  sub_10000C890();
  if (v23)
  {
    v27 = v81;
    sub_10000ACA4(v79);
LABEL_4:
    sub_10000B7F0(v27 + v83, &qword_100014448, &qword_10000CED0);
    sub_10000B7F0(v27 + v82, &qword_100014448, &qword_10000CED0);

    sub_10000B7F0(v27 + v80, &qword_100014448, &qword_10000CED0);
  }

  v24 = v74;
  v78 = v17;
  v66 = v10;
  v67 = v9;
  LOBYTE(v85) = 0;
  v25 = sub_10000C7B0();
  v27 = v81;
  *v81 = v25;
  v27[1] = v28;
  LOBYTE(v85) = 1;
  sub_10000B904(&qword_1000145C8, &type metadata accessor for ExtractedOrder, &protocol conformance descriptor for ExtractedOrder);
  v29 = v73;
  sub_10000C7D0();
  v30 = v78;
  (*(v72 + 32))(v27 + v78[5], v14, v29);
  LOBYTE(v85) = 2;
  v31 = sub_10000B904(&qword_1000145D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v32 = v67;
  sub_10000C7D0();
  v64 = v31;
  v65 = 0;
  (*(v66 + 32))(v27 + v30[6], v24, v32);
  sub_100009D1C(&qword_1000145A8, &qword_10000CFA0);
  v84[0] = 3;
  sub_10000B850();
  sub_10000C7D0();
  v33 = v75;
  v34 = v32;
  *(v27 + v30[7]) = v85;
  LOBYTE(v85) = 4;
  *(v27 + MEMORY[0x20]) = sub_10000C7C0() & 1;
  LOBYTE(v85) = 5;
  v35 = v71;
  sub_10000C7A0();
  sub_10000B034(v35, v27 + v83);
  LOBYTE(v85) = 6;
  *(v27 + v78[10]) = sub_10000C7C0() & 1;
  LOBYTE(v85) = 7;
  v37 = v70;
  v38 = v76;
  sub_10000C7A0();
  v74 = 0;
  v39 = v65;
  sub_10000B034(v37, v27 + v82);
  LOBYTE(v85) = 8;
  v40 = v74;
  v41 = sub_10000C790();
  v74 = v40;
  if (v40)
  {
    (*(v33 + 8))(v38, v77);
    goto LABEL_6;
  }

  v43 = (v27 + v78[12]);
  *v43 = v41;
  v43[1] = v42;
  LOBYTE(v85) = 9;
  v44 = v74;
  v45 = sub_10000C790();
  v74 = v44;
  if (v44)
  {
    (*(v75 + 8))(v76, v77);
    v34 = v67;
    v27 = v81;
    v39 = v65;
LABEL_6:
    sub_10000ACA4(v79);

    v36 = v78;
    if (v39)
    {
LABEL_7:
      (*(v66 + 8))(v27 + v36[6], v34);

      goto LABEL_4;
    }

LABEL_8:
    (*(v72 + 8))(v27 + v36[5], v73);
    goto LABEL_7;
  }

  v47 = (v81 + v78[13]);
  *v47 = v45;
  v47[1] = v46;
  LOBYTE(v85) = 10;
  v48 = v74;
  v49 = sub_10000C790();
  v74 = v48;
  if (v48 || (v51 = (v81 + v78[14]), *v51 = v49, v51[1] = v50, LOBYTE(v85) = 11, v52 = v74, sub_10000C7A0(), (v74 = v52) != 0) || (sub_10000B034(v69, v81 + v80), LOBYTE(v85) = 12, v53 = v74, v54 = sub_10000C790(), (v74 = v53) != 0) || (v56 = (v81 + v78[16]), *v56 = v54, v56[1] = v55, LOBYTE(v85) = 13, v57 = v74, v58 = sub_10000C790(), (v74 = v57) != 0))
  {
    (*(v75 + 8))(v76, v77);
    sub_10000ACA4(v79);
    v27 = v81;

    v34 = v67;
    v36 = v78;
    goto LABEL_8;
  }

  v60 = v58;
  v61 = v59;
  v62 = v81;
  v63 = (v81 + v78[17]);
  (*(v75 + 8))(v76, v77);
  *v63 = v60;
  v63[1] = v61;
  sub_10000B94C(v62, v68);
  sub_10000ACA4(v79);
  return sub_10000B9B0(v62);
}

void *sub_100007684(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009D1C(a5, a6);
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

char *sub_100007860(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009D1C(&qword_1000143D8, &qword_10000CEA0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10000796C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007A58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000798C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007B68(a1, a2, a3, *v3, &qword_100014490, &qword_10000CF08, type metadata accessor for ExtractedOrderSnapshot);
  *v3 = result;
  return result;
}

void *sub_1000079D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007B68(a1, a2, a3, *v3, &qword_100014460, &qword_10000CEE8, &type metadata accessor for FoundInMailItem);
  *v3 = result;
  return result;
}

void *sub_100007A14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007B68(a1, a2, a3, *v3, &qword_100014488, &qword_10000CF00, &type metadata accessor for FoundInMailItem.OrderDetails);
  *v3 = result;
  return result;
}

char *sub_100007A58(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009D1C(&qword_1000142D8, &qword_10000CE50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100007B68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009D1C(a5, a6);
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

unint64_t sub_100007D44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C680(*(v2 + 40));

  return sub_100007E00(a1, v4);
}

unint64_t sub_100007D88(uint64_t a1, uint64_t a2)
{
  sub_10000C860();
  sub_10000C500();
  v4 = sub_10000C880();

  return sub_100007EC8(a1, a2, v4);
}

unint64_t sub_100007E00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000AB78(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10000C690();
      sub_10000ABD4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100007EC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000C830())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100007F80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10000C150();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
  v33 = a2;
  v11 = sub_10000C490();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10000B904(&qword_100014470, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
      v21 = sub_10000C4A0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000089CC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1000082AC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_10000C150();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100009D1C(&qword_100014478, &qword_10000CEF0);
  result = sub_10000C6C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
      result = sub_10000C490();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t *sub_100008608(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10000A160(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1000086A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_10000C150();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100009D1C(&qword_100014478, &qword_10000CEF0);
  result = sub_10000C6D0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
    result = sub_10000C490();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000089CC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_10000C150();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000082AC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100008C70();
      goto LABEL_12;
    }

    sub_100008EA8(v10 + 1);
  }

  v12 = *v3;
  sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
  v13 = sub_10000C490();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10000B904(&qword_100014470, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
      v21 = sub_10000C4A0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10000C840();
  __break(1u);
  return result;
}

void *sub_100008C70()
{
  v1 = v0;
  v2 = sub_10000C150();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009D1C(&qword_100014478, &qword_10000CEF0);
  v6 = *v0;
  v7 = sub_10000C6B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100008EA8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_10000C150();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100009D1C(&qword_100014478, &qword_10000CEF0);
  v7 = sub_10000C6C0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
      result = sub_10000C490();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1000091C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009D1C(&qword_1000143C8, &qword_10000CE90);
  v34 = v4;
  result = sub_10000C770();
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

      sub_10000C860();
      sub_10000C500();
      result = sub_10000C880();
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

uint64_t sub_10000946C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000C600() + 1) & ~v5;
    do
    {
      sub_10000C860();

      sub_10000C500();
      v9 = sub_10000C880();

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

uint64_t sub_10000961C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100007D88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000091C4(v16, a4 & 1);
      v11 = sub_100007D88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_10000C850();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100009798();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_100009798()
{
  v1 = v0;
  sub_100009D1C(&qword_1000143C8, &qword_10000CE90);
  v2 = *v0;
  v3 = sub_10000C760();
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

void sub_100009908(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_10000C660();
      sub_10000C260();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000C260();
    if (sub_10000C630() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_10000C640();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_10000C5A0(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_10000C5B0();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100009B08(uint64_t a1)
{
  v2 = sub_10000C450();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_9;
  }

  v12[1] = 0xD00000000000002DLL;
  v12[2] = 0x800000010000D250;
  sub_10000C6A0();
  if (!*(a1 + 16) || (v6 = sub_100007D44(v13), (v7 & 1) == 0))
  {
    sub_10000ABD4(v13);
LABEL_9:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_10;
  }

  sub_10000B164(*(a1 + 56) + 32 * v6, &v14);
  sub_10000ABD4(v13);
  if (!*(&v15 + 1))
  {
LABEL_10:
    sub_10000B7F0(&v14, &qword_1000144C0, &qword_10000CF28);
    goto LABEL_11;
  }

  if (swift_dynamicCast() && (v13[0] & 1) != 0)
  {
    return 1;
  }

LABEL_11:
  sub_10000C430();
  v9 = sub_10000C440();
  v10 = sub_10000C560();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "User did not give consent", v11, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_100009D1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_100009D64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100009D98()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100009DD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009D1C(&qword_1000143C8, &qword_10000CE90);
    v3 = sub_10000C780();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100007D88(v5, v6);
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

uint64_t sub_100009EEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009F04()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009F70(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100009FC4(uint64_t a1)
{
  v2 = sub_10000C150();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
  result = sub_10000C540();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100007F80(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10000A160(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a2;
  v37 = a1;
  v6 = sub_10000C150();
  v7 = __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v49 = &v36 - v12;
  v13 = 0;
  v42 = v11;
  v43 = a3;
  v14 = *(a3 + 56);
  v38 = a3 + 56;
  v39 = 0;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v47 = v11 + 16;
  v48 = a4;
  v45 = a4 + 7;
  v19 = (v11 + 8);
  v41 = v18;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v44 = (v17 - 1) & v17;
LABEL_13:
    v23 = v20 | (v13 << 6);
    v24 = *(v43 + 48);
    v25 = *(v42 + 72);
    v40 = v23;
    v46 = v25;
    v26 = *(v42 + 16);
    v26(v49, v24 + v25 * v23, v6);
    if (v48[2] && (v27 = v48, sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails), v28 = sub_10000C490(), v29 = -1 << *(v27 + 32), v30 = v28 & ~v29, ((*(v45 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
    {
      v31 = ~v29;
      while (1)
      {
        v26(v9, v48[6] + v30 * v46, v6);
        sub_10000B904(&qword_100014470, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
        v32 = sub_10000C4A0();
        v33 = *v19;
        (*v19)(v9, v6);
        if (v32)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v45 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = v33(v49, v6);
      *(v37 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      v34 = __OFADD__(v39++, 1);
      v18 = v41;
      v17 = v44;
      if (v34)
      {
        __break(1u);
LABEL_22:
        v35 = v43;

        return sub_1000086A4(v37, v36, v39, v35);
      }
    }

    else
    {
LABEL_5:
      result = (*v19)(v49, v6);
      v18 = v41;
      v17 = v44;
    }
  }

  v21 = v13;
  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_22;
    }

    v22 = *(v38 + 8 * v13);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A50C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C150();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v49 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v38 - v10;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = (8 * v13);

  if (v12 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v37 = swift_slowAlloc();

      v35 = sub_100008608(v37, v13, a1, a2);

      return v35;
    }
  }

  v39 = v13;
  v40 = v3;
  v38 = &v38;
  __chkstk_darwin(v15);
  v41 = &v38 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v41, v14);
  v16 = 0;
  v17 = 0;
  v46 = v7;
  v47 = a1;
  v19 = *(a1 + 56);
  a1 += 56;
  v18 = v19;
  v42 = a1;
  v20 = 1 << *(a1 - 24);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v50 = a2 + 56;
  v52 = (v7 + 8);
  v53 = v7 + 16;
  v45 = v23;
  while (2)
  {
    v43 = v16;
    while (1)
    {
      v24 = v47;
      if (!v22)
      {
        v26 = v17;
        while (1)
        {
          v17 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v17 >= v23)
          {
            goto LABEL_24;
          }

          v27 = *(v42 + 8 * v17);
          ++v26;
          if (v27)
          {
            v25 = __clz(__rbit64(v27));
            v48 = (v27 - 1) & v27;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v25 = __clz(__rbit64(v22));
      v48 = (v22 - 1) & v22;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v47 + 48);
      v30 = *(v46 + 72);
      v44 = v28;
      v51 = v30;
      v14 = *(v46 + 16);
      v14(v54, v29 + v30 * v28, v6);
      if (*(a2 + 16))
      {
        sub_10000B904(&qword_100014468, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
        v7 = v54;
        v31 = sub_10000C490();
        v32 = -1 << *(a2 + 32);
        v13 = v31 & ~v32;
        if ((*(v50 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          break;
        }
      }

LABEL_7:
      (*v52)(v54, v6);
      v23 = v45;
      v22 = v48;
    }

    a1 = ~v32;
    while (1)
    {
      v33 = a2;
      v3 = v49;
      v14(v49, *(a2 + 48) + v13 * v51, v6);
      sub_10000B904(&qword_100014470, &type metadata accessor for FoundInMailItem.OrderDetails, &protocol conformance descriptor for FoundInMailItem.OrderDetails);
      v7 = sub_10000C4A0();
      v34 = *v52;
      (*v52)(v3, v6);
      if (v7)
      {
        break;
      }

      v13 = (v13 + 1) & a1;
      a2 = v33;
      if (((*(v50 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v34(v54, v6);
    v23 = v45;
    *&v41[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
    v16 = v43 + 1;
    a2 = v33;
    v22 = v48;
    if (!__OFADD__(v43, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v35 = sub_1000086A4(v41, v39, v43, v24);

  return v35;
}

unint64_t sub_10000A9EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009D1C(&qword_1000143D0, &qword_10000CE98);
    v3 = sub_10000C780();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000AB08(v4, v13);
      result = sub_100007D44(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100009D64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_10000AB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009D1C(&qword_1000143C0, &qword_10000CE88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10000AC28(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000ACA4(void *a1)
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

uint64_t sub_10000ACF0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009F70(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for ExtractedOrderSnapshot(uint64_t a1)
{
  result = qword_100014650;
  if (!qword_100014650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000ADC0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000AE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000AE6C()
{
  result = qword_100014428;
  if (!qword_100014428)
  {
    sub_10000AED0(&qword_100014420, &qword_10000CEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014428);
  }

  return result;
}

uint64_t sub_10000AED0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000AF18()
{
  result = qword_100014438;
  if (!qword_100014438)
  {
    sub_10000AED0(&qword_100014430, &qword_10000CEC8);
    sub_10000B904(&qword_100014440, type metadata accessor for ExtractedOrderSnapshot, &unk_10000CF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014438);
  }

  return result;
}

uint64_t sub_10000AFCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009D1C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B034(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009D1C(&qword_100014448, &qword_10000CED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B0A4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_10000B0B0()
{
  result = qword_1000144A8;
  if (!qword_1000144A8)
  {
    sub_10000AED0(&qword_1000144A0, &qword_10000CF18);
    sub_10000B904(&qword_1000144B0, &type metadata accessor for CascadeExtractedOrder, &protocol conformance descriptor for CascadeExtractedOrder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144A8);
  }

  return result;
}

uint64_t sub_10000B164(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B1D4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_10000C140();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10000C3A0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_100009D1C(&qword_100014448, &qword_10000CED0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_10000B360(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_10000C140();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10000C3A0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_100009D1C(&qword_100014448, &qword_10000CED0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_10000B4D8(uint64_t a1)
{
  sub_10000C140();
  if (v1 <= 0x3F)
  {
    sub_10000C3A0();
    if (v2 <= 0x3F)
    {
      sub_10000B634(319, &qword_100014520, &type metadata accessor for FoundInMailItem, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_10000B634(319, &qword_100014528, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10000B698();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000B634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10000B698()
{
  if (!qword_100014530)
  {
    v0 = sub_10000C5C0();
    if (!v1)
    {
      atomic_store(v0, &qword_100014530);
    }
  }
}

unint64_t sub_10000B6E8()
{
  result = qword_100014760[0];
  if (!qword_100014760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014760);
  }

  return result;
}

unint64_t sub_10000B73C()
{
  result = qword_1000145B0;
  if (!qword_1000145B0)
  {
    sub_10000AED0(&qword_1000145A8, &qword_10000CFA0);
    sub_10000B904(&qword_1000145B8, &type metadata accessor for FoundInMailItem, &protocol conformance descriptor for FoundInMailItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145B0);
  }

  return result;
}

uint64_t sub_10000B7F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009D1C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000B850()
{
  result = qword_1000145D8;
  if (!qword_1000145D8)
  {
    sub_10000AED0(&qword_1000145A8, &qword_10000CFA0);
    sub_10000B904(&unk_1000145E0, &type metadata accessor for FoundInMailItem, &protocol conformance descriptor for FoundInMailItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145D8);
  }

  return result;
}

uint64_t sub_10000B904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000B94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B9B0(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedOrderSnapshot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ExtractedOrderSnapshot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractedOrderSnapshot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000BB84()
{
  result = qword_100014870[0];
  if (!qword_100014870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014870);
  }

  return result;
}

unint64_t sub_10000BBDC()
{
  result = qword_100014980;
  if (!qword_100014980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014980);
  }

  return result;
}

unint64_t sub_10000BC34()
{
  result = qword_100014988[0];
  if (!qword_100014988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014988);
  }

  return result;
}

uint64_t sub_10000BC88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000010000D280 == a2;
  if (v3 || (sub_10000C830() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F43726564726FLL && a2 == 0xEC000000746E6574 || (sub_10000C830() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000010000D2A0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6574496C69616DLL && a2 == 0xE900000000000073 || (sub_10000C830() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010000D2C0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x800000010000D2E0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000D310 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000024 && 0x800000010000D330 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010000D360 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010000D380 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000D3A0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010000D3C0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010000D3E0 == a2 || (sub_10000C830() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010000D400 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_10000C830();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}