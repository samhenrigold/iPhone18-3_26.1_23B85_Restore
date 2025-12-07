uint64_t sub_1001A4B7C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = __chkstk_darwin(a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_1001F6BA8();
  *a3 = result;
  a3[1] = v8;
  return result;
}

Swift::Int sub_1001A4C4C(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = (2 * result) | 1;
  v10 = Heap.rightIndex(_:)(result);
  if (v9 >= _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0())
  {
    goto LABEL_7;
  }

  result = sub_1001A4C4C(v9, a2, a3, a4, a5);
  v12 = result + v11;
  if (__OFADD__(result, v11))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12 + a3;
  if (!__OFADD__(v12, a3))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v13 = 0;
LABEL_8:
  if (v10 >= _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0())
  {
    return v13;
  }

  result = sub_1001A4C4C(v10, a2, a3, a4, a5);
  if (!__OFADD__(result, v14))
  {
    if (__OFADD__(result + v14, a3))
    {
      __break(1u);
    }

    return v13;
  }

LABEL_16:
  __break(1u);
  return result;
}

void HeapIterator.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Heap(0, *(a1 + 16), *(a1 + 24), a4);

  Heap.removeRoot()(v4);
}

uint64_t sub_1001A4E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001A4E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001A4EF4()
{

  return _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
}

uint64_t sub_1001A4F34()
{

  return sub_1001F6A78();
}

uint64_t sub_1001A4F54(uint64_t a1)
{

  return _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
}

void sub_1001A4F6C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_10013B560();
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_1001F7808();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_1001A5058(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A3B8;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A50AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580578 && a2 == 0xE300000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E726566666FLL && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001A517C(char a1)
{
  if (a1)
  {
    return 0x6D614E726566666FLL;
  }

  else
  {
    return 6580578;
  }
}

uint64_t sub_1001A51B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1000183C4(&qword_1002BB0A0, &qword_100215CD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_1001A74BC();
  sub_1001F8198();
  v14 = 0;
  sub_1001F7D88();
  if (!v5)
  {
    v13 = 1;
    sub_1001F7D88();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1001A5328(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BB090, &qword_100215CC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10001AE68(a1, a1[3]);
  sub_1001A74BC();
  sub_1001F8178();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1001F7C78();
    v10 = 1;
    sub_1001F7C78();
    (*(v4 + 8))(v6, v3);
  }

  sub_100019CCC(a1);
  return v7;
}

uint64_t sub_1001A5514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A50AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001A553C(uint64_t a1)
{
  v2 = sub_1001A74BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5578(uint64_t a1)
{
  v2 = sub_1001A74BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A55B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001A5328(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_1001A5604(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001EA8E8();
  v5 = sub_1001F10F8(0x6E6F69746361, 0xE600000000000000, v4);
  v7 = v6;

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = sub_1001A5058(v8, v9);
  if (v10 == 2)
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v11 = sub_1001F6688();
    sub_100019C94(v11, qword_1002E6180);
    v12 = sub_1001F6668();
    v13 = sub_1001F7298();
    if (sub_1001A771C(v13))
    {
      v14 = sub_10003A87C();
      sub_1001A7798(v14);
      sub_1001A7778(&_mh_execute_header, v15, v16, "Invalid action");
      sub_1001A77A4();
    }

    sub_1000B738C(0x2064696C61766E49, 0xEE006E6F69746361, 6, v24);
    v17 = type metadata accessor for HTTPResponseHead._Storage();
    v18 = sub_100021728(v17);
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    v19 = sub_10002170C(v18, 21);
    v22 = 2;
    v23 = _swiftEmptyArrayStorage;
  }

  else
  {
    if (v10)
    {
      sub_1001A6044(v24, a1);
    }

    else
    {
      sub_1001A57CC(a1);
    }

    v20 = v27;
    v21 = v26;
    v23 = v24[1];
    v19 = v24[0];
    v22 = v25;
  }

  *a2 = v19;
  *(a2 + 8) = v23;
  *(a2 + 16) = v22;
  sub_1001A7738(v20, v21);
}

__n128 sub_1001A57CC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1001F0068(__src);
  memcpy(__dst, __src, 0x379uLL);
  if (sub_1000AC5DC(__dst) != 1)
  {
    v7 = *(v4 + 48);

    sub_1000E32F8(v7, v82);
    memcpy(v80, v82, 0x139uLL);
    debugOnly(_:)();
    memcpy(v81, &__src[72], 0x139uLL);
    sub_10004BDE8(v81, &qword_1002ADF78, &qword_1002011D0);
    memcpy(&__src[72], v80, 0x139uLL);
  }

  memcpy(v81, __src, 0x379uLL);
  v8 = _swiftEmptyArrayStorage;
  if (sub_1000AC5DC(v81) != 1)
  {
    v9 = v81[18];
    if (v81[18])
    {
      v67 = v6;
      v68 = v4;
      v10 = v81[17];
      v70 = v2;
      sub_10001AE68((v2 + 88), *(v2 + 112));
      v64 = v81[9];
      v65 = v81[8];
      v11 = sub_10008E918(v81[8], v81[9]);
      v80[0] = _swiftEmptyArrayStorage;
      v12 = sub_10013B560();
      v6 = 0;
      v8 = (v11 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v12 == v6)
        {

          v80[0] = sub_1001A71F4(v31);
          sub_1001A6634(v80);

          v32 = v80[0];
          v6 = sub_10013B560();
          v33 = 0;
          v8 = (v32 & 0xC000000000000001);
          while (v6 != v33)
          {
            if (v8)
            {
              v34 = sub_1001F7808();
            }

            else
            {
              if (v33 >= *(v32 + 16))
              {
                goto LABEL_57;
              }

              v34 = *(v32 + 8 * v33 + 32);
            }

            v35 = v34;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_56;
            }

            if (sub_1000C43D8() == 4)
            {

              v39 = v35;
              sub_1000C23D8(1u);
              sub_100056A98(1, &v84);
              v40 = v87;
              v41 = v88;
              v42 = v90;
              v43 = v91;
              v44 = v92;
              memcpy(v80, &v81[72], 0x139uLL);
              if (sub_1000AC6F8(v80) == 1)
              {
                v6 = v67;
                v8 = _swiftEmptyArrayStorage;
LABEL_53:
                sub_10001AE68((v70 + 88), *(v70 + 112));
                sub_10008EA08(v39, 1);
                v82[0] = v84;
                v82[1] = v85;
                v82[2] = v86;
                *&v82[3] = v40;
                BYTE8(v82[3]) = v41;
                *(&v82[3] + 9) = *v89;
                HIDWORD(v82[3]) = *&v89[3];
                *&v82[4] = v42;
                *(&v82[4] + 1) = v43;
                *&v82[5] = v44;
                memcpy(&v82[5] + 8, v93, 0x79uLL);
                sub_1001A7288(v94, v82, v68);
                v69 = v94[0];
                v71 = v94[1];
                v60 = v39;
                v61 = v43;
                v27 = v95 | ((v96 | (v97 << 16)) << 32);

                v62 = type metadata accessor for HTTPResponseHead._Storage();
                v29 = sub_100021728(v62);
                *(v29 + 16) = 0;
                *(v29 + 24) = 0;
                sub_10002170C(v29, 3);
                v72[0] = v84;
                v72[1] = v85;
                v72[2] = v86;
                v73 = v40;
                v74 = v41;
                *v75 = *v89;
                *&v75[3] = *&v89[3];
                v76 = v42;
                v77 = v61;
                v78 = v44;
                memcpy(v79, v93, 0x79uLL);
                sub_100057E48(v72);
                goto LABEL_26;
              }

              v8 = _swiftEmptyArrayStorage;
              if (LOBYTE(v80[39]) == 1)
              {

                goto LABEL_45;
              }

              v45 = sub_1001F7EA8();

              if (v45)
              {
LABEL_45:
                v46 = v81[63];
                if (v81[63])
                {
                  v47 = v81[62];
                  v98 = v42;
                  sub_1000183C4(&qword_1002AC7E8, &qword_100200A10);
                  v66 = v44;
                  v48 = *(type metadata accessor for IAPTransaction(0) - 8);
                  v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
                  v42 = swift_allocObject();
                  *(v42 + 16) = xmmword_1001FE9E0;
                  v50 = swift_allocObject();
                  v50[2] = v70;
                  v50[3] = v47;
                  v8 = _swiftEmptyArrayStorage;
                  v50[4] = v46;
                  v51 = v39;

                  v52 = v50;
                  v44 = v66;
                  sub_1001D4DFC(v51, sub_1001A74A0, v52, v42 + v49);
                  sub_10004BDE8(&v98, &qword_1002AFDB8, &qword_1002049E8);
                  v41 = 0;
                  v40 = *(v42 + 16);
                  v79[136] = 0;
LABEL_52:
                  v6 = v67;
                  goto LABEL_53;
                }
              }

              if (v81[111] & 1) == 0 || (sub_1001F7EA8())
              {
                v53 = v81[11];
                if (v81[11])
                {
                  v54 = v81[49];
                  if (v81[49])
                  {
                    v55 = v81[10];
                    v63 = v81[48];
                    sub_10001AE68((v70 + 88), *(v70 + 112));

                    sub_10008D944(v65, v64, v55, v53, v63, v54);
                    v57 = v56;
                    v59 = v58;

                    sub_10003A36C(v43, v44);
                    v43 = v57;
                    v44 = v59;
                  }
                }
              }

              goto LABEL_52;
            }

            ++v33;
          }

          if (qword_1002AC510 != -1)
          {
            sub_10001B230(&qword_1002AC510);
          }

          v36 = sub_1001F6688();
          sub_100019C94(v36, qword_1002E6180);
          v19 = sub_1001F6668();
          v37 = sub_1001F7298();
          v6 = v67;
          v8 = _swiftEmptyArrayStorage;
          if (sub_1001A771C(v37))
          {
            v38 = sub_10003A87C();
            sub_1001A7798(v38);
            v24 = "Failed to find latest deferred transaction to confirm in-app buy request";
            goto LABEL_24;
          }

          goto LABEL_25;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v13 = sub_1001F7808();
        }

        else
        {
          if (v6 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v13 = *(v11 + 8 * v6 + 32);
        }

        v14 = v13;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        if (sub_1000BFC14() == v10 && v9 == v15)
        {
        }

        else
        {
          v17 = sub_1001F7EA8();

          if ((v17 & 1) == 0)
          {

            goto LABEL_19;
          }
        }

        sub_1001F7878();
        sub_1001F7908();
        sub_1001F7918();
        sub_1001F7898();
LABEL_19:
        ++v6;
      }
    }
  }

  if (qword_1002AC510 != -1)
  {
LABEL_58:
    sub_10001B230(&qword_1002AC510);
  }

  v18 = sub_1001F6688();
  sub_100019C94(v18, qword_1002E6180);
  v19 = sub_1001F6668();
  v20 = sub_1001F7298();
  if (sub_1001A771C(v20))
  {
    v21 = sub_10003A87C();
    sub_1001A7798(v21);
    v24 = "Failed to decode in-app buy request";
LABEL_24:
    sub_1001A7778(&_mh_execute_header, v22, v23, v24);
    sub_1001A77A4();
  }

LABEL_25:

  v25 = sub_1001A7758();
  sub_1000B738C(v25, v26, 6, v82);
  v69 = v82[0];
  v71 = v82[1];
  v27 = LODWORD(v82[2]) | ((WORD2(v82[2]) | (BYTE6(v82[2]) << 16)) << 32);
  v28 = type metadata accessor for HTTPResponseHead._Storage();
  v29 = sub_100021728(v28);
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  sub_10002170C(v29, 21);
LABEL_26:
  memcpy(v80, __src, 0x379uLL);
  sub_10004BDE8(v80, &qword_1002B23A0, &unk_100208790);
  *v6 = v29;
  *(v6 + 8) = v8;
  *(v6 + 16) = 2;
  result = v69;
  *(v6 + 40) = v71;
  *(v6 + 24) = v69;
  *(v6 + 62) = BYTE6(v27);
  *(v6 + 60) = WORD2(v27);
  *(v6 + 56) = v27;
  return result;
}

void sub_1001A6044(unint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v6 = sub_1001F0EDC();
  v10 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v46 = a1;
    v45 = v3;
    sub_10001AE68((v3 + 88), *(v3 + 112));
    v15 = sub_10008E918(v11, v12);
    *&__dst[0] = _swiftEmptyArrayStorage;
    v16 = sub_10013B560();
    v17 = 0;
    a1 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v16 == v17)
      {

        *&__dst[0] = sub_1001A71F4(v22);
        sub_1001A6634(__dst);

        v23 = *&__dst[0];
        v24 = sub_10013B560();
        v25 = 0;
        a1 = v23 & 0xC000000000000001;
        v10 = _swiftEmptyArrayStorage;
        while (v24 != v25)
        {
          if (a1)
          {
            v26 = sub_1001F7808();
          }

          else
          {
            if (v25 >= *(v23 + 16))
            {
              goto LABEL_41;
            }

            v26 = *(v23 + 8 * v25 + 32);
          }

          v27 = v26;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_40;
          }

          if (sub_1000C43D8() == 4)
          {

            sub_1000C23D8(2u);
            sub_10001AE68((v45 + 88), *(v45 + 112));
            sub_10008EA08(v27, 1);
            sub_100056A98(0, __src);
            memcpy(__dst, __src, sizeof(__dst));
            v56 = 7;
            *v57 = *v53;
            *&v57[15] = *&v53[15];
            v58 = 1;
            sub_1001A7288(v54, __dst, a2);
            v47 = v54[0];
            v48 = v54[1];

            memcpy(v49, __src, 0xB0uLL);
            v49[176] = 7;
            *v50 = *v53;
            *&v50[15] = *&v53[15];
            v51 = 1;
            sub_100057E48(v49);
            v43 = type metadata accessor for HTTPResponseHead._Storage();
            v44 = sub_100021728(v43);
            *(v44 + 16) = 0;
            *(v44 + 24) = 0;
            v42 = sub_10002170C(v44, 3);
            a1 = v46;
            goto LABEL_37;
          }

          ++v25;
        }

        if (qword_1002AC510 != -1)
        {
          sub_10001B230(&qword_1002AC510);
        }

        v35 = sub_1001F6688();
        sub_100019C94(v35, qword_1002E6180);
        v29 = sub_1001F6668();
        v36 = sub_1001F7298();
        a1 = v46;
        if (sub_1001A771C(v36))
        {
          v37 = sub_10003A87C();
          sub_1001A7798(v37);
          v34 = "Failed to find latest deferred transaction to cancel in-app buy request";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (a1)
      {
        v18 = sub_1001F7808();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (sub_1000BFC14() == v13 && v14 == v20)
      {
      }

      else
      {
        v10 = sub_1001F7EA8();

        if ((v10 & 1) == 0)
        {

          goto LABEL_16;
        }
      }

      sub_1001F7878();
      v10 = *(*&__dst[0] + 16);
      sub_1001F7908();
      sub_1001F7918();
      sub_1001F7898();
LABEL_16:
      ++v17;
    }
  }

  if (qword_1002AC510 != -1)
  {
LABEL_42:
    sub_10001B230(&qword_1002AC510);
  }

  v28 = sub_1001F6688();
  sub_100019C94(v28, qword_1002E6180);
  v29 = sub_1001F6668();
  v30 = sub_1001F7298();
  if (sub_1001A771C(v30))
  {
    v31 = sub_10003A87C();
    sub_1001A7798(v31);
    v34 = "Failed to decode cancel purchase request";
LABEL_34:
    sub_1001A7778(&_mh_execute_header, v32, v33, v34);
    sub_1001A77A4();
  }

LABEL_35:

  v38 = sub_1001A7758();
  sub_1000B738C(v38, v39, 6, __dst);
  v47 = __dst[0];
  v48 = __dst[1];
  v40 = type metadata accessor for HTTPResponseHead._Storage();
  v41 = sub_100021728(v40);
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v42 = sub_10002170C(v41, 21);
LABEL_37:
  *a1 = v42;
  *(a1 + 8) = v10;
  *(a1 + 16) = 2;
  sub_1001A7738(v48, v47);
}

uint64_t sub_1001A64E0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CheddarTransaction(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000BFC24();
  v13 = v12;
  sub_10001AE68(a2 + 6, a2[9]);
  v19 = sub_10007A214(2uLL, v11, v13, v14, v15, v16, v17, v18);
  LOBYTE(v11) = v20;

  v21 = a1;

  sub_100140370(v21, a3, a4, v19, v11 & 1, v10);
  sub_10001AE68(a2 + 11, a2[14]);
  sub_1000B033C(v10, v19, v11 & 1);
  return sub_100143B5C(v10);
}

uint64_t sub_1001A6634(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100112884(v2, v4, v5, v6);
    *a1 = v2;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  sub_1001A66B0(v9);
  return sub_1001F7898();
}

void sub_1001A66B0(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1001F7E08(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1001F2D8C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1001A6878(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1001A6790(0, v3, 1, a1);
  }
}

void sub_1001A6790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        v14 = sub_1000BFDA8();
        v15 = sub_1000BFDA8();

        if (v15 >= v14)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v16 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v16;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1001A6878(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_91:
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v8 = v104;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v90 = (v7 + 16);
      v91 = *(v7 + 16);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v92 = v7;
        v93 = (v7 + 16 * v91);
        v94 = *v93;
        v95 = &v90[2 * v91];
        v7 = v95[1];
        sub_1001A6EA0((*a3 + 8 * *v93), (*a3 + 8 * *v95), (*a3 + 8 * v7), v102);
        if (v8)
        {
          break;
        }

        if (v7 < v94)
        {
          goto LABEL_117;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_118;
        }

        *v93 = v94;
        v93[1] = v7;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_119;
        }

        v91 = *v90 - 1;
        memmove(v95, v95 + 2, 16 * v96);
        *v90 = v91;
        v7 = v92;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v7 = sub_1001A70B4(v7);
    goto LABEL_93;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v10 = (*a3 + 8 * v6);
      v11 = 8 * v6;
      v13 = *v10;
      v12 = v10 + 2;
      v14 = v6 + 1;
      v15 = *(*a3 + 8 * v9);
      v16 = v13;
      sub_1001A77C0();
      v17 = sub_1001A77D8();

      v9 = v14;
      v99 = v8;
      v18 = v8 + 2;
      while (1)
      {
        v19 = v18;
        v20 = v9 + 1;
        if (v20 >= v5)
        {
          break;
        }

        v21 = *(v12 - 1);
        v22 = v20;
        v23 = *v12;
        v24 = v21;
        v25 = sub_1001A77C0();
        v26 = sub_1000BFDA8();

        v9 = v22;
        ++v12;
        v18 = v19 + 1;
        if (v17 < v4 == v26 >= v25)
        {
          goto LABEL_9;
        }
      }

      v9 = v5;
LABEL_9:
      if (v17 >= v4)
      {
        v8 = v99;
      }

      else
      {
        v8 = v99;
        if (v9 < v99)
        {
          goto LABEL_123;
        }

        if (v99 < v9)
        {
          if (v5 >= v19)
          {
            v27 = v19;
          }

          else
          {
            v27 = v5;
          }

          v28 = 8 * v27 - 8;
          v29 = v9;
          v30 = v99;
          do
          {
            if (v30 != --v29)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v32 = *(v31 + v11);
              *(v31 + v11) = *(v31 + v28);
              *(v31 + v28) = v32;
            }

            ++v30;
            v28 -= 8;
            v11 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = a3[1];
    if (v9 < v33)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_122;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_38:
    if (v9 < v8)
    {
      goto LABEL_121;
    }

    v101 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032508();
      v7 = v88;
    }

    v48 = *(v7 + 16);
    v49 = v48 + 1;
    if (v48 >= *(v7 + 24) >> 1)
    {
      sub_100032508();
      v7 = v89;
    }

    *(v7 + 16) = v49;
    v50 = v7 + 32;
    v51 = (v7 + 32 + 16 * v48);
    *v51 = v8;
    v51[1] = v101;
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        v53 = (v50 + 16 * (v49 - 1));
        v54 = (v7 + 16 * v49);
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v7 + 32);
          v56 = *(v7 + 40);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_58:
          if (v58)
          {
            goto LABEL_108;
          }

          v70 = *v54;
          v69 = v54[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_111;
          }

          v74 = v53[1];
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_116;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        if (v49 < 2)
        {
          goto LABEL_110;
        }

        v77 = *v54;
        v76 = v54[1];
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_73:
        if (v73)
        {
          goto LABEL_113;
        }

        v79 = *v53;
        v78 = v53[1];
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_115;
        }

        if (v80 < v72)
        {
          goto LABEL_87;
        }

LABEL_80:
        if (v52 - 1 >= v49)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v84 = v7;
        v85 = (v50 + 16 * (v52 - 1));
        v86 = *v85;
        v7 = v50 + 16 * v52;
        v87 = *(v7 + 8);
        sub_1001A6EA0((*a3 + 8 * *v85), (*a3 + 8 * *v7), (*a3 + 8 * v87), v102);
        if (v104)
        {
          goto LABEL_101;
        }

        if (v87 < v86)
        {
          goto LABEL_103;
        }

        v8 = *(v84 + 16);
        if (v52 > v8)
        {
          goto LABEL_104;
        }

        *v85 = v86;
        v85[1] = v87;
        if (v52 >= v8)
        {
          goto LABEL_105;
        }

        v49 = v8 - 1;
        memmove((v50 + 16 * v52), (v7 + 16), 16 * (v8 - 1 - v52));
        v7 = v84;
        *(v84 + 16) = v8 - 1;
        if (v8 <= 2)
        {
          goto LABEL_87;
        }
      }

      v59 = v50 + 16 * v49;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_106;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_107;
      }

      v66 = v54[1];
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_109;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_112;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = v53[1];
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_120;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

