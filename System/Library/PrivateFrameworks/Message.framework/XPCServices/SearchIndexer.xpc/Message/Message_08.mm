uint64_t sub_10008FCA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEED8, &qword_1004D1DA8);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6EB4(v16);
      result = sub_1004A6F14();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10008FEC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEFE0, &qword_1004D1EC8);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1004A6E94();
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1004A6F14();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
      v3 = v28;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100090120(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEF98, &unk_1004D1E80);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1004A6E94();
      if (v18)
      {
        sub_1004A6EB4(0);
        sub_1004A5834();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

      result = sub_1004A6F14();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000903B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEF28, &qword_1004D1DF8);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1004A6E94();
      sub_100014CEC(v18, v19);
      sub_1004A4424();
      result = sub_1004A6F14();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

void sub_1000905EC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v3 - 8);
  v71 = &v68 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v11 = *v1;
  sub_10000C9C0(&qword_1005CEF38, &unk_1004D1E10);
  v12 = sub_1004A6694();
  v13 = v12;
  if (!*(v11 + 16))
  {

LABEL_56:
    *v2 = v13;
    return;
  }

  v69 = v1;
  v14 = 0;
  v15 = *(v11 + 56);
  v72 = v11 + 56;
  v16 = 1 << *(v11 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v77 = v5;
  v76 = v7;
  v75 = v11;
  v74 = v10;
  v73 = v12;
  v78 = v19;
  v79 = v12 + 56;
  while (1)
  {
    if (v18)
    {
      v21 = __clz(__rbit64(v18));
      v81 = (v18 - 1) & v18;
    }

    else
    {
      v22 = v14;
      do
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_58;
        }

        if (v14 >= v19)
        {

          v2 = v69;
          goto LABEL_56;
        }

        v23 = *(v72 + 8 * v14);
        ++v22;
      }

      while (!v23);
      v21 = __clz(__rbit64(v23));
      v81 = (v23 - 1) & v23;
    }

    v24 = *(*(v11 + 48) + 8 * (v21 | (v14 << 6)));
    sub_1004A6E94();
    v25 = *(*v24 + 96);
    swift_beginAccess();
    v83 = v24;
    sub_100095778(v24 + v25, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_100095778(v10, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v80 = *v7;
      v28 = *(v7 + 2);
      v29 = *(v7 + 2);
      sub_1004A6EB4(3uLL);
      sub_1004A6EB4(v28 | (v28 << 32));
      v30 = v29 + 64;
      v31 = 1 << *(v29 + 32);
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & *(v29 + 64);
      v34 = (v31 + 63) >> 6;

      v82 = v29;

      v35 = 0;
      v36 = 0;
      if (v33)
      {
        while (1)
        {
          v37 = v36;
LABEL_27:
          v38 = __clz(__rbit64(v33)) | (v37 << 6);
          v39 = *(*(v82 + 48) + 4 * v38);
          v40 = (*(v82 + 56) + 16 * v38);
          v42 = *v40;
          v41 = v40[1];
          sub_100014CEC(*v40, v41);
          if (v41 >> 60 == 15)
          {
            break;
          }

          v33 &= v33 - 1;
          v86 = v91;
          v87 = v92;
          v88 = v93;
          v85 = v90;
          v84 = v89;
          sub_1004A6EE4(v39);
          sub_1004A4424();
          sub_100014D40(v42, v41);
          v35 ^= sub_1004A6F14();
          v36 = v37;
          if (!v33)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        while (1)
        {
LABEL_24:
          v37 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_59;
          }

          if (v37 >= v34)
          {
            break;
          }

          v33 = *(v30 + 8 * v37);
          ++v36;
          if (v33)
          {
            goto LABEL_27;
          }
        }
      }

      sub_1004A6EB4(v35);

LABEL_44:

      v7 = v76;
      v11 = v75;
      v10 = v74;
      v13 = v73;
    }

    else
    {
      sub_1004A6EB4(1uLL);
    }

LABEL_45:
    sub_1000957E0(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
    v60 = sub_1004A6F14();
    v61 = -1 << *(v13 + 32);
    v62 = v60 & ~v61;
    v63 = v62 >> 6;
    if (((-1 << v62) & ~*(v79 + 8 * (v62 >> 6))) == 0)
    {
      v64 = 0;
      v65 = (63 - v61) >> 6;
      while (++v63 != v65 || (v64 & 1) == 0)
      {
        v66 = v63 == v65;
        if (v63 == v65)
        {
          v63 = 0;
        }

        v64 |= v66;
        v67 = *(v79 + 8 * v63);
        if (v67 != -1)
        {
          v20 = __clz(__rbit64(~v67)) + (v63 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_60;
    }

    v20 = __clz(__rbit64((-1 << v62) & ~*(v79 + 8 * (v62 >> 6)))) | v62 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v79 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v13 + 48) + 8 * v20) = v83;
    ++*(v13 + 16);
    v19 = v78;
    v18 = v81;
  }

  if (!EnumCaseMultiPayload)
  {
    v27 = v71;
    sub_100025FDC(v7, v71, &unk_1005D91B0, &unk_1004CF400);
    sub_1004A6EB4(0);

    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_45;
  }

  v70 = *v7;
  v43 = *(v7 + 2);
  v44 = *(v7 + 2);
  sub_1004A6EB4(2uLL);
  sub_1004A6EB4(v43 | (v43 << 32));
  v45 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v44 + 64);
  v49 = (v46 + 63) >> 6;

  v80 = v44;

  v50 = 0;
  for (i = 0; v48; v50 = sub_1004A6F14() ^ v82)
  {
    v82 = v50;
    v52 = i;
LABEL_39:
    v53 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v54 = v53 | (v52 << 6);
    v55 = *(*(v80 + 48) + 4 * v54);
    v56 = (*(v80 + 56) + 24 * v54);
    v57 = *v56;
    v59 = *(v56 + 1);
    v58 = *(v56 + 2);
    sub_100014CEC(v59, v58);
    v86 = v91;
    v87 = v92;
    v88 = v93;
    v85 = v90;
    v84 = v89;
    sub_1004A6EE4(v55);
    sub_1004A6EB4(v57);
    sub_100014CEC(v59, v58);
    sub_1004A4424();
    sub_100014D40(v59, v58);
    sub_100014D40(v59, v58);
  }

  while (1)
  {
    v52 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v52 >= v49)
    {

      sub_1004A6EB4(v50);

      goto LABEL_44;
    }

    v48 = *(v45 + 8 * v52);
    ++i;
    if (v48)
    {
      v82 = v50;
      i = v52;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_100090DDC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v3 - 8);
  v69 = v68 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v68 - v10;
  v12 = *v1;
  sub_10000C9C0(&qword_1005CF0C8, &qword_1004D1FD0);
  v13 = sub_1004A6694();
  v14 = v13;
  if (!*(v12 + 16))
  {

LABEL_57:
    *v2 = v14;
    return;
  }

  v68[0] = v2;
  v15 = 0;
  v16 = *(v12 + 56);
  v70 = v12 + 56;
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v75 = v5;
  v74 = v6;
  v73 = v8;
  v72 = v12;
  v71 = v11;
  v78 = v13;
  v76 = v20;
  v77 = v13 + 56;
  while (1)
  {
    if (v19)
    {
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
    }

    else
    {
      v23 = v15;
      do
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_59;
        }

        if (v15 >= v20)
        {

          v2 = v68[0];
          goto LABEL_57;
        }

        v24 = *(v70 + 8 * v15);
        ++v23;
      }

      while (!v24);
      v22 = __clz(__rbit64(v24));
      v19 = (v24 - 1) & v24;
    }

    v25 = *(v6 + 72);
    sub_100095778(*(v12 + 48) + v25 * (v22 | (v15 << 6)), v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1004A6E94();
    sub_100095778(v11, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_1004A6EB4(1uLL);
      goto LABEL_46;
    }

    v79 = v25;
    v80 = v19;
    v81 = *v8;
    v28 = *(v8 + 2);
    v29 = *(v8 + 2);
    sub_1004A6EB4(3uLL);
    sub_1004A6EB4(v28 | (v28 << 32));
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v82 = v29;

    v35 = 0;
    v36 = 0;
    if (v33)
    {
      while (1)
      {
        v37 = v36;
LABEL_27:
        v38 = __clz(__rbit64(v33)) | (v37 << 6);
        v39 = *(*(v82 + 48) + 4 * v38);
        v40 = (*(v82 + 56) + 16 * v38);
        v41 = *v40;
        v42 = v40[1];
        sub_100014CEC(*v40, v42);
        if (v42 >> 60 == 15)
        {
          break;
        }

        v33 &= v33 - 1;
        v85 = v90;
        v86 = v91;
        v87 = v92;
        v83 = v88;
        v84 = v89;
        sub_1004A6EE4(v39);
        sub_1004A4424();
        sub_100014D40(v41, v42);
        v35 ^= sub_1004A6F14();
        v36 = v37;
        if (!v33)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_24:
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v37 >= v34)
        {
          break;
        }

        v33 = *(v30 + 8 * v37);
        ++v36;
        if (v33)
        {
          goto LABEL_27;
        }
      }
    }

    sub_1004A6EB4(v35);

LABEL_44:

    v6 = v74;
    v8 = v73;
    v12 = v72;
    v11 = v71;
LABEL_45:
    v19 = v80;
    v25 = v79;
LABEL_46:
    v60 = sub_1004A6F14();
    v14 = v78;
    v61 = -1 << *(v78 + 32);
    v62 = v60 & ~v61;
    v63 = v62 >> 6;
    if (((-1 << v62) & ~*(v77 + 8 * (v62 >> 6))) == 0)
    {
      v64 = 0;
      v65 = (63 - v61) >> 6;
      while (++v63 != v65 || (v64 & 1) == 0)
      {
        v66 = v63 == v65;
        if (v63 == v65)
        {
          v63 = 0;
        }

        v64 |= v66;
        v67 = *(v77 + 8 * v63);
        if (v67 != -1)
        {
          v21 = __clz(__rbit64(~v67)) + (v63 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_61;
    }

    v21 = __clz(__rbit64((-1 << v62) & ~*(v77 + 8 * (v62 >> 6)))) | v62 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v77 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    sub_100095988(v11, *(v14 + 48) + v21 * v25);
    ++*(v14 + 16);
    v20 = v76;
  }

  v79 = v25;
  v80 = v19;
  if (!EnumCaseMultiPayload)
  {
    v27 = v69;
    sub_100025FDC(v8, v69, &unk_1005D91B0, &unk_1004CF400);
    sub_1004A6EB4(0);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_45;
  }

  v68[1] = *v8;
  v43 = *(v8 + 2);
  v44 = *(v8 + 2);
  sub_1004A6EB4(2uLL);
  sub_1004A6EB4(v43 | (v43 << 32));
  v45 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v44 + 64);
  v49 = (v46 + 63) >> 6;
  v81 = v44;

  v50 = 0;
  for (i = 0; v48; v50 = sub_1004A6F14() ^ v82)
  {
    v82 = v50;
    v52 = i;
LABEL_39:
    v53 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v54 = v53 | (v52 << 6);
    v55 = *(*(v81 + 48) + 4 * v54);
    v56 = (*(v81 + 56) + 24 * v54);
    v57 = *v56;
    v59 = *(v56 + 1);
    v58 = *(v56 + 2);
    sub_100014CEC(v59, v58);
    v85 = v90;
    v86 = v91;
    v87 = v92;
    v83 = v88;
    v84 = v89;
    sub_1004A6EE4(v55);
    sub_1004A6EB4(v57);
    sub_100014CEC(v59, v58);
    sub_1004A4424();
    sub_100014D40(v59, v58);
    sub_100014D40(v59, v58);
  }

  while (1)
  {
    v52 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v52 >= v49)
    {

      sub_1004A6EB4(v50);

      goto LABEL_44;
    }

    v48 = *(v45 + 8 * v52);
    ++i;
    if (v48)
    {
      v82 = v50;
      i = v52;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_100091570(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10000C9C0(a2, a3);
  result = sub_1004A6694();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 4 * (v15 | (v8 << 6)));
      sub_1004A6E94();
      sub_1004A6EE4(v18);
      result = sub_1004A6F14();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 4 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_100091788(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEF68, &qword_1004D1E48);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_100014B90(*(v3 + 48) + 48 * (v16 | (v6 << 6)), v26);
      sub_1004A6E94();
      sub_1004A6664();
      result = sub_1004A6F14();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 48 * v12);
      v14 = v26[0];
      v15 = v26[2];
      v13[1] = v26[1];
      v13[2] = v15;
      *v13 = v14;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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
    *v2 = v5;
  }

  return result;
}

