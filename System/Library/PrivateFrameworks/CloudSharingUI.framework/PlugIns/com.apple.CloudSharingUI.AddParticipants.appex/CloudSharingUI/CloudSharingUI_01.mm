BOOL sub_10001F3AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 8;
  v5 = v3 == 9;
  v6 = v3 & 0xFE;
  v8 = v3 == 7 || v2 == v3;
  if (v2 == 7)
  {
    v8 = 1;
  }

  if (v6 == 8)
  {
    v8 = 0;
  }

  if (v2 == 9)
  {
    v8 = v5;
  }

  if (v2 == 8)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_10001F3FC()
{
  v1 = *v0;
  v2 = 0x69636570736E752ELL;
  v3 = 0x726568746F2ELL;
  if (v1 != 6)
  {
    v3 = 2037276974;
  }

  v4 = 0x6972616661732ELL;
  if (v1 != 4)
  {
    v4 = 0x726F66656572662ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F467365746F6E2ELL;
  if (v1 != 2)
  {
    v5 = 0x65646E696D65722ELL;
  }

  if (*v0)
  {
    v2 = 0x7365746F6E2ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001F500(unsigned __int8 a1)
{
  if (a1 == 8)
  {
    return 0x6E776F6E6B6E752ELL;
  }

  if (a1 == 9)
  {
    return 0x6E656D75636F642ELL;
  }

  sub_10007B5CC(19);
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  v10 = 0xEC00000064656966;
  v11 = 0x69636570736E752ELL;
  v12 = 0xE600000000000000;
  v13 = 0x726568746F2ELL;
  if (a1 != 6)
  {
    v13 = 2037276974;
    v12 = 0xE400000000000000;
  }

  v14 = 0xE700000000000000;
  v15 = 0x6972616661732ELL;
  if (a1 != 4)
  {
    v15 = 0x726F66656572662ELL;
    v14 = 0xE90000000000006DLL;
  }

  if (a1 <= 5u)
  {
    v13 = v15;
    v12 = v14;
  }

  v16 = 0xEC0000007265646CLL;
  v17 = 0x6F467365746F6E2ELL;
  if (a1 != 2)
  {
    v17 = 0x65646E696D65722ELL;
    v16 = 0xEA00000000007372;
  }

  if (a1)
  {
    v11 = 0x7365746F6E2ELL;
    v10 = 0xE600000000000000;
  }

  if (a1 > 1u)
  {
    v11 = v17;
    v10 = v16;
  }

  if (a1 <= 3u)
  {
    v18._countAndFlagsBits = v11;
  }

  else
  {
    v18._countAndFlagsBits = v13;
  }

  if (a1 <= 3u)
  {
    v19 = v10;
  }

  else
  {
    v19 = v12;
  }

  v18._object = v19;
  sub_10007B21C(v18);
  v19, v20, v21, v22, v23, v24, v25, v26;
  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  sub_10007B21C(v27);
  return 0xD000000000000010;
}

uint64_t sub_10001F6F4(char a1)
{
  result = 0x7265646C6F66;
  switch(a1)
  {
    case 1:
      result = 0x746E656D75636F64;
      break;
    case 2:
      result = 0x6873646165727073;
      break;
    case 3:
      result = 0x61746E6573657270;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 6710384;
      break;
    case 7:
      result = 1702129518;
      break;
    case 8:
      result = 0x6C6F467365746F6ELL;
      break;
    case 9:
      result = 1953720684;
      break;
    case 10:
      result = 0x70756F7247626174;
      break;
    case 11:
      result = 0x6D726F6665657266;
      break;
    case 12:
      result = 0x43636972656E6567;
      break;
    case 13:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001F8A8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001F6F4(*a1);
  v5 = v4;
  v6 = sub_10001F6F4(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_10007B6BC();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_10001F930()
{
  v1 = *v0;
  sub_10007B74C();
  sub_10001F6F4(v1);
  v3 = v2;
  sub_10007B1EC();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_10007B76C();
}

void sub_10001F994(uint64_t a1)
{
  sub_10001F6F4(*v1);
  v3 = v2;
  sub_10007B1EC();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_10001F9E8(uint64_t a1)
{
  v2 = *v1;
  sub_10007B74C();
  sub_10001F6F4(v2);
  v4 = v3;
  sub_10007B1EC();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_10007B76C();
}

unint64_t sub_10001FA48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100021A5C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10001FA78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001F6F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001FAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007AD1C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10007AE2C();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = __chkstk_darwin(v5);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v60 - v8;
  v9 = sub_1000057A0(&qword_10009E730, qword_10007DB90);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = sub_10007ADDC();
  v67 = *(v18 - 8);
  v68 = v18;
  v19 = __chkstk_darwin(v18);
  v61 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v64 = &v60 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v60 - v24;
  __chkstk_darwin(v23);
  v27 = &v60 - v26;
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669 || (sub_10007B6BC() & 1) != 0)
  {
    return 0xD00000000000001BLL;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 0xD000000000000014;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_10007B6BC() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000817D0 == a2 || (sub_10007B6BC() & 1) != 0)
  {
    return 0xD000000000000019;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  sub_10007ADEC();
  v29 = v67;
  v60 = *(v67 + 48);
  if (v60(v17, 1, v68) == 1)
  {
    sub_1000210A8(v17);

    sub_10007AD0C();
    v30 = v68;
    (*(v29 + 56))(v12, 1, 1, v68);
    sub_10007AD6C();
    if (v60(v15, 1, v30) == 1)
    {
      sub_1000210A8(v15);
    }

    else
    {
      v39 = v30;
      v40 = v64;
      (*(v29 + 32))(v64, v15, v30);
      v41 = v62;
      sub_10007AE0C();
      v42 = v61;
      (*(v29 + 16))(v61, v40, v30);
      v43 = sub_10007AE1C();
      v44 = sub_10007B41C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v42;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v69 = v47;
        *v46 = 136315138;
        v63 = sub_10007AD2C();
        v49 = v48;
        v50 = *(v29 + 8);
        v50(v45, v39);
        v51 = sub_100037C08(v63, v49, &v69);
        v49, v52, v53, v54, v55, v56, v57, v58;
        *(v46 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v43, v44, "utiOfItem(fromCKShareType)--type from filename extension: %s", v46, 0xCu);
        sub_10000585C(v47);
      }

      else
      {

        v50 = *(v29 + 8);
        v50(v42, v39);
      }

      (*(v65 + 8))(v41, v66);
      v59 = v64;
      a1 = sub_10007AD2C();
      v50(v59, v39);
    }
  }

  else
  {
    v31 = v17;
    v32 = v68;
    (*(v29 + 32))(v27, v31, v68);
    sub_10007AD7C();
    v33 = sub_10007ADCC();
    v34 = *(v29 + 8);
    v34(v25, v32);
    v35 = v63;
    sub_10007AE0C();
    v36 = sub_10007AE1C();
    v37 = sub_10007B41C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = v33 & 1;
      _os_log_impl(&_mh_execute_header, v36, v37, "utiOfItem(fromCKShareType)--ckShareType is a UTType. Is file system item: %{BOOL}d", v38, 8u);
    }

    (*(v65 + 8))(v35, v66);
    a1 = sub_10007AD2C();
    v34(v27, v32);
  }

  return a1;
}

unint64_t sub_1000202B0(uint64_t a1, void *a2)
{
  v79 = a2;
  v3 = sub_10007AC4C();
  v80 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v75 = (&v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v74 - v6;
  v8 = sub_10007AE2C();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = __chkstk_darwin(v8);
  v76 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v13 = sub_10007AABC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057A0(&qword_10009E738, &unk_10007E780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007CF20;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v18 = NSURLTypeIdentifierKey;
  sub_10005FA34(inited);
  v20 = v19;
  swift_setDeallocating();
  sub_100021640(inited + 32);
  sub_10007ABBC();
  v21 = v7;
  v22 = v12;
  v23 = v80;
  v20, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_10007AA7C();
  if (v32)
  {
    v33 = v31;
    (*(v14 + 8))(v16, v13);
    return v33;
  }

  v76 = v16;
  sub_10007AE0C();
  v55 = v23;
  v56 = v21;
  (*(v23 + 16))(v21, a1, v3);
  v57 = sub_10007AE1C();
  v58 = sub_10007B3FC();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v81 = v75;
    *v59 = 136315138;
    sub_10002169C();
    v60 = sub_10007B69C();
    v61 = v56;
    v63 = v62;
    (*(v55 + 8))(v61, v3);
    v64 = sub_100037C08(v60, v63, &v81);
    v65 = v22;
    v66 = v64;
    v63, v67, v68, v69, v70, v71, v72, v73;
    *(v59 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v57, v58, "resourceValues(forKeys:) returned nil for typeIdentifier (UTI) for URL: %s", v59, 0xCu);
    sub_10000585C(v75);

    (*(v77 + 8))(v65, v78);
  }

  else
  {

    (*(v55 + 8))(v56, v3);
    (*(v77 + 8))(v22, v78);
  }

  (*(v14 + 8))(v76, v13);
  if (v79)
  {
    v35 = v79;
    sub_10007B4FC();
    v37 = v36;
    v38 = sub_10007B50C();

    v37, v39, v40, v41, v42, v43, v44, v45;
    if (v38)
    {
      v83 = v38;
      sub_1000057A0(&unk_10009E7A0, &unk_10007DBA8);
      if (swift_dynamicCast())
      {
        v46 = v82;
        v47 = sub_10001FAA4(v81, v82);

        v46, v48, v49, v50, v51, v52, v53, v54;
        return v47;
      }
    }
  }

  return 0;
}

uint64_t sub_1000209A0()
{
  v0 = sub_10007ADDC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007ADAC();
  v4 = sub_10007ADBC();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return 0;
  }

  sub_10007AD4C();
  v7 = sub_10007ADBC();
  v5(v3, v0);
  if (v7)
  {
    return 3;
  }

  sub_10007AD3C();
  v8 = sub_10007ADBC();
  v5(v3, v0);
  if (v8)
  {
    return 2;
  }

  sub_10007AD8C();
  v9 = sub_10007ADBC();
  v5(v3, v0);
  if (v9)
  {
    return 4;
  }

  sub_10007AD9C();
  v10 = sub_10007ADBC();
  v5(v3, v0);
  if (v10)
  {
    return 5;
  }

  sub_10007AD5C();
  v11 = sub_10007ADBC();
  v5(v3, v0);
  if (v11)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100020B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007AD1C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000057A0(&qword_10009E730, qword_10007DB90);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = sub_10007ADDC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669)
  {
    return 1;
  }

  v16 = v13;
  if (sub_10007B6BC())
  {
    return 1;
  }

  if (a1 == 0x737265626D756ELL && a2 == 0xE700000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x7365676170 && a2 == 0xE500000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x65746F6E79656BLL && a2 == 0xE700000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0xD000000000000016 && 0x8000000100081790 == a2 || (sub_10007B6BC() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_10007B6BC() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000817B0 == a2 || (sub_10007B6BC() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000817D0 == a2 || (sub_10007B6BC() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_10007B6BC() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000817F0 == a2 || (sub_10007B6BC() & 1) != 0)
  {
    return 11;
  }

  sub_10007AD0C();
  (*(v12 + 56))(v8, 1, 1, v16);
  sub_10007AD6C();
  if ((*(v12 + 48))(v10, 1, v16) == 1)
  {
    sub_1000210A8(v10);
    return 12;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v16);
    v18 = sub_1000209A0();
    (*(v12 + 8))(v15, v16);
    return v18;
  }
}

uint64_t sub_1000210A8(uint64_t a1)
{
  v2 = sub_1000057A0(&qword_10009E730, qword_10007DB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007AD1C();
  __chkstk_darwin(v6 - 8);
  v28[1] = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057A0(&qword_10009E730, qword_10007DB90);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v28 - v13;
  __chkstk_darwin(v12);
  v16 = v28 - v15;
  v17 = sub_10007ADDC();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v28 - v22;
  v24 = sub_10007AC4C();
  if ((*(*(v24 - 8) + 48))(a3, 1, v24) == 1)
  {
    if (a1 == 0xD000000000000014 && 0x8000000100081830 == a2 || (sub_10007B6BC() & 1) != 0)
    {
      return 7;
    }

    else if (a1 == 0xD000000000000016 && 0x8000000100081790 == a2 || (sub_10007B6BC() & 1) != 0)
    {
      return 8;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001000817B0 == a2 || (sub_10007B6BC() & 1) != 0)
    {
      return 9;
    }

    else if (a1 == 0xD000000000000019 && 0x8000000100081810 == a2 || (sub_10007B6BC() & 1) != 0)
    {
      return 10;
    }

    else if (a1 == 0x6C656D726163 && a2 == 0xE600000000000000 || (sub_10007B6BC() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000817F0 == a2 || (sub_10007B6BC() & 1) != 0)
    {
      return 11;
    }

    else
    {
      result = 11;
      if (a1 != 0x6D726F6665657266 || a2 != 0xE800000000000000)
      {
        if (sub_10007B6BC())
        {
          return 11;
        }

        else
        {
          return 12;
        }
      }
    }
  }

  else
  {

    sub_10007ADEC();
    v28[0] = a1;
    v26 = *(v18 + 48);
    if (v26(v16, 1, v17) == 1)
    {
      sub_1000210A8(v16);

      sub_10007AD0C();
      (*(v18 + 56))(v11, 1, 1, v17);
      sub_10007AD6C();
      if (v26(v14, 1, v17) == 1)
      {
        sub_1000210A8(v14);
        return 1;
      }

      (*(v18 + 32))(v21, v14, v17);
      v27 = sub_1000209A0();
      (*(v18 + 8))(v21, v17);
    }

    else
    {
      (*(v18 + 32))(v23, v16, v17);
      v27 = sub_1000209A0();
      (*(v18 + 8))(v23, v17);
    }

    return v27;
  }

  return result;
}

uint64_t sub_100021640(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002169C()
{
  result = qword_10009EB10;
  if (!qword_10009EB10)
  {
    sub_10007AC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EB10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UTISupport.SharingItemType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UTISupport.SharingItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CloudKitAppType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitAppType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000219B0()
{
  result = qword_10009E7B8;
  if (!qword_10009E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E7B8);
  }

  return result;
}

unint64_t sub_100021A08()
{
  result = qword_10009E7C0;
  if (!qword_10009E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E7C0);
  }

  return result;
}

unint64_t sub_100021A5C(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2)
{
  v13._countAndFlagsBits = a1;
  v3._rawValue = &off_1000958F0;
  v13._object = a2;
  v4 = sub_10007B68C(v3, v13);
  a2, v5, v6, v7, v8, v9, v10, v11;
  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

void *sub_100021AB0()
{
  v165 = sub_10007AE2C();
  v167 = *(v165 - 8);
  v1 = __chkstk_darwin(v165);
  v163 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v161 = &v156 - v4;
  v5 = __chkstk_darwin(v3);
  v162 = &v156 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v156 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v156 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = (&v156 - v14);
  v16 = __chkstk_darwin(v13);
  v18 = &v156 - v17;
  __chkstk_darwin(v16);
  v20 = &v156 - v19;
  v164 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v21 = v168;
  if (v168)
  {
    return v21;
  }

  v160 = v18;
  v156 = v12;
  v157 = v9;
  v158 = v15;
  v22 = v167;
  sub_10007AE0C();
  v23 = sub_10007AE1C();
  v24 = sub_10007B41C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "configuredContainer needsBundleIDOverride initially true", v25, 2u);
  }

  v26 = *(v22 + 8);
  v27 = v20;
  v28 = v165;
  v167 = v22 + 8;
  v26(v27, v165);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v29 = v168;
  v159 = v26;
  v30 = v160;
  if (v168)
  {
    sub_10007AE0C();
    v31 = v29;
    v32 = sub_10007AE1C();
    v33 = sub_10007B41C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v168 = v158;
      *v34 = 136315138;
      v35 = v31;
      v36 = [v35 description];
      v37 = sub_10007B19C();
      LODWORD(v157) = v33;
      v38 = v28;
      v39 = v37;
      v41 = v40;

      v42 = sub_100037C08(v39, v41, &v168);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v34 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v32, v157, "configuredContainer using setupInfo: %s", v34, 0xCu);
      sub_10000585C(v158);

      v159(v30, v38);
    }

    else
    {

      v26(v30, v28);
    }

    v58 = [v31 containerOptions];
    v59 = [v58 applicationBundleIdentifierOverrideForContainerAccess];

    v21 = v166;
    if (v59)
    {

      v60 = 0;
    }

    else
    {

      v60 = 1;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v50 = v168;
    if (v168)
    {
      v51 = v158;
      sub_10007AE0C();
      v52 = v50;
      v53 = sub_10007AE1C();
      v54 = sub_10007B41C();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        *(v55 + 4) = v52;
        *v56 = v50;
        v57 = v52;
        _os_log_impl(&_mh_execute_header, v53, v54, "configuredContainer with id: %@", v55, 0xCu);
        sub_10001F1A4(v56);
        v26 = v159;

        v51 = v158;
      }

      else
      {
        v57 = v53;
        v53 = v52;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (v168 != 9)
      {
        v142 = v156;
        sub_10007AE0C();
        v143 = sub_10007AE1C();
        v144 = sub_10007B3FC();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&_mh_execute_header, v143, v144, "configuredContainer throwing as it can't build a container", v145, 2u);
        }

        v26(v142, v28);
        v141 = "replaceContainer()";
        v123 = 0xD000000000000019;
        goto LABEL_36;
      }

      sub_10007B19C();
      v62 = v61;
      sub_10007B1BC();
      v64 = v63;

      v62, v65, v66, v67, v68, v69, v70, v71;
      v72 = objc_allocWithZone(CKContainerID);
      v73 = sub_10007B15C();
      v64, v74, v75, v76, v77, v78, v79, v80;
      v81 = [v72 initWithContainerIdentifier:v73 environment:1];

      sub_100008A60(v81, 0);

      v51 = v157;
      sub_10007AE0C();

      v53 = sub_10007AE1C();
      v82 = sub_10007B41C();

      if (os_log_type_enabled(v53, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v83 = 138412290;
        swift_getKeyPath();
        swift_getKeyPath();

        sub_10007AF3C();

        v26 = v159;

        v51 = v157;

        v85 = v168;
        *(v83 + 4) = v168;
        *v84 = v85;
        _os_log_impl(&_mh_execute_header, v53, v82, "configuredContainer with containerID: %@", v83, 0xCu);
        sub_10001F1A4(v84);
      }
    }

    v26(v51, v28);
    v60 = 1;
    v21 = v166;
  }

  sub_100009298();

  if (v21)
  {
    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v21 = v168;
  if (!v168)
  {
LABEL_29:
    v123 = 0xD000000000000033;
    v124 = v163;
    sub_10007AE0C();

    v125 = sub_10007AE1C();
    v126 = sub_10007B41C();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v170 = v128;
      *v127 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
      v129 = sub_10007B1AC();
      v131 = v130;
      v132 = sub_100037C08(v129, v130, &v170);
      v131, v133, v134, v135, v136, v137, v138, v139;
      *(v127 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v125, v126, "configuredContainer throwing as it doesn't have a container or nil sourceAppBundleID: %s", v127, 0xCu);
      sub_10000585C(v128);

      v140 = v163;
    }

    else
    {

      v140 = v124;
    }

    v159(v140, v165);
    v141 = "configuredContainer()";
LABEL_36:
    v21 = 0x8000000100081870;
    v146 = v141 | 0x8000000000000000;
    sub_100005AB8();
    swift_allocError();
    *v147 = 0xD000000000000015;
    *(v147 + 8) = 0x8000000100081870;
    *(v147 + 16) = 0;
    *(v147 + 24) = v123;
    *(v147 + 32) = v146;
    *(v147 + 40) = 10;
    swift_willThrow();
    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v86 = v169;
  if (!v169)
  {

    goto LABEL_29;
  }

  v166 = 0;
  v87 = v165;
  v88 = v168;
  v89 = v162;
  sub_10007AE0C();
  v90 = sub_10007AE1C();
  v91 = sub_10007B41C();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 67109120;
    *(v92 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v90, v91, "configuredContainer about to return container, needsBundleIDOverride: %{BOOL}d", v92, 8u);
    v89 = v162;
  }

  v159(v89, v87);
  if (v60)
  {
    v100 = [v21 options];
    v101 = sub_10007B15C();
    [v100 setApplicationBundleIdentifierOverride:v101];

    v102 = v161;
    sub_10007AE0C();

    v103 = sub_10007AE1C();
    v104 = sub_10007B41C();
    v86, v105, v106, v107, v108, v109, v110, v111;
    if (os_log_type_enabled(v103, v104))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v168 = v113;
      *v112 = 136315138;
      v114 = sub_100037C08(v88, v86, &v168);
      v86, v115, v116, v117, v118, v119, v120, v121;
      *(v112 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v103, v104, "configuredContainer options applicationBundleIDOverride set to: %s", v112, 0xCu);
      sub_10000585C(v113);

      v122 = v161;
    }

    else
    {

      v86, v149, v150, v151, v152, v153, v154, v155;
      v122 = v102;
    }

    v159(v122, v87);
  }

  else
  {
    v86, v93, v94, v95, v96, v97, v98, v99;
  }

  return v21;
}

double sub_100022874@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000228F4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_1000229DC@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a4 = v6;
  return result;
}

uint64_t sub_100022A6C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return sub_10007AF4C();
}

uint64_t sub_100022BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_10007AE2C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_10007AABC();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v4[23] = swift_task_alloc();
  v7 = sub_10007AC4C();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100022D94, 0, 0);
}

uint64_t sub_100022D94()
{
  v1 = v0[15];
  v2 = (v0[16] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPI);
  *v2 = v0[14];
  v2[1] = v1;

  v0[27] = sub_10007B32C();

  v0[28] = sub_10007B31C();
  v4 = sub_10007B2EC();

  return _swift_task_switch(sub_100022E54, v4, v3);
}

uint64_t sub_100022E54()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 232) = sub_1000099C0();

  return _swift_task_switch(sub_100022EDC, 0, 0);
}

uint64_t sub_100022EDC(uint64_t a1)
{
  *(v1 + 240) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_100022F68, v3, v2);
}

uint64_t sub_100022F68()
{
  v1 = *(v0 + 232);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 248) = sub_100079A54(v1);

  return _swift_task_switch(sub_100022FFC, 0, 0);
}