LABEL_87:
    v5 = a3[1];
    v6 = v101;
    if (v101 >= v5)
    {
      goto LABEL_91;
    }
  }

  v34 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_124;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v8)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v9 == v34)
  {
    goto LABEL_38;
  }

  v35 = *a3;
  v36 = *a3 + 8 * v9 - 8;
  v100 = v8;
  v102 = v34;
  v37 = v8 - v9;
LABEL_31:
  v38 = v9;
  v39 = *(v35 + 8 * v9);
  v40 = v37;
  v41 = v36;
  while (1)
  {
    v42 = *v41;
    v43 = v39;
    v44 = v42;
    sub_1001A77C0();
    v45 = sub_1001A77D8();

    if (v45 >= v4)
    {
LABEL_36:
      v9 = v38 + 1;
      v36 += 8;
      --v37;
      if ((v38 + 1) == v102)
      {
        v9 = v102;
        v8 = v100;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v35)
    {
      break;
    }

    v46 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v46;
    v41 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_1001A6EA0(void **a1, id *a2, id *a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    sub_1000375D8(a1, a2 - a1, a4);
    v11 = &v5[v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v13 = *v5;
      v14 = *v7;
      v15 = v13;
      sub_1001A77C0();
      v16 = sub_1001A77D8();

      if (v16 >= v4)
      {
        break;
      }

      v17 = v7;
      v18 = v8 == v7++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
    }

    v17 = v5;
    v18 = v8 == v5++;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  sub_1000375D8(a2, a3 - a2, a4);
  v11 = &v5[v10];
  v33 = v5;
LABEL_15:
  v19 = v7 - 1;
  --v6;
  while (v11 > v5 && v7 > v8)
  {
    v21 = v7;
    v22 = v8;
    v23 = v19;
    v24 = *v19;
    v25 = *(v11 - 1);
    v26 = v24;
    sub_1001A77C0();
    v27 = sub_1001A77D8();

    v28 = v6 + 1;
    if (v27 < v4)
    {
      v29 = v23;
      v7 = v23;
      v8 = v22;
      v5 = v33;
      if (v28 != v21)
      {
        *v6 = *v29;
        v7 = v29;
      }

      goto LABEL_15;
    }

    if (v11 != v28)
    {
      *v6 = *(v11 - 1);
    }

    --v6;
    --v11;
    v19 = v23;
    v8 = v22;
    v5 = v33;
  }

LABEL_28:
  v30 = v11 - v5;
  if (v7 != v5 || v7 >= &v5[v30])
  {
    memmove(v7, v5, 8 * v30);
  }

  return 1;
}

char *sub_1001A70C8(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1001A70F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADBD0, &unk_100200910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1001A71F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1001F7B48();
    if (v4)
    {
      v5 = v4;
      v2 = sub_10001A0B8(v4, 0);
      sub_100017F60(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

double sub_1001A7288@<D0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>)
{
  if (*(a3 + 8))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001F6198();
    swift_allocObject();
    sub_1001F6188();
    sub_1000581BC();
    v4 = sub_1001F6178();
    v6 = v5;

    v7 = 0xD000000000000017;
    v8 = 0x80000001002227B0;
    v9 = v4;
    v10 = v6;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001F5F08();
    swift_allocObject();
    sub_1001F5EF8();
    sub_1000581BC();
    v11 = sub_1001F5EE8();
    v13 = v12;

    v8 = 0x80000001002227E0;
    v9 = v11;
    v10 = v13;
    v7 = 0xD000000000000010;
  }

  sub_1000B77D0(v9, v10, v7, v8, __dst);
  v14 = *&__dst[16];
  v15 = *&__dst[32];
  v16 = *&__dst[36];
  v17 = __dst[38];
  *a1 = *__dst;
  a1[2] = v14;
  result = *&__dst[24];
  a1[3] = *&__dst[24];
  *(a1 + 8) = v15;
  *(a1 + 18) = v16;
  *(a1 + 38) = v17;
  return result;
}

uint64_t sub_1001A7460()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1001A74BC()
{
  result = qword_1002BB098;
  if (!qword_1002BB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB098);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfirmPurchaseEngagementHelperRoute.CancelRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001A75DCLL);
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

unint64_t sub_1001A7618()
{
  result = qword_1002BB0A8;
  if (!qword_1002BB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0A8);
  }

  return result;
}

unint64_t sub_1001A7670()
{
  result = qword_1002BB0B0;
  if (!qword_1002BB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0B0);
  }

  return result;
}

unint64_t sub_1001A76C8()
{
  result = qword_1002BB0B8;
  if (!qword_1002BB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0B8);
  }

  return result;
}

BOOL sub_1001A771C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1001A7738(__n128 a1, __n128 a2)
{
  *(v2 + 24) = a2;
  *(v2 + 40) = a1;
  *(v2 + 56) = v3;
  *(v2 + 62) = BYTE6(v3);
  *(v2 + 60) = WORD2(v3);
}

void sub_1001A7778(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1001A77A4()
{
}

double sub_1001A77C0()
{

  return sub_1000BFDA8();
}

double sub_1001A77D8()
{

  return sub_1000BFDA8();
}

uint64_t sub_1001A7800(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A7840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001A78A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000010022CFA0 == a2;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000010022CFC0 == a2;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000010022CFE0 == a2;
      if (v7 || (sub_1001F7EA8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000010022D000 == a2;
        if (v8 || (sub_1001F7EA8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D61726150797562 && a2 == 0xE900000000000073;
          if (v9 || (sub_1001F7EA8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x800000010022D020 == a2;
            if (v10 || (sub_1001F7EA8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4964657269707865 && a2 == 0xED0000747361506ELL;
              if (v11 || (sub_1001F7EA8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69)
              {

                return 7;
              }

              else
              {
                v13 = sub_1001F7EA8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001A7B3C(char a1)
{
  result = 0x6D61726150797562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x4964657269707865;
      break;
    case 7:
      result = 0x746361736E617274;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1001A7C74(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BB0C0, &qword_100215F60);
  sub_10001A278();
  v5 = v4;
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_10001AE68(a1, a1[3]);
  sub_1001A8848();
  sub_1001F8198();
  v10[15] = 0;
  sub_100024A50();
  sub_1001F7D18();
  if (!v1)
  {
    v10[14] = 1;
    sub_100024A50();
    sub_1001F7D88();
    v10[13] = 2;
    sub_100024A50();
    sub_1001F7D88();
    v10[12] = 3;
    sub_100024A50();
    sub_1001F7D88();
    v10[11] = 4;
    sub_100024A50();
    sub_1001F7D88();
    v10[10] = 5;
    sub_1001F7D98();
    v10[9] = 6;
    sub_1001F7D98();
    v10[8] = 7;
    sub_100024A50();
    sub_1001F7D18();
  }

  return (*(v5 + 8))(v8, v3);
}

void *sub_1001A7E88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BB0E8, &qword_100215F78);
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_1001A8848();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  LOBYTE(v39[0]) = 0;
  v11 = sub_1001F7C08();
  v13 = v12;
  sub_1001A8D40(1);
  v34 = sub_1001F7C78();
  v37 = v14;
  sub_1001A8D40(2);
  v33 = sub_1001F7C78();
  v36 = v15;
  sub_1001A8D40(3);
  v31 = sub_1001F7C78();
  v30 = v11;
  v35 = v16;
  sub_1001A8D40(4);
  v17 = sub_1001F7C78();
  v32 = v18;
  v29 = v17;
  sub_1001A8D40(5);
  v44 = sub_1001F7C88();
  sub_1001A8D40(6);
  LODWORD(v28) = sub_1001F7C88();
  v45 = 7;
  v19 = sub_1001F7C08();
  v44 &= 1u;
  LOBYTE(v11) = v28 & 1;
  v20 = *(v7 + 8);
  v21 = v19;
  v28 = v22;
  v20(v10, v5);
  v23 = v30;
  __src[0] = v30;
  __src[1] = v13;
  __src[2] = v34;
  v24 = v37;
  __src[3] = v37;
  __src[4] = v33;
  __src[5] = v36;
  __src[6] = v31;
  __src[7] = v35;
  __src[8] = v29;
  __src[9] = v32;
  LOBYTE(__src[10]) = v44;
  BYTE1(__src[10]) = v11;
  v25 = v28;
  __src[11] = v21;
  __src[12] = v28;
  sub_1001A88F0(__src, v39);
  sub_100019CCC(a1);
  v39[0] = v23;
  v39[1] = v13;
  v39[2] = v34;
  v39[3] = v24;
  v39[4] = v33;
  v39[5] = v36;
  v39[6] = v31;
  v39[7] = v35;
  v39[8] = v29;
  v39[9] = v32;
  v40 = v44;
  v41 = v11;
  v42 = v21;
  v43 = v25;
  sub_1001A8928(v39);
  return memcpy(a2, __src, 0x68uLL);
}

uint64_t sub_1001A832C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1001A83D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000183C4(&qword_1002BB0E0, &qword_100215F70);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_10001AE68(a1, a1[3]);
  sub_1001A889C();
  sub_1001F8198();
  sub_1001F7D88();
  return (*(v6 + 8))(v9, v4);
}

void *sub_1001A8500(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BB0D0, &qword_100215F68);
  sub_10001A278();
  v5 = v4;
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_10001AE68(a1, a1[3]);
  sub_1001A889C();
  sub_1001F8178();
  if (!v1)
  {
    v9 = sub_1001F7C78();
    (*(v5 + 8))(v8, v3);
  }

  sub_100019CCC(a1);
  return v9;
}

uint64_t sub_1001A8654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A78A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001A867C(uint64_t a1)
{
  v2 = sub_1001A8848();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A86B8(uint64_t a1)
{
  v2 = sub_1001A8848();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001A86F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001A7E88(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_1001A875C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A832C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001A8788(uint64_t a1)
{
  v2 = sub_1001A889C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A87C4(uint64_t a1)
{
  v2 = sub_1001A889C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001A8800@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001A8500(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1001A8848()
{
  result = qword_1002BB0C8;
  if (!qword_1002BB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0C8);
  }

  return result;
}

unint64_t sub_1001A889C()
{
  result = qword_1002BB0D8;
  if (!qword_1002BB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisableSubscriptionRequest.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001A89F4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EditSubscriptionsHelperResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x1001A8AF8);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001A8B34()
{
  result = qword_1002BB0F0;
  if (!qword_1002BB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0F0);
  }

  return result;
}

unint64_t sub_1001A8B8C()
{
  result = qword_1002BB0F8;
  if (!qword_1002BB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB0F8);
  }

  return result;
}

unint64_t sub_1001A8BE4()
{
  result = qword_1002BB100;
  if (!qword_1002BB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB100);
  }

  return result;
}

unint64_t sub_1001A8C3C()
{
  result = qword_1002BB108;
  if (!qword_1002BB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB108);
  }

  return result;
}

unint64_t sub_1001A8C94()
{
  result = qword_1002BB110;
  if (!qword_1002BB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB110);
  }

  return result;
}

unint64_t sub_1001A8CEC()
{
  result = qword_1002BB118[0];
  if (!qword_1002BB118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002BB118);
  }

  return result;
}

void MarkedCircularBuffer.init(initialCapacity:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  CircularBuffer.init(initialCapacity:)(a1, a2);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
}

uint64_t MarkedCircularBuffer.removeFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1001F74B8();
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  MarkedCircularBuffer.popFirst()(a1, v8, v9, v10);
  result = sub_10001C990(v7, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(a2, v7, v4);
  }

  __break(1u);
  return result;
}

void MarkedCircularBuffer.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CircularBuffer(0, *(a2 + 16), a3, a4);

  CircularBuffer.append(_:)();
}

Swift::Void __swiftcall MarkedCircularBuffer.mark()()
{
  v1 = sub_1001AA8D4();
  v4 = CircularBuffer.count.getter(v1, v2, v3);
  if (v4 >= 1)
  {
    *(v0 + 24) = v4 - 1;
    *(v0 + 32) = 0;
  }
}

unint64_t MarkedCircularBuffer.markedElementIndex.getter(uint64_t a1)
{
  if (*(v1 + 32))
  {
    return 0x200000000000000;
  }

  v4 = *(v1 + 24);
  MarkedCircularBuffer.startIndex.getter();
  sub_10010AF50();
  v6 = MarkedCircularBuffer.index(_:offsetBy:)(v5, v4, a1);
  return v6 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v6) != 0) << 56);
}

uint64_t MarkedCircularBuffer._buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t MarkedCircularBuffer._markedIndexOffset.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MarkedCircularBuffer.popFirst()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(v4 + 32) & 1) == 0)
  {
    v5 = *(v4 + 24);
    v6 = v5 < 1;
    v7 = v5 - 1;
    v8 = v6;
    if (v6)
    {
      v7 = 0;
    }

    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
  }

  type metadata accessor for CircularBuffer(0, *(a1 + 16), a3, a4);

  return CircularBuffer.popFirst()();
}