char *sub_1000919C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001355F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000919E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091A08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091A28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091A48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10013595C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091A68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091A88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091AA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135BFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091AC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135C10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091AE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091B08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091B28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091B48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135DA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091B68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135DB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091B88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091BA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135DE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091BC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135DF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091BE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135E08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091C08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135E1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091C28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091C48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10013619C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091C68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001362A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091C88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001362C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091CA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001362EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091CC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001363F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091CE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091D08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091D28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136638(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091D48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10013664C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091D68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091D88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091DA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091DC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091DE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001367AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091E08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001367D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091E28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001368F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091E48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001369F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091E68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136A08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091E88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091EA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091EC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136A54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091EE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091F08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136A90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091F28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136BAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100091F48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091F68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136DE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091F88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136DF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091FA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136E08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091FC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136E1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100091FE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136E30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092008(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100136F50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092028(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10013705C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092048(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092068(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137174(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092088(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000920A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10013729C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000920C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001373E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000920E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100135934(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092108(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137530(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092128(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092148(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100092168(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137668(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100092188(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10013768C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000921A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001377F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000921C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137820(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000921E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092208(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137A38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092228(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137A4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092248(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092268(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092288(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000922A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137C9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000922C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137DE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000922E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137DFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092308(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137E10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092328(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092348(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100137F20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092368(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092388(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000923A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138248(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000923C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138370(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000923E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092408(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138694(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100092428(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001387CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092448(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138914(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092468(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100092488(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000924A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000924C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000924E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138E94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100092508(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100138FA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100092528(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v11 = __clz(__rbit64(v8)) | (v4 << 6);
    v12 = *(*(a2 + 48) + 8 * v11);
    v13 = *(a2 + 56) + 12 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    sub_1004A6EB4(v12);
    if (v15)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EE4(v14);
      sub_1004A6EE4(HIDWORD(v14));
    }

    v8 &= v8 - 1;
    v3 ^= sub_1004A6F14();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      sub_1004A6EB4(v3);
      return;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100092678(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = *(*(a2 + 48) + 4 * v10);
      v12 = (*(a2 + 56) + 16 * v10);
      v13 = *v12;
      v14 = v12[1];
      sub_100014CEC(*v12, v14);
      if (v14 >> 60 == 15)
      {
        break;
      }

      v5 &= v5 - 1;
      sub_1004A6EE4(v11);
      sub_1004A4424();
      sub_100014D40(v13, v14);
      v7 ^= sub_1004A6F14();
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    sub_1004A6EB4(v7);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1000927DC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 = sub_1004A6F14() ^ v18)
  {
    v18 = v7;
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = *(*(a2 + 48) + 4 * v11);
    v13 = (*(a2 + 56) + 24 * v11);
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    sub_100014CEC(v15, v16);
    sub_1004A6EE4(v12);
    sub_1004A6EB4(v14);
    sub_100014CEC(v15, v16);
    sub_1004A4424();
    sub_100014D40(v15, v16);
    sub_100014D40(v15, v16);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1004A6EB4(v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      v18 = v7;
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10009296C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_11:
    v10 = __clz(__rbit64(v7)) | (v3 << 6);
    v11 = *(*(a2 + 48) + 4 * v10);
    v12 = *(a2 + 56) + 16 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 9);
    sub_1004A6EE4(v11);
    if (v14)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EB4(v13);
    }

    v7 &= v7 - 1;
    sub_1004A6EB4(v15);
    v2 ^= sub_1004A6F14();
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      sub_1004A6EB4(v2);
      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100092AB8(__int128 *a1, uint64_t a2)
{
  v4 = a1[3];
  v28 = a1[2];
  v29 = v4;
  v30 = *(a1 + 8);
  v5 = a1[1];
  v26 = *a1;
  v27 = v5;
  sub_1004A6F14();
  v23 = a2;
  v6 = 0;
  v7 = 0;
  v10 = *(a2 + 56);
  v9 = a2 + 56;
  v8 = v10;
  v11 = 1 << *(v9 - 24);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  if ((v12 & v8) != 0)
  {
    do
    {
      v24 = v6;
      v15 = v7;
LABEL_9:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = *(v23 + 48) + 24 * (v16 | (v15 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 20);
      v22 = *(v17 + 22);
      sub_1004A6E94();
      v2 = v2 & 0xFF00000000000000 | v20 | (v21 << 32) | (v22 << 48);
      QuotaRoot.hash(into:)(v25, v18, v19, v2);
      v6 = sub_1004A6F14() ^ v24;
    }

    while (v13);
  }

  while (1)
  {
    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      sub_1004A6EB4(v6);
      return;
    }

    v13 = *(v9 + 8 * v15);
    ++v7;
    if (v13)
    {
      v24 = v6;
      v7 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100092C14(__int128 *a1, uint64_t a2)
{
  sub_1004A6F14();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1004A6EB4(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1004A6E94();
        sub_1004A5834();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v7 ^= sub_1004A6F14();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

BOOL _s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (*(a1 + 8))
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_1004A5834();
    v7 = v6;
    if (v5 == sub_1004A5834() && v7 == v8)
    {
    }

    else
    {
      v10 = sub_1004A6D34();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v11 = a2[3];
  if (*(a1 + 24))
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_1004A5834();
    v14 = v13;
    if (v12 == sub_1004A5834() && v14 == v15)
    {
    }

    else
    {
      v16 = sub_1004A6D34();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (sub_10010321C(*(a1 + 32), a2[4]) & 1) == 0 || (sub_10010321C(*(a1 + 40), a2[5]) & 1) == 0 || (sub_10010321C(*(a1 + 48), a2[6]) & 1) == 0 || (sub_10010321C(*(a1 + 56), a2[7]) & 1) == 0 || (sub_10010321C(*(a1 + 64), a2[8]) & 1) == 0 || (sub_10010321C(*(a1 + 72), a2[9]) & 1) == 0 || ((*(a1 + 80) ^ *(a2 + 80)))
  {
    return 0;
  }

  v18 = a2[12];
  if (!*(a1 + 96))
  {
    return !v18;
  }

  if (!v18)
  {
    return 0;
  }

  v19 = sub_1004A5834();
  v21 = v20;
  if (v19 != sub_1004A5834() || v21 != v22)
  {
    v23 = sub_1004A6D34();

    return (v23 & 1) != 0;
  }

  return 1;
}

Swift::Int sub_100092FD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptySetSingleton;
  }

  sub_10000C9C0(&qword_1005CEEA8, &qword_1004E91C0);
  v3 = sub_1004A66B4();
  v4 = 0;
  v5 = v3 + 56;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 16 * v4);
    v8 = *v7;
    v9 = *(v7 + 2);
    sub_1004A6E94();
    sub_1004A6EB4(v9 | (v9 << 32));
    result = sub_1004A6F14();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v5 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    v16 = *(v3 + 48);
    if (((1 << v12) & v14) != 0)
    {
      break;
    }

LABEL_18:
    *(v5 + 8 * v13) = v14 | v15;
    v24 = v16 + 16 * v12;
    *v24 = v8;
    *(v24 + 8) = v9;
    v25 = *(v3 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_23;
    }

    *(v3 + 16) = v27;

LABEL_3:
    if (++v4 == v1)
    {
      return v3;
    }
  }

  v17 = ~v11;
  while (1)
  {
    v18 = (v16 + 16 * v12);
    if ((v18[2] | (v18[2] << 32)) == (v9 | (v9 << 32)))
    {
      v19 = *v18;
      v20 = *(*v18 + 16);
      if (v20 == *(v8 + 16))
      {
        break;
      }
    }

LABEL_6:
    v12 = (v12 + 1) & v17;
    v13 = v12 >> 6;
    v14 = *(v5 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if ((v14 & (1 << v12)) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v20)
  {
    v21 = v19 == v8;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_3;
  }

  v22 = (v19 + 32);
  v23 = (v8 + 32);
  while (v20)
  {
    if (*v22 != *v23)
    {
      goto LABEL_6;
    }

    ++v22;
    ++v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

Swift::Int sub_100093190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CEED8, &qword_1004D1DA8);
    v3 = sub_1004A66B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004A6E94();
      sub_1004A6EB4(v10);
      result = sub_1004A6F14();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_1000932CC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_10008867C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10009333C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_100014CEC(v4, *v2);
      sub_100088A40(v5, v4, v3);
      result = sub_100014D40(v5[0], v5[1]);
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

Swift::Int sub_1000933B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CEFE0, &qword_1004D1EC8);
    v3 = sub_1004A66B4();
    v4 = 0;
    v5 = v3 + 56;
    v23 = v1;
    v24 = a1 + 32;
LABEL_6:
    v6 = (v24 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    sub_1004A6E94();
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    result = sub_1004A6F14();
    v10 = ~(-1 << *(v3 + 32));
    for (i = result & v10; ; i = (i + 1) & v10)
    {
      v12 = *(v5 + 8 * (i >> 6));
      if (((1 << i) & v12) == 0)
      {
        break;
      }

      v13 = sub_1004A5834();
      v15 = v14;
      if (v13 == sub_1004A5834() && v15 == v16)
      {

LABEL_4:

LABEL_5:
        if (++v4 == v23)
        {
          return v3;
        }

        goto LABEL_6;
      }

      v18 = sub_1004A6D34();

      if (v18)
      {
        goto LABEL_4;
      }
    }

    *(v5 + 8 * (i >> 6)) = (1 << i) | v12;
    v19 = (*(v3 + 48) + 16 * i);
    *v19 = v8;
    v19[1] = v7;
    v20 = *(v3 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v3 + 16) = v22;
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

__n128 sub_1000935E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_1004A6E94(), sub_1004A6EB4(1uLL), v3 = sub_1004A6F14(), v4 = -1 << *(a1 + 32), v5 = v3 & ~v4, ((*(a1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(a1 + 48) + 16 * v5 + 8);
      v8 = v7 == 0;
      if (!v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  v9 = Flag.draft.unsafeMutableAddressor();
  v259 = v8;
  if (*(a1 + 16))
  {
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v10 = sub_1004A6F14();
    v11 = -1 << *(a1 + 32);
    v12 = v10 & ~v11;
    if ((*(a1 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      do
      {
        if (*(*(a1 + 48) + 16 * v12 + 8))
        {
          v14 = sub_1004A5834();
          v16 = v15;
          if (v14 == sub_1004A5834() && v16 == v17)
          {

LABEL_23:

            v8 = v259;
LABEL_24:
            v250 = *(v9 + 1);
            v251 = *v9;

            goto LABEL_25;
          }

          v19 = sub_1004A6D34();

          if (v19)
          {
            goto LABEL_23;
          }
        }

        v12 = (v12 + 1) & v13;
      }

      while (((*(a1 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_24;
  }

  v250 = 0;
  v251 = 0;
LABEL_25:
  v20 = Flag.flagged.unsafeMutableAddressor();
  if (*(a1 + 16))
  {
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v21 = sub_1004A6F14();
    v22 = -1 << *(a1 + 32);
    v23 = v21 & ~v22;
    if ((*(a1 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v24 = ~v22;
      do
      {
        if (*(*(a1 + 48) + 16 * v23 + 8))
        {
          v25 = sub_1004A5834();
          v27 = v26;
          if (v25 == sub_1004A5834() && v27 == v28)
          {

LABEL_40:

            v8 = v259;
LABEL_41:
            v248 = *(v20 + 1);
            v249 = *v20;

            goto LABEL_42;
          }

          v30 = sub_1004A6D34();

          if (v30)
          {
            goto LABEL_40;
          }
        }

        v23 = (v23 + 1) & v24;
      }

      while (((*(a1 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_41;
  }

  v248 = 0;
  v249 = 0;
LABEL_42:
  v31 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  if (*(a1 + 16))
  {
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v32 = sub_1004A6F14();
    v33 = -1 << *(a1 + 32);
    v34 = v32 & ~v33;
    if ((*(a1 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
    {
      v35 = ~v33;
      do
      {
        if (*(*(a1 + 48) + 16 * v34 + 8))
        {
          v36 = sub_1004A5834();
          v38 = v37;
          if (v36 == sub_1004A5834() && v38 == v39)
          {

LABEL_57:

            v8 = v259;
LABEL_58:
            v43 = *v31;
            v42 = *(v31 + 1);

            v44 = sub_10008517C(0, 1, 1, _swiftEmptyArrayStorage);
            v46 = *(v44 + 2);
            v45 = *(v44 + 3);
            v258 = v44;
            if (v46 >= v45 >> 1)
            {
              v258 = sub_10008517C((v45 > 1), v46 + 1, 1, v44);
            }

            *(v258 + 2) = v46 + 1;
            v47 = &v258[16 * v46];
            *(v47 + 4) = v43;
            *(v47 + 5) = v42;
            goto LABEL_61;
          }

          v41 = sub_1004A6D34();

          if (v41)
          {
            goto LABEL_57;
          }
        }

        v34 = (v34 + 1) & v35;
      }

      while (((*(a1 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_58;
  }

  v258 = _swiftEmptyArrayStorage;
LABEL_61:
  v48 = Flag.Keyword.unregistered_forwarded.unsafeMutableAddressor();
  if (!*(a1 + 16))
  {
LABEL_92:
    if (v8)
    {
      sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1004CEAA0;
      v76 = *(v48 + 1);
      *(v75 + 32) = *v48;
      *(v75 + 40) = v76;
      v247 = v75;
    }

    else
    {
      v247 = _swiftEmptyArrayStorage;
    }

    goto LABEL_97;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v49 = sub_1004A6F14();
  v50 = a1 + 56;
  v51 = -1 << *(a1 + 32);
  v52 = v49 & ~v51;
  if (((*(a1 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
  {
LABEL_72:

    if (*(a1 + 16))
    {
      goto LABEL_80;
    }

    goto LABEL_91;
  }

  v53 = ~v51;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v52 + 8))
    {
      goto LABEL_64;
    }

    v54 = sub_1004A5834();
    v56 = v55;
    if (v54 == sub_1004A5834() && v56 == v57)
    {
      break;
    }

    v59 = sub_1004A6D34();

    if (v59)
    {
      goto LABEL_75;
    }

LABEL_64:
    v52 = (v52 + 1) & v53;
    if (((*(v50 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
      goto LABEL_72;
    }
  }

LABEL_75:

  v61 = *v48;
  v60 = *(v48 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v258 = sub_10008517C(0, *(v258 + 2) + 1, 1, v258);
  }

  v63 = *(v258 + 2);
  v62 = *(v258 + 3);
  if (v63 >= v62 >> 1)
  {
    v258 = sub_10008517C((v62 > 1), v63 + 1, 1, v258);
  }

  *(v258 + 2) = v63 + 1;
  v64 = &v258[16 * v63];
  *(v64 + 4) = v61;
  *(v64 + 5) = v60;
  if (!*(a1 + 16))
  {
    goto LABEL_91;
  }

LABEL_80:
  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v65 = sub_1004A6F14();
  v66 = -1 << *(a1 + 32);
  v67 = v65 & ~v66;
  if (((*(v50 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
  {
LABEL_90:

LABEL_91:
    v8 = v259;
    goto LABEL_92;
  }

  v68 = ~v66;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v67 + 8))
    {
      goto LABEL_82;
    }

    v69 = sub_1004A5834();
    v71 = v70;
    if (v69 == sub_1004A5834() && v71 == v72)
    {
      break;
    }

    v74 = sub_1004A6D34();

    if (v74)
    {
      goto LABEL_96;
    }

LABEL_82:
    v67 = (v67 + 1) & v68;
    if (((*(v50 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
    {
      goto LABEL_90;
    }
  }

LABEL_96:

  v247 = _swiftEmptyArrayStorage;
  v8 = v259;
LABEL_97:
  v77 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
  if (*(a1 + 16))
  {
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v78 = sub_1004A6F14();
    v79 = -1 << *(a1 + 32);
    v80 = v78 & ~v79;
    if ((*(a1 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
    {
      v81 = ~v79;
      do
      {
        if (*(*(a1 + 48) + 16 * v80 + 8))
        {
          v82 = sub_1004A5834();
          v84 = v83;
          if (v82 == sub_1004A5834() && v84 == v85)
          {

LABEL_112:

            v8 = v259;
LABEL_113:
            sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
            v88 = swift_allocObject();
            *(v88 + 16) = xmmword_1004CEAA0;
            v89 = *(v77 + 1);
            *(v88 + 32) = *v77;
            *(v88 + 40) = v89;
            v246 = v88;

            goto LABEL_114;
          }

          v87 = sub_1004A6D34();

          if (v87)
          {
            goto LABEL_112;
          }
        }

        v80 = (v80 + 1) & v81;
      }

      while (((*(a1 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_113;
  }

  v246 = _swiftEmptyArrayStorage;
LABEL_114:
  v90 = Flag.Keyword.junk.unsafeMutableAddressor();
  if (*(a1 + 16))
  {
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v91 = sub_1004A6F14();
    v92 = -1 << *(a1 + 32);
    v93 = v91 & ~v92;
    if ((*(a1 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93))
    {
      v94 = ~v92;
      do
      {
        if (*(*(a1 + 48) + 16 * v93 + 8))
        {
          v95 = sub_1004A5834();
          v97 = v96;
          if (v95 == sub_1004A5834() && v97 == v98)
          {

LABEL_129:

            v8 = v259;
LABEL_130:
            v102 = *v90;
            v101 = *(v90 + 1);

            v103 = sub_10008517C(0, 1, 1, _swiftEmptyArrayStorage);
            v105 = *(v103 + 2);
            v104 = *(v103 + 3);
            if (v105 >= v104 >> 1)
            {
              v103 = sub_10008517C((v104 > 1), v105 + 1, 1, v103);
            }

            *(v103 + 2) = v105 + 1;
            v257 = v103;
            v106 = &v103[16 * v105];
            *(v106 + 4) = v102;
            *(v106 + 5) = v101;
            goto LABEL_133;
          }

          v100 = sub_1004A6D34();

          if (v100)
          {
            goto LABEL_129;
          }
        }

        v93 = (v93 + 1) & v94;
      }

      while (((*(a1 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_130;
  }

  v257 = _swiftEmptyArrayStorage;
LABEL_133:
  v253 = Flag.Keyword.unregistered_junk.unsafeMutableAddressor();
  if (!*(a1 + 16))
  {
    goto LABEL_151;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v107 = sub_1004A6F14();
  v108 = -1 << *(a1 + 32);
  v109 = v107 & ~v108;
  if (((*(a1 + 56 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
  {
LABEL_144:

    v8 = v259;
    goto LABEL_151;
  }

  v110 = ~v108;
  while (2)
  {
    if (!*(*(a1 + 48) + 16 * v109 + 8))
    {
LABEL_136:
      v109 = (v109 + 1) & v110;
      if (((*(a1 + 56 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
      {
        goto LABEL_144;
      }

      continue;
    }

    break;
  }

  v111 = sub_1004A5834();
  v113 = v112;
  if (v111 != sub_1004A5834() || v113 != v114)
  {
    v116 = sub_1004A6D34();

    if (v116)
    {
      goto LABEL_146;
    }

    goto LABEL_136;
  }

LABEL_146:

  v118 = *v253;
  v117 = *(v253 + 1);

  v8 = v259;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v119 = v257;
  }

  else
  {
    v119 = sub_10008517C(0, *(v257 + 2) + 1, 1, v257);
  }

  v121 = *(v119 + 2);
  v120 = *(v119 + 3);
  if (v121 >= v120 >> 1)
  {
    v119 = sub_10008517C((v120 > 1), v121 + 1, 1, v119);
  }

  *(v119 + 2) = v121 + 1;
  v257 = v119;
  v122 = &v119[16 * v121];
  *(v122 + 4) = v118;
  *(v122 + 5) = v117;
LABEL_151:
  v123 = Flag.Keyword.notJunk.unsafeMutableAddressor();
  if (*(a1 + 16))
  {
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v124 = sub_1004A6F14();
    v125 = -1 << *(a1 + 32);
    v126 = v124 & ~v125;
    if ((*(a1 + 56 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126))
    {
      v127 = ~v125;
      do
      {
        if (*(*(a1 + 48) + 16 * v126 + 8))
        {
          v128 = sub_1004A5834();
          v130 = v129;
          if (v128 == sub_1004A5834() && v130 == v131)
          {

LABEL_166:

            v8 = v259;
LABEL_167:
            v135 = *v123;
            v134 = *(v123 + 1);

            v136 = sub_10008517C(0, 1, 1, _swiftEmptyArrayStorage);
            v138 = *(v136 + 2);
            v137 = *(v136 + 3);
            if (v138 >= v137 >> 1)
            {
              v136 = sub_10008517C((v137 > 1), v138 + 1, 1, v136);
            }

            *(v136 + 2) = v138 + 1;
            v256 = v136;
            v139 = &v136[16 * v138];
            *(v139 + 4) = v135;
            *(v139 + 5) = v134;
            goto LABEL_170;
          }

          v133 = sub_1004A6D34();

          if (v133)
          {
            goto LABEL_166;
          }
        }

        v126 = (v126 + 1) & v127;
      }

      while (((*(a1 + 56 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_167;
  }

  v256 = _swiftEmptyArrayStorage;
LABEL_170:
  v140 = Flag.Keyword.unregistered_notJunk.unsafeMutableAddressor();
  if (!*(a1 + 16))
  {
LABEL_200:
    v158 = v253;
    if (v8)
    {
LABEL_201:
      v170 = *v158;
      v169 = *(v158 + 1);

      v171 = sub_10008517C(0, 1, 1, _swiftEmptyArrayStorage);
      v173 = *(v171 + 2);
      v172 = *(v171 + 3);
      if (v173 >= v172 >> 1)
      {
        v171 = sub_10008517C((v172 > 1), v173 + 1, 1, v171);
      }

      *(v171 + 2) = v173 + 1;
      v174 = &v171[16 * v173];
      *(v174 + 4) = v170;
      *(v174 + 5) = v169;
      goto LABEL_208;
    }

LABEL_205:
    v171 = _swiftEmptyArrayStorage;
    goto LABEL_208;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v141 = sub_1004A6F14();
  v142 = a1 + 56;
  v143 = -1 << *(a1 + 32);
  v144 = v141 & ~v143;
  if (((*(a1 + 56 + ((v144 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v144) & 1) == 0)
  {
LABEL_181:

    goto LABEL_188;
  }

  v145 = ~v143;
  while (2)
  {
    if (!*(*(a1 + 48) + 16 * v144 + 8))
    {
LABEL_173:
      v144 = (v144 + 1) & v145;
      if (((*(v142 + ((v144 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v144) & 1) == 0)
      {
        goto LABEL_181;
      }

      continue;
    }

    break;
  }

  v146 = sub_1004A5834();
  v148 = v147;
  if (v146 != sub_1004A5834() || v148 != v149)
  {
    v151 = sub_1004A6D34();

    if (v151)
    {
      goto LABEL_183;
    }

    goto LABEL_173;
  }

LABEL_183:

  v153 = *v140;
  v152 = *(v140 + 1);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v154 = v256;
  }

  else
  {
    v154 = sub_10008517C(0, *(v256 + 2) + 1, 1, v256);
  }

  v156 = *(v154 + 2);
  v155 = *(v154 + 3);
  if (v156 >= v155 >> 1)
  {
    v154 = sub_10008517C((v155 > 1), v156 + 1, 1, v154);
  }

  *(v154 + 2) = v156 + 1;
  v256 = v154;
  v157 = &v154[16 * v156];
  *(v157 + 4) = v153;
  *(v157 + 5) = v152;
LABEL_188:
  v158 = v253;
  if (!*(a1 + 16))
  {
    v8 = v259;
    if (v259)
    {
      goto LABEL_201;
    }

    goto LABEL_205;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v159 = sub_1004A6F14();
  v160 = -1 << *(a1 + 32);
  v161 = v159 & ~v160;
  if (((*(v142 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) == 0)
  {
LABEL_199:

    v8 = v259;
    goto LABEL_200;
  }

  v162 = ~v160;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v161 + 8))
    {
      goto LABEL_191;
    }

    v163 = sub_1004A5834();
    v165 = v164;
    if (v163 == sub_1004A5834() && v165 == v166)
    {
      break;
    }

    v168 = sub_1004A6D34();

    if (v168)
    {
      goto LABEL_207;
    }

LABEL_191:
    v161 = (v161 + 1) & v162;
    if (((*(v142 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) == 0)
    {
      goto LABEL_199;
    }
  }

LABEL_207:

  v171 = _swiftEmptyArrayStorage;
  v8 = v259;
LABEL_208:
  v175 = 0xEE0070756E61656CLL;
  if (*(a1 + 16))
  {
    v254 = v171;
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v176 = sub_1004A6F14();
    v177 = -1 << *(a1 + 32);
    v178 = v176 & ~v177;
    if ((*(a1 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178))
    {
      v179 = ~v177;
      do
      {
        if (*(*(a1 + 48) + 16 * v178 + 8))
        {
          v180 = sub_1004A5834();
          v182 = v181;
          if (v180 == sub_1004A5834() && v182 == v183)
          {

LABEL_227:

            v8 = v259;
            v171 = v254;
            v175 = 0xEE0070756E61656CLL;
            if (v259)
            {
LABEL_228:
              v191 = 1;
              if (*(a1 + 16))
              {
                goto LABEL_270;
              }

              goto LABEL_284;
            }

            goto LABEL_230;
          }

          v185 = sub_1004A6D34();

          if (v185)
          {
            goto LABEL_227;
          }
        }

        v178 = (v178 + 1) & v179;
      }

      while (((*(a1 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) != 0);
    }

    v8 = v259;
    v171 = v254;
    v175 = 0xEE0070756E61656CLL;
  }

  if (v8)
  {
    v187 = *v140;
    v186 = *(v140 + 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v171 = sub_10008517C(0, *(v171 + 2) + 1, 1, v171);
    }

    v189 = *(v171 + 2);
    v188 = *(v171 + 3);
    if (v189 >= v188 >> 1)
    {
      v171 = sub_10008517C((v188 > 1), v189 + 1, 1, v171);
    }

    *(v171 + 2) = v189 + 1;
    v190 = &v171[16 * v189];
    *(v190 + 4) = v187;
    *(v190 + 5) = v186;
    goto LABEL_228;
  }

LABEL_230:
  Flag.Keyword.colorBit0.unsafeMutableAddressor();
  if (!*(a1 + 16))
  {
    v191 = 0;
    goto LABEL_284;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v192 = sub_1004A6F14();
  v193 = a1 + 56;
  v194 = -1 << *(a1 + 32);
  v195 = v192 & ~v194;
  if (((*(a1 + 56 + ((v195 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v195) & 1) == 0)
  {
    goto LABEL_258;
  }

  v196 = ~v194;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v195 + 8))
    {
      goto LABEL_233;
    }

    v197 = sub_1004A5834();
    v199 = v198;
    if (v197 == sub_1004A5834() && v199 == v200)
    {
      break;
    }

    v202 = sub_1004A6D34();

    if (v202)
    {
      goto LABEL_243;
    }

LABEL_233:
    v195 = (v195 + 1) & v196;
    if (((*(v193 + ((v195 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v195) & 1) == 0)
    {
LABEL_267:

      v191 = 0;
      goto LABEL_268;
    }
  }

LABEL_243:

  Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v8 = v259;
  if (!*(a1 + 16))
  {
    goto LABEL_283;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v203 = sub_1004A6F14();
  v204 = -1 << *(a1 + 32);
  v205 = v203 & ~v204;
  if (((*(v193 + ((v205 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v205) & 1) == 0)
  {
LABEL_258:

    v191 = 0;
    goto LABEL_269;
  }

  v206 = ~v204;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v205 + 8))
    {
      goto LABEL_246;
    }

    v207 = sub_1004A5834();
    v209 = v208;
    if (v207 == sub_1004A5834() && v209 == v210)
    {
      break;
    }

    v212 = sub_1004A6D34();

    if (v212)
    {
      goto LABEL_255;
    }

LABEL_246:
    v205 = (v205 + 1) & v206;
    if (((*(v193 + ((v205 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v205) & 1) == 0)
    {
      goto LABEL_267;
    }
  }

LABEL_255:

  Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v8 = v259;
  if (!*(a1 + 16))
  {
LABEL_283:
    v191 = 0;
    v175 = 0xEE0070756E61656CLL;
    goto LABEL_284;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v213 = sub_1004A6F14();
  v214 = -1 << *(a1 + 32);
  v215 = v213 & ~v214;
  if (((*(v193 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
  {
    goto LABEL_258;
  }

  v216 = ~v214;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v215 + 8))
    {
      goto LABEL_259;
    }

    v217 = sub_1004A5834();
    v219 = v218;
    if (v217 == sub_1004A5834() && v219 == v220)
    {
      break;
    }

    v222 = sub_1004A6D34();

    if (v222)
    {
      goto LABEL_290;
    }

LABEL_259:
    v215 = (v215 + 1) & v216;
    if (((*(v193 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
    {
      goto LABEL_267;
    }
  }

LABEL_290:

  v191 = 1;
LABEL_268:
  v8 = v259;
LABEL_269:
  v175 = 0xEE0070756E61656CLL;
  if (*(a1 + 16))
  {
LABEL_270:
    sub_1004A6E94();
    sub_1004A6EB4(0);
    sub_1004A5834();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v223 = sub_1004A6F14();
    v224 = -1 << *(a1 + 32);
    v225 = v223 & ~v224;
    if ((*(a1 + 56 + ((v225 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v225))
    {
      v255 = v171;
      v226 = ~v224;
      while (1)
      {
        if (*(*(a1 + 48) + 16 * v225 + 8))
        {
          v227 = sub_1004A5834();
          v229 = v228;
          if (v227 == sub_1004A5834() && v229 == v230)
          {

LABEL_282:

            v233 = v251;
            v234 = a2;
            v236 = v249;
            v235 = v250;
            v238 = v247;
            v237 = v248;
            v239 = v246;
            v241 = v256;
            v240 = v257;
            v171 = v255;
LABEL_286:
            v242 = 0x4364756F6C436924;
            goto LABEL_288;
          }

          v232 = sub_1004A6D34();

          if (v232)
          {
            goto LABEL_282;
          }
        }

        v225 = (v225 + 1) & v226;
        if (((*(a1 + 56 + ((v225 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v225) & 1) == 0)
        {
          v171 = v255;
          break;
        }
      }
    }
  }

LABEL_284:

  if (v8)
  {
    v233 = v251;
    v234 = a2;
    v236 = v249;
    v235 = v250;
    v238 = v247;
    v237 = v248;
    v239 = v246;
    v241 = v256;
    v240 = v257;
    goto LABEL_286;
  }

  v242 = 0;
  v175 = 0;
  v233 = v251;
  v234 = a2;
  v236 = v249;
  v235 = v250;
  v238 = v247;
  v237 = v248;
  v239 = v246;
  v241 = v256;
  v240 = v257;
LABEL_288:
  *&v261 = v233;
  *(&v261 + 1) = v235;
  *&v262 = v236;
  *(&v262 + 1) = v237;
  *&v263 = v258;
  *(&v263 + 1) = v239;
  v264.n128_u64[0] = v238;
  v264.n128_u64[1] = v240;
  *&v265 = v241;
  *(&v265 + 1) = v171;
  LOBYTE(v266) = v191;
  *(&v266 + 1) = v273[0];
  DWORD1(v266) = *(v273 + 3);
  *(&v266 + 1) = v242;
  v267 = v175;
  v268[0] = v233;
  v268[1] = v235;
  v268[2] = v236;
  v268[3] = v237;
  v268[4] = v258;
  v268[5] = v239;
  v268[6] = v238;
  v268[7] = v240;
  v268[8] = v241;
  v268[9] = v171;
  v269 = v191;
  *v270 = v273[0];
  *&v270[3] = *(v273 + 3);
  v271 = v242;
  v272 = v175;
  sub_100095920(&v261, v260);
  sub_100095958(v268);
  v243 = v266;
  *(v234 + 64) = v265;
  *(v234 + 80) = v243;
  *(v234 + 96) = v267;
  v244 = v262;
  *v234 = v261;
  *(v234 + 16) = v244;
  result = v264;
  *(v234 + 32) = v263;
  *(v234 + 48) = result;
  return result;
}

unint64_t sub_1000951DC(uint64_t a1)
{
  if (*(a1 + 16) && (sub_1004A6E94(), sub_1004A6EB4(1uLL), v2 = sub_1004A6F14(), v3 = -1 << *(a1 + 32), v4 = v2 & ~v3, ((*(a1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
  {
    v5 = ~v3;
    do
    {
      v6 = *(*(a1 + 48) + 16 * v4 + 8);
      v7 = v6 == 0;
      if (!v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(a1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  v8 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1000827C4(v9, v10, a1, v7);

  v12 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];

  v15 = sub_1000827C4(v13, v14, a1, v7);

  v16 = Flag.Keyword.junk.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];

  LOBYTE(v17) = sub_1000827C4(v17, v18, a1, v7);

  if (v17)
  {
    v19 = Flag.Keyword.notJunk.unsafeMutableAddressor();
    v20 = *v19;
    v21 = v19[1];

    LOBYTE(v20) = sub_1000827C4(v20, v21, a1, v7);

    if (v20)
    {
      v22 = 0x10000;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v24 = *v23;
  v25 = v23[1];

  LOBYTE(v24) = sub_1000827C4(v24, v25, a1, v7);

  if (v24 & 1) != 0 && (v26 = Flag.Keyword.colorBit1.unsafeMutableAddressor(), v27 = *v26, v28 = v26[1], , LOBYTE(v27) = sub_1000827C4(v27, v28, a1, v7), , (v27))
  {
    v29 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v30 = *v29;
    v31 = v29[1];

    LOBYTE(v30) = sub_1000827C4(v30, v31, a1, v7);

    if (v30)
    {
      v32 = 0x1000000;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  if (qword_1005CCE50 != -1)
  {
    swift_once();
  }

  v33 = sub_1000827C4(static Flag.Keyword.iCloudCleanup, unk_1005DDF20, a1, v7);
  v34 = &_mh_execute_header;
  if ((v33 & 1) == 0)
  {
    v34 = 0;
  }

  v35 = 256;
  if ((v15 & 1) == 0)
  {
    v35 = 0;
  }

  return v35 & 0xFFFFFFFFFFFFFFFELL | v11 & 1 | v22 | v32 | v34;
}

unint64_t sub_1000954A4()
{
  result = qword_1005CEE70;
  if (!qword_1005CEE70)
  {
    result = swift_getWitnessTable("9Q\v", &type metadata for FlagUpdatesToBeSent, v0, v1);
    atomic_store(result, &qword_1005CEE70);
  }

  return result;
}

__n128 sub_1000954F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100095524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009556C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t initializeBufferWithCopyOfBuffer for FlagDecoder(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FlagDecoder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FlagDecoder(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000956A0()
{
  result = qword_1005CEF40;
  if (!qword_1005CEF40)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005CD7A8, &unk_1004CF5A0);
    v4[0] = sub_100095724();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> RangeSet<A>, v3, v4);
    atomic_store(result, &qword_1005CEF40);
  }

  return result;
}

unint64_t sub_100095724()
{
  result = qword_1005CEF48;
  if (!qword_1005CEF48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageIdentificationShiftWrapper, &type metadata for MessageIdentificationShiftWrapper, v0, v1);
    atomic_store(result, &qword_1005CEF48);
  }

  return result;
}

uint64_t sub_100095778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000957E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100095840(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000958B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000958E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1000959EC(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100095A18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100095A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100095ACC()
{
  result = sub_100093190(&off_100598FE0);
  qword_1005DDF28 = result;
  return result;
}

void sub_100095AF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  sub_1000118A4(a1, &v21 - v8);
  sub_1000118A4(a1, v6);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000965C0(v2, v24);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v12 = 68159491;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_10015BA6C(*(v14 + 1), *(v14 + 2), &v23);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v15 = *(v13 + 12);
    sub_100011908(v6);
    *(v12 + 29) = v15;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v16 = *(v14 + 4);
    LODWORD(v14) = *(v14 + 10);

    sub_100011908(v9);
    v21 = v16;
    v22 = v14;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v23);

    *(v12 + 43) = v19;
    *(v12 + 51) = 2048;
    v20 = *(v25 + 16);
    sub_1000965F8(v24);
    *(v12 + 53) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld identifier(s).", v12, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000965F8(v24);
    sub_100011908(v6);

    sub_100011908(v9);
  }
}

void sub_100095DA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);

  v6 = sub_10015D510(v5, v4);

  if (v6[2])
  {
    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
    sub_1000B67CC(v6, v7, v8);
  }

  else
  {

    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
  }

  __chkstk_darwin(v9);
  if (*(a1 + 192) == 1)
  {
    v11 = *(a1 + 176);
    v10 = *(a1 + 184);
    v14 = *(a1 + 168);
    v12 = v14;

    sub_1000BE940(&v14, v7, v8, 0, sub_100096184);
    sub_100020D58(v12, v11, v10, 1);
    v13 = v14;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v13;
    *(a1 + 192) = 1;
  }
}

uint64_t sub_100095EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(type metadata accessor for MailboxSyncState(0) + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + v4);
  sub_100096284(v3, sub_10009618C, 0, isUniquelyReferenced_nonNull_native, &v7);

  *(a1 + v4) = v7;
  return result;
}

double sub_100095F90()
{
  if (qword_1005CCE58 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_100096000(uint64_t a1@<X1>, uint64_t a2@<X3>, unint64_t *a3@<X8>)
{
  if (sub_10001FDD0(a1, a2))
  {
    v5 = 0xF000000000000007;
  }

  else
  {
    v6 = swift_allocObject();
    v7 = *(v3 + 32);
    *(v6 + 16) = *(v3 + 24);
    *(v6 + 24) = v7;
    *(v6 + 32) = *(v3 + 40);
    v5 = v6 | 0xA000000000000002;
  }

  *a3 = v5;
}

unint64_t sub_1000960B4()
{
  result = qword_1005CF0F8;
  if (!qword_1005CF0F8)
  {
    result = swift_getWitnessTable("IL\v", &type metadata for GetUIDsForDownloadRequests.ActionID, v0, v1);
    atomic_store(result, &qword_1005CF0F8);
  }

  return result;
}

unint64_t sub_100096108(uint64_t a1)
{
  result = sub_100096130();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100096130()
{
  result = qword_1005CF1B0;
  if (!qword_1005CF1B0)
  {
    result = swift_getWitnessTable(byte_1004D20DC, &type metadata for GetUIDsForDownloadRequests, v0, v1);
    atomic_store(result, &qword_1005CF1B0);
  }

  return result;
}

uint64_t sub_10009618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  return sub_100014CEC(v3, v2);
}

unint64_t sub_1000961BC(unint64_t result)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 0x15 && (*(v1 + 32) | (*(v1 + 32) << 32)) == (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    result = sub_1000FFC98(*(v1 + 24), *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10));
    if (result)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v1 + 112);
      sub_100096284(v2, sub_10009618C, 0, isUniquelyReferenced_nonNull_native, &v4);

      *(v1 + 112) = v4;
    }
  }

  return result;
}

uint64_t sub_100096284(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v58 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v10;
  v42 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = *(a1 + 56) + 24 * v16;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    LOBYTE(v17) = *(v17 + 17);
    v48 = *(*(a1 + 48) + 16 * v16);
    v49 = v18;
    v50 = v19;
    v51 = v20;
    v52 = v17;
    sub_100014CEC(v48, *(&v48 + 1));
    a2(&v53, &v48);
    sub_100014D40(v48, *(&v48 + 1));
    v21 = v57;
    if ((v57 & 0xFF00) == 0x200)
    {
LABEL_22:
      sub_100020D08(a1);
    }

    v23 = v53;
    v22 = v54;
    v45 = v55;
    v46 = v56;
    v47 = HIBYTE(v57);
    v24 = *v58;
    v26 = sub_100063DD8(v53, v54);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((a4 & 1) == 0)
      {
        sub_10013AF64();
      }
    }

    else
    {
      sub_1000C4730(v29, a4 & 1);
      v31 = sub_100063DD8(v23, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_26;
      }

      v26 = v31;
    }

    v33 = (v13 - 1) & v13;
    v34 = *v58;
    if (v30)
    {
      sub_100014D40(v23, v22);
      v12 = v34[7] + 24 * v26;
      *v12 = v45;
      *(v12 + 8) = v46;
      *(v12 + 16) = v21 & 1;
      *(v12 + 17) = v47;
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v35 = (v34[6] + 16 * v26);
      *v35 = v23;
      v35[1] = v22;
      v36 = v34[7] + 24 * v26;
      *v36 = v45;
      *(v36 + 8) = v46;
      *(v36 + 16) = v21 & 1;
      *(v36 + 17) = v47;
      v37 = v34[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_25;
      }

      v34[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v10 = v41;
    v6 = v42;
    v9 = v33;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_100096580()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100096640(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000966C8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000966E0(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10009670C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_100096754(uint64_t result, int a2, int a3)
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
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000967C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v28[-v8 - 8];
  sub_100019648(a1, &v28[-v8 - 8], type metadata accessor for Task.Logger);
  sub_100019648(a1, v6, type metadata accessor for Task.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10009A228(v2, v29);
  sub_10009A228(v2, v28);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 68158722;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = *&v6[*(v4 + 20)];
    sub_10009A1C8(v6, type metadata accessor for Task.Logger);
    *(v12 + 10) = v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    sub_100018BD0(*v14, v15, v16, v17, v14[4]);
    sub_10009A1C8(v9, type metadata accessor for Task.Logger);
    if (v17 < 0)
    {
    }

    v18 = sub_10015BA6C(v15, v16, &v27);

    *(v12 + 13) = v18;
    *(v12 + 21) = 2080;
    if (v30)
    {
      v19 = 0x616C696176616E75;
    }

    else
    {
      v19 = 0x6574726F70707573;
    }

    if (v30)
    {
      v20 = 0xEB00000000656C62;
    }

    else
    {
      v20 = 0xE900000000000064;
    }

    sub_10009A260(v29);
    v21 = sub_10015BA6C(v19, v20, &v27);

    *(v12 + 23) = v21;
    *(v12 + 31) = 2080;
    if (v28[113])
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_10010B990(v22 | v28[112]);
    v25 = v24;
    sub_10009A260(v28);
    v26 = sub_10015BA6C(v23, v25, &v27);

    *(v12 + 33) = v26;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] Created task (NAMESPACE: %s; LIST: %s).", v12, 0x29u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10009A1C8(v6, type metadata accessor for Task.Logger);

    sub_10009A260(v28);
    sub_10009A260(v29);
    sub_10009A1C8(v9, type metadata accessor for Task.Logger);
  }
}

uint64_t sub_100096B38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>)
{
  if (*(v3 + 80) & 1) != 0 || *(v3 + 88) || (v5 = a2, v6 = a3, v7 = sub_100110C64(1, a2, a3), a2 = v5, a3 = v6, (v7))
  {
    if (sub_100110C64(0, a2, a3))
    {
      v8 = sub_10000C9C0(&qword_1005CF250, &qword_1004D22C8);
      v9 = *(*(v8 - 8) + 56);
      v10 = v8;
      v11 = a1;
      v12 = 1;
      goto LABEL_11;
    }

    if (*(v3 + 113))
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_100096D28(v13 | *(v3 + 112));
    v15 = sub_10000C9C0(&qword_1005CF250, &qword_1004D22C8);
    v16 = &a1[*(v15 + 48)];
    *a1 = 0;
    v17 = ByteBufferAllocator.buffer(string:)(0x2AuLL, 0xE100000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    v20 = MailboxName.init(_:)(v17, v19, v18 & 0xFFFFFFFFFFFFFFLL);
    *v16 = 0;
    *(v16 + 2) = 0;
    *(v16 + 2) = v20;
    *(v16 + 6) = v21;
    *(v16 + 4) = v14;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    v15 = sub_10000C9C0(&qword_1005CF250, &qword_1004D22C8);
    *a1 = 1;
    type metadata accessor for ClientCommand(0);
  }

  swift_storeEnumTagMultiPayload();
  v9 = *(*(v15 - 8) + 56);
  v11 = a1;
  v12 = 0;
  v10 = v15;
LABEL_11:

  return v9(v11, v12, 1, v10);
}

char *sub_100096D28(__int16 a1)
{
  if (!a1)
  {
    result = _swiftEmptyArrayStorage;
    if ((a1 & 0x100) != 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a1 == 1)
  {
    result = sub_10008529C(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(result + 2);
    v3 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      result = sub_10008529C((v3 > 1), v4 + 1, 1, result);
    }

    v6 = &off_100598700;
  }

  else
  {
    result = sub_10008529C(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(result + 2);
    v7 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v7 >> 1)
    {
      result = sub_10008529C((v7 > 1), v4 + 1, 1, result);
    }

    v6 = &off_100598728;
  }

  *(result + 2) = v5;
  v8 = &result[64 * v4];
  *(v8 + 4) = v6;
  *(v8 + 8) = 0;
  if ((a1 & 0x100) == 0)
  {
LABEL_12:
    v9 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v9;
    }

    else
    {
      result = sub_10008529C(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(result + 2);
    v10 = *(result + 3);
    if (v11 >= v10 >> 1)
    {
      result = sub_10008529C((v10 > 1), v11 + 1, 1, result);
    }

    *(result + 2) = v11 + 1;
    v12 = &result[64 * v11];
    *(v12 + 4) = 2;
    *(v12 + 5) = 0;
    *(v12 + 6) = 0;
    *(v12 + 7) = 0;
    *(v12 + 8) = 0x8000000000000000;
    *(v12 + 9) = 0;
    *(v12 + 10) = 0;
    *(v12 + 11) = 0;
  }

  return result;
}

unint64_t sub_100096E9C(char a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  if ((a1 & 1) == 0 && !*(*v6 + 16))
  {
    v38 = v17;
    sub_100019648(a6, &v32 - v18, type metadata accessor for Task.Logger);
    sub_100019648(a6, v15, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v20 = sub_1004A4A54();
    v21 = sub_1004A6014();
    if (os_log_type_enabled(v20, v21))
    {
      v36 = v21;
      v37 = v20;
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v22 = 68158210;
      *(v22 + 4) = 2;
      *(v22 + 8) = 256;
      v23 = v38;
      v33 = *&v15[*(v38 + 20)];
      v34 = type metadata accessor for Task.Logger;
      sub_10009A1C8(v15, type metadata accessor for Task.Logger);
      *(v22 + 10) = v33;
      *(v22 + 11) = 2082;
      v24 = &v19[*(v23 + 20)];
      v25 = *v24;
      v27 = v24[2];
      v26 = v24[3];
      v28 = v24[4];
      v38 = v24[1];
      v33 = v28;
      sub_100018BD0(v25, v38, v27, v26, v28);
      sub_10009A1C8(v19, v34);
      if (v26 < 0)
      {
      }

      v29 = sub_10015BA6C(v38, v27, &v39);

      *(v22 + 13) = v29;
      v30 = v37;
      _os_log_impl(&_mh_execute_header, v37, v36, "[%.*hhx-%{public}s] LIST completed, but we didn’t get any mailboxes, notably no INBOX.", v22, 0x15u);
      sub_1000197E0(v35);
    }

    else
    {
      sub_10009A1C8(v15, type metadata accessor for Task.Logger);

      sub_10009A1C8(v19, type metadata accessor for Task.Logger);
    }
  }

  return sub_100010880(a6, a2, a3, a4, a5);
}

uint64_t sub_100097170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 88);
  if (v9)
  {
    v11 = *(v4 + 96);
    v10 = *(v4 + 104);
    sub_100099D88(*(v4 + 88), v11, v10);
    if ((sub_10001DCC0(0, a2, a4) & 1) == 0)
    {
      v14 = swift_allocObject();
      result = 0;
      v14[2] = v9;
      v14[3] = v11;
      v14[4] = v10;
      return result;
    }
  }

  if ((sub_100018FF4(0, a1, a2, a3) & 1) != 0 && (v9 || *(v4 + 80)) && (sub_10001DCC0(1, a2, a4) & 1) == 0)
  {
    *(swift_allocObject() + 16) = *v4;

    return 1;
  }

  else if ((sub_10009A61C(1, a1, a2, a4, sub_10001DCA8) & 1) != 0 && (sub_10001DCC0(2, a2, a4) & 1) == 0 && (v12 = *(v4 + 8), *(v12 + 16)))
  {
    *(swift_allocObject() + 16) = v12;

    return 2;
  }

  else
  {
    return 3;
  }
}

void sub_100097318(NSObject *a1, uint64_t a2)
{
  v3 = v2;
  v215 = 0;
  v228 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v228);
  v227 = (&v212 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v232 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v232);
  v233 = &v212 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v231);
  v9 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v221 = &v212 - v11;
  __chkstk_darwin(v12);
  *&v218 = &v212 - v13;
  __chkstk_darwin(v14);
  v219 = &v212 - v15;
  __chkstk_darwin(v16);
  v226 = &v212 - v17;
  __chkstk_darwin(v18);
  v230 = &v212 - v19;
  __chkstk_darwin(v20);
  v216 = &v212 - v21;
  __chkstk_darwin(v22);
  v217 = (&v212 - v23);
  __chkstk_darwin(v24);
  v224 = (&v212 - v25);
  __chkstk_darwin(v26);
  v225 = (&v212 - v27);
  __chkstk_darwin(v28);
  v30 = &v212 - v29;
  __chkstk_darwin(v31);
  __chkstk_darwin(v32);
  v34 = &v212 - v33;
  __chkstk_darwin(v35);
  isa = a1[15].isa;
  v229 = a2;
  v222 = v9;
  v220 = a1;
  if (isa)
  {
    v40 = &v212 - v38;
    v41 = a1;
    v42 = *(isa + 16);
    __chkstk_darwin(v36);
    *&v223 = v43;
    *(&v212 - 2) = v43;
    v44 = v215;
    v45 = sub_100099C08(isa, sub_100098EF8);

    v41[15].isa = v45;
    v46 = v42 - v45[2];
    v215 = v44;
    if (v46 < 1)
    {
      a2 = v229;
    }

    else
    {
      a2 = v229;
      sub_100019648(v229, v40, type metadata accessor for Task.Logger);
      sub_100019648(a2, v34, type metadata accessor for Task.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v47 = sub_1004A4A54();
      v48 = sub_1004A6034();
      if (os_log_type_enabled(v47, v48))
      {
        LODWORD(v214) = v48;
        v49 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        v248[0].bytes._rawValue = v213;
        *v49 = 68158466;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v50 = v231;
        v51 = *&v34[*(v231 + 20)];
        sub_10009A1C8(v34, type metadata accessor for Task.Logger);
        *(v49 + 10) = v51;
        *(v49 + 11) = 2082;
        v52 = &v40[*(v50 + 20)];
        v53 = v52[1];
        v54 = v52[2];
        v55 = v52[3];
        sub_100018BD0(*v52, v53, v54, v55, v52[4]);
        sub_10009A1C8(v40, type metadata accessor for Task.Logger);
        if (v55 < 0)
        {
        }

        v56 = sub_10015BA6C(v53, v54, v248);

        *(v49 + 13) = v56;
        *(v49 + 21) = 2048;
        *(v49 + 23) = v46;
        _os_log_impl(&_mh_execute_header, v47, v214, "[%.*hhx-%{public}s] Did remove %ld mailbox(es)", v49, 0x1Fu);
        sub_1000197E0(v213);

        a2 = v229;
        v9 = v222;
      }

      else
      {
        sub_10009A1C8(v34, type metadata accessor for Task.Logger);

        sub_10009A1C8(v40, type metadata accessor for Task.Logger);
      }
    }

    v68 = v225;
    v3 = v223;
  }

  else
  {
    v57 = v37;
    sub_100019648(a2, v37, type metadata accessor for Task.Logger);
    sub_100019648(a2, v30, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v58 = sub_1004A4A54();
    v59 = sub_1004A6014();
    if (os_log_type_enabled(v58, v59))
    {
      LODWORD(v214) = v59;
      *&v223 = v3;
      v60 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v248[0].bytes._rawValue = v213;
      *v60 = 68158210;
      *(v60 + 4) = 2;
      *(v60 + 8) = 256;
      v61 = v231;
      v62 = *&v30[*(v231 + 20)];
      sub_10009A1C8(v30, type metadata accessor for Task.Logger);
      *(v60 + 10) = v62;
      *(v60 + 11) = 2082;
      v63 = (v57 + *(v61 + 20));
      v64 = v63[1];
      v66 = v63[2];
      v65 = v63[3];
      sub_100018BD0(*v63, v64, v66, v65, v63[4]);
      sub_10009A1C8(v57, type metadata accessor for Task.Logger);
      if (v65 < 0)
      {
      }

      v67 = sub_10015BA6C(v64, v66, v248);

      *(v60 + 13) = v67;
      _os_log_impl(&_mh_execute_header, v58, v214, "[%.*hhx-%{public}s] Setting empty list of mailboxes.", v60, 0x15u);
      sub_1000197E0(v213);

      a2 = v229;
      v9 = v222;
      v3 = v223;
    }

    else
    {
      sub_10009A1C8(v30, type metadata accessor for Task.Logger);

      sub_10009A1C8(v57, type metadata accessor for Task.Logger);
    }

    v68 = v225;
    v69 = sub_100162334(_swiftEmptyArrayStorage);
    v220[15].isa = v69;
  }

  v70 = v224;
  v71 = v3[11];
  v225 = v3[12];
  v72 = v3[13];
  if (!v71)
  {
    v68 = v217;
    sub_100019648(a2, v217, type metadata accessor for Task.Logger);
    v91 = v216;
    sub_100019648(a2, v216, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v73 = sub_1004A4A54();
    v92 = sub_1004A6034();
    if (os_log_type_enabled(v73, v92))
    {
      LODWORD(v223) = v92;
      v224 = v73;
      v93 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v248[0].bytes._rawValue = v214;
      *v93 = 68158210;
      *(v93 + 4) = 2;
      *(v93 + 8) = 256;
      v94 = v231;
      v95 = *(v91 + *(v231 + 20));
      sub_10009A1C8(v91, type metadata accessor for Task.Logger);
      *(v93 + 10) = v95;
      *(v93 + 11) = 2082;
      v96 = (v68 + *(v94 + 20));
      v97 = v96[1];
      v99 = v96[2];
      v98 = v96[3];
      sub_100018BD0(*v96, v97, v99, v98, v96[4]);
      sub_10009A1C8(v68, type metadata accessor for Task.Logger);
      if (v98 < 0)
      {
      }

      v100 = sub_10015BA6C(v97, v99, v248);

      *(v93 + 13) = v100;
      v101 = v224;
      _os_log_impl(&_mh_execute_header, v224, v223, "[%.*hhx-%{public}s] Server isn't namespaced.", v93, 0x15u);
      sub_1000197E0(v214);

      a2 = v229;
      v9 = v222;
      goto LABEL_28;
    }

    v102 = v91;
LABEL_27:
    sub_10009A1C8(v102, type metadata accessor for Task.Logger);

    sub_10009A1C8(v68, type metadata accessor for Task.Logger);
LABEL_28:
    v90 = v225;
    goto LABEL_29;
  }

  sub_100019648(a2, v68, type metadata accessor for Task.Logger);
  sub_100019648(a2, v70, type metadata accessor for Task.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v73 = sub_1004A4A54();
  v74 = sub_1004A6034();

  if (!os_log_type_enabled(v73, v74))
  {
    v102 = v70;
    goto LABEL_27;
  }

  LODWORD(v223) = v74;
  v224 = v73;
  v75 = swift_slowAlloc();
  v217 = swift_slowAlloc();
  *&v247[0] = v217;
  *v75 = 68158979;
  *(v75 + 4) = 2;
  *(v75 + 8) = 256;
  v76 = v231;
  v77 = *(&v70->isa + *(v231 + 20));
  sub_10009A1C8(v70, type metadata accessor for Task.Logger);
  *(v75 + 10) = v77;
  *(v75 + 11) = 2082;
  v78 = (v68 + *(v76 + 20));
  v79 = v78[1];
  v81 = v78[2];
  v80 = v78[3];
  sub_100018BD0(*v78, v79, v81, v80, v78[4]);
  sub_10009A1C8(v68, type metadata accessor for Task.Logger);
  if (v80 < 0)
  {
  }

  v82 = sub_10015BA6C(v79, v81, v247);

  *(v75 + 13) = v82;
  *(v75 + 21) = 2160;
  *(v75 + 23) = 0x786F626C69616DLL;
  *(v75 + 31) = 2085;

  v248[0] = MailboxName.init(_:)(v83);
  v84 = sub_1004A5824();
  v86 = sub_10015BA6C(v84, v85, v247);

  *(v75 + 33) = v86;
  *(v75 + 41) = 2080;

  v87 = v225;
  v88 = sub_10015BA6C(v225, v72, v247);

  *(v75 + 43) = v88;
  v89 = v224;
  _os_log_impl(&_mh_execute_header, v224, v223, "[%.*hhx-%{public}s] Server is namespaced: %{sensitive,mask.mailbox}s (%s)", v75, 0x33u);
  swift_arrayDestroy();

  v90 = v87;
  a2 = v229;
  v9 = v222;
LABEL_29:
  v103 = v220;
  v104 = v220[18].isa;
  v105 = v220[19].isa;
  v106 = v220[20].isa;
  v220[18].isa = v71;
  v103[19].isa = v90;
  v103[20].isa = v72;
  sub_100099D88(v71, v90, v72);
  sub_100099DC8(v104, v105, v106);
  BYTE1(v103[17].isa) = 0;
  v103[16].isa = static MonotonicTime.now()();
  LOBYTE(v103[17].isa) = 0;
  v107 = v230;
  sub_100019648(a2, v230, type metadata accessor for Task.Logger);
  v108 = *(v107 + *(v231 + 20));
  v109 = v233;
  sub_1004A4A64();
  *(v109 + *(v232 + 20)) = v108;
  sub_10009A1C8(v107, type metadata accessor for Task.Logger);
  sub_10012D6A8(v109);
  sub_10009A1C8(v109, type metadata accessor for State.Logger);
  memcpy(v248, v103, 0x108uLL);
  v110 = sub_1000CC724();
  v112 = v110[2].isa;
  if (v112)
  {
    v233 = v112 - 1;
    v113 = 32;
    *&v111 = 68160515;
    v223 = v111;
    v225 = v110;
    while (1)
    {
      v232 = v113;
      v114 = *(&v110[2].isa + v113);
      v247[0] = *(&v110->isa + v113);
      v247[1] = v114;
      v115 = *(&v110[4].isa + v113);
      v116 = *(&v110[6].isa + v113);
      v117 = *(&v110[8].isa + v113);
      LOBYTE(v247[5]) = *(&v110[10].isa + v113);
      v247[3] = v116;
      v247[4] = v117;
      v247[2] = v115;
      v118 = WORD6(v247[0]);
      v119 = *&v247[0];
      v120 = DWORD2(v247[0]);
      v121 = v226;
      sub_100019648(a2, v226, type metadata accessor for Task.Logger);
      v122 = sub_1004A4A74();
      v123 = v227;
      (*(*(v122 - 8) + 16))(v227, v121, v122);
      v124 = v121 + *(v231 + 20);
      v126 = *(v124 + 8);
      v125 = *(v124 + 16);
      v127 = *v124;

      swift_bridgeObjectRetain_n();
      sub_100099E08(v247, v246);

      sub_10009A1C8(v121, type metadata accessor for Task.Logger);
      v128 = v123 + SHIDWORD(v228[2].isa);
      *v128 = v127;
      *(v128 + 8) = v126;
      *(v128 + 16) = v125;
      LODWORD(v230) = v118;
      *(v128 + 24) = v118;
      *(v128 + 32) = v119;
      *(v128 + 40) = v120;

      sub_10009A1C8(v123, type metadata accessor for MailboxTaskLogger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_100099E08(v247, v246);
      sub_100099E08(v247, v246);
      sub_100099E08(v247, v246);
      sub_100099E08(v247, v246);
      sub_100099E08(v247, v246);
      sub_100099E08(v247, v246);
      sub_100099E08(v247, v246);
      sub_100099E08(v247, v246);
      sub_100099E08(v247, v246);
      v129 = sub_1004A4A54();
      v130 = sub_1004A6034();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        v239 = v224;
        *v131 = v223;
        *(v131 + 4) = 2;
        *(v131 + 8) = 256;
        *(v131 + 10) = v127;
        *(v131 + 11) = 2082;
        v132 = sub_10015BA6C(v126, v125, &v239);

        *(v131 + 13) = v132;
        *(v131 + 21) = 1040;
        *(v131 + 23) = 2;
        *(v131 + 27) = 512;

        *(v131 + 29) = v230;

        *(v131 + 31) = 2160;
        *(v131 + 33) = 0x786F626C69616DLL;
        *(v131 + 41) = 2085;
        v246[0] = v119;
        LODWORD(v246[1]) = v120;
        v133 = sub_1004A5824();
        v135 = sub_10015BA6C(v133, v134, &v239);

        *(v131 + 43) = v135;
        *(v131 + 51) = 2048;
        sub_100099E64(v247);
        v136 = *&v247[1];
        if (BYTE8(v247[1]))
        {
          v136 = 0;
        }

        *(v131 + 53) = v136;
        sub_100099E64(v247);
        *(v131 + 61) = 1024;
        v137 = static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*&v247[2], DWORD2(v247[2]), 0, 0);
        sub_100099E64(v247);
        *(v131 + 63) = (v137 & 1) == 0;
        sub_100099E64(v247);
        *(v131 + 67) = 2048;
        sub_100099E64(v247);
        v138 = *&v247[3];
        if (BYTE8(v247[3]))
        {
          v138 = 0;
        }

        *(v131 + 69) = v138;
        sub_100099E64(v247);
        *(v131 + 77) = 1024;
        sub_100099E64(v247);
        v139 = HIDWORD(v247[3]);
        if (LOBYTE(v247[4]))
        {
          v139 = 0;
        }

        *(v131 + 79) = v139;
        sub_100099E64(v247);
        *(v131 + 83) = 2048;
        sub_100099E64(v247);
        v140 = *(&v247[4] + 1);
        if (LOBYTE(v247[5]))
        {
          v140 = 0;
        }

        *(v131 + 85) = v140;
        sub_100099E64(v247);
        _os_log_impl(&_mh_execute_header, v129, v130, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] local {highest-mod-seq: %llu, modifications: %{BOOL}d}, remote {count: %ld, next UID: %u, highest-mod-seq: %llu}", v131, 0x5Du);
        swift_arrayDestroy();

        a2 = v229;
      }

      else
      {
        sub_100099E64(v247);
        sub_100099E64(v247);
        sub_100099E64(v247);
        sub_100099E64(v247);
        sub_100099E64(v247);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        sub_100099E64(v247);
        sub_100099E64(v247);
        sub_100099E64(v247);
        sub_100099E64(v247);
        sub_100099E64(v247);
      }

      v110 = v225;
      if (!v233)
      {
        break;
      }

      --v233;
      v113 = v232 + 88;
    }

    v9 = v222;
  }

  else
  {
  }

  v141 = v220;
  memcpy(v247, v220, 0x108uLL);
  v142 = sub_1000CBCD0();
  v143 = v142[2];
  memcpy(v246, v141, sizeof(v246));
  v144 = LOBYTE(v246[3]);
  v145 = BYTE1(v246[3]);
  v146 = v246[4];
  v147 = v246[7];

  sub_100166D28();
  v149 = v148;
  if (v146 == 3 || v146 == 2)
  {

    LODWORD(v233) = 1;
    v150 = v219;
LABEL_49:
    v151 = v218;
    goto LABEL_50;
  }

  v209 = sub_100166E18(v148);
  if (v145)
  {
    goto LABEL_95;
  }

  if (v146 == 1)
  {
    if (!v144)
    {
LABEL_95:
      v210 = v209 ^ 1;
      goto LABEL_96;
    }

    if (v144 == 1)
    {
      v210 = 1;
LABEL_96:
      LODWORD(v233) = v210;
      goto LABEL_97;
    }
  }

  else if (v146 || (v144 - 1) >= 2)
  {
    goto LABEL_95;
  }

  LODWORD(v233) = 0;
LABEL_97:
  v150 = v219;
  sub_100013AD0(&off_100598658, v147);
  sub_100166E18(v149);
  v211 = sub_100013CF4(v147);

  if (v211)
  {
    goto LABEL_49;
  }

  v151 = v218;
  if (v145)
  {
    sub_100166E18(v149);
  }

LABEL_50:

  sub_100019648(a2, v150, type metadata accessor for Task.Logger);
  sub_100019648(a2, v151, type metadata accessor for Task.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v152 = sub_1004A4A54();
  v153 = sub_1004A6034();
  if (os_log_type_enabled(v152, v153))
  {
    v230 = v143;
    v232 = v142;
    v154 = v151;
    v155 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    v239 = v228;
    *v155 = 68158722;
    *(v155 + 4) = 2;
    *(v155 + 8) = 256;
    v156 = v231;
    v157 = *(v154 + *(v231 + 20));
    sub_10009A1C8(v154, type metadata accessor for Task.Logger);
    *(v155 + 10) = v157;
    *(v155 + 11) = 2082;
    v158 = (v150 + *(v156 + 20));
    v159 = v158[1];
    v161 = v158[2];
    v160 = v158[3];
    sub_100018BD0(*v158, v159, v161, v160, v158[4]);
    sub_10009A1C8(v150, type metadata accessor for Task.Logger);
    if (v160 < 0)
    {
    }

    v162 = sub_10015BA6C(v159, v161, &v239);

    *(v155 + 13) = v162;
    *(v155 + 21) = 2048;
    *(v155 + 23) = v230;
    *(v155 + 31) = 2080;
    if (v233)
    {
      v163 = 0xD000000000000014;
    }

    else
    {
      v163 = 0x746C7561666564;
    }

    if (v233)
    {
      v164 = 0x80000001004AA170;
    }

    else
    {
      v164 = 0xE700000000000000;
    }

    v165 = sub_10015BA6C(v163, v164, &v239);

    *(v155 + 33) = v165;
    _os_log_impl(&_mh_execute_header, v152, v153, "[%.*hhx-%{public}s] There are (still) %ld mailbox(es) to sync. Sync behavior: %s.", v155, 0x29u);
    swift_arrayDestroy();

    v9 = v222;
    v142 = v232;
  }

  else
  {
    sub_10009A1C8(v151, type metadata accessor for Task.Logger);

    sub_10009A1C8(v150, type metadata accessor for Task.Logger);
  }

  sub_100099EB8(4, v142, &v239);

  v166 = v239;
  v167 = v241;
  v168 = v242;
  v230 = v243;
  v169 = v244;
  v170 = v245;
  v238 = v241;
  v237 = v244;
  v216 = v240;
  sub_100099FD8(v239, v240, v241);
  v172 = v221;
  if ((v167 & 1) == 0 && (v169 & 1) == 0)
  {
    v173 = v216;
    if (v216 == v230)
    {
      v174 = v216;
      if (v166 == v168)
      {
LABEL_86:
        v208 = v237;
        sub_100020944(v166, v173, v238);
        sub_100020944(v168, v230, v208);

        sub_100020944(v168, v174, 0);
        return;
      }

      v175 = 0;
      v228 = (v170 + 56);
      v217 = (v170 + 64);
      *&v171 = 68158979;
      v218 = v171;
      v176 = v166;
      v219 = v170;
      v220 = v168;
      v226 = v230;
      v227 = v166;
      while (v176 >= v166)
      {
        if (v176 >= v168)
        {
          goto LABEL_103;
        }

        if (v176 < 0)
        {
          goto LABEL_104;
        }

        v177 = 1 << v170[32];
        if (v176 >= v177)
        {
          goto LABEL_104;
        }

        v178 = v176 >> 6;
        v179 = v228[v176 >> 6].isa;
        if (((v179 >> v176) & 1) == 0)
        {
          goto LABEL_105;
        }

        if (*(v170 + 9) != v230)
        {
          goto LABEL_106;
        }

        v180 = v179 & (-2 << (v176 & 0x3F));
        if (v180)
        {
          v177 = __clz(__rbit64(v180)) | v176 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v181 = v178 << 6;
          v182 = v178 + 1;
          v183 = &v217[v178];
          while (v182 < (v177 + 63) >> 6)
          {
            v185 = *v183++;
            v184 = v185;
            v181 += 64;
            ++v182;
            if (v185)
            {
              v177 = __clz(__rbit64(v184)) + v181;
              break;
            }
          }
        }

        v186 = __OFADD__(v175, 1);
        v187 = v175 + 1;
        if (v186)
        {
          goto LABEL_107;
        }

        v233 = v187;
        v188 = *(v170 + 6) + 16 * v176;
        v189 = *v188;
        v190 = *(v188 + 8);
        v191 = v229;
        sub_100019648(v229, v172, type metadata accessor for Task.Logger);
        sub_100019648(v191, v9, type metadata accessor for Task.Logger);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v192 = sub_1004A4A54();
        v193 = v9;
        v194 = sub_1004A6034();

        LODWORD(v232) = v194;
        if (os_log_type_enabled(v192, v194))
        {
          LODWORD(v224) = v190;
          v225 = v192;
          v195 = v172;
          v196 = swift_slowAlloc();
          *&v223 = swift_slowAlloc();
          v236 = v223;
          *v196 = v218;
          *(v196 + 4) = 2;
          *(v196 + 8) = 256;
          v197 = v231;
          v198 = *(v193 + *(v231 + 20));
          sub_10009A1C8(v193, type metadata accessor for Task.Logger);
          *(v196 + 10) = v198;
          *(v196 + 11) = 2082;
          v199 = (v195 + *(v197 + 20));
          v200 = v199[1];
          v202 = v199[2];
          v201 = v199[3];
          sub_100018BD0(*v199, v200, v202, v201, v199[4]);
          sub_10009A1C8(v195, type metadata accessor for Task.Logger);
          if (v201 < 0)
          {
          }

          v203 = sub_10015BA6C(v200, v202, &v236);

          *(v196 + 13) = v203;
          *(v196 + 21) = 2048;
          v175 = v233;
          *(v196 + 23) = v233;
          *(v196 + 31) = 2160;
          *(v196 + 33) = 0x786F626C69616DLL;
          *(v196 + 41) = 2085;
          v234 = v189;
          v235 = v224;
          v204 = sub_1004A5824();
          v206 = sub_10015BA6C(v204, v205, &v236);

          *(v196 + 43) = v206;
          v207 = v225;
          _os_log_impl(&_mh_execute_header, v225, v232, "[%.*hhx-%{public}s] [%ld] mailbox to sync: '%{sensitive,mask.mailbox}s'", v196, 0x33u);
          swift_arrayDestroy();

          v172 = v221;
          v9 = v222;
          v170 = v219;
          v168 = v220;
        }

        else
        {
          sub_10009A1C8(v193, type metadata accessor for Task.Logger);

          sub_10009A1C8(v172, type metadata accessor for Task.Logger);
          v175 = v233;
          v9 = v193;
        }

        v176 = v177;
        v174 = v226;
        v166 = v227;
        if (v177 == v168)
        {
          v173 = v216;
          goto LABEL_86;
        }
      }
    }

    else
    {
      __break(1u);
    }

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
  }

  __break(1u);
}

uint64_t sub_100098D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100097170(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t ServerID.vendor.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

unint64_t sub_100098DD4()
{
  result = qword_1005CF1B8;
  if (!qword_1005CF1B8)
  {
    result = swift_getWitnessTable(byte_1004D2298, &type metadata for ListMailboxes.ActionID, v0, v1);
    atomic_store(result, &qword_1005CF1B8);
  }

  return result;
}

unint64_t sub_100098E28()
{
  result = qword_1005CF1C0;
  if (!qword_1005CF1C0)
  {
    result = swift_getWitnessTable(byte_1004D2270, &type metadata for ListMailboxes.CommandID, v0, v1);
    atomic_store(result, &qword_1005CF1C0);
  }

  return result;
}

unint64_t sub_100098E7C(uint64_t a1)
{
  result = sub_100098EA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100098EA4()
{
  result = qword_1005CF240;
  if (!qword_1005CF240)
  {
    result = swift_getWitnessTable("}K\v", &type metadata for ListMailboxes, v0, v1);
    atomic_store(result, &qword_1005CF240);
  }

  return result;
}

uint64_t sub_100098EF8(uint64_t a1, uint64_t a2)
{
  if (*(**(v2 + 16) + 16))
  {
    sub_100063B5C(a1, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t *sub_100098F34(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100099A64(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_100098FC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004A6554();
  v7 = 1 << *(a2 + 32);
  if (v7 < v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < v6)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_1000990A8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_100099FD8(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009920C(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v3);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019648(a1, v5, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 10:
      v34 = *v5;
      v35 = *(v5 + 1);
      if (*(*v5 + 16))
      {
        v36 = *(v34 + 64);
        if (v36)
        {
          v45[1] = *(v34 + 88);
          v47 = v35;
          v46 = *(v34 + 56);
          v38 = *(v34 + 32);
          v37 = *(v34 + 40);
          v39 = *(v34 + 48) | (*(v34 + 54) << 48) | (*(v34 + 52) << 32);
          swift_retain_n();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          v40 = MailboxName.init(_:)(v38, v37, v39);
          v41._countAndFlagsBits = v46;
          v41._object = v36;
          v57 = Namespace.init(prefix:separator:)(v40, v41);
          rawValue = v57.prefix._rawValue;
          countAndFlagsBits = v57.separator._countAndFlagsBits;
          object = v57.separator._object;

          swift_bridgeObjectRelease_n();

LABEL_23:
          result = sub_100099DC8(*(v1 + 88), *(v1 + 96), *(v1 + 104));
          *(v1 + 88) = rawValue;
          *(v1 + 96) = countAndFlagsBits;
          *(v1 + 104) = object;
          return result;
        }
      }

      rawValue = 0;
      countAndFlagsBits = 0;
      object = 0;
      goto LABEL_23;
    case 9:
      v17 = *v5;
      v18 = *(v5 + 2);
      v19 = *(v5 + 6);
      v53 = *(v5 + 5);
      v54 = v19;
      v20 = *(v5 + 8);
      v55 = *(v5 + 7);
      v56 = v20;
      v21 = *(v5 + 2);
      v49 = *(v5 + 1);
      v50 = v21;
      v22 = *(v5 + 4);
      v51 = *(v5 + 3);
      v52 = v22;
      v23 = sub_10010AC1C(v48, v17, v18);
      v25 = v24;
      v26 = *v24;
      sub_10009A0FC(&v49);
      if (v26)
      {
        if (BYTE8(v49) & 1) != 0 || (v51 & 1) != 0 || (BYTE8(v51))
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 1;
        }

        else
        {
          v33 = 0;
          v27 = v49;
          v29 = v52;
          v30 = BYTE8(v52);
          v31 = v54;
          v32 = BYTE8(v54);
          v28 = HIDWORD(v50) | (DWORD1(v51) << 32);
        }

        v25[3] = v27;
        v25[4] = v28;
        v25[5] = v29;
        v25[6] = v30;
        v25[7] = v31;
        *(v25 + 64) = v32;
        *(v25 + 65) = v33;
        (v23)(v48, 0);
      }

      else
      {
        (v23)(v48, 0);
      }

    case 7:
      v7 = *(v5 + 1);
      v8 = *(v5 + 4);
      v9 = v5[20];
      if (*(v1 + 80) == 1 && !*(v1 + 88))
      {
        v10 = sub_10014A364(v9);
        if (v11)
        {
          v12 = v11;
          v13._countAndFlagsBits = v10;
          v13._object = v12;
          *(v1 + 88) = Namespace.init(prefix:separator:)(_swiftEmptyArrayStorage, v13);
        }
      }

      swift_bridgeObjectRetain_n();

      RemoteMailbox.init(attributes:path:)(v14, v7, v8 | (v9 << 32), &v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = *v1;
      sub_10001CA34(&v49, v7, v8, isUniquelyReferenced_nonNull_native);

      swift_bridgeObjectRelease_n();

      *v1 = v48[0];
      break;
    default:
      return sub_10009A1C8(v5, type metadata accessor for UntaggedResponse);
  }

  return result;
}

unint64_t sub_10009965C(unint64_t result)
{
  if (*(v1 + 112) != 2 || ((result >> 59) & 0x1E | (result >> 2) & 1) != 4)
  {
    return result;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = 0;
  v6 = v4 - 1;
  v7 = 32;
  v50 = v3;
  v51 = v4 - 1;
  do
  {
    v8 = *(v3 + v7 + 32);
    v9 = *(v3 + v7 + 48);
    v10 = *(v3 + v7 + 64);
    *&v65[9] = *(v3 + v7 + 73);
    *v65 = v10;
    v11 = *(v3 + v7 + 16);
    v61 = *(v3 + v7);
    v62 = v11;
    v63 = v8;
    v64 = v9;
    v12 = *&v65[16];
    v13 = *(&v10 + 1);
    sub_100099FE4(&v61, &v56);
    if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v13, v12, 0, 0) & 1) == 0 || v65[24] != 1)
    {
      goto LABEL_28;
    }

    v14 = *v52;
    if (!*(*v52 + 16) || (v15 = sub_100063B5C(v62, DWORD2(v62)), (v16 & 1) == 0))
    {
      v54 = 0;
      v53 = 0;
      v26 = 0;
      v27 = 0;
      v25 = 0;
      v24 = 0;
      v22 = 0;
      v23 = 0;
      v21 = 0;
LABEL_16:
      sub_10009A040(&v61);
      *&v56 = 0;
      *(&v56 + 1) = v21;
      *&v57 = v23;
      *(&v57 + 1) = v22;
      *&v58 = v24;
      *(&v58 + 1) = v25;
      *&v59 = v27;
      *(&v59 + 1) = v26;
      LOBYTE(v60) = v53;
      HIBYTE(v60) = v54;
      sub_10009A094(&v56);
LABEL_17:
      v3 = v50;
      v6 = v51;
      if (v51 == v5)
      {
      }

      goto LABEL_29;
    }

    v17 = *(v14 + 56) + 72 * v15;
    v56 = *v17;
    v18 = *(v17 + 64);
    v20 = *(v17 + 32);
    v19 = *(v17 + 48);
    v57 = *(v17 + 16);
    v58 = v20;
    v59 = v19;
    v60 = v18;
    v21 = *(&v56 + 1);
    v47 = v56;
    v22 = *(&v57 + 1);
    v23 = v57;
    v25 = *(&v20 + 1);
    v24 = v20;
    v26 = *(&v19 + 1);
    v27 = v19;
    v53 = v18;
    v54 = HIBYTE(v18);
    sub_100063BD4(&v56, &v55);
    if (!v47)
    {
      goto LABEL_16;
    }

    v56 = __PAIR128__(v21, v47);
    v57 = __PAIR128__(v22, v23);
    v58 = __PAIR128__(v25, v24);
    v59 = __PAIR128__(v26, v27);
    v60 = __PAIR16__(v54, v53);
    sub_10009A094(&v56);
    if (v54)
    {
      sub_10009A040(&v61);
      goto LABEL_17;
    }

    v28 = v27;
    v3 = v50;
    v6 = v51;
    if (v53 & 1) != 0 || (v65[0])
    {
      goto LABEL_28;
    }

    if (((*(&v64 + 1) | v26) & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    if (v26 != *(&v64 + 1))
    {
LABEL_28:
      sub_10009A040(&v61);
      if (v6 == v5)
      {
      }

      goto LABEL_29;
    }

    v29 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v52[1];
    v30 = v55;
    v31 = sub_100063C84(v29, *(&v29 + 1));
    v33 = v30[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_40;
    }

    if (v30[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = v55;
        if ((v32 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v49 = v31;
        v42 = v32;
        sub_10013A4A0();
        v43 = v42;
        v31 = v49;
        v40 = v55;
        if ((v43 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v37 = v32;
      sub_1000C3328(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_100063C84(v29, *(&v29 + 1));
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_42;
      }

      v39 = v37;
      v40 = v55;
      if ((v39 & 1) == 0)
      {
LABEL_35:
        v40[(v31 >> 6) + 8] |= 1 << v31;
        *(v40[6] + 16 * v31) = v29;
        v44 = v40[7] + 24 * v31;
        *v44 = 0;
        *(v44 + 4) = 1;
        *(v44 + 8) = v25;
        *(v44 + 16) = v28 & 1;

        sub_10009A040(&v61);
        v45 = v40[2];
        v35 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v35)
        {
          goto LABEL_41;
        }

        v40[2] = v46;
        goto LABEL_37;
      }
    }

    v41 = v40[7] + 24 * v31;
    *v41 = 0;
    *(v41 + 4) = 1;
    *(v41 + 8) = v25;
    *(v41 + 16) = v28 & 1;
    sub_10009A040(&v61);
LABEL_37:
    v52[1] = v40;
    if (v51 == v5)
    {
    }

LABEL_29:
    ++v5;
    v7 += 96;
  }

  while (v5 < *(v3 + 16));
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

unint64_t *sub_100099A64(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  v29 = a4;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 48) + 16 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(a3 + 56) + 72 * v14;
    v27[0] = *v18;
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v21 = *(v18 + 16);
    v28 = *(v18 + 64);
    v27[2] = v20;
    v27[3] = v19;
    v27[1] = v21;

    sub_100063BD4(v27, v26);
    LOBYTE(v17) = v29(v16, v17, v27);
    sub_100063C30(v27);

    if (v17)
    {
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1000B19E0(v24, a2, v25, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1000B19E0(v24, a2, v25, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100099C08(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100099A64(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100098F34(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

double sub_100099D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100099DC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void sub_100099EB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1004A6554();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_1000990A8(v6, v7, 0, a1, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    v15 = sub_1004A6554();
    if (v14 == 255)
    {
      v16 = -v8;
    }

    else
    {
      v16 = v9;
    }

    if (v14 == 255)
    {
      v17 = v7;
    }

    else
    {
      v17 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= v15)
      {
        v22[0] = v15;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        sub_100098FC4(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

double sub_100099FD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10009A094(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CF248, &qword_1004D22C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009A150()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A188()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009A1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009A290(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v33 = a3;
  v40 = type metadata accessor for TaskHistory.Running(0);
  v32 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v31 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v35 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  result = sub_10001F060(a1, a2 & 1, a5);
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_19:
    v30 = 0;
    goto LABEL_20;
  }

  v19 = 0;
  v34 = result + 32;
  v37 = result;
  while (1)
  {
    if (v19 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v38 + 16);
    if (v20)
    {
      break;
    }

LABEL_3:
    ++v19;
    result = v37;
    if (v19 == v36)
    {
      goto LABEL_19;
    }
  }

  v21 = *(v34 + 4 * v19);
  v22 = v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v23 = *(v35 + 72);
  while (1)
  {
    sub_100019648(v22, v17, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v17, v14, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_10009A1C8(v14, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v22 += v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  v24 = *(v14 + 2);
  sub_100020EDC(*v14);
  if (v24 != v21)
  {
    goto LABEL_8;
  }

  v25 = *(v33 + 16);
  if (v25)
  {
    v26 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v27 = *(v32 + 72);
    do
    {
      v28 = v39;
      sub_100019648(v26, v39, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v28, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = *(v9 + 1);
        sub_100020EDC(*(v9 + 1));
        if (v29 == v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10009A1C8(v9, type metadata accessor for TaskHistory.Running);
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v30 = 1;
LABEL_20:

  return v30;
}

uint64_t sub_10009A61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, __n128))
{
  v39 = a3;
  v34 = a2;
  v41 = type metadata accessor for TaskHistory.Running(0);
  v33 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v40 = &v32 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v36 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v32 - v17;
  result = a5(a1, a4, v16);
  v37 = *(result + 16);
  if (!v37)
  {
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  v20 = 0;
  v35 = result + 32;
  v38 = result;
  while (1)
  {
    if (v20 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v21 = *(v39 + 16);
    if (v21)
    {
      break;
    }

LABEL_3:
    ++v20;
    result = v38;
    if (v20 == v37)
    {
      goto LABEL_19;
    }
  }

  v22 = *(v35 + 4 * v20);
  v23 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v24 = *(v36 + 72);
  while (1)
  {
    sub_100019648(v23, v18, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v18, v14, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_10009A1C8(v14, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v23 += v24;
    if (!--v21)
    {
      goto LABEL_3;
    }
  }

  v25 = *(v14 + 2);
  sub_100020EDC(*v14);
  if (v25 != v22)
  {
    goto LABEL_8;
  }

  v26 = *(v34 + 16);
  if (v26)
  {
    v27 = v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v28 = *(v33 + 72);
    do
    {
      v29 = v40;
      sub_100019648(v27, v40, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v29, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = *(v9 + 1);
        sub_100020EDC(*(v9 + 1));
        if (v30 == v22)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10009A1C8(v9, type metadata accessor for TaskHistory.Running);
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v31 = 1;
LABEL_20:

  return v31;
}

void *sub_10009A990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v33 = a3;
  v40 = type metadata accessor for TaskHistory.Running(0);
  v32 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v31 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v35 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  result = sub_10001FE00(a1, a2, a5);
  v36 = result[2];
  if (!v36)
  {
LABEL_19:
    v30 = 0;
    goto LABEL_20;
  }

  v19 = 0;
  v34 = result + 4;
  v37 = result;
  while (1)
  {
    if (v19 >= result[2])
    {
      __break(1u);
      return result;
    }

    v20 = *(v38 + 16);
    if (v20)
    {
      break;
    }

LABEL_3:
    ++v19;
    result = v37;
    if (v19 == v36)
    {
      goto LABEL_19;
    }
  }

  v21 = *(v34 + v19);
  v22 = v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v23 = *(v35 + 72);
  while (1)
  {
    sub_100019648(v22, v17, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v17, v14, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_10009A1C8(v14, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v22 += v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  v24 = *(v14 + 2);
  sub_100020EDC(*v14);
  if (v24 != v21)
  {
    goto LABEL_8;
  }

  v25 = *(v33 + 16);
  if (v25)
  {
    v26 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v27 = *(v32 + 72);
    do
    {
      v28 = v39;
      sub_100019648(v26, v39, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v28, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = *(v9 + 1);
        sub_100020EDC(*(v9 + 1));
        if (v29 == v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10009A1C8(v9, type metadata accessor for TaskHistory.Running);
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v30 = 1;
LABEL_20:

  return v30;
}

uint64_t sub_10009AD04(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v31 = a2;
  v38 = type metadata accessor for TaskHistory.Running(0);
  v30 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v29 - v9;
  v10 = type metadata accessor for TaskHistory.Previous(0);
  v33 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  result = sub_1000203BC(a1 & 1, a4);
  v34 = *(result + 16);
  if (!v34)
  {
LABEL_19:
    v28 = 0;
    goto LABEL_20;
  }

  v17 = 0;
  v32 = result + 32;
  v35 = result;
  while (1)
  {
    if (v17 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v18 = *(v36 + 16);
    if (v18)
    {
      break;
    }

LABEL_3:
    ++v17;
    result = v35;
    if (v17 == v34)
    {
      goto LABEL_19;
    }
  }

  v19 = *(v32 + 4 * v17);
  v20 = v36 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v21 = *(v33 + 72);
  while (1)
  {
    sub_100019648(v20, v15, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v15, v12, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_10009A1C8(v12, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v20 += v21;
    if (!--v18)
    {
      goto LABEL_3;
    }
  }

  v22 = *(v12 + 2);
  sub_100020EDC(*v12);
  if (v22 != v19)
  {
    goto LABEL_8;
  }

  v23 = *(v31 + 16);
  if (v23)
  {
    v24 = v31 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v25 = *(v30 + 72);
    do
    {
      v26 = v37;
      sub_100019648(v24, v37, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v26, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = *(v7 + 1);
        sub_100020EDC(*(v7 + 1));
        if (v27 == v19)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10009A1C8(v7, type metadata accessor for TaskHistory.Running);
      }

      v24 += v25;
      --v23;
    }

    while (v23);
  }

  v28 = 1;
LABEL_20:

  return v28;
}

__n128 sub_10009B0A4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_10009B0D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_10009B120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10009B19C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v12 << 6)));
      a1(&v13);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_10009B290(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v14 = *v13;
      LODWORD(v13) = *(v13 + 8);
      v15 = v14;
      v16 = v13;

      a1(&v15);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

BOOL sub_10009B3D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_10009D400(v13, v14);
}

uint64_t sub_10009B464(uint64_t a1)
{
  v3 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  v9 = *(v1 + 96);
  if (!v9)
  {
    return sub_100088204(&v15, a1);
  }

  v10 = v9 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v11 = _s13SelectedStateV7WrappedVMa(0);
  sub_10009DEEC(v10 + *(v11 + 20), v5, type metadata accessor for MailboxSyncState);
  sub_10009DAE8(v5, v8, type metadata accessor for MailboxSyncState);
  if (*(v8[19] + 16) != 15 || *(v8[20] + 16))
  {
    sub_10009DF54(v8, type metadata accessor for MailboxSyncState);
    return sub_100088204(&v15, a1);
  }

  v13 = *(v8[21] + 16);
  result = sub_10009DF54(v8, type metadata accessor for MailboxSyncState);
  if (v13)
  {
    return sub_100088204(&v15, a1);
  }

  return result;
}

_DWORD *sub_10009B638@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result & 0xFFFFFF;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_10009B658()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10009B6CC(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1004A6EE4(v2);
  return sub_1004A6F14();
}

uint64_t sub_10009B724(__int128 *a1, int a2, uint64_t a3, void *a4)
{
  v54 = a3;
  v55 = a4;
  LODWORD(v59) = a2;
  v53 = _s12LocalMailboxV6LoggerVMa(0);
  __chkstk_darwin(v53);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v52 - v8;
  __chkstk_darwin(v9);
  v58 = &v52 - v10;
  v11 = type metadata accessor for PendingPersistenceUpdates(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v14);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 96);
  v69 = v20;
  v21 = a1[2];
  v71 = a1[1];
  v72 = v21;
  v73[0] = a1[3];
  *(v73 + 11) = *(a1 + 59);
  v70 = *a1;
  v22 = *a1;
  if (*a1)
  {
    v64 = *a1;
    v65 = *(a1 + 8);
    v66 = *(a1 + 24);
    v67 = *(a1 + 40);
    *v68 = *(a1 + 56);
    *&v68[15] = *(a1 + 71);
    v23 = v4;
    if (v65 | (v65 << 32)) == (*(v4 + 24) | (*(v4 + 24) << 32)) && (sub_1000FFC98(v22, *(v4 + 16)))
    {
      v24 = v4;
      sub_10000E268(a1, v60, &qword_1005CF260, &qword_1004D2420);
      sub_10000E268(a1, v60, &qword_1005CF260, &qword_1004D2420);

      sub_1000D1464(&v64, v54, v19);
      sub_100025F40(&v69, &qword_1005CF258, &qword_1004D2418);
      v25 = *(v4 + 84);
      v26 = *(v4 + 88);
      *v16 = v59;
      sub_10009DAE8(v19, v16 + *(v14 + 20), type metadata accessor for MailboxSyncState);
      v27 = v16 + *(v14 + 24);
      *v27 = v25;
      v27[4] = v26;
      _s13SelectedStateV8_StorageCMa(0);
      v28 = swift_allocObject();
      sub_10009DAE8(v16, v28 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      *(v24 + 96) = v28;
      return result;
    }

    sub_10000E268(a1, v60, &qword_1005CF260, &qword_1004D2420);

    if (!v20)
    {
      return sub_100025F40(&v69, &qword_1005CF258, &qword_1004D2418);
    }
  }

  else
  {

    v23 = v4;
    if (!v20)
    {
      return sub_100025F40(&v69, &qword_1005CF258, &qword_1004D2418);
    }
  }

  v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  if (*(v20 + v30) != v59)
  {
    return sub_100025F40(&v69, &qword_1005CF258, &qword_1004D2418);
  }

  v31 = v20 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_10009DEEC(v31 + *(v14 + 20) + *(v17 + 52), v13, type metadata accessor for PendingPersistenceUpdates);
  v61 = _swiftEmptySetSingleton;
  if (*v13 == 1)
  {
    swift_retain_n();
    sub_100088568(v63, 6);
  }

  else
  {
    swift_retain_n();
  }

  if (v13[1] == 1)
  {
    sub_100088568(v63, 7);
  }

  if (v13[2] == 1)
  {
    sub_100088568(v63, 8);
  }

  v32 = v61;
  sub_10009DF54(v13, type metadata accessor for PendingPersistenceUpdates);
  v33 = v32[2];

  if (v33)
  {
    v34 = v55;
    v35 = v58;
    sub_10009DEEC(v55, v58, _s12LocalMailboxV6LoggerVMa);
    v36 = v56;
    sub_10009DEEC(v34, v56, _s12LocalMailboxV6LoggerVMa);
    v37 = v57;
    sub_10009DEEC(v34, v57, _s12LocalMailboxV6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v38 = sub_1004A4A54();
    v39 = sub_1004A5FF4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v63[0] = v55;
      *v40 = 68158979;
      LODWORD(v54) = v39;
      v41 = v37;
      v42 = v36;
      v59 = v23;
      *(v40 + 4) = 2;
      *(v40 + 8) = 256;
      v43 = v53;
      v44 = *(v36 + *(v53 + 20));
      sub_10009DF54(v42, _s12LocalMailboxV6LoggerVMa);
      *(v40 + 10) = v44;
      *(v40 + 11) = 1040;
      *(v40 + 13) = 2;
      *(v40 + 17) = 512;
      v45 = *(v41 + *(v43 + 20) + 2);
      sub_10009DF54(v41, _s12LocalMailboxV6LoggerVMa);
      *(v40 + 19) = v45;
      *(v40 + 21) = 2160;
      *(v40 + 23) = 0x786F626C69616DLL;
      *(v40 + 31) = 2085;
      v46 = v35 + *(v43 + 20);
      v47 = *(v46 + 8);
      v48 = *(v46 + 16);

      sub_10009DF54(v35, _s12LocalMailboxV6LoggerVMa);
      v61 = v47;
      v62 = v48;
      v49 = sub_1004A5824();
      v51 = sub_10015BA6C(v49, v50, v63);

      *(v40 + 33) = v51;
      v23 = v59;
      _os_log_impl(&_mh_execute_header, v38, v54, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Mailbox has pending updates while being deselected.", v40, 0x29u);
      sub_1000197E0(v55);
    }

    else
    {
      sub_10009DF54(v37, _s12LocalMailboxV6LoggerVMa);
      sub_10009DF54(v36, _s12LocalMailboxV6LoggerVMa);

      sub_10009DF54(v35, _s12LocalMailboxV6LoggerVMa);
    }

    Set<>.formNonEmpty()();
  }

  sub_100025F40(&v69, &qword_1005CF258, &qword_1004D2418);

  *(v23 + 96) = 0;
  return result;
}

void sub_10009BE74(int a1, uint64_t a2)
{
  v40 = a2;
  v41 = a1;
  v34 = _s19UserInitiatedSearchV5StateOMa(0);
  __chkstk_darwin(v34);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v30 - v7;
  v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v8 - 8);
  v39 = &v30 - v9;
  v10 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v35 = &v30 - v11;
  v31 = _s19UserInitiatedSearchVMa(0);
  v12 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v30 - v15);
  v17 = *(v2 + 152);
  v36 = (v2 + 152);
  v18 = v17[2];
  if (!v18)
  {
    return;
  }

  v19 = 0;
  while (1)
  {
    if (v19 >= v17[2])
    {
      __break(1u);
LABEL_17:
      v17 = sub_1001398CC(v17);
      goto LABEL_10;
    }

    v3 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v4 = *(v12 + 72) * v19;
    sub_10009DEEC(v17 + v3 + v4, v16, _s19UserInitiatedSearchVMa);
    v20 = *v16;
    sub_10009DF54(v16, _s19UserInitiatedSearchVMa);
    if (v20 == v41)
    {
      break;
    }

    if (v18 == ++v19)
    {
      return;
    }
  }

  v21 = v39;
  sub_10000E268(v40, v39, &qword_1005CD518, &qword_1004CF2F0);
  if ((*(v37 + 48))(v21, 1, v38) == 1)
  {
    sub_100025F40(v21, &qword_1005CD518, &qword_1004CF2F0);
    v22 = v33;
    sub_100169140(v19, v33);
    sub_10009DF54(v22, _s19UserInitiatedSearchVMa);
    return;
  }

  sub_10009DE7C(v21, v35);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (v19 >= v17[2])
  {
    __break(1u);
  }

  else
  {
    v23 = v32;
    v24 = v17 + v3 + *(v31 + 20);
    sub_10009DEEC(&v24[v4], v32, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100025F40(v35, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10009DF54(v23, _s19UserInitiatedSearchV5StateOMa);
    }

    else
    {
      sub_10009DF54(v23, _s19UserInitiatedSearchV5StateOMa);
      v25 = v35;
      v26 = v30;
      sub_10000E268(v35, v30, &qword_1005CD1D0, &unk_1004CF2C0);
      MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
      sub_100016D2C();
      sub_1004A7114();
      sub_100025F40(v25, &qword_1005CD1D0, &unk_1004CF2C0);
      v28 = *(MessagesVMa + 24);
      v29 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      (*(*(v29 - 8) + 56))(v26 + v28, 1, 1, v29);
      swift_storeEnumTagMultiPayload();
      sub_10009DFB4(v26, &v24[v4]);
    }

    *v36 = v17;
  }
}

char *sub_10009C364(char *result, uint64_t a2)
{
  v3 = *(v2 + 152);
  v4 = v3[2];
  if (v4)
  {
    v5 = v2;
    v7 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v3 = sub_1001398CC(v3);
    }

    for (i = 0; i != v4; ++i)
    {
      if (i >= v3[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      _s19UserInitiatedSearchVMa(0);
      result = sub_100185010(v7, a2);
    }

    *(v5 + 152) = v3;
  }

  return result;
}

void sub_10009C45C(uint64_t a1)
{
  v2 = v1;
  v36 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v36);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_10009D814((v1 + 144), a1);

  v6 = *(*(v2 + 144) + 16);
  if (v6 >= v5)
  {
    sub_100164994(v5, v6);
    v7 = a1 + 56;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 56);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v13 = &off_1005D1000;
    v34 = v2;
    v35 = a1;
    while (v10)
    {
      v14 = v10;
LABEL_13:
      v10 = (v14 - 1) & v14;
      if (*(v2 + 96))
      {
        v16 = (*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v14)))));
        v17 = *v16;
        v18 = v16[1];
        sub_100014CEC(*v16, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(v2 + 96);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = v13[85];
          swift_beginAccess();
          v22 = v21 + v20;
          v23 = v33;
          sub_10009DEEC(v22, v33, _s13SelectedStateV7WrappedVMa);
          _s13SelectedStateV8_StorageCMa(0);
          v24 = swift_allocObject();
          sub_10009DAE8(v23, v24 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

          *(v2 + 96) = v24;
          v20 = v24;
          v13 = &off_1005D1000;
        }

        v25 = v13[85] + v20;
        swift_beginAccess();
        v26 = &v25[*(v36 + 20)];
        v27 = *(type metadata accessor for MailboxSyncState(0) + 56);
        v28 = sub_100063DD8(v17, v18);
        if (v29)
        {
          v30 = v28;
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v32 = *&v26[v27];
          v37 = v32;
          *&v26[v27] = 0x8000000000000000;
          if (!v31)
          {
            sub_10013AF64();
            v32 = v37;
          }

          sub_100014D40(*(*(v32 + 48) + 16 * v30), *(*(v32 + 48) + 16 * v30 + 8));
          sub_10013D538(v30, v32);
          *&v26[v27] = v32;
        }

        swift_endAccess();
        sub_100014D40(v17, v18);
        v2 = v34;
        a1 = v35;
        v13 = &off_1005D1000;
      }
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v15 >= v11)
      {

        return;
      }

      v14 = *(v7 + 8 * v15);
      ++v12;
      if (v14)
      {
        v12 = v15;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10009C748(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a2;
  v23 = v2;
  sub_10009B19C(sub_10009DA78, v21, a1);
  v8 = *(v2 + 96);
  if (v8)
  {
    v9 = v8 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v10 = _s13SelectedStateV7WrappedVMa(0);
    v11 = (v9 + *(v10 + 20));
    if (*(v11[19] + 16) == 15 && !*(v11[20] + 16) && !*(v11[21] + 16))
    {
      v12 = (v9 + *(v10 + 24));
      v13 = *v12;
      v14 = *(v12 + 4);
      sub_10009DEEC(v11, v7, type metadata accessor for MailboxSyncState);
      v15 = *(v7 + 4);
      v16 = v7[20];
      v17 = *(v7 + 3);
      v18 = v7[32];
      sub_10009DF54(v7, type metadata accessor for MailboxSyncState);
      *(v2 + 104) = v13;
      if (v16 & 1 | (v18 > 1))
      {
        v19 = 0;
      }

      else
      {
        v19 = v15;
      }

      *(v2 + 108) = v14;
      if (v16 & 1 | (v18 > 1))
      {
        v20 = 0;
      }

      else
      {
        v20 = v17;
      }

      *(v2 + 112) = v19;
      *(v2 + 120) = v20;
      *(v2 + 128) = v16 & 1 | (v18 > 1);
    }
  }
}

uint64_t sub_10009C8DC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v6);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = *a1;
  sub_10009DEEC(a2, &v37 - v12, type metadata accessor for MailboxTaskLogger);
  sub_10009DEEC(a2, v10, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v15 = sub_1004A4A54();
  v16 = sub_1004A5FF4();
  if (!os_log_type_enabled(v15, v16))
  {
    sub_10009DF54(v10, type metadata accessor for MailboxTaskLogger);

    sub_10009DF54(v13, type metadata accessor for MailboxTaskLogger);
    result = *(a3 + 96);
    if (!result)
    {
      return result;
    }

LABEL_5:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = *(a3 + 96);
      v33 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v34 = v40;
      sub_10009DEEC(v32 + v33, v40, _s13SelectedStateV7WrappedVMa);
      _s13SelectedStateV8_StorageCMa(0);
      v35 = swift_allocObject();
      sub_10009DAE8(v34, v35 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
      *(a3 + 96) = v35;
    }

    swift_beginAccess();
    if (sub_100014D94())
    {
      sub_10013FC9C(v14);
      v36 = v14;
    }

    else
    {
      if ((sub_100014D94() & 1) == 0 || (sub_100014D94() & 1) == 0)
      {
        sub_100088568(&v44, v14);
        return swift_endAccess();
      }

      v36 = v14;
    }

    sub_10013FC9C(v36);
    return swift_endAccess();
  }

  v17 = swift_slowAlloc();
  v39 = v6;
  v18 = v17;
  v38 = swift_slowAlloc();
  v41[0] = v38;
  *v18 = 68159491;
  *(v18 + 4) = 2;
  *(v18 + 8) = 256;
  v19 = *(v8 + 20);
  v37 = v15;
  v20 = &v10[v19];
  *(v18 + 10) = v10[v19];
  *(v18 + 11) = 2082;
  v21 = *(v8 + 20);
  v43 = v16;
  v22 = &v13[v21];
  *(v18 + 13) = sub_10015BA6C(*&v13[v21 + 8], *&v13[v21 + 16], v41);
  *(v18 + 21) = 1040;
  *(v18 + 23) = 2;
  *(v18 + 27) = 512;
  LOWORD(v20) = *(v20 + 12);
  sub_10009DF54(v10, type metadata accessor for MailboxTaskLogger);
  *(v18 + 29) = v20;
  *(v18 + 31) = 2160;
  *(v18 + 33) = 0x786F626C69616DLL;
  *(v18 + 41) = 2085;
  v23 = *(v22 + 4);
  LODWORD(v22) = *(v22 + 10);

  sub_10009DF54(v13, type metadata accessor for MailboxTaskLogger);
  v41[3] = v23;
  v42 = v22;
  v24 = sub_1004A5824();
  v26 = sub_10015BA6C(v24, v25, v41);

  *(v18 + 43) = v26;
  *(v18 + 51) = 2080;
  v27 = sub_100167A8C(v14);
  v29 = sub_10015BA6C(v27, v28, v41);

  *(v18 + 53) = v29;
  v30 = v37;
  _os_log_impl(&_mh_execute_header, v37, v43, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking step %s as complete.", v18, 0x3Du);
  swift_arrayDestroy();

  result = *(a3 + 96);
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

Swift::Int sub_10009CDB8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    sub_1004A6EB4(1uLL);
    sub_1004A6EF4(v1);
  }

  return sub_1004A6F14();
}

void sub_10009CE28()
{
  if (*(v0 + 8) == 1)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v1 = *v0;
    sub_1004A6EB4(1uLL);
    sub_1004A6EF4(v1);
  }
}

Swift::Int sub_10009CE78(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1004A6E94();
  if (v3 == 1)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    sub_1004A6EB4(1uLL);
    sub_1004A6EF4(v2);
  }

  return sub_1004A6F14();
}

BOOL sub_10009CEE4(_BOOL8 result, uint64_t a2)
{
  if (*(result + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return *a2 == *result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009CF2C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A4904();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A4944();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = tracingSignposter.unsafeMutableAddressor();
  (*(v11 + 16))(v13, v14, v10);
  sub_1004A4914();
  sub_10000E08C(v1, &v38);
  sub_10000E08C(v1, &v38);
  sub_10000E08C(v1, &v38);
  sub_10000E08C(v1, &v38);
  v15 = sub_1004A4934();
  v36 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v33 = v5;
    v35 = v9;
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v16 = 141558787;
    *(v16 + 4) = 0x786F626C69616DLL;
    *(v16 + 12) = 2085;
    v17 = *(v1 + 24);
    v38 = *(v1 + 16);
    v39 = v17;

    v18 = sub_1004A5824();
    v20 = sub_10015BA6C(v18, v19, &v37);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2048;
    v21 = *(*(v1 + 136) + 16);
    sub_10000E0E8(v1);
    *(v16 + 24) = v21;
    sub_10000E0E8(v1);
    *(v16 + 32) = 1024;
    v22 = *(v1 + 96);
    if (v22)
    {
      v23 = v22 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v24 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
      v32 = v10;
      v25 = v23 + v24;
      v26 = v33;
      sub_10009DEEC(v25, v33, type metadata accessor for MailboxSyncState);
      v27 = sub_100168038(*(v26 + 152));
      v10 = v32;
      sub_10009DF54(v26, type metadata accessor for MailboxSyncState);
    }

    else
    {
      v27 = 0;
    }

    sub_10000E0E8(v2);
    *(v16 + 34) = v27;
    sub_10000E0E8(v2);
    v28 = v35;
    v29 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v36, v29, "LocalMailbox", "Mailbox %{sensitive,mask.mailbox}s syncs: %ld, steps: %u", v16, 0x26u);
    sub_1000197E0(v34);

    (*(v7 + 8))(v28, v6);
  }

  else
  {
    sub_10000E0E8(v1);
    sub_10000E0E8(v1);

    sub_10000E0E8(v1);
    sub_10000E0E8(v1);
    (*(v7 + 8))(v9, v6);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10009D3A0(uint64_t result, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  if ((result & 0x100000000) != 0)
  {
    if ((a5 & 0x100000000) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v8 = result;
  result = 0;
  if ((a5 & 0x100000000) == 0 && v8 == a5)
  {
LABEL_6:
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a2 == a6)
    {
      if ((a7 | a3) < 0)
      {
        __break(1u);
        return result;
      }

      if (a7 == a3)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_10009D400(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v28[-v8];
  v10 = *(a1 + 48);
  v31[2] = *(a1 + 32);
  v31[3] = v10;
  v32[0] = *(a1 + 64);
  *(v32 + 9) = *(a1 + 73);
  v11 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v11;
  v12 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v12;
  v30[0] = *(a2 + 64);
  *(v30 + 9) = *(a2 + 73);
  v13 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v13;
  if ((static MailboxOfInterest.__derived_struct_equals(_:_:)(v31, v29) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 96);
  v15 = *(a2 + 96);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    sub_10009DEEC(v14 + v16, v9, _s13SelectedStateV7WrappedVMa);
    v17 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    sub_10009DEEC(v15 + v17, v6, _s13SelectedStateV7WrappedVMa);
    if (*v9 != *v6 || (sub_1000D42EC(v9 + *(v4 + 20), v6 + *(v4 + 20)) & 1) == 0)
    {
LABEL_8:
      sub_10009DF54(v6, _s13SelectedStateV7WrappedVMa);
      sub_10009DF54(v9, _s13SelectedStateV7WrappedVMa);
      return 0;
    }

    v18 = *(v4 + 24);
    v19 = (v9 + v18);
    v20 = *(v9 + v18 + 4);
    v21 = (v6 + v18);
    v22 = *(v6 + v18 + 4);
    if (v20)
    {
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (*v19 != *v21)
      {
        LOBYTE(v22) = 1;
      }

      if (v22)
      {
        goto LABEL_8;
      }
    }

    sub_10009DF54(v6, _s13SelectedStateV7WrappedVMa);
    sub_10009DF54(v9, _s13SelectedStateV7WrappedVMa);
  }

  else if (v15)
  {
    return 0;
  }

  v24 = *(a1 + 120);
  v25 = *(a2 + 120);
  if (*(a1 + 108))
  {
    if ((*(a2 + 108) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 108) & 1) != 0 || *(a1 + 104) != *(a2 + 104))
    {
      return result;
    }
  }

  if (*(a1 + 128))
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 128) & 1) != 0 || *(a1 + 112) != *(a2 + 112))
    {
      return result;
    }

    if ((v25 | v24) < 0)
    {
      __break(1u);
      return result;
    }

    if (v25 != v24)
    {
      return 0;
    }
  }

  if ((sub_100083308(*(a1 + 136), *(a2 + 136)) & 1) == 0 || (sub_100100A64(*(a1 + 144), *(a2 + 144)) & 1) == 0 || (sub_1001014BC(*(a1 + 152), *(a2 + 152)) & 1) == 0)
  {
    return 0;
  }

  v26 = *(a2 + 160);
  v27 = *(a2 + 168);
  if (!*(a1 + 168))
  {
    result = 0;
    if (*(a2 + 168))
    {
      return result;
    }

    goto LABEL_36;
  }

  if (*(a1 + 168) == 1)
  {
    result = 0;
    if (v27 != 1)
    {
      return result;
    }

LABEL_36:
    if (*(a1 + 160) != v26)
    {
      return result;
    }

    return *(a1 + 172) == *(a2 + 172);
  }

  result = 0;
  if (v27 == 2 && !v26)
  {
    return *(a1 + 172) == *(a2 + 172);
  }

  return result;
}

uint64_t sub_10009D744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = a1 + 56; ; i += 40)
  {
    v6 = *(i - 16);
    v7 = *(i - 8);
    sub_100014CEC(v6, v7);

    v8 = sub_100011E60(v6, v7, a2);
    sub_100014D40(v6, v7);

    if (v8)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_10009D814(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_10009D744(*a1, a2);
  v35 = result;
  if (v2)
  {
    return v35;
  }

  if (v5)
  {
    return *(v3 + 16);
  }

  v6 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v8 = (v3 + 16);
    v7 = *(v3 + 16);
    if (v6 == v7)
    {
      return v35;
    }

    v9 = 40 * result + 104;
    while (v6 < v7)
    {
      v14 = v3 + v9;
      v15 = *(v3 + v9 - 24);
      v16 = *(v3 + v9 - 16);
      sub_100014CEC(v15, v16);

      v17 = sub_100011E60(v15, v16, a2);
      sub_100014D40(v15, v16);

      if ((v17 & 1) == 0)
      {
        v13 = v35;
        if (v6 != v35)
        {
          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v35 >= *v8)
          {
            goto LABEL_24;
          }

          if (v6 >= *v8)
          {
            goto LABEL_25;
          }

          v18 = 40 * v35;
          v19 = v3 + 32 + 40 * v35;
          v20 = *(v19 + 24);
          v28 = *(v19 + 32);
          v31 = *v19;
          v32 = *(v14 - 32);
          v22 = *(v14 - 24);
          v21 = *(v14 - 16);
          v23 = *(v14 - 8);
          v24 = *(v3 + v9);
          v30 = *(v19 + 8);
          v29 = *(v19 + 16);
          sub_100014CEC(v30, v29);

          sub_100014CEC(v22, v21);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001398F4(v3);
            v3 = result;
          }

          if (v35 >= *(v3 + 16))
          {
            goto LABEL_26;
          }

          v25 = v3 + v18;
          v26 = *(v3 + v18 + 40);
          v27 = *(v3 + v18 + 48);
          *(v25 + 32) = v32;
          *(v25 + 40) = v22;
          *(v25 + 48) = v21;
          *(v25 + 56) = v23;
          *(v25 + 64) = v24;
          sub_100014D40(v26, v27);

          if (v6 >= *(v3 + 16))
          {
            goto LABEL_27;
          }

          v10 = (v3 + v9);
          v11 = *(v3 + v9 - 24);
          v12 = *(v3 + v9 - 16);
          *(v10 - 8) = v31;
          *(v10 - 3) = v30;
          *(v10 - 2) = v29;
          *(v10 - 1) = v20;
          *v10 = v28;
          sub_100014D40(v11, v12);

          *a1 = v3;
          v13 = v35;
        }

        v35 = v13 + 1;
      }

      ++v6;
      v8 = (v3 + 16);
      v7 = *(v3 + 16);
      v9 += 40;
      if (v6 == v7)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009DAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s12LocalMailboxV6LoggerVMa(uint64_t a1)
{
  result = qword_1005CF2C0;
  if (!qword_1005CF2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009DBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009DC84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A4A74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009DD40(uint64_t a1)
{
  result = sub_1004A4A74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10009DDB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009DDD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_10009DE28()
{
  result = qword_1005CF2F8;
  if (!qword_1005CF2F8)
  {
    result = swift_getWitnessTable("MH\v", &_s12LocalMailboxV9TracingIDVN, v0, v1);
    atomic_store(result, &qword_1005CF2F8);
  }

  return result;
}

uint64_t sub_10009DE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DEEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DF54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009DFB4(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009E02C()
{
  result = qword_1005CF300;
  if (!qword_1005CF300)
  {
    result = swift_getWitnessTable(byte_1004D257C, &_s12LocalMailboxV41HighestModificationSequenceUpdateBehaviorON, v0, v1);
    atomic_store(result, &qword_1005CF300);
  }

  return result;
}

uint64_t sub_10009E080(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v16 = *(a3 + 16);
  v17 = result;
  if (v16)
  {
    v4 = 0;
    v5 = (a3 + 52);
    v6 = _swiftEmptyArrayStorage;
    while (v4 < *(v3 + 16))
    {
      v7 = *(v5 - 5);
      v8 = *(v5 - 12);
      v9 = *(v5 - 1);
      v10 = *v5;
      v19 = v7;
      v20 = v8;
      v21 = v9;
      v22 = v10;
      Mailbox.name.getter(v8);
      v11 = v17(&v19);
      if (v18)
      {
        j__swift_bridgeObjectRelease(v8);

        goto LABEL_15;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v6;
        if ((result & 1) == 0)
        {
          result = sub_100091A68(0, v6[2] + 1, 1);
          v6 = v23;
        }

        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_100091A68((v12 > 1), v13 + 1, 1);
          v6 = v23;
        }

        v6[2] = v13 + 1;
        v14 = &v6[3 * v13];
        *(v14 + 8) = v7;
        v14[5] = v8;
        *(v14 + 12) = v9;
        *(v14 + 52) = v10;
        v3 = a3;
      }

      else
      {
        result = j__swift_bridgeObjectRelease(v8);
      }

      ++v4;
      v5 += 24;
      if (v16 == v4)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_15:

    return v6;
  }

  return result;
}

uint64_t sub_10009E234(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;

      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_100091A88(0, v7[2] + 1, 1);
          v7 = v22;
        }

        v13 = v7[2];
        v12 = v7[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_100091A88((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        v7[2] = v14;
        v15 = &v7[3 * v13];
        *(v15 + 8) = v8;
        v15[5] = v10;
        v15[6] = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_16:

    return v7;
  }

  return result;
}

uint64_t sub_10009E3BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;

      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_100091AE8(0, v7[2] + 1, 1);
          v7 = v22;
        }

        v13 = v7[2];
        v12 = v7[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_100091AE8((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        v7[2] = v14;
        v15 = &v7[3 * v13];
        *(v15 + 8) = v8;
        v15[5] = v10;
        v15[6] = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_16:

    return v7;
  }

  return result;
}

uint64_t sub_10009E544(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;

      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_100091C08(0, v7[2] + 1, 1);
          v7 = v22;
        }

        v13 = v7[2];
        v12 = v7[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_100091C08((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        v7[2] = v14;
        v15 = &v7[3 * v13];
        *(v15 + 8) = v8;
        v15[5] = v10;
        v15[6] = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_16:

    return v7;
  }

  return result;
}

void sub_10009E6CC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  v24 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_10000E268(a3 + v14 + v15 * v12, v11, &qword_1005CEA38, &qword_1004D14F0);
      v16 = a1(v11);
      if (v3)
      {
        sub_100025F40(v11, &qword_1005CEA38, &qword_1004D14F0);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_100025FDC(v11, v23, &qword_1005CEA38, &qword_1004D14F0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100091DC8(0, v13[2] + 1, 1);
          v13 = v25;
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          sub_100091DC8((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        v13[2] = v19 + 1;
        sub_100025FDC(v23, v13 + v14 + v19 * v15, &qword_1005CEA38, &qword_1004D14F0);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_100025F40(v11, &qword_1005CEA38, &qword_1004D14F0);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_10009E950(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v24 = *(SearchResult - 8);
  __chkstk_darwin(SearchResult - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_1000B4820(a3 + v14 + v15 * v12, v11, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v16 = a1(v11);
      if (v3)
      {
        sub_1000B35D0(v11, type metadata accessor for FetchSearchResultMessages.Requests.Search);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1000B4888(v11, v23, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100091EE8(0, v13[2] + 1, 1);
          v13 = v25;
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          sub_100091EE8((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        v13[2] = v19 + 1;
        sub_1000B4888(v23, v13 + v14 + v19 * v15, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_1000B35D0(v11, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_10009EBDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 49);
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(v4 + 16))
    {
      v12 = *(v6 - 17);
      v13 = *(v6 - 9);
      v14 = *(v6 - 1);
      v15 = *v6;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      v22 = v15;
      result = v18(&v19);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v7;
        if ((result & 1) == 0)
        {
          result = sub_100091FA8(0, v7[2] + 1, 1);
          v7 = v23;
        }

        v9 = v7[2];
        v8 = v7[3];
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          result = sub_100091FA8((v8 > 1), v9 + 1, 1);
          v10 = v9 + 1;
          v3 = 0;
          v7 = v23;
        }

        v7[2] = v10;
        v11 = &v7[3 * v9];
        *(v11 + 8) = v12;
        v11[5] = v13;
        *(v11 + 48) = v14;
        *(v11 + 49) = v15;
        v4 = a3;
      }

      ++v5;
      v6 += 24;
      if (v17 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_15:

    return v7;
  }

  return result;
}

uint64_t sub_10009EE10(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(BOOL, uint64_t, uint64_t))
{
  v7 = a3;
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = a4;
    v10 = result;
    v11 = 0;
    v12 = (a3 + 48);
    v13 = _swiftEmptyArrayStorage;
    v25 = result;
    v24 = *(a3 + 16);
    while (v11 < *(v7 + 16))
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      v29 = *(v12 - 4);
      v30 = v14;
      v31 = v15;
      v9();
      v16 = v10(&v29);
      if (v6)
      {
        a5(v30, v31);

        goto LABEL_15;
      }

      if (v16)
      {
        v17 = v29;
        v19 = v30;
        v18 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        v32 = v13;
        if ((result & 1) == 0)
        {
          result = a6(0, v13[2] + 1, 1);
          v13 = v32;
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          result = a6(v20 > 1, v21 + 1, 1);
          v13 = v32;
        }

        v13[2] = v21 + 1;
        v22 = &v13[3 * v21];
        *(v22 + 8) = v17;
        v22[5] = v19;
        v22[6] = v18;
        v9 = a4;
        v7 = a3;
        v10 = v25;
        v8 = v24;
      }

      else
      {
        result = a5(v30, v31);
      }

      ++v11;
      v12 += 3;
      if (v8 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_10009EFD8(uint64_t a1, void (*a2)(_BYTE *__return_ptr, _BYTE *), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    v7 = a1 + 32;
    v8 = *(a4 + 16);
    v38 = (a4 + 32);
    v9 = _swiftEmptyArrayStorage;
    v36 = a1 + 32;
    do
    {
      v20 = (v7 + 24 * v6);
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = *(v20 + 16);
      LOBYTE(v20) = *(v20 + 17);
      *v40 = v21;
      *&v40[8] = v22;
      v40[16] = v23;
      v40[17] = v20;
      v5(v39, v40);
      if (v8)
      {
        v24 = *v39;
        v25 = v38;
        v26 = v8;
        while (1)
        {
          v27 = v25[9];
          *&v40[128] = v25[8];
          *&v40[144] = v27;
          *&v40[160] = v25[10];
          *&v40[169] = *(v25 + 169);
          v28 = v25[5];
          *&v40[64] = v25[4];
          *&v40[80] = v28;
          v29 = v25[7];
          *&v40[96] = v25[6];
          *&v40[112] = v29;
          v30 = v25[1];
          *v40 = *v25;
          *&v40[16] = v30;
          v31 = v25[3];
          *&v40[32] = v25[2];
          *&v40[48] = v31;
          if (*v39 == *v40)
          {
            break;
          }

          v25 += 12;
          if (!--v26)
          {
            goto LABEL_4;
          }
        }

        sub_10001025C(v40, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000866F0(0, v9[2] + 1, 1, v9);
        }

        v33 = v9[2];
        v32 = v9[3];
        if (v33 >= v32 >> 1)
        {
          v9 = sub_1000866F0((v32 > 1), v33 + 1, 1, v9);
        }

        *&v39[132] = *&v40[136];
        *&v39[148] = *&v40[152];
        *&v39[164] = *&v40[168];
        v39[180] = v40[184];
        *&v39[68] = *&v40[72];
        *&v39[84] = *&v40[88];
        *&v39[100] = *&v40[104];
        *&v39[116] = *&v40[120];
        *&v39[4] = *&v40[8];
        *&v39[20] = *&v40[24];
        *&v39[36] = *&v40[40];
        *&v39[52] = *&v40[56];
        v9[2] = v33 + 1;
        v10 = &v9[24 * v33];
        *(v10 + 8) = v24;
        v11 = *v39;
        v12 = *&v39[16];
        v13 = *&v39[32];
        *(v10 + 84) = *&v39[48];
        *(v10 + 68) = v13;
        *(v10 + 52) = v12;
        *(v10 + 36) = v11;
        v14 = *&v39[64];
        v15 = *&v39[80];
        v16 = *&v39[96];
        *(v10 + 148) = *&v39[112];
        *(v10 + 132) = v16;
        *(v10 + 116) = v15;
        *(v10 + 100) = v14;
        v17 = *&v39[128];
        v18 = *&v39[144];
        v19 = *&v39[160];
        *(v10 + 209) = *&v39[173];
        *(v10 + 196) = v19;
        *(v10 + 180) = v18;
        *(v10 + 164) = v17;
        v7 = v36;
        v5 = a2;
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v4);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v9[2])
  {
    sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
    v34 = sub_1004A6A74();
  }

  else
  {
    v34 = _swiftEmptyDictionarySingleton;
  }

  *v40 = v34;
  sub_1000B2F70(v9, 1, v40);

  return *v40;
}