uint64_t sub_100022FFC(uint64_t a1)
{
  *(v1 + 256) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_100023088, v3, v2);
}

uint64_t sub_100023088()
{
  v1 = *(v0 + 248);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 264) = sub_10006098C(v1);

  return _swift_task_switch(sub_10002311C, 0, 0);
}

uint64_t sub_10002311C()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[16];
  v5 = v0[13];
  v6 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel;
  *(v4 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel) = v0[33];

  v7 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_fileOrFolderURL;
  swift_beginAccess();
  sub_100025294(v5, v4 + v7);
  swift_endAccess();
  sub_1000087B4(v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100008824(v0[23], &unk_10009ED10, &qword_10007D310);
  }

  else
  {
    (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
    sub_1000057A0(&qword_10009E738, &unk_10007E780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10007DE70;
    *(inited + 32) = NSURLIsPackageKey;
    *(inited + 40) = NSURLIsDirectoryKey;
    v9 = NSURLIsPackageKey;
    v10 = NSURLIsDirectoryKey;
    sub_10005FA34(inited);
    v12 = v11;
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    sub_10007ABBC();
    v13 = v0[25];
    v14 = v0[24];
    v15 = v0[21];
    v16 = v0[22];
    v17 = v0[20];
    v30 = v0[16];
    log = v0[26];
    v12, v18, v19, v20, v21, v22, v23, v24;
    LOBYTE(v12) = sub_10007AAAC();
    v25 = sub_10007AA6C();
    (*(v15 + 8))(v16, v17);
    (*(v13 + 8))(log, v14);
    *(v30 + 16) = v25 & ~v12 & 1;
  }

  v26 = *(v4 + v6);
  v0[34] = v26;
  if (!v26)
  {
    return sub_10007B63C("Fatal error", 11, 2, 0x6C65646F6D206F6ELL, 0xEC00000074657320, "com_apple_CloudSharingUI_AddParticipants/ModelDelegate_SPI.swift", 64, 2, 21, 0);
  }

  v0[35] = sub_10007B31C();
  v28 = sub_10007B2EC();

  return _swift_task_switch(sub_1000237A8, v28, v27);
}

uint64_t sub_1000237A8()
{
  v1 = v0[34];
  v2 = v0[16];
  v3 = v0[13];

  sub_100024360(v2, 0, v3, 0, v1);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_100023864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10002388C, 0, 0);
}

uint64_t sub_10002388C()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIFileOrSetup);
  *v2 = v0[4];
  v2[1] = v1;

  v0[7] = sub_10007B32C();

  v0[8] = sub_10007B31C();
  v4 = sub_10007B2EC();

  return _swift_task_switch(sub_10002394C, v4, v3);
}

uint64_t sub_10002394C()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 72) = sub_1000099C0();

  return _swift_task_switch(sub_1000239D4, 0, 0);
}

uint64_t sub_1000239D4(uint64_t a1)
{
  *(v1 + 80) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_100023A60, v3, v2);
}

uint64_t sub_100023A60()
{
  v1 = *(v0 + 72);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 88) = sub_100079A54(v1);

  return _swift_task_switch(sub_100023AF4, 0, 0);
}

uint64_t sub_100023AF4(uint64_t a1)
{
  *(v1 + 96) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_100023B80, v3, v2);
}

uint64_t sub_100023B80()
{
  v1 = *(v0 + 88);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 104) = sub_10006098C(v1);

  return _swift_task_switch(sub_100023C14, 0, 0);
}

uint64_t sub_100023C14()
{
  *(v0[6] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel) = v0[13];

  v0[14] = sub_10007B31C();
  v2 = sub_10007B2EC();

  return _swift_task_switch(sub_100023CC0, v2, v1);
}

uint64_t sub_100023CC0()
{
  v1 = v0[13];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];

  sub_100024360(v2, v3, v4, 0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100023D50()
{
  *(v0 + 16) = 2;
  v1 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_fileOrFolderURL;
  v2 = sub_10007AC4C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_itemUTI);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_share) = 0;
  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel) = 0;
  v4 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPI);
  *v4 = nullsub_1;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPISharingURL);
  *v5 = nullsub_1;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIFileOrSetup);
  *v6 = nullsub_1;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIRemove);
  *v7 = nullsub_1;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIMail);
  *v8 = nullsub_1;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIMetadata);
  *v9 = nullsub_1;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIUserStatus);
  *v10 = nullsub_1;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_appIcon) = 0;
  v11 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_appName);
  *v11 = 0;
  v11[1] = 0;
  return v0;
}

uint64_t sub_100023EE4()
{
  sub_100008824(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_fileOrFolderURL, &unk_10009ED10, &qword_10007D310);
  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_itemUTI + 8), v1, v2, v3, v4, v5, v6, v7;

  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_appName + 8), v8, v9, v10, v11, v12, v13, v14;
  return v0;
}

uint64_t sub_100024000()
{
  sub_100023EE4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelDelegateSPI(uint64_t a1)
{
  result = qword_10009E7F8;
  if (!qword_10009E7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000240AC(uint64_t a1)
{
  sub_10002417C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002417C(uint64_t a1)
{
  if (!qword_10009E808)
  {
    sub_10007AC4C();
    v1 = sub_10007B55C();
    if (!v2)
    {
      atomic_store(v1, &qword_10009E808);
    }
  }
}

uint64_t sub_1000241D4(uint64_t a1)
{
  result = sub_100024E84(&qword_10009E8F0, &unk_10007DF00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100024240@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v4;
  return result;
}

uint64_t sub_1000242C0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_10007AF4C();
}

uint64_t sub_100024360(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v122 = a2;
  v123 = a3;
  v7 = sub_10007AE2C();
  v126 = *(v7 - 8);
  __chkstk_darwin(v7);
  v125 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v10 = __chkstk_darwin(v9 - 8);
  v119 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v121 = &v118 - v13;
  v14 = __chkstk_darwin(v12);
  v120 = &v118 - v15;
  __chkstk_darwin(v14);
  v17 = &v118 - v16;
  v18 = sub_10007AC4C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v124 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100024E84(&qword_10009E8F8, &unk_10007DF38);
  sub_10005DE38();
  a5[6] = v21;
  swift_unknownObjectWeakAssign();
  v22 = *(sub_10004F634() + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_share);
  v23 = v22;
  swift_unknownObjectRelease();
  if (v22)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *&v128 = v22;

    sub_10007AF4C();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v24 = v128;
  if (v128)
  {

    v25 = [v24 containerID];
    sub_100008A60(v25, 0);

    sub_10004EE9C(0, a4 & 1);
  }

  else
  {

    sub_1000781B4(2u);

    sub_100078534(1u);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v26 = v128;
  if (v128)
  {
    v118 = v19;
    v27 = v18;
    v28 = v7;
    v29 = [v128 containerIdentifier];
    v30 = sub_10007B19C();
    v32 = v31;

    sub_10007B19C();
    v34 = v33;
    v35 = sub_10007B1BC();
    v37 = v36;
    v34, v36, v38, v39, v40, v41, v42, v43;
    if (v30 == v35 && v32 == v37)
    {
      v32, v44, v45, v46, v47, v48, v49, v50;
      v37, v51, v52, v53, v54, v55, v56, v57;
LABEL_11:
      swift_getKeyPath();
      swift_getKeyPath();
      v128 = xmmword_10007DE80;

      sub_10007AF4C();

      v7 = v28;
      v18 = v27;
      v19 = v118;
      goto LABEL_14;
    }

    v58 = sub_10007B6BC();
    v32, v59, v60, v61, v62, v63, v64, v65;
    v37, v66, v67, v68, v69, v70, v71, v72;
    if (v58)
    {
      goto LABEL_11;
    }

    v7 = v28;
    v18 = v27;
    v19 = v118;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v128 = 0xD000000000000013;
  *(&v128 + 1) = 0x8000000100081A20;

  sub_10007AF4C();
LABEL_14:
  sub_1000087B4(v123, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100008824(v17, &unk_10009ED10, &qword_10007D310);
    v73 = sub_100050218();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v128) = v73;

    sub_10007AF4C();
    v74 = v125;
    v75 = v122;
    if (v122)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v128 = v75;
      v76 = v75;

      sub_10007AF4C();
    }
  }

  else
  {
    v77 = v124;
    (*(v19 + 32))(v124, v17, v18);
    v78 = v120;
    (*(v19 + 16))(v120, v77, v18);
    (*(v19 + 56))(v78, 0, 1, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    v79 = v121;
    sub_10007AF3C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000087B4(v78, v119);

    sub_10007AF4C();
    sub_1000572DC(v79);
    sub_100008824(v79, &unk_10009ED10, &qword_10007D310);
    sub_100008824(v78, &unk_10009ED10, &qword_10007D310);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v128) = 9;

    sub_10007AF4C();
    v80 = *(sub_10004F634() + 16);
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v128) = v80 & 1;

    sub_10007AF4C();
    swift_getKeyPath();
    swift_getKeyPath();
    v128 = xmmword_10007DE80;

    sub_10007AF4C();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v81 = v128;
    if (!v128)
    {
      sub_10007B19C();
      v83 = v82;
      sub_10007B1BC();
      v85 = v84;

      v83, v86, v87, v88, v89, v90, v91, v92;
      v93 = objc_allocWithZone(CKContainerID);
      v94 = sub_10007B15C();
      v85, v95, v96, v97, v98, v99, v100, v101;
      v81 = [v93 initWithContainerIdentifier:v94 environment:1];

      sub_100008A60(v81, 0);
    }

    v74 = v125;

    (*(v19 + 8))(v124, v18);
  }

  sub_10007AE0C();

  v102 = sub_10007AE1C();
  v103 = sub_10007B41C();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v127 = v105;
    *v104 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
    v106 = sub_10007B1AC();
    v108 = v107;
    v109 = sub_100037C08(v106, v107, &v127);
    v108, v110, v111, v112, v113, v114, v115, v116;
    *(v104 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v102, v103, "setUpForExplicitSPI final sourceAppBundleID: %s.", v104, 0xCu);
    sub_10000585C(v105);
  }

  (*(v126 + 8))(v74, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v128) = 1;

  return sub_10007AF4C();
}

uint64_t sub_100024E84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModelDelegateSPI(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100024F98(void *a1)
{
  v2 = v1;
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10007AE2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v11 = a1;
  v12 = sub_10007AE1C();
  v13 = sub_10007B3FC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = v8;
    v15 = v14;
    v37 = swift_slowAlloc();
    v40 = v37;
    *v15 = 136315138;
    v16 = v11;
    v17 = [v16 description];
    v39 = v6;
    v18 = v17;
    v19 = sub_10007B19C();
    v36 = v7;
    v20 = v11;
    v22 = v21;

    v23 = sub_100037C08(v19, v22, &v40);
    v24 = v22;
    v11 = v20;
    v24, v25, v26, v27, v28, v29, v30, v31;
    *(v15 + 4) = v23;
    v6 = v39;
    _os_log_impl(&_mh_execute_header, v12, v13, "cancelAppExtension error: %s", v15, 0xCu);
    sub_10000585C(v37);

    (*(v38 + 8))(v10, v36);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v32 = *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPI);
  v33 = sub_10007AC4C();
  (*(*(v33 - 8) + 56))(v6, 1, 1, v33);

  v32(v6, 0, v11);

  return sub_100008824(v6, &unk_10009ED10, &qword_10007D310);
}

uint64_t sub_100025294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100025304()
{
  result = qword_10009E900;
  if (!qword_10009E900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009E900);
  }

  return result;
}

uint64_t sub_100025350(uint64_t a1, uint64_t a2)
{
  v2[93] = a2;
  v2[87] = a1;
  v2[94] = sub_1000057A0(&qword_10009E6F8, &unk_10007DA80);
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();

  return _swift_task_switch(sub_100025418, 0, 0);
}

uint64_t sub_100025418()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  *(v0 + 816) = *(v1 + 48);
  *(v0 + 820) = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v0 + 792) = v3;
  *(v3 + 16) = v2;
  swift_asyncLet_begin();
  v4 = *(v0 + 776);

  return _swift_asyncLet_get(v0 + 16, v4, sub_1000254DC, v0 + 656);
}

uint64_t sub_1000254F8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 784);
  v3 = *(v0 + 768);
  v4 = *(v0 + 752);
  sub_1000187C8(*(v0 + 776), v3, &qword_10009E6F8, &unk_10007DA80);
  *(v0 + 800) = *v3;
  v5 = *(v4 + 48);
  *(v0 + 808) = *(v3 + *(v4 + 64));
  sub_10002591C(v3 + v5, v2 + v1, &unk_10009ED10, &qword_10007D310);
  v6 = *(v0 + 776);

  return _swift_asyncLet_finish(v0 + 16, v6, sub_1000255C4, v0 + 704);
}

uint64_t sub_1000255E0()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 820);
  v4 = *(v0 + 784);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);

  *v4 = v2;
  *(v4 + v3) = v1;
  sub_1000187C8(v4, v5, &qword_10009E6F8, &unk_10007DA80);

  v7 = *(v5 + *(v6 + 64));
  sub_100008824(v5 + *(v6 + 48), &unk_10009ED10, &qword_10007D310);
  v8 = *(v0 + 784);
  v9 = *(v0 + 776);
  v10 = *(v0 + 768);
  if (v7)
  {
    sub_100005AB8();
    swift_allocError();
    *v11 = 0xD000000000000010;
    *(v11 + 8) = 0x8000000100081A70;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = v7;
    *(v11 + 40) = 5;
    swift_willThrow();
    sub_100008824(v8, &qword_10009E6F8, &unk_10007DA80);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 752);
    v18 = *(v0 + 696);
    sub_1000187C8(v8, v9, &qword_10009E6F8, &unk_10007DA80);
    v19 = *v9;
    v15 = *(v14 + 48);

    sub_10002591C(v8, v10, &qword_10009E6F8, &unk_10007DA80);
    v16 = *(v14 + 48);

    sub_10002591C(v10 + v16, v18, &unk_10009ED10, &qword_10007D310);
    sub_100008824(v9 + v15, &unk_10009ED10, &qword_10007D310);

    v17 = *(v0 + 8);

    return v17(v19);
  }
}

uint64_t sub_10002587C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DACC;

  return sub_10001902C(a1, v4);
}

uint64_t sub_10002591C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000057A0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100025984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v6 + 976) = a6;
  *(v6 + 808) = a5;
  *(v6 + 800) = a4;
  *(v6 + 792) = a3;
  *(v6 + 784) = a2;
  *(v6 + 776) = a1;
  *(v6 + 816) = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  v7 = sub_10007AE2C();
  *(v6 + 848) = v7;
  *(v6 + 856) = *(v7 - 8);
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();

  return _swift_task_switch(sub_100025ADC, 0, 0);
}

uint64_t sub_100025ADC()
{
  v99 = v0;
  v1 = *(v0 + 784);
  v2 = sub_10007B15C();
  v3 = NSSelectorFromString(v2);

  if ([v1 respondsToSelector:v3])
  {
    LODWORD(v4) = [*(v0 + 784) br_isCloudDocsShare];
  }

  else
  {
    LODWORD(v4) = 0;
  }

  v5 = *(v0 + 808);
  sub_10007AE0C();

  v6 = sub_10007AE1C();
  v7 = sub_10007B41C();
  v5, v8, v9, v10, v11, v12, v13, v14;
  v15 = os_log_type_enabled(v6, v7);
  v16 = *(v0 + 896);
  v17 = *(v0 + 856);
  v18 = *(v0 + 848);
  if (v15)
  {
    v97 = v4;
    v19 = *(v0 + 801);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v98 = v21;
    *v20 = 136315394;
    v22 = sub_10001F500(v19);
    v4 = v23;
    v24 = sub_100037C08(v22, v23, &v98);
    v25 = v4;
    LOBYTE(v4) = v97;
    v25, v26, v27, v28, v29, v30, v31, v32;
    *(v20 + 4) = v24;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v97;
    _os_log_impl(&_mh_execute_header, v6, v7, "saveShare attr.sharingType: %s, isCloudDocsShare: %{BOOL}d", v20, 0x12u);
    sub_10000585C(v21);
  }

  v33 = *(v17 + 8);
  v33(v16, v18);
  *(v0 + 904) = v33;
  if ((*(v0 + 800) & 0xFE00) == 0x800)
  {
    v34 = 1;
  }

  else
  {
    v34 = v4;
  }

  if (v34)
  {
    v35 = *(v0 + 840);
    v36 = *(v0 + 784);
    v37 = (v0 + 776);
    v38 = *(v0 + 776);
    sub_10007AE0C();
    sub_1000187C8(v38, v35, &unk_10009ED10, &qword_10007D310);
    v39 = v36;
    v40 = sub_10007AE1C();
    v41 = sub_10007B41C();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 872);
    v44 = *(v0 + 848);
    v45 = *(v0 + 840);
    if (v42)
    {
      v46 = *(v0 + 832);
      v47 = *(v0 + 784);
      v95 = *(v0 + 848);
      v48 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v98 = v93;
      *v48 = 136315650;
      sub_1000187C8(v45, v46, &unk_10009ED10, &qword_10007D310);
      v49 = sub_10007B1AC();
      v51 = v50;
      sub_100008824(v45, &unk_10009ED10, &qword_10007D310);
      v52 = sub_100037C08(v49, v51, &v98);
      v53 = v51;
      v37 = (v0 + 776);
      v53, v54, v55, v56, v57, v58, v59, v60;
      *(v48 + 4) = v52;
      *(v48 + 12) = 2112;
      *(v48 + 14) = v47;
      *v92 = v47;
      *(v48 + 22) = 1024;
      *(v48 + 24) = [v47 allowsAccessRequests];

      _os_log_impl(&_mh_execute_header, v40, v41, "saveShare performing CloudDocs (fileURL) operation %s -- %@\n allowsAccessRequests: %{BOOL}d", v48, 0x1Cu);
      sub_100008824(v92, &qword_10009F570, &qword_10007DAF0);

      sub_10000585C(v93);

      v61 = v95;
      v62 = v43;
    }

    else
    {
      v89 = *(v0 + 784);

      sub_100008824(v45, &unk_10009ED10, &qword_10007D310);
      v62 = v43;
      v61 = v44;
    }

    v33(v62, v61);
    v90 = swift_task_alloc();
    *(v0 + 952) = v90;
    v90[1] = vextq_s8(*v37, *v37, 8uLL);
    sub_1000057A0(&qword_10009E718, &qword_10007DAB8);
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16, v0 + 696, sub_100026710, v0 + 656);
  }

  else
  {
    v63 = *(v0 + 784);
    type metadata accessor for CloudKitOperations(0);
    v64 = swift_allocObject();
    *(v0 + 912) = v64;
    v64[2] = 0xD000000000000021;
    v64[3] = 0x8000000100081B20;
    v64[4] = 0xD000000000000016;
    v64[5] = 0x8000000100081B50;
    v64[6] = 0xD00000000000001DLL;
    v64[7] = 0x8000000100081B70;
    *(v0 + 712) = 0;
    *(v0 + 720) = 0;
    sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
    sub_10007AF0C();
    sub_10007AE0C();
    v65 = v63;
    v66 = sub_10007AE1C();
    v67 = sub_10007B41C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = *(v0 + 784);
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v68;
      *v70 = v68;
      v71 = v68;
      _os_log_impl(&_mh_execute_header, v66, v67, "saveShare performing CloudKit operation %@", v69, 0xCu);
      sub_100008824(v70, &qword_10009F570, &qword_10007DAF0);
    }

    v72 = *(v0 + 888);
    v73 = *(v0 + 856);
    v74 = *(v0 + 848);
    v75 = *(v0 + 792);

    *(v0 + 920) = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v76 = (v33)(v72, v74);
    if (v75)
    {
      v84 = *(v0 + 976);
      v85 = *(v0 + 800);
      v94 = *(v0 + 808);
      v96 = *(v0 + 792);
      v86 = *(v0 + 784);
      v87 = swift_task_alloc();
      *(v0 + 928) = v87;
      *(v87 + 16) = v64;
      *(v87 + 24) = v86;
      *(v87 + 32) = v85;
      *(v87 + 34) = BYTE2(v85);
      *(v87 + 35) = BYTE3(v85);
      *(v87 + 36) = BYTE4(v85);
      *(v87 + 37) = BYTE5(v85) & 1;
      *(v87 + 38) = BYTE6(v85) & 1;
      *(v87 + 40) = v94;
      *(v87 + 48) = v84 & 1;
      *(v87 + 49) = HIBYTE(v84) & 1;
      *(v87 + 56) = v96;
      v88 = swift_task_alloc();
      *(v0 + 936) = v88;
      v83 = sub_100026D54();
      *v88 = v0;
      v88[1] = sub_100026298;
      v81 = sub_100026CF8;
      v76 = v0 + 728;
      v79 = 0xD000000000000029;
      v80 = 0x80000001000810B0;
      v77 = 0;
      v78 = 0;
      v82 = v87;
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v76, v77, v78, v79, v80, v81, v82, v83);
  }
}

uint64_t sub_100026298()
{
  *(*v1 + 944) = v0;

  if (v0)
  {
    v2 = sub_100026594;
  }

  else
  {

    v2 = sub_1000263B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000263B4(uint64_t a1)
{
  v2 = *(v1 + 784);
  v3 = *(v1 + 728);
  sub_10007AE0C();
  v4 = v2;
  v5 = sub_10007AE1C();
  v6 = sub_10007B41C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 784);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "saveShare completed CloudKit operation %@", v8, 0xCu);
    sub_100008824(v9, &qword_10009F570, &qword_10007DAF0);
  }

  else
  {
  }

  (*(v1 + 904))(*(v1 + 880), *(v1 + 848));

  v11 = *(v1 + 8);

  return v11(v3);
}

uint64_t sub_100026594()
{
  v1 = *(v0 + 912);

  swift_setDeallocating();
  v1[3], v2, v3, v4, v5, v6, v7, v8;
  v1[5], v9, v10, v11, v12, v13, v14, v15;
  v1[7], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants18CloudKitOperations__ckSourceAppBundleID;
  v24 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  swift_deallocClassInstance();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100026710()
{
  v1 = v0[87];
  v0[120] = v1;
  v2 = v0[88];
  v0[121] = v2;
  v3 = v2;
  v4 = v1;

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_10002678C, v0 + 92);
}