uint64_t MarkedCircularBuffer.isMarked(index:)(uint64_t a1, uint64_t a2)
{
  MarkedCircularBuffer.endIndex.getter();
  sub_10010AF50();
  result = static CircularBuffer.Index.< infix(_:_:)(a1 & 0x1FFFFFFFFFFFFFFLL, v6 | (v5 << 56));
  if (result)
  {
    if (*(v2 + 32))
    {
      return 0;
    }

    else
    {
      v8 = *(v2 + 24);
      MarkedCircularBuffer.startIndex.getter();
      sub_10010AF50();
      MarkedCircularBuffer.index(_:offsetBy:)(v9, v8, a2);
      sub_10010AF50();

      return static CircularBuffer.Index.== infix(_:_:)(v11 | (v10 << 56), a1 & 0x1FFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MarkedCircularBuffer.markedElement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MarkedCircularBuffer.markedElementIndex.getter(a1);
  v8 = *(a1 + 16);
  type metadata accessor for CircularBuffer.Index(255, v8, v4, v5);
  sub_1001F74B8();
  return sub_1000B3104(sub_1001A931C, v8, v6, a2);
}

void (*MarkedCircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = sub_100064190(0x60uLL);
  *a1 = v7;
  v7[6] = a3;
  v7[7] = v3;
  v7[5] = a2;
  v7[8] = *(a3 + 16);
  sub_10002DFFC();
  *(v8 + 72) = v9;
  v11 = *(v10 + 64);
  v7[10] = sub_100064190(v11);
  v12 = sub_100064190(v11);
  v7[11] = v12;
  v13 = *(v3 + 32);
  v14 = *(v3 + 16);
  *v7 = *v3;
  *(v7 + 1) = v14;
  *(v7 + 32) = v13;
  MarkedCircularBuffer.subscript.getter(a3, v12);
  return sub_1001A952C;
}

void sub_1001A952C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v5 = v2[8];
    v6 = v2[9];
    v7 = v2[6];
    v8 = v2[5];
    v9 = sub_10010B118();
    v10(v9);
    MarkedCircularBuffer.subscript.setter(v3, v8 & 0x1FFFFFFFFFFFFFFLL, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    MarkedCircularBuffer.subscript.setter(*(*a1 + 88), v2[5] & 0x1FFFFFFFFFFFFFFLL, v2[6]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MarkedCircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v65 = a6;
  v66 = a5;
  v8 = a4;
  v68 = HIBYTE(a4) & 1;
  v10 = *(a6 + 16);
  sub_1001F74B8();
  sub_10002DFFC();
  v62 = v12;
  v63 = v11;
  __chkstk_darwin(v11);
  v61 = &v61 - v13;
  sub_10002DFFC();
  v15 = v14;
  __chkstk_darwin(v16);
  v64 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v61 - v19;

  sub_1001AA8E8();
  v24 = CircularBuffer.startIndex.getter(v21, v22, v23);
  v67 = a1;

  v25 = (v15 + 16);
  for (i = (v15 + 8); ; (*i)(v20, v10))
  {
    sub_1001AA8E8();
    v30 = CircularBuffer.endIndex.getter(v27, v28, v29);
    v31 = v24 & 0x1FFFFFFFFFFFFFFLL;
    if (static CircularBuffer.Index.== infix(_:_:)(v31, v30 & 0x1FFFFFFFFFFFFFFLL))
    {
      break;
    }

    sub_1001AA888();
    CircularBuffer.subscript.getter(v32, v33);
    v34 = sub_1001AA888();
    v24 = CircularBuffer.index(after:)(v34);
    if (v68)
    {
      v35 = 0x100000000000000;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35 & 0xFF00000000000000 | v8 & 0xFFFFFFFFFFFFFFLL;
    if (static CircularBuffer.Index.== infix(_:_:)(v36, v66 & 0x1FFFFFFFFFFFFFFLL))
    {
      (*i)(v20, v10);
      v31 = v24 & 0x1FFFFFFFFFFFFFFLL;
      break;
    }

    v37 = v64;
    (*v25)(v64, v20, v10);
    v40 = type metadata accessor for CircularBuffer(0, v10, v38, v39);
    CircularBuffer.subscript.setter(v37, v36, v40, v41, v42, v43, v44, v45, v61, v62, v63, v64, v65, v66, v67, v68, v69, *(&v69 + 1));
    v46 = v7[1];
    v69 = *v7;
    v70 = v46;
    v71 = *(v7 + 32);
    v8 = MarkedCircularBuffer.index(after:)(v36, v65);
    v68 = HIBYTE(v8) != 0;
  }

  sub_1001AA8E8();
  v50 = CircularBuffer.endIndex.getter(v47, v48, v49);
  v51 = static CircularBuffer.Index.== infix(_:_:)(v31, v50 & 0x1FFFFFFFFFFFFFFLL);
  v52 = v68;
  if ((v51 & 1) == 0)
  {
    goto LABEL_15;
  }

  v53 = v61;
  sub_100018460(v61, 1, 1, v10);
  (*(v62 + 8))(v53, v63);
  if (v52)
  {
    v54 = 0x100000000000000;
  }

  else
  {
    v54 = 0;
  }

  v55 = static CircularBuffer.Index.== infix(_:_:)(v54 & 0xFF00000000000000 | v8 & 0xFFFFFFFFFFFFFFLL, v66 & 0x1FFFFFFFFFFFFFFLL);

  if ((v55 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    v57 = v61;
    sub_1001AA888();
    CircularBuffer.subscript.getter(v58, v59);
    v60 = sub_1001AA888();
    CircularBuffer.index(after:)(v60);
    sub_100018460(v57, 0, 1, v10);
    (*(v62 + 8))(v57, v63);

    __break(1u);
  }

  return result;
}

void (*MarkedCircularBuffer.subscript.modify())(uint64_t a1, char a2)
{
  sub_1000814DC();
  v5 = sub_100064190(0x60uLL);
  *v4 = v5;
  v5[10] = v0;
  v5[11] = v1;
  v5[8] = v3;
  v5[9] = v2;
  v6 = *(v1 + 32);
  v7 = *(v1 + 16);
  *v5 = *v1;
  *(v5 + 1) = v7;
  *(v5 + 32) = v6;
  v5[5] = MarkedCircularBuffer.subscript.getter(v3 & 0x1FFFFFFFFFFFFFFLL, v2 & 0x1FFFFFFFFFFFFFFLL);
  v5[6] = v8;
  v5[7] = v9;
  return sub_1001A9A1C;
}

void sub_1001A9A1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {

    sub_1001AA92C(v4);
  }

  else
  {
    sub_1001AA92C(v3);
  }

  free(v2);
}

void sub_1001A9AC8(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1();
  sub_1001AA8A0(v3);
  *(a2 + 4) = v4;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  sub_10010B320(v6);
}

void (*sub_1001A9B00(void *a1, unsigned int *a2, uint64_t a3))(uint64_t a1)
{
  v7 = sub_100064190(0x50uLL);
  *a1 = v7;
  v8 = *a2;
  v7[32] = *(v3 + 32);
  v9 = *(v3 + 16);
  *v7 = *v3;
  *(v7 + 1) = v9;
  *(v7 + 9) = sub_1001A9BF8(v7 + 5, v8, a3);
  return sub_1001A9BB0;
}

void sub_1001A9BB0(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 72))();

  free(v1);
}

void (*sub_1001A9BF8(void *a1, unsigned int a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = sub_100064190(*(v6 + 64));
  a1[2] = v7;
  MarkedCircularBuffer.subscript.getter(a3, v7);
  return sub_100107050;
}

unint64_t sub_1001A9CB4@<X0>(unsigned int *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v4 = 0x100000000000000;
  }

  else
  {
    v4 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v3 = 0;
  }

  result = MarkedCircularBuffer.subscript.getter(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v4, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v3);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_1001A9D78(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = 0x100000000000000;
  if (!*(a2 + 7))
  {
    v3 = 0;
  }

  return MarkedCircularBuffer.subscript.setter(a1, v3 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, a3);
}

void (*sub_1001A9DA4(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = sub_100064190(0x60uLL);
  *a1 = v7;
  v7[5] = v3;
  v7[6] = a3;
  v8 = *(a3 + 16);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64);
  v7[9] = sub_100064190(v10);
  v11 = sub_100064190(v10);
  v7[10] = v11;
  *(v7 + 9) = *a2;
  *(v7 + 17) = *(a2 + 4);
  *(v7 + 33) = *(a2 + 6);
  *(v7 + 88) = *(a2 + 7);
  v13 = *v3;
  v12 = v3[1];
  *(v7 + 32) = *(v3 + 32);
  *v7 = v13;
  *(v7 + 1) = v12;
  MarkedCircularBuffer.subscript.getter(a3, v11);
  return sub_1001A9ED4;
}

void sub_1001A9ED4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 33);
  v5 = *(*a1 + 34);
  v6 = *(*a1 + 36);
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 80);
  if (a2)
  {
    v9 = v2[7];
    v10 = v2[8];
    v11 = v2[6];
    v12 = v3 == 0;
    v13 = 0x100000000000000;
    if (v12)
    {
      v13 = 0;
    }

    v14 = v13 | (v4 << 48) | (v5 << 32);
    v15 = sub_10010B118();
    v16(v15);
    MarkedCircularBuffer.subscript.setter(v7, v14 | v6, v11);
    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v12 = v3 == 0;
    v17 = 0x100000000000000;
    if (v12)
    {
      v17 = 0;
    }

    MarkedCircularBuffer.subscript.setter(*(*a1 + 80), v17 | (v4 << 48) | (v5 << 32) | v6, v2[6]);
  }

  free(v8);
  free(v7);

  free(v2);
}

uint64_t sub_1001A9FD0(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v3 = 0x100000000000000;
  if (*(a2 + 7))
  {
    v4 = 0x100000000000000;
  }

  else
  {
    v4 = 0;
  }

  if ((*(a2 + 15) & 1) == 0)
  {
    v3 = 0;
  }

  return MarkedCircularBuffer.subscript.setter(*a1, a1[1], a1[2], *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48) | v4, a2[2] | (*(a2 + 6) << 32) | (*(a2 + 14) << 48) | v3, a3);
}

void (*sub_1001AA034(void *a1, unsigned int *a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = sub_100064190(0x60uLL);
  v8 = v7;
  *a1 = v7;
  v7[8] = v3;
  v7[9] = a3;
  v9 = *a2;
  *(v7 + 9) = v9;
  v10 = *(a2 + 2);
  *(v7 + 17) = v10;
  v11 = *(a2 + 6);
  *(v7 + 33) = v11;
  v12 = *(a2 + 7);
  *(v7 + 86) = v12;
  v13 = a2[2];
  *(v7 + 20) = v13;
  v14 = *(a2 + 6);
  *(v7 + 42) = v14;
  v15 = *(a2 + 14);
  *(v7 + 87) = v15;
  v16 = *(a2 + 15);
  *(v7 + 88) = v16;
  v17 = v9 | (v10 << 32) | (v11 << 48);
  v18 = 0x100000000000000;
  if (v12)
  {
    v19 = 0x100000000000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = *v3;
  v21 = v3[1];
  *(v7 + 32) = *(v3 + 32);
  if ((v16 & 1) == 0)
  {
    v18 = 0;
  }

  *v7 = v20;
  *(v7 + 1) = v21;
  v7[5] = MarkedCircularBuffer.subscript.getter(v17 | v19, v13 | (v14 << 32) | (v15 << 48) | v18);
  v8[6] = v22;
  v8[7] = v23;
  return sub_1001AA130;
}

void sub_1001AA130(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {

    sub_1001AA908(v4);
  }

  else
  {
    sub_1001AA908(v3);
  }

  free(v2);
}

uint64_t sub_1001AA278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v5;
  v14 = *(v2 + 32);
  v6 = v14;
  *a2 = v13[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;

  v7 = MarkedCircularBuffer.startIndex.getter();
  v8 = v7;
  v9 = HIDWORD(v7);
  v10 = HIWORD(v7);
  v11 = HIBYTE(v7) != 0;
  result = (*(*(a1 - 8) + 8))(v13, a1);
  *(a2 + 36) = v8;
  *(a2 + 40) = v9;
  *(a2 + 42) = v10;
  *(a2 + 43) = v11;
  return result;
}

uint64_t sub_1001AA334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_1001AA388(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection._copyToContiguousArray()(a1, WitnessTable);
}

void sub_1001AA5F8(uint64_t a1@<X8>)
{
  sub_1001AA8B8();
  v3 = sub_1001AA8F8(v2);
  v5 = v4(v3);
  sub_1001AA8A0(v5);
  *(a1 + 4) = v6;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_10010B320(v8);
}

void sub_1001AA654(uint64_t a1)
{
  sub_1001AA8B8();
  v3 = sub_1001AA8F8(v2);
  v5 = v4(v3);
  sub_1001AA8A0(v5);
  *(a1 + 4) = v6;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_10010B320(v8);
}

void sub_1001AA698(uint64_t a1@<X8>)
{
  sub_1001AA8B8();
  v3 = sub_1001AA8F8(v2);
  v6 = MarkedCircularBuffer.index(_:offsetBy:)(v3, v4, v5);
  sub_1001AA8A0(v6);
  *(a1 + 4) = v7;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_10010B320(v9);
}

uint64_t sub_1001AA6D8()
{
  sub_1000814DC();
  swift_getWitnessTable();

  return sub_1001F70F8();
}

uint64_t sub_1001AA750(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 7))
  {
    v2 = 0x100000000000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  return MarkedCircularBuffer.distance(from:to:)(v2 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v3 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2);
}

uint64_t sub_1001AA7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001AA7DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AA81C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001AA908(uint64_t a1)
{

  return MarkedCircularBuffer.subscript.setter(a1, v3, v1, v4, v5, v2);
}

uint64_t sub_1001AA92C(uint64_t a1)
{

  return MarkedCircularBuffer.subscript.setter(a1, v1, v2, v5 & 0x1FFFFFFFFFFFFFFLL, v4 & 0x1FFFFFFFFFFFFFFLL, v3);
}

uint64_t sub_1001AA950()
{
  v0 = sub_1000C5388(15);
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = sub_1000C5388(15);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (v2 == v6 && v3 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1001F7EA8();
  }

  return v9 & 1;
}

uint64_t sub_1001AAA04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 145))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AAA44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001AAAC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AAB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
      *(result + 224) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1001AAB88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __src[1] = 0x65726F7453707041;
  __src[2] = 0xE800000000000000;
  __src[6] = 7368801;
  __src[7] = 0xE300000000000000;
  __src[13] = 0;
  LOBYTE(__src[14]) = 1;
  memset(&__src[15], 0, 32);
  __src[22] = 0;
  __src[21] = 0;
  LOBYTE(__src[23]) = 2;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  LOWORD(__src[0]) = 0;
  BYTE2(__src[0]) = 0;
  __src[27] = 0;
  __src[26] = 0;
  v5 = *(a1 + 88);
  v6 = *(v5 + 112);
  if (v6 >= 2)
  {
    v8 = 0xEC0000006E6F6974;
    if (v6 == 2)
    {
      sub_1001B33E4();
    }

    else
    {
      if (*(v5 + 32) == 1)
      {
        v8 = 0x800000010022D040;
        v2 = 0xD00000000000001DLL;
      }

      else
      {
        sub_1001B33E4();
      }

      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0xEF65736168637275;
    v2 = 0x50207070412D6E49;
  }

  LOBYTE(__src[3]) = v7;
  type metadata accessor for AppIconRoute();
  v9 = sub_10005DC24(*(a1 + 56), *(a1 + 64));
  v11 = sub_1001B3448(v9, v10);
  v13 = v12;

  __src[4] = v11;
  __src[5] = v13;
  memcpy(__dst, (a1 + 144), sizeof(__dst));
  __src[9] = __dst[6];
  __src[10] = __dst[7];
  __src[11] = __dst[2];
  __src[12] = __dst[3];
  *&__src[19] = xmmword_100208700;
  type metadata accessor for OctaneSubscription();
  v14 = swift_dynamicCastClass();

  if (!v14)
  {
    sub_100085DE4();
    sub_1001F7428(v15);
    v17 = v16;
    [v16 doubleValue];
    v19 = v18;

    __src[13] = v19;
    LOBYTE(__src[14]) = 0;
    sub_1001E84A8();
    if (*(v5 + 112) == 3)
    {
      v20 = 1;
    }

    else
    {
      v20 = *(a1 + 368);
    }

    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    sub_1001F7478(v20, v21);
    v22 = sub_1001F7438();
    v23 = *(a1 + 120);
    v45[0] = *(a1 + 104);
    v45[1] = v23;
    v46 = *(a1 + 136);
    __src[15] = sub_10004B450(v22, v24, v25, __dst, v45);
    __src[16] = v26;
  }

  v27 = [objc_opt_self() standardUserDefaults];
  v28 = sub_1001F6B48();
  v29 = [v27 BOOLForKey:v28];

  if ((v29 & 1) == 0)
  {
    LOBYTE(__src[25]) = 0;
  }

  v30 = *(a1 + 120);
  v43[1] = *(a1 + 104);
  v43[2] = v30;
  v44 = *(a1 + 136);

  v32 = sub_1000E087C(v31);

  if (v32)
  {
    v33 = *(v32 + 32);
    v34 = *(v32 + 40);
    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {

      goto LABEL_26;
    }
  }

  v33 = sub_1001E8450();
  v34 = v36;
LABEL_26:
  v41[0] = v33;
  v41[1] = v34;
  v48._countAndFlagsBits = 0x6567616D69252520;
  v48._object = 0xEC0000002525305FLL;
  sub_1001F6CA8(v48);
  if (v29)
  {
    LOBYTE(__src[23]) = 1;
  }

  else
  {
    __src[27] = &off_10027A258;
  }

  sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100208B20;
  *(v37 + 32) = v33;
  *(v37 + 40) = v34;
  v43[0] = *(a1 + 40);
  *(v37 + 48) = v43[0];
  *(v37 + 64) = v2;
  *(v37 + 72) = v8;
  __src[8] = v37;
  sub_1000552A0(v43, v41);
  sub_1001AE08C(a1);
  sub_1000ACF50(a1);
  memcpy(v40, __src, sizeof(v40));
  memcpy(v41, __src, sizeof(v41));
  sub_1001B0F54(v40, &v39);
  sub_1001B0F8C(v41);
  return memcpy(a2, v40, 0xE0uLL);
}

