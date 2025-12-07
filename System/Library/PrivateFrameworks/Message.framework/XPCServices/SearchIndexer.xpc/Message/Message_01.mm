unint64_t sub_100010880(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v6 = a5;
    if (a5 == 1)
    {
      v9 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
      v57 = *v9;
      v58 = *(v9 + 8);
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v55 = *(v9 + 40);
      if ((v11 & 0x8000000000000000) == 0)
      {
        v53 = *(v9 + 24);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_1000110B0(a2);

        v13 = sub_1004A4A54();
        v14 = sub_1004A6014();
        sub_10001114C(a2);

        if (os_log_type_enabled(v13, v14))
        {
          v49 = v12;
          v15 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v15 = 68158466;
          *(v15 + 4) = 2;
          *(v15 + 8) = 256;
          *(v15 + 10) = v57;
          *(v15 + 11) = 2082;
          log = v14;
          v59 = v6;
          v16 = sub_10015BA6C(v58, v10, &v63);
          sub_100011284(v57, v58, v10, v53, v49);
          *(v15 + 13) = v16;
          *(v15 + 21) = 2082;
          v17 = ResponseText.debugDescription.getter(a2, a3, a4);
          v19 = sub_10015BA6C(v17, v18, &v63);
          v6 = v59;

          *(v15 + 23) = v19;
          v20 = "[%.*hhx-%{public}s] Received 'NO %{public}s'";
LABEL_9:
          _os_log_impl(&_mh_execute_header, v13, log, v20, v15, 0x1Fu);
          swift_arrayDestroy();

LABEL_17:
          sub_1000111E8();
          swift_allocError();
          *v47 = a2;
          *(v47 + 8) = a3;
          *(v47 + 16) = a4;
          *(v47 + 24) = v6;
          swift_willThrow();
          sub_10001123C(a2, a3, a4, v6);
          return a2;
        }

        goto LABEL_10;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000110B0(a2);

      v28 = sub_1004A4A54();
      v29 = sub_1004A6014();
      sub_10001114C(a2);

      v54 = v29;
      if (os_log_type_enabled(v28, v29))
      {
        loga = v28;
        v30 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v30 = 68159491;
        *(v30 + 4) = 2;
        *(v30 + 8) = 256;
        *(v30 + 10) = v57;
        *(v30 + 11) = 2082;

        v61 = v6;
        v31 = sub_10015BA6C(v58, v10, &v65);

        *(v30 + 13) = v31;
        *(v30 + 21) = 1040;
        *(v30 + 23) = 2;
        *(v30 + 27) = 512;

        *(v30 + 29) = v11;

        *(v30 + 31) = 2160;
        *(v30 + 33) = 0x786F626C69616DLL;
        *(v30 + 41) = 2085;

        v63 = v12;
        v64 = v55;
        v32 = sub_1004A5824();
        v34 = sub_10015BA6C(v32, v33, &v65);

        *(v30 + 43) = v34;
        *(v30 + 51) = 2082;
        v35 = ResponseText.debugDescription.getter(a2, a3, a4);
        v37 = sub_10015BA6C(v35, v36, &v65);
        v6 = v61;

        *(v30 + 53) = v37;
        v38 = "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'NO %{public}s'";
LABEL_15:
        _os_log_impl(&_mh_execute_header, loga, v54, v38, v30, 0x3Du);
        swift_arrayDestroy();

        goto LABEL_17;
      }
    }

    else
    {
      v21 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
      v57 = *v21;
      v58 = *(v21 + 8);
      v10 = *(v21 + 16);
      v22 = *(v21 + 24);
      v12 = *(v21 + 32);
      v56 = *(v21 + 40);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v53 = *(v21 + 24);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_1000110B0(a2);

        v13 = sub_1004A4A54();
        v23 = sub_1004A6014();
        sub_10001114C(a2);

        if (os_log_type_enabled(v13, v23))
        {
          v50 = v12;
          v15 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v15 = 68158466;
          *(v15 + 4) = 2;
          *(v15 + 8) = 256;
          *(v15 + 10) = v57;
          *(v15 + 11) = 2082;
          log = v23;
          v60 = v6;
          v24 = sub_10015BA6C(v58, v10, &v63);
          sub_100011284(v57, v58, v10, v22, v50);
          *(v15 + 13) = v24;
          *(v15 + 21) = 2082;
          v25 = ResponseText.debugDescription.getter(a2, a3, a4);
          v27 = sub_10015BA6C(v25, v26, &v63);
          v6 = v60;

          *(v15 + 23) = v27;
          v20 = "[%.*hhx-%{public}s] Received 'BAD %{public}s'";
          goto LABEL_9;
        }

LABEL_10:

        sub_100011284(v57, v58, v10, v53, v12);
        goto LABEL_17;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000110B0(a2);

      v28 = sub_1004A4A54();
      v39 = sub_1004A6014();
      sub_10001114C(a2);

      v54 = v39;
      if (os_log_type_enabled(v28, v39))
      {
        loga = v28;
        v30 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v30 = 68159491;
        *(v30 + 4) = 2;
        *(v30 + 8) = 256;
        *(v30 + 10) = v57;
        *(v30 + 11) = 2082;

        v62 = v6;
        v40 = sub_10015BA6C(v58, v10, &v65);

        *(v30 + 13) = v40;
        *(v30 + 21) = 1040;
        *(v30 + 23) = 2;
        *(v30 + 27) = 512;

        *(v30 + 29) = v22;

        *(v30 + 31) = 2160;
        *(v30 + 33) = 0x786F626C69616DLL;
        *(v30 + 41) = 2085;

        v63 = v12;
        v64 = v56;
        v41 = sub_1004A5824();
        v43 = sub_10015BA6C(v41, v42, &v65);

        *(v30 + 43) = v43;
        *(v30 + 51) = 2082;
        v44 = ResponseText.debugDescription.getter(a2, a3, a4);
        v46 = sub_10015BA6C(v44, v45, &v65);
        v6 = v62;

        *(v30 + 53) = v46;
        v38 = "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'BAD %{public}s'";
        goto LABEL_15;
      }
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_17;
  }

  return a2;
}

uint64_t sub_1000110B0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1000110C4(result);
  }

  return result;
}

unint64_t sub_1000110C4(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001114C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_100011160(result);
  }

  return result;
}

unint64_t sub_100011160(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000111E8()
{
  result = qword_1005CD0A8;
  if (!qword_1005CD0A8)
  {
    result = swift_getWitnessTable(asc_1004CE774, &_s5ErrorVN_0, v0, v1);
    atomic_store(result, &qword_1005CD0A8);
  }

  return result;
}

uint64_t sub_10001123C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    sub_1000110B0(result);
  }

  return result;
}

uint64_t sub_100011284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (a4 < 0)
  {
  }

  return result;
}

unint64_t sub_1000112D4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5)
{
  v58 = a3;
  v9 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  __chkstk_darwin(v18);
  v21 = &v56 - v20;
  v59 = a5;
  if (a5)
  {
    v22 = v19;
    if (a5 == 1)
    {
      sub_1000118A4(a1, &v56 - v20);
      sub_1000118A4(a1, v17);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000110B0(a2);
      v23 = a4;

      v24 = sub_1004A4A54();
      v25 = sub_1004A6014();
      sub_10001114C(a2);

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v62 = v57;
        *v26 = 68159491;
        *(v26 + 4) = 2;
        *(v26 + 8) = 256;
        v27 = v22;
        v28 = &v17[*(v22 + 20)];
        *(v26 + 10) = *v28;
        *(v26 + 11) = 2082;
        v29 = &v21[*(v27 + 20)];
        *(v26 + 13) = sub_10015BA6C(*(v29 + 1), *(v29 + 2), &v62);
        *(v26 + 21) = 1040;
        *(v26 + 23) = 2;
        *(v26 + 27) = 512;
        LOWORD(v28) = *(v28 + 12);
        sub_100011908(v17);
        *(v26 + 29) = v28;
        *(v26 + 31) = 2160;
        *(v26 + 33) = 0x786F626C69616DLL;
        *(v26 + 41) = 2085;
        v30 = *(v29 + 4);
        v31 = *(v29 + 10);

        sub_100011908(v21);
        v60 = v30;
        v61 = v31;
        v32 = sub_1004A5824();
        v34 = sub_10015BA6C(v32, v33, &v62);

        *(v26 + 43) = v34;
        *(v26 + 51) = 2082;
        v35 = v58;
        v36 = ResponseText.debugDescription.getter(a2, v58, v23);
        v38 = sub_10015BA6C(v36, v37, &v62);

        *(v26 + 53) = v38;
        _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'NO %{public}s'", v26, 0x3Du);
        swift_arrayDestroy();

LABEL_7:

        v52 = v59;
LABEL_11:
        sub_100011964();
        swift_allocError();
        *v54 = a2;
        *(v54 + 8) = v35;
        *(v54 + 16) = v23;
        *(v54 + 24) = v52;
        swift_willThrow();
        sub_10001123C(a2, v35, v23, v52);
        return a2;
      }

      sub_100011908(v17);

      v53 = v21;
    }

    else
    {
      sub_1000118A4(a1, v14);
      sub_1000118A4(a1, v11);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000110B0(a2);
      v23 = a4;

      v24 = sub_1004A4A54();
      v39 = sub_1004A6014();
      sub_10001114C(a2);

      if (os_log_type_enabled(v24, v39))
      {
        v40 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v62 = v57;
        *v40 = 68159491;
        *(v40 + 4) = 2;
        *(v40 + 8) = 256;
        v41 = v22;
        v42 = &v11[*(v22 + 20)];
        *(v40 + 10) = *v42;
        *(v40 + 11) = 2082;
        v43 = &v14[*(v41 + 20)];
        *(v40 + 13) = sub_10015BA6C(*(v43 + 1), *(v43 + 2), &v62);
        *(v40 + 21) = 1040;
        *(v40 + 23) = 2;
        *(v40 + 27) = 512;
        LOWORD(v42) = *(v42 + 12);
        sub_100011908(v11);
        *(v40 + 29) = v42;
        *(v40 + 31) = 2160;
        *(v40 + 33) = 0x786F626C69616DLL;
        *(v40 + 41) = 2085;
        v44 = *(v43 + 4);
        LODWORD(v43) = *(v43 + 10);

        sub_100011908(v14);
        v60 = v44;
        v61 = v43;
        v45 = sub_1004A5824();
        v47 = sub_10015BA6C(v45, v46, &v62);

        *(v40 + 43) = v47;
        *(v40 + 51) = 2082;
        v48 = v58;
        v49 = ResponseText.debugDescription.getter(a2, v58, v23);
        v51 = sub_10015BA6C(v49, v50, &v62);

        *(v40 + 53) = v51;
        v35 = v48;
        _os_log_impl(&_mh_execute_header, v24, v39, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'BAD %{public}s'", v40, 0x3Du);
        swift_arrayDestroy();

        goto LABEL_7;
      }

      sub_100011908(v11);

      v53 = v14;
    }

    sub_100011908(v53);
    v52 = v59;
    v35 = v58;
    goto LABEL_11;
  }

  return a2;
}

uint64_t sub_1000118A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailboxTaskLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011908(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100011964()
{
  result = qword_1005CD0B0;
  if (!qword_1005CD0B0)
  {
    result = swift_getWitnessTable(byte_1004CE734, &_s5ErrorVN, v0, v1);
    atomic_store(result, &qword_1005CD0B0);
  }

  return result;
}

uint64_t sub_1000119B8(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 <= 0x10)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 17;
  }
}