uint64_t sub_1000267A8()
{
  v40 = v0;
  v1 = v0[103];
  v2 = v0[98];
  v3 = v0[97];

  sub_10007AE0C();
  sub_1000187C8(v3, v1, &unk_10009ED10, &qword_10007D310);
  v4 = v2;
  v5 = sub_10007AE1C();
  v6 = sub_10007B41C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[113];
  v9 = v0[108];
  v10 = v0[106];
  if (v7)
  {
    v11 = v0[104];
    v12 = v0[103];
    v13 = v0[98];
    v38 = v0[113];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v14 = 136315650;
    sub_1000187C8(v12, v11, &unk_10009ED10, &qword_10007D310);
    v15 = sub_10007B1AC();
    v37 = v10;
    v17 = v16;
    sub_100008824(v12, &unk_10009ED10, &qword_10007D310);
    v18 = sub_100037C08(v15, v17, &v39);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v13;
    *v35 = v13;
    *(v14 + 22) = 1024;
    *(v14 + 24) = [v13 allowsAccessRequests];

    _os_log_impl(&_mh_execute_header, v5, v6, "saveShare completed CloudDocs (fileURL) operation %s\n %@\n allowsAccessRequests: %{BOOL}d", v14, 0x1Cu);
    sub_100008824(v35, &qword_10009F570, &qword_10007DAF0);

    sub_10000585C(v36);

    v38(v9, v37);
  }

  else
  {
    v26 = v0[103];
    v27 = v0[98];

    sub_100008824(v26, &unk_10009ED10, &qword_10007D310);
    v8(v9, v10);
  }

  v28 = v0[121];
  v29 = v0[120];
  if (v28)
  {
    sub_100005AB8();
    swift_allocError();
    *v30 = 0xD000000000000032;
    *(v30 + 8) = 0x8000000100081AB0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    *(v30 + 16) = v28;
    *(v30 + 40) = 4;
    swift_willThrow();

LABEL_6:

    v31 = v0[1];

    return v31();
  }

  if (!v29)
  {
    sub_100005AB8();
    swift_allocError();
    *v34 = 0xD000000000000032;
    *(v34 + 8) = 0x8000000100081AB0;
    *(v34 + 16) = xmmword_10007E1C0;
    *(v34 + 32) = 0x8000000100081AF0;
    *(v34 + 40) = 11;
    swift_willThrow();
    goto LABEL_6;
  }

  v33 = v0[1];

  return v33(v29);
}

uint64_t sub_100026C4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D9D8;

  return sub_100018DC0(a1, v5, v4);
}

void sub_100026CF8(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 37))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v3 = 0;
  }

  v4 = *(v1 + 32) | (*(v1 + 36) << 32) | v2;
  if (*(v1 + 49))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_1000037F8(a1, *(v1 + 16), *(v1 + 24), v4 | v3, *(v1 + 40), v5 | *(v1 + 48), *(v1 + 56));
}

unint64_t sub_100026D54()
{
  result = qword_10009F3E0;
  if (!qword_10009F3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009F3E0);
  }

  return result;
}