BOOL sub_1001AAFF8()
{
  sub_100164DFC();
  v2._rawValue = &off_10027D338;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_100013EFC();

  return v1 != 0;
}

BOOL sub_1001AB048()
{
  sub_100164DFC();
  v2._rawValue = &off_10027D370;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_100013EFC();

  return v1 != 0;
}

BOOL sub_1001AB0C0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1001AAFF8();
  *a1 = result;
  return result;
}

BOOL sub_1001AB1C0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1001AB048();
  *a1 = result;
  return result;
}

uint64_t sub_1001AB2B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001AB37C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

void sub_1001AB3A8()
{
  sub_1000DBF74();
  sub_1000183C4(&qword_1002BB258, &qword_100216E18);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v1);
  sub_100056624();
  v2 = sub_10016CB94();
  sub_1001B328C(v2, v3);
  sub_1001B1804();
  sub_1001B33F8();
  sub_10001E838();
  sub_1001F8198();
  sub_1001B1858();
  sub_1001B327C();
  sub_1001F7D58();
  if (!v0)
  {
    sub_1001B18AC();
    sub_1001B327C();
    sub_1001F7D58();
  }

  v4 = sub_10007B9A4();
  v5(v4);
  sub_1000DBF60();
}

void sub_1001AB4F8()
{
  sub_1000DBF74();
  v1 = v0;
  sub_1000183C4(&qword_1002BB318, &unk_100216E50);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v2);
  sub_10010B168();
  sub_100049718();
  sub_1001B1804();
  sub_1001B32FC();
  sub_10001E838();
  sub_1001F8178();
  sub_1001B1F74();
  sub_10013E7E8();
  sub_1001F7C48();
  sub_1001B1FC8();
  sub_10013E7E8();
  sub_1001F7C48();
  v3 = sub_100062888();
  v4(v3);
  sub_100019CCC(v1);
  sub_1000DBF60();
}

uint64_t sub_1001AB6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AB2B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001AB6D8(uint64_t a1)
{
  v2 = sub_1001B1804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001AB714(uint64_t a1)
{
  v2 = sub_1001B1804();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001AB750(_BYTE *a1@<X8>)
{
  sub_1001AB4F8();
  if (!v1)
  {
    *a1 = v3 & 1;
    a1[1] = HIBYTE(v3) & 1;
  }
}

uint64_t sub_1001AB7BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001AB87C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x726564616568;
  }
}

void sub_1001AB8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10001E850();
  v26 = v25;
  v27 = sub_1000183C4(&qword_1002BB280, &qword_100216E20);
  sub_10001A278();
  v29 = v28;
  sub_10001E844();
  __chkstk_darwin(v30);
  sub_10010B168();
  sub_1001B328C(v26, v26[3]);
  sub_1001B1954();
  sub_1001B32FC();
  sub_1001F8198();
  sub_1001F7D18();
  if (!v23)
  {
    sub_1001F7D18();
  }

  (*(v29 + 8))(v24, v27);
  sub_10001E868();
}

void sub_1001AB9F4()
{
  sub_10001E850();
  v2 = v1;
  sub_1000183C4(&qword_1002BB310, &qword_100216E48);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  sub_10010B168();
  sub_100049718();
  sub_1001B1954();
  sub_1001B32FC();
  sub_10001E838();
  sub_1001F8178();
  if (!v0)
  {
    sub_10013E7E8();
    sub_1001F7C08();
    sub_1001B32C4();
    sub_10013E7E8();
    sub_1001F7C08();
    v4 = sub_100062888();
    v5(v4);
  }

  sub_100019CCC(v2);
  sub_100062234();
  sub_10001E868();
}