uint64_t sub_1000119DC(void *a1)
{
  v1 = (((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x6E)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

__n128 sub_100011A18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100011A44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100011A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_100011B00(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1004A6E94();
    v6 = a2 | (a2 << 32);
    sub_1004A6EB4(v6);
    v7 = sub_1004A6F14();
    v8 = -1 << *(a3 + 32);
    v9 = v7 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      do
      {
        v11 = (*(a3 + 48) + 16 * v9);
        if ((v11[2] | (v11[2] << 32)) == v6)
        {
          v12 = *v11;
          v13 = *(*v11 + 16);
          if (v13 == *(a1 + 16))
          {
            if (!v13 || v12 == a1)
            {
              return 1;
            }

            v14 = (v12 + 32);
            for (i = (a1 + 32); *v14 == *i; ++i)
            {
              ++v14;
              if (!--v13)
              {
                return 1;
              }
            }
          }
        }

        v9 = (v9 + 1) & v10;
      }

      while (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_100011C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_1004A6E94(), sub_1004A5834(), _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0(), , v4 = sub_1004A6F14(), v5 = -1 << *(a3 + 32), v6 = v4 & ~v5, ((*(a3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = sub_1004A5834();
      v10 = v9;
      if (v8 == sub_1004A5834() && v10 == v11)
      {
        break;
      }

      v13 = sub_1004A6D34();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_100011D94(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1004A6E94();
  sub_1004A6EB4(v3);
  v4 = sub_1004A6F14();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_100011E60(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1004A6E94();
  sub_1004A4424();
  v6 = sub_1004A6F14();
  v7 = a3 + 56;
  v8 = -1 << *(a3 + 32);
  v9 = v6 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v78 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v76 = v14;
  v74 = (a1 >> 32) - a1;
  v75 = a1 >> 32;
  v77 = v10;
  while (1)
  {
    v15 = (*(a3 + 48) + 16 * v9);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || a2 >> 62 != 3;
      if (((v21 | v78) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_37;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_147;
      }

      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_146;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_34:
        v26 = BYTE6(a2);
        if (v11)
        {
          v26 = HIDWORD(a1) - a1;
          if (v76)
          {
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
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v11 != 2)
    {
      if (!v22)
      {
        return 1;
      }

      goto LABEL_14;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_145;
    }

LABEL_40:
    if (v22 != v26)
    {
      goto LABEL_14;
    }

    if (v22 < 1)
    {
      return 1;
    }

    if (v18 > 1)
    {
      break;
    }

    if (!v18)
    {
      *__s1 = v17;
      *&__s1[8] = v16;
      __s1[10] = BYTE2(v16);
      __s1[11] = BYTE3(v16);
      __s1[12] = BYTE4(v16);
      __s1[13] = BYTE5(v16);
      if (!v11)
      {
        goto LABEL_93;
      }

      if (v11 != 1)
      {
        v49 = *(a1 + 16);
        v71 = *(a1 + 24);
        sub_100014CEC(v17, v16);
        v44 = sub_1004A40D4();
        if (v44)
        {
          v50 = sub_1004A4104();
          if (__OFSUB__(v49, v50))
          {
            goto LABEL_162;
          }

          v44 += v49 - v50;
        }

        v25 = __OFSUB__(v71, v49);
        v46 = v71 - v49;
        if (v25)
        {
          goto LABEL_154;
        }

        v47 = sub_1004A40F4();
        if (!v44)
        {
          goto LABEL_169;
        }

LABEL_100:
        if (v47 >= v46)
        {
          v42 = v46;
        }

        else
        {
          v42 = v47;
        }

        result = __s1;
        v51 = v44;
        goto LABEL_136;
      }

      if (v75 < a1)
      {
        goto LABEL_151;
      }

      sub_100014CEC(v17, v16);
      v29 = sub_1004A40D4();
      if (!v29)
      {
        goto LABEL_172;
      }

      v30 = v29;
      v31 = sub_1004A4104();
      if (__OFSUB__(a1, v31))
      {
        goto LABEL_157;
      }

      v32 = (a1 - v31 + v30);
      result = sub_1004A40F4();
      if (!v32)
      {
        goto LABEL_173;
      }

LABEL_108:
      if (result >= v74)
      {
        v55 = (a1 >> 32) - a1;
      }

      else
      {
        v55 = result;
      }

      v56 = __s1;
      v57 = v32;
      goto LABEL_139;
    }

    if (v17 > v17 >> 32)
    {
      goto LABEL_148;
    }

    sub_100014CEC(v17, v16);
    v35 = sub_1004A40D4();
    if (v35)
    {
      v40 = sub_1004A4104();
      if (__OFSUB__(v17, v40))
      {
        goto LABEL_150;
      }

      v35 += v17 - v40;
    }

    sub_1004A40F4();
    v7 = a3 + 56;
    if (v11 == 2)
    {
      v69 = v35;
      v63 = *(a1 + 16);
      v73 = *(a1 + 24);
      v37 = sub_1004A40D4();
      if (v37)
      {
        v64 = sub_1004A4104();
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_165;
        }

        v37 += v63 - v64;
      }

      v25 = __OFSUB__(v73, v63);
      v65 = v73 - v63;
      if (v25)
      {
        goto LABEL_160;
      }

      v66 = sub_1004A40F4();
      if (v66 >= v65)
      {
        v62 = v65;
      }

      else
      {
        v62 = v66;
      }

      result = v69;
      if (!v69)
      {
        goto LABEL_180;
      }

      if (!v37)
      {
        goto LABEL_179;
      }

LABEL_133:
      if (result == v37)
      {
LABEL_143:
        sub_100014D40(v17, v16);
        return 1;
      }

      v42 = v62;
      goto LABEL_135;
    }

    if (v11 == 1)
    {
      if (v75 < a1)
      {
        goto LABEL_159;
      }

      v37 = sub_1004A40D4();
      if (v37)
      {
        v41 = sub_1004A4104();
        if (__OFSUB__(a1, v41))
        {
          goto LABEL_166;
        }

        v37 += a1 - v41;
      }

      result = sub_1004A40F4();
      v39 = (a1 >> 32) - a1;
      if (result < v74)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_182;
      }

      if (!v37)
      {
        goto LABEL_181;
      }

LABEL_83:
      if (v35 == v37)
      {
        goto LABEL_143;
      }

      v42 = v39;
      result = v35;
LABEL_135:
      v51 = v37;
LABEL_136:
      v67 = memcmp(result, v51, v42);
      sub_100014D40(v17, v16);
      v7 = a3 + 56;
      goto LABEL_140;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_171;
    }

LABEL_138:
    v57 = __s1;
    v56 = v35;
    v55 = BYTE6(a2);
LABEL_139:
    v67 = memcmp(v56, v57, v55);
    sub_100014D40(v17, v16);
LABEL_140:
    v10 = v77;
    if (!v67)
    {
      return 1;
    }

LABEL_14:
    v9 = (v9 + 1) & v10;
    if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_100014CEC(v17, v16);
    v35 = sub_1004A40D4();
    if (v35)
    {
      v36 = sub_1004A4104();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_149;
      }

      v35 += v34 - v36;
    }

    result = sub_1004A40F4();
    v7 = a3 + 56;
    if (v11 == 2)
    {
      v68 = v35;
      v58 = *(a1 + 16);
      v72 = *(a1 + 24);
      v37 = sub_1004A40D4();
      if (v37)
      {
        v59 = sub_1004A4104();
        if (__OFSUB__(v58, v59))
        {
          goto LABEL_163;
        }

        v37 += v58 - v59;
      }

      v25 = __OFSUB__(v72, v58);
      v60 = v72 - v58;
      if (v25)
      {
        goto LABEL_158;
      }

      v61 = sub_1004A40F4();
      if (v61 >= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v61;
      }

      result = v68;
      if (!v68)
      {
        goto LABEL_178;
      }

      if (!v37)
      {
        goto LABEL_177;
      }

      goto LABEL_133;
    }

    if (v11 == 1)
    {
      if (v75 < a1)
      {
        goto LABEL_153;
      }

      v37 = sub_1004A40D4();
      if (v37)
      {
        v38 = sub_1004A4104();
        if (__OFSUB__(a1, v38))
        {
          goto LABEL_164;
        }

        v37 += a1 - v38;
      }

      result = sub_1004A40F4();
      v39 = (a1 >> 32) - a1;
      if (result < v74)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_176;
      }

      if (!v37)
      {
        goto LABEL_175;
      }

      goto LABEL_83;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_174;
    }

    goto LABEL_138;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v11)
  {
LABEL_93:
    __s2 = a1;
    v80 = a2;
    v81 = BYTE2(a2);
    v82 = BYTE3(a2);
    v83 = BYTE4(a2);
    v84 = BYTE5(a2);
    v48 = memcmp(__s1, &__s2, BYTE6(a2));
    v10 = v77;
    if (!v48)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v70 = *(a1 + 24);
    sub_100014CEC(v17, v16);
    v44 = sub_1004A40D4();
    if (v44)
    {
      v45 = sub_1004A4104();
      if (__OFSUB__(v43, v45))
      {
        goto LABEL_161;
      }

      v44 += v43 - v45;
    }

    v25 = __OFSUB__(v70, v43);
    v46 = v70 - v43;
    if (v25)
    {
      goto LABEL_155;
    }

    v47 = sub_1004A40F4();
    if (!v44)
    {
      goto LABEL_170;
    }

    goto LABEL_100;
  }

  if (v75 < a1)
  {
    goto LABEL_152;
  }

  sub_100014CEC(v17, v16);
  v52 = sub_1004A40D4();
  if (v52)
  {
    v53 = v52;
    v54 = sub_1004A4104();
    if (__OFSUB__(a1, v54))
    {
      goto LABEL_156;
    }

    v32 = (a1 - v54 + v53);
    result = sub_1004A40F4();
    if (!v32)
    {
      goto LABEL_168;
    }

    goto LABEL_108;
  }

  sub_1004A40F4();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  result = sub_1004A40F4();
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_100012728(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1004A6E94();
  sub_1004A6664();
  v4 = sub_1004A6F14();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = *a1;
    do
    {
      sub_100014B90(*(a2 + 48) + 48 * v6, v11);
      if (v11[0] == v8)
      {
        v9 = sub_1004A6654();
        sub_100014BEC(v11);
        if (v9)
        {
          return 1;
        }
      }

      else
      {
        sub_100014BEC(v11);
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10001284C(uint64_t a1, Swift::UInt a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1004A6E94();
    sub_1004A6EB4(a2);
    v6 = sub_1004A6F14();
    v7 = -1 << *(a3 + 32);
    v8 = v6 & ~v7;
    if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      do
      {
        v10 = (*(a3 + 48) + 16 * v8);
        if (v10[1] == a2)
        {
          v11 = *v10;
          v12 = *(*v10 + 16);
          if (v12 == *(a1 + 16))
          {
            if (!v12 || v11 == a1)
            {
              return 1;
            }

            v13 = (v11 + 32);
            for (i = (a1 + 32); *v13 == *i; ++i)
            {
              ++v13;
              if (!--v12)
              {
                return 1;
              }
            }
          }
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }
  }

  return 0;
}

BOOL sub_10001296C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1004A6E94();
  sub_1004A6EE4(v3);
  v4 = sub_1004A6F14();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_100012A38(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (a4)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a3 >> 14);
  }

  v11 = sub_1004A6F14();
  v12 = a5 + 56;
  v13 = -1 << *(a5 + 32);
  v14 = v11 & ~v13;
  if ((*(a5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(a5 + 48);
    do
    {
      v17 = v16 + 32 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *v17 == a1 && *(v17 + 8) == a2;
      if (v20 || (sub_1004A6D34() & 1) != 0)
      {
        if (v19)
        {
          if (a4)
          {
            return 1;
          }
        }

        else if ((a4 & 1) == 0 && !((v18 ^ a3) >> 14))
        {
          return 1;
        }
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return 0;
}

IMAP2Behavior::ConnectionLimits __swiftcall ConnectionLimits.init(maximumConstrainedConnectionCount:maximumConnectionCount:closeWhenIdle:)(Swift::Int maximumConstrainedConnectionCount, Swift::Int maximumConnectionCount, Swift::Bool closeWhenIdle)
{
  if (maximumConnectionCount < maximumConstrainedConnectionCount)
  {
    maximumConstrainedConnectionCount = maximumConnectionCount;
  }

  v3 = closeWhenIdle;
  result.maximumConnectionCount = maximumConnectionCount;
  result.maximumConstrainedConnectionCount = maximumConstrainedConnectionCount;
  result.closeWhenIdle = v3;
  return result;
}

uint64_t sub_100012BD0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012C04()
{
  v1 = *(v0 + 72);
  if (v1 == 2)
  {
    result = 3;
  }

  else
  {
    result = *(v0 + 81) + 1;
  }

  v3 = *(v0 + 25);
  v9 = *(v0 + 168);
  if (!*(*(v0 + 64) + 16) && (*(v0 + 137) & 1) == 0)
  {
    if (*(v0 + 192))
    {
      v4 = (v9 + 176);
      v5 = *(v9 + 16) + 1;
      while (--v5)
      {
        v6 = *v4;
        v4 += 22;
        if (*(v6 + 16))
        {
          return result;
        }
      }
    }

    v7 = result;
    v8 = sub_1000B52D4()[2];

    if (((v8 == 0) & v3) == 1)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t UnsafeExtractedAttachment.part.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

Swift::Int TextPartEnumerationResult.hashValue.getter(char a1)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1 & 1);
  return sub_1004A6F14();
}

Swift::Int sub_100012E90()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100012F04(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

void ConnectionIDsGroupedByState.Connection.hash(into:)(uint64_t a1, unint64_t a2)
{
  sub_1004A6EE4(a2);
  sub_1004A6EB4(HIDWORD(a2) & 1);
  sub_1004A6EB4((a2 >> 40) & 1);
}

Swift::Int ConnectionIDsGroupedByState.Connection.hashValue.getter(unint64_t a1)
{
  sub_1004A6E94();
  sub_1004A6EE4(a1);
  sub_1004A6EB4(HIDWORD(a1) & 1);
  sub_1004A6EB4((a1 >> 40) & 1);
  return sub_1004A6F14();
}

Swift::Int sub_100013018()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

void sub_100013088()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_1004A6EE4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
}

Swift::Int sub_1000130D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  sub_1004A6E94();
  sub_1004A6EE4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

BOOL ConnectionIDsGroupedByState.containsActivelyConnecting.getter(uint64_t a1)
{
  v1 = (a1 + 37);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 8;
  }

  while ((v3 & 1) != 0);
  return v2 != 0;
}

uint64_t ConnectionLimitsAndUsage.limits.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t ConnectionLimitsAndUsage.usage.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_1000131FC(v2);
  return v1;
}

unint64_t sub_1000131FC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t ConnectionLimitsAndUsage.usage.setter(uint64_t a1, uint64_t a2)
{

  result = sub_10001324C(*(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t sub_10001324C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t ConnectionLimitsAndUsage.init(limits:usage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t ConnectionLimitsAndUsage.connectionsToBeCancelled(_:)(uint64_t a1)
{
  v2 = sub_100013350(a1);
  sub_1000146B0(v2, *(v1 + 32) != 0, *v1, *(v1 + 8), *(v1 + 16));
  v4 = v3;

  return v4;
}

char *sub_100013350(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = (a1 + 37);
  v4 = _swiftEmptyArrayStorage;
  do
  {
    if (*v3 == 1)
    {
      v6 = *(v3 - 5);
      v7 = *(v3 - 1);
      v8 = ConnectionUsage.usage(_:)(v6, *(v1 + 24), *(v1 + 32));
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100085500(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_100085500((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v5 = &v4[24 * v12];
      *(v5 + 8) = v6;
      v5[36] = v7;
      *(v5 + 5) = v8;
      v5[48] = v10;
      v5[49] = HIBYTE(v10) & 1;
    }

    v3 += 8;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t sub_100013464(unsigned int *a1, unsigned int *a2)
{
  v2 = &_mh_execute_header;
  if (*(a1 + 4))
  {
    v3 = &_mh_execute_header;
  }

  else
  {
    v3 = 0;
  }

  if (!*(a2 + 4))
  {
    v2 = 0;
  }

  return sub_100013D7C(v3 | *a1, *(a1 + 1), *(a1 + 16) | (*(a1 + 17) << 8), v2 | *a2, *(a2 + 1), *(a2 + 16) | (*(a2 + 17) << 8));
}

void StateWithTasks.connectionLimitsAndUsage.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = sub_100012C04();
  v5 = v4;
  v7 = v6;
  memcpy(__dst, v1, sizeof(__dst));
  v8 = sub_10012E208();
  v9 = LOBYTE(__dst[3]);
  v10 = BYTE1(__dst[3]);
  v11 = __dst[4];
  v12 = __dst[7];

  sub_100166D28();
  v14 = v13;
  if (v11 == 3 || v11 == 2)
  {

    v15 = 1;
    goto LABEL_4;
  }

  v23 = sub_100166E18(v13);
  if (v10)
  {
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    if (v9)
    {
      v15 = v9 == 1;
      goto LABEL_13;
    }

LABEL_12:
    v15 = v23 ^ 1;
    goto LABEL_13;
  }

  if (v11 || (v9 - 1) >= 2)
  {
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:
  sub_100013AD0(&off_100598658, v12);
  sub_100166E18(v14);
  v24 = sub_100013CF4(v12);

  if (v24 & 1) == 0 && (v10)
  {
    sub_100166E18(v14);
  }

LABEL_4:

  sub_1000CF79C(__dst[21], __dst[22], __dst[23], __dst[24] & 1, __dst[15], v8, v15 & 1, __dst[26]);
  v17 = v16;
  v19 = v18;

  sub_1001627A4(v17, v19);
  v21 = v20;

  sub_1001222A0(*(v2 + 264), v2[34]);
  *a1 = v25;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
}

void sub_10001368C(uint64_t a1)
{
  v2 = variable initialization expression of Cache._big5HkscsCanonicalName();
  v3 = sub_10001375C(v8, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if (v8[0] < 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = v3;
      sub_1000B13A0(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        sub_100013E00(a1 + 32, v5, (2 * v4) | 1);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_10001375C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = sub_1004A4784();
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = sub_1004A4794();
    sub_100013968(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_100013840(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

void *sub_100013840(uint64_t a1, uint64_t a2)
{
  sub_100091B88(0, a2 & ~(a2 >> 63), 0);
  result = _swiftEmptyArrayStorage;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v7 = 0;
        v8 = *(a1 + 4 * i);
        v9 = result[2];
        while (v9 != v7)
        {
          v10 = result + 4 * v7++;
          if (v8 == *(v10 + 8))
          {

            return i;
          }
        }

        v12 = result;
        v11 = result[3];
        if (v9 >= v11 >> 1)
        {
          sub_100091B88((v11 > 1), v9 + 1, 1);
          result = v12;
        }

        result[2] = v9 + 1;
        *(result + v9 + 8) = v8;
        if (v6 == a2)
        {

          return a2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

Swift::Int sub_100013968(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = result;
    for (i = 0; ; ++i)
    {
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = *(v6 + 4 * i);
      sub_1004A6E94();
      sub_1004A6EE4(v9);
      result = sub_1004A6F14();
      if (__OFSUB__(1 << *a3, 1))
      {
        goto LABEL_15;
      }

      sub_1004A46F4();
      while (1)
      {
        v10 = sub_1004A4724();
        if (v11)
        {
          break;
        }

        if (*(v6 + 4 * v10) == *(v6 + 4 * i))
        {
          return 0;
        }

        sub_1004A4744();
      }

      result = sub_1004A4734();
      if (v8 == a2)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100013AD0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      sub_1004A6E94();
      sub_1004A6EB4(0);
      v5 = sub_1004A6F14() & ~(-1 << *(a2 + 32));
      if ((*(v4 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        break;
      }
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Int sub_100013B90(Swift::Int result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
LABEL_6:
  while (v8)
  {
    v11 = v8;
LABEL_12:
    v8 = (v11 - 1) & v11;
    if (*(a2 + 16))
    {
      v13 = *(*(v3 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v11)))));
      sub_1004A6E94();
      sub_1004A6EE4(v13);
      result = sub_1004A6F14();
      v14 = -1 << *(a2 + 32);
      v15 = result & ~v14;
      if ((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = ~v14;
        while (v13 != *(*(a2 + 48) + 4 * v15))
        {
          v15 = (v15 + 1) & v16;
          if (((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v12);
    ++v4;
    if (v11)
    {
      v4 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100013CF4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  v2 = sub_1004A6F14() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

uint64_t sub_100013D7C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5, __int16 a6)
{
  result = 0;
  if (a1 == a4 && (BYTE4(a1) & 1) == (BYTE4(a4) & 1))
  {
    if ((a3 & 0x100) != 0)
    {
      if ((a6 & 0x100) != 0)
      {
        return 1;
      }
    }

    else if ((a6 & 0x100) == 0)
    {
      if (a3)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            if ((a6 & 1) == 0 || a5 != 1)
            {
              return 0;
            }
          }

          else if ((a6 & 1) == 0 || a5 <= 1)
          {
            return 0;
          }
        }

        else if ((a6 & 1) == 0 || a5)
        {
          return 0;
        }
      }

      else if ((a6 & 1) != 0 || a2 != a5)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

Swift::Int sub_100013E00(Swift::Int result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  while (v5 < v4)
  {
    v8 = *(v6 + 4 * v5);
    v10 = *v3;
    v9 = v3[1];
    v11 = (v9 + 32);
    if (*v3)
    {
      sub_1004A6E94();
      sub_1004A6EE4(v8);
      result = sub_1004A6F14();
      v12 = 1 << *(v10 + 16);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v13)
      {
        goto LABEL_19;
      }

      v19 = v14 & result;
      sub_1004A46F4();
      result = sub_1004A4724();
      v7 = v19;
      if ((v15 & 1) == 0)
      {
        while (v11[result] != v8)
        {
          sub_1004A4744();
          v7 = v19;
          result = sub_1004A4724();
          if (v16)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_6;
      }
    }

    else
    {
      v17 = *(v9 + 16);
      if (v17)
      {
        do
        {
          v18 = *v11++;
          if (v18 == v8)
          {
            goto LABEL_6;
          }
        }

        while (--v17);
      }

      v7 = 0;
    }

LABEL_5:
    result = sub_100187E88(v8, v7);
LABEL_6:
    if (++v5 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_100013F8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1;
  if ((a4 & 1) == 0)
  {
    v7 = *(a1 + 16);
    if (v7 <= a2 && v7 <= a3)
    {
      sub_10001368C(_swiftEmptyArrayStorage);
      return;
    }
  }

  sub_10001368C(_swiftEmptyArrayStorage);
  v89 = v9;
  v90 = v10;
  v11 = *(v6 + 2);
  v84 = a3;
  if ((a4 & 1) != 0 && v11)
  {
    do
    {
      v12 = 0;
      v13 = 32;
      while (1)
      {
        v14 = &v6[v13];
        if ((v6[v13 + 17] & 1) != 0 || (v14[16] & 1) == 0 || !*(v14 + 1))
        {
          break;
        }

        ++v12;
        v13 += 24;
        if (v11 == v12)
        {
          goto LABEL_25;
        }
      }

      v15 = *&v6[v13];
      v16 = (v90 + 32);
      v17 = *(v90 + 16);
      if (v89)
      {
        sub_100166A50();
        if ((v18 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (v17)
      {
        do
        {
          v19 = *v16++;
          if (v19 == v15)
          {
            goto LABEL_21;
          }
        }

        while (--v17);
      }

      sub_100187E88(v15, v17);
LABEL_21:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10013982C(v6);
      }

      v20 = *(v6 + 2);
      if (v20 <= v12)
      {
        goto LABEL_122;
      }

      v11 = v20 - 1;
      memmove(&v6[v13], &v6[v13 + 24], 24 * (v20 - v12) - 24);
      *(v6 + 2) = v11;
    }

    while (v11);
  }

LABEL_25:
  v86 = v6;
  if (v11)
  {

    v21 = v6 + 49;
    v22 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v21 - 13) == 1)
      {
        v26 = *(v21 - 17);
        v27 = *(v21 - 9);
        v28 = *(v21 - 1);
        v29 = *v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100091B68(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v24 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v24 >= v23 >> 1)
        {
          sub_100091B68((v23 > 1), v24 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v24 + 1;
        v25 = &_swiftEmptyArrayStorage[3 * v24];
        *(v25 + 8) = v26;
        *(v25 + 36) = 1;
        v25[5] = v27;
        *(v25 + 48) = v28;
        *(v25 + 49) = v29;
        v6 = v86;
      }

      v21 += 24;
      --v11;
    }

    while (v11);
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  for (i = _swiftEmptyArrayStorage[2]; i > a2; i = _swiftEmptyArrayStorage[2])
  {
    if (!i)
    {
      break;
    }

    v31 = 0;
    v32 = &_swiftEmptyArrayStorage[4];
    while ((*(v32 + 17) & 1) == 0)
    {
      ++v31;
      v32 += 6;
      if (i == v31)
      {
        goto LABEL_49;
      }
    }

    v33 = *v32;
    v34 = (v90 + 32);
    v35 = *(v90 + 16);
    if (v89)
    {
      sub_100166A50();
      if ((v36 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (v35)
    {
      do
      {
        v37 = *v34++;
        if (v37 == v33)
        {
          goto LABEL_48;
        }
      }

      while (--v35);
    }

    sub_100187E88(v33, v35);
LABEL_48:
    sub_100168E9C(v31);
    v22 = _swiftEmptyArrayStorage;
  }

LABEL_49:
  while (i > a2)
  {
    if (!i)
    {
      break;
    }

    v38 = 0;
    v39 = 32;
    while (1)
    {
      v40 = &v22[v39];
      if ((v22[v39 + 17] & 1) != 0 || (v40[16] & 1) == 0 || !*(v40 + 1))
      {
        break;
      }

      ++v38;
      v39 += 24;
      if (i == v38)
      {
        goto LABEL_68;
      }
    }

    v41 = *&v22[v39];
    v42 = (v90 + 32);
    v43 = *(v90 + 16);
    if (v89)
    {
      sub_100166A50();
      if ((v44 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    else if (v43)
    {
      do
      {
        v45 = *v42++;
        if (v45 == v41)
        {
          goto LABEL_64;
        }
      }

      while (--v43);
    }

    sub_100187E88(v41, v43);
LABEL_64:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_10013982C(v22);
    }

    v46 = *(v22 + 2);
    if (v46 <= v38)
    {
      goto LABEL_123;
    }

    i = v46 - 1;
    memmove(&v22[v39], &v22[v39 + 24], 24 * (v46 - v38) - 24);
    *(v22 + 2) = i;
  }

LABEL_68:

  v47 = *(v6 + 2);
  if (!v47)
  {
    v50 = _swiftEmptyArrayStorage;
LABEL_85:
    swift_bridgeObjectRelease_n();
    v65 = _swiftEmptyArrayStorage[2];
    for (j = v84; v65 > v84; v65 = _swiftEmptyArrayStorage[2])
    {
      if (!v65)
      {
        break;
      }

      v67 = 0;
      v68 = &_swiftEmptyArrayStorage[4];
      while ((*(v68 + 17) & 1) == 0)
      {
        ++v67;
        v68 += 6;
        if (v65 == v67)
        {
          goto LABEL_99;
        }
      }

      v69 = *v68;
      v70 = (v90 + 32);
      v71 = *(v90 + 16);
      if (v89)
      {
        sub_100166A50();
        if ((v72 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      else if (v71)
      {
        do
        {
          v73 = *v70++;
          if (v73 == v69)
          {
            goto LABEL_98;
          }
        }

        while (--v71);
      }

      sub_100187E88(v69, v71);
LABEL_98:
      sub_100168E9C(v67);
      v50 = _swiftEmptyArrayStorage;
    }

LABEL_99:
    if (v65 <= v84)
    {
LABEL_118:

      return;
    }

    while (1)
    {
      if (!v65)
      {
        goto LABEL_118;
      }

      v74 = j;
      v75 = 0;
      v76 = 32;
      while (1)
      {
        v77 = &v50[v76];
        if ((v50[v76 + 17] & 1) != 0 || (v77[16] & 1) == 0 || !*(v77 + 1))
        {
          break;
        }

        ++v75;
        v76 += 24;
        if (v65 == v75)
        {
          goto LABEL_118;
        }
      }

      v78 = *&v50[v76];
      v79 = (v90 + 32);
      v80 = *(v90 + 16);
      if (v89)
      {
        sub_100166A50();
        if (v81)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (!v80)
        {
LABEL_113:
          sub_100187E88(v78, v80);
          goto LABEL_114;
        }

        while (1)
        {
          v82 = *v79++;
          if (v82 == v78)
          {
            break;
          }

          if (!--v80)
          {
            goto LABEL_113;
          }
        }
      }

LABEL_114:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_10013982C(v50);
      }

      v83 = *(v50 + 2);
      if (v83 <= v75)
      {
        goto LABEL_124;
      }

      v65 = v83 - 1;
      memmove(&v50[v76], &v50[v76 + 24], 24 * (v83 - v75) - 24);
      *(v50 + 2) = v65;
      j = v74;
      if (v65 <= v74)
      {
        goto LABEL_118;
      }
    }
  }

  v48 = 0;
  v49 = v6 + 32;
  v50 = _swiftEmptyArrayStorage;
  v85 = v6 + 32;
  while (v48 < v47)
  {
    v52 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_121;
    }

    v53 = &v49[24 * v48];
    v54 = *v53;
    v55 = v53[4];
    v88 = *(v53 + 1);
    v56 = v53[16];
    v57 = v53[17];
    ++v48;
    v58 = *(v90 + 16);
    if (v89)
    {
      sub_100166A50();
      if (v51)
      {
        goto LABEL_78;
      }

LABEL_71:
      if (v52 == v47)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v59 = (v90 + 32);
      if (v58)
      {
        do
        {
          v60 = *v59++;
          if (v60 == v54)
          {
            goto LABEL_71;
          }
        }

        while (--v58);
      }

LABEL_78:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100091B68(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v62 = _swiftEmptyArrayStorage[2];
      v61 = _swiftEmptyArrayStorage[3];
      v63 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        sub_100091B68((v61 > 1), v62 + 1, 1);
        v63 = v62 + 1;
      }

      _swiftEmptyArrayStorage[2] = v63;
      v64 = &_swiftEmptyArrayStorage[3 * v62];
      *(v64 + 8) = v54;
      *(v64 + 36) = v55;
      v64[5] = v88;
      *(v64 + 48) = v56;
      *(v64 + 49) = v57;
      v49 = v85;
      if (v52 == v47)
      {
        goto LABEL_85;
      }
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
}

void sub_1000146B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_100013F8C(a1, a3, a4, a5);
  if ((a2 & 1) != 0 && (v9 = *(v8 + 16)) != 0 && *(a1 + 16) <= v9)
  {

    sub_1000CBFA8(v7, v8, 1, v9);
  }

  else
  {

    sub_1000CC0A4(v7, v8);
  }
}

unint64_t sub_100014730()
{
  result = qword_1005CD0B8;
  if (!qword_1005CD0B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConnectionIDsGroupedByState.Connection.State, &type metadata for ConnectionIDsGroupedByState.Connection.State, v0, v1);
    atomic_store(result, &qword_1005CD0B8);
  }

  return result;
}

unint64_t sub_100014788()
{
  result = qword_1005CD0C0;
  if (!qword_1005CD0C0)
  {
    result = swift_getWitnessTable("ل\v", &type metadata for ConnectionIDsGroupedByState.Connection, v0, v1);
    atomic_store(result, &qword_1005CD0C0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for MailboxSyncStatus(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionLimits(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionLimits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ConnectionIDsGroupedByState.Connection(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionIDsGroupedByState.Connection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 6))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionIDsGroupedByState.Connection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionConfiguration.SourceApplicationKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionConfiguration.SourceApplicationKind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100014AC4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100014ADC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100014AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100014B38(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 initializeBufferWithCopyOfBuffer for MessageToDownload(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionLimitsAndUsage.ConnectionWithUsage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionLimitsAndUsage.ConnectionWithUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100014CEC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100014D40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for CountUnreadMessages.LastRunTime(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CountUnreadMessages.LastRunTime(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CountUnreadMessages.LastRunTime(uint64_t result, int a2, int a3)
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

Swift::Int PathAttribute.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A6EB4(0);
  return sub_1004A6F14();
}

Swift::Int sub_100014E7C(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A6EB4(0);
  return sub_1004A6F14();
}

Swift::Int sub_100014EBC()
{
  result = sub_100093190(&off_100598750);
  qword_1005DDEB8 = result;
  return result;
}

uint64_t sub_100014EE4(uint64_t a1)
{
  v2 = *(v1 + 104);
  if (v2 < 2 || *(v1 + 122) == 1 && ((*(v1 + 120) & 1) != 0 || *(v1 + 112) > 2843))
  {
    return 0;
  }

  v4 = v2 - 1;
  v5 = 1;
  sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v5, &v4, &type metadata for UID, &v6);
  return v6;
}

void sub_100014F78(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v16 = sub_100014EE4(v15);
  if (v17)
  {
    sub_100016B98(a1, v8, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(a1, v5, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v18 = sub_1004A4A54();
    v19 = sub_1004A6034();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v20 = 68159235;
      *(v20 + 4) = 2;
      *(v20 + 8) = 256;
      v21 = &v5[*(v3 + 20)];
      *(v20 + 10) = *v21;
      *(v20 + 11) = 2082;
      v22 = &v8[*(v3 + 20)];
      *(v20 + 13) = sub_10015BA6C(*(v22 + 1), *(v22 + 2), &v48);
      *(v20 + 21) = 1040;
      *(v20 + 23) = 2;
      *(v20 + 27) = 512;
      v23 = *(v21 + 12);
      sub_100011908(v5);
      *(v20 + 29) = v23;
      *(v20 + 31) = 2160;
      *(v20 + 33) = 0x786F626C69616DLL;
      *(v20 + 41) = 2085;
      v24 = *(v22 + 4);
      v25 = *(v22 + 10);

      sub_100011908(v8);
      v51 = v24;
      v52 = v25;
      v26 = sub_1004A5824();
      v28 = sub_10015BA6C(v26, v27, &v48);

      *(v20 + 43) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Not querying server.", v20, 0x33u);
      swift_arrayDestroy();

      return;
    }

    sub_100011908(v5);

    v45 = v8;
    goto LABEL_11;
  }

  v29 = v16;
  sub_100016B98(a1, v14, type metadata accessor for MailboxTaskLogger);
  sub_100016B98(a1, v11, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000168E0(v1, &v51);
  v30 = sub_1004A4A54();
  v31 = sub_1004A6034();
  if (!os_log_type_enabled(v30, v31))
  {
    sub_100016918(&v51);
    sub_100011908(v11);

    v45 = v14;
LABEL_11:
    sub_100011908(v45);
    return;
  }

  v32 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v50 = v47;
  *v32 = 68159747;
  *(v32 + 4) = 2;
  *(v32 + 8) = 256;
  v33 = &v11[*(v3 + 20)];
  *(v32 + 10) = *v33;
  *(v32 + 11) = 2082;
  v34 = &v14[*(v3 + 20)];
  *(v32 + 13) = sub_10015BA6C(*(v34 + 1), *(v34 + 2), &v50);
  *(v32 + 21) = 1040;
  *(v32 + 23) = 2;
  *(v32 + 27) = 512;
  v35 = *(v33 + 12);
  sub_100011908(v11);
  *(v32 + 29) = v35;
  *(v32 + 31) = 2160;
  *(v32 + 33) = 0x786F626C69616DLL;
  *(v32 + 41) = 2085;
  v36 = *(v34 + 4);
  v37 = *(v34 + 10);

  sub_100011908(v14);
  v48 = v36;
  v49 = v37;
  v38 = sub_1004A5824();
  v40 = sub_10015BA6C(v38, v39, &v50);

  *(v32 + 43) = v40;
  *(v32 + 51) = 2082;
  v48 = v29;
  sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
  v41 = MessageIdentifierRange.debugDescription.getter();
  v43 = sub_10015BA6C(v41, v42, &v50);

  *(v32 + 53) = v43;
  *(v32 + 61) = 2048;
  if (v54)
  {
    v44 = 0;
  }

  else
  {
    v44 = v53;
  }

  sub_100016918(&v51);
  *(v32 + 63) = v44;
  _os_log_impl(&_mh_execute_header, v30, v31, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task querying in UIDs %{public}s. Server unread count %ld", v32, 0x47u);
  swift_arrayDestroy();
}

uint64_t sub_1000154D8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = *(v4 + 104);
  if (v6 < 2 || (v7 = *(v4 + 122), v7 == 1) && ((*(v4 + 120) & 1) != 0 || *(v4 + 112) > 2843) || (LODWORD(v23) = 1, v24 = v6 - 1, v10 = sub_100016948(), static MessageIdentifier.... infix(_:_:)(&v23, &v24, &type metadata for UID, &v25), v11 = v25, (sub_100111640(a2, a3) & 1) != 0))
  {
    v12 = sub_10000C9C0(&qword_1005CD1B0, &unk_1004CEC30);
    return (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
  }

  else
  {
    v14 = swift_allocObject();
    sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1004CEA80;
    sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
    v16 = swift_allocBox();
    v18 = v17;
    v25 = v11;
    v23 = Range<>.init<A>(_:)(&v25, &type metadata for UID, v10);
    sub_100016D2C();
    sub_1004A7124();
    v19 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    *(v15 + 32) = v16 | 0xA000000000000000;
    *(v15 + 40) = xmmword_1004CEA90;
    *(v14 + 16) = v15;
    v20 = v14 | 0xC000000000000000;
    if (v7)
    {
      *a4 = v20;
    }

    else
    {
      sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
      type metadata accessor for SearchReturnOption(0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1004CEAA0;
      swift_storeEnumTagMultiPayload();
      *a4 = v20;
      a4[1] = v21;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    v22 = sub_10000C9C0(&qword_1005CD1B0, &unk_1004CEC30);
    return (*(*(v22 - 8) + 56))(a4, 0, 1, v22);
  }
}

uint64_t sub_100015818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10001F048(a2, a4);
  if (v8)
  {
    return 0xF000000000000007;
  }

  v10 = sub_100014EE4(v8);
  if (v11)
  {
    v12 = swift_allocObject();
    v13 = *(v4 + 24);
    *(v12 + 16) = *(v4 + 16);
    *(v12 + 24) = v13;
    v14 = *(v4 + 104) == 1;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 32) = v14;
    *(v12 + 56) = 256;
LABEL_10:
    v9 = v12 | 0x3000000000000006;

    return v9;
  }

  v15 = v10;
  if (sub_10001982C(a1, a2, a3))
  {
    v16 = *(v4 + 136);
    if (v16)
    {
      v17 = 0;
      v15 = 0;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v17 = *(v4 + 128);
      v18 = *(v4 + 112);
      v19 = *(v4 + 120);
    }

    v12 = swift_allocObject();
    v20 = *(v4 + 24);
    *(v12 + 16) = *(v4 + 16);
    *(v12 + 24) = v20;
    *(v12 + 32) = v17;
    *(v12 + 40) = v15;
    *(v12 + 48) = v18;
    *(v12 + 56) = v19;
    *(v12 + 57) = v16;
    goto LABEL_10;
  }

  return 0xF000000000000007;
}

void sub_100015930(void *a1, uint64_t a2)
{
  v91 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v91);
  v89 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v88 - v7;
  __chkstk_darwin(v9);
  v11 = &v88 - v10;
  __chkstk_darwin(v12);
  v14 = &v88 - v13;
  __chkstk_darwin(v15);
  v17 = &v88 - v16;
  __chkstk_darwin(v18);
  v20 = &v88 - v19;
  __chkstk_darwin(v21);
  v23 = &v88 - v22;
  __chkstk_darwin(v24);
  v26 = &v88 - v25;
  v27 = sub_10012CD44(*(v2 + 40), *(v2 + 48), a1);
  v90 = *(v2 + 128);
  LOBYTE(a1) = *(v2 + 136);
  v28 = sub_100014EE4(v27);
  if ((a1 & 1) == 0)
  {
    if (v29)
    {
      sub_100016B98(a2, v20, type metadata accessor for MailboxTaskLogger);
      sub_100016B98(a2, v17, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000168E0(v2, v95);
      v31 = sub_1004A4A54();
      v43 = sub_1004A6034();
      if (os_log_type_enabled(v31, v43))
      {
        v44 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v44 = 68159747;
        *(v44 + 4) = 2;
        *(v44 + 8) = 256;
        v45 = v91;
        v46 = &v17[*(v91 + 20)];
        *(v44 + 10) = *v46;
        *(v44 + 11) = 2082;
        v47 = &v20[*(v45 + 20)];
        *(v44 + 13) = sub_10015BA6C(*(v47 + 1), *(v47 + 2), &v94);
        *(v44 + 21) = 1040;
        *(v44 + 23) = 2;
        *(v44 + 27) = 512;
        v48 = *(v46 + 12);
        sub_100011908(v17);
        *(v44 + 29) = v48;
        *(v44 + 31) = 2160;
        *(v44 + 33) = 0x786F626C69616DLL;
        *(v44 + 41) = 2085;
        v49 = *(v47 + 4);
        v50 = *(v47 + 10);

        sub_100011908(v20);
        v92 = v49;
        v93 = v50;
        v51 = sub_1004A5824();
        v53 = sub_10015BA6C(v51, v52, &v94);

        *(v44 + 43) = v53;
        *(v44 + 51) = 2048;
        *(v44 + 53) = v90;
        *(v44 + 61) = 2048;
        if (v97)
        {
          v54 = 0;
        }

        else
        {
          v54 = v96;
        }

        sub_100016918(v95);
        *(v44 + 63) = v54;
        _os_log_impl(&_mh_execute_header, v31, v43, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld unread messages. Server unread count %ld.", v44, 0x47u);
        swift_arrayDestroy();
        goto LABEL_14;
      }

      sub_100016918(v95);
      sub_100011908(v17);

      v87 = v20;
      goto LABEL_31;
    }

    v71 = v28;
    sub_100016B98(a2, v26, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(a2, v23, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000168E0(v2, v95);
    v56 = sub_1004A4A54();
    v72 = sub_1004A6034();
    if (!os_log_type_enabled(v56, v72))
    {
      sub_100016918(v95);
      sub_100011908(v23);

      v87 = v26;
      goto LABEL_31;
    }

    v73 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v73 = 68160003;
    *(v73 + 4) = 2;
    *(v73 + 8) = 256;
    v74 = v91;
    v75 = &v23[*(v91 + 20)];
    *(v73 + 10) = *v75;
    *(v73 + 11) = 2082;
    v76 = &v26[*(v74 + 20)];
    *(v73 + 13) = sub_10015BA6C(*(v76 + 1), *(v76 + 2), &v94);
    *(v73 + 21) = 1040;
    *(v73 + 23) = 2;
    *(v73 + 27) = 512;
    v77 = *(v75 + 12);
    sub_100011908(v23);
    *(v73 + 29) = v77;
    *(v73 + 31) = 2160;
    *(v73 + 33) = 0x786F626C69616DLL;
    *(v73 + 41) = 2085;
    v78 = *(v76 + 4);
    v79 = *(v76 + 10);

    sub_100011908(v26);
    v92 = v78;
    v93 = v79;
    v80 = sub_1004A5824();
    v82 = sub_10015BA6C(v80, v81, &v94);

    *(v73 + 43) = v82;
    *(v73 + 51) = 2048;
    *(v73 + 53) = v90;
    *(v73 + 61) = 2082;
    v92 = v71;
    sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
    v83 = MessageIdentifierRange.debugDescription.getter();
    v85 = sub_10015BA6C(v83, v84, &v94);

    *(v73 + 63) = v85;
    *(v73 + 71) = 2048;
    if (v97)
    {
      v86 = 0;
    }

    else
    {
      v86 = v96;
    }

    sub_100016918(v95);
    *(v73 + 73) = v86;
    _os_log_impl(&_mh_execute_header, v56, v72, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld unread messages in UIDs %{public}s. Server unread count %ld.", v73, 0x51u);
    swift_arrayDestroy();
LABEL_25:

    return;
  }

  if (v29)
  {
    v14 = v8;
    sub_100016B98(a2, v8, type metadata accessor for MailboxTaskLogger);
    v30 = v89;
    sub_100016B98(a2, v89, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000168E0(v2, v95);
    v31 = sub_1004A4A54();
    v32 = sub_1004A6034();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v33 = 68159491;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      v34 = v91;
      v35 = v30 + *(v91 + 20);
      *(v33 + 10) = *v35;
      *(v33 + 11) = 2082;
      v36 = &v14[*(v34 + 20)];
      *(v33 + 13) = sub_10015BA6C(*(v36 + 1), *(v36 + 2), &v94);
      *(v33 + 21) = 1040;
      *(v33 + 23) = 2;
      *(v33 + 27) = 512;
      v37 = *(v35 + 24);
      sub_100011908(v30);
      *(v33 + 29) = v37;
      *(v33 + 31) = 2160;
      *(v33 + 33) = 0x786F626C69616DLL;
      *(v33 + 41) = 2085;
      v38 = *(v36 + 4);
      LODWORD(v35) = *(v36 + 10);

      sub_100011908(v14);
      v92 = v38;
      v93 = v35;
      v39 = sub_1004A5824();
      v41 = sub_10015BA6C(v39, v40, &v94);

      *(v33 + 43) = v41;
      *(v33 + 51) = 2048;
      if (v97)
      {
        v42 = 0;
      }

      else
      {
        v42 = v96;
      }

      sub_100016918(v95);
      *(v33 + 53) = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not search for unread messages. Server unread count %ld.", v33, 0x3Du);
      swift_arrayDestroy();
LABEL_14:

      return;
    }

    sub_100016918(v95);
    sub_100011908(v30);

    goto LABEL_29;
  }

  v55 = v28;
  sub_100016B98(a2, v14, type metadata accessor for MailboxTaskLogger);
  sub_100016B98(a2, v11, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000168E0(v2, v95);
  v56 = sub_1004A4A54();
  v57 = sub_1004A6034();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v58 = 68159747;
    *(v58 + 4) = 2;
    *(v58 + 8) = 256;
    v59 = v91;
    v60 = &v11[*(v91 + 20)];
    *(v58 + 10) = *v60;
    *(v58 + 11) = 2082;
    v61 = &v14[*(v59 + 20)];
    *(v58 + 13) = sub_10015BA6C(*(v61 + 1), *(v61 + 2), &v94);
    *(v58 + 21) = 1040;
    *(v58 + 23) = 2;
    *(v58 + 27) = 512;
    v62 = *(v60 + 12);
    sub_100011908(v11);
    *(v58 + 29) = v62;
    *(v58 + 31) = 2160;
    *(v58 + 33) = 0x786F626C69616DLL;
    *(v58 + 41) = 2085;
    v63 = *(v61 + 4);
    LODWORD(v60) = *(v61 + 10);

    sub_100011908(v14);
    v92 = v63;
    v93 = v60;
    v64 = sub_1004A5824();
    v66 = sub_10015BA6C(v64, v65, &v94);

    *(v58 + 43) = v66;
    *(v58 + 51) = 2082;
    v92 = v55;
    sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
    v67 = MessageIdentifierRange.debugDescription.getter();
    v69 = sub_10015BA6C(v67, v68, &v94);

    *(v58 + 53) = v69;
    *(v58 + 61) = 2048;
    if (v97)
    {
      v70 = 0;
    }

    else
    {
      v70 = v96;
    }

    sub_100016918(v95);
    *(v58 + 63) = v70;
    _os_log_impl(&_mh_execute_header, v56, v57, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to find unread messages (UIDs %{public}s). Server unread count %ld.", v58, 0x47u);
    swift_arrayDestroy();
    goto LABEL_25;
  }

  sub_100016918(v95);
  sub_100011908(v11);

LABEL_29:
  v87 = v14;
LABEL_31:
  sub_100011908(v87);
}

uint64_t sub_100016420@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_100016474()
{
  if (qword_1005CCDF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000164E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  result = sub_100015818(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void sub_10001651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    *(v5 + 128) = 0;
    *(v5 + 136) = 1;
  }
}

Swift::Int sub_100016558()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A6EF4(v1);
  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

void sub_1000165B4()
{
  v1 = v0[1];
  sub_1004A6EF4(*v0);
  sub_1004A6EB4(v1);
}

Swift::Int sub_1000165F0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1004A6E94();
  sub_1004A6EF4(v2);
  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

unint64_t sub_100016678()
{
  result = qword_1005CD0C8;
  if (!qword_1005CD0C8)
  {
    result = swift_getWitnessTable(aE_26, &type metadata for CountUnreadMessages.LastRunTime, v0, v1);
    atomic_store(result, &qword_1005CD0C8);
  }

  return result;
}

__n128 sub_1000166CC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100016700(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_100016748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000167BC()
{
  result = qword_1005CD0D0;
  if (!qword_1005CD0D0)
  {
    result = swift_getWitnessTable(aQ_15, &type metadata for CountUnreadMessages.ActionID, v0, v1);
    atomic_store(result, &qword_1005CD0D0);
  }

  return result;
}

unint64_t sub_100016810()
{
  result = qword_1005CD0D8;
  if (!qword_1005CD0D8)
  {
    result = swift_getWitnessTable(byte_1004CEBD0, &type metadata for CountUnreadMessages.CommandID, v0, v1);
    atomic_store(result, &qword_1005CD0D8);
  }

  return result;
}

unint64_t sub_100016864(uint64_t a1)
{
  result = sub_10001688C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001688C()
{
  result = qword_1005CD190;
  if (!qword_1005CD190)
  {
    result = swift_getWitnessTable(byte_1004CEB8C, &type metadata for CountUnreadMessages, v0, v1);
    atomic_store(result, &qword_1005CD190);
  }

  return result;
}

unint64_t sub_100016948()
{
  result = qword_1005CD1A0;
  if (!qword_1005CD1A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UID, &type metadata for UID, v0, v1);
    atomic_store(result, &qword_1005CD1A0);
  }

  return result;
}

uint64_t sub_10001699C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000C9C0(&qword_1005CD1A8, &qword_1004CEC28);
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  result = sub_100057864(a2, a3, a4);
  if (result)
  {
    v13 = *(v4 + 122);
    v14 = &v11[*(v9 + 48)];
    *v11 = v13;
    sub_100016B98(a1, v14, type metadata accessor for UntaggedResponse);
    type metadata accessor for UntaggedResponse(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (v13 == 1)
    {
      if (EnumCaseMultiPayload == 11)
      {
        v16 = *(*v14 + 16);

        *(v4 + 128) = v16;
        *(v4 + 136) = 0;
        return result;
      }
    }

    else if (EnumCaseMultiPayload == 12)
    {
      v17 = *(v14 + 16);
      v22[0] = *v14;
      v22[1] = v17;
      v23 = *(v14 + 32);
      v18 = v4;
      v19 = ExtendedSearchResponse.count.getter(v23);
      v21 = v20;
      result = sub_100016C68(v22);
      *(v18 + 128) = v19;
      *(v18 + 136) = v21 & 1;
      return result;
    }

    return sub_100016C00(v11);
  }

  return result;
}

Swift::Int64 sub_100016B08(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MailboxSyncState(0) + 76));
  result = static MonotonicTime.now()();
  v3 = v1[1];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v1[1] = v5;
    v7.rawValue = *v1;
    v8 = exp2((v5 - 1));
    result = MonotonicTime.init(seconds:since:)(fmin(v8 + v8, 37.0), v7).rawValue;
    if (v6 >= result)
    {
      v1[1] = 0;
    }

    *v1 = v6;
  }

  return result;
}

uint64_t sub_100016B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100016C00(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD1A8, &qword_1004CEC28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016CBC()
{

  return _swift_deallocObject(v0, 58, 7);
}

uint64_t sub_100016CF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100016D2C()
{
  result = qword_1005CD1C8;
  if (!qword_1005CD1C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageIdentificationShiftWrapper, &type metadata for MessageIdentificationShiftWrapper, v0, v1);
    atomic_store(result, &qword_1005CD1C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PathAttribute(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PathAttribute(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 sub_100016E9C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100016EB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100016F00(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_100016FE8(uint64_t a1)
{
  v68 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v68);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v66 - v6;
  __chkstk_darwin(v8);
  v10 = &v66 - v9;
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  __chkstk_darwin(v17);
  v19 = &v66 - v18;
  v20 = *(v1 + 64);
  if (*(v20 + 16) == 1 && sub_10012D47C(*(v1 + 64)))
  {
    v23 = v21;
    v67 = v22;

    sub_100019648(a1, v19, type metadata accessor for Task.Logger);
    sub_100019648(a1, v16, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();

    if (os_log_type_enabled(v24, v25))
    {
      v66 = v23;
      v26 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v26 = 68158723;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = v68;
      v28 = *&v16[*(v68 + 20)];
      sub_100019718(v16, type metadata accessor for Task.Logger);
      *(v26 + 10) = v28;
      *(v26 + 11) = 2082;
      v29 = &v19[*(v27 + 20)];
      v30 = v29[1];
      v31 = v29[2];
      v32 = v29[3];
      sub_100018BD0(*v29, v30, v31, v32, v29[4]);
      sub_100019718(v19, type metadata accessor for Task.Logger);
      if (v32 < 0)
      {
      }

      v33 = sub_10015BA6C(v30, v31, &v69);

      *(v26 + 13) = v33;
      *(v26 + 21) = 2160;
      *(v26 + 23) = 0x786F626C69616DLL;
      *(v26 + 31) = 2085;
      v72 = v66;
      v73 = v67;
      v34 = sub_1004A5824();
      v36 = sub_10015BA6C(v34, v35, &v69);

      *(v26 + 33) = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx-%{public}s] Created task for '%{sensitive,mask.mailbox}s'", v26, 0x29u);
      swift_arrayDestroy();

LABEL_16:

      return;
    }

    sub_100019718(v16, type metadata accessor for Task.Logger);

    v65 = v19;
  }

  else if (sub_10012D47C(v20))
  {
    v39 = v37;
    v40 = v38;

    sub_100019648(a1, v13, type metadata accessor for Task.Logger);
    sub_100019648(a1, v10, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100019778(v1, &v72);

    v24 = sub_1004A4A54();
    v41 = sub_1004A6034();

    if (os_log_type_enabled(v24, v41))
    {
      v67 = v40;
      v42 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v71 = v66;
      *v42 = 68158979;
      *(v42 + 4) = 2;
      *(v42 + 8) = 256;
      v43 = v68;
      v44 = *&v10[*(v68 + 20)];
      sub_100019718(v10, type metadata accessor for Task.Logger);
      *(v42 + 10) = v44;
      *(v42 + 11) = 2082;
      v45 = &v13[*(v43 + 20)];
      v46 = v45[1];
      v47 = v45[2];
      v48 = v45[3];
      sub_100018BD0(*v45, v46, v47, v48, v45[4]);
      sub_100019718(v13, type metadata accessor for Task.Logger);
      if (v48 < 0)
      {
      }

      v49 = sub_10015BA6C(v46, v47, &v71);

      *(v42 + 13) = v49;
      *(v42 + 21) = 2048;
      v50 = *(v74 + 16);
      sub_1000197B0(&v72);
      *(v42 + 23) = v50;
      *(v42 + 31) = 2160;
      *(v42 + 33) = 0x786F626C69616DLL;
      *(v42 + 41) = 2085;
      v69 = v39;
      v70 = v67;
      v51 = sub_1004A5824();
      v53 = sub_10015BA6C(v51, v52, &v71);

      *(v42 + 43) = v53;
      _os_log_impl(&_mh_execute_header, v24, v41, "[%.*hhx-%{public}s] Created task for %ld mailboxes, first: '%{sensitive,mask.mailbox}s'.", v42, 0x33u);
      swift_arrayDestroy();

      goto LABEL_16;
    }

    sub_1000197B0(&v72);
    sub_100019718(v10, type metadata accessor for Task.Logger);

    v65 = v13;
  }

  else
  {
    sub_100019648(a1, v7, type metadata accessor for Task.Logger);
    sub_100019648(a1, v4, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100019778(v1, &v72);
    v24 = sub_1004A4A54();
    v54 = sub_1004A6034();
    if (os_log_type_enabled(v24, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v69 = v56;
      *v55 = 68158466;
      *(v55 + 4) = 2;
      *(v55 + 8) = 256;
      v57 = v68;
      v58 = *&v4[*(v68 + 20)];
      sub_100019718(v4, type metadata accessor for Task.Logger);
      *(v55 + 10) = v58;
      *(v55 + 11) = 2082;
      v59 = &v7[*(v57 + 20)];
      v60 = v59[1];
      v61 = v59[2];
      v62 = v59[3];
      sub_100018BD0(*v59, v60, v61, v62, v59[4]);
      sub_100019718(v7, type metadata accessor for Task.Logger);
      if (v62 < 0)
      {
      }

      v63 = sub_10015BA6C(v60, v61, &v69);

      *(v55 + 13) = v63;
      *(v55 + 21) = 2048;
      v64 = *(v74 + 16);
      sub_1000197B0(&v72);
      *(v55 + 23) = v64;
      _os_log_impl(&_mh_execute_header, v24, v54, "[%.*hhx-%{public}s] Created task for %ld mailboxes.", v55, 0x1Fu);
      sub_1000197E0(v56);

      goto LABEL_16;
    }

    sub_1000197B0(&v72);
    sub_100019718(v4, type metadata accessor for Task.Logger);

    v65 = v7;
  }

  sub_100019718(v65, type metadata accessor for Task.Logger);
}

uint64_t sub_1000177FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 64);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = *(v8 + 56) + ((v16 << 10) | (16 * __clz(__rbit64(v12))));
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_bridgeObjectRetain_n();
      if ((sub_100110FD4(v18, v19, a2, a3) & 1) == 0)
      {
        break;
      }

      v12 &= v12 - 1;
      result = swift_bridgeObjectRelease_n();
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v39 = sub_10000C9C0(&qword_1005CD280, &qword_1004CEDE8);
    v40 = a4 + *(v39 + 48);
    *a4 = v18;
    *(a4 + 8) = v19;
    *(a4 + 12) = 0;
    *v40 = v18;
    *(v40 + 8) = v19;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    v35 = *(*(v39 - 8) + 56);
    v37 = a4;
    v38 = 0;
    v36 = v39;
LABEL_26:

    return v35(v37, v38, 1, v36);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v16 >= v13)
      {
        break;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    v41 = a4;

    v20 = 1 << *(v8 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v8 + 64);
    v23 = (v20 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v24 = 0;
    while (v22)
    {
LABEL_20:
      v26 = *(v8 + 56) + ((v24 << 10) | (16 * __clz(__rbit64(v22))));
      v27 = *v26;
      v28 = *(v26 + 8);
      swift_bridgeObjectRetain_n();
      v29 = sub_100018C20(v27, v28, a1, a2, a3);

      if (v29)
      {

        v31 = sub_100110FD4(v30, v28 | 0x100000000, a2, a3);

        if ((v31 & 1) == 0)
        {

          v32 = sub_10000C9C0(&qword_1005CD280, &qword_1004CEDE8);
          v33 = v41 + *(v32 + 48);
          *v41 = v27;
          *(v41 + 8) = v28;
          *(v41 + 12) = 1;
          *v33 = 0;
          *(v33 + 8) = 0;
          *(v33 + 16) = v27;
          *(v33 + 24) = v28;
          *(v33 + 32) = _swiftEmptyArrayStorage;
          type metadata accessor for ClientCommand(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v32 - 8) + 56))(v41, 0, 1, v32);
        }
      }

      v22 &= v22 - 1;
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        v34 = sub_10000C9C0(&qword_1005CD280, &qword_1004CEDE8);
        v35 = *(*(v34 - 8) + 56);
        v36 = v34;
        v37 = v41;
        v38 = 1;
        goto LABEL_26;
      }

      v22 = *(v9 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_20;
      }
    }

LABEL_31:
    __break(1u);
  }

  return result;
}

void sub_100017C20(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v55 = a1;
  v14 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v44 - v19;
  v54 = a2;
  if ((a2 & 0x100000000) != 0)
  {
    sub_100010880(a7, a3, a4, a5, a6);
    if (v7)
    {
    }
  }

  else
  {
    v51 = v18;
    sub_100010880(a7, a3, a4, a5, a6);
    if (v7)
    {
    }

    v53 = 0;
    v52 = v20;
    sub_100019648(a7, v20, type metadata accessor for Task.Logger);
    sub_100019648(a7, v16, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000110B0(a3);

    if (a6)
    {
      v21 = 20302;
      if (a6 != 1)
      {
        v21 = 4473154;
      }

      v50 = v21;
      if (a6 == 1)
      {
        v22 = 0xE200000000000000;
      }

      else
      {
        v22 = 0xE300000000000000;
      }
    }

    else
    {
      v22 = 0xE200000000000000;
      v50 = 19279;
    }

    v23 = v55;

    sub_1000110B0(a3);

    Mailbox.name.getter(v23);
    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();

    sub_10001114C(a3);

    j__swift_bridgeObjectRelease(v23);
    if (os_log_type_enabled(v24, v25))
    {
      v46 = v25;
      v47 = v24;
      v48 = a4;
      v49 = a5;
      v26 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v58 = v45;
      *v26 = 68159235;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = v51;
      v28 = *&v16[*(v51 + 20)];
      sub_100019718(v16, type metadata accessor for Task.Logger);
      *(v26 + 10) = v28;
      *(v26 + 11) = 2082;
      v29 = v52;
      v30 = &v52[*(v27 + 20)];
      v31 = v30[1];
      v33 = v30[2];
      v32 = v30[3];
      sub_100018BD0(*v30, v31, v33, v32, v30[4]);
      sub_100019718(v29, type metadata accessor for Task.Logger);
      if (v32 < 0)
      {
      }

      v34 = sub_10015BA6C(v31, v33, &v58);

      *(v26 + 13) = v34;
      *(v26 + 21) = 2082;

      v35 = sub_10015BA6C(v50, v22, &v58);

      *(v26 + 23) = v35;
      *(v26 + 31) = 2082;

      v36 = ResponseText.debugDescription.getter(a3, v48, v49);
      v38 = v37;
      sub_10001114C(a3);

      v39 = sub_10015BA6C(v36, v38, &v58);

      *(v26 + 33) = v39;
      *(v26 + 41) = 2160;
      *(v26 + 43) = 0x786F626C69616DLL;
      *(v26 + 51) = 2085;
      v56 = v55;
      v57 = v54;

      v40 = sub_1004A5824();
      v42 = sub_10015BA6C(v40, v41, &v58);

      *(v26 + 53) = v42;
      v43 = v47;
      _os_log_impl(&_mh_execute_header, v47, v46, "[%.*hhx-%{public}s] Received '%{public}s %{public}s' for '%{sensitive,mask.mailbox}s'.", v26, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100019718(v16, type metadata accessor for Task.Logger);

      sub_10001114C(a3);

      sub_100019718(v52, type metadata accessor for Task.Logger);
    }
  }
}

uint64_t sub_1000180F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 64);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
LABEL_10:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = (*(v6 + 48) + v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v6 + 56) + v14;
    v19 = *v18;
    v20 = *(v18 + 8);

    if ((sub_100018C20(v21, v20, a1, a2, a3) & 1) != 0 && (sub_100018C20(v19, v20 | 0x100000000, a1, a2, a3) & 1) != 0 && (sub_100011B00(v19, v20, *(v24 + 72)) & 1) == 0 && (sub_10001DE00(v16, v17, a2, a4) & 1) == 0)
    {

      v22 = swift_allocObject();
      *(v22 + 16) = v16;
      *(v22 + 24) = v17;

      return v16;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 0;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1000182E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a1;
  v74 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v74);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  v16 = *(v3 + 64);
  v19 = *(v16 + 64);
  v18 = v16 + 64;
  v17 = v19;
  v20 = 1 << *(*(v3 + 64) + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v82 = *(v3 + 64);

  v24 = 0;
  *&v25 = 68158723;
  v73 = v25;
  v78 = v12;
  v79 = v3;
  v75 = a2;
  v72 = v6;
  v80 = v15;
  v81 = v9;
  v77 = v23;
  while (v22)
  {
LABEL_10:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = *(v82 + 56) + ((v24 << 10) | (16 * v27));
    v29 = *v28;
    v30 = *(v3 + 72);
    v31 = *v28;
    v83 = *(v28 + 8);
    if (sub_100011B00(v31, v83, v30))
    {
      sub_100019648(a2, v15, type metadata accessor for Task.Logger);
      sub_100019648(a2, v12, type metadata accessor for Task.Logger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v32 = v12;
      v33 = v15;
      v34 = sub_1004A4A54();
      v35 = sub_1004A6034();

      if (os_log_type_enabled(v34, v35))
      {
        LODWORD(v71) = v35;
        v76 = v34;
        v36 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v86[0] = v70;
        *v36 = v73;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v37 = v33;
        v38 = v74;
        v39 = *(v32 + *(v74 + 20));
        sub_100019718(v32, type metadata accessor for Task.Logger);
        *(v36 + 10) = v39;
        *(v36 + 11) = 2082;
        v40 = (v37 + *(v38 + 20));
        v41 = v40[1];
        v43 = v40[2];
        v42 = v40[3];
        sub_100018BD0(*v40, v41, v43, v42, v40[4]);
        sub_100019718(v80, type metadata accessor for Task.Logger);
        if (v42 < 0)
        {
        }

        v44 = sub_10015BA6C(v41, v43, v86);

        *(v36 + 13) = v44;
        *(v36 + 21) = 2160;
        *(v36 + 23) = 0x786F626C69616DLL;
        *(v36 + 31) = 2085;
        v84 = v29;
        v85 = v83;
        v45 = sub_1004A5824();
        v47 = sub_10015BA6C(v45, v46, v86);

        *(v36 + 33) = v47;
        v48 = v71;
        v49 = v76;
        v50 = v76;
        v51 = "[%.*hhx-%{public}s] Did create '%{sensitive,mask.mailbox}s'.";
        goto LABEL_19;
      }

      sub_100019718(v32, type metadata accessor for Task.Logger);

      sub_100019718(v33, type metadata accessor for Task.Logger);
      v15 = v33;
      v9 = v81;
      v12 = v32;
      v23 = v77;
    }

    else
    {
      sub_100019648(a2, v9, type metadata accessor for Task.Logger);
      v52 = v72;
      sub_100019648(a2, v72, type metadata accessor for Task.Logger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v53 = sub_1004A4A54();
      v54 = sub_1004A6014();

      LODWORD(v76) = v54;
      if (os_log_type_enabled(v53, v54))
      {
        v71 = v53;
        v36 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v86[0] = v70;
        *v36 = v73;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v55 = v9;
        v56 = v74;
        v57 = v52;
        v58 = *(v52 + *(v74 + 20));
        sub_100019718(v57, type metadata accessor for Task.Logger);
        *(v36 + 10) = v58;
        *(v36 + 11) = 2082;
        v59 = &v55[*(v56 + 20)];
        v60 = v59[1];
        v62 = v59[2];
        v61 = v59[3];
        sub_100018BD0(*v59, v60, v62, v61, v59[4]);
        sub_100019718(v81, type metadata accessor for Task.Logger);
        if (v61 < 0)
        {
        }

        v63 = sub_10015BA6C(v60, v62, v86);

        *(v36 + 13) = v63;
        *(v36 + 21) = 2160;
        *(v36 + 23) = 0x786F626C69616DLL;
        *(v36 + 31) = 2085;
        v84 = v29;
        v85 = v83;
        v64 = sub_1004A5824();
        v66 = sub_10015BA6C(v64, v65, v86);

        *(v36 + 33) = v66;
        v48 = v76;
        v49 = v71;
        v50 = v71;
        v51 = "[%.*hhx-%{public}s] Failed to create '%{sensitive,mask.mailbox}s'.";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v50, v48, v51, v36, 0x29u);
        swift_arrayDestroy();

        v12 = v78;
        v3 = v79;
        a2 = v75;
        v15 = v80;
        v9 = v81;
        v23 = v77;
      }

      else
      {
        sub_100019718(v52, type metadata accessor for Task.Logger);

        sub_100019718(v9, type metadata accessor for Task.Logger);
        v12 = v78;
        v3 = v79;
        v15 = v80;
      }
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      v67 = v69;
      sub_10010F2A4(v68);

      *(v67 + 137) = 1;
      return;
    }

    v22 = *(v18 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1000189A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1000180F0(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

uint64_t ServerID.osVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t sub_100018A58()
{
  result = qword_1005CD1E0;
  if (!qword_1005CD1E0)
  {
    result = swift_getWitnessTable(byte_1004CEDBC, &type metadata for CreateMailboxes.ActionID, v0, v1);
    atomic_store(result, &qword_1005CD1E0);
  }

  return result;
}

unint64_t sub_100018AB0()
{
  result = qword_1005CD1E8;
  if (!qword_1005CD1E8)
  {
    result = swift_getWitnessTable(byte_1004CED94, &type metadata for CreateMailboxes.CommandID, v0, v1);
    atomic_store(result, &qword_1005CD1E8);
  }

  return result;
}

unint64_t sub_100018B04(uint64_t a1)
{
  result = sub_100018B2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100018B2C()
{
  result = qword_1005CD268;
  if (!qword_1005CD268)
  {
    result = swift_getWitnessTable(aY_32, &type metadata for CreateMailboxes, v0, v1);
    atomic_store(result, &qword_1005CD268);
  }

  return result;
}

BOOL sub_100018B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0 || a2 != a4)
    {
      return 0;
    }
  }

  else if ((a4 & 0x100000000) != 0 || a2 != a4)
  {
    return 0;
  }

  return (sub_1000FFC98(a1, a3) & 1) != 0;
}

double sub_100018BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
  }

  return result;
}

void *sub_100018C20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v33 = a3;
  v40 = type metadata accessor for TaskHistory.Running(0);
  v32 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v32 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v35 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  result = sub_100110EA0(a1, a2 | ((HIDWORD(a2) & 1) << 32), a5);
  v36 = result[2];
  if (!v36)
  {
LABEL_19:
    v31 = 0;
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
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_100019718(v14, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v22 += v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  v24 = *&v14[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
  sub_100019718(v14, type metadata accessor for ClientCommand);
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
        sub_100019718(v9, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v29 = *(v9 + 2);
        v30 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
        sub_100019718(&v9[*(v30 + 64)], type metadata accessor for ClientCommand);
        if (v29 == v21)
        {
          goto LABEL_3;
        }
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v31 = 1;
LABEL_20:

  return v31;
}

uint64_t sub_100018FF4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v32 = a2;
  v39 = type metadata accessor for TaskHistory.Running(0);
  v31 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v34 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  result = sub_100110AA0(a1 & 1, a4);
  v35 = *(result + 16);
  if (!v35)
  {
LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  v18 = 0;
  v33 = result + 32;
  v36 = result;
  while (1)
  {
    if (v18 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v38 = v18;
    v19 = *(v37 + 16);
    if (v19)
    {
      break;
    }

LABEL_3:
    v18 = v38 + 1;
    result = v36;
    if (v38 + 1 == v35)
    {
      goto LABEL_19;
    }
  }

  v20 = *(v33 + 4 * v38);
  v21 = v37 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v22 = *(v34 + 72);
  while (1)
  {
    sub_100019648(v21, v16, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v16, v13, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_100019718(v13, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v21 += v22;
    if (!--v19)
    {
      goto LABEL_3;
    }
  }

  v23 = *&v13[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
  sub_100019718(v13, type metadata accessor for ClientCommand);
  if (v23 != v20)
  {
    goto LABEL_8;
  }

  v24 = *(v32 + 16);
  if (v24)
  {
    v25 = v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v26 = *(v31 + 72);
    do
    {
      sub_100019648(v25, v10, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v10, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100019718(v7, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v27 = *(v7 + 2);
        v28 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
        sub_100019718(&v7[*(v28 + 64)], type metadata accessor for ClientCommand);
        if (v27 == v20)
        {
          goto LABEL_3;
        }
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v29 = 1;
LABEL_20:

  return v29;
}

uint64_t sub_1000193BC(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019648(a1, v5, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    return sub_100019718(v5, type metadata accessor for UntaggedResponse);
  }

  v6 = 0;
  v7 = *(v5 + 1);
  v8 = *(v5 + 4);
  result = *(v5 + 5);
  v10 = *(v1 + 64);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  while (1)
  {
LABEL_5:
    if (!v13)
    {
      while (1)
      {
        v14 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v14 >= ((v11 + 63) >> 6))
        {
        }

        v13 = *(v10 + 64 + 8 * v14);
        ++v6;
        if (v13)
        {
          v6 = v14;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_10:
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v16 = (*(v10 + 56) + ((v6 << 10) | (16 * v15)));
    if ((v16[2] | (v16[2] << 32)) == (v8 | (v8 << 32)))
    {
      v17 = *v16;
      v18 = *(*v16 + 16);
      if (v18 == *(v7 + 16))
      {
        break;
      }
    }
  }

  if (v18)
  {
    v19 = v17 == v7;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
LABEL_20:

    sub_100088220(v22, v7, v8);
  }

  v20 = (v17 + 32);
  v21 = (v7 + 32);
  while (v18)
  {
    if (*v20 != *v21)
    {
      goto LABEL_5;
    }

    ++v20;
    ++v21;
    if (!--v18)
    {
      goto LABEL_20;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100019610()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000196B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100019718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000197E0(void *a1)
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

uint64_t sub_100019844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v32 = a2;
  v39 = type metadata accessor for TaskHistory.Running(0);
  v31 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v34 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  result = sub_100111658(a1, a4);
  v35 = *(result + 16);
  if (!v35)
  {
LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  v18 = 0;
  v33 = result + 32;
  v36 = result;
  while (1)
  {
    if (v18 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v38 = v18;
    v19 = *(v37 + 16);
    if (v19)
    {
      break;
    }

LABEL_3:
    v18 = v38 + 1;
    result = v36;
    if (v38 + 1 == v35)
    {
      goto LABEL_19;
    }
  }

  v20 = *(v33 + 4 * v38);
  v21 = v37 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v22 = *(v34 + 72);
  while (1)
  {
    sub_100019648(v21, v16, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v16, v13, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_100019718(v13, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v21 += v22;
    if (!--v19)
    {
      goto LABEL_3;
    }
  }

  v23 = *&v13[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
  sub_100019718(v13, type metadata accessor for ClientCommand);
  if (v23 != v20)
  {
    goto LABEL_8;
  }

  v24 = *(v32 + 16);
  if (v24)
  {
    v25 = v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v26 = *(v31 + 72);
    do
    {
      sub_100019648(v25, v10, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v10, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100019718(v7, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v27 = *(v7 + 2);
        v28 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
        sub_100019718(&v7[*(v28 + 64)], type metadata accessor for ClientCommand);
        if (v27 == v20)
        {
          goto LABEL_3;
        }
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v29 = 1;
LABEL_20:

  return v29;
}

uint64_t sub_100019C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __n128))
{
  v38 = a2;
  v33 = a1;
  v40 = type metadata accessor for TaskHistory.Running(0);
  v32 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v35 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v31 - v16;
  result = a4(a3, v15);
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

    v39 = v19;
    v20 = *(v38 + 16);
    if (v20)
    {
      break;
    }

LABEL_3:
    v19 = v39 + 1;
    result = v37;
    if (v39 + 1 == v36)
    {
      goto LABEL_19;
    }
  }

  v21 = *(v34 + 4 * v39);
  v22 = v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v23 = *(v35 + 72);
  while (1)
  {
    sub_100019648(v22, v17, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v17, v13, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_100019718(v13, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v22 += v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  v24 = *&v13[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
  sub_100019718(v13, type metadata accessor for ClientCommand);
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
      sub_100019648(v26, v10, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v10, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100019718(v7, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v28 = *(v7 + 2);
        v29 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
        sub_100019718(&v7[*(v29 + 64)], type metadata accessor for ClientCommand);
        if (v28 == v21)
        {
          goto LABEL_3;
        }
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

void *sub_10001A004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v34 = a3;
  v41 = type metadata accessor for TaskHistory.Running(0);
  v33 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v36 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  result = sub_10011210C(a1, a2, a5);
  v37 = result[2];
  if (!v37)
  {
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  v20 = 0;
  v35 = result + 4;
  v38 = result;
  while (1)
  {
    if (v20 >= result[2])
    {
      __break(1u);
      return result;
    }

    v40 = v20;
    v21 = *(v39 + 16);
    if (v21)
    {
      break;
    }

LABEL_3:
    v20 = v40 + 1;
    result = v38;
    if (v40 + 1 == v37)
    {
      goto LABEL_19;
    }
  }

  v22 = *(v35 + v40);
  v23 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v24 = *(v36 + 72);
  while (1)
  {
    sub_100019648(v23, v18, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v18, v15, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_100019718(v15, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v23 += v24;
    if (!--v21)
    {
      goto LABEL_3;
    }
  }

  v25 = *&v15[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
  sub_100019718(v15, type metadata accessor for ClientCommand);
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
      sub_100019648(v27, v12, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v12, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100019718(v9, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v29 = *(v9 + 2);
        v30 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
        sub_100019718(&v9[*(v30 + 64)], type metadata accessor for ClientCommand);
        if (v29 == v22)
        {
          goto LABEL_3;
        }
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

uint64_t sub_10001A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v32 = a2;
  v39 = type metadata accessor for TaskHistory.Running(0);
  v31 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v34 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  result = sub_100112498(a1, a4);
  v35 = *(result + 16);
  if (!v35)
  {
LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  v18 = 0;
  v33 = result + 32;
  v36 = result;
  while (1)
  {
    if (v18 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v38 = v18;
    v19 = *(v37 + 16);
    if (v19)
    {
      break;
    }

LABEL_3:
    v18 = v38 + 1;
    result = v36;
    if (v38 + 1 == v35)
    {
      goto LABEL_19;
    }
  }

  v20 = *(v33 + 4 * v38);
  v21 = v37 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v22 = *(v34 + 72);
  while (1)
  {
    sub_100019648(v21, v16, type metadata accessor for TaskHistory.Previous);
    sub_1000196B0(v16, v13, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_100019718(v13, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v21 += v22;
    if (!--v19)
    {
      goto LABEL_3;
    }
  }

  v23 = *&v13[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
  sub_100019718(v13, type metadata accessor for ClientCommand);
  if (v23 != v20)
  {
    goto LABEL_8;
  }

  v24 = *(v32 + 16);
  if (v24)
  {
    v25 = v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v26 = *(v31 + 72);
    do
    {
      sub_100019648(v25, v10, type metadata accessor for TaskHistory.Running);
      sub_1000196B0(v10, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100019718(v7, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v27 = *(v7 + 2);
        v28 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
        sub_100019718(&v7[*(v28 + 64)], type metadata accessor for ClientCommand);
        if (v27 == v20)
        {
          goto LABEL_3;
        }
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v29 = 1;
LABEL_20:

  return v29;
}

void *sub_10001A7A8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_10001A7BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001A804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001A868(uint64_t *a1, int a2)
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

uint64_t sub_10001A8B0(uint64_t result, int a2, int a3)
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

void sub_10001A8FC(char *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(a2 + 48) + ((v9 << 10) | (16 * v10));
      sub_10001B7CC(*v11, *(v11 + 8));
      if (v12)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v25 = v13;
    v26 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_10008578C(0, *(a1 + 2) + 1, 1, a1);
    }

    v16 = *(a1 + 2);
    v15 = *(a1 + 3);
    v17 = v16 + 1;
    v18 = v26;
    v19 = v25;
    if (v16 >= v15 >> 1)
    {
      v24 = v16 + 1;
      v21 = a1;
      v22 = *(a1 + 2);
      v23 = sub_10008578C((v15 > 1), v16 + 1, 1, v21);
      v16 = v22;
      v17 = v24;
      v19 = v25;
      a1 = v23;
      v18 = v26;
    }

    *(a1 + 2) = v17;
    v20 = &a1[16 * v16];
    *(v20 + 4) = v18;
    *(v20 + 5) = v19;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
}

BOOL sub_10001AB04(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!v4)
  {
    return v5 == 0;
  }

  return v5 && a1[1] == a2[1] && (sub_1000FFC98(v4, v5) & 1) != 0;
}

uint64_t sub_10001AB64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100162C44(_swiftEmptyArrayStorage);
  a2[7] = v4;
  v30 = a2;
  a2[9] = _swiftEmptySetSingleton;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    v12 = *(a1 + 56) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
    v13 = *v12;
    v14 = *(v12 + 8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_100063B5C(v13, v14);
    v18 = v4[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_23;
    }

    v22 = v17;
    if (v4[3] < v21)
    {
      sub_1000C3604(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_100063B5C(v13, v14);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v27 = v16;
    sub_10013A630();
    v16 = v27;
    if (v22)
    {
LABEL_4:
      v10 = v16;

      *(v4[7] + v10) = 0;
      goto LABEL_5;
    }

LABEL_17:
    v4[(v16 >> 6) + 8] |= 1 << v16;
    v24 = v4[6] + 16 * v16;
    *v24 = v13;
    *(v24 + 8) = v14;
    *(v4[7] + v16) = 0;
    v25 = v4[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_24;
    }

    v4[2] = v26;
LABEL_5:
    v7 &= v7 - 1;
    v30[7] = v4;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_10001ADD4(a1);
      v30[6] = v28;
      v30[8] = a1;
      *v30 = &type metadata for DeleteMailboxes;
      return sub_1004A6674();
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void sub_10001ADD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_100091C28(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1004A6554();
    v5 = 0;
    v6 = *(v2 + 36);
    v24 = v2 + 72;
    v25 = v1;
    v26 = v6;
    v27 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v28 = v5;
      v9 = (*(v2 + 48) + 16 * v4);
      v10 = *v9;
      v30 = v9[1];
      v11 = *(v2 + 56) + 16 * v4;
      v12 = v2;
      v13 = *v11;
      v29 = *(v11 + 8);
      v14 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];

      if (v14 >= v15 >> 1)
      {
        sub_100091C28((v15 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v16 = &_swiftEmptyArrayStorage[4 * v14];
      v16[4] = v10;
      v16[5] = v30;
      v16[6] = v13;
      *(v16 + 14) = v29;
      v7 = 1 << *(v12 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v2 = v12;
      v3 = v27;
      v17 = *(v27 + 8 * v8);
      if ((v17 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v26;
      if (v26 != *(v2 + 36))
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v4 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_100020944(v4, v26, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_100020944(v4, v26, 0);
      }

LABEL_4:
      v5 = v28 + 1;
      v4 = v7;
      if (v28 + 1 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_10001B048(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = *(v1 + 56);
  if (*(v15 + 16) == 1 && (sub_10012D504(v15), v16))
  {
    v18 = v16;
    v19 = v17;
    sub_100021190(a1, v14, type metadata accessor for Task.Logger);
    sub_100021190(a1, v11, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v20 = sub_1004A4A54();
    v21 = sub_1004A6034();

    if (os_log_type_enabled(v20, v21))
    {
      v45 = v19;
      v22 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v22 = 68158723;
      *(v22 + 4) = 2;
      *(v22 + 8) = 256;
      v23 = *&v11[*(v3 + 20)];
      sub_100020E7C(v11, type metadata accessor for Task.Logger);
      *(v22 + 10) = v23;
      *(v22 + 11) = 2082;
      v24 = &v14[*(v3 + 20)];
      v25 = v24[1];
      v26 = v24[2];
      v27 = v24[3];
      sub_100018BD0(*v24, v25, v26, v27, v24[4]);
      sub_100020E7C(v14, type metadata accessor for Task.Logger);
      if (v27 < 0)
      {
      }

      v28 = sub_10015BA6C(v25, v26, &v46);

      *(v22 + 13) = v28;
      *(v22 + 21) = 2160;
      *(v22 + 23) = 0x786F626C69616DLL;
      *(v22 + 31) = 2085;
      v47 = v18;
      v48 = v45;
      v29 = sub_1004A5824();
      v31 = sub_10015BA6C(v29, v30, &v46);

      *(v22 + 33) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%.*hhx-%{public}s] Created task for '%{sensitive,mask.mailbox}s'", v22, 0x29u);
      swift_arrayDestroy();

LABEL_11:

      return;
    }

    sub_100020E7C(v11, type metadata accessor for Task.Logger);

    v42 = v14;
  }

  else
  {
    sub_100021190(a1, v8, type metadata accessor for Task.Logger);
    sub_100021190(a1, v5, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100020FF0(v1, &v47);
    v20 = sub_1004A4A54();
    v32 = sub_1004A6034();
    if (os_log_type_enabled(v20, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 68158466;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      v35 = *&v5[*(v3 + 20)];
      sub_100020E7C(v5, type metadata accessor for Task.Logger);
      *(v33 + 10) = v35;
      *(v33 + 11) = 2082;
      v36 = &v8[*(v3 + 20)];
      v37 = v36[1];
      v38 = v36[2];
      v39 = v36[3];
      sub_100018BD0(*v36, v37, v38, v39, v36[4]);
      sub_100020E7C(v8, type metadata accessor for Task.Logger);
      if (v39 < 0)
      {
      }

      v40 = sub_10015BA6C(v37, v38, &v46);

      *(v33 + 13) = v40;
      *(v33 + 21) = 2048;
      v41 = *(v49 + 16);
      sub_100021028(&v47);
      *(v33 + 23) = v41;
      _os_log_impl(&_mh_execute_header, v20, v32, "[%.*hhx-%{public}s] Created task for %ld mailboxes.", v33, 0x1Fu);
      sub_1000197E0(v34);

      goto LABEL_11;
    }

    sub_100021028(&v47);
    sub_100020E7C(v5, type metadata accessor for Task.Logger);

    v42 = v8;
  }

  sub_100020E7C(v42, type metadata accessor for Task.Logger);
}

void sub_10001B584(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 72);
  if (*(v6 + 16))
  {
    v7 = sub_1004A6554();
    v8 = sub_10011080C(v7, *(v6 + 36));
    v10 = v9;
    *v5 = v8;
    *(v5 + 2) = v9;
    swift_storeEnumTagMultiPayload();
    v11 = sub_10000C9C0(qword_1005CD320, &qword_1004CF000);
    v12 = *(v11 + 48);
    *a1 = v8;
    *(a1 + 8) = v10;
    sub_100021128(v5, a1 + v12, type metadata accessor for ClientCommand);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    v13 = sub_10000C9C0(qword_1005CD320, &qword_1004CF000);
    v14 = *(*(v13 - 8) + 56);

    v14(a1, 1, 1, v13);
  }
}

void sub_10001B748()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = sub_1004A6554();
    sub_10001D4A8(&v3, v2, *(v1 + 36));
  }
}

void sub_10001B7CC(uint64_t a1, unsigned int a2)
{
  v3 = *(v2 + 48);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (1)
    {
      v7 = v6 + 32 * v5;
      if ((*(v7 + 24) | (*(v7 + 24) << 32)) == (a2 | (a2 << 32)))
      {
        v8 = *(v7 + 16);
        v9 = *(v8 + 16);
        if (v9 == *(a1 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v5 == v4)
      {
        return;
      }
    }

    if (v9)
    {
      v10 = v8 == a1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
LABEL_14:
    }

    else
    {
      v11 = (v8 + 32);
      v12 = (a1 + 32);
      while (v9)
      {
        if (*v11 != *v12)
        {
          goto LABEL_3;
        }

        ++v11;
        ++v12;
        if (!--v9)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_10001B894(uint64_t a1, uint64_t a2)
{
  v108 = a1;
  v112 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v112);
  v5 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v103 - v7;
  __chkstk_darwin(v9);
  v11 = &v103 - v10;
  __chkstk_darwin(v12);
  v14 = &v103 - v13;
  __chkstk_darwin(v15);
  v17 = &v103 - v16;
  __chkstk_darwin(v18);
  v120 = &v103 - v19;
  v20 = *(v2 + 56);
  v21 = *(v20 + 64);
  v119 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;

  v26 = v14;
  v27 = 0;
  *&v28 = 68158723;
  v109 = v28;
  v114 = v8;
  v115 = v20;
  v113 = a2;
  v110 = v11;
  v111 = v5;
  v118 = v14;
  v104 = v17;
  v117 = v25;
  while (v24)
  {
    v29 = v120;
LABEL_12:
    v31 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v32 = v31 | (v27 << 6);
    v33 = *(v20 + 56);
    v34 = *(v20 + 48) + 16 * v32;
    v121 = *v34;
    v17 = *(v34 + 8);
    v35 = *(v33 + v32);
    if (v35 > 1)
    {
      if (v35 == 2)
      {
LABEL_19:
        sub_100021190(a2, v8, type metadata accessor for Task.Logger);
        sub_100021190(a2, v5, type metadata accessor for Task.Logger);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v52 = a2;
        v53 = sub_1004A4A54();
        v54 = sub_1004A6034();

        if (os_log_type_enabled(v53, v54))
        {
          LODWORD(v106) = v54;
          v107 = v53;
          v116 = v17;
          v55 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v124[0] = v105;
          *v55 = v109;
          *(v55 + 4) = 2;
          *(v55 + 8) = 256;
          v56 = v112;
          v57 = *&v5[*(v112 + 20)];
          sub_100020E7C(v5, type metadata accessor for Task.Logger);
          *(v55 + 10) = v57;
          *(v55 + 11) = 2082;
          v58 = &v8[*(v56 + 20)];
          v59 = v58[1];
          v60 = v58[2];
          v17 = v58[3];
          sub_100018BD0(*v58, v59, v60, v17, v58[4]);
          sub_100020E7C(v8, type metadata accessor for Task.Logger);
          if (v17 < 0)
          {
          }

          v61 = sub_10015BA6C(v59, v60, v124);

          *(v55 + 13) = v61;
          *(v55 + 21) = 2160;
          *(v55 + 23) = 0x786F626C69616DLL;
          *(v55 + 31) = 2085;
          v122 = v121;
          LODWORD(v123) = v116;
          v62 = sub_1004A5824();
          v64 = sub_10015BA6C(v62, v63, v124);

          *(v55 + 33) = v64;
          v51 = v107;
          _os_log_impl(&_mh_execute_header, v107, v106, "[%.*hhx-%{public}s] Failed to delete '%{sensitive,mask.mailbox}s'.", v55, 0x29u);
          swift_arrayDestroy();
          goto LABEL_27;
        }

        sub_100020E7C(v5, type metadata accessor for Task.Logger);

        sub_100020E7C(v8, type metadata accessor for Task.Logger);
        v25 = v117;
        v26 = v118;
        a2 = v52;
        v20 = v115;
      }

      else
      {
        sub_100021190(a2, v26, type metadata accessor for Task.Logger);
        v65 = v11;
        sub_100021190(a2, v11, type metadata accessor for Task.Logger);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v66 = sub_1004A4A54();
        v67 = sub_1004A6034();

        if (os_log_type_enabled(v66, v67))
        {
          LODWORD(v106) = v67;
          v107 = v66;
          v116 = v17;
          v68 = swift_slowAlloc();
          v124[0] = swift_slowAlloc();
          *v68 = v109;
          *(v68 + 4) = 2;
          *(v68 + 8) = 256;
          v69 = v118;
          v70 = v112;
          v71 = *(v65 + *(v112 + 20));
          sub_100020E7C(v65, type metadata accessor for Task.Logger);
          *(v68 + 10) = v71;
          *(v68 + 11) = 2082;
          v72 = (v69 + *(v70 + 20));
          v73 = v72[1];
          v74 = v72[2];
          v17 = v72[3];
          sub_100018BD0(*v72, v73, v74, v17, v72[4]);
          sub_100020E7C(v69, type metadata accessor for Task.Logger);
          if (v17 < 0)
          {
          }

          v75 = sub_10015BA6C(v73, v74, v124);

          *(v68 + 13) = v75;
          *(v68 + 21) = 2160;
          *(v68 + 23) = 0x786F626C69616DLL;
          *(v68 + 31) = 2085;
          v122 = v121;
          LODWORD(v123) = v116;
          v76 = sub_1004A5824();
          v78 = sub_10015BA6C(v76, v77, v124);

          *(v68 + 33) = v78;
          v51 = v107;
          _os_log_impl(&_mh_execute_header, v107, v106, "[%.*hhx-%{public}s] Did delete '%{sensitive,mask.mailbox}s'.", v68, 0x29u);
          swift_arrayDestroy();
LABEL_27:

          v8 = v114;
          v20 = v115;
          a2 = v113;
          v11 = v110;
          v5 = v111;
          v25 = v117;
          v26 = v118;
        }

        else
        {
          sub_100020E7C(v65, type metadata accessor for Task.Logger);

          v79 = v118;
          sub_100020E7C(v118, type metadata accessor for Task.Logger);
          v25 = v117;
          v11 = v65;
          v8 = v114;
          v26 = v79;
        }
      }
    }

    else
    {
      if (!v35)
      {
        goto LABEL_19;
      }

      v116 = *(v34 + 8);
      sub_100021190(a2, v29, type metadata accessor for Task.Logger);
      v36 = v104;
      sub_100021190(a2, v104, type metadata accessor for Task.Logger);
      v17 = v121;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v37 = sub_1004A4A54();
      v38 = sub_1004A6034();

      if (os_log_type_enabled(v37, v38))
      {
        LODWORD(v107) = v38;
        v106 = v37;
        v39 = swift_slowAlloc();
        v124[0] = swift_slowAlloc();
        *v39 = v109;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v40 = v112;
        v41 = *(v36 + *(v112 + 20));
        v17 = type metadata accessor for Task.Logger;
        sub_100020E7C(v36, type metadata accessor for Task.Logger);
        *(v39 + 10) = v41;
        *(v39 + 11) = 2082;
        v42 = v120;
        v43 = (v120 + *(v40 + 20));
        v44 = v43[1];
        v45 = v43[2];
        v46 = v43[3];
        sub_100018BD0(*v43, v44, v45, v46, v43[4]);
        sub_100020E7C(v42, type metadata accessor for Task.Logger);
        if (v46 < 0)
        {
        }

        v47 = sub_10015BA6C(v44, v45, v124);

        *(v39 + 13) = v47;
        *(v39 + 21) = 2160;
        *(v39 + 23) = 0x786F626C69616DLL;
        *(v39 + 31) = 2085;
        v122 = v121;
        LODWORD(v123) = v116;
        v48 = sub_1004A5824();
        v50 = sub_10015BA6C(v48, v49, v124);

        *(v39 + 33) = v50;
        v51 = v106;
        _os_log_impl(&_mh_execute_header, v106, v107, "[%.*hhx-%{public}s] Skipped deleting '%{sensitive,mask.mailbox}s' because it's in use.", v39, 0x29u);
        swift_arrayDestroy();
        goto LABEL_27;
      }

      sub_100020E7C(v36, type metadata accessor for Task.Logger);

      sub_100020E7C(v120, type metadata accessor for Task.Logger);
      v25 = v117;
      v26 = v118;
      v8 = v114;
    }
  }

  v29 = v120;
  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v30 >= v25)
    {
      break;
    }

    v24 = *(v119 + 8 * v30);
    ++v27;
    if (v24)
    {
      v27 = v30;
      goto LABEL_12;
    }
  }

  v80 = sub_10001D590(v20, sub_10001D7EC, sub_10001D7EC);
  v81 = v80;
  v82 = v80[2];
  if (!v82)
  {
    goto LABEL_33;
  }

  v29 = sub_1001354C0(v80[2], 0);
  v83 = sub_1001391AC(&v122, v29 + 32, v82, v81);
  sub_100020D08(v122);
  v84 = v83 == v82;
  v17 = v108;
  if (!v84)
  {
    __break(1u);
LABEL_33:

    v29 = _swiftEmptyArrayStorage;
    v17 = v108;
  }

  sub_10001C4FC(v29);
  v86 = (v17 + 176);
  v85 = *(v17 + 176);
  if (*(v17 + 192) != 1)
  {

    goto LABEL_46;
  }

  v88 = *(v17 + 184);
  v122 = *(v17 + 168);
  v87 = v122;

  sub_100020D10(v87, v85, v88, 1);
  v17 = sub_10001E840(&v122, v29);

  v89 = v122;
  v90 = *(v122 + 16);
  if (v17 > v90)
  {
    goto LABEL_63;
  }

  if (v17 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    result = sub_1000854D0(0, *(v29 + 16) + 1, 1, v29);
    v29 = result;
    goto LABEL_57;
  }

  if (__OFADD__(v90, v17 - v90))
  {
    goto LABEL_65;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v17 > *(v89 + 3) >> 1)
  {
    if (v90 <= v17)
    {
      v92 = v17;
    }

    else
    {
      v92 = v90;
    }

    v89 = sub_1000853A8(isUniquelyReferenced_nonNull_native, v92, 1, v89);
    v122 = v89;
  }

  sub_1001624F4(v17, v90, 0);

  v29 = 1;
  result = sub_100020D58(v87, v85, v88, 1);
  v17 = v108;
  *(v108 + 168) = v89;
  *v86 = 0;
  v86[1] = 0;
  *(v17 + 192) = 1;
  v20 = v115;
LABEL_46:
  v94 = 0;
  *(v17 + 137) = 1;
  v95 = 1 << *(v20 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  v97 = v96 & *(v20 + 64);
  v98 = (v95 + 63) >> 6;
  do
  {
    if (!v97)
    {
      while (1)
      {
        v99 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_62;
        }

        if (v99 >= v98)
        {
          return result;
        }

        v97 = *(v119 + 8 * v99);
        ++v94;
        if (v97)
        {
          v94 = v99;
          goto LABEL_55;
        }
      }
    }

    v99 = v94;
LABEL_55:
    v100 = __clz(__rbit64(v97));
    v97 &= v97 - 1;
  }

  while (*(*(v20 + 56) + (v100 | (v99 << 6))) != 1);
  v29 = *(v17 + 248);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_57:
  v102 = *(v29 + 16);
  v101 = *(v29 + 24);
  if (v102 >= v101 >> 1)
  {
    result = sub_1000854D0((v101 > 1), v102 + 1, 1, v29);
    v29 = result;
  }

  *(v29 + 16) = v102 + 1;
  *(v29 + v102 + 32) = 3;
  *(v17 + 248) = v29;
  return result;
}

unint64_t sub_10001C4FC(unint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (result + 40);
    do
    {
      if (*(v3 + 48))
      {
        result = sub_100063B5C(*(v4 - 1), *v4);
        if (v5)
        {
          v6 = result;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v8 = *(v3 + 48);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10013A2D4();
          }

          result = sub_10013D1E8(v6, v8);
          *(v3 + 48) = v8;
        }
      }

      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10001C5CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_10001E238(a1, a2);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

void sub_10001C604(uint64_t *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  sub_100010880(a6, a2, a3, a4, a5);
  if (v7)
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v6 + 56);
  sub_10001CBD8(3, v8, v9, isUniquelyReferenced_nonNull_native);
  *(v6 + 56) = v11;
}

unint64_t sub_10001C6AC(unint64_t result, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  v6 = a5[7] + 72 * result;
  *(v6 + 64) = *(a4 + 64);
  v7 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v7;
  v8 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_10001C714(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10001C75C(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  result = sub_100021128(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for MoveAndCopyMessages.CommandID);
  *(a4[7] + a1) = a3 & 1;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10001C814(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_10001C858(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_10001C89C(unint64_t result, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10001C8E8(unint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6] + 16 * a1;
  *v8 = a2;
  *(v8 + 8) = a3;
  v9 = a5[7];
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  result = sub_100020950(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_10001C990(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  result = sub_100020950(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_10001CA34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100063B5C(a2, a3);
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
      sub_1000C2FD4(v16, a4 & 1);
      v11 = sub_100063B5C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1004A6E24();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10013A2D4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    sub_1000209C0(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = v21[6] + 16 * v11;
  *v23 = a2;
  *(v23 + 8) = a3;
  v24 = v21[7] + 72 * v11;
  *v24 = *a1;
  v25 = *(a1 + 16);
  v26 = *(a1 + 32);
  v27 = *(a1 + 48);
  *(v24 + 64) = *(a1 + 64);
  *(v24 + 32) = v26;
  *(v24 + 48) = v27;
  *(v24 + 16) = v25;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

void sub_10001CBD8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100063B5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000C3604(v16, a4 & 1);
      v11 = sub_100063B5C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1004A6E24();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10013A630();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = v21[6] + 16 * v11;
  *v22 = a2;
  *(v22 + 8) = a3;
  *(v21[7] + v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_10001CD40(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100063D94(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_10013AB24();
    result = v19;
    goto LABEL_8;
  }

  sub_1000C3F58(v16, a4 & 1);
  result = sub_100063D94(a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = v21[7] + 12 * result;
      *v22 = a1;
      *(v22 + 8) = a2 & 1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = v21[7] + 12 * result;
    *v23 = a1;
    *(v23 + 8) = a2 & 1;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

unint64_t sub_10001CE90(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = a2;
  v8 = *v3;
  result = sub_100067004();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000C3B80(v14, a3 & 1);
      result = sub_100067004();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10013A934();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = v6;
    v21 = v19[7] + 184 * result;
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[3];
    *(v21 + 32) = a1[2];
    *(v21 + 48) = v24;
    *v21 = v22;
    *(v21 + 16) = v23;
    v25 = a1[4];
    v26 = a1[5];
    v27 = a1[7];
    *(v21 + 96) = a1[6];
    *(v21 + 112) = v27;
    *(v21 + 64) = v25;
    *(v21 + 80) = v26;
    v28 = a1[8];
    v29 = a1[9];
    v30 = a1[10];
    *(v21 + 176) = *(a1 + 176);
    *(v21 + 144) = v29;
    *(v21 + 160) = v30;
    *(v21 + 128) = v28;
    v31 = v19[2];
    v13 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v13)
    {
      v19[2] = v32;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 184 * result;

  return sub_1000210AC(a1, v20);
}

unint64_t sub_10001D018(char a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a4;
  v12 = *v5;
  result = sub_100067004();
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000C5638(v18, a5 & 1);
      result = sub_100067004();
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_10013B74C();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 4 * result) = v8;
    v25 = v23[7] + 24 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3 & 1;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * result;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3 & 1;
}

uint64_t sub_10001D19C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_100063E04(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + v13) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = sub_10013B8C8();
    goto LABEL_7;
  }

  sub_1000C58F4(result, a3 & 1);
  result = sub_100063E04(a2);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_14:
    result = sub_1004A6E24();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100021190(a2, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_10001C75C(v13, v10, a1 & 1, v19);
}

unint64_t sub_10001D314(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v9 = a5;
  v14 = *v6;
  result = sub_100067004();
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1000C38BC(v20, a6 & 1);
      result = sub_100067004();
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_10013A7B4();
      result = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 4 * result) = v9;
    v27 = v25[7] + 32 * result;
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3 & 1;
    *(v27 + 24) = a4;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v26 = v25[7] + 32 * result;
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = a3 & 1;
  *(v26 + 24) = a4;
}

void sub_10001D4A8(uint64_t a1, Swift::Int a2, int a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100139FEC();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(v9 + 56) + 16 * a2;
    v11 = *v10;
    LODWORD(v10) = *(v10 + 8);
    *a1 = v11;
    *(a1 + 8) = v10;
    sub_10013D044(a2, v9);
    *v4 = v9;
    return;
  }

LABEL_10:
  __break(1u);
}

void *sub_10001D590(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_10001D8D8(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_10001D700(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 3)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1000B17A0(result, a2, v4, a3);
        return;
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

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10001D7EC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) != 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1000B17A0(result, a2, v4, a3);
        return;
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

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_10001D8D8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t static MailboxName.== infix(_:_:)(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (!v4 || result == a3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (a3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D9C4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(a5 + 56) + 16 * a2;
    v7 = *v6;
    LODWORD(v6) = *(v6 + 8);
    *result = v7;
    *(result + 8) = v6;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10001DA68(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    *a1 = *(*(a5 + 56) + a2);

    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_10001DAEC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(a5 + 56) + 32 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    LODWORD(v6) = *(v6 + 24);
    *result = v7;
    *(result + 8) = v8;
    *(result + 16) = v9;
    *(result + 24) = v6;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_10001DBA4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  if (!v4)
  {
    return v5 == 0;
  }

  return v5 && *(a1 + 16) == a2[1] && (sub_1000FFC98(v4, v5) & 1) != 0;
}

BOOL sub_10001DC14(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 & 0x3000000000000000;
  v9 = (v5 >> 60) & 3;
  if (!v9)
  {
    if (!v8)
    {
      return sub_10003A194(v4, v5, v6, v7);
    }

    return 0;
  }

  if (v9 == 1)
  {
    if (v8 == 0x1000000000000000)
    {
      v5 &= 0xCFFFFFFFFFFFFFFFLL;
      v7 &= 0xCFFFFFFFFFFFFFFFLL;
      return sub_10003A194(v4, v5, v6, v7);
    }

    return 0;
  }

  return v8 == 0x2000000000000000 && v6 == 0 && v7 == 0x2000000000000000;
}

void *sub_10001DCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;

  v4 = sub_10009E544(sub_100021058, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = _swiftEmptyArrayStorage;
    v6 = v4;
    sub_100091AA8(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = v15[2];
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = v8[3];
      if (v9 >= v12 >> 1)
      {
        sub_100091AA8((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      v8[2] = v9 + 1;
      *(v8 + v9 + 8) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void *sub_10001DE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  result = sub_10001DCD8(a1, a2, a4);
  v14 = result;
  v24 = result[2];
  if (v24)
  {
    v15 = 0;
    v22 = result + 4;
    while (v15 < v14[2])
    {
      v16 = *(v25 + 16);
      if (v16)
      {
        v17 = *(v22 + v15);
        v18 = v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v19 = *(v23 + 72);
        do
        {
          sub_100021190(v18, v12, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v12, v9, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v20 = *(v9 + 2);
            result = sub_100020EDC(*v9);
            if (v20 == v17)
            {
              v21 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v9, type metadata accessor for TaskHistory.Previous);
          }

          v18 += v19;
          --v16;
        }

        while (v16);
      }

      if (++v15 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v21 = 0;
LABEL_13:

    return v21;
  }

  return result;
}

uint64_t sub_10001E014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t, __n128))
{
  v29 = a3;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v27 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  result = sub_10001FE2C(a1, a2, a4, a5, a6);
  v18 = result;
  v28 = *(result + 16);
  if (v28)
  {
    v19 = 0;
    v26 = result + 32;
    while (v19 < *(v18 + 16))
    {
      v20 = *(v29 + 16);
      if (v20)
      {
        v21 = *(v26 + 4 * v19);
        v22 = v29 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v23 = *(v27 + 72);
        do
        {
          sub_100021190(v22, v16, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v16, v13, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v24 = *(v13 + 2);
            result = sub_100020EDC(*v13);
            if (v24 == v21)
            {
              v25 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v13, type metadata accessor for TaskHistory.Previous);
          }

          v22 += v23;
          --v20;
        }

        while (v20);
      }

      if (++v19 == v28)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v25 = 0;
LABEL_13:

    return v25;
  }

  return result;
}

uint64_t sub_10001E238(uint64_t a1, uint64_t a2)
{
  sub_10001B748();
  if (v5)
  {
    v8 = v6;
    v9 = v7;
    v10 = v5;
    v11 = swift_allocObject();
    result = v10;
    *(v11 + 16) = v8;
    *(v11 + 24) = v9;
    *(v11 + 32) = 1;
    return result;
  }

  if (!*(v2[8] + 16) && !*(v2[9] + 16) && (sub_10001E014(0, 0, a1, a2, sub_100020FD0, sub_10009E3BC) & 1) == 0)
  {
    v13 = sub_10001D590(v2[7], sub_10001D700, sub_10001D700);
    sub_10001A8FC(_swiftEmptyArrayStorage, v13);
    v15 = v14;

    if (*(v15 + 16))
    {
      v16 = swift_allocObject();
      result = 0;
      *(v16 + 16) = v15;
      return result;
    }
  }

  return 1;
}

uint64_t sub_10001E3F0(uint64_t a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  v23 = a1;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  result = sub_1000207A4(a2, a3);
  v12 = result;
  v22 = *(result + 16);
  if (v22)
  {
    v13 = 0;
    v20 = result + 32;
    while (v13 < *(v12 + 16))
    {
      v14 = *(v23 + 16);
      if (v14)
      {
        v15 = *(v20 + 4 * v13);
        v16 = v23 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v17 = *(v21 + 72);
        do
        {
          sub_100021190(v16, v10, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v18 = *(v7 + 2);
            result = sub_100020EDC(*v7);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v7, type metadata accessor for TaskHistory.Previous);
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      if (++v13 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

unint64_t sub_10001E5FC(unint64_t result)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 0x12)
  {
    if (*(*(v1 + 56) + 16))
    {
      v2 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v3 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v4 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      result = sub_100063B5C(v2, v3);
      if (v5)
      {
        if (*(v4 + 16))
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v7 = *(v1 + 56);
          sub_10001CBD8(1, v2, v3, isUniquelyReferenced_nonNull_native);

          *(v1 + 56) = v7;
        }

        else
        {

          sub_100088220(&v7, v2, v3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001E6F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 32); ; i += 11)
  {
    v6 = i[9];
    v17[8] = i[8];
    v17[9] = v6;
    v17[10] = i[10];
    v7 = i[5];
    v17[4] = i[4];
    v17[5] = v7;
    v8 = i[7];
    v17[6] = i[6];
    v17[7] = v8;
    v9 = i[1];
    v17[0] = *i;
    v17[1] = v9;
    v10 = i[3];
    v17[2] = i[2];
    v17[3] = v10;
    v16 = DWORD2(v9);
    v15 = v9;
    __chkstk_darwin(a1);
    v13[2] = &v15;
    sub_10000E08C(v17, &v14);

    v11 = sub_1000CC670(sub_100021390, v13, a2);

    a1 = sub_10000E0E8(v17);
    if (v11)
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

uint64_t sub_10001E840(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_10001E6F4(*a1, a2);
  v115 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v2 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = (v6 + 16);
    v10 = *(v6 + 16);
    if (v9 == v10)
    {
      return v2;
    }

    v77 = a1;
    v78 = a2;
    v12 = 176 * result + 208;
    while (v9 < v10)
    {
      v79 = v6;
      v13 = (v6 + v12);
      v14 = *(v6 + v12);
      v15 = *(v6 + v12 + 32);
      v105 = *(v6 + v12 + 16);
      v106 = v15;
      v104 = v14;
      v16 = *(v6 + v12 + 48);
      v17 = *(v6 + v12 + 64);
      v18 = *(v6 + v12 + 96);
      v109 = *(v6 + v12 + 80);
      v110 = v18;
      v107 = v16;
      v108 = v17;
      v19 = *(v6 + v12 + 112);
      v20 = *(v6 + v12 + 128);
      v21 = *(v6 + v12 + 160);
      v113 = *(v6 + v12 + 144);
      v114 = v21;
      v111 = v19;
      v112 = v20;
      DWORD2(v82) = DWORD2(v105);
      *&v82 = v105;
      __chkstk_darwin(result);
      v76[2] = &v82;
      sub_10000E08C(&v104, &v93);

      v22 = v115;
      v23 = sub_1000CC670(sub_100020DBC, v76, v78);
      v115 = v22;

      result = sub_10000E0E8(&v104);
      if (v23)
      {
        v6 = v79;
      }

      else
      {
        if (v9 == v2)
        {
          v6 = v79;
        }

        else
        {
          v6 = v79;
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          v24 = *v11;
          if (v2 >= *v11)
          {
            goto LABEL_25;
          }

          v25 = (v79 + 32 + 176 * v2);
          v26 = *v25;
          v27 = v25[2];
          v83 = v25[1];
          v84 = v27;
          v82 = v26;
          v28 = v25[3];
          v29 = v25[4];
          v30 = v25[6];
          v87 = v25[5];
          v88 = v30;
          v85 = v28;
          v86 = v29;
          v31 = v25[7];
          v32 = v25[8];
          v33 = v25[10];
          v91 = v25[9];
          v92 = v33;
          v89 = v31;
          v90 = v32;
          if (v9 >= v24)
          {
            goto LABEL_26;
          }

          v34 = *v13;
          v35 = v13[2];
          v94 = v13[1];
          v95 = v35;
          v93 = v34;
          v36 = v13[3];
          v37 = v13[4];
          v38 = v13[6];
          v98 = v13[5];
          v99 = v38;
          v96 = v36;
          v97 = v37;
          v39 = v13[7];
          v40 = v13[8];
          v41 = v13[10];
          v102 = v13[9];
          v103 = v41;
          v100 = v39;
          v101 = v40;
          sub_10000E08C(&v82, v81);
          sub_10000E08C(&v93, v81);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100139804(v6);
            v6 = result;
          }

          if (v2 >= *(v6 + 16))
          {
            goto LABEL_27;
          }

          v42 = (v6 + 176 * v2);
          v43 = v42[2];
          v44 = v42[4];
          v80[1] = v42[3];
          v80[2] = v44;
          v80[0] = v43;
          v45 = v42[5];
          v46 = v42[6];
          v47 = v42[8];
          v80[5] = v42[7];
          v80[6] = v47;
          v80[3] = v45;
          v80[4] = v46;
          v48 = v42[9];
          v49 = v42[10];
          v50 = v42[12];
          v80[9] = v42[11];
          v80[10] = v50;
          v80[7] = v48;
          v80[8] = v49;
          v51 = v93;
          v52 = v95;
          v42[3] = v94;
          v42[4] = v52;
          v42[2] = v51;
          v53 = v96;
          v54 = v97;
          v55 = v99;
          v42[7] = v98;
          v42[8] = v55;
          v42[5] = v53;
          v42[6] = v54;
          v56 = v100;
          v57 = v101;
          v58 = v103;
          v42[11] = v102;
          v42[12] = v58;
          v42[9] = v56;
          v42[10] = v57;
          result = sub_10000E0E8(v80);
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_28;
          }

          v59 = (v6 + v12);
          v60 = *(v6 + v12);
          v61 = *(v6 + v12 + 32);
          v81[1] = *(v6 + v12 + 16);
          v81[2] = v61;
          v81[0] = v60;
          v62 = *(v6 + v12 + 48);
          v63 = *(v6 + v12 + 64);
          v64 = *(v6 + v12 + 96);
          v81[5] = *(v6 + v12 + 80);
          v81[6] = v64;
          v81[3] = v62;
          v81[4] = v63;
          v65 = *(v6 + v12 + 112);
          v66 = *(v6 + v12 + 128);
          v67 = *(v6 + v12 + 160);
          v81[9] = *(v6 + v12 + 144);
          v81[10] = v67;
          v81[7] = v65;
          v81[8] = v66;
          v68 = v82;
          v69 = v84;
          v59[1] = v83;
          v59[2] = v69;
          *v59 = v68;
          v70 = v85;
          v71 = v86;
          v72 = v88;
          v59[5] = v87;
          v59[6] = v72;
          v59[3] = v70;
          v59[4] = v71;
          v73 = v89;
          v74 = v90;
          v75 = v92;
          v59[9] = v91;
          v59[10] = v75;
          v59[7] = v73;
          v59[8] = v74;
          result = sub_10000E0E8(v81);
          *v77 = v6;
        }

        ++v2;
      }

      ++v9;
      v11 = (v6 + 16);
      v10 = *(v6 + 16);
      v12 += 176;
      if (v9 == v10)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001EBD0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_33;
  }

  v3 = result;
  v4 = 0;
  v5 = BYTE4(result);
  v6 = result == 1 && BYTE4(result) == 3;
  if (result)
  {
    v7 = 0;
  }

  else
  {
    v7 = BYTE4(result) == 3;
  }

  v8 = a2 + 40;
  do
  {
    v9 = (v8 + 12 * v4);
    v10 = v4;
    while (1)
    {
      if (v10 >= v2)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_40;
      }

      v11 = *(v9 - 1);
      v12 = *v9;
      if (v12 <= 1)
      {
        break;
      }

      if (v12 == 2)
      {
        if (v5 != 2)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (v11)
      {
        if (v6)
        {
          goto LABEL_28;
        }
      }

      else if (v7)
      {
        v11 = 0;
        goto LABEL_28;
      }

LABEL_12:
      ++v10;
      v9 += 12;
      if (v4 == v2)
      {
        goto LABEL_33;
      }
    }

    if (*v9)
    {
      if (v5 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    if (v5)
    {
      goto LABEL_12;
    }

LABEL_11:
    if (v11 != v3)
    {
      goto LABEL_12;
    }

    v11 = v3;
LABEL_28:
    v23 = v8;
    v21 = *(v9 - 2);
    result = swift_isUniquelyReferenced_nonNull_native();
    v22 = v7;
    if ((result & 1) == 0)
    {
      result = sub_100091E48(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    v8 = v23;
    if (v14 >= v13 >> 1)
    {
      result = sub_100091E48((v13 > 1), v14 + 1, 1);
      v8 = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = _swiftEmptyArrayStorage + 12 * v14;
    v7 = v22;
    *(v15 + 8) = v21;
    *(v15 + 9) = v11;
    v15[40] = v12;
  }

  while (v4 != v2);
LABEL_33:
  v16 = _swiftEmptyArrayStorage[2];
  if (v16)
  {
    sub_100091AA8(0, v16, 0);
    v17 = _swiftEmptyArrayStorage[2];
    v18 = 32;
    do
    {
      v19 = *(_swiftEmptyArrayStorage + v18);
      v20 = _swiftEmptyArrayStorage[3];
      if (v17 >= v20 >> 1)
      {
        sub_100091AA8((v20 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      *(&_swiftEmptyArrayStorage[4] + v17) = v19;
      v18 += 12;
      ++v17;
      --v16;
    }

    while (v16);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10001EE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  result = sub_10001EBD0(a1 & 0xFFFFFFFFFFLL, a3);
  v12 = result;
  v22 = *(result + 16);
  if (v22)
  {
    v13 = 0;
    v20 = result + 32;
    while (v13 < *(v12 + 16))
    {
      v14 = *(v23 + 16);
      if (v14)
      {
        v15 = *(v20 + 4 * v13);
        v16 = v23 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v17 = *(v21 + 72);
        do
        {
          sub_100021190(v16, v10, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v18 = *(v7 + 2);
            result = sub_100020EDC(*v7);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v7, type metadata accessor for TaskHistory.Previous);
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      if (++v13 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_10001F060(uint64_t result, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = a3 + 48;
    do
    {
      v8 = (v7 + 24 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= v3)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_24;
        }

        v10 = *v8;
        if (*v8)
        {
          break;
        }

        if ((a2 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_6:
        ++v9;
        v8 += 24;
        if (v6 == v3)
        {
          goto LABEL_17;
        }
      }

      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      if (*(v8 - 1) != v5)
      {
        goto LABEL_6;
      }

      v11 = *(v8 - 4);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100091CC8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100091CC8((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[3 * v13];
      *(v14 + 8) = v11;
      v14[5] = v5;
      *(v14 + 48) = v10;
    }

    while (v6 != v3);
  }

LABEL_17:
  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_100091AA8(0, v15, 0);
    v16 = _swiftEmptyArrayStorage[2];
    v17 = 4;
    do
    {
      v18 = _swiftEmptyArrayStorage[v17];
      v19 = _swiftEmptyArrayStorage[3];
      if (v16 >= v19 >> 1)
      {
        sub_100091AA8((v19 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      *(&_swiftEmptyArrayStorage[4] + v16) = v18;
      v17 += 3;
      ++v16;
      --v15;
    }

    while (v15);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10001F268(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  result = sub_10001F060(a1, a2 & 1, a4);
  v14 = result;
  v24 = *(result + 16);
  if (v24)
  {
    v15 = 0;
    v22 = result + 32;
    while (v15 < *(v14 + 16))
    {
      v16 = *(v25 + 16);
      if (v16)
      {
        v17 = *(v22 + 4 * v15);
        v18 = v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v19 = *(v23 + 72);
        do
        {
          sub_100021190(v18, v12, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v12, v9, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v20 = *(v9 + 2);
            result = sub_100020EDC(*v9);
            if (v20 == v17)
            {
              v21 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v9, type metadata accessor for TaskHistory.Previous);
          }

          v18 += v19;
          --v16;
        }

        while (v16);
      }

      if (++v15 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v21 = 0;
LABEL_13:

    return v21;
  }

  return result;
}