void sub_100026DA0(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2)
{
  v5 = sub_10007AE2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  v10 = v9;
  v11 = *(v2 + 16);
  v12 = *(v2 + 40);
  if (v12 <= 3)
  {
LABEL_7:
    if (v12 - 1 < 3)
    {
      if (v11)
      {
        v13 = v11;
LABEL_16:
        v15 = v13;

        v10 = v15;
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  if (*(v2 + 40) > 7u)
  {
    if (v12 != 8)
    {
      if (v12 == 11)
      {
        v13 = sub_100028464(*(v2 + 24), *(v2 + 32));
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (!v11)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_18;
  }

  if (v12 != 4)
  {
    if (v12 != 5)
    {
      goto LABEL_19;
    }

    if (!v11)
    {
      __break(1u);
      goto LABEL_7;
    }

LABEL_18:
    v10 = v11;
    goto LABEL_19;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = v11;
  sub_100027710(32);
  if (v14)
  {
    sub_100027238();
    if (!v13)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_19:
  v16 = [v10 userInfo];
  v17 = sub_10007B11C();

  if (!v17[2].super.isa || (v25 = sub_100037AD8(0xD000000000000011, 0x8000000100081B90), (v18 & 1) == 0))
  {
    v17, v18, v19, v20, v21, v22, v23, v24;
    v33 = 0;
    goto LABEL_24;
  }

  sub_1000057F8(v17[7].super.isa + 32 * v25, v85);
  v17, v26, v27, v28, v29, v30, v31, v32;
  sub_100027DA0();
  if (swift_dynamicCast())
  {
    v33 = v84;
LABEL_24:
    v34 = a1;
    v35 = sub_10002759C(0xD000000000000011, 0x8000000100081B90);

    v10 = v35;
    goto LABEL_25;
  }

  v34 = a1;
LABEL_25:
  sub_10007AE0C();

  v36 = v10;
  v37 = sub_10007AE1C();
  v38 = sub_10007B3FC();

  a2, v39, v40, v41, v42, v43, v44, v45;
  if (os_log_type_enabled(v37, v38))
  {
    v81 = v8;
    v82 = v6;
    v83 = v5;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v85[0] = v80;
    *v46 = 136315394;
    v48 = sub_10007B26C();
    v50 = v49;
    sub_10004F544(v48, v49, v34, a2);
    v52 = v51;
    v50, v51, v53, v54, v55, v56, v57, v58;
    if (v52)
    {
      v59 = 0;
      v60 = 0xE000000000000000;
    }

    else
    {
      sub_10007B27C();
      v62 = v61;
      v63 = sub_10007B1DC();
      v60 = v64;
      v62, v64, v65, v66, v67, v68, v69, v70;
      v59 = v63;
    }

    v71 = sub_100037C08(v59, v60, v85);
    v60, v72, v73, v74, v75, v76, v77, v78;
    *(v46 + 4) = v71;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v36;
    *v47 = v36;
    v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "returning %s mapped error: %@", v46, 0x16u);
    sub_100008824(v47, &qword_10009F570, &qword_10007DAF0);

    sub_10000585C(v80);

    (*(v82 + 8))(v81, v83);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

void sub_100027238()
{
  swift_willThrow();
  v1 = v0;
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  type metadata accessor for BRError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    type metadata accessor for CKError(0);
    v23 = v1;
    if (swift_dynamicCast())
    {
      sub_100027D58(&qword_10009E0B8, type metadata accessor for CKError, &unk_10007CDC0);
      sub_10007AB3C();
      if (v25 == 32)
      {
        v24 = v26;
        sub_10007AB7C();
      }

      else
      {
      }
    }

    goto LABEL_21;
  }

  sub_100027D58(&qword_10009E080, type metadata accessor for BRError, &unk_10007CCC0);
  sub_10007AB3C();
  if (v25 != 17)
  {

    goto LABEL_17;
  }

  v2 = v26;
  v3 = sub_10007AB7C();

  v4 = [v3 underlyingErrors];
  v5 = sub_10007B2AC();

  isa = v5[2].super.isa;
  if (isa)
  {
    v14 = 0;
    do
    {
      v15 = v14;
      while (1)
      {
        if (v15 >= v5[2].super.isa)
        {
          __break(1u);
          return;
        }

        v16 = v5[v15 + 4].super.isa;
        v14 = (v15 + 1);
        swift_errorRetain();
        v17 = sub_10007AB7C();
        sub_100027710(32);
        v19 = v18;

        if (v19)
        {
          break;
        }

        v15 = (v15 + 1);
        if (isa == v14)
        {
          goto LABEL_22;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100027DEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_100027DEC((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
      }

      _swiftEmptyArrayStorage[2] = v22;
      _swiftEmptyArrayStorage[v21 + 4] = v16;
    }

    while ((isa - 1) != v15);
  }

LABEL_22:
  v5, v6, v7, v8, v9, v10, v11, v12;
  if (_swiftEmptyArrayStorage[2])
  {
    swift_errorRetain();

    sub_10007AB7C();
  }

  else
  {
  }

LABEL_21:
}

id sub_10002759C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 userInfo];
  v7 = sub_10007B11C();

  v32 = v7;
  sub_10002806C(a1, a2, v31);
  sub_100008824(v31, &qword_10009E928, &unk_10007E220);
  v8 = [v3 domain];
  if (!v8)
  {
    sub_10007B19C();
    v10 = v9;
    v8 = sub_10007B15C();
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  v18 = [v3 code];
  v19 = v32;
  v20 = objc_allocWithZone(NSError);
  isa = sub_10007B10C().super.isa;
  v19, v22, v23, v24, v25, v26, v27, v28;
  v29 = [v20 initWithDomain:v8 code:v18 userInfo:isa];

  return v29;
}

void sub_100027710(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  type metadata accessor for BRError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    type metadata accessor for CKError(0);
    v21 = v3;
    if (swift_dynamicCast())
    {
      sub_100027D58(&qword_10009E0B8, type metadata accessor for CKError, &unk_10007CDC0);
      sub_10007AB3C();
    }

    return;
  }

  sub_100027D58(&qword_10009E080, type metadata accessor for BRError, &unk_10007CCC0);
  sub_10007AB3C();
  if (v22 != 17)
  {

    goto LABEL_9;
  }

  v4 = v23;
  v5 = sub_10007AB7C();

  v6 = [v5 underlyingErrors];
  v7 = sub_10007B2AC();

  v8 = 0;
  isa = v7[2].super.isa;
  while (1)
  {
    if (isa == v8)
    {
LABEL_7:

      v7, v14, v15, v16, v17, v18, v19, v20;

      return;
    }

    if (v8 >= v7[2].super.isa)
    {
      break;
    }

    v10 = (v8 + 1);
    swift_errorRetain();
    v11 = sub_10007AB7C();
    sub_100027710(a1);
    v13 = v12;

    v8 = v10;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_100027988(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  type metadata accessor for BRError(0);
  if (swift_dynamicCast())
  {
    sub_100027D58(&qword_10009E080, type metadata accessor for BRError, &unk_10007CCC0);
    sub_10007AB3C();
    if (v64 == 17)
    {
      v4 = v65;
      v5 = sub_10007AB7C();

      v6 = [v5 underlyingErrors];
      v7 = sub_10007B2AC();

      v8 = 0;
      isa = v7[2].super.isa;
      while (isa != v8)
      {
        if (v8 >= v7[2].super.isa)
        {
          __break(1u);
          goto LABEL_24;
        }

        v10 = (v8 + 1);
        swift_errorRetain();
        v11 = sub_10007AB7C();
        sub_100027988(a1);
        v13 = v12;

        v8 = v10;
        if (v13)
        {
          break;
        }
      }

LABEL_15:

      v7, v23, v24, v25, v26, v27, v28, v29;

      return;
    }
  }

  type metadata accessor for CKError(0);
  v14 = v3;
  if (swift_dynamicCast())
  {
    sub_100027D58(&qword_10009E0B8, type metadata accessor for CKError, &unk_10007CDC0);
    sub_10007AB3C();
    if (v64 == CKErrorCodeForUnderlyingErrorCode())
    {
      v4 = v65;
      v15 = sub_10007AB7C();

      v16 = [v15 underlyingErrors];
      v7 = sub_10007B2AC();

      v17 = 0;
      v18 = v7[2].super.isa;
      while (v18 != v17)
      {
        if (v17 >= v7[2].super.isa)
        {
LABEL_24:
          __break(1u);
          return;
        }

        v19 = (v17 + 1);
        swift_errorRetain();
        v20 = sub_10007AB7C();
        sub_100027988(a1);
        v22 = v21;

        v17 = v19;
        if (v22)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }
  }

  v30 = [v14 domain];
  v31 = sub_10007B19C();
  v33 = v32;

  v35 = sub_10007B19C();
  v41 = v34;
  if (v31 == v35 && v33 == v34)
  {
    v33, v34, v35, v36, v37, v38, v39, v40;
    v41, v42, v43, v44, v45, v46, v47, v48;
  }

  else
  {
    v49 = sub_10007B6BC();
    v33, v50, v51, v52, v53, v54, v55, v56;
    v41, v57, v58, v59, v60, v61, v62, v63;
    if ((v49 & 1) == 0)
    {
      return;
    }
  }

  [v14 code];
}

uint64_t sub_100027D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100027DA0()
{
  result = qword_10009E908;
  if (!qword_10009E908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009E908);
  }

  return result;
}

void *sub_100027DEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100027E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100027E0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100027F60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100027E2C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000057A0(&qword_10009E910, &qword_10007E208);
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
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100027F60(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000057A0(&qword_10009E930, &qword_10007E230);
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

double sub_10002806C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100037AD8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000282C0();
      v17 = v19;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    sub_1000285C4((*(v17 + 56) + 32 * v8), a3);
    sub_100028110(v8, v17);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_100028110(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007B59C() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_10007B74C();

      sub_10007B1EC();
      v11 = sub_10007B76C();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v7;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v9 = v25[1];
          *v24 = *v25;
          v24[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void *sub_1000282C0()
{
  v1 = v0;
  sub_1000057A0(&unk_10009F400, qword_10007E5B0);
  v2 = *v0;
  v3 = sub_10007B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000057F8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000285C4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_100028464(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000057A0(&qword_10009E918, &unk_10007E210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10007CF20;
    *(inited + 32) = sub_10007B19C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v6 = sub_1000381B0(inited);
    swift_setDeallocating();
    sub_100008824(inited + 32, &qword_10009E920, &qword_10007F580);
    v7 = CKErrorDomain;
    v8.super.isa = sub_10007B10C().super.isa;
    v6, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v7 = CKErrorDomain;
    v8.super.isa = 0;
  }

  v16 = [objc_allocWithZone(NSError) initWithDomain:v7 code:1 userInfo:v8.super.isa];

  return v16;
}

_OWORD *sub_1000285C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_1000285E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000285F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0xD)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10002863C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 sub_1000286A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000286CC(uint64_t a1, int a2)
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

uint64_t sub_100028718(uint64_t result, int a2, int a3)
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

id sub_100028778()
{
  result = sub_100028798();
  qword_1000A23C8 = result;
  return result;
}

id sub_100028798()
{
  v0 = sub_10007AE2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(NSXPCConnection);
  v5 = sub_10007B15C();
  v65 = [v4 initWithServiceName:v5];

  v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP12CloudSharing17SPIHelperProtocol_];
  outCount = 0;
  protocol_copyMethodDescriptionList(&OBJC_PROTOCOL____TtP12CloudSharing17SPIHelperProtocol_, 1, 1, &outCount);
  v7 = outCount;
  if (outCount != 23)
  {
    sub_10007AE0C();
    v8 = sub_10007AE1C();
    v9 = sub_10007B3FC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      *(v10 + 4) = 23;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "SPIHelper function count for allowed classes (%ld) doesn't match the number of functions in the protocol: %ld", v10, 0x16u);
    }

    (*(v1 + 8))(v3, v0);
  }

  v46 = "addToCloudKitSharing:containerSetupInfo:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:withReply:";
  v47 = "addToCloudKitSharing:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:";
  v48 = "addToShareFromSharingURL:containerSetupInfo:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:withReply:";
  v49 = "removeFromShareFromSharingURL:containerSetupInfo:withReply:";
  v50 = "removeFromShare:containerSetupInfo:withReply:";
  v51 = "removeFromShareForFileURL:withReply:";
  v52 = "mailContentFromSharingURL:share:fileURL:appName:appIconData:withReply:";
  v53 = "getMetadataFromShareFromSharingURL:containerSetupInfo:withReply:";
  v54 = "updateShare:containerSetupInfo:withReply:";
  v55 = "currentUserSharingStatusFor:withReply:";
  v56 = "addParticipantsToShare:containerSetupInfo:emailAddresses:phoneNumbers:withReply:";
  v57 = "addParticipantsToShareWithURLWrapper:share:emailAddresses:phoneNumbers:permissionType:allowOthersToInvite:withReply:";
  v58 = "addParticipantsToShareWithURLWrapper:share:emailAddresses:phoneNumbers:optionsGroups:withReply:";
  v59 = "addParticipantsToShare:containerSetupInfo:emailAddresses:phoneNumbers:permissionType:allowOthersToInvite:withReply:";
  v60 = "addParticipantsToShare:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:";
  v61 = "existingShareForFileWithURLWrapper:withReply:";
  v62 = "userNameAndEmailWithURLWrapper:containerSetupInfo:withReply:";
  v63 = "forciblyShareFolder:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:withReply:";
  v64 = "forciblyShareFolder:emailAddresses:phoneNumbers:optionsGroups:withReply:";
  v11 = CKErrorUserInfoClasses();
  v12 = sub_10007B3BC();

  isa = sub_10007B38C().super.isa;
  [v6 setClasses:isa forSelector:"sharingStatusForWithURLWrapper:withReply:" argumentIndex:1 ofReply:1];

  v14 = sub_10007B38C().super.isa;
  [v6 setClasses:v14 forSelector:"sharingStatusFor:withReply:" argumentIndex:1 ofReply:1];

  v15 = sub_10007B38C().super.isa;
  [v6 setClasses:v15 forSelector:"startFileSharingWithURLWrapper:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:withReply:" argumentIndex:2 ofReply:1];

  v16 = sub_10007B38C().super.isa;
  [v6 setClasses:v16 forSelector:"startFileSharingWithURLWrapper:emailAddresses:phoneNumbers:optionsGroups:withReply:" argumentIndex:2 ofReply:1];

  v17 = sub_10007B38C().super.isa;
  [v6 setClasses:v17 forSelector:v46 argumentIndex:2 ofReply:1];

  v18 = sub_10007B38C().super.isa;
  [v6 setClasses:v18 forSelector:v47 argumentIndex:2 ofReply:1];

  v19 = sub_10007B38C().super.isa;
  [v6 setClasses:v19 forSelector:v48 argumentIndex:2 ofReply:1];

  v20 = sub_10007B38C().super.isa;
  [v6 setClasses:v20 forSelector:v49 argumentIndex:1 ofReply:1];

  v21 = sub_10007B38C().super.isa;
  [v6 setClasses:v21 forSelector:v50 argumentIndex:1 ofReply:1];

  v22 = sub_10007B38C().super.isa;
  [v6 setClasses:v22 forSelector:v51 argumentIndex:1 ofReply:1];

  v23 = sub_10007B38C().super.isa;
  [v6 setClasses:v23 forSelector:v52 argumentIndex:2 ofReply:1];

  v24 = sub_10007B38C().super.isa;
  [v6 setClasses:v24 forSelector:v53 argumentIndex:1 ofReply:1];

  v25 = sub_10007B38C().super.isa;
  [v6 setClasses:v25 forSelector:v54 argumentIndex:2 ofReply:1];

  v26 = sub_10007B38C().super.isa;
  [v6 setClasses:v26 forSelector:v55 argumentIndex:1 ofReply:1];

  v27 = sub_10007B38C().super.isa;
  [v6 setClasses:v27 forSelector:v56 argumentIndex:2 ofReply:1];

  v28 = sub_10007B38C().super.isa;
  [v6 setClasses:v28 forSelector:v57 argumentIndex:2 ofReply:1];

  v29 = sub_10007B38C().super.isa;
  [v6 setClasses:v29 forSelector:v58 argumentIndex:2 ofReply:1];

  v30 = sub_10007B38C().super.isa;
  [v6 setClasses:v30 forSelector:v59 argumentIndex:2 ofReply:1];

  v31 = sub_10007B38C().super.isa;
  [v6 setClasses:v31 forSelector:v60 argumentIndex:2 ofReply:1];

  v32 = sub_10007B38C().super.isa;
  [v6 setClasses:v32 forSelector:v61 argumentIndex:2 ofReply:1];

  v33 = sub_10007B38C().super.isa;
  [v6 setClasses:v33 forSelector:v62 argumentIndex:2 ofReply:1];

  v34 = sub_10007B38C().super.isa;
  [v6 setClasses:v34 forSelector:v63 argumentIndex:2 ofReply:1];

  v35 = sub_10007B38C().super.isa;
  [v6 setClasses:v35 forSelector:v64 argumentIndex:2 ofReply:1];
  v12, v36, v37, v38, v39, v40, v41, v42;

  v43 = v65;
  [v65 setRemoteObjectInterface:v6];
  [v43 resume];

  return v43;
}

uint64_t static InitiateSharing.functionCount(inProtocol:)(Protocol *a1)
{
  outCount = 0;
  protocol_copyMethodDescriptionList(a1, 1, 1, &outCount);
  return outCount;
}

uint64_t sub_10002902C()
{
  result = sub_10002904C();
  qword_1000A23D0 = result;
  return result;
}

uint64_t sub_10002904C()
{
  v0 = sub_10007AE2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10009DF48 != -1)
  {
    swift_once();
  }

  v4 = qword_1000A23C8;
  aBlock[4] = sub_1000292A8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002947C;
  aBlock[3] = &unk_100097A68;
  v5 = _Block_copy(aBlock);
  v6 = v4;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v5];
  _Block_release(v5);

  sub_10007B56C();
  swift_unknownObjectRelease();
  sub_1000057A0(&qword_10009E978, &qword_10007E5C8);
  if (swift_dynamicCast())
  {
    return v12[1];
  }

  sub_10007AE0C();
  v9 = sub_10007AE1C();
  v10 = sub_10007B3FC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to create SPIHelper remote object proxy", v11, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_1000292A8(uint64_t a1)
{
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  swift_errorRetain();
  v6 = sub_10007AE1C();
  v7 = sub_10007B3FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = a1;
    v23 = v9;
    *v8 = 136315138;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v10 = sub_10007B1AC();
    v12 = v11;
    v13 = sub_100037C08(v10, v11, &v23);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received SPIHelper remoteObjectProxy error: %s", v8, 0xCu);
    sub_10000585C(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_10002947C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void InitiateSharing.callForSharingStatus(_:reply:)(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_10007AA3C();
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v46 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AC4C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007AE2C();
  v47 = *(v14 - 8);
  v48 = v14;
  __chkstk_darwin(v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v17 = *(v11 + 16);
  v49 = a1;
  v17(v13, a1, v10);
  v18 = sub_10007AE1C();
  v19 = sub_10007B41C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v43 = a3;
    v41 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = sub_10007B69C();
    v24 = a2;
    v26 = v25;
    (*(v11 + 8))(v13, v10);
    v27 = sub_100037C08(v23, v26, aBlock);
    v28 = v26;
    a2 = v24;
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "callForSharingStatus url: %s", v21, 0xCu);
    sub_10000585C(v41);
    a3 = v43;

    v8 = v42;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v47 + 8))(v16, v48);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v36 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v38 = sub_10007AB9C();
    sub_10007ACAC();
    v39 = swift_allocObject();
    *(v39 + 16) = a2;
    *(v39 + 24) = a3;
    aBlock[4] = sub_100038330;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100029D60;
    aBlock[3] = &unk_100096910;
    v40 = _Block_copy(aBlock);

    [v36 sharingStatusForWithURLWrapper:v38 withReply:v40];

    _Block_release(v40);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v37 = v44;
    sub_10007AB6C();
    v38 = sub_10007AA1C();
    (*(v46 + 8))(v37, v8);
    a2(0, v38);
  }
}

uint64_t sub_100029C10()
{
  swift_willThrow();
  v1 = v0;
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  sub_100005C8C(0, &qword_10009E900, NSError_ptr);
  if (swift_dynamicCast())
  {
    v2 = [v26 code];
    if (v2 == sub_10007AE3C())
    {
      v3 = [v26 domain];
      v4 = sub_10007B19C();
      v6 = v5;

      v8 = sub_10007B19C();
      v14 = v4;
      v15 = v7;
      if (v14 == v8 && v6 == v7)
      {
        v17 = 1;
      }

      else
      {
        v17 = sub_10007B6BC();
      }

      v6, v7, v8, v9, v10, v11, v12, v13;
      v15, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void InitiateSharing.callForFileSharing(_:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:reply:)(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v165 = a7;
  v166 = a8;
  v156 = a6;
  v157 = a4;
  v158 = a5;
  v167 = a3;
  v10 = sub_10007AA3C();
  __chkstk_darwin(v10 - 8);
  v151 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_10007AA4C();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v150 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v13 - 8);
  v155 = &v149 - v14;
  v15 = sub_10007AC4C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10007AE2C();
  v169 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v162 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v161 = &v149 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v149 - v25;
  v27 = __chkstk_darwin(v24);
  v160 = &v149 - v28;
  v29 = __chkstk_darwin(v27);
  v159 = &v149 - v30;
  __chkstk_darwin(v29);
  v32 = &v149 - v31;
  sub_10007AE0C();
  v33 = *(v16 + 16);
  v164 = a1;
  v34 = a1;
  v35 = v15;
  v33(v18, v34, v15);
  v36 = sub_10007AE1C();
  v37 = sub_10007B41C();
  v38 = os_log_type_enabled(v36, v37);
  v168 = a2;
  v154 = v15;
  v163 = v16;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v149 = v26;
    v40 = v39;
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v42 = sub_10007B69C();
    v43 = v35;
    v45 = v44;
    (*(v16 + 8))(v18, v43);
    v46 = sub_100037C08(v42, v45, aBlock);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v36, v37, "callForFileSharing url: %s", v40, 0xCu);
    sub_10000585C(v41);
    a2 = v168;

    v26 = v149;
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  v54 = *(v169 + 8);
  v54(v32, v19);
  v55 = v19;
  v56 = v159;
  sub_10007AE0C();

  v57 = sub_10007AE1C();
  v58 = sub_10007B3DC();
  a2, v59, v60, v61, v62, v63, v64, v65;
  if (os_log_type_enabled(v57, v58))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v68 = sub_10007B2BC();
    v70 = v69;
    v71 = sub_100037C08(v68, v69, aBlock);
    v70, v72, v73, v74, v75, v76, v77, v78;
    *(v66 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v57, v58, "callForFileSharing emailAddresses: %s", v66, 0xCu);
    sub_10000585C(v67);
  }

  v54(v56, v55);
  v79 = v160;
  sub_10007AE0C();
  v80 = v167;

  v81 = sub_10007AE1C();
  v82 = sub_10007B3DC();
  v80, v83, v84, v85, v86, v87, v88, v89;
  if (os_log_type_enabled(v81, v82))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    aBlock[0] = v91;
    *v90 = 136315138;
    v92 = sub_10007B2BC();
    v94 = v93;
    v95 = sub_100037C08(v92, v93, aBlock);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v90 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v81, v82, "callForFileSharing phoneNumbers: %s", v90, 0xCu);
    sub_10000585C(v91);
  }

  v54(v79, v55);
  sub_10007AE0C();
  v103 = sub_10007AE1C();
  v104 = sub_10007B3DC();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v105 = 136315138;
    v170 = v157;
    aBlock[0] = v106;
    type metadata accessor for ParticipantPermission(0);
    v107 = sub_10007B1AC();
    v109 = v108;
    v110 = sub_100037C08(v107, v108, aBlock);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v105 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v103, v104, "callForFileSharing accessType: %s", v105, 0xCu);
    sub_10000585C(v106);
  }

  v54(v26, v55);
  v118 = v161;
  sub_10007AE0C();
  v119 = sub_10007AE1C();
  v120 = sub_10007B3DC();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v121 = 136315138;
    v170 = v158;
    aBlock[0] = v122;
    type metadata accessor for ParticipantPermission(0);
    v123 = sub_10007B1AC();
    v125 = v124;
    v126 = sub_100037C08(v123, v124, aBlock);
    v125, v127, v128, v129, v130, v131, v132, v133;
    *(v121 + 4) = v126;
    _os_log_impl(&_mh_execute_header, v119, v120, "callForFileSharing permissionType: %s", v121, 0xCu);
    sub_10000585C(v122);
  }

  v54(v118, v55);
  v134 = v162;
  sub_10007AE0C();
  v135 = sub_10007AE1C();
  v136 = sub_10007B3DC();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *v137 = 67109120;
    *(v137 + 4) = v156 & 1;
    _os_log_impl(&_mh_execute_header, v135, v136, "callForFileSharing allowOthersToInvite: %{BOOL}d", v137, 8u);
  }

  v54(v134, v55);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v138 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v143 = sub_10007AB9C();
    sub_10007ACAC();
    isa = sub_10007B29C().super.isa;
    v145 = sub_10007B29C().super.isa;
    v146 = swift_allocObject();
    v147 = v166;
    *(v146 + 16) = v165;
    *(v146 + 24) = v147;
    aBlock[4] = sub_1000383A0;
    aBlock[5] = v146;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096960;
    v148 = _Block_copy(aBlock);

    [v138 startFileSharingWithURLWrapper:v143 emailAddresses:isa phoneNumbers:v145 accessType:v157 permissionType:v158 allowOthersToInvite:v156 & 1 withReply:v148];

    _Block_release(v148);
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = v155;
    (*(v163 + 56))(v155, 1, 1, v154);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v140 = v150;
    v141 = v153;
    sub_10007AB6C();
    v142 = sub_10007AA1C();
    (*(v152 + 8))(v140, v141);
    v165(v139, 0, v142);

    sub_100008824(v139, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_10002AAC0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_10007AC1C();
    v12 = sub_10007AC4C();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_10007AC4C();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_100008824(v10, &unk_10009ED10, &qword_10007D310);
}

void sub_10002AC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  sub_1000187C8(a1, &v17 - v9, &unk_10009ED10, &qword_10007D310);
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_10007ABFC(v13);
    v14 = v15;
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v16 = sub_10007AB7C();
  }

  else
  {
    v16 = 0;
  }

  (*(a4 + 16))(a4, v14, a2, v16);
}

void InitiateSharing.callForFileSharing(_:emailAddresses:phoneNumbers:optionsGroups:reply:)(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void *), uint64_t a6)
{
  v150 = a6;
  v152 = a4;
  v153 = a5;
  v154 = a3;
  v8 = sub_10007AA3C();
  __chkstk_darwin(v8 - 8);
  v142 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AA4C();
  v143 = *(v10 - 8);
  v144 = v10;
  __chkstk_darwin(v10);
  v141 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v12 - 8);
  v147 = &v139 - v13;
  v14 = sub_10007AC4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007AE2C();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v156 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v149 = &v139 - v23;
  v24 = __chkstk_darwin(v22);
  v155 = &v139 - v25;
  __chkstk_darwin(v24);
  v27 = &v139 - v26;
  sub_10007AE0C();
  v28 = *(v15 + 16);
  v151 = a1;
  v28(v17, a1, v14);
  v29 = sub_10007AE1C();
  v30 = sub_10007B41C();
  v31 = os_log_type_enabled(v29, v30);
  v148 = a2;
  v145 = v15;
  v146 = v14;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v140 = v18;
    v33 = v32;
    v139 = swift_slowAlloc();
    aBlock[0] = v139;
    *v33 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v34 = sub_10007B69C();
    v35 = v19;
    v37 = v36;
    (*(v15 + 8))(v17, v14);
    v38 = sub_100037C08(v34, v37, aBlock);
    v39 = v37;
    v19 = v35;
    a2 = v148;
    v39, v40, v41, v42, v43, v44, v45, v46;
    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "callForFileSharing url: %s", v33, 0xCu);
    sub_10000585C(v139);

    v18 = v140;
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  v47 = *(v19 + 8);
  v47(v27, v18);
  v48 = v155;
  sub_10007AE0C();

  v49 = sub_10007AE1C();
  v50 = sub_10007B3DC();
  a2, v51, v52, v53, v54, v55, v56, v57;
  if (os_log_type_enabled(v49, v50))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v58 = 136315138;
    v60 = sub_10007B2BC();
    v62 = v61;
    v63 = sub_100037C08(v60, v61, aBlock);
    v62, v64, v65, v66, v67, v68, v69, v70;
    *(v58 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v49, v50, "callForFileSharing emailAddresses: %s", v58, 0xCu);
    sub_10000585C(v59);

    v71 = v155;
  }

  else
  {

    v71 = v48;
  }

  v47(v71, v18);
  v72 = v154;
  v73 = v149;
  sub_10007AE0C();

  v74 = sub_10007AE1C();
  v75 = sub_10007B3DC();
  v72, v76, v77, v78, v79, v80, v81, v82;
  if (os_log_type_enabled(v74, v75))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    aBlock[0] = v84;
    *v83 = 136315138;
    v85 = sub_10007B2BC();
    v86 = v18;
    v88 = v87;
    v89 = sub_100037C08(v85, v87, aBlock);
    v90 = v88;
    v18 = v86;
    v90, v91, v92, v93, v94, v95, v96, v97;
    *(v83 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v74, v75, "callForFileSharing phoneNumbers: %s", v83, 0xCu);
    sub_10000585C(v84);

    v98 = v73;
    v99 = v86;
  }

  else
  {

    v98 = v73;
    v99 = v18;
  }

  v47(v98, v99);
  v100 = v152;
  v101 = v156;
  sub_10007AE0C();

  v102 = sub_10007AE1C();
  v103 = sub_10007B3DC();
  v100, v104, v105, v106, v107, v108, v109, v110;
  if (os_log_type_enabled(v102, v103))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    aBlock[0] = v112;
    *v111 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v113 = sub_10007B2BC();
    v115 = v114;
    v116 = v18;
    v117 = sub_100037C08(v113, v114, aBlock);
    v115, v118, v119, v120, v121, v122, v123, v124;
    *(v111 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v102, v103, "callForFileSharing optionsGroups: %s", v111, 0xCu);
    sub_10000585C(v112);

    v125 = v156;
    v126 = v116;
  }

  else
  {

    v125 = v101;
    v126 = v18;
  }

  v47(v125, v126);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v127 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v132 = sub_10007AB9C();
    sub_10007ACAC();
    isa = sub_10007B29C().super.isa;
    v134 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v135 = sub_10007B29C().super.isa;
    v136 = swift_allocObject();
    v137 = v150;
    *(v136 + 16) = v153;
    *(v136 + 24) = v137;
    aBlock[4] = sub_100046430;
    aBlock[5] = v136;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_1000969B0;
    v138 = _Block_copy(aBlock);

    [v127 startFileSharingWithURLWrapper:v132 emailAddresses:isa phoneNumbers:v134 optionsGroups:v135 withReply:v138];

    _Block_release(v138);
    swift_unknownObjectRelease();
  }

  else
  {
    v128 = v147;
    (*(v145 + 56))(v147, 1, 1, v146);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v129 = v141;
    v130 = v144;
    sub_10007AB6C();
    v131 = sub_10007AA1C();
    (*(v143 + 8))(v129, v130);
    v153(v128, 0, v131);

    sub_100008824(v128, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForCloudKitAddToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:reply:)(void *a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(uint64_t, void, void *), uint64_t a9)
{
  v158 = a8;
  v160 = a7;
  v161 = a5;
  v162 = a6;
  v13 = sub_10007AA3C();
  __chkstk_darwin(v13 - 8);
  v150 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10007AA4C();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v16 - 8);
  v148 = &v148 - v17;
  v165 = sub_10007AE2C();
  v18 = *(v165 - 8);
  v19 = __chkstk_darwin(v165);
  v156 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v155 = &v148 - v22;
  v23 = __chkstk_darwin(v21);
  v154 = &v148 - v24;
  v25 = __chkstk_darwin(v23);
  v153 = &v148 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v148 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v148 - v31;
  __chkstk_darwin(v30);
  v34 = &v148 - v33;
  sub_10007AE0C();
  v35 = a1;
  v36 = sub_10007AE1C();
  v37 = sub_10007B41C();

  v38 = os_log_type_enabled(v36, v37);
  v163 = a3;
  v164 = a4;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    *(v39 + 4) = v35;
    *v40 = v35;
    v41 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "callForCloudKitAddToShare share: %@", v39, 0xCu);
    sub_100008824(v40, &qword_10009F570, &qword_10007DAF0);

    a3 = v163;
  }

  v157 = v35;

  v42 = *(v18 + 8);
  v42(v34, v165);
  sub_10007AE0C();
  v43 = a2;
  v44 = sub_10007AE1C();
  v45 = sub_10007B41C();
  v159 = v43;

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    v48 = v159;
    *(v46 + 4) = v159;
    *v47 = v48;
    v49 = v48;
    _os_log_impl(&_mh_execute_header, v44, v45, "callForCloudKitAddToShare containerSetupInfo: %@", v46, 0xCu);
    sub_100008824(v47, &qword_10009F570, &qword_10007DAF0);
    a3 = v163;
  }

  v50 = v165;
  v42(v32, v165);
  sub_10007AE0C();

  v51 = sub_10007AE1C();
  v52 = sub_10007B3DC();
  a3, v53, v54, v55, v56, v57, v58, v59;
  if (os_log_type_enabled(v51, v52))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v60 = 136315138;
    v62 = sub_10007B2BC();
    v64 = v63;
    v65 = sub_100037C08(v62, v63, aBlock);
    v64, v66, v67, v68, v69, v70, v71, v72;
    *(v60 + 4) = v65;
    v73 = v164;
    _os_log_impl(&_mh_execute_header, v51, v52, "callForCloudKitAddToShare emailAddresses: %s", v60, 0xCu);
    sub_10000585C(v61);

    v42(v29, v50);
    v74 = v153;
  }

  else
  {

    v42(v29, v50);
    v74 = v153;
    v73 = v164;
  }

  sub_10007AE0C();

  v75 = sub_10007AE1C();
  v76 = sub_10007B3DC();
  v73, v77, v78, v79, v80, v81, v82, v83;
  v84 = os_log_type_enabled(v75, v76);
  v85 = v154;
  if (v84)
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    aBlock[0] = v87;
    *v86 = 136315138;
    v88 = sub_10007B2BC();
    v90 = v89;
    v91 = sub_100037C08(v88, v89, aBlock);
    v90, v92, v93, v94, v95, v96, v97, v98;
    *(v86 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v75, v76, "callForCloudKitAddToShare phoneNumbers: %s", v86, 0xCu);
    sub_10000585C(v87);
  }

  v99 = v74;
  v100 = v165;
  v42(v99, v165);
  sub_10007AE0C();
  v101 = sub_10007AE1C();
  v102 = sub_10007B3DC();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *v103 = 136315138;
    v166 = v161;
    aBlock[0] = v104;
    type metadata accessor for ParticipantPermission(0);
    v105 = sub_10007B1AC();
    v107 = v106;
    v108 = sub_100037C08(v105, v106, aBlock);
    v107, v109, v110, v111, v112, v113, v114, v115;
    *(v103 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v101, v102, "callForCloudKitAddToShare accessType: %s", v103, 0xCu);
    sub_10000585C(v104);
  }

  v42(v85, v100);
  v116 = v155;
  sub_10007AE0C();
  v117 = sub_10007AE1C();
  v118 = sub_10007B3DC();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *v119 = 136315138;
    v166 = v162;
    aBlock[0] = v120;
    type metadata accessor for ParticipantPermission(0);
    v121 = sub_10007B1AC();
    v123 = v122;
    v124 = sub_100037C08(v121, v122, aBlock);
    v123, v125, v126, v127, v128, v129, v130, v131;
    *(v119 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v117, v118, "callForCloudKitAddToShare permissionType: %s", v119, 0xCu);
    sub_10000585C(v120);
  }

  v42(v116, v100);
  v132 = v156;
  sub_10007AE0C();
  v133 = sub_10007AE1C();
  v134 = sub_10007B3DC();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    *v135 = 67109120;
    *(v135 + 4) = v160 & 1;
    _os_log_impl(&_mh_execute_header, v133, v134, "callForCloudKitAddToShare allowOthersToInvite: %{BOOL}d", v135, 8u);
  }

  v42(v132, v100);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v136 = qword_1000A23D0;
  v137 = v157;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v139 = sub_10007B29C().super.isa;
    v140 = swift_allocObject();
    *(v140 + 16) = v158;
    *(v140 + 24) = a9;
    aBlock[4] = sub_100046430;
    aBlock[5] = v140;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096A00;
    v141 = _Block_copy(aBlock);

    LOBYTE(v147) = v160 & 1;
    [v136 addToCloudKitSharing:v137 containerSetupInfo:v159 emailAddresses:isa phoneNumbers:v139 accessType:v161 permissionType:v162 allowOthersToInvite:v147 withReply:v141];
    _Block_release(v141);
    swift_unknownObjectRelease();
  }

  else
  {
    v142 = sub_10007AC4C();
    v143 = v148;
    (*(*(v142 - 8) + 56))(v148, 1, 1, v142);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v144 = v149;
    v145 = v152;
    sub_10007AB6C();
    v146 = sub_10007AA1C();
    (*(v151 + 8))(v144, v145);
    v158(v143, 0, v146);

    sub_100008824(v143, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForCloudKitAddToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:reply:)(void *a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v139 = a6;
  v140 = a7;
  v137 = a4;
  v138 = a5;
  v10 = sub_10007AA3C();
  __chkstk_darwin(v10 - 8);
  v131 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AA4C();
  v132 = *(v12 - 8);
  v133 = v12;
  __chkstk_darwin(v12);
  v130 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v14 - 8);
  v129 = &v128 - v15;
  v144 = sub_10007AE2C();
  v16 = *(v144 - 8);
  v17 = __chkstk_darwin(v144);
  v142 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v136 = &v128 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v128 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v128 - v25;
  __chkstk_darwin(v24);
  v28 = &v128 - v27;
  sub_10007AE0C();
  v29 = a1;
  v30 = sub_10007AE1C();
  v31 = sub_10007B41C();

  v32 = os_log_type_enabled(v30, v31);
  v143 = a3;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v29;
    *v34 = v29;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "callForCloudKitAddToShare share: %@", v33, 0xCu);
    sub_100008824(v34, &qword_10009F570, &qword_10007DAF0);
    a3 = v143;
  }

  v135 = v29;

  v36 = v144;
  v141 = *(v16 + 8);
  v141(v28, v144);
  sub_10007AE0C();
  v37 = a2;
  v38 = sub_10007AE1C();
  v39 = sub_10007B41C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "callForCloudKitAddToShare containerSetupInfo: %@", v40, 0xCu);
    sub_100008824(v41, &qword_10009F570, &qword_10007DAF0);

    v36 = v144;
  }

  v43 = v141;
  v141(v26, v36);
  sub_10007AE0C();

  v44 = sub_10007AE1C();
  v45 = sub_10007B3DC();
  a3, v46, v47, v48, v49, v50, v51, v52;
  if (os_log_type_enabled(v44, v45))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136315138;
    v55 = sub_10007B2BC();
    v57 = v56;
    v58 = sub_100037C08(v55, v56, aBlock);
    v57, v59, v60, v61, v62, v63, v64, v65;
    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v44, v45, "callForCloudKitAddToShare emailAddresses: %s", v53, 0xCu);
    sub_10000585C(v54);
    v36 = v144;
  }

  v43(v23, v36);
  v66 = v136;
  v67 = v137;
  sub_10007AE0C();

  v68 = sub_10007AE1C();
  v69 = sub_10007B3DC();
  v67, v70, v71, v72, v73, v74, v75, v76;
  if (os_log_type_enabled(v68, v69))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    aBlock[0] = v78;
    *v77 = 136315138;
    v79 = sub_10007B2BC();
    v81 = v80;
    v82 = sub_100037C08(v79, v80, aBlock);
    v81, v83, v84, v85, v86, v87, v88, v89;
    *(v77 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v68, v69, "callForCloudKitAddToShare phoneNumbers: %s", v77, 0xCu);
    sub_10000585C(v78);
    v36 = v144;

    v43 = v141;
  }

  v43(v66, v36);
  v90 = v138;
  v91 = v142;
  sub_10007AE0C();

  v92 = sub_10007AE1C();
  v93 = sub_10007B3DC();
  v90, v94, v95, v96, v97, v98, v99, v100;
  v101 = os_log_type_enabled(v92, v93);
  v134 = v37;
  if (v101)
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    aBlock[0] = v103;
    *v102 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v104 = sub_10007B2BC();
    v106 = v105;
    v107 = v43;
    v108 = sub_100037C08(v104, v105, aBlock);
    v106, v109, v110, v111, v112, v113, v114, v115;
    *(v102 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v92, v93, "callForCloudKitAddToShare optionsGroups: %s", v102, 0xCu);
    sub_10000585C(v103);

    v107(v142, v144);
  }

  else
  {

    v43(v91, v36);
  }

  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v116 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v118 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v119 = sub_10007B29C().super.isa;
    v120 = swift_allocObject();
    v121 = v140;
    *(v120 + 16) = v139;
    *(v120 + 24) = v121;
    aBlock[4] = sub_100046430;
    aBlock[5] = v120;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096A50;
    v122 = _Block_copy(aBlock);

    [v116 addToCloudKitSharing:v135 containerSetupInfo:v134 emailAddresses:isa phoneNumbers:v118 optionsGroups:v119 withReply:v122];
    _Block_release(v122);
    swift_unknownObjectRelease();
  }

  else
  {
    v123 = sub_10007AC4C();
    v124 = v129;
    (*(*(v123 - 8) + 56))(v129, 1, 1, v123);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v125 = v130;
    v126 = v133;
    sub_10007AB6C();
    v127 = sub_10007AA1C();
    (*(v132 + 8))(v125, v126);
    v139(v124, 0, v127);

    sub_100008824(v124, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForSharingURLAddToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:reply:)(uint64_t a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void, void, void *), uint64_t a9)
{
  v171 = a8;
  v173 = a7;
  v174 = a5;
  v175 = a6;
  v177 = a4;
  v12 = sub_10007AA3C();
  __chkstk_darwin(v12 - 8);
  v162 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_10007AA4C();
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v161 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007AC4C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_10007AE2C();
  v172 = *(v179 - 8);
  v19 = __chkstk_darwin(v179);
  v170 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v169 = &v160 - v22;
  v23 = __chkstk_darwin(v21);
  v168 = &v160 - v24;
  v25 = __chkstk_darwin(v23);
  v167 = &v160 - v26;
  v27 = __chkstk_darwin(v25);
  v178 = &v160 - v28;
  v29 = __chkstk_darwin(v27);
  v166 = &v160 - v30;
  __chkstk_darwin(v29);
  v32 = &v160 - v31;
  sub_10007AE0C();
  v33 = *(v16 + 16);
  v165 = a1;
  v33(v18, a1, v15);
  v34 = sub_10007AE1C();
  v35 = sub_10007B41C();
  v36 = os_log_type_enabled(v34, v35);
  v176 = a3;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v160 = a2;
    v39 = v38;
    aBlock[0] = v38;
    *v37 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v40 = sub_10007B69C();
    v42 = v41;
    (*(v16 + 8))(v18, v15);
    v43 = sub_100037C08(v40, v42, aBlock);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "callForSharingURLAddToShare sharingURL: %s", v37, 0xCu);
    sub_10000585C(v39);
    a2 = v160;

    a3 = v176;
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  v51 = v172;
  v52 = v172[1];
  v53 = v179;
  v52(v32, v179);
  v54 = v51;
  v55 = v166;
  sub_10007AE0C();
  v56 = a2;
  v57 = sub_10007AE1C();
  v58 = sub_10007B41C();
  v172 = v56;

  v59 = os_log_type_enabled(v57, v58);
  v60 = v168;
  if (v59)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138412290;
    v63 = v172;
    *(v61 + 4) = v172;
    *v62 = v63;
    v64 = v63;
    _os_log_impl(&_mh_execute_header, v57, v58, "callForSharingURLAddToShare containerSetupInfo: %@", v61, 0xCu);
    sub_100008824(v62, &qword_10009F570, &qword_10007DAF0);
    v53 = v179;
  }

  v65 = (v54 + 1);
  v52(v55, v53);
  v66 = v178;
  sub_10007AE0C();

  v67 = sub_10007AE1C();
  v68 = sub_10007B3DC();
  a3, v69, v70, v71, v72, v73, v74, v75;
  if (os_log_type_enabled(v67, v68))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    aBlock[0] = v77;
    *v76 = 136315138;
    v78 = sub_10007B2BC();
    v80 = v79;
    v81 = sub_100037C08(v78, v79, aBlock);
    v80, v82, v83, v84, v85, v86, v87, v88;
    *(v76 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v67, v68, "callForSharingURLAddToShare emailAddresses: %s", v76, 0xCu);
    sub_10000585C(v77);

    v53 = v179;
  }

  v52(v66, v53);
  v89 = v177;
  v90 = v65;
  v91 = v167;
  sub_10007AE0C();

  v92 = sub_10007AE1C();
  v93 = sub_10007B3DC();
  v89, v94, v95, v96, v97, v98, v99, v100;
  v101 = os_log_type_enabled(v92, v93);
  v178 = v90;
  if (v101)
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    aBlock[0] = v103;
    *v102 = 136315138;
    v104 = sub_10007B2BC();
    v106 = v105;
    v107 = sub_100037C08(v104, v105, aBlock);
    v106, v108, v109, v110, v111, v112, v113, v114;
    *(v102 + 4) = v107;
    _os_log_impl(&_mh_execute_header, v92, v93, "callForSharingURLAddToShare phoneNumbers: %s", v102, 0xCu);
    sub_10000585C(v103);
    v53 = v179;
  }

  v52(v91, v53);
  sub_10007AE0C();
  v115 = sub_10007AE1C();
  v116 = sub_10007B3DC();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v117 = 136315138;
    v180 = v174;
    aBlock[0] = v118;
    type metadata accessor for ParticipantPermission(0);
    v119 = sub_10007B1AC();
    v121 = v120;
    v122 = sub_100037C08(v119, v120, aBlock);
    v121, v123, v124, v125, v126, v127, v128, v129;
    *(v117 + 4) = v122;
    _os_log_impl(&_mh_execute_header, v115, v116, "callForSharingURLAddToShare accessType: %s", v117, 0xCu);
    sub_10000585C(v118);
    v53 = v179;
  }

  v52(v60, v53);
  v130 = v169;
  sub_10007AE0C();
  v131 = sub_10007AE1C();
  v132 = sub_10007B3DC();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    *v133 = 136315138;
    v180 = v175;
    aBlock[0] = v134;
    type metadata accessor for ParticipantPermission(0);
    v135 = sub_10007B1AC();
    v137 = v136;
    v138 = sub_100037C08(v135, v136, aBlock);
    v137, v139, v140, v141, v142, v143, v144, v145;
    *(v133 + 4) = v138;
    _os_log_impl(&_mh_execute_header, v131, v132, "callForSharingURLAddToShare permissionType: %s", v133, 0xCu);
    sub_10000585C(v134);
    v53 = v179;
  }

  v52(v130, v53);
  v146 = v170;
  sub_10007AE0C();
  v147 = sub_10007AE1C();
  v148 = sub_10007B3DC();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    *v149 = 67109120;
    *(v149 + 4) = v173 & 1;
    _os_log_impl(&_mh_execute_header, v147, v148, "callForSharingURLAddToShare allowOthersToInvite: %{BOOL}d", v149, 8u);
  }

  v52(v146, v53);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v150 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(&v182);
    v152 = v151;
    isa = sub_10007B29C().super.isa;
    v154.super.isa = sub_10007B29C().super.isa;
    v155 = swift_allocObject();
    *(v155 + 16) = v171;
    *(v155 + 24) = a9;
    aBlock[4] = sub_1000383C8;
    aBlock[5] = v155;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002DDAC;
    aBlock[3] = &unk_100096AA0;
    v156 = _Block_copy(aBlock);

    LOBYTE(v159) = v173 & 1;
    [v150 addToShareFromSharingURL:v152 containerSetupInfo:v172 emailAddresses:isa phoneNumbers:v154.super.isa accessType:v174 permissionType:v175 allowOthersToInvite:v159 withReply:v156];
    _Block_release(v156);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v157 = v161;
    v158 = v164;
    sub_10007AB6C();
    v154.super.isa = sub_10007AA1C();
    (*(v163 + 8))(v157, v158);
    v171(0, 0, v154.super.isa);
  }
}