unint64_t sub_1001ABB64()
{
  sub_100164DFC();
  v2._rawValue = &off_10027D3A8;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_100013EFC();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1001ABBA8(char a1)
{
  result = 0x69614D6563697270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6275536563697270;
      break;
    case 3:
      result = 0x746C7561666564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001ABC50(char a1)
{
  if (a1)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_1001ABC8C(char a1)
{
  if (a1)
  {
    return 2036429415;
  }

  else
  {
    return 0x6B63616C62;
  }
}

BOOL sub_1001ABCB8()
{
  sub_100164DFC();
  v2._rawValue = &off_10027D4C8;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_100013EFC();

  return v1 != 0;
}

uint64_t sub_1001ABD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AB7BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001ABD3C(uint64_t a1)
{
  v2 = sub_1001B1954();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001ABD78(uint64_t a1)
{
  v2 = sub_1001B1954();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001ABDB4(void *a1@<X8>)
{
  sub_1001AB9F4();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

unint64_t sub_1001ABE28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ABB64();
  *a1 = result;
  return result;
}

unint64_t sub_1001ABE58()
{
  v1 = sub_100056690();
  result = sub_1001ABBA8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001ABF54@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1001ADDC0();
  *a2 = result;
  return result;
}

uint64_t sub_1001ABF8C()
{
  v1 = sub_100056690();
  result = sub_1001ABC50(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001AC088@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1001ADDC0();
  *a2 = result;
  return result;
}

uint64_t sub_1001AC0C0()
{
  v1 = sub_100056690();
  result = sub_1001ABC8C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1001AC1A4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1001ABCB8();
  *a1 = result;
  return result;
}

void sub_1001AC29C()
{
  sub_1000DBF74();
  v2 = v1;
  sub_1000183C4(&qword_1002BB2D0, &qword_100216E40);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  sub_100056624();
  v4 = sub_10016CB94();
  sub_1001B328C(v4, v5);
  sub_1001B1D28();
  sub_1001B33F8();
  sub_10001E838();
  sub_1001F8198();
  sub_1001B1D7C();
  sub_100024A88();
  sub_1001F7DC8();
  if (!v0)
  {
    if ((v2 & 0x100) != 0)
    {
      v8 = sub_1001F7EA8();

      if ((v8 & 1) == 0)
      {
        sub_1001B1DD0();
        sub_100024A88();
        sub_1001F7DC8();
      }
    }

    else
    {
    }

    if ((v2 & 0x10000) != 0)
    {
      v9 = sub_1001F7EA8();

      if ((v9 & 1) == 0)
      {
        sub_1001B1E24();
        sub_100024A88();
        sub_1001F7DC8();
      }
    }

    else
    {
    }

    if ((v2 & 0x1000000) != 0)
    {
      sub_100024A88();
      sub_1001F7D88();
    }

    if ((v2 & 0x100000000) == 0)
    {
      sub_1001B1E78();
      sub_100024A88();
      sub_1001F7DC8();
    }
  }

  v6 = sub_10007B9A4();
  v7(v6);
  sub_1000DBF60();
}

uint64_t sub_1001AC51C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000B7E74(1701667182, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702521203 && a2 == 0xE400000000000000;
    if (v6 || (sub_1000B7E74(1702521203, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684828002 && a2 == 0xE400000000000000;
      if (v7 || (sub_1000B7E74(1684828002, 0xE400000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
        if (v8 || (sub_1000B7E74(0x726F6C6F63, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = sub_1001B335C();
          if (a1 == v9 && a2 == v10)
          {

            return 4;
          }

          else
          {
            v12 = sub_1000B7E74(v9, v10);

            if (v12)
            {
              return 4;
            }

            else
            {
              return 5;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001AC66C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 1684828002;
      break;
    case 3:
      result = 0x726F6C6F63;
      break;
    case 4:
      result = sub_1001B335C();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001AC700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AC51C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001AC728(uint64_t a1)
{
  v2 = sub_1001B1D28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001AC764(uint64_t a1)
{
  v2 = sub_1001B1D28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001AC810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001AC8D4(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x65756C6176;
  }
}

void sub_1001AC900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10001E850();
  sub_1001B3308(v27, v28, v29, v30);
  sub_1000183C4(&qword_1002BB408, &qword_100217A50);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v31);
  sub_100056624();
  sub_1001B328C(v25, v25[3]);
  sub_1001B2D8C();
  sub_1001B33F8();
  sub_1001F8198();
  sub_100062234();
  sub_1001F7D88();
  if (!v26)
  {
    sub_1001B1DD0();
    sub_1001B327C();
    sub_1001F7DC8();
  }

  v32 = sub_10007B9A4();
  v33(v32);
  sub_10001E868();
}

void sub_1001ACA40()
{
  sub_1000DBF74();
  v2 = v1;
  sub_1000183C4(&qword_1002BB428, &qword_100217A60);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  sub_10010B168();
  sub_100049718();
  sub_1001B2D8C();
  sub_1001B32FC();
  sub_10001E838();
  sub_1001F8178();
  if (!v0)
  {
    sub_1001B33A4();
    sub_1001B32C4();
    sub_1001B2E34();
    sub_1001B32D4(&unk_100293310);
    v4 = sub_10001E72C();
    v5(v4);
  }

  sub_100019CCC(v2);
  sub_100062234();
  sub_1000DBF60();
}

uint64_t sub_1001ACBA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001ACC70(char a1)
{
  if (a1)
  {
    return 0x656C797473;
  }

  else
  {
    return 0x65756C6176;
  }
}

void sub_1001ACC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10001E850();
  sub_1001B3308(v27, v28, v29, v30);
  sub_1000183C4(&qword_1002BB3F8, &qword_100217A48);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v31);
  sub_100056624();
  sub_1001B328C(v25, v25[3]);
  sub_1001B2D38();
  sub_1001B33F8();
  sub_1001F8198();
  sub_100062234();
  sub_1001F7D88();
  if (!v26)
  {
    sub_1001B1D7C();
    sub_1001B327C();
    sub_1001F7DC8();
  }

  v32 = sub_10007B9A4();
  v33(v32);
  sub_10001E868();
}

void sub_1001ACDD4()
{
  sub_1000DBF74();
  v2 = v1;
  sub_1000183C4(&qword_1002BB418, &qword_100217A58);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  sub_10010B168();
  sub_100049718();
  sub_1001B2D38();
  sub_1001B32FC();
  sub_10001E838();
  sub_1001F8178();
  if (!v0)
  {
    sub_1001B33A4();
    sub_1001B32C4();
    sub_1001B2DE0();
    sub_1001B32D4(&unk_1002933A0);
    v4 = sub_10001E72C();
    v5(v4);
  }

  sub_100019CCC(v2);
  sub_100062234();
  sub_1000DBF60();
}

uint64_t sub_1001ACF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AC810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001ACF6C(uint64_t a1)
{
  v2 = sub_1001B2D8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001ACFA8(uint64_t a1)
{
  v2 = sub_1001B2D8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001ACFE4(uint64_t a1@<X8>)
{
  sub_1001ACA40();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
  }
}

Swift::Int sub_1001AD038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t sub_1001AD08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001ACBA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001AD0B4(uint64_t a1)
{
  v2 = sub_1001B2D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001AD0F0(uint64_t a1)
{
  v2 = sub_1001B2D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001AD12C(uint64_t a1@<X8>)
{
  sub_1001ACDD4();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_1001AD17C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_10001AE68(a1, a1[3]);
  v7 = sub_1001F8188();
  if (a4 >> 6)
  {
    sub_1001B3410(v7, v8, v9, v10, v11, v12, v13, v14, a2, a3, v16, v17[0], v17[1], v17[2], v18);
    if (a4 >> 6 == 1)
    {
      sub_1001B1F20();
    }

    else
    {
      sub_1001B1ECC();
    }

    sub_1001F7F18();
  }

  else
  {
    sub_10004BD98(v17, v18);
    sub_1001F7EE8();
  }

  return sub_100019CCC(v17);
}

void sub_1001AD2B0()
{
  sub_10001E850();
  v110 = v1;
  v2 = v0;
  v4 = v3;
  v5 = sub_1000183C4(&qword_1002BB298, &unk_100216E28);
  sub_10001A278();
  v107 = v6;
  __chkstk_darwin(v7);
  v102 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v99 - v10;
  __chkstk_darwin(v12);
  v14 = &v99 - v13;
  sub_1001B328C(v4, v4[3]);
  v104 = sub_1001B19FC();
  sub_1001F8198();
  v16 = *v2;
  v15 = *(v2 + 8);
  v17 = *(v2 + 16);
  v18 = *(v2 + 32);
  *&v109 = v5;
  v105 = v14;
  switch((v18 >> 4) & 3)
  {
    case 1u:
      v109 = v17;
      *&v114 = v16;
      *(&v114 + 1) = v15;
      LOBYTE(v111) = 0;
      sub_1001B3430();
      sub_1001B31D8();
      sub_1001B1C64(v77, &qword_1002AEBE0, &qword_100203700);
      sub_1001B31F0();
      v78 = v110;
      sub_1001F7DC8();
      if (v78)
      {
        goto LABEL_3;
      }

      *&v114 = v109;
      LOBYTE(v111) = 1;
      sub_1001B3430();
      sub_1001B3264();
      sub_1001B1CB8(v79, &qword_1002BB2C0, &qword_100216E38);
      sub_1001B31F0();
      goto LABEL_21;
    case 2u:
      LOBYTE(v114) = 2;
      sub_1001F7D08();
      sub_1001B3320();
      v101 = v11;
      sub_1001F7CF8();
      v103 = (v107 + 8);
      v23 = (v16 + 64);
      v100 = v16;
      v24 = *(v16 + 16);
      v25 = v110;
      if (!v24)
      {
        goto LABEL_12;
      }

      while (2)
      {
        v110 = v25;
        v106 = v24;
        v107 = v23;
        v26 = *(v23 - 4);
        v27 = *(v23 - 3);
        v28 = *(v23 - 2);
        v29 = *(v23 - 1);
        v30 = *v23;
        sub_10004BD98(&v114, v116);
        v31 = sub_100013EFC();
        sub_1001B1AA4(v31, v27, v28, v29, v30);
        sub_1001F7E38();
        v32 = (v30 >> 4) & 3;
        v108 = v26;
        if (v32)
        {
          v5 = v109;
          if (v32 != 1)
          {
            sub_1001B1BAC(v108, v27, v28, v29, v30);
            sub_1001B1A50();
            swift_allocError();
            *v86 = 0;
            swift_willThrow();
            v87 = *v103;
            (*v103)(v102, v5);
            v88 = sub_1001B3404();
            (v87)(v88);
            v89 = sub_1001B3350();
            (v87)(v89);
            goto LABEL_29;
          }

          v111 = v108;
          v112 = v27;

          sub_1000183C4(&qword_1002AEBE0, &qword_100203700);
          sub_1001B31D8();
          sub_1001B1C64(&qword_1002BB2B8, &qword_1002AEBE0, &qword_100203700);
          sub_1001B3238();
          v33 = v110;
          sub_1001F7DC8();
          v25 = v33;
          if (!v33)
          {

            v111 = v28;
            sub_1000183C4(&qword_1002BB2C0, &qword_100216E38);
            sub_1001B3264();
            sub_1001B1CB8(&qword_1002BB2C8, &qword_1002BB2C0, &qword_100216E38);
            sub_1001B3238();
            sub_1001F7DC8();
            sub_1001B32A4();
            sub_1001B1BAC(v34, v35, v36, v37, v38);
            v39 = sub_10016CB94();
            v40(v39);

            goto LABEL_11;
          }

          sub_1001B32A4();
        }

        else
        {
          v111 = v26;
          v112 = v27;

          sub_1000C89E4(v28, v29, v30);
          sub_1000183C4(&qword_1002AEBE0, &qword_100203700);
          sub_1001B31D8();
          sub_1001B1C64(&qword_1002BB2B8, &qword_1002AEBE0, &qword_100203700);
          sub_1001B3238();
          v5 = v109;
          v41 = v110;
          sub_1001F7DC8();
          v25 = v41;
          if (!v41)
          {

            v111 = v28;
            v112 = v29;
            v113 = v30;
            sub_1001B1B58();
            sub_1001B3238();
            sub_1001F7DC8();
            v42 = sub_1001B3220();
            sub_1001B1BAC(v42, v43, v44, v45, v46);
            v47 = sub_10016CB94();
            v48(v47);
            sub_1001B3388();
LABEL_11:
            v23 = v107 + 40;
            v24 = v106 - 1;
            if (v106 == 1)
            {
LABEL_12:
              v111 = v100;
              sub_1001B3430();
              sub_1001B3248();
              sub_1001B1CB8(v49, v50, &qword_1002166E8);
              sub_1001B3238();
              v51 = v101;
              sub_1001F7DC8();
              v52 = *v103;
              (*v103)(v51, v5);
              v53 = sub_1001B3350();
              (v52)(v53);
              sub_100019CCC(&v114);
              goto LABEL_30;
            }

            continue;
          }

          sub_1001B3388();
          v90 = sub_1001B3220();
        }

        break;
      }

      sub_1001B1BAC(v90, v91, v92, v93, v94);
      v95 = *v103;
      v96 = sub_10016CB94();
      (v95)(v96);
      v97 = sub_1001B3404();
      (v95)(v97);
      v98 = sub_1001B3350();
      (v95)(v98);

LABEL_29:
      sub_100019CCC(&v114);
LABEL_30:
      sub_10001E868();
      return;
    case 3u:
      sub_1001B3320();
      sub_1001F7CF8();
      v54 = *(v16 + 16);
      v55 = (v16 + 64);
      if (!v54)
      {
        goto LABEL_17;
      }

      while (2)
      {
        v56 = *v55;
        if ((*v55 & 0x30) != 0)
        {
          sub_1001B1A50();
          swift_allocError();
          *v80 = 1;
          swift_willThrow();
          v81 = sub_1001B320C();
          v82(v81);
        }

        else
        {
          v57 = *(v55 - 1);
          v111 = *(v55 - 2);
          v112 = v57;
          v113 = v56;
          v108 = v117;
          sub_10004BD98(&v114, v116);
          v58 = sub_1001B3338();
          sub_1001B1AA4(v58, v59, v60, v61, v62);
          v63 = sub_1001B32B4();
          sub_1000C89E4(v63, v64, v65);
          sub_1001B1B58();
          v66 = v110;
          sub_1001F7E48();
          v110 = v66;
          v67 = sub_1001B3338();
          if (!v66)
          {
            sub_1001B1BAC(v67, v68, v69, v70, v71);
            v72 = sub_1001B32B4();
            sub_1000C89CC(v72, v73, v74);
            v55 += 40;
            if (!--v54)
            {
LABEL_17:
              v75 = sub_1001B320C();
              v76(v75);
              goto LABEL_29;
            }

            continue;
          }

          sub_1001B1BAC(v67, v68, v69, v70, v71);
          (*(v107 + 1))(v105, v109);
          v83 = sub_1001B32B4();
          sub_1000C89CC(v83, v84, v85);
        }

        goto LABEL_29;
      }

    default:
      v109 = v17;
      *&v114 = v16;
      *(&v114 + 1) = v15;
      LOBYTE(v111) = 0;
      sub_1001B3430();
      sub_1001B31D8();
      sub_1001B1C64(v19, &qword_1002AEBE0, &qword_100203700);
      sub_1001B31F0();
      v20 = v110;
      sub_1001F7DC8();
      if (!v20)
      {
        v114 = v109;
        v115 = v18 & 0xCF;
        LOBYTE(v111) = 1;
        sub_1001B1B58();
LABEL_21:
        sub_1001F7DC8();
      }

LABEL_3:
      v21 = sub_1001B320C();
      v22(v21);
      goto LABEL_30;
  }
}

unint64_t sub_1001ADBF0()
{
  sub_100164DFC();
  v2._rawValue = &off_10027D500;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_100013EFC();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001ADC34(char a1)
{
  if (!a1)
  {
    return 0x726564616568;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x7475626972747461;
}

unint64_t sub_1001ADCB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ADBF0();
  *a1 = result;
  return result;
}

uint64_t sub_1001ADCE4()
{
  v1 = sub_100056690();
  result = sub_1001ADC34(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1001ADD14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ADBF0();
  *a1 = result;
  return result;
}

uint64_t sub_1001ADD3C(uint64_t a1)
{
  v2 = sub_1001B19FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001ADD78(uint64_t a1)
{
  v2 = sub_1001B19FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001ADDC0()
{
  sub_100164DFC();
  v3._rawValue = v2;
  v6._object = v0;
  sub_1001F7BD8(v3, v6);
  sub_100013EFC();

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001ADE08(char a1)
{
  if (a1)
  {
    return 0x6269726373627553;
  }

  else
  {
    return 7954768;
  }
}

uint64_t sub_1001ADE78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ADDC0();
  *a1 = result;
  return result;
}

uint64_t sub_1001ADEB0()
{
  v1 = sub_100056690();
  result = sub_1001ADE08(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1001ADFA0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001ADF88(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001AE08C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 200);
  if (v4 == 1)
  {
    sub_1000183C4(&qword_1002ADC98, &qword_1002009F8);
    v5 = swift_allocObject();
    *(v5 + 1) = xmmword_1001FE9E0;
    *(v5 + 2) = xmmword_100216590;
    v5[6] = 0xD000000000000050;
    v5[7] = 0x800000010022D060;
    *(v5 + 64) = 0;
    memcpy(__dst, (a1 + 224), sizeof(__dst));
    memcpy(__src, (a1 + 224), sizeof(__src));
    if (sub_100086FB4(__src) != 1)
    {
      memcpy(v66, __src, sizeof(v66));
      memcpy(v60, __dst, sizeof(v60));
      sub_10008703C(v60, v59);
      v6 = sub_100194FC4(1);
      v8 = v7;
      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_100032CE4(v9 > 1, v10 + 1, 1, v5);
        v5 = v51;
      }

      sub_10004BDE8(__dst, &qword_1002B1910, &qword_1002076B0);
      v5[2] = v10 + 1;
      v11 = &v5[5 * v10];
      *(v11 + 2) = xmmword_1002165A0;
      v11[6] = v6;
      v11[7] = v8;
      *(v11 + 64) = 0;
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v12 = *(a1 + 88);
  type metadata accessor for OctaneSubscription();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;

    v15 = sub_1001AE668(v14, a1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v4)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100032CE4(0, v5[2] + 1, 1, v5);
        v5 = v47;
      }

      v18 = v5[2];
      v17 = v5[3];
      if (v18 >= v17 >> 1)
      {
        sub_100032CE4(v17 > 1, v18 + 1, 1, v5);
        v5 = v48;
      }

      v5[2] = v18 + 1;
      v19 = &v5[5 * v18];
      v19[4] = v15;
      v19[5] = 0;
      v19[6] = 0;
      v19[7] = 0;
      *(v19 + 64) = 32;
      goto LABEL_41;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100032CE4(0, v5[2] + 1, 1, v5);
      v5 = v49;
    }

    v22 = v5[2];
    v21 = v5[3];
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      sub_100032CE4(v21 > 1, v22 + 1, 1, v5);
      v5 = v50;
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_41;
    }

    sub_1000183C4(&qword_1002ADC98, &qword_1002009F8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001FEBE0;
    sub_1001E84A8();
    if (*(v12 + 112) == 3)
    {
      v20 = 1;
    }

    else
    {
      v20 = *(a1 + 368);
    }

    if (v20 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v20;
    }

    sub_1001F7478(v20, v24);
    v25 = sub_1001F7438();
    v27 = v26;
    v29 = v28;
    memcpy(v64, (a1 + 144), sizeof(v64));
    v30 = *(a1 + 120);
    v62[0] = *(a1 + 104);
    v62[1] = v30;
    v63 = *(a1 + 136);
    v31 = sub_10004B450(v25, v27, v29, v64, v62);
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = v31;
    *(v15 + 56) = v32;
    *(v15 + 64) = 0x80;
    *(v15 + 72) = 0;
    *(v15 + 80) = 0;
    *(v15 + 88) = xmmword_1002165B0;
    *(v15 + 104) = -126;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032CE4(0, v5[2] + 1, 1, v5);
      v5 = v56;
    }

    v22 = v5[2];
    v33 = v5[3];
    v23 = v22 + 1;
    if (v22 >= v33 >> 1)
    {
      sub_100032CE4(v33 > 1, v22 + 1, 1, v5);
      v5 = v57;
    }
  }

  v5[2] = v23;
  v34 = &v5[5 * v22];
  v34[4] = v15;
  v34[5] = 0;
  v34[6] = 0;
  v34[7] = 0;
  *(v34 + 64) = 48;
  memcpy(v60, (a1 + 224), sizeof(v60));
  memcpy(__dst, (a1 + 224), sizeof(__dst));
  if (sub_100086FB4(__dst) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032CE4(0, v5[2] + 1, 1, v5);
      v5 = v52;
    }

    v36 = v5[2];
    v35 = v5[3];
    if (v36 >= v35 >> 1)
    {
      sub_100032CE4(v35 > 1, v36 + 1, 1, v5);
      v5 = v53;
    }

    v5[2] = v36 + 1;
    v37 = &v5[5 * v36];
    v37[4] = 0;
    v37[5] = 0;
    v37[6] = 0xD000000000000050;
    v37[7] = 0x800000010022D060;
    *(v37 + 64) = 0;
  }

  else
  {
    memcpy(__src, __dst, sizeof(__src));
    memcpy(v59, v60, sizeof(v59));
    sub_10008703C(v59, &v58);
    v38 = sub_100194FC4(0);
    v40 = sub_1001410B4(0xD000000000000051, 0x800000010022D0C0, v38, v39);
    v42 = v41;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032CE4(0, v5[2] + 1, 1, v5);
      v5 = v54;
    }

    v44 = v5[2];
    v43 = v5[3];
    if (v44 >= v43 >> 1)
    {
      sub_100032CE4(v43 > 1, v44 + 1, 1, v5);
      v5 = v55;
    }

    sub_10004BDE8(v60, &qword_1002B1910, &qword_1002076B0);
    v5[2] = v44 + 1;
    v45 = &v5[5 * v44];
    v45[4] = 0;
    v45[5] = 0;
    v45[6] = v40;
    v45[7] = v42;
    *(v45 + 64) = 0;
  }

LABEL_41:

  *(v2 + 208) = v5;
  return result;
}

uint64_t sub_1001AE668(uint64_t a1, uint64_t a2)
{
  v261 = sub_1001F6508();
  v233 = *(v261 - 8);
  __chkstk_darwin(v261);
  v252 = &v230 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_1001F65B8();
  __chkstk_darwin(v259);
  v258 = &v230 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_1001F73E8();
  v266 = *(v257 - 8);
  __chkstk_darwin(v257);
  v256 = &v230 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000183C4(&qword_1002AE9F0, &unk_1002076A0);
  __chkstk_darwin(v7 - 8);
  v255 = &v230 - v8;
  v9 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v9 - 8);
  v268 = &v230 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v240 = &v230 - v12;
  v263 = sub_1001F60C8();
  v13 = *(v263 - 8);
  __chkstk_darwin(v263);
  v262 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v239 = v15;
  *(v15 + 16) = _swiftEmptyArrayStorage;
  v241 = (v15 + 16);
  v16 = *(a1 + 176);
  v17 = *(a1 + 184);
  v18 = *(a2 + 88);
  sub_1001E84A8();
  if (*(v18 + 112) == 3)
  {
    v19 = 1;
  }

  else
  {
    v19 = *(a2 + 368);
  }

  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  sub_1001F7478(v19, v20);
  v21 = sub_1001F7438();
  v23 = v22;
  v25 = v24;
  memcpy(v283, (a2 + 144), sizeof(v283));
  v26 = *(a2 + 120);
  v281[0] = *(a2 + 104);
  v281[1] = v26;
  v282 = *(a2 + 136);
  v27 = sub_10004B450(v21, v23, v25, v283, v281);
  v29 = v28;
  v30 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v30 setUnitsStyle:3];
  [v30 setAllowedUnits:4124];
  v31 = v262;
  sub_1001EC818(v16, v17);
  isa = sub_1001F6098().super.isa;
  v253 = *(v13 + 8);
  v254 = v13 + 8;
  v253(v31, v263);
  v33 = [v30 stringFromDateComponents:isa];

  if (v33)
  {
    v34 = sub_1001F6B58();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  if (v16 == 1)
  {
    __dst[0] = v34;
    __dst[1] = v36;
    v276[0] = 32;
    v276[1] = 0xE100000000000000;
    sub_10001C790();
    v37 = sub_1001F75B8();

    __dst[0] = sub_10005E8A0(1, v37);
    __dst[1] = v38;
    __dst[2] = v39;
    __dst[3] = v40;
    sub_1000183C4(&qword_1002AF8A8, &unk_100203E00);
    sub_1001B0FF4(&qword_1002AF8B0, &qword_1002AF8A8, &unk_100203E00);
    v34 = sub_1001F6A68();
    v36 = v41;
    swift_unknownObjectRelease();
  }

  v42 = v240;
  v43 = v261;
  v44 = sub_1001B0060(v27, v29, v34, v36, v16 != 1);
  v46 = v45;

  memcpy(v275, (a2 + 224), sizeof(v275));
  v269 = a2;
  memcpy(v276, (a2 + 224), sizeof(v276));
  v47 = sub_100086FB4(v276);
  v231 = v44;
  v232 = v46;
  if (v47 == 1)
  {
    sub_100018460(v42, 1, 1, v43);
    v235 = 0;
    v48 = v241;
    v49 = _swiftEmptyArrayStorage;
  }

  else
  {
    memcpy(__dst, v275, 0x90uLL);
    sub_10008703C(__dst, v270);
    sub_1000C5464(4);
    v48 = v241;
    v49 = _swiftEmptyArrayStorage;
    if (v50)
    {
      v51 = 1;
    }

    else
    {
      sub_1001F6418();
      v51 = 0;
    }

    sub_100018460(v42, v51, 1, v43);
    v235 = sub_1000258F4(__dst[7]) != 2 && sub_10001C990(v42, 1, v43) != 1;
  }

  sub_1000183C4(&qword_1002BB210, &unk_100216700);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100200CC0;
  v53 = v269;
  v280 = *(v269 + 96);
  v55 = *(v269 + 24);
  v279 = *(v269 + 16);
  v54 = v279;
  *(v52 + 32) = v280;
  *(v52 + 40) = v54;
  v278 = v55;
  v277 = *(v53 + 32);
  v56 = v277;
  *(v52 + 48) = v55;
  *(v52 + 56) = v56;
  __dst[0] = _swiftEmptyArrayStorage;
  sub_100057CB8(&v280, v270, &qword_1002AD560, &unk_1002087E0);
  sub_100057CB8(&v279, v270, &qword_1002BB218, &qword_100216710);
  sub_100057CB8(&v278, v270, &qword_1002BB220, &qword_100216718);
  sub_100057CB8(&v277, v270, &qword_1002BB228, &qword_100216720);
  for (i = 0; i != 4; ++i)
  {
    if (i > 3)
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v44 = *(v52 + 8 * i + 32);
    if (v44)
    {

      sub_1001F6F08();
      if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1001F6F58();
      }

      sub_1001F6F98();
      v49 = __dst[0];
    }
  }

  swift_setDeallocating();
  sub_1001E56F0();
  v238 = swift_allocBox();
  v59 = v58;
  v60 = v268;
  sub_100057CB8(v240, v268, &unk_1002B3450, &qword_100202EE0);
  if (sub_10001C990(v60, 1, v43) == 1)
  {
    sub_1001F64E8();
    if (sub_10001C990(v60, 1, v43) != 1)
    {
      sub_10004BDE8(v60, &unk_1002B3450, &qword_100202EE0);
    }
  }

  else
  {
    (*(v233 + 32))(v59, v60, v43);
  }

  v61 = sub_10013B560();
  if (!v61)
  {

    memcpy(v270, v275, 0x90uLL);
    v185 = sub_100086FB4(v270);
    v186 = v269;
    v187 = v267;
    if (v185 != 1)
    {
      memcpy(__dst, v270, 0x90uLL);
      v188 = *(v267 + 200);
      if (v188 != 1 || sub_1000258F4(v270[7]) != 2)
      {
        v183 = 0x676E697472617453;
        if (sub_1000258F4(v270[7]) == 2)
        {
          v184 = 0xEE007961646F7420;
          sub_10004BDE8(v275, &qword_1002B1910, &qword_1002076B0);
          if ((v188 & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v273 = 0x676E697472617453;
          v274 = 0xE900000000000020;
          v296._countAndFlagsBits = sub_100194E6C();
          sub_1001F6CA8(v296);

          sub_10004BDE8(v275, &qword_1002B1910, &qword_1002076B0);
          v183 = v273;
          v184 = v274;
          if ((v188 & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        goto LABEL_106;
      }

      sub_10004BDE8(v275, &qword_1002B1910, &qword_1002076B0);
    }

    if (*(v187 + 200) != 1)
    {
      if (*(v186 + 377))
      {
        v184 = 0xEE007961646F7420;
      }

      else
      {
        v184 = 0;
      }

      if (*(v186 + 377))
      {
        v183 = 0x676E697472617453;
      }

      else
      {
        v183 = 0;
      }

      goto LABEL_109;
    }

    v184 = 0;
LABEL_106:
    sub_1000183C4(&qword_1002ADC90, &qword_1002009F0);
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_1001FE9E0;
    v190 = v232;
    *(v189 + 32) = v231;
    *(v189 + 40) = v190;
    *(v189 + 48) = 65;
    if (v184)
    {
      sub_100032CC8(1, 2, 1, v189);
      v189 = v191;
      v270[18] = v191;
      sub_1000C8228(0);
      v192 = *(v189 + 16);
      if (v192 >= 2)
      {
        swift_beginAccess();
        sub_1000320B4();
        v193 = *(*v48 + 16);
        sub_1000322A0(v193, v194, v195, v196, v197, v198);
        v199 = *v48;
        *(v199 + 16) = v193 + 1;
        v200 = v199 + 40 * v193;
        *(v200 + 32) = xmmword_1002165E0;
        *(v200 + 48) = v189;
        *(v200 + 56) = 0;
        v201 = 16;
LABEL_114:
        *(v200 + 64) = v201;
LABEL_117:
        *v48 = v199;
        swift_endAccess();
        goto LABEL_118;
      }

      if (!v192)
      {

        goto LABEL_118;
      }
    }

    v218 = *(v189 + 32);
    v219 = *(v189 + 40);
    v220 = *(v189 + 48);
    sub_1000C89E4(v218, v219, v220);

    swift_beginAccess();
    sub_1000320B4();
    v221 = *(*v48 + 16);
    sub_1000322A0(v221, v222, v223, v224, v225, v226);
    v199 = *v48;
    *(v199 + 16) = v221 + 1;
    v227 = v199 + 40 * v221;
    *(v227 + 32) = xmmword_1002165E0;
    *(v227 + 48) = v218;
    *(v227 + 56) = v219;
    *(v227 + 64) = v220;
    goto LABEL_117;
  }

  v62 = v61;
  if (v61 >= 1)
  {
    v265 = *(v267 + 200);
    v242 = *(v269 + 376);
    v250 = v283[2];
    v251 = v49 & 0xC000000000000001;
    v248 = *&v281[0];
    v249 = v283[3];
    v247 = *(&v281[0] + 1);
    swift_beginAccess();
    swift_beginAccess();
    v63 = 0;
    v246 = (v266 + 8);
    v260 = (v233 + 16);
    v234 = xmmword_1002165D0;
    v237 = xmmword_1001FEBE0;
    v236 = xmmword_1002165C0;
    v243 = v49;
    v244 = v59;
    v245 = v62;
    while (2)
    {
      v64 = v48;
      v65 = v63;
      if (v251)
      {
        v66 = sub_1001F7808();
      }

      else
      {
        v66 = *(v49 + 8 * v63 + 32);
      }

      sub_100161BA8();
      v269 = v67;
      LODWORD(v268) = v68;
      v69 = *(v66 + 48);
      if (*(v66 + 56))
      {
        v69 = 1;
      }

      v267 = v69;
      v70 = v255;
      sub_100018460(v255, 1, 1, v259);

      sub_1001F7448();
      v72 = v71;

      sub_10004BDE8(v70, &qword_1002AE9F0, &unk_1002076A0);
      if ((v72 & 0x100000000) != 0)
      {
        sub_1001F7408(v73, 0.0);
      }

      v266 = v65 + 1;

      sub_1001F6588();
      v74 = v256;
      sub_1001F73D8();
      sub_10004BE48();
      v75 = v257;
      sub_1001F7458();
      (*v246)(v74, v75);
      v43 = __dst[1];
      v264 = __dst[0];
      v76 = 1;
      v48 = v64;
      switch(*(v66 + 57))
      {
        case 2:
          break;
        default:
          v76 = sub_1001F7EA8();
          break;
      }

      v77 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v77 setUnitsStyle:3];
      [v77 setAllowedUnits:4124];
      v78 = v262;
      v79 = v268;
      sub_1001EC818(v269, v268);
      v80 = sub_1001F6098().super.isa;
      v253(v78, v263);
      v81 = [v77 stringFromDateComponents:v80];

      if (v81)
      {
        v82 = sub_1001F6B58();
        v84 = v83;

        if ((v76 & 1) == 0)
        {
LABEL_49:

          if (v265)
          {
            __dst[0] = v82;
            __dst[1] = v84;
            sub_10001C790();
            v88 = sub_1001F75C8();
          }

          else
          {
            v88 = sub_1001F6BB8();
          }

          v44 = v88;
          v90 = v89;

          v91 = *v48;
          v92 = *(*v48 + 16) != 0;
          switch(*(v66 + 57))
          {
            case 1:

              if ((v265 & 1) == 0)
              {

                v137 = sub_1001B01D8(v269, v79);
                v139 = v138;
                sub_1000183C4(&qword_1002ADC98, &qword_1002009F8);
                v140 = swift_allocObject();
                *(v140 + 16) = v237;
                __dst[0] = v137;
                __dst[1] = v139;
                v290._countAndFlagsBits = 0x7274206565726620;
                v290._object = 0xEB000000006C6169;
                sub_1001F6CA8(v290);
                v141 = __dst[0];
                v142 = __dst[1];
                *(v140 + 32) = 0;
                *(v140 + 40) = 0;
                *(v140 + 48) = v141;
                *(v140 + 56) = v142;
                *(v140 + 64) = v92 | 0x80;
                v143 = sub_1001B0274(v239, v240, v238);
                *(v140 + 72) = 0;
                *(v140 + 80) = 0;
                *(v140 + 88) = v143;
                *(v140 + 96) = v144;
                *(v140 + 104) = -126;
                swift_beginAccess();
                v136 = v140;
                goto LABEL_78;
              }

              __dst[0] = v44;
              __dst[1] = v90;
              v287._countAndFlagsBits = 0x6565724620;
              v287._object = 0xE500000000000000;
              sub_1001F6CA8(v287);
              v97 = __dst[0];
              v98 = __dst[1];
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v43 = v261;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_100032CE4(0, *(v91 + 16) + 1, 1, v91);
                v91 = v175;
              }

              v99 = v245;
              v106 = *(v91 + 16);
              v105 = *(v91 + 24);
              if (v106 >= v105 >> 1)
              {
                sub_100032CE4(v105 > 1, v106 + 1, 1, v91);
                v91 = v176;
              }

              *(v91 + 16) = v106 + 1;
              v102 = v91 + 40 * v106;
              v103 = v234;
              goto LABEL_70;
            case 2:
              v93 = v267 * v269;
              v48 = ((v267 * v269) >> 64);
              if (v265)
              {
                if (v48 != (v93 >> 63))
                {
                  goto LABEL_122;
                }

                v94 = sub_1001ECA84(v79);
                v96 = v95;
                if (v93 == 1)
                {
                  v268 = v94;
                }

                else
                {
                  __dst[0] = v94;
                  __dst[1] = v95;
                  v292._countAndFlagsBits = 115;
                  v292._object = 0xE100000000000000;
                  sub_1001F6CA8(v292);
                  v96 = __dst[1];
                  v268 = __dst[0];
                }

                sub_1000183C4(&qword_1002ADC90, &qword_1002009F0);
                v156 = swift_allocObject();
                *(v156 + 16) = v237;
                v271 = v93;
                __dst[0] = sub_1001F7E28();
                __dst[1] = v157;
                v293._countAndFlagsBits = 32;
                v293._object = 0xE100000000000000;
                sub_1001F6CA8(v293);
                v294._countAndFlagsBits = v268;
                v294._object = v96;
                sub_1001F6CA8(v294);

                v158 = __dst[1];
                *(v156 + 32) = __dst[0];
                *(v156 + 40) = v158;
                *(v156 + 48) = 0;
                v159 = sub_1001B0060(v264, v43, v44, v90, v269 != 1);
                v161 = v160;

                *(v156 + 56) = v159;
                *(v156 + 64) = v161;
                *(v156 + 72) = 65;
                v48 = v241;
                swift_beginAccess();
                sub_1000320B4();
                v162 = *(*v48 + 16);
                sub_1000322A0(v162, v163, v164, v165, v166, v167);
                v168 = *v48;
                *(v168 + 16) = v162 + 1;
                v169 = v168 + 40 * v162;
                *(v169 + 32) = v236;
                *(v169 + 48) = v156;
                *(v169 + 56) = 0;
                *(v169 + 64) = 16;
                *v48 = v168;
LABEL_83:
                swift_endAccess();
LABEL_84:
                v43 = v261;
                v99 = v245;
              }

              else
              {
                v44 = sub_1001B0060(v264, v43, v44, v90, v269 != 1);
                v264 = v107;

                v108 = v241;
                swift_beginAccess();
                sub_1000320B4();
                v109 = *(*v108 + 16);
                sub_1000322A0(v109, v110, v111, v112, v113, v114);
                v115 = *v108;
                *(v115 + 16) = v109 + 1;
                v116 = v115 + 40 * v109;
                *(v116 + 32) = 0;
                *(v116 + 40) = 0;
                v117 = v264;
                *(v116 + 48) = v44;
                *(v116 + 56) = v117;
                *(v116 + 64) = v92 | 0x80;
                *v108 = v115;
                swift_endAccess();
                v118 = v235;
                if (v109)
                {
                  v118 = 1;
                }

                if (v118)
                {
                  v119 = v239;
                  v120 = sub_1001B0274(v239, v240, v238);
                  v122 = v121;
                  swift_beginAccess();
                  sub_1000320B4();
                  v123 = *(*(v119 + 16) + 16);
                  sub_1000322A0(v123, v124, v125, v126, v127, v128);
                  v129 = *(v119 + 16);
                  *(v129 + 16) = v123 + 1;
                  v130 = v129 + 40 * v123;
                  *(v130 + 32) = 0;
                  *(v130 + 40) = 0;
                  *(v130 + 48) = v120;
                  *(v130 + 56) = v122;
                  *(v130 + 64) = -126;
                  *(v119 + 16) = v129;
                  swift_endAccess();
                  v48 = v108;
                  v43 = v261;
                  v99 = v245;
                  v79 = v268;
                }

                else
                {
                  v43 = v261;
                  v99 = v245;
                  if (v48 != (v93 >> 63))
                  {
                    goto LABEL_123;
                  }

                  v79 = v268;
                  __dst[0] = sub_1001B01D8(v93, v268);
                  __dst[1] = v145;
                  v291._countAndFlagsBits = 0x726566666F20;
                  v291._object = 0xE600000000000000;
                  sub_1001F6CA8(v291);
                  v146 = __dst[0];
                  v147 = __dst[1];
                  v48 = v241;
                  swift_beginAccess();
                  sub_1000320B4();
                  v148 = *(*v48 + 16);
                  sub_1000322A0(v148, v149, v150, v151, v152, v153);
                  v154 = *v48;
                  *(v154 + 16) = v148 + 1;
                  v155 = v154 + 40 * v148;
                  *(v155 + 32) = 0;
                  *(v155 + 40) = 0;
                  *(v155 + 48) = v146;
                  *(v155 + 56) = v147;
                  *(v155 + 64) = -126;
                  *v48 = v154;
LABEL_71:
                  swift_endAccess();
                }
              }

              v170 = v269 * v267;
              v44 = v252;
              v171 = v244;
              if ((v269 * v267) >> 64 != (v269 * v267) >> 63)
              {
                goto LABEL_121;
              }

              v172 = *v260;
              (*v260)(v252, v244, v43);
              sub_1001CF4AC(v170, v79, v242, v44);
              swift_beginAccess();
              sub_1001F64D8();
              swift_endAccess();

              v63 = v266;
              v49 = v243;
              if (v99 != v266)
              {
                continue;
              }

              sub_10004BDE8(v275, &qword_1002B1910, &qword_1002076B0);
              __dst[0] = 0x676E697472617453;
              __dst[1] = 0xE900000000000020;
              v172(v44, v171, v43);
              if (qword_1002AC410 == -1)
              {
                goto LABEL_88;
              }

              goto LABEL_125;
            case 3:
              if ((v265 & 1) == 0)
              {
                sub_1000183C4(&qword_1002ADC98, &qword_1002009F8);
                v131 = swift_allocObject();
                *(v131 + 16) = v237;
                __dst[0] = v264;
                __dst[1] = v43;
                v288._countAndFlagsBits = 0x20726F6620;
                v288._object = 0xE500000000000000;
                sub_1001F6CA8(v288);
                v289._countAndFlagsBits = v44;
                v289._object = v90;
                sub_1001F6CA8(v289);

                v132 = __dst[0];
                v133 = __dst[1];
                *(v131 + 32) = 0;
                *(v131 + 40) = 0;
                *(v131 + 48) = v132;
                *(v131 + 56) = v133;
                *(v131 + 64) = v92 | 0x80;
                v134 = sub_1001B0274(v239, v240, v238);
                *(v131 + 72) = 0;
                *(v131 + 80) = 0;
                *(v131 + 88) = v134;
                *(v131 + 96) = v135;
                *(v131 + 104) = -126;
                swift_beginAccess();
                v136 = v131;
LABEL_78:
                sub_1001BA630(v136);
                goto LABEL_83;
              }

              __dst[0] = v264;
              __dst[1] = v43;
              v285._countAndFlagsBits = 0x20726F6620;
              v285._object = 0xE500000000000000;
              sub_1001F6CA8(v285);
              v286._countAndFlagsBits = v44;
              v286._object = v90;
              sub_1001F6CA8(v286);

              v97 = __dst[0];
              v98 = __dst[1];
              swift_beginAccess();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_100032CE4(0, *(v91 + 16) + 1, 1, v91);
                v91 = v173;
              }

              v43 = v261;
              v99 = v245;
              v101 = *(v91 + 16);
              v100 = *(v91 + 24);
              if (v101 >= v100 >> 1)
              {
                sub_100032CE4(v100 > 1, v101 + 1, 1, v91);
                v91 = v174;
              }

              *(v91 + 16) = v101 + 1;
              v102 = v91 + 40 * v101;
              v103 = v236;
LABEL_70:
              *(v102 + 32) = v103;
              *(v102 + 48) = v97;
              *(v102 + 56) = v98;
              *(v102 + 64) = 65;
              v48 = v241;
              *v241 = v91;
              goto LABEL_71;
            default:

              goto LABEL_84;
          }
        }
      }

      else
      {
        v82 = 0;
        v84 = 0xE000000000000000;
        if ((v76 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      break;
    }

    if (v269 == 1)
    {
      __dst[0] = v82;
      __dst[1] = v84;
      v271 = 32;
      v272 = 0xE100000000000000;
      sub_10001C790();
      v85 = sub_1001F75B8();

      v86 = *(v85 + 16);
      __dst[0] = v85;
      __dst[1] = v85 + 32;
      __dst[2] = v86 != 0;
      __dst[3] = (2 * v86) | 1;
      sub_1000183C4(&qword_1002AF8A8, &unk_100203E00);
      v79 = v268;
      sub_1001B0FF4(&qword_1002AF8B0, &qword_1002AF8A8, &unk_100203E00);
      v82 = sub_1001F6A68();
      v84 = v87;
    }

    goto LABEL_49;
  }

LABEL_124:
  __break(1u);
LABEL_125:
  swift_once();
LABEL_88:
  v177 = qword_1002AE9E8;
  v178 = sub_1001F6478().super.isa;
  v179 = [v177 stringFromDate:v178];

  v180 = sub_1001F6B58();
  v182 = v181;

  (*(v233 + 8))(v44, v43);
  v295._countAndFlagsBits = v180;
  v295._object = v182;
  sub_1001F6CA8(v295);

  v183 = __dst[0];
  v184 = __dst[1];
  if (v265)
  {
    goto LABEL_106;
  }

LABEL_109:
  swift_beginAccess();
  if (*(*v48 + 16))
  {
    v202 = -127;
  }

  else
  {
    v202 = 0x80;
  }

  swift_beginAccess();
  sub_1000320B4();
  v203 = *(*v48 + 16);
  sub_1000322A0(v203, v204, v205, v206, v207, v208);
  v209 = *v48;
  *(v209 + 16) = v203 + 1;
  v210 = v209 + 40 * v203;
  *(v210 + 32) = 0;
  *(v210 + 40) = 0;
  v211 = v232;
  *(v210 + 48) = v231;
  *(v210 + 56) = v211;
  *(v210 + 64) = v202;
  *v48 = v209;
  swift_endAccess();
  if (v184)
  {
    swift_beginAccess();
    sub_1000320B4();
    v212 = *(*v48 + 16);
    sub_1000322A0(v212, v213, v214, v215, v216, v217);
    v199 = *v48;
    *(v199 + 16) = v212 + 1;
    v200 = v199 + 40 * v212;
    *(v200 + 32) = 0;
    *(v200 + 40) = 0;
    *(v200 + 48) = v183;
    *(v200 + 56) = v184;
    v201 = -126;
    goto LABEL_114;
  }

LABEL_118:
  swift_beginAccess();
  v228 = *(v239 + 16);

  sub_10004BDE8(v240, &unk_1002B3450, &qword_100202EE0);

  return v228;
}

uint64_t sub_1001B0060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v7._countAndFlagsBits = 0x7972657665;
  }

  else
  {
    v7._countAndFlagsBits = 7497072;
  }

  if (a5)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  v7._object = v8;
  sub_1001F6CA8(v7);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  sub_1001F6CA8(v13);
  sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001FEBE0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = sub_1001F6BB8();
  *(v9 + 56) = v10;

  sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  sub_1001B0FF4(&qword_1002ADF40, &qword_1002ACA10, qword_1001FEBF0);
  v11 = sub_1001F6A68();

  return v11;
}

uint64_t sub_1001B01D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v7 = sub_1001F7E28();
  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  sub_1001F6CA8(v8);
  sub_1001ECA84(v2);
  v3 = sub_1001F6BB8();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1001F6CA8(v9);

  return v7;
}

uint64_t sub_1001B0274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0x676E697472617453;
  v6 = sub_1001F6508();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = swift_projectBox();
  swift_beginAccess();
  if (*(*(a1 + 16) + 16) || sub_10001C990(a2, 1, v6) != 1)
  {
    v19 = 0x676E697472617453;
    v20 = 0xE900000000000020;
    swift_beginAccess();
    (*(v7 + 16))(v9, v10, v6);
    if (qword_1002AC410 != -1)
    {
      swift_once();
    }

    v11 = qword_1002AE9E8;
    isa = sub_1001F6478().super.isa;
    v13 = [v11 stringFromDate:isa];

    v14 = sub_1001F6B58();
    v16 = v15;

    (*(v7 + 8))(v9, v6);
    v21._countAndFlagsBits = v14;
    v21._object = v16;
    sub_1001F6CA8(v21);

    return v19;
  }

  return v5;
}

unint64_t sub_1001B048C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F7F58();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1001B04EC(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6F74736575716572;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 4:
    case 5:
      result = 0x49656C62616C6173;
      break;
    case 6:
      result = 0x437972746E756F63;
      break;
    case 7:
      result = 0x79636E6572727563;
      break;
    case 8:
      result = 0x6563697270;
      break;
    case 9:
      result = 0x5079616C70736964;
      break;
    case 10:
      result = 0x48746E756F636361;
      break;
    case 11:
      result = 0x746E6F4365736163;
      break;
    case 12:
      result = 0x53746E656D796170;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x6365536563697270;
      break;
    case 15:
      result = 0x65566E6769736564;
      break;
    case 16:
      result = 0x7473694C78656C66;
      break;
    case 17:
      result = 0x73656C797473;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1001B0748()
{
  sub_1000DBF74();
  v2 = sub_1000183C4(&qword_1002BB1A0, &unk_1002166D0);
  sub_10001A278();
  v4 = v3;
  sub_10001E844();
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_10016CB94();
  sub_1001B328C(v8, v9);
  sub_1001B0D08();
  sub_10001E838();
  sub_1001F8198();
  LOWORD(v18) = *v0;
  BYTE2(v18) = *(v0 + 2);
  v19 = 0;
  sub_1001B0D5C();
  sub_10019DD3C();
  sub_10001E6C8();
  sub_1001F7D58();
  if (!v1)
  {
    sub_1001379E4(1);
    sub_1001F7D88();
    LOBYTE(v18) = *(v0 + 24);
    v19 = 2;
    sub_1001B0DB0();
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
    sub_1001379E4(3);
    sub_1001F7D18();
    sub_1001379E4(4);
    sub_1001F7D88();
    v18 = *(v0 + 64);
    v19 = 5;
    v10 = sub_10016CB94();
    sub_1000183C4(v10, v11);
    sub_1001B1C64(&qword_1002ACB30, &qword_1002ACA10, qword_1001FEBF0);
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
    sub_1001379E4(6);
    sub_1001F7D18();
    sub_1001379E4(7);
    sub_1001F7D18();
    sub_1001379E4(8);
    sub_1001F7D38();
    sub_1001379E4(9);
    sub_1001F7D18();
    sub_1001379E4(10);
    sub_1001F7D18();
    sub_1001379E4(11);
    sub_1001F7D18();
    sub_1001379E4(12);
    sub_1001F7D18();
    LOBYTE(v18) = 13;
    sub_10001E6C8();
    sub_1001F7D28();
    v18 = *(v0 + 192);
    v19 = 14;
    v12 = sub_10016CB94();
    sub_1000183C4(v12, v13);
    sub_1001B1CB8(&qword_1002BB1C8, &qword_1002BB1C0, &qword_1002166E0);
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
    LOBYTE(v18) = *(v0 + 200);
    v19 = 15;
    sub_1001B0E58();
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
    v18 = *(v0 + 208);
    v19 = 16;
    v14 = sub_10016CB94();
    sub_1000183C4(v14, v15);
    sub_1001B3248();
    sub_1001B1CB8(v16, v17, &qword_1002166E8);
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
    v18 = *(v0 + 216);
    v19 = 17;
    sub_1000183C4(&qword_1002BB1F8, &unk_1002166F0);
    sub_1001B1CB8(&qword_1002BB200, &qword_1002BB1F8, &unk_1002166F0);
    sub_10019DD3C();
    sub_10001E6C8();
    sub_1001F7D58();
  }

  (*(v4 + 8))(v7, v2);
  sub_1000DBF60();
}

unint64_t sub_1001B0BC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B048C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1001B0BF8()
{
  v1 = sub_100056690();
  result = sub_1001B04EC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001B0C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B04E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B0C50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B04E4();
  *a1 = result;
  return result;
}

uint64_t sub_1001B0C78(uint64_t a1)
{
  v2 = sub_1001B0D08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0CB4(uint64_t a1)
{
  v2 = sub_1001B0D08();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001B0D08()
{
  result = qword_1002BB1A8;
  if (!qword_1002BB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1A8);
  }

  return result;
}

unint64_t sub_1001B0D5C()
{
  result = qword_1002BB1B0;
  if (!qword_1002BB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1B0);
  }

  return result;
}

unint64_t sub_1001B0DB0()
{
  result = qword_1002BB1B8;
  if (!qword_1002BB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1B8);
  }

  return result;
}

unint64_t sub_1001B0E04()
{
  result = qword_1002BB1D0;
  if (!qword_1002BB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1D0);
  }

  return result;
}

unint64_t sub_1001B0E58()
{
  result = qword_1002BB1D8;
  if (!qword_1002BB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1D8);
  }

  return result;
}

unint64_t sub_1001B0EAC()
{
  result = qword_1002BB1F0;
  if (!qword_1002BB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB1F0);
  }

  return result;
}

unint64_t sub_1001B0F00()
{
  result = qword_1002BB208;
  if (!qword_1002BB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB208);
  }

  return result;
}

uint64_t sub_1001B0FBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001B0FF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001B33C8(0, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B103C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 17))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1001B1084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaymentSheetInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PaymentSheetInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
        JUMPOUT(0x1001B125CLL);
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001B1294(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1001B12A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 5))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001B12E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001B1340(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 33))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (*(a1 + 32) & 0xC | (*(a1 + 32) >> 4) & 3) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1001B1388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * ((((-a2 >> 2) & 3) - 4 * a2) & 0xF);
    }
  }

  return result;
}

uint64_t sub_1001B1424(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001B1478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001B14F4(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if ((a2 + 0xFFFF) < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }

      return (*a1 | (v4 << 16)) - 0xFFFF;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  return 0;
}

uint64_t sub_1001B1564(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        return result;
      case 2:
        *(result + 2) = v6;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 2) = v6;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *(result + 2) = 0;
      break;
    case 2:
      *(result + 2) = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001B1618);
    case 4:
      *(result + 2) = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001B1650()
{
  result = qword_1002BB230;
  if (!qword_1002BB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB230);
  }

  return result;
}

unint64_t sub_1001B16A4()
{
  result = qword_1002BB238;
  if (!qword_1002BB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB238);
  }

  return result;
}

unint64_t sub_1001B1700()
{
  result = qword_1002BB240;
  if (!qword_1002BB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB240);
  }

  return result;
}

unint64_t sub_1001B1758()
{
  result = qword_1002BB248;
  if (!qword_1002BB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB248);
  }

  return result;
}

unint64_t sub_1001B17B0()
{
  result = qword_1002BB250;
  if (!qword_1002BB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB250);
  }

  return result;
}

unint64_t sub_1001B1804()
{
  result = qword_1002BB260;
  if (!qword_1002BB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB260);
  }

  return result;
}

unint64_t sub_1001B1858()
{
  result = qword_1002BB268;
  if (!qword_1002BB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB268);
  }

  return result;
}

unint64_t sub_1001B18AC()
{
  result = qword_1002BB270;
  if (!qword_1002BB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB270);
  }

  return result;
}

unint64_t sub_1001B1900()
{
  result = qword_1002BB278;
  if (!qword_1002BB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB278);
  }

  return result;
}

unint64_t sub_1001B1954()
{
  result = qword_1002BB288;
  if (!qword_1002BB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB288);
  }

  return result;
}

unint64_t sub_1001B19A8()
{
  result = qword_1002BB290;
  if (!qword_1002BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB290);
  }

  return result;
}

unint64_t sub_1001B19FC()
{
  result = qword_1002BB2A0;
  if (!qword_1002BB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2A0);
  }

  return result;
}

unint64_t sub_1001B1A50()
{
  result = qword_1002BB2A8;
  if (!qword_1002BB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2A8);
  }

  return result;
}

double sub_1001B1AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  switch((a5 >> 4) & 3)
  {
    case 1u:

      goto LABEL_6;
    case 2u:
    case 3u:
LABEL_6:

      break;
    default:
      v6 = a5;

      result = sub_1000C89E4(a3, a4, v6);
      break;
  }

  return result;
}

unint64_t sub_1001B1B58()
{
  result = qword_1002BB2B0;
  if (!qword_1002BB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2B0);
  }

  return result;
}