void sub_10002DDAC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a3;
  v8 = a4;
  v7(a2, a3, a4);
}

void sub_10002DFD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_10007AB7C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2);
}

void InitiateSharing.callForSharingURLRemoveShare(_:containerSetupInfo:reply:)(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v66 = a2;
  v67 = a4;
  v65 = a3;
  v5 = sub_10007AA3C();
  __chkstk_darwin(v5 - 8);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007AA4C();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AC4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007AE2C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  sub_10007AE0C();
  v20 = *(v10 + 16);
  v64 = a1;
  v20(v12, a1, v9);
  v21 = sub_10007AE1C();
  v22 = sub_10007B41C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v59 = v17;
    v24 = v23;
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v24 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v25 = sub_10007B69C();
    v57 = v13;
    v26 = v14;
    v28 = v27;
    (*(v10 + 8))(v12, v9);
    v29 = sub_100037C08(v25, v28, aBlock);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "callForSharingURLRemoveShare sharingURL: %s", v24, 0xCu);
    sub_10000585C(v58);

    v17 = v59;

    v37 = *(v26 + 8);
    v38 = v57;
    v37(v19, v57);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v37 = *(v14 + 8);
    v37(v19, v13);
    v38 = v13;
  }

  sub_10007AE0C();
  v39 = v66;
  v40 = v66;
  v41 = sub_10007AE1C();
  v42 = sub_10007B41C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v38;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v40;
    *v45 = v39;
    v46 = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "callForSharingURLRemoveShare containerSetupInfo: %@", v44, 0xCu);
    sub_100008824(v45, &qword_10009F570, &qword_10007DAF0);

    v38 = v43;
  }

  v37(v17, v38);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v47 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v48);
    v50 = v49;
    v51 = swift_allocObject();
    v52 = v67;
    *(v51 + 16) = v65;
    *(v51 + 24) = v52;
    aBlock[4] = sub_1000383F0;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_100096AF0;
    v53 = _Block_copy(aBlock);

    [v47 removeFromShareFromSharingURL:v50 containerSetupInfo:v40 withReply:v53];
    _Block_release(v53);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v54 = v60;
    v55 = v63;
    sub_10007AB6C();
    v50 = sub_10007AA1C();
    (*(v62 + 8))(v54, v55);
    v65(0, v50);
  }
}

void sub_10002E714(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_10002E7A4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10007AB7C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void InitiateSharing.callForRemoveShare(_:containerSetupInfo:reply:)(void *a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v6 = sub_10007AA3C();
  __chkstk_darwin(v6 - 8);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AE2C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  sub_10007AE0C();
  v17 = a1;
  v18 = sub_10007AE1C();
  v19 = sub_10007B41C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = a2;
    v22 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v22 = v17;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "callForRemoveShare share: %@", v20, 0xCu);
    sub_100008824(v22, &qword_10009F570, &qword_10007DAF0);
    a2 = v21;
  }

  v24 = *(v11 + 8);
  v24(v16, v10);
  sub_10007AE0C();
  v25 = a2;
  v26 = sub_10007AE1C();
  v27 = sub_10007B41C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v10;
    v29 = v17;
    v30 = a2;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v24;
    v33 = v32;
    *v31 = 138412290;
    *(v31 + 4) = v25;
    *v32 = v30;
    v17 = v29;
    v10 = v28;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "callForRemoveShare containerSetupInfo: %@", v31, 0xCu);
    sub_100008824(v33, &qword_10009F570, &qword_10007DAF0);
    v24 = v43;
  }

  v24(v14, v10);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v35 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v36 = swift_allocObject();
    v37 = v49;
    *(v36 + 16) = v48;
    *(v36 + 24) = v37;
    aBlock[4] = sub_100046254;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_100096B40;
    v38 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v35 removeFromShare:v17 containerSetupInfo:v25 withReply:v38];
    _Block_release(v38);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v39 = v44;
    v40 = v47;
    sub_10007AB6C();
    v41 = sub_10007AA1C();
    (*(v46 + 8))(v39, v40);
    v48(0, v41);
  }
}

void InitiateSharing.callForFileURLRemoveShare(_:reply:)(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_10007AA3C();
  __chkstk_darwin(v6 - 8);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AC4C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007AE2C();
  v50 = *(v14 - 8);
  v51 = v14;
  __chkstk_darwin(v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v17 = *(v11 + 16);
  v49 = a1;
  v17(v13, a1, v10);
  v18 = sub_10007AE1C();
  v19 = sub_10007B41C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = a3;
    v21 = v20;
    v43 = swift_slowAlloc();
    v44 = a2;
    aBlock[0] = v43;
    *v21 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v22 = sub_10007B69C();
    v23 = v8;
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = sub_100037C08(v22, v25, aBlock);
    v27 = v25;
    v8 = v23;
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "callForFileURLRemoveShare url: %s", v21, 0xCu);
    sub_10000585C(v43);
    a2 = v44;

    a3 = v45;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v50 + 8))(v16, v51);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v35 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v36);
    v38 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = a2;
    *(v39 + 24) = a3;
    aBlock[4] = sub_100046254;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_100096B90;
    v40 = _Block_copy(aBlock);

    [v35 removeFromShareForFileURL:v38 withReply:v40];
    _Block_release(v40);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v41 = v46;
    sub_10007AB6C();
    v38 = sub_10007AA1C();
    (*(v48 + 8))(v41, v8);
    a2(0, v38);
  }
}

void InitiateSharing.callForMailContent(_:share:fileURL:appName:appIconData:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, uint64_t a6, uint64_t a7, void (*a8)(void, void, void, void, void *), uint64_t a9)
{
  v148 = a7;
  v149 = a8;
  v147 = a6;
  v150 = a4;
  v154 = a3;
  v143 = a2;
  v11 = sub_10007AA3C();
  __chkstk_darwin(v11 - 8);
  v135 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10007AA4C();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v14 = __chkstk_darwin(v139);
  v141 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v138 = &v131 - v17;
  __chkstk_darwin(v16);
  v144 = &v131 - v18;
  v19 = sub_10007AC4C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10007AE2C();
  v155 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v152 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v145 = &v131 - v27;
  v28 = __chkstk_darwin(v26);
  v151 = &v131 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v131 - v31;
  __chkstk_darwin(v30);
  v34 = &v131 - v33;
  sub_10007AE0C();
  v35 = *(v20 + 16);
  v142 = a1;
  v35(v22, a1, v19);
  v36 = sub_10007AE1C();
  v37 = sub_10007B41C();
  v38 = os_log_type_enabled(v36, v37);
  v153 = a5;
  v146 = v19;
  v140 = v20;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v132 = v23;
    v41 = v40;
    aBlock[0] = v40;
    *v39 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v42 = sub_10007B69C();
    v43 = v19;
    v45 = v44;
    v133 = *(v20 + 8);
    v133(v22, v43);
    v46 = sub_100037C08(v42, v45, aBlock);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v39 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v36, v37, "callForMailContent sharingURL: %s", v39, 0xCu);
    sub_10000585C(v41);
    v23 = v132;
  }

  else
  {

    v133 = *(v20 + 8);
    v133(v22, v19);
  }

  v54 = *(v155 + 1);
  v54(v34, v23);
  sub_10007AE0C();
  v55 = v143;
  v56 = sub_10007AE1C();
  v57 = sub_10007B41C();

  v58 = os_log_type_enabled(v56, v57);
  v155 = v54;
  v59 = v144;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    *(v60 + 4) = v55;
    *v61 = v55;
    v62 = v55;
    _os_log_impl(&_mh_execute_header, v56, v57, "callForMailContent share: %@", v60, 0xCu);
    sub_100008824(v61, &qword_10009F570, &qword_10007DAF0);

    v54 = v155;
  }

  v54(v32, v23);
  v63 = v151;
  sub_10007AE0C();
  sub_1000187C8(v154, v59, &unk_10009ED10, &qword_10007D310);
  v64 = sub_10007AE1C();
  v65 = sub_10007B41C();
  v66 = os_log_type_enabled(v64, v65);
  v143 = v55;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock[0] = v68;
    *v67 = 136315138;
    sub_1000187C8(v59, v138, &unk_10009ED10, &qword_10007D310);
    v69 = sub_10007B1AC();
    v70 = v59;
    v71 = v69;
    v73 = v72;
    sub_100008824(v70, &unk_10009ED10, &qword_10007D310);
    v74 = sub_100037C08(v71, v73, aBlock);
    v73, v75, v76, v77, v78, v79, v80, v81;
    *(v67 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v64, v65, "callForMailContent fileURL: %s", v67, 0xCu);
    sub_10000585C(v68);
    v54 = v155;

    v82 = v151;
  }

  else
  {

    sub_100008824(v59, &unk_10009ED10, &qword_10007D310);
    v82 = v63;
  }

  v54(v82, v23);
  v84 = v147;
  v83 = v148;
  v85 = v153;
  v86 = v145;
  sub_10007AE0C();

  v87 = sub_10007AE1C();
  v88 = sub_10007B3DC();
  v85, v89, v90, v91, v92, v93, v94, v95;
  if (os_log_type_enabled(v87, v88))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    aBlock[0] = v97;
    *v96 = 136315138;
    *(v96 + 4) = sub_100037C08(v150, v85, aBlock);
    _os_log_impl(&_mh_execute_header, v87, v88, "callForMailContent appName: %s", v96, 0xCu);
    sub_10000585C(v97);
    v54 = v155;
  }

  v54(v86, v23);
  v98 = v152;
  sub_10007AE0C();
  sub_100038418(v84, v83);
  v99 = sub_10007AE1C();
  v100 = sub_10007B3EC();
  sub_10003846C(v84, v83);
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    aBlock[0] = v102;
    *v101 = 136315138;
    v103 = sub_10007AC5C();
    v105 = v104;
    v106 = v23;
    v107 = sub_100037C08(v103, v104, aBlock);
    v105, v108, v109, v110, v111, v112, v113, v114;
    *(v101 + 4) = v107;
    _os_log_impl(&_mh_execute_header, v99, v100, "callForMailContent appIconData: %s", v101, 0xCu);
    sub_10000585C(v102);

    v155(v152, v106);
  }

  else
  {

    v54(v98, v23);
  }

  v115 = v146;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v116 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v117);
    v119 = v118;
    v120 = v141;
    sub_1000187C8(v154, v141, &unk_10009ED10, &qword_10007D310);
    if ((*(v140 + 48))(v120, 1, v115) == 1)
    {
      v122 = 0;
    }

    else
    {
      v126 = v120;
      sub_10007ABFC(v121);
      v122 = v127;
      v133(v126, v115);
    }

    v128 = sub_10007B15C();
    isa = sub_10007AC6C().super.isa;
    v129 = swift_allocObject();
    *(v129 + 16) = v149;
    *(v129 + 24) = a9;
    aBlock[4] = sub_1000384C0;
    aBlock[5] = v129;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002FF84;
    aBlock[3] = &unk_100096BE0;
    v130 = _Block_copy(aBlock);

    [v116 mailContentFromSharingURL:v119 share:v143 fileURL:v122 appName:v128 appIconData:isa withReply:v130];
    _Block_release(v130);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v123 = v134;
    v124 = v137;
    sub_10007AB6C();
    isa = sub_10007AA1C();
    (*(v136 + 8))(v123, v124);
    v149(0, 0, 0, 0, isa);
  }
}

void sub_10002FF84(uint64_t a1, uint64_t a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_10007B19C();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_10007B19C();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);

  v5, v13, v14, v15, v16, v17, v18, v19;

  v9, v20, v21, v22, v23, v24, v25, v26;
}

void sub_10003029C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a2)
  {
    v9 = sub_10007B15C();
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v8 = sub_10007B15C();
  }

LABEL_4:
  if (a5)
  {
    v10 = sub_10007AB7C();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a6 + 16))(a6, v9, v8);
}

void InitiateSharing.callForMetadataFromShareURL(_:containerSetupInfo:reply:)(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v66 = a2;
  v67 = a4;
  v65 = a3;
  v5 = sub_10007AA3C();
  __chkstk_darwin(v5 - 8);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007AA4C();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AC4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007AE2C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  sub_10007AE0C();
  v20 = *(v10 + 16);
  v64 = a1;
  v20(v12, a1, v9);
  v21 = sub_10007AE1C();
  v22 = sub_10007B41C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v59 = v17;
    v24 = v23;
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v24 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v25 = sub_10007B69C();
    v57 = v13;
    v26 = v14;
    v28 = v27;
    (*(v10 + 8))(v12, v9);
    v29 = sub_100037C08(v25, v28, aBlock);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "callForMetadataFromShareURL sharingURL: %s", v24, 0xCu);
    sub_10000585C(v58);

    v17 = v59;

    v37 = *(v26 + 8);
    v38 = v57;
    v37(v19, v57);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v37 = *(v14 + 8);
    v37(v19, v13);
    v38 = v13;
  }

  sub_10007AE0C();
  v39 = v66;
  v40 = v66;
  v41 = sub_10007AE1C();
  v42 = sub_10007B41C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v38;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v40;
    *v45 = v39;
    v46 = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "callForMetadataFromShareURL containerSetupInfo: %@", v44, 0xCu);
    sub_100008824(v45, &qword_10009F570, &qword_10007DAF0);

    v38 = v43;
  }

  v37(v17, v38);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v47 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v48);
    v50 = v49;
    v51 = swift_allocObject();
    v52 = v67;
    *(v51 + 16) = v65;
    *(v51 + 24) = v52;
    aBlock[4] = sub_1000384E8;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C29C;
    aBlock[3] = &unk_100096C30;
    v53 = _Block_copy(aBlock);

    [v47 getMetadataFromShareFromSharingURL:v50 containerSetupInfo:v40 withReply:v53];
    _Block_release(v53);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v54 = v60;
    v55 = v63;
    sub_10007AB6C();
    v50 = sub_10007AA1C();
    (*(v62 + 8))(v54, v55);
    v65(0, v50);
  }
}

uint64_t sub_100030A34(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, void (*a6)(char *, void *, void *))
{
  v10 = sub_10007AC4C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a5);
  sub_10007AC1C();
  _Block_copy(v14);
  v15 = a4;
  v16 = a1;
  a6(v13, a4, v14);
  _Block_release(v14);
  _Block_release(v14);

  return (*(v11 + 8))(v13, v10);
}

void sub_100030B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10007AB7C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t InitiateSharing.callForUpdateShare(_:containerSetupInfo:reply:)(void *a1, void *a2, void (*a3)(uint64_t, void, void *), uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v6 = sub_10007AA3C();
  __chkstk_darwin(v6 - 8);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v10 - 8);
  v48 = &v47 - v11;
  v12 = sub_10007AE2C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  sub_10007AE0C();
  v19 = a1;
  v20 = sub_10007AE1C();
  v21 = sub_10007B41C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = a2;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v24 = v19;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "callForUpdateShare share: %@", v23, 0xCu);
    sub_100008824(v24, &qword_10009F570, &qword_10007DAF0);

    a2 = v22;
  }

  v26 = *(v13 + 8);
  v26(v18, v12);
  sub_10007AE0C();
  v27 = a2;
  v28 = sub_10007AE1C();
  v29 = sub_10007B41C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v12;
    v31 = v19;
    v32 = a2;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = v26;
    v35 = v34;
    *v33 = 138412290;
    *(v33 + 4) = v27;
    *v34 = v32;
    v19 = v31;
    v12 = v30;
    v36 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "callForUpdateShare containerSetupInfo: %@", v33, 0xCu);
    sub_100008824(v35, &qword_10009F570, &qword_10007DAF0);
    v26 = v47;
  }

  v26(v16, v12);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v37 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v38 = swift_allocObject();
    v39 = v54;
    *(v38 + 16) = v53;
    *(v38 + 24) = v39;
    aBlock[4] = sub_100046430;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096C80;
    v40 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v37 updateShare:v19 containerSetupInfo:v27 withReply:v40];
    _Block_release(v40);
    return swift_unknownObjectRelease();
  }

  else
  {
    v42 = sub_10007AC4C();
    v43 = v48;
    (*(*(v42 - 8) + 56))(v48, 1, 1, v42);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v44 = v49;
    v45 = v52;
    sub_10007AB6C();
    v46 = sub_10007AA1C();
    (*(v51 + 8))(v44, v45);
    v53(v43, 0, v46);

    return sub_100008824(v43, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_100031204(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void InitiateSharing.callForCurrentUserSharingStatus(_:reply:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = sub_10007AA3C();
  __chkstk_darwin(v6 - 8);
  v28[1] = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AE2C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v15 = a1;
  v16 = sub_10007AE1C();
  v17 = sub_10007B41C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[0] = a2;
    v19 = a3;
    v20 = v18;
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v15;
    *v21 = v15;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "callForCurrentUserSharingStatus share: %@", v20, 0xCu);
    sub_100008824(v21, &qword_10009F570, &qword_10007DAF0);

    a3 = v19;
    a2 = v28[0];
  }

  (*(v12 + 8))(v14, v11);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v23 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = a2;
    *(v24 + 24) = a3;
    aBlock[4] = sub_100038510;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000316DC;
    aBlock[3] = &unk_100096CD0;
    v25 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v23 currentUserSharingStatusFor:v15 withReply:v25];
    _Block_release(v25);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v26 = v30;
    sub_10007AB6C();
    v27 = sub_10007AA1C();
    (*(v29 + 8))(v10, v26);
    a2(0, v27);
  }
}

void sub_1000316E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void InitiateSharing.callForAddParticipantsToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:reply:)(void *a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, void (*a5)(uint64_t, void, void *), uint64_t a6)
{
  v110 = a5;
  v111 = a6;
  v109 = a4;
  v113 = a3;
  v8 = sub_10007AA3C();
  __chkstk_darwin(v8 - 8);
  v104 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AA4C();
  v105 = *(v10 - 8);
  v106 = v10;
  __chkstk_darwin(v10);
  v103 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v12 - 8);
  v102 = &v102 - v13;
  v14 = sub_10007AE2C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v112 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v102 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v102 - v22;
  __chkstk_darwin(v21);
  v25 = &v102 - v24;
  sub_10007AE0C();
  v26 = a1;
  v27 = sub_10007AE1C();
  v28 = sub_10007B41C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v108 = v20;
    v30 = v15;
    v31 = v14;
    v32 = a2;
    v33 = v29;
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v26;
    *v34 = v26;
    v35 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "callForAddParticipantsToShare share: %@", v33, 0xCu);
    sub_100008824(v34, &qword_10009F570, &qword_10007DAF0);

    a2 = v32;
    v14 = v31;
    v15 = v30;
    v20 = v108;
  }

  v108 = v26;

  v36 = *(v15 + 8);
  v36(v25, v14);
  sub_10007AE0C();
  v37 = a2;
  v38 = sub_10007AE1C();
  v39 = sub_10007B41C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "callForAddParticipantsToShare containerSetupInfo: %@", v40, 0xCu);
    sub_100008824(v41, &qword_10009F570, &qword_10007DAF0);
  }

  v107 = v37;

  v36(v23, v14);
  sub_10007AE0C();
  v43 = v113;

  v44 = sub_10007AE1C();
  v45 = sub_10007B3DC();
  v43, v46, v47, v48, v49, v50, v51, v52;
  if (os_log_type_enabled(v44, v45))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136315138;
    v55 = sub_10007B2BC();
    v57 = v56;
    v58 = sub_100037C08(v55, v56, aBlock);
    v57, v59, v60, v61, v62, v63, v64, v65;
    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v44, v45, "callForAddParticipantsToShare emailAddresses: %s", v53, 0xCu);
    sub_10000585C(v54);
  }

  v36(v20, v14);
  v66 = v109;
  v67 = v112;
  sub_10007AE0C();

  v68 = sub_10007AE1C();
  v69 = sub_10007B3DC();
  v66, v70, v71, v72, v73, v74, v75, v76;
  if (os_log_type_enabled(v68, v69))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    aBlock[0] = v78;
    *v77 = 136315138;
    v79 = sub_10007B2BC();
    v81 = v80;
    v82 = sub_100037C08(v79, v80, aBlock);
    v81, v83, v84, v85, v86, v87, v88, v89;
    *(v77 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v68, v69, "callForAddParticipantsToShare phoneNumbers: %s", v77, 0xCu);
    sub_10000585C(v78);

    v90 = v112;
  }

  else
  {

    v90 = v67;
  }

  v36(v90, v14);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v91 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v93 = sub_10007B29C().super.isa;
    v94 = swift_allocObject();
    v95 = v111;
    *(v94 + 16) = v110;
    *(v94 + 24) = v95;
    aBlock[4] = sub_100046430;
    aBlock[5] = v94;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096D20;
    v96 = _Block_copy(aBlock);

    [v91 addParticipantsToShare:v108 containerSetupInfo:v107 emailAddresses:isa phoneNumbers:v93 withReply:v96];
    _Block_release(v96);
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = sub_10007AC4C();
    v98 = v102;
    (*(*(v97 - 8) + 56))(v102, 1, 1, v97);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v99 = v103;
    v100 = v106;
    sub_10007AB6C();
    v101 = sub_10007AA1C();
    (*(v105 + 8))(v99, v100);
    v110(v98, 0, v101);

    sub_100008824(v98, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForAddParticipantsToShareWithURLWrapper(_:share:emailAddresses:phoneNumbers:permissionType:allowOthersToInvite:reply:)(void *a1, uint64_t a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v129 = a7;
  v130 = a8;
  v127 = a6;
  v128 = a5;
  v124 = a2;
  v11 = sub_10007AA3C();
  __chkstk_darwin(v11 - 8);
  v120 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007AA4C();
  v121 = *(v13 - 8);
  v122 = v13;
  __chkstk_darwin(v13);
  v119 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v15 - 8);
  v118 = &v118 - v16;
  v133 = sub_10007AE2C();
  v17 = *(v133 - 8);
  v18 = __chkstk_darwin(v133);
  v126 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v125 = &v118 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v118 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v118 - v26;
  __chkstk_darwin(v25);
  v29 = &v118 - v28;
  sub_10007AE0C();
  v30 = a1;
  v31 = sub_10007AE1C();
  v32 = sub_10007B41C();

  v33 = os_log_type_enabled(v31, v32);
  v131 = a3;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v30;
    *v35 = v30;
    v36 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "callForAddParticipantsToShare urlWrapper: %@", v34, 0xCu);
    sub_100008824(v35, &qword_10009F570, &qword_10007DAF0);

    a3 = v131;
  }

  v123 = v30;

  v37 = *(v17 + 8);
  v38 = v133;
  v37(v29, v133);
  sub_10007AE0C();

  v39 = sub_10007AE1C();
  v40 = sub_10007B3DC();
  a3, v41, v42, v43, v44, v45, v46, v47;
  v48 = os_log_type_enabled(v39, v40);
  v132 = a4;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;
    v51 = sub_10007B2BC();
    v53 = v52;
    v54 = sub_100037C08(v51, v52, aBlock);
    v55 = v53;
    v38 = v133;
    v55, v56, v57, v58, v59, v60, v61, v62;
    *(v49 + 4) = v54;
    a4 = v132;
    _os_log_impl(&_mh_execute_header, v39, v40, "callForAddParticipantsToShare emailAddresses: %s", v49, 0xCu);
    sub_10000585C(v50);
  }

  v37(v27, v38);
  v63 = v128;
  sub_10007AE0C();

  v64 = sub_10007AE1C();
  v65 = sub_10007B3DC();
  a4, v66, v67, v68, v69, v70, v71, v72;
  if (os_log_type_enabled(v64, v65))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v73 = 136315138;
    v75 = sub_10007B2BC();
    v77 = v76;
    v78 = sub_100037C08(v75, v76, aBlock);
    v77, v79, v80, v81, v82, v83, v84, v85;
    *(v73 + 4) = v78;
    v38 = v133;
    _os_log_impl(&_mh_execute_header, v64, v65, "callForAddParticipantsToShare phoneNumbers: %s", v73, 0xCu);
    sub_10000585C(v74);
  }

  v37(v24, v38);
  v86 = v125;
  sub_10007AE0C();
  v87 = sub_10007AE1C();
  v88 = sub_10007B3DC();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v134 = v63;
    aBlock[0] = v90;
    *v89 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v91 = sub_10007B1AC();
    v93 = v92;
    v94 = sub_100037C08(v91, v92, aBlock);
    v93, v95, v96, v97, v98, v99, v100, v101;
    *(v89 + 4) = v94;
    v38 = v133;
    _os_log_impl(&_mh_execute_header, v87, v88, "callForAddParticipantsToShare permissionType: %s", v89, 0xCu);
    sub_10000585C(v90);
  }

  v37(v86, v38);
  v102 = v127;
  v103 = v126;
  sub_10007AE0C();
  v104 = sub_10007AE1C();
  v105 = sub_10007B3DC();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 67109120;
    *(v106 + 4) = v102 & 1;
    _os_log_impl(&_mh_execute_header, v104, v105, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v106, 8u);
  }

  v37(v103, v38);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v107 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v109 = sub_10007B29C().super.isa;
    v110 = swift_allocObject();
    v111 = v130;
    *(v110 + 16) = v129;
    *(v110 + 24) = v111;
    aBlock[4] = sub_100046430;
    aBlock[5] = v110;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096D70;
    v112 = _Block_copy(aBlock);

    [v107 addParticipantsToShareWithURLWrapper:v123 share:v124 emailAddresses:isa phoneNumbers:v109 permissionType:v63 allowOthersToInvite:v102 & 1 withReply:v112];
    _Block_release(v112);
    swift_unknownObjectRelease();
  }

  else
  {
    v113 = sub_10007AC4C();
    v114 = v118;
    (*(*(v113 - 8) + 56))(v118, 1, 1, v113);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v115 = v119;
    v116 = v122;
    sub_10007AB6C();
    v117 = sub_10007AA1C();
    (*(v121 + 8))(v115, v116);
    v129(v114, 0, v117);

    sub_100008824(v114, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForAddParticipantsToShareWithURLWrapper(_:share:emailAddresses:phoneNumbers:optionsGroups:reply:)(void *a1, uint64_t a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v138 = a6;
  v139 = a7;
  v136 = a2;
  v137 = a5;
  v142 = a4;
  v9 = sub_10007AA3C();
  __chkstk_darwin(v9 - 8);
  v132 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AA4C();
  v133 = *(v11 - 8);
  v134 = v11;
  __chkstk_darwin(v11);
  v131 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v13 - 8);
  v130 = &v128 - v14;
  v15 = sub_10007AE2C();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v141 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v128 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v128 - v23;
  __chkstk_darwin(v22);
  v26 = &v128 - v25;
  sub_10007AE0C();
  v27 = a1;
  v28 = sub_10007AE1C();
  v29 = sub_10007B41C();

  v30 = os_log_type_enabled(v28, v29);
  v140 = a3;
  if (v30)
  {
    v31 = v21;
    v32 = swift_slowAlloc();
    v33 = v16;
    v34 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v27;
    *v34 = v27;
    v35 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "callForAddParticipantsToShare urlWrapper: %@", v32, 0xCu);
    sub_100008824(v34, &qword_10009F570, &qword_10007DAF0);
    v16 = v33;

    v21 = v31;
    a3 = v140;
  }

  v38 = *(v16 + 8);
  v36 = v16 + 8;
  v37 = v38;
  v38(v26, v15);
  sub_10007AE0C();

  v39 = sub_10007AE1C();
  v40 = sub_10007B3DC();
  a3, v41, v42, v43, v44, v45, v46, v47;
  v48 = os_log_type_enabled(v39, v40);
  v135 = v27;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v129 = v37;
    v50 = v49;
    v51 = swift_slowAlloc();
    v128 = v36;
    v52 = v51;
    aBlock[0] = v51;
    *v50 = 136315138;
    v53 = sub_10007B2BC();
    v54 = v21;
    v56 = v55;
    v57 = sub_100037C08(v53, v55, aBlock);
    v58 = v56;
    v21 = v54;
    v58, v59, v60, v61, v62, v63, v64, v65;
    *(v50 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v39, v40, "callForAddParticipantsToShare emailAddresses: %s", v50, 0xCu);
    sub_10000585C(v52);

    v37 = v129;
  }

  v37(v24, v15);
  v66 = v15;
  sub_10007AE0C();
  v67 = v142;

  v68 = sub_10007AE1C();
  v69 = sub_10007B3DC();
  v67, v70, v71, v72, v73, v74, v75, v76;
  if (os_log_type_enabled(v68, v69))
  {
    v77 = v37;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    aBlock[0] = v79;
    *v78 = 136315138;
    v80 = sub_10007B2BC();
    v82 = v81;
    v83 = sub_100037C08(v80, v81, aBlock);
    v82, v84, v85, v86, v87, v88, v89, v90;
    *(v78 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v68, v69, "callForAddParticipantsToShare phoneNumbers: %s", v78, 0xCu);
    sub_10000585C(v79);

    v37 = v77;

    v77(v21, v66);
  }

  else
  {

    v37(v21, v15);
  }

  v91 = v137;
  v92 = v141;
  sub_10007AE0C();

  v93 = sub_10007AE1C();
  v94 = sub_10007B3DC();
  v91, v95, v96, v97, v98, v99, v100, v101;
  if (os_log_type_enabled(v93, v94))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    aBlock[0] = v103;
    *v102 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v104 = sub_10007B2BC();
    v106 = v105;
    v107 = v37;
    v108 = sub_100037C08(v104, v105, aBlock);
    v106, v109, v110, v111, v112, v113, v114, v115;
    *(v102 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v93, v94, "callForAddParticipantsToShare optionsGroups: %s", v102, 0xCu);
    sub_10000585C(v103);

    v107(v141, v66);
  }

  else
  {

    v37(v92, v66);
  }

  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v116 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v118 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v119 = sub_10007B29C().super.isa;
    v120 = swift_allocObject();
    v121 = v139;
    *(v120 + 16) = v138;
    *(v120 + 24) = v121;
    aBlock[4] = sub_100046430;
    aBlock[5] = v120;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096DC0;
    v122 = _Block_copy(aBlock);

    [v116 addParticipantsToShareWithURLWrapper:v135 share:v136 emailAddresses:isa phoneNumbers:v118 optionsGroups:v119 withReply:v122];
    _Block_release(v122);
    swift_unknownObjectRelease();
  }

  else
  {
    v123 = sub_10007AC4C();
    v124 = v130;
    (*(*(v123 - 8) + 56))(v130, 1, 1, v123);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v125 = v131;
    v126 = v134;
    sub_10007AB6C();
    v127 = sub_10007AA1C();
    (*(v133 + 8))(v125, v126);
    v138(v124, 0, v127);

    sub_100008824(v124, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_1000334A0(void *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock, void (*a9)(id, id, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *, void *))
{
  v12 = _Block_copy(aBlock);
  v13 = sub_10007B2AC();
  v14 = sub_10007B2AC();
  sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
  v15 = sub_10007B2AC();
  _Block_copy(v12);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  a9(v16, v17, v13, v14, v15, v12);
  _Block_release(v12);
  _Block_release(v12);

  v13, v19, v20, v21, v22, v23, v24, v25;
  v14, v26, v27, v28, v29, v30, v31, v32;

  v15, v33, v34, v35, v36, v37, v38, v39;
}

void InitiateSharing.callForAddParticipantsToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:permissionType:allowOthersToInvite:reply:)(void *a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v136 = a7;
  v137 = a8;
  v135 = a6;
  v140 = a5;
  v134 = a4;
  v138 = a2;
  v10 = sub_10007AA3C();
  __chkstk_darwin(v10 - 8);
  v128 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AA4C();
  v129 = *(v12 - 8);
  v130 = v12;
  __chkstk_darwin(v12);
  v127 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v14 - 8);
  v126 = &v126 - v15;
  v16 = sub_10007AE2C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v133 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v132 = &v126 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v126 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v126 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v126 - v29;
  __chkstk_darwin(v28);
  v32 = &v126 - v31;
  sub_10007AE0C();
  v33 = a1;
  v34 = sub_10007AE1C();
  v35 = sub_10007B41C();

  v36 = os_log_type_enabled(v34, v35);
  v139 = a3;
  v141 = v16;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v33;
    *v38 = v33;
    v39 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "callForAddParticipantsToShare share: %@", v37, 0xCu);
    sub_100008824(v38, &qword_10009F570, &qword_10007DAF0);
    a3 = v139;

    v16 = v141;
  }

  v131 = v33;

  v40 = *(v17 + 8);
  v40(v32, v16);
  sub_10007AE0C();
  v41 = v138;
  v42 = sub_10007AE1C();
  v43 = sub_10007B41C();
  v138 = v41;

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    v46 = v138;
    *(v44 + 4) = v138;
    *v45 = v46;
    v47 = v46;
    _os_log_impl(&_mh_execute_header, v42, v43, "callForAddParticipantsToShare containerSetupInfo: %@", v44, 0xCu);
    sub_100008824(v45, &qword_10009F570, &qword_10007DAF0);

    v16 = v141;
  }

  v40(v30, v16);
  sub_10007AE0C();

  v48 = sub_10007AE1C();
  v49 = sub_10007B3DC();
  a3, v50, v51, v52, v53, v54, v55, v56;
  if (os_log_type_enabled(v48, v49))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = sub_10007B2BC();
    v61 = v60;
    v62 = sub_100037C08(v59, v60, aBlock);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v48, v49, "callForAddParticipantsToShare emailAddresses: %s", v57, 0xCu);
    sub_10000585C(v58);
    v16 = v141;
  }

  v40(v27, v16);
  v70 = v134;
  sub_10007AE0C();

  v71 = sub_10007AE1C();
  v72 = sub_10007B3DC();
  v70, v73, v74, v75, v76, v77, v78, v79;
  if (os_log_type_enabled(v71, v72))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock[0] = v81;
    *v80 = 136315138;
    v82 = sub_10007B2BC();
    v84 = v83;
    v85 = sub_100037C08(v82, v83, aBlock);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v80 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v71, v72, "callForAddParticipantsToShare phoneNumbers: %s", v80, 0xCu);
    sub_10000585C(v81);
    v16 = v141;
  }

  v40(v24, v16);
  v93 = v140;
  v94 = v132;
  sub_10007AE0C();
  v95 = sub_10007AE1C();
  v96 = sub_10007B3DC();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v142 = v93;
    aBlock[0] = v98;
    *v97 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v99 = sub_10007B1AC();
    v101 = v100;
    v102 = sub_100037C08(v99, v100, aBlock);
    v101, v103, v104, v105, v106, v107, v108, v109;
    *(v97 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v95, v96, "callForAddParticipantsToShare permissionType: %s", v97, 0xCu);
    sub_10000585C(v98);
    v16 = v141;
  }

  v40(v94, v16);
  v110 = v135;
  v111 = v133;
  sub_10007AE0C();
  v112 = sub_10007AE1C();
  v113 = sub_10007B3DC();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 67109120;
    *(v114 + 4) = v110 & 1;
    _os_log_impl(&_mh_execute_header, v112, v113, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v114, 8u);
    v16 = v141;
  }

  v40(v111, v16);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v115 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v117 = sub_10007B29C().super.isa;
    v118 = swift_allocObject();
    v119 = v137;
    *(v118 + 16) = v136;
    *(v118 + 24) = v119;
    aBlock[4] = sub_100046430;
    aBlock[5] = v118;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096E10;
    v120 = _Block_copy(aBlock);

    [v115 addParticipantsToShare:v131 containerSetupInfo:v138 emailAddresses:isa phoneNumbers:v117 permissionType:v140 allowOthersToInvite:v110 & 1 withReply:v120];
    _Block_release(v120);
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = sub_10007AC4C();
    v122 = v126;
    (*(*(v121 - 8) + 56))(v126, 1, 1, v121);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v123 = v127;
    v124 = v130;
    sub_10007AB6C();
    v125 = sub_10007AA1C();
    (*(v129 + 8))(v123, v124);
    v136(v122, 0, v125);

    sub_100008824(v122, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_1000340A0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void (*a10)(id, id, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *, uint64_t, uint64_t, void *))
{
  v15 = _Block_copy(a9);
  v16 = sub_10007B2AC();
  v17 = sub_10007B2AC();
  _Block_copy(v15);
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a10(v18, v19, v16, v17, a7, a8, v15);
  _Block_release(v15);
  _Block_release(v15);

  v16, v21, v22, v23, v24, v25, v26, v27;

  v17, v28, v29, v30, v31, v32, v33, v34;
}