uint64_t sub_1001B1BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  switch((a5 >> 4) & 3)
  {
    case 1u:

      goto LABEL_6;
    case 2u:
    case 3u:
LABEL_6:

      break;
    default:
      v6 = a5;

      result = sub_1000C89CC(a3, a4, v6);
      break;
  }

  return result;
}

uint64_t sub_1001B1C64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001B33C8(0, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B1CB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001B33C8(0, a2, a3);
    v3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001B1D28()
{
  result = qword_1002BB2D8;
  if (!qword_1002BB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2D8);
  }

  return result;
}

unint64_t sub_1001B1D7C()
{
  result = qword_1002BB2E0;
  if (!qword_1002BB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2E0);
  }

  return result;
}

unint64_t sub_1001B1DD0()
{
  result = qword_1002BB2E8;
  if (!qword_1002BB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2E8);
  }

  return result;
}

unint64_t sub_1001B1E24()
{
  result = qword_1002BB2F0;
  if (!qword_1002BB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2F0);
  }

  return result;
}

unint64_t sub_1001B1E78()
{
  result = qword_1002BB2F8;
  if (!qword_1002BB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB2F8);
  }

  return result;
}

unint64_t sub_1001B1ECC()
{
  result = qword_1002BB300;
  if (!qword_1002BB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB300);
  }

  return result;
}

unint64_t sub_1001B1F20()
{
  result = qword_1002BB308;
  if (!qword_1002BB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB308);
  }

  return result;
}

unint64_t sub_1001B1F74()
{
  result = qword_1002BB320;
  if (!qword_1002BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB320);
  }

  return result;
}

unint64_t sub_1001B1FC8()
{
  result = qword_1002BB328;
  if (!qword_1002BB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB328);
  }

  return result;
}

_BYTE *sub_1001B201C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1001B20E8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001B2128(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x1001B21F4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001B2294(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1001B2360);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001B23A0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return static _UInt24.min.getter();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_100006BB8(a1);
}

_BYTE *sub_1001B23E8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001B2484);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001B24BC()
{
  result = qword_1002BB330;
  if (!qword_1002BB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB330);
  }

  return result;
}

unint64_t sub_1001B2514()
{
  result = qword_1002BB338;
  if (!qword_1002BB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB338);
  }

  return result;
}

unint64_t sub_1001B256C()
{
  result = qword_1002BB340;
  if (!qword_1002BB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB340);
  }

  return result;
}

unint64_t sub_1001B25C4()
{
  result = qword_1002BB348;
  if (!qword_1002BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB348);
  }

  return result;
}

unint64_t sub_1001B261C()
{
  result = qword_1002BB350;
  if (!qword_1002BB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB350);
  }

  return result;
}

unint64_t sub_1001B2674()
{
  result = qword_1002BB358;
  if (!qword_1002BB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB358);
  }

  return result;
}

unint64_t sub_1001B26CC()
{
  result = qword_1002BB360;
  if (!qword_1002BB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB360);
  }

  return result;
}

unint64_t sub_1001B2724()
{
  result = qword_1002BB368;
  if (!qword_1002BB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB368);
  }

  return result;
}

unint64_t sub_1001B277C()
{
  result = qword_1002BB370;
  if (!qword_1002BB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB370);
  }

  return result;
}

unint64_t sub_1001B27D4()
{
  result = qword_1002BB378;
  if (!qword_1002BB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB378);
  }

  return result;
}

unint64_t sub_1001B282C()
{
  result = qword_1002BB380;
  if (!qword_1002BB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB380);
  }

  return result;
}

unint64_t sub_1001B2884()
{
  result = qword_1002BB388;
  if (!qword_1002BB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB388);
  }

  return result;
}

unint64_t sub_1001B28DC()
{
  result = qword_1002BB390;
  if (!qword_1002BB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB390);
  }

  return result;
}

unint64_t sub_1001B2934()
{
  result = qword_1002BB398;
  if (!qword_1002BB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB398);
  }

  return result;
}

unint64_t sub_1001B298C()
{
  result = qword_1002BB3A0;
  if (!qword_1002BB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3A0);
  }

  return result;
}

unint64_t sub_1001B29E4()
{
  result = qword_1002BB3A8;
  if (!qword_1002BB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3A8);
  }

  return result;
}

unint64_t sub_1001B2A3C()
{
  result = qword_1002BB3B0;
  if (!qword_1002BB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3B0);
  }

  return result;
}

unint64_t sub_1001B2A94()
{
  result = qword_1002BB3B8;
  if (!qword_1002BB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3B8);
  }

  return result;
}

unint64_t sub_1001B2AEC()
{
  result = qword_1002BB3C0;
  if (!qword_1002BB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3C0);
  }

  return result;
}

unint64_t sub_1001B2B40()
{
  result = qword_1002BB3C8;
  if (!qword_1002BB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3C8);
  }

  return result;
}

unint64_t sub_1001B2B94()
{
  result = qword_1002BB3D0;
  if (!qword_1002BB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3D0);
  }

  return result;
}

unint64_t sub_1001B2BE8()
{
  result = qword_1002BB3D8;
  if (!qword_1002BB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3D8);
  }

  return result;
}

unint64_t sub_1001B2C3C()
{
  result = qword_1002BB3E0;
  if (!qword_1002BB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3E0);
  }

  return result;
}

unint64_t sub_1001B2C90()
{
  result = qword_1002BB3E8;
  if (!qword_1002BB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3E8);
  }

  return result;
}

unint64_t sub_1001B2CE4()
{
  result = qword_1002BB3F0;
  if (!qword_1002BB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB3F0);
  }

  return result;
}

unint64_t sub_1001B2D38()
{
  result = qword_1002BB400;
  if (!qword_1002BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB400);
  }

  return result;
}

unint64_t sub_1001B2D8C()
{
  result = qword_1002BB410;
  if (!qword_1002BB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB410);
  }

  return result;
}

unint64_t sub_1001B2DE0()
{
  result = qword_1002BB420;
  if (!qword_1002BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB420);
  }

  return result;
}

unint64_t sub_1001B2E34()
{
  result = qword_1002BB430;
  if (!qword_1002BB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB430);
  }

  return result;
}

_BYTE *sub_1001B2E98(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001B2F64);
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

unint64_t sub_1001B2FA0()
{
  result = qword_1002BB438;
  if (!qword_1002BB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB438);
  }

  return result;
}

unint64_t sub_1001B2FF8()
{
  result = qword_1002BB440;
  if (!qword_1002BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB440);
  }

  return result;
}

unint64_t sub_1001B3050()
{
  result = qword_1002BB448;
  if (!qword_1002BB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB448);
  }

  return result;
}

unint64_t sub_1001B30A8()
{
  result = qword_1002BB450;
  if (!qword_1002BB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB450);
  }

  return result;
}

unint64_t sub_1001B3100()
{
  result = qword_1002BB458;
  if (!qword_1002BB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB458);
  }

  return result;
}

unint64_t sub_1001B3158()
{
  result = qword_1002BB460;
  if (!qword_1002BB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB460);
  }

  return result;
}

uint64_t sub_1001B32D4(uint64_t a1)
{

  return sub_1001F7CB8();
}

uint64_t sub_1001B3388()
{

  return sub_1000C89CC(v2, v1, v0);
}

uint64_t sub_1001B33A4()
{
  *(v0 - 65) = 0;

  return sub_1001F7C78();
}

uint64_t sub_1001B33C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100019BC4(a2, a3);
}

uint64_t sub_1001B3410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a15;

  return sub_10004BD98(&a12, v16);
}

uint64_t sub_1001B3430()
{

  return sub_1000183C4(v0, v1);
}

uint64_t sub_1001B3448(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = 47;
  v6._object = 0xE100000000000000;
  if (sub_1001F6D58(v6))
  {
    v5 = sub_1001B35F4();
  }

  else
  {
    v5 = sub_1001B35F4();
    v7._countAndFlagsBits = 47;
    v7._object = 0xE100000000000000;
    sub_1001F6CA8(v7);
  }

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_1001F6CA8(v8);
  return v5;
}

uint64_t sub_1001B34CC(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1000795A8(a1, a2) + 120);

  v3 = *(v2 + 16);

  return v3;
}

void *sub_1001B3528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000E0BC4(a1, a2, v8);
  if (!*(&v8[0] + 1))
  {
    return 0;
  }

  v10 = v8[0];
  v11 = v8[1];
  v12 = v9;
  sub_1000795A8(a3, a4);
  v6 = sub_1000EE848(&v10);

  v13 = v10;
  sub_10001C838(&v13);
  v14 = v11;
  sub_10001C838(&v14);
  v15 = v12;
  sub_10004BDE8(&v15, &qword_1002ACA10, qword_1001FEBF0);
  return v6;
}

uint64_t sub_1001B35F4()
{
  sub_1001F6CA8(*(v0 + 24));
  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  sub_1001F6CA8(v3);
  v1 = *(*(v0 + 48) + 16);

  os_unfair_lock_lock(v1);
  os_unfair_lock_unlock(v1);

  v4._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v4);

  return 0x2F2F3A70747468;
}

int64x2_t sub_1001B36B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AppInformationResponse(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000183C4(&qword_1002ADBC0, &qword_100200900);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v25 - v14);
  v16 = *(a1 + 16);
  if (v16)
  {
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = _swiftEmptyArrayStorage;
    v17 = a1;
    sub_1000340EC(0, v16, 0);
    v18 = v29;
    v19 = *(v9 + 80);
    v25[1] = v17;
    v20 = v17 + ((v19 + 32) & ~v19);
    v21 = *(v9 + 72);
    do
    {
      sub_1001B3F28(v20, v11);
      sub_1001B3F28(v11, v15 + *(v12 + 56));
      *v15 = 1936748641;
      v15[1] = 0xE400000000000000;
      sub_1001B3F8C(v11);
      v15[2] = 0;
      v15[3] = 0xE000000000000000;
      v29 = v18;
      v23 = v18[2];
      v22 = v18[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000340EC((v22 > 1), v23 + 1, 1);
        v18 = v29;
      }

      v18[2] = v23 + 1;
      sub_1001B3FE8(v15, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, &qword_1002ADBC0, &qword_100200900);
      v20 += v21;
      --v16;
    }

    while (v16);

    a3 = v27;
    a4 = v28;
    a2 = v26;
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  *a4 = v18;
  *(a4 + 8) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = a3;
  result = vdupq_n_s64(1uLL);
  *(a4 + 40) = result;
  return result;
}

__n128 sub_1001B3940@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppInformationResponse(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v20._countAndFlagsBits - v9);
  sub_1000593F4(a1, v29);
  sub_10003FC0C(a1, v22);
  memcpy(v28, v22, 0x1A9uLL);
  if (sub_1000419C0(v28) == 1)
  {
    sub_1000B738C(0x2064696C61766E49, 0xEF74736575716572, 6, v29);
    v20 = v29[0];
    v21 = v29[1];
    v11 = LODWORD(v29[2]._countAndFlagsBits) | ((WORD2(v29[2]._countAndFlagsBits) | (BYTE6(v29[2]._countAndFlagsBits) << 16)) << 32);
    v12 = 21;
  }

  else
  {
    memcpy(v29, v28, 0x1A9uLL);
    sub_1001B3C00(v29, v10);
    sub_1001B3F28(v10, v7);
    v13 = sub_1001B3DDC(v29);
    v15 = v14;
    sub_10004BDE8(v22, &qword_1002BB560, &qword_100217CC8);
    sub_1000183C4(qword_1002BB568, qword_100217CD0);
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1001FE9E0;
    sub_1001B3F28(v7, v17 + v16);
    sub_1001B36B8(v17, v13, v15, v23);
    sub_1001B3F8C(v7);
    sub_1001F16C8(v23);
    v20 = *&v23[56];
    v21 = v24;
    v11 = v25 | ((v26 | (v27 << 16)) << 32);
    sub_1001B3F8C(v10);
    v12 = 3;
  }

  type metadata accessor for HTTPResponseHead._Storage();
  v18 = swift_allocObject();
  *(v18 + 32) = v12;
  *(v18 + 40) = 65537;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *a2 = v18;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = v20;
  *(a2 + 40) = v21;
  *(a2 + 24) = result;
  *(a2 + 62) = BYTE6(v11);
  *(a2 + 60) = WORD2(v11);
  *(a2 + 56) = v11;
  return result;
}

uint64_t sub_1001B3C00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for AppInformationResponse.PlatformAttributes(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AE68((v3 + 48), *(v3 + 72));
  v12 = a1[2];
  v13 = a1[3];
  v14 = sub_1001B3528(a1[6], a1[7], v12, v13);
  sub_10001AE68((v3 + 48), *(v3 + 72));
  v15 = sub_1001B34CC(v12, v13);
  v17 = v16;
  if (v14)
  {
    v19 = v14[9];
    v18 = v14[10];
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  *a2 = v15;
  a2[1] = v17;
  sub_1001F6258();

  sub_1001B3FE8(v8, v11, &qword_1002ACE98, &qword_1001FF1A0);
  v20 = &v11[*(type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(0) + 20)];
  *v20 = v19;
  *(v20 + 1) = v18;
  v21 = type metadata accessor for AppInformationResponse(0);
  return sub_1001B4050(v11, a2 + *(v21 + 20));
}

uint64_t sub_1001B3DDC(Swift::String *a1)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  sub_1001F77B8(19);

  strcpy(v4, "/v1/catalog/");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  sub_1001F6CA8(*a1);
  v5._countAndFlagsBits = 0x737070612FLL;
  v5._object = 0xE500000000000000;
  sub_1001F6CA8(v5);
  v2 = sub_1001B3448(v4[0], v4[1]);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_1001B3EBC()
{
  v0 = sub_100082E38();
  sub_1000876E4((v0 + 11));

  return swift_deallocClassInstance();
}

uint64_t sub_1001B3F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInformationResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B3F8C(uint64_t a1)
{
  v2 = type metadata accessor for AppInformationResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B3FE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000183C4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001B4050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInformationResponse.PlatformAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1001B40B4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *v6 = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = v6;
      return pthread_setname_np(v4);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return pthread_setname_np(v4);
    }
  }

  return sub_1001F77A8();
}

uint64_t sub_1001B414C(void *a1)
{
  v1 = a1[2];
  v3 = a1[4];
  v2 = a1[5];

  v4 = pthread_self();
  if (v2)
  {

    sub_1001B4250(0x7FFFFFFFFFFFFFFFLL, v3, v2);
    v5 = sub_1001F6BE8();
    v7 = v6;

    sub_1001B40B4(v5, v7);
  }

  type metadata accessor for NIOThread();
  v8 = swift_allocObject();
  v8[3] = v2;
  v8[4] = v4;
  v8[2] = v3;
  v10 = v8;
  v1(&v10);

  return 0;
}

uint64_t sub_1001B4250(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1001F6C68();
    v3 = sub_1001F6DB8();

    return v3;
  }

  return result;
}

uint64_t RemovableChannelHandler.removeHandler(context:removalToken:)(uint64_t a1, uint64_t a2)
{
  v4 = ChannelHandlerContext.handler.getter();
  result = swift_unknownObjectRelease();
  if (v4 == v2)
  {
    return ChannelHandlerContext.leavePipeline(removalToken:)(a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B484C()
{
  v0 = sub_1001F6688();
  sub_10004BC70(v0, qword_1002E6180);
  sub_100019C94(v0, qword_1002E6180);
  return sub_1001F6678();
}

uint64_t sub_1001B4920(uint64_t result)
{
  v3 = *v1;
  if (result)
  {
    if (result == 1)
    {
      result = (*(*(v3 + 872) + 96))(0, *(v3 + 864));
      if (!v2)
      {
        *(v1 + *(*v1 + 896)) = 1;
      }
    }
  }

  else
  {
    result = (*(*(v3 + 872) + 96))(1, *(v3 + 864));
    if (!v2)
    {
      *(v1 + *(*v1 + 904)) = 1;
    }
  }

  return result;
}

char *sub_1001B4A10()
{
  v0 = sub_100029124();

  return v0;
}

BOOL sub_1001B4A70()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_1001B5F8C();
  debugOnly(_:)();
  swift_unknownObjectRelease();

  return sub_100028DCC();
}

uint64_t sub_1001B4B10()
{
  sub_10002E27C();

  return sub_1001CB56C(v1, v1, sub_1001B5EB4, v0, sub_1001B5ED0, v0, sub_1001B5EEC, v0) & 0x101;
}

uint64_t sub_1001B4B94()
{
  v2 = v1;
  v3 = v0;
  sub_1000287AC();
  swift_getObjectType();
  sub_1001B5F8C();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  v4 = v3 + *(*v3 + 168);
  swift_beginAccess();
  v30 = v4;
  sub_100026064(v4, v31);
  v5 = v36;
  sub_10001AE68(v31, v35);
  v6 = sub_100028ED4();
  v7 = (*(v5 + 8))(v6);
  result = sub_100019CCC(v31);
  v9 = *v0;
  v26 = *(*v0 + 176);
  v27 = *(v0 + v26);
  if (v27)
  {
    v10 = 0;
    v28 = *(v9 + 152);
    v29 = *(v9 + 896);
    v11 = 1;
    while (1)
    {
      if (!sub_1001B4A70() || (*(v3 + v29) & 1) != 0)
      {
        goto LABEL_27;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_10005EFF0(*(v7 + 16));

        v7 = v12;
      }

      v13 = *(v7 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v13 << 32, v13);

        LODWORD(v13) = *(v14 + 16);
        v7 = v14;
      }

      swift_beginAccess();
      v15 = sub_1001B5C8C(*(v7 + 24), *(v7 + 24) + v13, v3);
      if (v2)
      {
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_26;
      }

      v17 = v15;
      if (v15 <= 0)
      {
        goto LABEL_24;
      }

      v38 = 0;
      swift_beginAccess();
      v18 = *(v30 + 24);
      v19 = *(v30 + 32);
      sub_10004BD98(v30, v18);
      v20 = (*(v19 + 16))(v17, v18, v19);
      swift_endAccess();
      *(v3 + v28) = 0;
      sub_100028ED8();
      v31[0] = v7;
      v31[1] = v17 << 32;
      v34 = 0;
      v33 = 0;
      v32 = v13;
      v37 = 0;
      swift_getObjectType();
      debugOnly(_:)();
      if (sub_10009D370())
      {

        sub_10009E13C();
      }

      else
      {
      }

      result = sub_100034310(v31);
      if (v13 < v17)
      {
        break;
      }

      if (v13 != v17)
      {
        goto LABEL_29;
      }

      if ((v20 & 1) != 0 && v11 < *(v3 + v26))
      {
        sub_100026064(v30, v31);
        v21 = v36;
        sub_10001AE68(v31, v35);
        v22 = sub_100028ED4();
        v23 = (*(v21 + 8))(v22);

        sub_100019CCC(v31);
        v7 = v23;
      }

      v2 = v38;
      if (v27 == v11)
      {
LABEL_29:

        v10 = 1;
        return v10 & 1;
      }

      v10 = 1;
      if (__CFADD__(v11++, 1))
      {
        __break(1u);
LABEL_24:
        if (*(v3 + v29) != 1)
        {
LABEL_27:
          sub_10002D678();
          sub_10002E0D8();
          swift_allocError();
          sub_10002E020(v25, 6);
          swift_willThrow();
        }

        *(v3 + v28) = 0;
        sub_10002B6BC();
LABEL_26:

        return v10 & 1;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1001B4FE4()
{
  sub_10002E27C();
  v2 = *(v0 + *(v1 + 912));
  swift_beginAccess();
  return (*(v2 + 48) & 1) == 0;
}

void sub_1001B503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *(*v4 + 904)) == 1)
  {
    if (a2)
    {
      sub_10002D678();
      sub_10002E0D8();
      v6 = swift_allocError();
      sub_10002E020(v7, 4);
      swift_errorRetain();
      sub_1000A13B0(v6);
    }
  }

  else
  {
    type metadata accessor for BaseStreamSocketChannel(0, *(*v4 + 864), *(*v4 + 872), a4);
    ChannelCore.unwrapData<A>(_:as:)(&type metadata for IOData, &v14);
    sub_10002E30C();
    v8 = sub_1001B5F08();
    if (sub_1001CBC28(v8, v9, v10, a2))
    {
      v11 = sub_1001B5F08();
      sub_100034300(v11);
    }

    else
    {
      sub_100028ED8();
      swift_getObjectType();
      debugOnly(_:)();
      if (sub_10009D370())
      {
        sub_10009E30C();
        v12 = sub_1001B5F08();
        sub_100034300(v12);
      }

      else
      {
        v13 = sub_1001B5F08();
        sub_100034300(v13);
      }
    }
  }
}

uint64_t sub_1001B5294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  __chkstk_darwin(v8);
  sub_10002DFFC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1001B5F68();
  swift_getObjectType();
  sub_1001B5F8C();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  if (sub_1001B4A70())
  {
    v12 = (*(v10 + 16))(v5, a1, a3);
    v15 = sub_10018104C(v12, v13, v14, &type metadata for ChannelOptions.Types.AllowRemoteHalfClosureOption);
    if (v15)
    {
      v18 = sub_1001B5F18();
      v20 = v19(v18);
      sub_1001B5F2C(v20, v21, v22, &type metadata for Bool);
      sub_10002E30C();
      *(v4 + *(v23 + 888)) = v24;
    }

    else
    {
      v27 = sub_10018104C(v15, v16, v17, &type metadata for ChannelOptions.Types.WriteSpinOption);
      if (v27)
      {
        sub_10002E30C();
        v31 = *(v4 + *(v30 + 912));
        v32 = sub_1001B5F18();
        v34 = v33(v32);
        sub_1001B5F2C(v34, v35, v36, &type metadata for UInt);
        *(v31 + 128) = v46;
      }

      else if (sub_10018104C(v27, v28, v29, &type metadata for ChannelOptions.Types.WriteBufferWaterMarkOption))
      {
        sub_10002E30C();
        v38 = *(v4 + *(v37 + 912));
        v39 = sub_1001B5F18();
        v41 = v40(v39);
        sub_1001B5F2C(v41, v42, v43, &type metadata for ChannelOptions.Types.WriteBufferWaterMark);
        *(v38 + 96) = v46;
      }

      else
      {
        sub_100029D04(a1, a2, a3, a4);
      }
    }

    return (*(v10 + 8))(v5, a3);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v25, 2);
    return swift_willThrow();
  }
}

uint64_t sub_1001B5574(uint64_t a1, uint64_t a2)
{
  sub_10002DFFC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1001B5F68();
  swift_getObjectType();
  sub_1001B5F8C();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  if (sub_1001B4A70())
  {
    v9 = (*(v7 + 16))(v3, a1, a2);
    v12 = sub_10018104C(v9, v10, v11, &type metadata for ChannelOptions.Types.AllowRemoteHalfClosureOption);
    if (v12 || (v12 = sub_10018104C(v12, v13, v14, &type metadata for ChannelOptions.Types.WriteSpinOption), v12) || (v12 = sub_10018104C(v12, v13, v14, &type metadata for ChannelOptions.Types.WriteBufferWaterMarkOption), v12))
    {
      sub_1001B5F4C(v12, v13, v14, &protocol requirements base descriptor for ChannelOption, &associated type descriptor for ChannelOption.Value);
      swift_dynamicCast();
    }

    else
    {
      sub_10002A5F0(a1, a2);
    }

    return (*(v7 + 8))(v3, a2);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v15, 2);
    return swift_willThrow();
  }
}

uint64_t sub_1001B57F4()
{
  sub_10002E27C();
  if (*(v0 + *(v1 + 896)))
  {
    return 0;
  }

  else
  {
    return sub_10002A97C();
  }
}

void sub_1001B5828()
{
  sub_10002E27C();
  if ((*(v0 + *(v1 + 896)) & 1) == 0)
  {
    sub_10002B4DC();
  }
}

uint64_t sub_1001B5858(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v3;
  if (!a2)
  {
    if (*(v3 + *(v7 + 904)) == 1)
    {
      if (!a3)
      {
        return result;
      }

      sub_10002D678();
      sub_10002E0D8();
      v10 = swift_allocError();
      v11 = 4;
      goto LABEL_9;
    }

    (*(v7 + 1016))(0);
    sub_1001CBB4C(v6, 0);
    sub_10002B2BC();
    if (a3)
    {
      sub_1000A13B0(0);
    }

    sub_100028ED8();
    v18 = &type metadata for ChannelEvent;
    LOBYTE(v16) = 1;
LABEL_31:
    ChannelPipeline.fireUserInboundEventTriggered(_:)();

    return sub_100019CCC(&v16);
  }

  if (a2 == 1)
  {
    v8 = *(v7 + 896);
    if (*(v4 + v8) == 1)
    {
      if (!a3)
      {
        return result;
      }

      sub_10002D678();
      sub_10002E0D8();
      v10 = swift_allocError();
      v11 = 5;
LABEL_9:
      sub_10002E020(v9, v11);
      swift_errorRetain();
      sub_1000A13B0(v10);
    }

    v19 = result;
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    if (swift_dynamicCast())
    {
      if (v17 == 3 && v16 == 6)
      {
        *(v4 + v8) = 1;

        goto LABEL_28;
      }

      sub_100073868(v16, v17);
    }

    (*(*v4 + 1016))(1);
LABEL_28:
    sub_10002B6BC();
    if (a3)
    {
      sub_1000A13B0(0);
    }

    sub_100028ED8();
    v18 = &type metadata for ChannelEvent;
    LOBYTE(v16) = 0;
    goto LABEL_31;
  }

  v12 = *(v7 + 880);
  if (*(v3 + v12))
  {
    *(v3 + v12) = 0;
    sub_10002D864();
    sub_10002E0D8();
    v13 = swift_allocError();
    *v14 = 1;
    swift_errorRetain();
    sub_1000A13B0(v13);
  }

  return sub_10002B808(v6, 2, a3);
}

uint64_t sub_1001B5BD0()
{
  sub_10002E27C();

  sub_10002E27C();
}

uint64_t sub_1001B5C20()
{
  sub_1001B4A10();

  return swift_deallocClassInstance();
}

uint64_t sub_1001B5C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(*a3 + 872) + 48))(a1, a2, *(*a3 + 864));
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1001B5D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1)
  {
    if (a2 - a1 >= 1)
    {
      return (*(*(*a3 + 872) + 32))(a1, a2, *(*a3 + 864));
    }
  }

  return result;
}

uint64_t sub_1001B5DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(*a3 + 872) + 40))(a1, a2, *(*a3 + 864));
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1001B5E34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __OFSUB__(a3, a2);
  v6 = a3 - a2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    result = (*(*(*a4 + 872) + 72))(result, a2, v6, *(*a4 + 864));
    if (v4)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1001B5F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1001B5F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1001B5F68()
{

  return sub_1000287AC();
}

uint64_t sub_1001B5F9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x444970756F7267 && a2 == 0xE700000000000000;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65736E6F43646964 && a2 == 0xEA0000000000746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001B60B4(char a1)
{
  if (!a1)
  {
    return 0x4449656C646E7562;
  }

  if (a1 == 1)
  {
    return 0x444970756F7267;
  }

  return 0x65736E6F43646964;
}

uint64_t sub_1001B6110(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BB6E0, &qword_100217F18);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_10001AE68(a1, a1[3]);
  sub_1001B6AC4();
  sub_1001F8198();
  v10[15] = 0;
  sub_1001F7D88();
  if (!v1)
  {
    v10[14] = 1;
    sub_1001F7D88();
    v10[13] = 2;
    sub_1001F7D28();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1001B6290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000183C4(&qword_1002BB6D0, &qword_100217F10);
  sub_10001A278();
  __chkstk_darwin(v5);
  sub_10001AE68(a1, a1[3]);
  sub_1001B6AC4();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  v6 = sub_1001F7C78();
  v15 = v7;
  v13 = sub_1001F7C78();
  v14 = v8;
  v9 = sub_1001F7C18();
  v10 = sub_1001B6D24();
  v11(v10);
  result = sub_100019CCC(a1);
  *a2 = v6;
  *(a2 + 8) = v15;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_1001B64B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B5F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B64DC(uint64_t a1)
{
  v2 = sub_1001B6AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B6518(uint64_t a1)
{
  v2 = sub_1001B6AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001B6554@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001B6290(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}