void InitiateSharing.callForAddParticipantsToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:reply:)(void *a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v139 = a6;
  v140 = a7;
  v137 = a4;
  v138 = a5;
  v10 = sub_10007AA3C();
  __chkstk_darwin(v10 - 8);
  v131 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AA4C();
  v132 = *(v12 - 8);
  v133 = v12;
  __chkstk_darwin(v12);
  v130 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v14 - 8);
  v129 = &v128 - v15;
  v144 = sub_10007AE2C();
  v16 = *(v144 - 8);
  v17 = __chkstk_darwin(v144);
  v142 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v136 = &v128 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v128 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v128 - v25;
  __chkstk_darwin(v24);
  v28 = &v128 - v27;
  sub_10007AE0C();
  v29 = a1;
  v30 = sub_10007AE1C();
  v31 = sub_10007B41C();

  v32 = os_log_type_enabled(v30, v31);
  v143 = a3;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v29;
    *v34 = v29;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "callForAddParticipantsToShare share: %@", v33, 0xCu);
    sub_100008824(v34, &qword_10009F570, &qword_10007DAF0);
    a3 = v143;
  }

  v135 = v29;

  v36 = v144;
  v141 = *(v16 + 8);
  v141(v28, v144);
  sub_10007AE0C();
  v37 = a2;
  v38 = sub_10007AE1C();
  v39 = sub_10007B41C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "callForAddParticipantsToShare containerSetupInfo: %@", v40, 0xCu);
    sub_100008824(v41, &qword_10009F570, &qword_10007DAF0);

    v36 = v144;
  }

  v43 = v141;
  v141(v26, v36);
  sub_10007AE0C();

  v44 = sub_10007AE1C();
  v45 = sub_10007B3DC();
  a3, v46, v47, v48, v49, v50, v51, v52;
  if (os_log_type_enabled(v44, v45))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136315138;
    v55 = sub_10007B2BC();
    v57 = v56;
    v58 = sub_100037C08(v55, v56, aBlock);
    v57, v59, v60, v61, v62, v63, v64, v65;
    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v44, v45, "callForAddParticipantsToShare emailAddresses: %s", v53, 0xCu);
    sub_10000585C(v54);
    v36 = v144;
  }

  v43(v23, v36);
  v66 = v136;
  v67 = v137;
  sub_10007AE0C();

  v68 = sub_10007AE1C();
  v69 = sub_10007B3DC();
  v67, v70, v71, v72, v73, v74, v75, v76;
  if (os_log_type_enabled(v68, v69))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    aBlock[0] = v78;
    *v77 = 136315138;
    v79 = sub_10007B2BC();
    v81 = v80;
    v82 = sub_100037C08(v79, v80, aBlock);
    v81, v83, v84, v85, v86, v87, v88, v89;
    *(v77 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v68, v69, "callForAddParticipantsToShare phoneNumbers: %s", v77, 0xCu);
    sub_10000585C(v78);
    v36 = v144;

    v43 = v141;
  }

  v43(v66, v36);
  v90 = v138;
  v91 = v142;
  sub_10007AE0C();

  v92 = sub_10007AE1C();
  v93 = sub_10007B3DC();
  v90, v94, v95, v96, v97, v98, v99, v100;
  v101 = os_log_type_enabled(v92, v93);
  v134 = v37;
  if (v101)
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    aBlock[0] = v103;
    *v102 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v104 = sub_10007B2BC();
    v106 = v105;
    v107 = v43;
    v108 = sub_100037C08(v104, v105, aBlock);
    v106, v109, v110, v111, v112, v113, v114, v115;
    *(v102 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v92, v93, "callForAddParticipantsToShare optionsGroups: %s", v102, 0xCu);
    sub_10000585C(v103);

    v107(v142, v144);
  }

  else
  {

    v43(v91, v36);
  }

  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v116 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v118 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v119 = sub_10007B29C().super.isa;
    v120 = swift_allocObject();
    v121 = v140;
    *(v120 + 16) = v139;
    *(v120 + 24) = v121;
    aBlock[4] = sub_100046430;
    aBlock[5] = v120;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096E60;
    v122 = _Block_copy(aBlock);

    [v116 addParticipantsToShare:v135 containerSetupInfo:v134 emailAddresses:isa phoneNumbers:v118 optionsGroups:v119 withReply:v122];
    _Block_release(v122);
    swift_unknownObjectRelease();
  }

  else
  {
    v123 = sub_10007AC4C();
    v124 = v129;
    (*(*(v123 - 8) + 56))(v129, 1, 1, v123);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v125 = v130;
    v126 = v133;
    sub_10007AB6C();
    v127 = sub_10007AA1C();
    (*(v132 + 8))(v125, v126);
    v139(v124, 0, v127);

    sub_100008824(v124, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForExistingShareForFile(_:reply:)(uint64_t a1, void (*a2)(void, void, void), uint64_t a3)
{
  v6 = sub_10007AA3C();
  __chkstk_darwin(v6 - 8);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_10007AC4C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007AE2C();
  v57 = *(v17 - 8);
  v58 = v17;
  __chkstk_darwin(v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v59 = v14;
  (*(v14 + 16))(v16, a1, v13);
  v20 = sub_10007AE1C();
  v21 = sub_10007B41C();
  v22 = os_log_type_enabled(v20, v21);
  v56 = v13;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v51 = a3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v50 = v12;
    v26 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v27 = sub_10007B69C();
    v28 = a2;
    v30 = v29;
    (*(v59 + 8))(v16, v13);
    v31 = sub_100037C08(v27, v30, aBlock);
    v32 = v30;
    a2 = v28;
    v32, v33, v34, v35, v36, v37, v38, v39;
    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "callForExistingShareForFile url: %s", v24, 0xCu);
    sub_10000585C(v26);
    v12 = v50;

    a3 = v51;

    (*(v57 + 8))(v19, v58);
    v40 = v59;
  }

  else
  {

    v41 = v59;
    (*(v59 + 8))(v16, v13);
    (*(v57 + 8))(v19, v58);
    v40 = v41;
  }

  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v42 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v46 = sub_10007AB9C();
    sub_10007ACAC();
    v47 = swift_allocObject();
    *(v47 + 16) = a2;
    *(v47 + 24) = a3;
    aBlock[4] = sub_100046430;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096EB0;
    v48 = _Block_copy(aBlock);

    [v42 existingShareForFileWithURLWrapper:v46 withReply:v48];

    _Block_release(v48);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v40 + 56))(v12, 1, 1, v56);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v43 = v52;
    v44 = v55;
    sub_10007AB6C();
    v45 = sub_10007AA1C();
    (*(v54 + 8))(v43, v44);
    a2(v12, 0, v45);

    sub_100008824(v12, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_100035340(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, void *))
{
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  sub_10007AC1C();
  _Block_copy(v12);
  v13 = a1;
  a5(v11, v12);
  _Block_release(v12);
  _Block_release(v12);

  return (*(v9 + 8))(v11, v8);
}

void InitiateSharing.callForUserNameAndEmail(_:containerSetupInfo:reply:)(uint64_t a1, void *a2, void (*a3)(void, void, void *), uint64_t a4)
{
  v76 = a4;
  v80 = a3;
  v6 = sub_10007AA3C();
  __chkstk_darwin(v6 - 8);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v72 = *(v8 - 8);
  v73 = v8;
  __chkstk_darwin(v8);
  v70 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10007AC4C();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v11 = __chkstk_darwin(v74);
  v77 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v68 - v14;
  __chkstk_darwin(v13);
  v17 = &v68 - v16;
  v18 = sub_10007AE2C();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v68 - v23;
  sub_10007AE0C();
  v75 = a1;
  sub_1000187C8(a1, v17, &unk_10009ED10, &qword_10007D310);
  v25 = sub_10007AE1C();
  v26 = sub_10007B41C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v68 = v18;
    v28 = v27;
    v29 = swift_slowAlloc();
    v69 = v19;
    v30 = v29;
    aBlock[0] = v29;
    *v28 = 136315138;
    sub_1000187C8(v17, v15, &unk_10009ED10, &qword_10007D310);
    v31 = sub_10007B1AC();
    v74 = a2;
    v32 = v22;
    v34 = v33;
    sub_100008824(v17, &unk_10009ED10, &qword_10007D310);
    v35 = sub_100037C08(v31, v34, aBlock);
    v36 = v34;
    v22 = v32;
    a2 = v74;
    v36, v37, v38, v39, v40, v41, v42, v43;
    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "callForUserNameAndEmail url: %s", v28, 0xCu);
    sub_10000585C(v30);
    v44 = v69;

    v45 = *(v44 + 8);
    v46 = v68;
    v45(v24, v68);
  }

  else
  {

    sub_100008824(v17, &unk_10009ED10, &qword_10007D310);
    v45 = *(v19 + 8);
    v45(v24, v18);
    v46 = v18;
  }

  sub_10007AE0C();
  v47 = a2;
  v48 = sub_10007AE1C();
  v49 = sub_10007B41C();

  v50 = os_log_type_enabled(v48, v49);
  v51 = v78;
  if (v50)
  {
    v52 = v46;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = a2;
    v56 = v54;
    *v53 = 138412290;
    *(v53 + 4) = v47;
    *v54 = v55;
    v57 = v47;
    _os_log_impl(&_mh_execute_header, v48, v49, "callForUserNameAndEmail containerSetupInfo: %@", v53, 0xCu);
    sub_100008824(v56, &qword_10009F570, &qword_10007DAF0);

    v46 = v52;
  }

  v45(v22, v46);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v58 = qword_1000A23D0;
  v59 = v79;
  v60 = v77;
  if (qword_1000A23D0)
  {
    sub_1000187C8(v75, v77, &unk_10009ED10, &qword_10007D310);
    if ((*(v59 + 48))(v60, 1, v81) == 1)
    {
      swift_unknownObjectRetain();
      sub_100008824(v60, &unk_10009ED10, &qword_10007D310);
      v61 = 0;
    }

    else
    {
      (*(v59 + 32))(v51, v60, v81);
      swift_unknownObjectRetain();
      v61 = sub_10007AB9C();
      sub_10007ACAC();
      (*(v59 + 8))(v51, v81);
    }

    v65 = swift_allocObject();
    v66 = v76;
    *(v65 + 16) = v80;
    *(v65 + 24) = v66;
    aBlock[4] = sub_100038538;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100035D58;
    aBlock[3] = &unk_100096F00;
    v67 = _Block_copy(aBlock);

    [v58 userNameAndEmailWithURLWrapper:v61 containerSetupInfo:v47 withReply:v67];

    _Block_release(v67);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v62 = v70;
    v63 = v73;
    sub_10007AB6C();
    v64 = sub_10007AA1C();
    (*(v72 + 8))(v62, v63);
    v80(0, 0, v64);
  }
}

void sub_100035D58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_100035F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_10007AB7C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

void InitiateSharing.callForForciblyShareFolder(_:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:reply:)(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v155 = a7;
  v156 = a8;
  v154 = a6;
  v158 = a3;
  v159 = a5;
  v149 = a4;
  v10 = sub_10007AA3C();
  __chkstk_darwin(v10 - 8);
  v145 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10007AA4C();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v13 - 8);
  v143 = &v141 - v14;
  v15 = sub_10007AC4C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10007AE2C();
  v160 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v152 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v151 = &v141 - v23;
  v24 = __chkstk_darwin(v22);
  v150 = &v141 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v141 - v27;
  __chkstk_darwin(v26);
  v30 = &v141 - v29;
  sub_10007AE0C();
  v31 = *(v16 + 16);
  v148 = a1;
  v32 = a1;
  v33 = v15;
  v31(v18, v32, v15);
  v34 = sub_10007AE1C();
  v35 = sub_10007B41C();
  v36 = os_log_type_enabled(v34, v35);
  v157 = a2;
  v142 = v15;
  v153 = v16;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v141 = v19;
    v39 = v38;
    aBlock[0] = v38;
    *v37 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v40 = sub_10007B69C();
    v41 = v33;
    v43 = v42;
    (*(v16 + 8))(v18, v41);
    v44 = sub_100037C08(v40, v43, aBlock);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v37 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "callForForciblyShareFolder folderURL: %s", v37, 0xCu);
    sub_10000585C(v39);
    v19 = v141;

    a2 = v157;
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  v52 = *(v160 + 8);
  v52(v30, v19);
  sub_10007AE0C();

  v53 = sub_10007AE1C();
  v54 = sub_10007B3DC();
  a2, v55, v56, v57, v58, v59, v60, v61;
  if (os_log_type_enabled(v53, v54))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136315138;
    v64 = sub_10007B2BC();
    v66 = v65;
    v67 = sub_100037C08(v64, v65, aBlock);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v62 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v53, v54, "callForForciblyShareFolder emailAddresses: %s", v62, 0xCu);
    sub_10000585C(v63);
  }

  v52(v28, v19);
  v75 = v158;
  v76 = v159;
  v77 = v150;
  sub_10007AE0C();

  v78 = sub_10007AE1C();
  v79 = sub_10007B3DC();
  v75, v80, v81, v82, v83, v84, v85, v86;
  if (os_log_type_enabled(v78, v79))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    aBlock[0] = v88;
    *v87 = 136315138;
    v89 = sub_10007B2BC();
    v91 = v90;
    v92 = sub_100037C08(v89, v90, aBlock);
    v91, v93, v94, v95, v96, v97, v98, v99;
    *(v87 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v78, v79, "callForForciblyShareFolder phoneNumbers: %s", v87, 0xCu);
    sub_10000585C(v88);
  }

  v52(v77, v19);
  v100 = v151;
  sub_10007AE0C();
  v101 = sub_10007AE1C();
  v102 = sub_10007B3DC();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v161 = v76;
    aBlock[0] = v104;
    *v103 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v105 = sub_10007B1AC();
    v106 = v19;
    v108 = v107;
    v109 = sub_100037C08(v105, v107, aBlock);
    v110 = v108;
    v19 = v106;
    v110, v111, v112, v113, v114, v115, v116, v117;
    *(v103 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v101, v102, "callForForciblyShareFolder permissionType: %s", v103, 0xCu);
    sub_10000585C(v104);

    v118 = v100;
    v119 = v106;
  }

  else
  {

    v118 = v100;
    v119 = v19;
  }

  v52(v118, v119);
  v121 = v152;
  v120 = v153;
  sub_10007AE0C();
  v122 = sub_10007AE1C();
  v123 = sub_10007B3DC();
  v124 = os_log_type_enabled(v122, v123);
  v125 = v154;
  if (v124)
  {
    v126 = swift_slowAlloc();
    *v126 = 67109120;
    *(v126 + 4) = v125 & 1;
    _os_log_impl(&_mh_execute_header, v122, v123, "callForForciblyShareFolder allowOthersToInvite: %{BOOL}d", v126, 8u);
  }

  v52(v121, v19);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v127 = qword_1000A23D0;
  v128 = v159;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v129);
    v131 = v130;
    isa = sub_10007B29C().super.isa;
    v133 = sub_10007B29C().super.isa;
    v134 = swift_allocObject();
    v135 = v156;
    *(v134 + 16) = v155;
    *(v134 + 24) = v135;
    aBlock[4] = sub_100046430;
    aBlock[5] = v134;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096F50;
    v136 = _Block_copy(aBlock);

    [v127 forciblyShareFolder:v131 emailAddresses:isa phoneNumbers:v133 accessType:v149 permissionType:v128 allowOthersToInvite:v125 & 1 withReply:v136];
    _Block_release(v136);
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = v143;
    (*(v120 + 56))(v143, 1, 1, v142);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v138 = v144;
    v139 = v147;
    sub_10007AB6C();
    v140 = sub_10007AA1C();
    (*(v146 + 8))(v138, v139);
    v155(v137, 0, v140);

    sub_100008824(v137, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_100036B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, const void *a9, void (*a10)(char *, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *, uint64_t, uint64_t, void, void *))
{
  v36 = a8;
  v35 = a7;
  v12 = sub_10007AC4C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a9);
  sub_10007AC1C();
  v17 = sub_10007B2AC();
  v18 = sub_10007B2AC();
  _Block_copy(v16);
  v19 = a1;
  a10(v15, v17, v18, a6, v35, v36, v16);
  _Block_release(v16);
  _Block_release(v16);

  v17, v20, v21, v22, v23, v24, v25, v26;
  v18, v27, v28, v29, v30, v31, v32, v33;
  return (*(v13 + 8))(v15, v12);
}

void InitiateSharing.callForForciblyShareFolder(_:emailAddresses:phoneNumbers:optionsGroups:reply:)(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, void (*a5)(uint64_t, void, void *), uint64_t a6)
{
  v146 = a5;
  v147 = a6;
  v151 = a4;
  v145 = a3;
  v8 = sub_10007AA3C();
  __chkstk_darwin(v8 - 8);
  v139 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AA4C();
  v140 = *(v10 - 8);
  v141 = v10;
  __chkstk_darwin(v10);
  v138 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v12 - 8);
  v137 = &v135 - v13;
  v14 = sub_10007AC4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007AE2C();
  v143 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v149 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v148 = &v135 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v135 - v24;
  __chkstk_darwin(v23);
  v27 = &v135 - v26;
  sub_10007AE0C();
  v28 = *(v15 + 16);
  v142 = a1;
  v28(v17, a1, v14);
  v29 = sub_10007AE1C();
  v30 = sub_10007B41C();
  v31 = os_log_type_enabled(v29, v30);
  v150 = a2;
  v136 = v14;
  v144 = v15;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v135 = v18;
    v33 = v32;
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v35 = sub_10007B69C();
    v36 = v14;
    v38 = v37;
    (*(v15 + 8))(v17, v36);
    v39 = sub_100037C08(v35, v38, aBlock);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "callForForciblyShareFolder folderURL: %s", v33, 0xCu);
    sub_10000585C(v34);
    a2 = v150;

    v18 = v135;
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  v47 = *(v143 + 8);
  v47(v27, v18);
  sub_10007AE0C();

  v48 = sub_10007AE1C();
  v49 = sub_10007B3DC();
  a2, v50, v51, v52, v53, v54, v55, v56;
  if (os_log_type_enabled(v48, v49))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = sub_10007B2BC();
    v61 = v60;
    v62 = sub_100037C08(v59, v60, aBlock);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v48, v49, "callForForciblyShareFolder emailAddresses: %s", v57, 0xCu);
    sub_10000585C(v58);
  }

  v47(v25, v18);
  v70 = v148;
  sub_10007AE0C();
  v71 = v145;

  v72 = sub_10007AE1C();
  v73 = sub_10007B3DC();
  v71, v74, v75, v76, v77, v78, v79, v80;
  if (os_log_type_enabled(v72, v73))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    aBlock[0] = v82;
    *v81 = 136315138;
    v83 = sub_10007B2BC();
    v85 = v84;
    v86 = sub_100037C08(v83, v84, aBlock);
    v85, v87, v88, v89, v90, v91, v92, v93;
    *(v81 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v72, v73, "callForForciblyShareFolder phoneNumbers: %s", v81, 0xCu);
    sub_10000585C(v82);

    v94 = v148;
  }

  else
  {

    v94 = v70;
  }

  v47(v94, v18);
  v95 = v149;
  v96 = v151;
  sub_10007AE0C();

  v97 = sub_10007AE1C();
  v98 = sub_10007B3DC();
  v96, v99, v100, v101, v102, v103, v104, v105;
  if (os_log_type_enabled(v97, v98))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    aBlock[0] = v107;
    *v106 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v108 = sub_10007B2BC();
    v110 = v109;
    v111 = sub_100037C08(v108, v109, aBlock);
    v110, v112, v113, v114, v115, v116, v117, v118;
    *(v106 + 4) = v111;
    _os_log_impl(&_mh_execute_header, v97, v98, "callForAddParticipantsToShare optionsGroups: %s", v106, 0xCu);
    sub_10000585C(v107);

    v119 = v149;
  }

  else
  {

    v119 = v95;
  }

  v47(v119, v18);
  v120 = v144;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v121 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v122);
    v124 = v123;
    isa = sub_10007B29C().super.isa;
    v126 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v127 = sub_10007B29C().super.isa;
    v128 = swift_allocObject();
    v129 = v147;
    *(v128 + 16) = v146;
    *(v128 + 24) = v129;
    aBlock[4] = sub_100046430;
    aBlock[5] = v128;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096FA0;
    v130 = _Block_copy(aBlock);

    [v121 forciblyShareFolder:v124 emailAddresses:isa phoneNumbers:v126 optionsGroups:v127 withReply:v130];
    _Block_release(v130);
    swift_unknownObjectRelease();
  }

  else
  {
    v131 = v137;
    (*(v120 + 56))(v137, 1, 1, v136);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v132 = v138;
    v133 = v141;
    sub_10007AB6C();
    v134 = sub_10007AA1C();
    (*(v140 + 8))(v132, v133);
    v146(v131, 0, v134);

    sub_100008824(v131, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_100037708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, void (*a8)(char *, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *, void *))
{
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a7);
  sub_10007AC1C();
  v16 = sub_10007B2AC();
  v17 = sub_10007B2AC();
  sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
  v18 = sub_10007B2AC();
  _Block_copy(v15);
  v19 = a1;
  a8(v14, v16, v17, v18, v15);
  _Block_release(v15);
  _Block_release(v15);

  v16, v20, v21, v22, v23, v24, v25, v26;
  v17, v27, v28, v29, v30, v31, v32, v33;
  v18, v34, v35, v36, v37, v38, v39, v40;
  return (*(v12 + 8))(v14, v11);
}

id InitiateSharing.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InitiateSharing.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitiateSharing();
  return objc_msgSendSuper2(&v2, "init");
}

id InitiateSharing.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InitiateSharing();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t static InitiateSharing.hashableClassSet(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSMutableSet) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_1000057A0(&qword_10009E940, qword_10007E570);
      [v2 addObject:sub_10007B6DC()];
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  v5 = v2;
  sub_10007B3AC();

  result = sub_10007B63C("Fatal error", 11, 2, 0xD00000000000002DLL, 0x8000000100081CF0, "com_apple_CloudSharingUI_AddParticipants/InitiateSharing.swift", 62, 2, 744, 0);
  __break(1u);
  return result;
}

unint64_t sub_100037AD8(uint64_t a1, uint64_t a2)
{
  sub_10007B74C();
  sub_10007B1EC();
  v4 = sub_10007B76C();

  return sub_100037B50(a1, a2, v4);
}

unint64_t sub_100037B50(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10007B6BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100037C08(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, uint64_t *a3)
{

  v6 = sub_100037CD4(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000057F8(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_10000585C(v18);
  return v14;
}

unint64_t sub_100037CD4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100037DE0(a5, a6);
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
    result = sub_10007B5EC();
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

void *sub_100037DE0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100037E2C(a1, a2);
  sub_100037F5C(&off_100095710);
  return v3;
}

void *sub_100037E2C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100038048(v5, 0);
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

  result = sub_10007B5EC();
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
        v10 = sub_10007B22C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100038048(v10, 0);
        result = sub_10007B5BC();
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

void sub_100037F5C(_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a1)
{
  isa = a1[2].super.isa;
  v3 = *v1;
  v4 = (*v1)[2].super.isa;
  v5 = isa + v4;
  if (__OFADD__(v4, isa))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= (v3[3].super.isa >> 1))
  {
    if (a1[2].super.isa)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = isa + v4;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_1000380BC(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!a1[2].super.isa)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!isa)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = v3[2].super.isa;
  if (((v3[3].super.isa >> 1) - v15) < isa)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(v15 + v3 + 32, &a1[4], isa);
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (!isa)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = v3[2].super.isa;
  v24 = __OFADD__(v23, isa);
  v25 = (isa + v23);
  if (!v24)
  {
    v3[2].super.isa = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100038048(uint64_t a1, uint64_t a2)
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

  sub_1000057A0(&qword_10009E970, &unk_10007E5A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *sub_1000380BC(_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *result, int64_t a2, void *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, void *a5, void *a6, int64_t a7, int64_t a8)
{
  v9 = result;
  if (a3)
  {
    isa = a4[3].super.isa;
    v11 = isa >> 1;
    if ((isa >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = isa & 0xFFFFFFFFFFFFFFFELL;
      if ((isa & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2].super.isa;
  if (v11 <= v12)
  {
    v13 = a4[2].super.isa;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000057A0(&qword_10009E970, &unk_10007E5A0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2].super.isa = v12;
    v14[3].super.isa = (2 * v15 - 64);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = v14 + 4;
  v17 = a4 + 4;
  if (v9)
  {
    if (v14 != a4 || v16 >= (v12 + v17))
    {
      memmove(v16, v17, v12);
    }

    a4[2].super.isa = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_1000381B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000057A0(&unk_10009F400, qword_10007E5B0);
    v3 = sub_10007B66C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000187C8(v4, &v13, &qword_10009E920, &qword_10007F580);
      v5 = v13;
      v6 = v14;
      result = sub_100037AD8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000285C4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1000382E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100038318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100038358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100038418(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10003846C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_100038584(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_10007AA3C();
  __chkstk_darwin(v4 - 8);
  v45 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007AA4C();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v44 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AE2C();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  _Block_copy(a2);
  sub_10007AE0C();
  (*(v9 + 16))(v11, a1, v8);
  v16 = sub_10007AE1C();
  v17 = sub_10007B41C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v42[1] = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43 = v15;
    v42[0] = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = sub_10007B69C();
    v22 = a2;
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v25 = sub_100037C08(v21, v24, aBlock);
    v26 = v24;
    a2 = v22;
    v26, v27, v28, v29, v30, v31, v32, v33;
    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "callForSharingStatus url: %s", v19, 0xCu);
    sub_10000585C(v42[0]);
    v15 = v43;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  (*(v48 + 8))(v14, v49);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v34 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v39 = sub_10007AB9C();
    sub_10007ACAC();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_10004617C;
    *(v40 + 24) = v15;
    aBlock[4] = sub_100046250;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100029D60;
    aBlock[3] = &unk_100097A40;
    v41 = _Block_copy(aBlock);

    [v34 sharingStatusForWithURLWrapper:v39 withReply:v41];

    _Block_release(v41);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v35 = v44;
    v36 = v47;
    sub_10007AB6C();
    v37 = sub_10007AA1C();
    (*(v46 + 8))(v35, v36);
    v38 = sub_10007AB7C();
    (a2)[2](a2, 0, v38);
  }
}

void sub_100038D28(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v176 = a6;
  v178 = a5;
  v177 = a4;
  v187 = a2;
  v188 = a3;
  v9 = sub_10007AA3C();
  __chkstk_darwin(v9 - 8);
  v171 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_10007AA4C();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = __chkstk_darwin(v12 - 8);
  v166 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v167 = &v164 - v16;
  v17 = __chkstk_darwin(v15);
  v169 = &v164 - v18;
  __chkstk_darwin(v17);
  v174 = &v164 - v19;
  v20 = sub_10007AC4C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10007AE2C();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v182 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v181 = &v164 - v29;
  v30 = __chkstk_darwin(v28);
  v180 = &v164 - v31;
  v32 = __chkstk_darwin(v30);
  v179 = &v164 - v33;
  v34 = __chkstk_darwin(v32);
  v189 = &v164 - v35;
  __chkstk_darwin(v34);
  v37 = &v164 - v36;
  v186 = swift_allocObject();
  *(v186 + 16) = a7;
  v175 = a7;
  _Block_copy(a7);
  sub_10007AE0C();
  v38 = *(v21 + 16);
  v183 = a1;
  v38(v23, a1, v20);
  v39 = sub_10007AE1C();
  v40 = sub_10007B41C();
  v41 = os_log_type_enabled(v39, v40);
  v190 = v25;
  v184 = v21;
  v185 = v20;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v165 = v24;
    v43 = v21;
    v44 = v42;
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v46 = sub_10007B69C();
    v48 = v47;
    v49 = v43;
    v24 = v165;
    v168 = *(v49 + 8);
    v168(v23, v20);
    v50 = sub_100037C08(v46, v48, aBlock);
    v48, v51, v52, v53, v54, v55, v56, v57;
    *(v44 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v39, v40, "callForFileSharing url: %s", v44, 0xCu);
    sub_10000585C(v45);
    v25 = v190;
  }

  else
  {

    v168 = *(v21 + 8);
    v168(v23, v20);
  }

  v58 = *(v25 + 8);
  v58(v37, v24);
  v59 = v189;
  sub_10007AE0C();
  v60 = v187;

  v61 = sub_10007AE1C();
  v62 = sub_10007B3DC();
  v60, v63, v64, v65, v66, v67, v68, v69;
  v70 = os_log_type_enabled(v61, v62);
  v71 = v180;
  if (v70)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v72 = 136315138;
    v74 = sub_10007B2BC();
    v76 = v75;
    v77 = sub_100037C08(v74, v75, aBlock);
    v76, v78, v79, v80, v81, v82, v83, v84;
    *(v72 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v61, v62, "callForFileSharing emailAddresses: %s", v72, 0xCu);
    sub_10000585C(v73);

    v85 = v189;
  }

  else
  {

    v85 = v59;
  }

  v58(v85, v24);
  v86 = v188;
  v87 = v179;
  sub_10007AE0C();

  v88 = sub_10007AE1C();
  v89 = sub_10007B3DC();
  v86, v90, v91, v92, v93, v94, v95, v96;
  if (os_log_type_enabled(v88, v89))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    aBlock[0] = v98;
    *v97 = 136315138;
    v99 = sub_10007B2BC();
    v101 = v100;
    v102 = v24;
    v103 = sub_100037C08(v99, v100, aBlock);
    v101, v104, v105, v106, v107, v108, v109, v110;
    *(v97 + 4) = v103;
    v24 = v102;
    _os_log_impl(&_mh_execute_header, v88, v89, "callForFileSharing phoneNumbers: %s", v97, 0xCu);
    sub_10000585C(v98);
  }

  v58(v87, v24);
  sub_10007AE0C();
  v111 = sub_10007AE1C();
  v112 = sub_10007B3DC();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v113 = 136315138;
    v191 = v177;
    aBlock[0] = v114;
    type metadata accessor for ParticipantPermission(0);
    v115 = sub_10007B1AC();
    v117 = v116;
    v118 = sub_100037C08(v115, v116, aBlock);
    v117, v119, v120, v121, v122, v123, v124, v125;
    *(v113 + 4) = v118;
    _os_log_impl(&_mh_execute_header, v111, v112, "callForFileSharing accessType: %s", v113, 0xCu);
    sub_10000585C(v114);
  }

  v58(v71, v24);
  v126 = v181;
  sub_10007AE0C();
  v127 = sub_10007AE1C();
  v128 = sub_10007B3DC();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    *v129 = 136315138;
    v191 = v178;
    aBlock[0] = v130;
    type metadata accessor for ParticipantPermission(0);
    v131 = sub_10007B1AC();
    v133 = v132;
    v134 = sub_100037C08(v131, v132, aBlock);
    v133, v135, v136, v137, v138, v139, v140, v141;
    *(v129 + 4) = v134;
    _os_log_impl(&_mh_execute_header, v127, v128, "callForFileSharing permissionType: %s", v129, 0xCu);
    sub_10000585C(v130);
  }

  v58(v126, v24);
  v142 = v182;
  sub_10007AE0C();
  v143 = sub_10007AE1C();
  v144 = sub_10007B3DC();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    *v145 = 67109120;
    *(v145 + 4) = v176 & 1;
    _os_log_impl(&_mh_execute_header, v143, v144, "callForFileSharing allowOthersToInvite: %{BOOL}d", v145, 8u);
  }

  v58(v142, v24);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v146 = qword_1000A23D0;
  v148 = v184;
  v147 = v185;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v156 = sub_10007AB9C();
    sub_10007ACAC();
    isa = sub_10007B29C().super.isa;
    v160 = sub_10007B29C().super.isa;
    v161 = swift_allocObject();
    v162 = v186;
    *(v161 + 16) = sub_100046368;
    *(v161 + 24) = v162;
    aBlock[4] = sub_100046430;
    aBlock[5] = v161;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097978;
    v163 = _Block_copy(aBlock);

    [v146 startFileSharingWithURLWrapper:v156 emailAddresses:isa phoneNumbers:v160 accessType:v177 permissionType:v178 allowOthersToInvite:v176 & 1 withReply:v163];

    _Block_release(v163);

    swift_unknownObjectRelease();
  }

  else
  {
    v149 = v174;
    (*(v184 + 56))(v174, 1, 1, v185);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v150 = v170;
    v151 = v173;
    sub_10007AB6C();
    v152 = sub_10007AA1C();
    (*(v172 + 8))(v150, v151);
    v153 = v169;
    sub_1000187C8(v149, v169, &unk_10009ED10, &qword_10007D310);
    if ((*(v148 + 48))(v153, 1, v147) == 1)
    {
      v155 = 0;
    }

    else
    {
      sub_10007ABFC(v154);
      v155 = v157;
      v168(v153, v147);
    }

    v158 = sub_10007AB7C();
    v175[2](v175, v155, 0, v158);

    sub_100008824(v149, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_100039C8C(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, void (**a5)(const void *, void *, void, void *))
{
  v163 = a4;
  v165 = a2;
  v166 = a3;
  v7 = sub_10007AA3C();
  __chkstk_darwin(v7 - 8);
  v151 = v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_10007AA4C();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v150 = v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v11 = __chkstk_darwin(v10 - 8);
  v147[0] = v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v147[1] = v147 - v14;
  v15 = __chkstk_darwin(v13);
  v149 = v147 - v16;
  __chkstk_darwin(v15);
  v154 = v147 - v17;
  v18 = sub_10007AC4C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_10007AE2C();
  v22 = *(v158 - 8);
  v23 = __chkstk_darwin(v158);
  v25 = v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v160 = v147 - v27;
  v28 = __chkstk_darwin(v26);
  v159 = v147 - v29;
  __chkstk_darwin(v28);
  v31 = v147 - v30;
  v164 = swift_allocObject();
  *(v164 + 16) = a5;
  v157 = a5;
  _Block_copy(a5);
  sub_10007AE0C();
  v32 = *(v19 + 16);
  v162 = a1;
  v32(v21, a1, v18);
  v33 = sub_10007AE1C();
  v34 = sub_10007B41C();
  v35 = os_log_type_enabled(v33, v34);
  v167 = v22;
  v155 = v19;
  v156 = v18;
  v161 = v25;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v38 = sub_10007B69C();
    v40 = v39;
    v148 = *(v19 + 8);
    v148(v21, v18);
    v41 = sub_100037C08(v38, v40, aBlock);
    v42 = v40;
    v22 = v167;
    v42, v43, v44, v45, v46, v47, v48, v49;
    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "callForFileSharing url: %s", v36, 0xCu);
    sub_10000585C(v37);
  }

  else
  {

    v148 = *(v19 + 8);
    v148(v21, v18);
  }

  v50 = *(v22 + 8);
  v51 = v158;
  v50(v31, v158);
  v52 = v159;
  sub_10007AE0C();
  v53 = v165;

  v54 = sub_10007AE1C();
  v55 = sub_10007B3DC();
  v53, v56, v57, v58, v59, v60, v61, v62;
  v63 = os_log_type_enabled(v54, v55);
  v64 = v160;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136315138;
    v67 = sub_10007B2BC();
    v69 = v68;
    v70 = sub_100037C08(v67, v68, aBlock);
    v69, v71, v72, v73, v74, v75, v76, v77;
    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v54, v55, "callForFileSharing emailAddresses: %s", v65, 0xCu);
    sub_10000585C(v66);
  }

  v50(v52, v51);
  sub_10007AE0C();
  v78 = v166;

  v79 = sub_10007AE1C();
  v80 = sub_10007B3DC();
  v78, v81, v82, v83, v84, v85, v86, v87;
  if (os_log_type_enabled(v79, v80))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v88 = 136315138;
    v90 = sub_10007B2BC();
    v92 = v91;
    v93 = sub_100037C08(v90, v91, aBlock);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v88 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v79, v80, "callForFileSharing phoneNumbers: %s", v88, 0xCu);
    sub_10000585C(v89);
  }

  v50(v64, v51);
  v101 = v163;
  v102 = v161;
  sub_10007AE0C();

  v103 = sub_10007AE1C();
  v104 = sub_10007B3DC();
  v101, v105, v106, v107, v108, v109, v110, v111;
  if (os_log_type_enabled(v103, v104))
  {
    v112 = v51;
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    aBlock[0] = v114;
    *v113 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v115 = sub_10007B2BC();
    v117 = v116;
    v118 = sub_100037C08(v115, v116, aBlock);
    v117, v119, v120, v121, v122, v123, v124, v125;
    *(v113 + 4) = v118;
    _os_log_impl(&_mh_execute_header, v103, v104, "callForFileSharing optionsGroups: %s", v113, 0xCu);
    sub_10000585C(v114);

    v126 = v102;
    v127 = v112;
  }

  else
  {

    v126 = v102;
    v127 = v51;
  }

  v50(v126, v127);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v128 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v138 = sub_10007AB9C();
    sub_10007ACAC();
    isa = sub_10007B29C().super.isa;
    v142 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v143 = sub_10007B29C().super.isa;
    v144 = swift_allocObject();
    v145 = v164;
    *(v144 + 16) = sub_100046368;
    *(v144 + 24) = v145;
    aBlock[4] = sub_100046430;
    aBlock[5] = v144;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097900;
    v146 = _Block_copy(aBlock);

    [v128 startFileSharingWithURLWrapper:v138 emailAddresses:isa phoneNumbers:v142 optionsGroups:v143 withReply:v146];

    _Block_release(v146);

    swift_unknownObjectRelease();
  }

  else
  {
    v130 = v154;
    v129 = v155;
    v131 = v156;
    (*(v155 + 56))(v154, 1, 1, v156);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v132 = v150;
    v133 = v153;
    sub_10007AB6C();
    v134 = sub_10007AA1C();
    (*(v152 + 8))(v132, v133);
    v135 = v149;
    sub_1000187C8(v130, v149, &unk_10009ED10, &qword_10007D310);
    if ((*(v129 + 48))(v135, 1, v131) == 1)
    {
      v137 = 0;
    }

    else
    {
      sub_10007ABFC(v136);
      v137 = v139;
      v148(v135, v131);
    }

    v140 = sub_10007AB7C();
    v157[2](v157, v137, 0, v140);

    sub_100008824(v130, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10003AA00(void *a1, void *a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, uint64_t a5, uint64_t a6, int a7, void (**a8)(const void *, void *, void, void *))
{
  v174 = a7;
  v170 = a6;
  v175 = a5;
  v176 = a3;
  v178 = a4;
  v11 = sub_10007AA3C();
  __chkstk_darwin(v11 - 8);
  v162 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_10007AA4C();
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v161 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = __chkstk_darwin(v14 - 8);
  v165 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v166 = &v160 - v17;
  v179 = sub_10007AE2C();
  v18 = *(v179 - 8);
  v19 = __chkstk_darwin(v179);
  v169 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v168 = &v160 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v160 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v160 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v160 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v160 - v33;
  __chkstk_darwin(v32);
  v36 = &v160 - v35;
  v171 = swift_allocObject();
  *(v171 + 16) = a8;
  v167 = a8;
  _Block_copy(a8);
  sub_10007AE0C();
  v37 = a1;
  v38 = sub_10007AE1C();
  v39 = sub_10007B41C();
  v173 = v37;

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v177 = v31;
    v42 = v18;
    v43 = v28;
    v44 = v25;
    v45 = a2;
    v46 = v41;
    *v40 = 138412290;
    v47 = v173;
    *(v40 + 4) = v173;
    *v41 = v47;
    v48 = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "callForCloudKitAddToShare share: %@", v40, 0xCu);
    sub_100008824(v46, &qword_10009F570, &qword_10007DAF0);
    a2 = v45;
    v25 = v44;
    v28 = v43;
    v18 = v42;
    v31 = v177;
  }

  v49 = v179;
  v177 = *(v18 + 8);
  (v177)(v36, v179);
  sub_10007AE0C();
  v50 = a2;
  v51 = sub_10007AE1C();
  v52 = sub_10007B41C();
  v172 = v50;

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    v55 = v172;
    *(v53 + 4) = v172;
    *v54 = v55;
    v56 = v55;
    _os_log_impl(&_mh_execute_header, v51, v52, "callForCloudKitAddToShare containerSetupInfo: %@", v53, 0xCu);
    sub_100008824(v54, &qword_10009F570, &qword_10007DAF0);

    v49 = v179;
  }

  v57 = v177;
  (v177)(v34, v49);
  sub_10007AE0C();
  v58 = v176;

  v59 = sub_10007AE1C();
  v60 = sub_10007B3DC();
  v58, v61, v62, v63, v64, v65, v66, v67;
  if (os_log_type_enabled(v59, v60))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v68 = 136315138;
    v70 = sub_10007B2BC();
    v72 = v71;
    v73 = sub_100037C08(v70, v71, aBlock);
    v72, v74, v75, v76, v77, v78, v79, v80;
    *(v68 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v59, v60, "callForCloudKitAddToShare emailAddresses: %s", v68, 0xCu);
    sub_10000585C(v69);
    v49 = v179;

    v57 = v177;
  }

  v57(v31, v49);
  sub_10007AE0C();
  v81 = v178;

  v82 = sub_10007AE1C();
  v83 = sub_10007B3DC();
  v81, v84, v85, v86, v87, v88, v89, v90;
  if (os_log_type_enabled(v82, v83))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    aBlock[0] = v92;
    *v91 = 136315138;
    v93 = sub_10007B2BC();
    v95 = v94;
    v96 = sub_100037C08(v93, v94, aBlock);
    v95, v97, v98, v99, v100, v101, v102, v103;
    *(v91 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v82, v83, "callForCloudKitAddToShare phoneNumbers: %s", v91, 0xCu);
    sub_10000585C(v92);
    v49 = v179;
  }

  v57(v28, v49);
  sub_10007AE0C();
  v104 = sub_10007AE1C();
  v105 = sub_10007B3DC();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v106 = 136315138;
    v180 = v175;
    aBlock[0] = v107;
    type metadata accessor for ParticipantPermission(0);
    v108 = sub_10007B1AC();
    v110 = v109;
    v111 = sub_100037C08(v108, v109, aBlock);
    v110, v112, v113, v114, v115, v116, v117, v118;
    *(v106 + 4) = v111;
    _os_log_impl(&_mh_execute_header, v104, v105, "callForCloudKitAddToShare accessType: %s", v106, 0xCu);
    sub_10000585C(v107);
    v49 = v179;
  }

  v57(v25, v49);
  v119 = v170;
  v120 = v168;
  sub_10007AE0C();
  v121 = sub_10007AE1C();
  v122 = sub_10007B3DC();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v180 = v119;
    aBlock[0] = v124;
    *v123 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v125 = sub_10007B1AC();
    v126 = v120;
    v128 = v127;
    v129 = sub_100037C08(v125, v127, aBlock);
    v128, v130, v131, v132, v133, v134, v135, v136;
    *(v123 + 4) = v129;
    _os_log_impl(&_mh_execute_header, v121, v122, "callForCloudKitAddToShare permissionType: %s", v123, 0xCu);
    sub_10000585C(v124);
    v49 = v179;

    v137 = v126;
    v57 = v177;
    (v177)(v137, v49);
  }

  else
  {

    v57(v120, v49);
  }

  v138 = v169;
  sub_10007AE0C();
  v139 = sub_10007AE1C();
  v140 = sub_10007B3DC();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 67109120;
    *(v141 + 4) = v174 & 1;
    _os_log_impl(&_mh_execute_header, v139, v140, "callForCloudKitAddToShare allowOthersToInvite: %{BOOL}d", v141, 8u);
  }

  v57(v138, v49);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v142 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v144 = sub_10007B29C().super.isa;
    v145 = swift_allocObject();
    v146 = v171;
    *(v145 + 16) = sub_100046368;
    *(v145 + 24) = v146;
    aBlock[4] = sub_100046430;
    aBlock[5] = v145;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097888;
    v147 = _Block_copy(aBlock);

    LOBYTE(v159) = v174 & 1;
    [v142 addToCloudKitSharing:v173 containerSetupInfo:v172 emailAddresses:isa phoneNumbers:v144 accessType:v175 permissionType:v119 allowOthersToInvite:v159 withReply:v147];
    _Block_release(v147);

    swift_unknownObjectRelease();
  }

  else
  {
    v148 = sub_10007AC4C();
    v149 = *(v148 - 8);
    v150 = v166;
    (*(v149 + 56))(v166, 1, 1, v148);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v151 = v161;
    v152 = v164;
    sub_10007AB6C();
    v153 = sub_10007AA1C();
    (*(v163 + 8))(v151, v152);
    v154 = v165;
    sub_1000187C8(v150, v165, &unk_10009ED10, &qword_10007D310);
    v156 = 0;
    if ((*(v149 + 48))(v154, 1, v148) != 1)
    {
      sub_10007ABFC(v155);
      v156 = v157;
      (*(v149 + 8))(v154, v148);
    }

    v158 = sub_10007AB7C();
    v167[2](v167, v156, 0, v158);

    sub_100008824(v150, &unk_10009ED10, &qword_10007D310);
  }
}