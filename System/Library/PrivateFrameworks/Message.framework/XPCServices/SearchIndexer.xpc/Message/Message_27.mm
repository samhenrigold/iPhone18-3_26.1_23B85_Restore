Swift::Int sub_1001CB9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D3FA8, &qword_1004DF4A0);
    v2 = sub_1004A66B4();
    v3 = v2 + 56;
    while (1)
    {
      sub_1004A6E94();
      sub_1004A6EB4(0);
      result = sub_1004A6F14();
      v5 = result & ~(-1 << *(v2 + 32));
      v6 = v5 >> 6;
      v7 = *(v3 + 8 * (v5 >> 6));
      v8 = 1 << v5;
      if ((v8 & v7) == 0)
      {
        *(v3 + 8 * v6) = v8 | v7;
        v9 = *(v2 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v11;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

unint64_t sub_1001CBAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a5;
  v62 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v62);
  v12 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = _s6LoggerVMa(0);
  __chkstk_darwin(v60);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v56[-v16];
  __chkstk_darwin(v18);
  v20 = &v56[-v19];
  v23 = __chkstk_darwin(v21);
  v24 = &v56[-v22];
  if (a2 < 0)
  {
    sub_1001CDD1C(a4, v17, v23, _s6LoggerVMa);
    sub_1001CDD1C(a4, v14, v39, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v40 = sub_1004A4A54();
    v41 = sub_1004A6034();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v61 = a1;
      v43 = v42;
      v58 = swift_slowAlloc();
      v65 = v58;
      *v43 = 68158723;
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v44 = v60;
      v45 = *(v60 + 20);
      v57 = v41;
      v46 = v14[v45];
      v59 = a6;
      sub_1001CDD84(v14, _s6LoggerVMa);
      *(v43 + 10) = v46;
      *(v43 + 11) = 2082;
      v47 = *&v17[*(v44 + 20) + 4];
      sub_1001CDD84(v17, _s6LoggerVMa);
      v48 = ConnectionID.debugDescription.getter(v47);
      v50 = sub_10015BA6C(v48, v49, &v65);

      *(v43 + 13) = v50;
      *(v43 + 21) = 2160;
      *(v43 + 23) = 0x786F626C69616DLL;
      *(v43 + 31) = 2085;
      v63 = v61;
      v64 = a2;

      v51 = sub_1004A5824();
      v53 = sub_10015BA6C(v51, v52, &v65);

      *(v43 + 33) = v53;
      _os_log_impl(&_mh_execute_header, v40, v57, "[%.*hhx-%{public}s] Mailbox selection: Requesting mailbox status '%{sensitive,mask.mailbox}s'.", v43, 0x29u);
      swift_arrayDestroy();

      a1 = v61;
    }

    else
    {
      sub_1001CDD84(v14, _s6LoggerVMa);

      sub_1001CDD84(v17, _s6LoggerVMa);
    }

    *v12 = a1;
    *(v12 + 2) = a2;
    *(v12 + 2) = a3;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1001CDD1C(a4, &v56[-v22], v23, _s6LoggerVMa);
    sub_1001CDD1C(a4, v20, v25, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v26 = sub_1004A4A54();
    v27 = sub_1004A6034();
    sub_1001CD630(a1, a2, a3);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v57 = v27;
      v29 = v28;
      v58 = swift_slowAlloc();
      v65 = v58;
      *v29 = 68158723;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = v60;
      v31 = v20[*(v60 + 20)];
      v59 = a6;
      sub_1001CDD84(v20, _s6LoggerVMa);
      *(v29 + 10) = v31;
      *(v29 + 11) = 2082;
      v32 = *&v24[*(v30 + 20) + 4];
      sub_1001CDD84(v24, _s6LoggerVMa);
      v33 = ConnectionID.debugDescription.getter(v32);
      v35 = sub_10015BA6C(v33, v34, &v65);

      *(v29 + 13) = v35;
      *(v29 + 21) = 2160;
      *(v29 + 23) = 0x786F626C69616DLL;
      *(v29 + 31) = 2085;
      v63 = a1;
      v64 = a2;

      v36 = sub_1004A5824();
      v38 = sub_10015BA6C(v36, v37, &v65);

      *(v29 + 33) = v38;
      _os_log_impl(&_mh_execute_header, v26, v57, "[%.*hhx-%{public}s] Selecting mailbox '%{sensitive,mask.mailbox}s'.", v29, 0x29u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001CDD84(v20, _s6LoggerVMa);

      sub_1001CDD84(v24, _s6LoggerVMa);
    }

    *v12 = a1;
    *(v12 + 2) = a2;
    *(v12 + 2) = v61;
    swift_storeEnumTagMultiPayload();
  }

  v54 = CommandConnection.send(_:)(v12);
  CommandConnection.flush()();
  sub_1001CDD84(v12, type metadata accessor for ClientCommand);
  return v54;
}

Swift::Int sub_1001CC154(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000C9C0(a2, a3);
    v5 = sub_1004A66B4();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_1004A6E94();
      sub_1004A6EB4(v12);
      result = sub_1004A6F14();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

int8x16_t sub_1001CC288(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1004DDD00);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v1 & 0x1FF | 0x4000;
  return result;
}

uint64_t sub_1001CC2F0()
{

  return _swift_deallocObject(v0, 91, 7);
}

unint64_t sub_1001CC33C()
{
  result = qword_1005D3EF8;
  if (!qword_1005D3EF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConnectionState.Kind, &type metadata for ConnectionState.Kind, v0, v1);
    atomic_store(result, &qword_1005D3EF8);
  }

  return result;
}

uint64_t sub_1001CC390(uint64_t a1, __n128 a2)
{
  result = sub_1004A4E34();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for UnauthenticatedStateWithTasks(319);
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001CC428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001CC440(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001CC458(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CC46C(uint64_t a1)
{
  if ((*(a1 + 72) | (*(a1 + 74) << 16)) << 8 >> 8 >= 0)
  {
    return *(a1 + 74) >> 5;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1001CC4A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 354))
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

uint64_t sub_1001CC4F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 354) = 1;
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

    *(result + 354) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001CC5B0(uint64_t a1)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 12) & 3;
  }
}

uint64_t sub_1001CC5CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
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

uint64_t sub_1001CC614(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1001CC65C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 12) = a2;
  return result;
}

__n128 sub_1001CC688(uint64_t a1, __int128 *a2)
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
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1001CC6C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 72) >> 2) & 0x80000000 | (*(a1 + 48) >> 33);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1001CC724(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 162) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = -a2 << 33;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0x200000000;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0;
      return result;
    }

    *(a1 + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1001CC7B8(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  v4 = *(a1 + 160) & 0x1FF | (a2 << 14);
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1004DDD00);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v4;
  return result;
}

uint64_t sub_1001CC830(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_10010E7C0(a3, a4, a5);
  }

  return result;
}

unint64_t sub_1001CC888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a5;
  v62 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v62);
  v12 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = _s6LoggerVMa(0);
  __chkstk_darwin(v60);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v56[-v16];
  __chkstk_darwin(v18);
  v20 = &v56[-v19];
  v23 = __chkstk_darwin(v21);
  v24 = &v56[-v22];
  if (a2 < 0)
  {
    sub_1001CDD1C(a4, v17, v23, _s6LoggerVMa);
    sub_1001CDD1C(a4, v14, v39, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v40 = sub_1004A4A54();
    v41 = sub_1004A6034();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v61 = a1;
      v43 = v42;
      v58 = swift_slowAlloc();
      v65 = v58;
      *v43 = 68158723;
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v44 = v60;
      v45 = *(v60 + 20);
      v57 = v41;
      v46 = v14[v45];
      v59 = a6;
      sub_1001CDD84(v14, _s6LoggerVMa);
      *(v43 + 10) = v46;
      *(v43 + 11) = 2082;
      v47 = *&v17[*(v44 + 20) + 4];
      sub_1001CDD84(v17, _s6LoggerVMa);
      v48 = ConnectionID.debugDescription.getter(v47);
      v50 = sub_10015BA6C(v48, v49, &v65);

      *(v43 + 13) = v50;
      *(v43 + 21) = 2160;
      *(v43 + 23) = 0x786F626C69616DLL;
      *(v43 + 31) = 2085;
      v63 = v61;
      v64 = a2;

      v51 = sub_1004A5824();
      v53 = sub_10015BA6C(v51, v52, &v65);

      *(v43 + 33) = v53;
      _os_log_impl(&_mh_execute_header, v40, v57, "[%.*hhx-%{public}s] Mailbox selection: Requesting mailbox status '%{sensitive,mask.mailbox}s'.", v43, 0x29u);
      swift_arrayDestroy();

      a1 = v61;
    }

    else
    {
      sub_1001CDD84(v14, _s6LoggerVMa);

      sub_1001CDD84(v17, _s6LoggerVMa);
    }

    *v12 = a1;
    *(v12 + 2) = a2;
    *(v12 + 2) = a3;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1001CDD1C(a4, &v56[-v22], v23, _s6LoggerVMa);
    sub_1001CDD1C(a4, v20, v25, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v26 = sub_1004A4A54();
    v27 = sub_1004A6034();
    sub_1001CD630(a1, a2, a3);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v57 = v27;
      v29 = v28;
      v58 = swift_slowAlloc();
      v65 = v58;
      *v29 = 68158723;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = v60;
      v31 = v20[*(v60 + 20)];
      v59 = a6;
      sub_1001CDD84(v20, _s6LoggerVMa);
      *(v29 + 10) = v31;
      *(v29 + 11) = 2082;
      v32 = *&v24[*(v30 + 20) + 4];
      sub_1001CDD84(v24, _s6LoggerVMa);
      v33 = ConnectionID.debugDescription.getter(v32);
      v35 = sub_10015BA6C(v33, v34, &v65);

      *(v29 + 13) = v35;
      *(v29 + 21) = 2160;
      *(v29 + 23) = 0x786F626C69616DLL;
      *(v29 + 31) = 2085;
      v63 = a1;
      v64 = a2;

      v36 = sub_1004A5824();
      v38 = sub_10015BA6C(v36, v37, &v65);

      *(v29 + 33) = v38;
      _os_log_impl(&_mh_execute_header, v26, v57, "[%.*hhx-%{public}s] Selecting mailbox '%{sensitive,mask.mailbox}s'.", v29, 0x29u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001CDD84(v20, _s6LoggerVMa);

      sub_1001CDD84(v24, _s6LoggerVMa);
    }

    *v12 = a1;
    *(v12 + 2) = a2;
    *(v12 + 2) = v61;
    swift_storeEnumTagMultiPayload();
  }

  v54 = CommandConnection.send(_:)(v12);
  sub_1001CDD84(v12, type metadata accessor for ClientCommand);
  return v54;
}

uint64_t sub_1001CCF00(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, uint64_t (*a4)(__n128), uint64_t a5)
{
  v10 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v10);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v82 - v14;
  swift_retain_n();
  v16 = sub_1001C964C();
  sub_1001CDD1C(a2, v15, v17, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    sub_1001CDD84(v15, type metadata accessor for ConnectionState);
    goto LABEL_20;
  }

  v90 = a5;
  sub_1001CDD84(a2, type metadata accessor for ConnectionState);
  memcpy(v121, v15, 0x162uLL);
  v18 = *(v15 + 19);
  v19 = *(v15 + 21);
  v115 = *(v15 + 20);
  v116 = v19;
  v20 = *(v15 + 15);
  v21 = *(v15 + 17);
  v111 = *(v15 + 16);
  v112 = v21;
  v22 = *(v15 + 17);
  v23 = *(v15 + 19);
  v113 = *(v15 + 18);
  v114 = v23;
  v24 = *(v15 + 13);
  v107 = *(v15 + 12);
  v108 = v24;
  v25 = *(v15 + 15);
  v27 = *(v15 + 12);
  v26 = *(v15 + 13);
  v109 = *(v15 + 14);
  v110 = v25;
  v28 = *(v15 + 21);
  v118[8] = v115;
  v118[9] = v28;
  v118[4] = v111;
  v118[5] = v22;
  v118[6] = v113;
  v118[7] = v18;
  v118[0] = v27;
  v118[1] = v26;
  v117 = *(v15 + 176);
  v119 = *(v15 + 176);
  v118[2] = v109;
  v118[3] = v20;
  if (sub_1001ACFC0(v118) == 1)
  {
    v88 = a4;
    v91 = a1;
    v29 = sub_1001AD074(v118);
    v98[8] = v121[20];
    v98[9] = v121[21];
    v99 = v121[22];
    v98[4] = v121[16];
    v98[5] = v121[17];
    v98[6] = v121[18];
    v98[7] = v121[19];
    v98[0] = v121[12];
    v98[1] = v121[13];
    v98[2] = v121[14];
    v98[3] = v121[15];
    v100[8] = v115;
    v100[9] = v116;
    v101 = v117;
    v100[4] = v111;
    v100[5] = v112;
    v100[6] = v113;
    v100[7] = v114;
    v100[0] = v107;
    v100[1] = v108;
    v100[2] = v109;
    v100[3] = v110;
    v30 = sub_1001AD074(v100);
    sub_1001AD084(v30, &v92);
    sub_1001AD020(v98);
    v31 = *v29;
    v32 = *(v29 + 8);
    v106 = *v29;
    v33 = *(v29 + 16);
    v34 = *(v29 + 24);
    v35 = *(v29 + 32);
    v36 = *(v29 + 40);
    v38 = *(v29 + 48);
    v37 = *(v29 + 56);
    v39 = *(v29 + 64);
    v40 = *(v29 + 72);
    v41 = *(v29 + 80);
    v42 = *(v29 + 88) | (*(v29 + 90) << 16);
    v43 = *(v29 + 91);
    v44 = *(v29 + 107);
    v45 = *(v29 + 123);
    v46 = *(v29 + 139);
    *(v105 + 15) = *(v29 + 154);
    v104 = v45;
    v105[0] = v46;
    v102 = v43;
    v103 = v44;
    if ((v42 & 0xE00000) == 0x800000)
    {
      v47 = v38 | v37 | v39;
      if (!(v35 | v34 | v33 | v36 | v47 | v40 | v41) && v42 == 0x800000)
      {
        v89 = v38;
        v90 = v33;
        v82 = v40;
        v83 = v39;
        v84 = v41;
        v85 = v37;
        v86 = v35;
        v87 = v34;
        v48 = v31;
        v49 = v32;

        v50 = (v88)(v48, v49, 0, v91, v16, a3);
        LOBYTE(v48) = v51;

        if (v48)
        {
          v52 = 0x800000;
          v54 = v86;
          v53 = v87;
          v56 = v84;
          v55 = v85;
          v38 = v89;
          v57 = v90;
          v59 = v82;
          v58 = v83;
        }

        else
        {
          v71 = v89;
          v73 = v86;
          v72 = v87;
          *&v92 = v90;
          *(&v92 + 1) = v87;
          *&v93 = v86;
          *(&v93 + 1) = v36;
          v89 = v10;
          v90 = v50;
          v74 = v84;
          v75 = v85;
          *&v94 = v71;
          *(&v94 + 1) = v85;
          *&v95 = v83;
          *(&v95 + 1) = v82;
          *&v96 = v84;
          BYTE10(v96) = 0x80;
          WORD4(v96) = 0;
          sub_1001CD5DC(&v92);
          v56 = v74;
          v57 = v90;
          v55 = v75;
          v54 = v73;
          v53 = v72;
          v38 = 0;
          v58 = 0;
          v59 = 0;
          v52 = 0;
        }

        goto LABEL_18;
      }

      if (v42 == 0x800000 && v33 == 1 && !(v35 | v34 | v36 | v47 | v40 | v41))
      {
        v82 = v40;
        v83 = v39;
        v84 = v41;
        v85 = v37;
        v86 = v35;
        v87 = v34;
        v89 = v32;

        v90 = (v88)(v61, v89 | 0x8000000000000000, v90, v91, v16, a3);
        LODWORD(v89) = v62;

        if (v89)
        {
          v52 = 0x800000;
          v57 = 1;
          v54 = v86;
          v53 = v87;
          v56 = v84;
          v55 = v85;
          v59 = v82;
          v58 = v83;
        }

        else
        {
          v76 = v87;
          *&v92 = 1;
          *(&v92 + 1) = v87;
          v77 = v38;
          v79 = v85;
          v78 = v86;
          *&v93 = v86;
          *(&v93 + 1) = v36;
          *&v94 = v77;
          *(&v94 + 1) = v85;
          *&v95 = v83;
          *(&v95 + 1) = v82;
          v89 = v10;
          v80 = v84;
          *&v96 = v84;
          BYTE10(v96) = 0x80;
          WORD4(v96) = 0;
          sub_1001CD5DC(&v92);
          v56 = v80;
          v57 = v90;
          v55 = v79;
          v54 = v78;
          v53 = v76;
          v38 = 0;
          v58 = 0;
          v59 = 0;
          v52 = 0x200000;
        }

        goto LABEL_18;
      }
    }

    v89 = v38;
    v90 = v33;
    v63 = v34;
    v86 = a3;
    v87 = v12;
    v64 = v36;
    v65 = v35;
    v66 = v37;
    v88 = a2;
    v67 = v41;
    v68 = v39;
    v69 = v40;
    v70 = v42;

    v52 = v70;
    v59 = v69;
    v58 = v68;
    v56 = v67;
    v38 = v89;
    v57 = v90;
    v12 = v87;
    a2 = v88;
    v55 = v66;
    v54 = v65;
    v36 = v64;
    v53 = v63;
LABEL_18:
    v92 = v106;
    *(&v97[1] + 11) = v103;
    *(&v97[2] + 11) = v104;
    *(&v97[3] + 11) = v105[0];
    *&v93 = v57;
    *(&v93 + 1) = v53;
    *&v94 = v54;
    *(&v94 + 1) = v36;
    *&v95 = v38;
    *(&v95 + 1) = v55;
    *&v96 = v58;
    *(&v96 + 1) = v59;
    *&v97[0] = v56;
    WORD4(v97[0]) = v52;
    BYTE10(v97[0]) = BYTE2(v52);
    *(&v97[4] + 10) = *(v105 + 15);
    *(v97 + 11) = v102;
    sub_1001CC288(&v92);
    v121[20] = v97[3];
    v121[21] = v97[4];
    LOWORD(v121[22]) = v97[5];
    v121[16] = v96;
    v121[17] = v97[0];
    v121[18] = v97[1];
    v121[19] = v97[2];
    v121[12] = v92;
    v121[13] = v93;
    v121[14] = v94;
    v121[15] = v95;
    a1 = v91;
    goto LABEL_19;
  }

LABEL_19:
  memcpy(a2, v121, 0x162uLL);
  swift_storeEnumTagMultiPayload();
LABEL_20:
  sub_1001CDD1C(a2, v12, v60, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1001CDD84(a2, type metadata accessor for ConnectionState);
    memcpy(v120, v12, sizeof(v120));
    sub_1001C97B4(&v120[192], a1);
    memcpy(a2, v120, 0x162uLL);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1001CDD84(v12, type metadata accessor for ConnectionState);
  }
}

uint64_t sub_1001CD630(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (a2 < 0)
  {
  }

  return result;
}

int8x16_t sub_1001CD6D8(uint64_t a1)
{
  v1 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v2 = *(a1 + 88) & 0x1E101FFLL;
  v3 = *(a1 + 160) & 0x1FF;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v1;
  *(a1 + 88) = v2;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1004DDD00);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v3;
  return result;
}

uint64_t sub_1001CD73C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_10001123C(result, a2, a3, a4);
  }

  return result;
}

int8x16_t sub_1001CD750(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1004DDD00);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v1 & 0x1FF | 0x8000;
  return result;
}

unint64_t sub_1001CD7B8()
{
  result = qword_1005D3FB8;
  if (!qword_1005D3FB8)
  {
    result = swift_getWitnessTable(byte_1004DF530, &type metadata for ConnectionState.AlreadyAuthenticatedWhenReceivingHandshakeQuery, v0, v1);
    atomic_store(result, &qword_1005D3FB8);
  }

  return result;
}

uint64_t sub_1001CD80C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10018E150(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001CD904(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CD918()
{
  v1 = *(_s6LoggerVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001CD9F0(uint64_t *a1)
{
  v3 = *(_s6LoggerVMa(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1001C9094(a1, v1 + v4, v6, v7);
}

double sub_1001CDA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1001CDB04(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

unint64_t sub_1001CDB68()
{
  result = qword_1005D3FF0;
  if (!qword_1005D3FF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Capability, &type metadata for Capability, v0, v1);
    atomic_store(result, &qword_1005D3FF0);
  }

  return result;
}

uint64_t sub_1001CDC18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1001CDCD4@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t sub_1001CDD1C(uint64_t a1, uint64_t a2, __n128 a3, uint64_t (*a4)(void, __n128))
{
  v6 = a4(0, a3);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001CDD84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001CDDE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result <= 0xFFFFFFFEFFFFFFFFLL)
  {
    return sub_1001AD7F8(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1001CDE08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C69662D6B636162;
    }

    else
    {
      v4 = 0x72657865646E69;
    }

    if (v2)
    {
      v3 = 0xE90000000000006CLL;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6574616E6F646572;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6369646F69726570;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1752397168;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6C69662D6B636162;
    }

    else
    {
      v9 = 0x72657865646E69;
    }

    if (a2)
    {
      v8 = 0xE90000000000006CLL;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6369646F69726570;
    if (a2 != 3)
    {
      v6 = 1752397168;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6574616E6F646572;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1004A6D34();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t ConnectionTrait.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x72657865646E69;
  v2 = 0x6574616E6F646572;
  v3 = 0x6369646F69726570;
  if (a1 != 3)
  {
    v3 = 1752397168;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6C69662D6B636162;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1001CE034@<X0>(Swift::String *a1@<X0>, IMAP2Connection::ConnectionTrait_optional *a2@<X8>)
{
  result = _s15IMAP2Connection0B5TraitO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1001CE064(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x72657865646E69;
  v5 = 0xE800000000000000;
  v6 = 0x6574616E6F646572;
  v7 = 0xE800000000000000;
  v8 = 0x6369646F69726570;
  if (v2 != 3)
  {
    v8 = 1752397168;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C69662D6B636162;
    v3 = 0xE90000000000006CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_1001CE100()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1001CE1E0(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1001CE2AC(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t _s15IMAP2Connection0B5TraitO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A3D58;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001CE3D8()
{
  result = qword_1005D4008;
  if (!qword_1005D4008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConnectionTrait, &type metadata for ConnectionTrait, v0, v1);
    atomic_store(result, &qword_1005D4008);
  }

  return result;
}

unint64_t ConnectionUsage.nonMailboxUsage.setter(uint64_t a1)
{
  result = sub_10001324C(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

BOOL static ConnectionUsage.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((_s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }
    }

    else if (a4 < 2 || (sub_1001B42A0(a2, a4) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return !a4;
}

uint64_t static ConnectionUsage.NonMailboxUsage.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_1001B42A0(a1, a2);
}

BOOL sub_1001CE544(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v3 < 2 || (sub_1001B42A0(v2, v3) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return !v3;
}

uint64_t sub_1001CE5CC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_1001B42A0(v2, v3);
}

uint64_t ConnectionUsage.usage(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a1;
    v4 = a2;
    LOBYTE(a1) = sub_1001AF9C0(a1, a3);
    a2 = v4;
    v5 = a1;
    LODWORD(a1) = v3;
    if (v5)
    {
      return 1;
    }
  }

  MailboxesSelectionUsage.subscript.getter(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v6 = v7;

  return v6;
}

uint64_t _s15IMAP2Connection07CommandB0C12RecentErrorsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  __chkstk_darwin(v5);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = (&v25 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_11:
    v20 = 0;
    return v20 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v9 + 72);
    while (1)
    {
      sub_1001CEEE4(v15, v12, v10);
      sub_1001CEEE4(v16, v7, v18);
      if (*v12 != *v7)
      {
        break;
      }

      v20 = _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(v12 + *(v5 + 20), v7 + *(v5 + 20));
      sub_1001CEF48(v7, v21);
      sub_1001CEF48(v12, v22);
      if (v20)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1001CEF48(v7, v19);
    sub_1001CEF48(v12, v23);
    goto LABEL_11;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1001CE84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a2 + 48);
    v6 = *(a2 + 56);
    v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v7 || (v8 = a1, v9 = a2, v10 = sub_1004A6D34(), a2 = v9, v11 = v10, a1 = v8, (v11 & 1) != 0))
    {
      v12 = (a1 + 88);
      v13 = v2 - 1;
      for (i = (a2 + 88); ; i += 32)
      {
        if (v4)
        {
          if ((v6 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v6 & 1 | (((v5 ^ v3) & 0xFFFFFFFFFFFFC000) != 0))
        {
          return 0;
        }

        if (!v13)
        {
          break;
        }

        v3 = *(v12 - 1);
        v4 = *v12;
        v5 = *(i - 1);
        v6 = *i;
        v15 = *(v12 - 3) == *(i - 3) && *(v12 - 2) == *(i - 2);
        if (!v15 && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }

        v12 += 32;
        --v13;
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1001CE964(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      if (v7 <= 2)
      {
        break;
      }

      if (*i <= 4u)
      {
        if (v7 == 3)
        {
          if (v10 != 3)
          {
            return 0;
          }
        }

        else if (v10 != 4)
        {
          return 0;
        }

LABEL_24:
        if ((v5 != v8 || v6 != v9) && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v7 == 5)
      {
        if (v10 != 5)
        {
          return 0;
        }

        goto LABEL_24;
      }

      if (v5 > 1)
      {
        v12 = v5 ^ 2;
        result = 0;
        if (v12 | v6)
        {
          if (v10 != 6 || v8 != 3)
          {
            return result;
          }
        }

        else if (v10 != 6 || v8 != 2)
        {
          return result;
        }

LABEL_41:
        if (v9)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v5 | v6)
      {
        if (v10 != 6)
        {
          return 0;
        }

        result = 0;
        if (v8 != 1)
        {
          return result;
        }

        goto LABEL_41;
      }

      result = 0;
      if (v10 != 6 || v9 | v8)
      {
        return result;
      }

LABEL_6:
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i)
    {
      if (v7 == 1)
      {
        if (v10 != 1)
        {
          return 0;
        }
      }

      else if (v10 != 2)
      {
        return 0;
      }
    }

    else if (*v3)
    {
      return 0;
    }

    goto LABEL_24;
  }

  return 1;
}

uint64_t _s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 40 * v3;
    v7 = v5 + 40 * v3;
    if (*v6 != *v7)
    {
      return 0;
    }

    if ((*(v6 + 16) | (*(v6 + 16) << 32)) != (*(v7 + 16) | (*(v7 + 16) << 32)))
    {
      return 0;
    }

    v8 = *(v6 + 8);
    v9 = *(v7 + 8);
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    v11 = *(v6 + 24);
    v12 = *(v6 + 32);
    v13 = *(v7 + 24);
    v14 = *(v7 + 32);
    if (v10)
    {
      v15 = v8 == v9;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = (v8 + 32);
      result = v9 + 32;
      while (v10)
      {
        if (*v16 != *result)
        {
          return 0;
        }

        ++v16;
        ++result;
        if (!--v10)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    if (v12)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          if (v13 != 1)
          {
            LOBYTE(v14) = 0;
          }

          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v13 <= 1)
          {
            v14 = 0;
          }

          if (v14 != 1)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v13)
        {
          LOBYTE(v14) = 0;
        }

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v11 != v13)
      {
        LOBYTE(v14) = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CEC44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CEC98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1001CECF4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1001CED24(uint64_t a1, uint64_t a2)
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

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v20 = v5[2];
    v21 = v8;
    v9 = v5[4];
    v10 = v5[1];
    v18 = *v5;
    v19 = v10;
    v11 = v6[3];
    v25 = v6[2];
    v26 = v11;
    v27 = v6[4];
    v12 = *v6;
    v24 = v6[1];
    v22 = v9;
    v23 = v12;
    v13 = v10;
    if ((*(&v21 + 1) & 0x1000000000000000) != 0)
    {
      v28[0] = v18;
      v28[1] = v19;
      v28[2] = v20;
      v29 = v21;
      v30 = *(&v21 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v31 = v22;
      if ((*(&v26 + 1) & 0x1000000000000000) == 0)
      {
        return 0;
      }

      v32[0] = v23;
      v32[1] = v24;
      v32[2] = v25;
      v33 = v26;
      v34 = *(&v26 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v35 = v27;
      sub_10019782C(&v23, v17);
      sub_10019782C(&v18, v17);
      v15 = sub_1001EFF14(v28, v32);
      sub_100193BF0(&v23);
      sub_100193BF0(&v18);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((HIBYTE(v26) & 0x10) != 0)
      {
        return 0;
      }

      v14 = v24;
      if (v18 != v23 && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      if (v13 != v14 && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 += 5;
    v5 += 5;
  }

  return 1;
}

uint64_t sub_1001CEEE4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CEF48(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001CEFA8()
{
  result = qword_1005D4010;
  if (!qword_1005D4010)
  {
    result = swift_getWitnessTable("Av\n", &type metadata for CommandConnection.Constraint, v0, v1);
    atomic_store(result, &qword_1005D4010);
  }

  return result;
}

uint64_t sub_1001CF00C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001CF034(uint64_t a1, __int128 *a2)
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

uint64_t sub_1001CF058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 128))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1001CF0C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

void *sub_1001CF168(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_100091A08(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
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
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1004A40D4();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1004A4104();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1004A40D4();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1004A4104();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_10000C9C0(&qword_1005D4038, &qword_1004DFEA8);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1004CEAA0;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_1004A57A4();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_100091A08((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

BOOL sub_1001CF4E4(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v2;
  v21[4] = *(a1 + 64);
  v3 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v3;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v19 = *(a1 + 120);
  v20 = *(a1 + 112);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v22[3] = a2[3];
  v22[4] = v10;
  v11 = a2[2];
  v22[1] = v9;
  v22[2] = v11;
  v22[0] = v8;
  v13 = *(a2 + 10);
  v12 = *(a2 + 11);
  v14 = *(a2 + 12);
  v15 = *(a2 + 13);
  v16 = *(a2 + 14);
  v17 = *(a2 + 15);
  if ((sub_1001EFF14(v21, v22) & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 == 11)
  {
    if (v12 >> 60 != 11)
    {
      return 0;
    }
  }

  else if (v5 >> 60 == 15)
  {
    if (v12 >> 60 != 15)
    {
      return 0;
    }
  }

  else if (((v12 >> 60) | 4) == 0xF || !sub_10003A194(v4, v5, v13, v12))
  {
    return 0;
  }

  if (!sub_10003A194(v6, v7, v14, v15))
  {
    return 0;
  }

  return sub_10003A194(v20, v19, v16, v17);
}

uint64_t sub_1001CF638()
{
  v1 = v0[11];
  if (v1 >> 60 == 11)
  {
    sub_10018D6F4();
    swift_allocError();
    *v3 = xmmword_1004DB2C0;
    *(v3 + 16) = 1;
    return swift_willThrow();
  }

  else if (v1 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    v4 = v0[10];
    sub_100014CEC(v4, v0[11]);
    sub_100191718(v4, v1);
    *(v0 + 5) = xmmword_1004DA570;
    v5 = sub_1001CF7D0(v0[12], v0[13], v0[14], v0[15], v4, v1);
    sub_100191718(v4, v1);
    return v5;
  }
}

uint64_t sub_1001CF72C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 88);
  if (v3 >> 60 == 15)
  {
    v4 = *(v2 + 80);
    sub_100014CEC(a1, a2);
    result = sub_100191718(v4, v3);
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  else
  {
    sub_10018D6F4();
    swift_allocError();
    *v8 = xmmword_1004DB2C0;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001CF7D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v10 = sub_1004A5474();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C9C0(&qword_1005D4018, &qword_1004DFEA0);
  v45 = *(v14 - 1);
  v15 = v45;
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  sub_100014CEC(a5, a6);
  sub_100014CEC(a3, a4);
  sub_1004A5464();
  sub_1004A54D4();
  sub_1001CFC28();
  sub_1001CFC80();
  v44 = v17;
  sub_1004A5484();
  (*(v11 + 8))(v13, v10);
  sub_100014D40(v50, v51);
  v52 = v14;
  v53 = sub_10000DF44(&qword_1005D4030, &qword_1005D4018, &qword_1004DFEA0, &protocol conformance descriptor for HashedAuthenticationCode<A>);
  v18 = sub_1000B3774(&v50);
  v19 = *(v15 + 16);
  v43 = v14;
  v19(v18, v17, v14);
  sub_10002587C(&v50, v52);
  sub_1004A41C4();
  v20 = v54;
  v21 = v55;
  sub_1000197E0(&v50);
  v50 = sub_1001CF168(v20, v21);
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
  v22 = sub_1004A5614();
  v24 = v23;
  sub_100014D40(v20, v21);

  v25 = sub_1001D9734(32, 0xE100000000000000);
  v27 = v26;
  v28 = v46;
  v29 = v47;
  v48 = v46;
  v49 = v47;
  v52 = &type metadata for Data;
  v53 = &protocol witness table for Data;
  v50 = v25;
  v51 = v26;
  v30 = sub_10002587C(&v50, &type metadata for Data);
  v31 = *v30;
  v32 = v30[1];
  sub_100014CEC(v28, v29);
  sub_100014CEC(v25, v27);
  sub_1001E153C(v31, v32, &v48);
  sub_100014D40(v25, v27);
  sub_1000197E0(&v50);
  v33 = v48;
  v34 = v49;
  v35 = sub_1001D9734(v22, v24);
  v37 = v36;
  v54 = v33;
  v55 = v34;
  v52 = &type metadata for Data;
  v53 = &protocol witness table for Data;
  v50 = v35;
  v51 = v36;
  v38 = sub_10002587C(&v50, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  sub_100014CEC(v33, v34);
  sub_100014CEC(v35, v37);
  sub_1001E153C(v39, v40, &v54);
  sub_100014D40(v35, v37);
  sub_100014D40(v33, v34);
  (*(v45 + 8))(v44, v43);
  sub_1000197E0(&v50);
  return v54;
}

unint64_t sub_1001CFC28()
{
  result = qword_1005D4020;
  if (!qword_1005D4020)
  {
    v3 = sub_1004A54D4();
    result = swift_getWitnessTable(&protocol conformance descriptor for Insecure.MD5, v3, v0, v1);
    atomic_store(result, &qword_1005D4020);
  }

  return result;
}

unint64_t sub_1001CFC80()
{
  result = qword_1005D4028;
  if (!qword_1005D4028)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_1005D4028);
  }

  return result;
}

uint64_t sub_1001CFCE4(__n128 a1)
{
  v2 = sub_1004A4E34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v1[4];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1004A5404();
  result = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1[9])
  {
    return result;
  }

  sub_1004A4E54();
  v14 = (*(v3 + 88))(v5, v2);
  v15 = enum case for NWConnection.State.setup(_:);
  (*(v3 + 8))(v5, v2);
  if (v14 != v15)
  {
LABEL_7:
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  v16 = sub_1004A4DD4();
  v1[8] = static MonotonicTime.now()();
  v1[9] = v16;
}

uint64_t sub_1001CFF40()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 32);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  v9 = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v11 = *(v1 + 72);
    if (v11)
    {
      v12 = *(v1 + 64);
      v13 = *(v1 + 24);
      v15 = *(v1 + 40);
      v14 = *(v1 + 48);
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = v11;
      *(v16 + 32) = v15;
      *(v16 + 40) = v14;
      *(v16 + 48) = v13;
      swift_retain_n();

      sub_1004A4DE4();
    }

    v17 = sub_1004A4DD4();
    *(v1 + 64) = static MonotonicTime.now()();
    *(v1 + 72) = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D00FC()
{
  v1 = v0;
  v2 = *(v0 + 72);
  if (v2)
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 24);
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
    *(v7 + 32) = v6;
    *(v7 + 40) = v5;
    *(v7 + 48) = v4;
    swift_retain_n();

    sub_1004A4DE4();
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1001D01F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *), uint64_t a5, int a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a4;
  v8 = sub_1004A4D74();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v27[-v13];
  v15 = sub_1004A4D94();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v27[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v19, a1, v15, v17);
  sub_1004A4D84();
  v21 = v20;
  sub_1004A4D44();
  v22 = sub_1004A4D64();
  v23 = *(v9 + 8);
  v23(v14, v8);
  v24 = v22 & ~(v22 >> 63);
  sub_1004A4D44();
  v25 = sub_1004A4D54();
  v23(v11, v8);
  (*(v16 + 8))(v19, v15);
  v31 = v28;
  v32 = a2;
  v33 = v21;
  v34 = v24;
  v35 = v25 & ~(v25 >> 63);
  return v30(&v31);
}

void __swiftcall DataTransferReport.init(connection:start:duration:receivedTransportByteCount:sentTransportByteCount:)(IMAP2Connection::DataTransferReport *__return_ptr retstr, IMAP2Protocol::ConnectionID connection, IMAP2Helpers::MonotonicTime start, Swift::Double duration, Swift::Int receivedTransportByteCount, Swift::Int sentTransportByteCount)
{
  retstr->connection = connection;
  retstr->start = start;
  retstr->duration = duration;
  retstr->receivedTransportByteCount = receivedTransportByteCount;
  retstr->sentTransportByteCount = sentTransportByteCount;
}

unint64_t DataTransferReport.receivedApplicationBitrate.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 0.0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    v3 = (8 * v2) / v1;
    v4 = round(v3);
    v5 = v4 >= 9.22337204e18 || v4 <= -9.22337204e18;
    v6 = llround(v3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t DataTransferReport.sentApplicationBitrate.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 0.0)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    v3 = (8 * v2) / v1;
    v4 = round(v3);
    v5 = v4 >= 9.22337204e18 || v4 <= -9.22337204e18;
    v6 = llround(v3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D061C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D063C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

ValueMetadata *type metadata accessor for DataTransferReport()
{
  return &type metadata for DataTransferReport;
}

{
  return &type metadata for DataTransferReport;
}

uint64_t sub_1001D0680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1001D06C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1001D071C()
{

  return _swift_deallocObject(v0, 52, 7);
}

int *sub_1001D0774@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  LODWORD(v113) = a2;
  v104 = sub_10000C9C0(&qword_1005D4310, &qword_1004E01B0);
  __chkstk_darwin(v104);
  v101 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v114 = &v92 - v11;
  v100 = type metadata accessor for Deflate.PartialResult(0);
  __chkstk_darwin(v100);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Deflate.InputBuffer(0);
  __chkstk_darwin(v112);
  v94 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v99 = (&v92 - v16);
  __chkstk_darwin(v17);
  v96 = (&v92 - v18);
  __chkstk_darwin(v19);
  v103 = (&v92 - v20);
  __chkstk_darwin(v21);
  v102 = (&v92 - v22);
  __chkstk_darwin(v23);
  v25 = (&v92 - v24);
  __chkstk_darwin(v26);
  v28 = &v92 - v27;
  v115 = sub_1004A5384();
  v95 = *(v115 - 8);
  __chkstk_darwin(v115);
  v110 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v92 - v31;
  if (sub_1001D1230())
  {
    sub_1004A5344();
    v33 = *(v3 + 16);
    result = swift_beginAccess();
    v35 = *(v33 + 32);
    if (v35 < 0)
    {
LABEL_57:
      __break(1u);
    }

    else
    {
      v36 = *(v33 + 56);
      if ((v36 & 0x8000000000000000) == 0)
      {
        result = type metadata accessor for Deflate.Result(0);
        v37 = 0;
        v38 = (a3 + result[5]);
        *v38 = 0;
        v38[1] = 0;
LABEL_5:
        v39 = (a3 + result[6]);
        *v39 = v35;
        v39[1] = v36;
        *(a3 + result[7]) = v37;
        return result;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  result = sub_1001D13D4(v113 & 1, v32);
  if (v4)
  {
    return result;
  }

  v93 = a3;
  v92 = a1;
  sub_1001D3018(a1, v28);
  v40 = (v95 + 32);
  v105 = v32;
  v106 = (v95 + 8);
  v41 = 1;
  v42 = v115;
  v111 = (v95 + 32);
  v98 = v25;
  v97 = v3;
  v109 = v13;
  while (1)
  {
    v108 = v41;
    sub_1001D3018(v28, v25);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      if (!*v25)
      {
        v44 = 0;
        goto LABEL_15;
      }

      v44 = v25[1] - *v25;
    }

    else
    {
      v45 = *v40;
      v46 = v110;
      v45(v110, v25, v42);
      v44 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      v47 = v46;
      v40 = v111;
      result = (*v106)(v47, v42);
    }

    if ((v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_15:
    v48 = *(v6 + 16);
    swift_beginAccess();

    v49 = deflateBound((v48 + 16), v44);
    swift_endAccess();

    if ((v49 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v50 = __OFADD__(v49, 20);
    v51 = v49 + 20;
    if (v50)
    {
      goto LABEL_52;
    }

    if (qword_1005D2D78 != -1)
    {
      result = swift_once();
    }

    if (v51 >= qword_1005D4108 / 2)
    {
      if (!qword_1005D4108)
      {
        goto LABEL_55;
      }

      v52 = (v51 >> 1) / qword_1005D4108 + 1;
      v51 = qword_1005D4108 * v52;
      if ((qword_1005D4108 * v52) >> 64 != (qword_1005D4108 * v52) >> 63)
      {
        goto LABEL_56;
      }
    }

    v53 = *(v6 + 16);
    v116[0] = 0;
    __chkstk_darwin(result);
    *(&v92 - 6) = v28;
    *(&v92 - 5) = v53;
    *(&v92 - 4) = sub_1001D3AAC;
    *(&v92 - 3) = v54;
    *(&v92 - 2) = v116;

    v55 = v114;
    v56 = sub_1001D1BC8(v114, v51, sub_1001D3AC8, (&v92 - 8));
    if (v5)
    {
      (*v106)(v105, v115);

      return sub_1001D3BB4(v28, type metadata accessor for Deflate.InputBuffer);
    }

    v107 = 0;
    v57 = *(v104 + 48);
    LODWORD(v113) = v56 & 1;
    *(v55 + v57) = v56 & 1;
    v58 = v116[0];
    v59 = v103;
    sub_1001D3018(v28, v103);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v62 = v110;
      v63 = v59;
      v61 = v115;
      (*v40)(v110, v63, v115);
      v60 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v106)(v62, v61);
LABEL_27:
      v64 = v58 == v60;
      v65 = v114;
      if (v64)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    if (*v59)
    {
      v60 = v59[1] - *v59;
      v61 = v115;
      goto LABEL_27;
    }

    v65 = v55;
    v61 = v115;
    if (!v58)
    {
LABEL_29:
      v66 = v102;
      sub_1004A5344();

      swift_storeEnumTagMultiPayload();
      goto LABEL_39;
    }

LABEL_32:
    v67 = v96;
    sub_1001D3018(v28, v96);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      if (*v67)
      {
        v68 = v67[1] - *v67;
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {
      v69 = v110;
      (*v40)(v110, v67, v61);
      v68 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      result = (*v106)(v69, v61);
    }

    v66 = v102;
    if (v68 < v58)
    {
      goto LABEL_54;
    }

    sub_1001D2C4C(v58, v68, v102);

    v65 = v114;
LABEL_39:
    v70 = v65;
    v71 = v101;
    sub_1001D3AE0(v70, v101);
    v40 = v111;
    v72 = *v111;
    v73 = v109;
    v74 = v115;
    (*v111)(v109, v71, v115);
    v75 = v100;
    v76 = *(v100 + 20);
    sub_1001D3B50(v66, v73 + v76);
    *(v73 + *(v75 + 24)) = v113;
    sub_1004A5354();
    sub_1001D3BB4(v28, type metadata accessor for Deflate.InputBuffer);
    sub_1001D3018(v73 + v76, v28);
    v77 = v28;
    v78 = v28;
    v79 = v99;
    sub_1001D3018(v78, v99);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v80 = v97;
      v25 = v98;
      if (*v79 && v79[1] != *v79)
      {
LABEL_44:
        result = sub_1001D3BB4(v109, type metadata accessor for Deflate.PartialResult);
        v28 = v77;
        goto LABEL_9;
      }
    }

    else
    {
      v81 = v110;
      v72(v110, v79, v74);
      sub_1001B60F8();
      sub_1004A5E64();
      sub_1004A5EA4();
      (*v106)(v81, v74);
      v80 = v97;
      v25 = v98;
      if (v116[0] != v116[5])
      {
        goto LABEL_44;
      }
    }

    result = sub_1001D3BB4(v109, type metadata accessor for Deflate.PartialResult);
    v43 = v105;
    v28 = v77;
    if (!v113)
    {
      break;
    }

LABEL_9:
    v5 = v107;
    v41 = v108 + 1;
    v6 = v80;
    v42 = v115;
    if (__OFADD__(v108, 1))
    {
      goto LABEL_53;
    }
  }

  v83 = v95 + 16;
  v82 = *(v95 + 16);
  a3 = v93;
  v84 = v115;
  v82(v93, v105, v115);
  v85 = v94;
  sub_1001D3018(v92, v94);
  v86 = v110;
  v82(v110, v43, v84);
  v114 = sub_1001D1848();
  v113 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v87 = v80;
  v88 = *(v83 - 8);
  v88(v86, v84);
  sub_1001D3BB4(v85, type metadata accessor for Deflate.InputBuffer);
  v88(v43, v84);
  sub_1001D3BB4(v28, type metadata accessor for Deflate.InputBuffer);
  v89 = *(v87 + 16);
  result = swift_beginAccess();
  v35 = *(v89 + 32);
  if (v35 < 0)
  {
    goto LABEL_59;
  }

  v36 = *(v89 + 56);
  if ((v36 & 0x8000000000000000) == 0)
  {
    result = type metadata accessor for Deflate.Result(0);
    v90 = (a3 + result[5]);
    v91 = v113;
    *v90 = v114;
    v90[1] = v91;
    v37 = v108;
    goto LABEL_5;
  }

LABEL_60:
  __break(1u);
  return result;
}

BOOL sub_1001D1230()
{
  v1 = v0;
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Deflate.InputBuffer(0);
  __chkstk_darwin(v6);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001D3018(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!*v8)
    {
      return 1;
    }

    return v8[1] == *v8;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1001B60F8();
    sub_1004A5E64();
    sub_1004A5EA4();
    (*(v3 + 8))(v5, v2);
    return v11[1] == v11[0];
  }
}

uint64_t sub_1001D13D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = sub_1004A52D4();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_10000C9C0(&qword_1005D4310, &qword_1004E01B0);
  __chkstk_darwin(v37);
  v10 = &v30 - v9;
  v11 = sub_1004A5384();
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 24) == (a1 & 1))
  {
    return sub_1004A5344();
  }

  v32 = v13;
  v33 = v12;
  v31 = a2;
  *(v3 + 24) = a1 & 1;
  sub_1004A5344();
  v36 = v42;
  v35 = enum case for DispatchData.Deallocator.custom(_:);
  v34 = (v6 + 104);
  while (1)
  {
    v16 = *(v3 + 16);
    pending = 0;
    swift_beginAccess();

    v17 = deflatePending((v16 + 16), &pending, 0);
    swift_endAccess();
    if (v17)
    {

      v18 = 1044;
    }

    else
    {
      v19 = pending;

      v18 = v19 + 21;
    }

    v20 = *(v3 + 16);

    v21 = swift_slowAlloc();
    v22 = v21 + v18;
    v23 = v39;
    v24 = sub_1001D3580(&pending, v21, v21 + v18, v20, v3);
    v39 = v23;
    if (v23)
    {

      swift_willThrow();

      return (*(v32 + 8))(v15, v33);
    }

    if (v24 < 0 || v18 < v24)
    {
      break;
    }

    v25 = *(v37 + 48);
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    *(v26 + 24) = v22;
    v42[2] = sub_1001D4464;
    v42[3] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v42[0] = sub_10019C778;
    v42[1] = &unk_1005A5EB8;
    v27 = _Block_copy(aBlock);
    *v8 = 0;
    v8[1] = v27;
    (*v34)(v8, v35, v38);
    sub_1004A52E4();

    v28 = pending;
    v10[v25] = pending;
    sub_1004A5354();
    sub_1001D3E28(v10);
    if ((v28 & 1) == 0)
    {
      return (*(v32 + 32))(v31, v15, v33);
    }
  }

  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001D1848()
{
  v1 = v0;
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Deflate.InputBuffer(0);
  __chkstk_darwin(v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001D3018(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v8)
    {
      return v8[1] - *v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v10 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    (*(v3 + 8))(v5, v2);
    return v10;
  }
}

uint64_t sub_1001D19C0(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  swift_beginAccess();

  v4 = deflate((v3 + 16), a1 & 1);
  swift_endAccess();
  if (v4 && v4 != -5)
  {
    sub_1001D3CA0();
    swift_allocError();
    *v5 = "deflate";
    *(v5 + 8) = 7;
    *(v5 + 16) = 2;
    *(v5 + 20) = v4;
    swift_willThrow();
  }
}

uint64_t sub_1001D1A88(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_beginAccess();

  v3 = deflate((v2 + 16), 5);
  swift_endAccess();
  if (v3)
  {
    v4 = v3 == -5;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v8 = "deflate";
    v9 = 7;
LABEL_14:
    sub_1001D3CA0();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = 2;
    *(v10 + 20) = v3;
    swift_willThrow();
  }

  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  if (*(a1 + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  swift_beginAccess();

  v3 = deflateParams((v5 + 16), v6, v7);
  swift_endAccess();
  if (v3)
  {
    v8 = "deflateParams";
    v9 = 13;
    goto LABEL_14;
  }
}

uint64_t sub_1001D1BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v17[1] = a1;
  v8 = sub_1004A52D4();
  v17[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_slowAlloc();
  v12 = sub_1001D3648(&v19, v11, v11 + a2, v4, a3);
  if (v5)
  {

    return swift_willThrow();
  }

  v14 = v17[0];
  if (a2 < 0)
  {
    __break(1u);
LABEL_9:
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  if (v12 < 0 || v12 > a2)
  {
    goto LABEL_9;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v11 + a2;
  aBlock[4] = sub_1001D3C44;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A5E68;
  v16 = _Block_copy(aBlock);
  *v10 = 0;
  v10[1] = v16;
  (*(v14 + 104))(v10, enum case for DispatchData.Deallocator.custom(_:), v8);
  sub_1004A52E4();

  return v19;
}

uint64_t sub_1001D1E1C()
{

  return swift_deallocClassInstance();
}

int *sub_1001D1E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = sub_1004A52D4();
  v121 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = (&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_10000C9C0(&qword_1005D4310, &qword_1004E01B0);
  __chkstk_darwin(v109);
  v106 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v118 = &v94 - v9;
  v105 = type metadata accessor for Deflate.PartialResult(0);
  __chkstk_darwin(v105);
  v117 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Deflate.InputBuffer(0);
  __chkstk_darwin(v122);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v104 = (&v94 - v14);
  __chkstk_darwin(v15);
  v98 = (&v94 - v16);
  __chkstk_darwin(v17);
  v108 = (&v94 - v18);
  __chkstk_darwin(v19);
  v107 = &v94 - v20;
  __chkstk_darwin(v21);
  v112 = &v94 - v22;
  __chkstk_darwin(v23);
  v25 = &v94 - v24;
  v113 = sub_1004A5384();
  v26 = *(v113 - 8);
  __chkstk_darwin(v113);
  v115 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v94 - v29;
  v31 = sub_1001D1230();
  v119 = v3;
  if (v31)
  {
    sub_1004A5344();
    v32 = *(v2 + 16);
    swift_beginAccess();
    v33 = *(v32 + 32);
    if (v33 < 0)
    {
LABEL_67:
      __break(1u);
    }

    else
    {
      v34 = *(v32 + 56);
      if ((v34 & 0x8000000000000000) == 0)
      {
        result = type metadata accessor for Deflate.Result(0);
        v36 = 0;
        v37 = (a2 + result[5]);
        *v37 = 0;
        v37[1] = 0;
LABEL_57:
        v91 = (a2 + result[6]);
        *v91 = v33;
        v91[1] = v34;
        *(a2 + result[7]) = v36;
        return result;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v96 = v12;
  v103 = v2;
  v97 = a2;
  sub_1004A5344();
  sub_1001D3018(a1, v25);
  v120 = (v26 + 32);
  v114 = (v26 + 8);
  v101 = v124;
  v100 = enum case for DispatchData.Deallocator.custom(_:);
  v99 = (v121 + 104);
  v38 = 1;
  v39 = v112;
  v40 = v113;
  v95 = a1;
  v94 = v26;
  v102 = v30;
  while (1)
  {
    v116 = v38;
    sub_1001D3018(v25, v39);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      if (*v39)
      {
        v42 = v39[1] - *v39;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v43 = v115;
      (*v120)(v115, v39, v40);
      v42 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      EnumCaseMultiPayload = (*v114)(v43, v40);
    }

    v44 = v103;
    v45 = (v42 * 3) >> 64;
    v46 = 3 * v42;
    if (v45 != v46 >> 63)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (qword_1005D2D78 != -1)
    {
      EnumCaseMultiPayload = swift_once();
    }

    if (v46 >= qword_1005D4108 / 2)
    {
      v48 = v46 + qword_1005D4108;
      if (__OFADD__(v46, qword_1005D4108))
      {
        goto LABEL_62;
      }

      v49 = __OFSUB__(v48, 1);
      v50 = v48 - 1;
      if (v49)
      {
        goto LABEL_63;
      }

      if (!qword_1005D4108)
      {
        goto LABEL_64;
      }

      if (qword_1005D4108 == -1 && v50 == 0x8000000000000000)
      {
        goto LABEL_66;
      }

      v51 = v50 / qword_1005D4108;
      if (v51 >= 4)
      {
        v51 = 4;
      }

      v47 = v51 * qword_1005D4108;
      if ((v51 * qword_1005D4108) >> 64 != (v51 * qword_1005D4108) >> 63)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v47 = v46 <= 20 ? 20 : v46;
    }

    v52 = *(v44 + 16);
    v126 = 0;
    __chkstk_darwin(EnumCaseMultiPayload);
    *(&v94 - 6) = v25;
    *(&v94 - 5) = v52;
    *(&v94 - 4) = sub_1001D3E90;
    *(&v94 - 3) = v44;
    v92 = &v126;

    v53 = swift_slowAlloc();
    v54 = v53 + v47;
    v55 = v119;
    v56 = sub_1001D3648(&v125, v53, v53 + v47, v52, sub_1001D4470);
    v119 = v55;
    if (v55)
    {

      swift_willThrow();

      (*v114)(v102, v113);
      return sub_1001D3BB4(v25, type metadata accessor for Deflate.InputBuffer);
    }

    if (v47 < 0)
    {
      goto LABEL_59;
    }

    if (v56 < 0 || v47 < v56)
    {
      goto LABEL_71;
    }

    v57 = *(v109 + 48);
    v58 = swift_allocObject();
    *(v58 + 16) = v53;
    *(v58 + 24) = v54;
    v124[2] = sub_1001D4464;
    v124[3] = v58;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v124[0] = sub_10019C778;
    v124[1] = &unk_1005A5F08;
    v59 = _Block_copy(aBlock);
    v61 = v110;
    v60 = v111;
    *v110 = 0;
    v61[1] = v59;
    (*v99)(v61, v100, v60);
    v62 = v118;
    sub_1004A52E4();

    LODWORD(v121) = v125;
    *(v62 + v57) = v125;
    v63 = v126;
    v64 = v108;
    sub_1001D3018(v25, v108);
    v65 = swift_getEnumCaseMultiPayload();
    v66 = v107;
    v67 = v120;
    if (v65 == 1)
    {
      v40 = v113;
      if (*v64)
      {
        if (v63 == v64[1] - *v64)
        {
          goto LABEL_40;
        }
      }

      else if (!v63)
      {
LABEL_40:
        sub_1004A5344();

        v72 = v66;
        swift_storeEnumTagMultiPayload();
        goto LABEL_47;
      }
    }

    else
    {
      v70 = v115;
      v40 = v113;
      (*v120)(v115, v64, v113);
      v71 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v114)(v70, v40);
      if (v63 == v71)
      {
        goto LABEL_40;
      }
    }

    v68 = v98;
    sub_1001D3018(v25, v98);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v68)
      {
        v69 = v68[1] - *v68;
        if (v69 < v63)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v69 = 0;
        if (v63 > 0)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v73 = v115;
      (*v67)(v115, v68, v40);
      v69 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v114)(v73, v40);
      if (v69 < v63)
      {
        goto LABEL_61;
      }
    }

    sub_1001D2C4C(v63, v69, v66);

    v72 = v66;
LABEL_47:
    v74 = v106;
    sub_1001D3AE0(v118, v106);
    v75 = *v120;
    v76 = v117;
    (*v120)(v117, v74, v40);
    v77 = v105;
    v78 = *(v105 + 20);
    sub_1001D3B50(v72, v76 + v78);
    *(v76 + *(v77 + 24)) = v121;
    sub_1004A5354();
    sub_1001D3BB4(v25, type metadata accessor for Deflate.InputBuffer);
    sub_1001D3018(v76 + v78, v25);
    v79 = v104;
    sub_1001D3018(v25, v104);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v112;
      if (*v79 && v79[1] != *v79)
      {
LABEL_52:
        sub_1001D3BB4(v117, type metadata accessor for Deflate.PartialResult);
        goto LABEL_7;
      }
    }

    else
    {
      v80 = v115;
      v75(v115, v79, v40);
      sub_1001B60F8();
      sub_1004A5E64();
      sub_1004A5EA4();
      (*v114)(v80, v40);
      v39 = v112;
      if (aBlock[0] != v126)
      {
        goto LABEL_52;
      }
    }

    sub_1001D3BB4(v117, type metadata accessor for Deflate.PartialResult);
    if ((v121 & 1) == 0)
    {
      break;
    }

LABEL_7:
    v38 = v116 + 1;
    if (__OFADD__(v116, 1))
    {
      goto LABEL_60;
    }
  }

  v82 = v94 + 16;
  v81 = *(v94 + 16);
  v83 = v40;
  a2 = v97;
  v84 = v102;
  v81(v97, v102, v83);
  v85 = v96;
  sub_1001D3018(v95, v96);
  v86 = v115;
  v81(v115, v84, v83);
  v122 = sub_1001D1848();
  v87 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v88 = *(v82 - 8);
  v88(v86, v83);
  sub_1001D3BB4(v85, type metadata accessor for Deflate.InputBuffer);
  v88(v84, v83);
  sub_1001D3BB4(v25, type metadata accessor for Deflate.InputBuffer);
  v89 = *(v103 + 16);
  swift_beginAccess();
  v33 = *(v89 + 32);
  if (v33 < 0)
  {
    goto LABEL_69;
  }

  v34 = *(v89 + 56);
  if ((v34 & 0x8000000000000000) == 0)
  {
    result = type metadata accessor for Deflate.Result(0);
    v90 = (a2 + result[5]);
    *v90 = v122;
    v90[1] = v87;
    v36 = v116;
    goto LABEL_57;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  v93 = 0;
  v92 = 613;
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001D2B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  swift_beginAccess();

  v3 = inflate((v2 + 16), 2);
  swift_endAccess();
  if (v3 && v3 != -5)
  {
    sub_1001D3CA0();
    swift_allocError();
    *v4 = "inflate";
    *(v4 + 8) = 7;
    *(v4 + 16) = 2;
    *(v4 + 20) = v3;
    swift_willThrow();
  }
}

uint64_t sub_1001D2BF0()
{

  return swift_deallocClassInstance();
}

void sub_1001D2C4C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1004A5384();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Deflate.InputBuffer(0);
  __chkstk_darwin(v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (&v18 - v13);
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    if (v15 < 1)
    {
      sub_1004A5344();
    }

    else
    {
      sub_1001D3018(v3, &v18 - v13);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = *v14 + a1;
        if (*v14)
        {
          v17 = v16 + v15;
        }

        else
        {
          v17 = 0;
        }

        if (!*v14)
        {
          v16 = 0;
        }

        *a3 = v16;
        a3[1] = v17;
      }

      else
      {
        (*(v8 + 32))(v10, v14, v7);
        sub_1004A5364();
        (*(v8 + 8))(v10, v7);
      }
    }

    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1001D2E5C()
{
  if (*(v0 + 128))
  {
    swift_beginAccess();
    inflateEnd((v0 + 16));
  }

  else
  {
    swift_beginAccess();
    deflateEnd((v0 + 16));
  }

  swift_endAccess();
  return swift_deallocClassInstance();
}

unint64_t sub_1001D2F2C()
{
  result = qword_1005D4300;
  if (!qword_1005D4300)
  {
    result = swift_getWitnessTable(byte_1004E00E0, &type metadata for Deflate.InputKind, v0, v1);
    atomic_store(result, &qword_1005D4300);
  }

  return result;
}

unint64_t sub_1001D2F84()
{
  result = qword_1005D4308;
  if (!qword_1005D4308)
  {
    result = swift_getWitnessTable(byte_1004E0188, &type metadata for Deflate.Stream.Kind, v0, v1);
    atomic_store(result, &qword_1005D4308);
  }

  return result;
}

uint64_t sub_1001D3018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Deflate.InputBuffer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D307C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v42 = a5;
  v9 = sub_1004A5384();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v36 - v13;
  v15 = type metadata accessor for Deflate.InputBuffer(0);
  __chkstk_darwin(v15);
  v17 = (v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v20 = (v36 - v19);
  v21 = sub_1001D1230();
  if (v21)
  {
    swift_beginAccess();
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    return a3(1);
  }

  v39 = v36;
  __chkstk_darwin(v21);
  v37 = a2;
  v38 = a3;
  v36[-4] = a2;
  v36[-3] = a3;
  v36[1] = a4;
  v23 = v42;
  v36[-2] = a4;
  v36[-1] = v23;
  sub_1001D3018(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v20;
    v24 = v20[1];
    sub_1001D3018(a1, v17);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v26 = v38;
      if (!*v17 || v17[1] == *v17)
      {
        return result;
      }
    }

    else
    {
      v31 = v40;
      v30 = v41;
      (*(v40 + 32))(v11, v17, v41);
      sub_1001B60F8();
      sub_1004A5E64();
      sub_1004A5EA4();
      result = (*(v31 + 8))(v11, v30);
      v26 = v38;
      if (v44[0] == v44[4])
      {
        return result;
      }
    }

    v32 = v37;
    result = swift_beginAccess();
    *(v32 + 16) = v25;
    if (v25)
    {
      v33 = v24 - v25;
    }

    else
    {
      v33 = 0;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v34 = v43;
      if (!HIDWORD(v33))
      {
        *(v32 + 24) = v33;
        result = v26(1);
        if (v34)
        {
          *(v32 + 16) = 0;
          *(v32 + 24) = 0;
        }

        else
        {
          v35 = *(v32 + 24);
          *(v32 + 16) = 0;
          *(v32 + 24) = 0;
          *v23 = v33 - v35;
        }

        return result;
      }
    }

    __break(1u);
    return result;
  }

  v28 = v40;
  v27 = v41;
  v29 = (*(v40 + 32))(v14, v20, v41);
  v44[0] = 0;
  __chkstk_darwin(v29);
  v36[-4] = v14;
  v36[-3] = sub_1001D3C74;
  v36[-2] = &v36[-6];
  v36[-1] = v44;
  sub_1004A5304();
  if (v44[0])
  {
    swift_willThrow();
  }

  return (*(v28 + 8))(v14, v27);
}

uint64_t sub_1001D348C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, void *a8)
{
  result = swift_beginAccess();
  *(a5 + 16) = a1;
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v17))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(a5 + 24) = v17;
  result = a6(a4 & 1);
  if (v8)
  {
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return result;
  }

  v18 = *(a5 + 24);
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v19 = a3 + v17;
  if (__OFADD__(a3, v17))
  {
    goto LABEL_14;
  }

  v20 = __OFSUB__(v19, v18);
  v21 = v19 - v18;
  if (v20)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *a8 = v21;
  return v18 != 0;
}

uint64_t sub_1001D3580(BOOL *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  *(a4 + 40) = a2;
  if (a2)
  {
    v12 = a3 - a2;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v12))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *(a4 + 48) = v12;
  sub_1001D1A88(a5);
  if (!v5)
  {
    a3 = v12 - *(a4 + 48);
    *a1 = *(a4 + 48) == 0;
  }

  *(a4 + 40) = 0;
  *(a4 + 48) = 0;

  return a3;
}

unint64_t sub_1001D3648(BOOL *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = swift_beginAccess();
  *(a4 + 40) = a2;
  if (a2)
  {
    v12 = a3 - a2;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v12))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *(a4 + 48) = v12;
  result = a5(result);
  if (!v5)
  {
    result = v12 - *(a4 + 48);
    *a1 = *(a4 + 48) == 0;
  }

  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  return result;
}

unint64_t sub_1001D3708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6724(33);

  v7._countAndFlagsBits = sub_1004A6754();
  sub_1004A5994(v7);

  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  sub_1004A5994(v8);
  v9._countAndFlagsBits = sub_1001D3830(a1, a2, a3 & 0xFFFFFFFF000000FFLL);
  sub_1004A5994(v9);

  v10._countAndFlagsBits = 10272;
  v10._object = 0xE200000000000000;
  sub_1004A5994(v10);
  v11._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_1004A5994(v12);
  return 0xD000000000000017;
}

uint64_t sub_1001D3830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SHIDWORD(a3) <= -3)
  {
    if (SHIDWORD(a3) > -5)
    {
      if (HIDWORD(a3) != -4)
      {
        return 0x455F415441445F5ALL;
      }

      v3 = 0x5F4D454D5F5ALL;
    }

    else
    {
      if (HIDWORD(a3) == -6)
      {
        return 0x4F49535245565F5ALL;
      }

      if (HIDWORD(a3) != -5)
      {
        return sub_1004A6CE4();
      }

      v3 = 0x5F4655425F5ALL;
    }

    return v3 & 0xFFFFFFFFFFFFLL | 0x5245000000000000;
  }

  if (a3 < 0)
  {
    if (HIDWORD(a3) == -2)
    {
      return 0x4D41455254535F5ALL;
    }

    if (HIDWORD(a3) == -1)
    {
      return 0x4F4E5252455F5ALL;
    }
  }

  else
  {
    switch(HIDWORD(a3))
    {
      case 0:
        return 1263492954;
      case 2:
        return 0x445F4445454E5F5ALL;
      case 1:
        return 0x4D41455254535F5ALL;
    }
  }

  return sub_1004A6CE4();
}

uint64_t sub_1001D39D4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, BOOL))
{
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (__OFADD__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v12 = a2 + a1;
    }

    else
    {
      v12 = 0;
    }

    result = a6(a1, v12, a3, a2 + a3 >= result);
    if (result)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t sub_1001D3A8C()
{
  result = sub_1001D3CF4();
  qword_1005D4108 = result;
  return result;
}

uint64_t sub_1001D3AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D4310, &qword_1004E01B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D3B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Deflate.InputBuffer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D3BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D3C44()
{
  result = *(v0 + 16);
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001D3C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001D3CA0()
{
  result = qword_1005D4318;
  if (!qword_1005D4318)
  {
    result = swift_getWitnessTable(byte_1004E02E0, &type metadata for Deflate.Error, v0, v1);
    atomic_store(result, &qword_1005D4318);
  }

  return result;
}

uint64_t sub_1001D3CF4()
{
  v3 = 0x700000006;
  v2 = 0;
  v1 = 4;
  if (!sysctl(&v3, 2u, &v2, &v1, 0, 0))
  {
    return v2;
  }

  sub_1004A6724(20);

  sub_1004A4B74();
  v4._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v4);

  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001D3E28(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D4310, &qword_1004E01B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchRequest.Predicate.Day(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SearchRequest.Predicate.Day(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1001D3F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Deflate.InputBuffer(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1001D405C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1004A5384();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Deflate.InputBuffer(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1001D4164(uint64_t a1)
{
  result = sub_1004A5384();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Deflate.InputBuffer(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D4214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001D4294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001D4304(uint64_t a1)
{
  result = sub_1004A5384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001D4394(uint64_t a1)
{
  result = sub_1004A5384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001D4400()
{
  result = qword_1005D44F8;
  if (!qword_1005D44F8)
  {
    result = swift_getWitnessTable(byte_1004E0290, &type metadata for Deflate.Stream.OutputStatus, v0, v1);
    atomic_store(result, &qword_1005D44F8);
  }

  return result;
}

uint64_t sub_1001D4488@<X0>(uint64_t a1@<X8>)
{
  v24 = type metadata accessor for Deflate.InputBuffer(0);
  __chkstk_darwin(v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Deflate.Result(0);
  __chkstk_darwin(v5 - 8);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = _s12OutputHelperV5ChunkVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s12OutputHelperVMa(0);
  v15 = *(v14 + 24);
  sub_1001D4888(v1 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1001D48F8(v9);
  }

  else
  {
    v23 = a1;
    sub_1001D4960(v9, v13);
    v16 = sub_1004A5384();
    (*(*(v16 - 8) + 16))(v4, v13, v16);
    swift_storeEnumTagMultiPayload();
    v17 = v26;
    sub_1001D0774(v4, v13[*(v10 + 20)], v25);
    if (v17)
    {
      sub_1001D49C4(v4, type metadata accessor for Deflate.InputBuffer);
      sub_1001D49C4(v13, _s12OutputHelperV5ChunkVMa);
      sub_1001D48F8(v1 + v15);
      return (*(v11 + 56))(v1 + v15, 1, 1, v10);
    }

    sub_1001D49C4(v4, type metadata accessor for Deflate.InputBuffer);
    v19 = v25;
    sub_1004A5354();
    sub_1001D49C4(v19, type metadata accessor for Deflate.Result);
    sub_1001D49C4(v13, _s12OutputHelperV5ChunkVMa);
    sub_1001D48F8(v1 + v15);
    (*(v11 + 56))(v1 + v15, 1, 1, v10);
    a1 = v23;
  }

  v20 = *(v14 + 20);
  v21 = sub_1004A5384();
  return (*(*(v21 - 8) + 16))(a1, v1 + v20, v21);
}

uint64_t sub_1001D4888(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D48F8(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D4960(uint64_t a1, uint64_t a2)
{
  v4 = _s12OutputHelperV5ChunkVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D49C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D4A38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1004A5384();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1001D4B60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1004A5384();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_1001D4C70(uint64_t a1)
{
  sub_1004A5384();
  if (v1 <= 0x3F)
  {
    sub_1001D4D1C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Deflate.Compressor();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001D4D1C(uint64_t a1)
{
  if (!qword_1005D4570)
  {
    _s12OutputHelperV5ChunkVMa(255);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D4570);
    }
  }
}

uint64_t sub_1001D4D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001D4E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A5384();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001D4F0C(uint64_t a1)
{
  result = sub_1004A5384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1001D4F90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v7 = a7;
  if (a4)
  {
    *&v44 = a1;
    *(&v44 + 1) = a2;
    *&v45 = a3;
    BYTE8(v45) = a4 | 0x40;
    sub_100197E60(&v44);
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v60 = v48;
    v61 = v49;
    v62 = v50;
    v63 = v51;
    v56 = v44;
    v57 = v45;
    v58 = v46;
    v59 = v47;
    UInt32.init(_:)(&v56);
    sub_10001123C(a1, a2, a3, a4);
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v72 = v60;
    v73 = v61;
    v74 = v62;
    v75 = v63;
    v68 = v56;
    v69 = v57;
    v70 = v58;
    v71 = v59;
    goto LABEL_28;
  }

  v38 = *(a5 + 16);
  if (!v38)
  {
    goto LABEL_24;
  }

  v12 = a6;
  v13 = 0;
  v14 = a5 + 32;
  v15 = a6 + 56;
  v37 = a5 + 32;
LABEL_5:
  v16 = (v14 + 32 * v13);
  v18 = *v16;
  v17 = v16[1];
  if (*(v12 + 16))
  {
    v41 = v13;
    v19 = v16[2];
    v20 = *(v16 + 24);
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v43 = v19;
    if (v20)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EF4(v19 >> 14);
    }

    v21 = sub_1004A6F14();
    v22 = -1 << *(v12 + 32);
    v23 = v21 & ~v22;
    if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_26;
    }

    v42 = v41 + 1;
    v24 = ~v22;
    v25 = *(a6 + 48);
    while (1)
    {
      v26 = v25 + 32 * v23;
      v27 = *(v26 + 16);
      v28 = *(v26 + 24);
      v29 = *v26 == v18 && *(v26 + 8) == v17;
      if (v29 || (sub_1004A6D34() & 1) != 0)
      {
        if (v28)
        {
          if (v20)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (((v27 ^ v43) & 0xFFFFFFFFFFFFC000) != 0)
          {
            v30 = 1;
          }

          else
          {
            v30 = v20;
          }

          if ((v30 & 1) == 0)
          {
LABEL_23:

            v14 = v37;
            v12 = a6;
            v13 = v42;
            if (v42 == v38)
            {
LABEL_24:
              sub_1001D5450(&v44);
              goto LABEL_27;
            }

            goto LABEL_5;
          }
        }
      }

      v23 = (v23 + 1) & v24;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_26:
  *&v44 = v18;
  *(&v44 + 1) = v17;
  *&v45 = 0;
  BYTE8(v45) = 0x80;
  sub_100197E60(&v44);
LABEL_27:
  v64 = v52;
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  v63 = v51;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  UInt32.init(_:)(&v56);
  v76 = v64;
  v77 = v65;
  v78 = v66;
  v79 = v67;
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v7 = a7;
LABEL_28:
  v31 = v77;
  *(v7 + 128) = v76;
  *(v7 + 144) = v31;
  *(v7 + 160) = v78;
  *(v7 + 176) = v79;
  v32 = v73;
  *(v7 + 64) = v72;
  *(v7 + 80) = v32;
  v33 = v75;
  *(v7 + 96) = v74;
  *(v7 + 112) = v33;
  v34 = v69;
  *v7 = v68;
  *(v7 + 16) = v34;
  result = *&v70;
  v36 = v71;
  *(v7 + 32) = v70;
  *(v7 + 48) = v36;
  return result;
}

double sub_1001D5300@<D0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 64) = 3;

  return result;
}

uint64_t sub_1001D5314(uint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100124EFC(a1, v4);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    return sub_100124F60(v4);
  }

  sub_1001FC92C(*v4);
}

double sub_1001D53D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1001D4F90(a1, a2, a3, a4, *(v5 + 8), *(v5 + 16), v13);
  v7 = v21;
  *(a5 + 128) = v20;
  *(a5 + 144) = v7;
  *(a5 + 160) = v22;
  *(a5 + 176) = v23;
  v8 = v17;
  *(a5 + 64) = v16;
  *(a5 + 80) = v8;
  v9 = v19;
  *(a5 + 96) = v18;
  *(a5 + 112) = v9;
  v10 = v13[1];
  *a5 = v13[0];
  *(a5 + 16) = v10;
  result = *&v14;
  v12 = v15;
  *(a5 + 32) = v14;
  *(a5 + 48) = v12;
  return result;
}

double sub_1001D5450(uint64_t a1)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

void *sub_1001D5494(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100091A08(0, v1, 0);
  v24 = a1 + 56;
  result = sub_1004A6554();
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

    result = sub_1004A5804();
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_100091A08((v11 > 1), v12 + 1, 1);
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
          result = sub_100020944(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v4, v9, 0);
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

void *Event.Payload.shortLogIdentifier.getter(unint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v2 - 8);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 >> 60;
  if ((a1 >> 60) > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        return 0xD00000000000001ALL;
      }

      if (v5 == 7)
      {
        return 0xD000000000000020;
      }

      v29 = 0x3E7974706D653CLL;
      if (a1 != 0x8000000000000008)
      {
        v29 = 0xD000000000000010;
      }

      if (a1 == 0x8000000000000000)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v29;
      }
    }

    if (v5 != 4)
    {
      v30 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if (!v31)
      {
        return 0xD000000000000018;
      }

      v33 = *(v30 + 32);
      v32 = *(v30 + 40);
      *&v51 = 0;
      *(&v51 + 1) = 0xE000000000000000;
      sub_10010E780(v33, v32, v31);
      sub_10010E780(v33, v32, v31);

      sub_1004A6724(27);

      *&v47[0] = 0xD000000000000019;
      *(&v47[0] + 1) = 0x80000001004ABC60;
      *&v51 = v33;
      *(&v51 + 1) = v32;
      *&v52 = v31;
      sub_1000110B0(v33);

      v59._countAndFlagsBits = sub_1004A5824();
      sub_1004A5994(v59);

      sub_10001114C(v33);

      sub_10010E7C0(v33, v32, v31);
      return *&v47[0];
    }

    v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) | (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x14) << 32);
    if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
    {
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) != 1)
      {
        *&v51 = Tag.debugDescription.getter(v12);
        *(&v51 + 1) = v45;
        v13._countAndFlagsBits = 1145127456;
        v13._object = 0xE400000000000000;
        goto LABEL_42;
      }

      *&v51 = Tag.debugDescription.getter(v12);
      *(&v51 + 1) = v13._object;
      v13._countAndFlagsBits = 5197344;
    }

    else
    {
      *&v51 = Tag.debugDescription.getter(v12);
      *(&v51 + 1) = v13._object;
      v13._countAndFlagsBits = 4935456;
    }

    v13._object = 0xE300000000000000;
LABEL_42:
    sub_1004A5994(v13);
    return v51;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v52 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v53 = v10;
      v54[0] = v11;
      *(v54 + 11) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
      v51 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_1000CB914(&v51, v47);
      v56._countAndFlagsBits = 0x656C657320646944;
      v56._object = 0xEC00000027207463;
      sub_1004A5994(v56);
      v47[2] = v53;
      v48[0] = v54[0];
      *(v48 + 11) = *(v54 + 11);
      v47[0] = v51;
      v47[1] = v52;
      sub_1004A6934();
      sub_1000CB970(&v51);
      v57._countAndFlagsBits = 39;
      v57._object = 0xE100000000000000;
      sub_1004A5994(v57);
      return v49;
    }

    else
    {
      v27 = swift_projectBox();
      sub_100124EFC(v27, v4);
      *&v51 = 8234;
      *(&v51 + 1) = 0xE200000000000000;
      v58._countAndFlagsBits = UntaggedResponse.name.getter();
      sub_1004A5994(v58);

      v28 = v51;
      sub_100124F60(v4);
      return v28;
    }
  }

  if (!v5)
  {
    *&v51 = sub_1001D5494(*(a1 + 16));
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v7 = sub_1004A5614();
    v9 = v8;

    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1004A6724(33);

    *&v51 = 0xD00000000000001ELL;
    *(&v51 + 1) = 0x80000001004ABCA0;
    v55._countAndFlagsBits = v7;
    v55._object = v9;
    sub_1004A5994(v55);
LABEL_32:

    v13._countAndFlagsBits = 125;
    v13._object = 0xE100000000000000;
    goto LABEL_42;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v16 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v17 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v18 = *(v16 + 16);
  *&v47[0] = _swiftEmptyArrayStorage;
  sub_100091A08(0, v18, 0);
  v19 = *&v47[0];
  ConnectionCommandIDSet.makeIterator()(v15, v16, v17);
  if (!v18)
  {
LABEL_30:
    sub_1004A6AA4();
    if ((BYTE8(v51) & 1) == 0)
    {
      v37 = v51;
      do
      {
        LOBYTE(v51) = v37;
        DWORD1(v51) = HIDWORD(v37);
        v38 = sub_1004A5804();
        *&v47[0] = v19;
        v41 = *(v19 + 16);
        v40 = *(v19 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = v38;
          v44 = v39;
          sub_100091A08((v40 > 1), v41 + 1, 1);
          v39 = v44;
          v38 = v43;
          v19 = *&v47[0];
        }

        *(v19 + 16) = v41 + 1;
        v42 = v19 + 16 * v41;
        *(v42 + 32) = v38;
        *(v42 + 40) = v39;
        sub_1004A6AA4();
        v37 = v51;
      }

      while (BYTE8(v51) != 1);
    }

    *&v51 = v19;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v34 = sub_1004A5614();
    v36 = v35;

    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1004A6724(29);
    v60._countAndFlagsBits = 0xD000000000000015;
    v60._object = 0x80000001004ABC80;
    sub_1004A5994(v60);
    *&v47[0] = v14;
    sub_1004A6934();
    v61._countAndFlagsBits = 8069161;
    v61._object = 0xE300000000000000;
    sub_1004A5994(v61);
    v62._countAndFlagsBits = v34;
    v62._object = v36;
    sub_1004A5994(v62);
    goto LABEL_32;
  }

  while (1)
  {
    result = sub_1004A6AA4();
    if (BYTE8(v51))
    {
      break;
    }

    v20 = sub_1004A5804();
    *&v47[0] = v19;
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v23 >= v22 >> 1)
    {
      v25 = v20;
      v26 = v21;
      sub_100091A08((v22 > 1), v23 + 1, 1);
      v21 = v26;
      v20 = v25;
      v19 = *&v47[0];
    }

    *(v19 + 16) = v23 + 1;
    v24 = v19 + 16 * v23;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    if (!--v18)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

unint64_t Event.payload.getter()
{
  v1 = *(v0 + 8);
  sub_1000CB7C8(v1);
  return v1;
}

unint64_t Event.payload.setter(uint64_t a1)
{
  result = sub_1000CB848(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

uint64_t Event.runningCommandIDs.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Event.runningCommandIDs.setter(int a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

void (*Event.Payload.forEachCommand(_:)(void (*result)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, unint64_t a3))(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  if (a3 >> 60 == 4)
  {
    v4 = result;
    v5 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v7 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v8 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v9 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    sub_10001123C(v6, v7, v8, v9);
    v4(v5, v6, v7, v8, v9);

    return sub_100173584(v6, v7, v8, v9);
  }

  return result;
}

char *sub_1001D5FAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D60AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D5FCC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D61B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D5FEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D62D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001D600C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D63C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D602C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D64F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D604C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D6610(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D606C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D6710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D608C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D6804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D60AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEE80, &qword_1004D1D50);
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

char *sub_1001D61B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4650, &qword_1004E2A70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001D62D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4668, &qword_1004E05F0);
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

void *sub_1001D63C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005D4658, &unk_10050A050);
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
    sub_10000C9C0(&qword_1005D4660, &qword_1004E05E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001D64F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4670, &qword_1004E05F8);
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

char *sub_1001D6610(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4648, &qword_1004E05E0);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1001D6710(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
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

char *sub_1001D6804(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4638, &qword_1004E05D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int _s15IMAP2Connection5EventV7PayloadO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v7);
  v10 = &v52[-v9];
  v11 = a1 >> 60;
  if ((a1 >> 60) <= 3)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v55 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v56[0] = v25;
        *(v56 + 11) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
        v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v53 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v54 = v26;
        if (a2 >> 60 == 2)
        {
          v27 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v58 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v59 = v27;
          v60[0] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          *(v60 + 11) = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
          v57 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          sub_1000CB914(&v57, v52);
          v12 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(&v53, &v57);
          sub_1000CB970(&v57);
          return v12 & 1;
        }
      }

      else if (a2 >> 60 == 3)
      {
        v40 = swift_projectBox();
        v41 = swift_projectBox();
        sub_100124EFC(v40, v10);
        sub_100124EFC(v41, v6);
        v12 = static UntaggedResponse.__derived_enum_equals(_:_:)(v10, v6);
        sub_100124F60(v6);
        sub_100124F60(v10);
        return v12 & 1;
      }

      goto LABEL_54;
    }

    if (!v11)
    {
      v13 = *(a1 + 16);
      v14 = *(a1 + 136);
      v15 = *(a1 + 168);
      v56[5] = *(a1 + 152);
      v56[6] = v15;
      v56[7] = *(a1 + 184);
      v16 = *(a1 + 72);
      v17 = *(a1 + 104);
      v56[1] = *(a1 + 88);
      v56[2] = v17;
      v56[3] = *(a1 + 120);
      v56[4] = v14;
      v18 = *(a1 + 40);
      v53 = *(a1 + 24);
      v54 = v18;
      v55 = *(a1 + 56);
      v56[0] = v16;
      if (!(a2 >> 60))
      {
        v19 = *(a2 + 16);
        v20 = *(a2 + 152);
        v60[4] = *(a2 + 136);
        v60[5] = v20;
        v21 = *(a2 + 184);
        v60[6] = *(a2 + 168);
        v60[7] = v21;
        v22 = *(a2 + 88);
        v60[0] = *(a2 + 72);
        v60[1] = v22;
        v23 = *(a2 + 120);
        v60[2] = *(a2 + 104);
        v60[3] = v23;
        v24 = *(a2 + 40);
        v57 = *(a2 + 24);
        v58 = v24;
        v59 = *(a2 + 56);
        if (sub_1001B00A0(v13, v19))
        {
          v12 = static ServerID.__derived_struct_equals(_:_:)(&v53, &v57);
          return v12 & 1;
        }
      }

LABEL_54:
      v12 = 0;
      return v12 & 1;
    }

    if (a2 >> 60 != 1)
    {
      goto LABEL_54;
    }

    v32 = a1 & 0xFFFFFFFFFFFFFFFLL;
    v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v35 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v36 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v37 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v39 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v38 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    if ((_s15IMAP2Connection07CommandB0C12RecentErrorsV23__derived_struct_equalsySbAE_AEtFZ_0(*(v32 + 16), v36, v8) & 1) == 0 || v33 != v37 || (sub_1001B42A0(v35, v39) & 1) == 0 || (sub_1001B42A0(v34, v38) & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_52:
    v12 = 1;
    return v12 & 1;
  }

  if (v11 <= 5)
  {
    if (v11 == 4)
    {
      if (a2 >> 60 != 4)
      {
        goto LABEL_54;
      }

      v12 = 0;
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) || *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x14) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x14))
      {
        return v12 & 1;
      }

      v28 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
      {
        if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) == 1)
        {
          if (v28 != 1)
          {
            goto LABEL_54;
          }
        }

        else if (v28 != 2)
        {
          goto LABEL_54;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
      {
        goto LABEL_54;
      }

      if ((static ResponseText.__derived_struct_equals(_:_:)(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20)) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (a2 >> 60 != 5)
      {
        goto LABEL_54;
      }

      v43 = a2 & 0xFFFFFFFFFFFFFFFLL;
      if ((*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) << 32)) != (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) << 32)))
      {
        goto LABEL_54;
      }

      v44 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v46 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v48 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v49 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v50 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if ((sub_1000FFC98(v44, *(v43 + 16)) & 1) == 0)
      {
        goto LABEL_54;
      }

      if (v47)
      {
        if (!v50)
        {
          goto LABEL_54;
        }

        sub_10010E780(v48, v49, v50);
        sub_10010E780(v48, v49, v50);

        v51 = static ResponseText.__derived_struct_equals(_:_:)(v45, v46);

        sub_10010E7C0(v48, v49, v50);
        sub_10001114C(v48);

        if ((v51 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else if (v50)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_52;
  }

  if (v11 != 6)
  {
    if (v11 == 7)
    {
      if (a2 >> 60 == 7)
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) ^ *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) ^ 1;
        return v12 & 1;
      }

      goto LABEL_54;
    }

    v42 = 0x8000000000000000;
    if (a1 == 0x8000000000000000 || (v42 = 0x8000000000000008, a1 == 0x8000000000000008))
    {
      if (a2 != v42)
      {
        goto LABEL_54;
      }
    }

    else if (a2 != 0x8000000000000010)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (a2 >> 60 != 6)
  {
    goto LABEL_54;
  }

  v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v30 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

  return sub_100083010(v29, v30);
}

unint64_t sub_1001D6E14(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 60;
  }

  else
  {
    return (*a1 >> 3) + 8;
  }
}

ValueMetadata *type metadata accessor for Event()
{
  return &type metadata for Event;
}

{
  return &type metadata for Event;
}

uint64_t sub_1001D6E40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 8))
  {
    return (*a1 + 120);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001D6E90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1001D6EF0(void *result, uint64_t a2)
{
  if (a2 < 8)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 8)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1001D6F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v59 = a4;
  v57 = a3;
  v55 = sub_1004A5384();
  v7 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v48 - v10;
  __chkstk_darwin(v11);
  v50 = &v48 - v12;
  v54 = sub_1004A4904();
  v13 = *(v54 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v54);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004A4D14();
  v61 = *(v15 - 8);
  v62 = v15;
  __chkstk_darwin(v15);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  __chkstk_darwin(v18 - 8);
  v56 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v48 - v21;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  v25 = sub_1001E1A9C(a1, a2);
  v65 = 0;
  v66 = 0xE000000000000000;
  v63[0] = a1;
  v64 = HIDWORD(a1);
  sub_1004A6934();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1004D3930;
  *(v26 + 32) = v25;
  sub_1004A4D04();
  swift_allocObject();
  v60 = v25;

  v51 = sub_1004A4CD4();
  sub_1004A5344();
  v27 = v55;
  (*(v7 + 56))(v24, 0, 1, v55);
  v28 = v53;
  v29 = v54;
  (*(v13 + 16))(v53, v57, v54);
  v30 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v31 = (v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v32 + v30;
  v34 = v58;
  v35 = v28;
  v36 = v52;
  (*(v13 + 32))(v33, v35, v29);
  v37 = v27;
  v38 = (v32 + v31);
  *v38 = v59;
  v38[1] = v34;
  *v17 = sub_1001E2E78;
  v17[1] = v32;
  (*(v61 + 104))(v17, enum case for NWConnection.SendCompletion.contentProcessed(_:), v62);
  sub_10000E268(v24, v36, &qword_1005D05E0, &qword_1004D65C0);
  v39 = *(v7 + 48);
  if (v39(v36, 1, v37) == 1)
  {

    sub_100025F40(v36, &qword_1005D05E0, &qword_1004D65C0);
    v40 = v56;
    sub_10000E268(v24, v56, &qword_1005D05E0, &qword_1004D65C0);
    if (v39(v40, 1, v37) == 1)
    {
      sub_100025F40(v56, &qword_1005D05E0, &qword_1004D65C0);
      sub_1004A4E14();
    }

    else
    {
      v42 = v49;
      (*(v7 + 32))(v49, v56, v37);
      v43 = v48;
      (*(v7 + 16))(v48, v42, v37);
      v44 = sub_1001D9C54(v43);
      v46 = v45;
      sub_1004A4E14();

      sub_100014D40(v44, v46);

      (*(v7 + 8))(v42, v37);
    }
  }

  else
  {
    v41 = v50;
    (*(v7 + 32))(v50, v36, v37);

    sub_1004A4E04();

    (*(v7 + 8))(v41, v37);
  }

  (*(v61 + 8))(v17, v62);
  return sub_100025F40(v24, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D75AC(uint64_t a1)
{
  v49 = a1;
  v1 = sub_1004A5384();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v42 - v5;
  __chkstk_darwin(v6);
  v46 = &v42 - v7;
  v8 = sub_1004A4904();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v48 = v10;
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1004A4D14();
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  __chkstk_darwin(v14 - 8);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v51 = &v42 - v17;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  sub_1004A5044();
  swift_allocObject();

  v21 = sub_1004A5024();
  v54 = &type metadata for Bool;
  v53[0] = 1;
  sub_1004A5064();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004D3930;
  *(v22 + 32) = v21;
  sub_1004A4D04();
  swift_allocObject();

  v47 = sub_1004A4CD4();
  sub_1004A5344();
  (*(v2 + 56))(v20, 0, 1, v1);
  (*(v9 + 16))(v11, v49, v8);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + v23, v11, v8);
  *v13 = sub_1001E2D04;
  v13[1] = v24;
  v25 = v50;
  (*(v52 + 104))(v13, enum case for NWConnection.SendCompletion.contentProcessed(_:), v50);
  v26 = v51;
  sub_10000E268(v20, v51, &qword_1005D05E0, &qword_1004D65C0);
  v27 = *(v2 + 48);
  v28 = v27(v26, 1, v1);
  v29 = v1;
  v30 = v2;
  v31 = v20;
  if (v28 == 1)
  {
    v49 = v21;
    sub_100025F40(v51, &qword_1005D05E0, &qword_1004D65C0);
    v32 = v20;
    v33 = v45;
    sub_10000E268(v32, v45, &qword_1005D05E0, &qword_1004D65C0);
    if (v27(v33, 1, v29) == 1)
    {
      sub_100025F40(v33, &qword_1005D05E0, &qword_1004D65C0);
      sub_1004A4E14();
    }

    else
    {
      v36 = v44;
      (*(v2 + 32))(v44, v33, v29);
      v37 = v43;
      (*(v2 + 16))(v43, v36, v29);
      v38 = sub_1001D9C54(v37);
      v40 = v39;
      sub_1004A4E14();

      sub_100014D40(v38, v40);

      (*(v30 + 8))(v36, v29);
    }

    v34 = v50;
  }

  else
  {
    v34 = v25;
    v35 = v46;
    (*(v30 + 32))(v46, v51, v29);
    sub_1004A4E04();

    (*(v30 + 8))(v35, v29);
  }

  (*(v52 + 8))(v13, v34);
  return sub_100025F40(v31, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D7C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v43 = a2;
  v4 = sub_1004A5384();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v37 - v8;
  __chkstk_darwin(v9);
  v40 = &v37 - v10;
  v11 = sub_1004A4D14();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  __chkstk_darwin(v15 - 8);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  sub_1004A5044();
  swift_allocObject();

  v23 = sub_1004A5024();
  v45 = sub_1004A5154();
  v44 = a1;

  sub_1004A5064();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1004D3930;
  *(v24 + 32) = v23;
  sub_1004A4D04();
  swift_allocObject();

  v25 = sub_1004A4CD4();
  sub_1004A5344();
  (*(v5 + 56))(v22, 0, 1, v4);
  v26 = swift_allocObject();
  v27 = v41;
  *(v26 + 16) = v43;
  *(v26 + 24) = v27;
  *v14 = sub_1001E3508;
  v14[1] = v26;
  v42 = v12;
  v43 = v11;
  (*(v12 + 104))(v14, enum case for NWConnection.SendCompletion.contentProcessed(_:), v11);
  sub_10000E268(v22, v19, &qword_1005D05E0, &qword_1004D65C0);
  v28 = *(v5 + 48);
  if (v28(v19, 1, v4) == 1)
  {
    v40 = v25;

    sub_100025F40(v19, &qword_1005D05E0, &qword_1004D65C0);
    v29 = v39;
    sub_10000E268(v22, v39, &qword_1005D05E0, &qword_1004D65C0);
    if (v28(v29, 1, v4) == 1)
    {
      sub_100025F40(v29, &qword_1005D05E0, &qword_1004D65C0);
      sub_1004A4E14();
    }

    else
    {
      v31 = v38;
      (*(v5 + 32))(v38, v29, v4);
      v32 = v37;
      (*(v5 + 16))(v37, v31, v4);
      v33 = sub_1001D9C54(v32);
      v35 = v34;
      sub_1004A4E14();

      sub_100014D40(v33, v35);

      (*(v5 + 8))(v31, v4);
    }
  }

  else
  {
    v30 = v40;
    (*(v5 + 32))(v40, v19, v4);

    sub_1004A4E04();

    (*(v5 + 8))(v30, v4);
  }

  (*(v42 + 8))(v14, v43);
  return sub_100025F40(v22, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D8288(int a1)
{
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v31 - v6;
  __chkstk_darwin(v7);
  v35 = &v31 - v8;
  v9 = sub_1004A4D14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  __chkstk_darwin(v13 - 8);
  v34 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  sub_1004A5044();
  swift_allocObject();

  v21 = sub_1004A5024();
  v40 = &type metadata for ClientCommand.EncodingOptions;
  v38 = a1 & 0x1FF;
  v39 = BYTE2(a1) & 1;
  sub_1004A5064();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004D3930;
  *(v22 + 32) = v21;
  sub_1004A4D04();
  swift_allocObject();

  sub_1004A4CD4();
  sub_1004A5344();
  (*(v3 + 56))(v20, 0, 1, v2);
  v36 = v10;
  v37 = v9;
  (*(v10 + 104))(v12, enum case for NWConnection.SendCompletion.idempotent(_:), v9);
  sub_10000E268(v20, v17, &qword_1005D05E0, &qword_1004D65C0);
  v23 = *(v3 + 48);
  if (v23(v17, 1, v2) != 1)
  {
    v25 = v35;
    (*(v3 + 32))(v35, v17, v2);
    sub_1004A4E04();

LABEL_8:

    (*(v3 + 8))(v25, v2);
    goto LABEL_9;
  }

  v35 = v12;
  sub_100025F40(v17, &qword_1005D05E0, &qword_1004D65C0);
  v24 = v34;
  sub_10000E268(v20, v34, &qword_1005D05E0, &qword_1004D65C0);
  if (v23(v24, 1, v2) != 1)
  {
    v25 = v33;
    (*(v3 + 32))(v33, v24, v2);
    v26 = v32;
    (*(v3 + 16))(v32, v25, v2);
    v27 = sub_1001D9C54(v26);
    v29 = v28;
    v12 = v35;
    sub_1004A4E14();

    sub_100014D40(v27, v29);
    goto LABEL_8;
  }

  sub_100025F40(v24, &qword_1005D05E0, &qword_1004D65C0);
  v12 = v35;
  sub_1004A4E14();

LABEL_9:
  (*(v36 + 8))(v12, v37);
  return sub_100025F40(v20, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D883C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v41 = a1;
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v35 - v6;
  __chkstk_darwin(v7);
  v38 = &v35 - v8;
  v9 = sub_1004A4D14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  __chkstk_darwin(v13 - 8);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  sub_1004A5044();
  swift_allocObject();

  v21 = sub_1004A5024();
  v43 = &type metadata for Bool;
  v42[0] = 1;
  sub_1004A5064();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004D3930;
  *(v22 + 32) = v21;
  sub_1004A4D04();
  swift_allocObject();

  v23 = sub_1004A4CD4();
  sub_1004A5344();
  (*(v3 + 56))(v20, 0, 1, v2);
  v24 = swift_allocObject();
  v25 = v39;
  *(v24 + 16) = v41;
  *(v24 + 24) = v25;
  *v12 = sub_1001E2FD8;
  v12[1] = v24;
  v40 = v10;
  v41 = v9;
  (*(v10 + 104))(v12, enum case for NWConnection.SendCompletion.contentProcessed(_:), v9);
  sub_10000E268(v20, v17, &qword_1005D05E0, &qword_1004D65C0);
  v26 = *(v3 + 48);
  if (v26(v17, 1, v2) == 1)
  {
    v38 = v23;

    sub_100025F40(v17, &qword_1005D05E0, &qword_1004D65C0);
    v27 = v37;
    sub_10000E268(v20, v37, &qword_1005D05E0, &qword_1004D65C0);
    if (v26(v27, 1, v2) == 1)
    {
      sub_100025F40(v27, &qword_1005D05E0, &qword_1004D65C0);
      sub_1004A4E14();
    }

    else
    {
      v29 = v36;
      (*(v3 + 32))(v36, v27, v2);
      v30 = v35;
      (*(v3 + 16))(v35, v29, v2);
      v31 = sub_1001D9C54(v30);
      v33 = v32;
      sub_1004A4E14();

      sub_100014D40(v31, v33);

      (*(v3 + 8))(v29, v2);
    }
  }

  else
  {
    v28 = v38;
    (*(v3 + 32))(v38, v17, v2);

    sub_1004A4E04();

    (*(v3 + 8))(v28, v2);
  }

  (*(v40 + 8))(v12, v41);
  return sub_100025F40(v20, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D8E48()
{
  v0 = sub_1004A5384();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v29 - v4;
  __chkstk_darwin(v5);
  v33 = &v29 - v6;
  v7 = sub_1004A4D14();
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  __chkstk_darwin(v10 - 8);
  v32 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  sub_1004A5044();
  swift_allocObject();

  v18 = sub_1004A5024();
  v36 = &_s10WorkaroundON;
  sub_1004A5064();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004D3930;
  *(v19 + 32) = v18;
  sub_1004A4D04();
  swift_allocObject();

  sub_1004A4CD4();
  sub_1004A5344();
  (*(v1 + 56))(v17, 0, 1, v0);
  v20 = *(v35 + 104);
  v34 = v7;
  v20(v9, enum case for NWConnection.SendCompletion.idempotent(_:), v7);
  sub_10000E268(v17, v14, &qword_1005D05E0, &qword_1004D65C0);
  v21 = *(v1 + 48);
  if (v21(v14, 1, v0) != 1)
  {
    v23 = v33;
    (*(v1 + 32))(v33, v14, v0);
    sub_1004A4E04();

LABEL_8:

    (*(v1 + 8))(v23, v0);
    goto LABEL_9;
  }

  v33 = v9;
  sub_100025F40(v14, &qword_1005D05E0, &qword_1004D65C0);
  v22 = v32;
  sub_10000E268(v17, v32, &qword_1005D05E0, &qword_1004D65C0);
  if (v21(v22, 1, v0) != 1)
  {
    v23 = v31;
    (*(v1 + 32))(v31, v22, v0);
    v24 = v30;
    (*(v1 + 16))(v30, v23, v0);
    v25 = sub_1001D9C54(v24);
    v27 = v26;
    v9 = v33;
    sub_1004A4E14();

    sub_100014D40(v25, v27);
    goto LABEL_8;
  }

  sub_100025F40(v22, &qword_1005D05E0, &qword_1004D65C0);
  v9 = v33;
  sub_1004A4E14();

LABEL_9:
  (*(v35 + 8))(v9, v34);
  return sub_100025F40(v17, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D93E4(uint64_t a1)
{
  v14 = a1;
  *&v15 = a1;

  sub_10000C9C0(&qword_1005D4870, &unk_1004E0720);
  sub_10000C9C0(&qword_1005D47A0, &qword_1004F7950);
  if (swift_dynamicCast())
  {
    sub_1000B364C(v16, v18);
    sub_10002587C(v18, v18[3]);
    sub_1004A41C4();
    v16[0] = v15;
    sub_1000197E0(v18);
    goto LABEL_31;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v1 = sub_100025F40(v16, &qword_1005D47A8, &qword_1004E06A8);
  v16[0] = xmmword_1004DC1F0;
  __chkstk_darwin(v1);
  v13[2] = &v14;
  sub_1001E0434(sub_1001E33CC, v13);
  v3 = *(&v16[0] + 1) >> 62;
  if ((*(&v16[0] + 1) >> 62) <= 1)
  {
    if (v3)
    {
      if (__OFSUB__(DWORD1(v16[0]), v16[0]))
      {
        goto LABEL_35;
      }

      if (v2 == DWORD1(v16[0]) - LODWORD(v16[0]))
      {
        goto LABEL_18;
      }
    }

    else if (v2 == BYTE14(v16[0]))
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v3 == 2)
  {
    v5 = *(*&v16[0] + 16);
    v4 = *(*&v16[0] + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v2 == v7)
    {
      goto LABEL_18;
    }

LABEL_13:
    if (v3 == 2)
    {
      v8 = *(*&v16[0] + 24);
    }

    else if (v3 == 1)
    {
      v8 = *&v16[0] >> 32;
    }

    else
    {
      v8 = BYTE14(v16[0]);
    }

LABEL_28:
    if (v8 >= v2)
    {
      sub_1004A43D4();
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (v2)
  {
    v8 = 0;
    goto LABEL_28;
  }

LABEL_18:
  memset(v18, 0, 15);
  sub_1004A6AA4();
  if (BYTE1(v15))
  {
    goto LABEL_30;
  }

  LOBYTE(v9) = 0;
  v10 = v15;
  do
  {
    *(v18 + v9) = v10;
    v9 = v9 + 1;
    if ((v9 >> 8))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v9 == 14)
    {
      *&v15 = v18[0];
      *(&v15 + 6) = *(v18 + 6);
      sub_1004A43F4();
      LOBYTE(v9) = 0;
    }

    sub_1004A6AA4();
    v10 = v15;
  }

  while ((BYTE1(v15) & 1) == 0);
  if (v9)
  {
    *&v15 = v18[0];
    *(&v15 + 6) = *(v18 + 6);
    sub_1004A43F4();
  }

LABEL_30:

LABEL_31:
  v11 = v16[0];
  sub_100014CEC(*&v16[0], *(&v16[0] + 1));

  sub_100014D40(v11, *(&v11 + 1));
  return v11;
}

uint64_t sub_1001D9734(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_10000C9C0(&qword_1005D47A0, &qword_1004F7950);
  if (swift_dynamicCast())
  {
    sub_1000B364C(__src, &v43);
    sub_10002587C(&v43, v44);
    sub_1004A41C4();
    __src[0] = v42;
    sub_1000197E0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100025F40(__src, &qword_1005D47A8, &qword_1004E06A8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1004A67E4();
  }

  sub_1001E0180(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1001E19FC(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_1001E07C0(sub_1001E2F18, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1004A43D4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10010C210(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1004A59E4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1004A5A24();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1004A67E4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_10010C210(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1004A59F4();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1004A43F4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1004A43F4();
    sub_1000CBB68(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1000CBB68(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_100014CEC(*&__src[0], *(&__src[0] + 1));

  sub_100014D40(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1001D9C54(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D4798, &qword_1004E06A0);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v5 = sub_1004A5224();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A5384();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  (*(v10 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v11);
  sub_10000C9C0(&qword_1005D47A0, &qword_1004F7950);
  if (!swift_dynamicCast())
  {
    v27 = v6;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_100025F40(v29, &qword_1005D47A8, &qword_1004E06A8);
    sub_1001E2D90(&qword_1005D47B0, 255, &type metadata accessor for DispatchData, &protocol conformance descriptor for DispatchData);
    sub_1004A5AF4();
    if (*(&v31 + 1) >> 60 != 15)
    {
      v29[0] = v31;
      goto LABEL_33;
    }

    v26 = v31;
    v13 = sub_1004A5AE4();
    *&v29[0] = sub_1001E19FC(v13);
    *(&v29[0] + 1) = v14;
    __chkstk_darwin(*&v29[0]);
    *(&v26 - 2) = a1;
    sub_1001E0B64(sub_1001E2D74, (&v26 - 2));
    v15 = *&v4[*(v2 + 48)];
    v16 = v27;
    (*(v27 + 32))(v8, v4, v5);
    v17 = *(&v29[0] + 1) >> 62;
    if ((*(&v29[0] + 1) >> 62) > 1)
    {
      if (v17 != 2)
      {
        if (!v15)
        {
          goto LABEL_20;
        }

        v22 = 0;
LABEL_31:
        if (v22 >= v15)
        {
          sub_1004A43D4();
          (*(v16 + 8))(v8, v5);
          goto LABEL_33;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v19 = *(*&v29[0] + 16);
      v18 = *(*&v29[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      if (v15 == v21)
      {
        goto LABEL_20;
      }
    }

    else if (v17)
    {
      if (__OFSUB__(DWORD1(v29[0]), v29[0]))
      {
        goto LABEL_37;
      }

      if (v15 == DWORD1(v29[0]) - LODWORD(v29[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v15 == BYTE14(v29[0]))
    {
LABEL_20:
      sub_1001E2D90(&qword_1005D47B8, 255, &type metadata accessor for DispatchDataIterator, &protocol conformance descriptor for DispatchDataIterator);
      *&v31 = 0;
      *(&v31 + 7) = 0;
      sub_1004A6414();
      if (BYTE1(v28) == 1)
      {
        goto LABEL_28;
      }

      LOBYTE(v23) = 0;
      while (1)
      {
        *(&v31 + v23) = v28;
        v23 = v23 + 1;
        if ((v23 >> 8))
        {
          break;
        }

        if (v23 == 14)
        {
          *&v28 = v31;
          *(&v28 + 6) = *(&v31 + 6);
          sub_1004A43F4();
          LOBYTE(v23) = 0;
        }

        sub_1004A6414();
        if (BYTE1(v28))
        {
          if (v23)
          {
            *&v28 = v31;
            *(&v28 + 6) = *(&v31 + 6);
            sub_1004A43F4();
            sub_1000CBB68(v26, *(&v26 + 1));
            (*(v27 + 8))(v8, v5);
            goto LABEL_33;
          }

LABEL_28:
          (*(v27 + 8))(v8, v5);
          sub_1000CBB68(v26, *(&v26 + 1));
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    if (v17 == 2)
    {
      v22 = *(*&v29[0] + 24);
    }

    else if (v17 == 1)
    {
      v22 = *&v29[0] >> 32;
    }

    else
    {
      v22 = BYTE14(v29[0]);
    }

    goto LABEL_31;
  }

  sub_1000B364C(v29, &v31);
  sub_10002587C(&v31, v32);
  sub_1004A41C4();
  v29[0] = v28;
  sub_1000197E0(&v31);
LABEL_33:
  v24 = *&v29[0];
  sub_100014CEC(*&v29[0], *(&v29[0] + 1));
  (*(v10 + 8))(a1, v9);
  sub_100014D40(*&v29[0], *(&v29[0] + 1));
  return v24;
}

uint64_t sub_1001DA26C()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D4680);
  sub_1001C203C(v0, qword_1005D4680);
  return sub_1004A4A64();
}

uint64_t sub_1001DA2EC()
{
  type metadata accessor for Framer();
  sub_1001E2D90(&qword_1005D4770, v0, type metadata accessor for Framer, byte_1004E0628);
  sub_1004A5004();
  swift_allocObject();
  result = sub_1004A4FF4();
  qword_1005DE068 = result;
  return result;
}

uint64_t sub_1001DA378(uint64_t a1)
{
  ServerResponseFramingParser.init()(v25);
  v2 = v25[9];
  *(v1 + 144) = v25[8];
  *(v1 + 160) = v2;
  v3 = v25[11];
  *(v1 + 176) = v25[10];
  *(v1 + 192) = v3;
  v4 = v25[5];
  *(v1 + 80) = v25[4];
  *(v1 + 96) = v4;
  v5 = v25[7];
  *(v1 + 112) = v25[6];
  *(v1 + 128) = v5;
  v6 = v25[1];
  *(v1 + 16) = v25[0];
  *(v1 + 32) = v6;
  v7 = v25[3];
  *(v1 + 48) = v25[2];
  *(v1 + 64) = v7;
  *(v1 + 208) = _swiftEmptyArrayStorage;
  *(v1 + 216) = 0;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = 256;
  v8 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
  v9 = v8[1];
  v10 = v8[2];
  *(v1 + 242) = *v8;
  *(v1 + 243) = v9;
  *(v1 + 244) = v10;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v11 = sub_1004A4A74();
  sub_1001C203C(v11, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v12 = sub_1004A4A54();
  v13 = sub_1004A5FF4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 68158210;
    *(v14 + 4) = 2;
    *(v14 + 8) = 256;
    *(v14 + 10) = sub_1001DA630(v15);

    *(v14 + 11) = 2082;
    sub_1004A5134();
    sub_1004A5094();
    if (v23)
    {
      if (swift_dynamicCast())
      {

        v16 = v21;
LABEL_10:
        v17 = ConnectionID.debugDescription.getter(v16);
        v19 = sub_10015BA6C(v17, v18, &v24);

        *(v14 + 13) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "[%.*hhx-%{public}s] New IMAP framer", v14, 0x15u);
        sub_1000197E0(v15);

        return v1;
      }
    }

    else
    {
      sub_100025F40(v22, &qword_1005D4768, &unk_1004F5B20);
    }

    v16 = *(ConnectionLoggerID.invalid.unsafeMutableAddressor() + 1);
    goto LABEL_10;
  }

  return v1;
}

unint64_t sub_1001DA630(uint64_t a1)
{
  sub_1004A5134();
  sub_1004A5094();

  if (!v8)
  {
    sub_100025F40(v7, &qword_1005D4768, &unk_1004F5B20);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = ConnectionLoggerID.invalid.unsafeMutableAddressor();
    v1 = *v3;
    v2 = *(v3 + 1);
    return v1 | (v2 << 32);
  }

  v1 = v5;
  v2 = v6;
  return v1 | (v2 << 32);
}

uint64_t sub_1001DA6EC@<X0>(uint64_t a2@<X8>)
{
  sub_1004A5134();
  sub_1004A5094();

  v3 = v28;
  sub_100025F40(v27, &qword_1005D4768, &unk_1004F5B20);
  if (v3)
  {
    if (qword_1005D2D80 != -1)
    {
      swift_once();
    }

    v4 = sub_1004A4A74();
    sub_1001C203C(v4, qword_1005D4680);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v5 = sub_1004A4A54();
    v6 = sub_1004A5FF4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27[0] = v8;
      *v7 = 68158210;
      *(v7 + 4) = 2;
      *(v7 + 8) = 256;
      *(v7 + 10) = sub_1001DA630(v8);

      *(v7 + 11) = 2082;
      v10 = sub_1001DA630(v9);
      v11 = ConnectionID.debugDescription.getter(HIDWORD(v10));
      v13 = sub_10015BA6C(v11, v12, v27);

      *(v7 + 13) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%.*hhx-%{public}s] (post STARTTLS) IMAP framer loaded.", v7, 0x15u);
      sub_1000197E0(v8);
    }

    else
    {
    }

    sub_1004A5044();

    sub_1004A5034();
    v28 = &type metadata for Bool;
    LOBYTE(v27[0]) = 1;
    sub_1004A5064();
    sub_1004A5114();
    goto LABEL_13;
  }

  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v14 = sub_1004A4A74();
  sub_1001C203C(v14, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v15 = sub_1004A4A54();
  v16 = sub_1004A5FF4();
  if (!os_log_type_enabled(v15, v16))
  {

LABEL_13:

    goto LABEL_14;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v27[0] = v18;
  *v17 = 68158210;
  *(v17 + 4) = 2;
  *(v17 + 8) = 256;
  *(v17 + 10) = sub_1001DA630(v18);

  *(v17 + 11) = 2082;
  v20 = sub_1001DA630(v19);
  v21 = ConnectionID.debugDescription.getter(HIDWORD(v20));
  v23 = sub_10015BA6C(v21, v22, v27);

  *(v17 + 13) = v23;
  _os_log_impl(&_mh_execute_header, v15, v16, "[%.*hhx-%{public}s] IMAP framer loaded.", v17, 0x15u);
  sub_1000197E0(v18);

LABEL_14:
  v24 = enum case for NWProtocolFramer.StartResult.ready(_:);
  v25 = sub_1004A5014();
  return (*(*(v25 - 8) + 104))(a2, v24, v25);
}

uint64_t sub_1001DAAFC()
{
  v1 = *(v0 + 160);
  v8[8] = *(v0 + 144);
  v8[9] = v1;
  v2 = *(v0 + 192);
  v8[10] = *(v0 + 176);
  v8[11] = v2;
  v3 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v3;
  v4 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v4;
  v5 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v5;
  v6 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v6;
  sub_1001E2A88(v8);

  sub_1001E2A48(*(v0 + 248), *(v0 + 256));
  return swift_deallocClassInstance();
}

uint64_t sub_1001DABA8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1001DA378(a1);
  return v2;
}

uint64_t sub_1001DAC04(uint64_t a1)
{
  v3 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v3 - 8);
    ;
  }

  sub_1001DB6DC(a1);
  sub_1001DC1B8(a1);
  swift_beginAccess();
  if (*(v1 + 192))
  {
    return 0;
  }

  else
  {
    return *(v1 + 184);
  }
}

uint64_t sub_1001DADBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v48 = a4;
  v49 = a3;
  v45 = a2;
  v5 = sub_1004A4944();
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  __chkstk_darwin(v5);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - v12;
  v14 = sub_1004A5214();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  v47 = a1;
  sub_10000E268(a1, v13, &unk_1005D54F0, &unk_1004E8DA0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100025F40(v13, &unk_1005D54F0, &unk_1004E8DA0);
    v24 = tracingSignposter.unsafeMutableAddressor();
    v25 = v50;
    (*(v51 + 16))(v10, v24, v50);
    v26 = sub_1004A4934();
    v27 = sub_1004A6154();
    if (sub_1004A6354())
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v29, "Connection.didEnqueue", "", v28, 2u);
    }

    (*(v51 + 8))(v10, v25);
  }

  else
  {
    (*(v15 + 32))(v23, v13, v14);
    v30 = tracingSignposter.unsafeMutableAddressor();
    v31 = v50;
    (*(v51 + 16))(v46, v30, v50);
    v32 = *(v15 + 16);
    v32(v20, v23, v14);
    v33 = sub_1004A4934();
    v44 = sub_1004A6154();
    if (sub_1004A6354())
    {
      v34 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v34 = 136315138;
      v32(v17, v20, v14);
      v35 = sub_1004A5824();
      v37 = v36;
      v38 = *(v15 + 8);
      v38(v20, v14);
      v39 = sub_10015BA6C(v35, v37, &v52);

      *(v34 + 4) = v39;
      v40 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v44, v40, "Connection.didFailToSendData", "%s", v34, 0xCu);
      sub_1000197E0(v43);

      (*(v51 + 8))(v46, v50);
      v38(v23, v14);
    }

    else
    {

      v41 = *(v15 + 8);
      v41(v20, v14);
      (*(v51 + 8))(v46, v31);
      v41(v23, v14);
    }
  }

  return v49(v47);
}

uint64_t sub_1001DB2DC()
{
  v0 = sub_1004A4944();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = tracingSignposter.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1004A4934();
  v6 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "Connection.didFlush", "", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1001DB44C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  if (a3)
  {

    v10 = sub_1001E3064(v9);
    v11 = sub_1004A4CF4();
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  a6(v10, v11, a4 & 1, a5);

  return sub_1001E3054(v10);
}

BOOL sub_1001DB4F4(uint64_t a1)
{
  v1 = sub_1004A50C4();
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v3 = sub_1004A4A54();
  v4 = sub_1004A6004();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 68158466;
    *(v5 + 4) = 2;
    *(v5 + 8) = 256;
    *(v5 + 10) = sub_1001DA630(v6);

    *(v5 + 11) = 2082;
    v8 = sub_1001DA630(v7);
    v9 = ConnectionID.debugDescription.getter(HIDWORD(v8));
    v11 = sub_10015BA6C(v9, v10, &v13);

    *(v5 + 13) = v11;
    *(v5 + 21) = 1024;
    *(v5 + 23) = v1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%.*hhx-%{public}s] parseInput() returned %{BOOL}d", v5, 0x1Bu);
    sub_1000197E0(v6);
  }

  else
  {
  }

  return (v1 & 1) == 0;
}

void *sub_1001DB6DC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v70 = _s19CommandOutputBufferV7ElementOMa(0);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v74 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Response(0);
  __chkstk_darwin(v68);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = &v61 - v9;
  v10 = sub_10000C9C0(&qword_1005D4788, &qword_1004F4BD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - v11;
  v13 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v75 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v86 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for ResponseOrContinuationRequest(0);
  v15 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v84 = &v61 - v18;
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  __chkstk_darwin(v22);
  v82 = &v61 - v23;
  __chkstk_darwin(v24);
  v26 = &v61 - v25;
  swift_beginAccess();
  v27 = ServerResponseFramingParser.popAllFrames()();
  swift_endAccess();
  result = sub_1001EC24C(0, *(v27 + 16), 0, _swiftEmptyArrayStorage);
  v85 = result;
  v81 = *(v27 + 16);
  if (!v81)
  {
LABEL_36:

    sub_1004A5044();
    swift_retain_n();
    v60 = v85;

    sub_1004A5034();
    v89 = sub_10000C9C0(&qword_1005D4790, &qword_1004E0698);
    v88 = v60;

    sub_1004A5064();

    sub_1004A5114();
  }

  v66 = v7;
  v29 = v15;
  v30 = 0;
  v31 = v75;
  v80 = v27 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v72 = v29;
  v73 = v12;
  v76 = (v29 + 48);
  v77 = (v29 + 56);
  v78 = v21;
  v65 = v4;
  v79 = v27;
  while (v30 < *(v27 + 16))
  {
    sub_1001E2B98(v80 + *(v31 + 72) * v30, v86, type metadata accessor for ServerResponseFramingParser.Frame);
    sub_1004A5134();
    sub_1004A5094();

    if (v89)
    {
      if (swift_dynamicCast())
      {
        v32 = v90[0];
        v33 = v91;
        goto LABEL_11;
      }
    }

    else
    {
      sub_100025F40(&v88, &qword_1005D4768, &unk_1004F5B20);
    }

    v34 = ConnectionLoggerID.invalid.unsafeMutableAddressor();
    v32 = *v34;
    v33 = *(v34 + 1);
LABEL_11:
    sub_1001DD130(v86, v32 | (v33 << 32), v26);
    if (v3)
    {
    }

    swift_beginAccess();
    if ((*(v4 + 241) & 1) == 0)
    {
      v35 = *(v4 + 232);
      v71 = *(v4 + 240);
      sub_1001E2B98(v26, v21, type metadata accessor for ResponseOrContinuationRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = v67;
        sub_1001E2B30(v21, v67, type metadata accessor for Response);
        v37 = v66;
        sub_1001E2B98(v36, v66, type metadata accessor for Response);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v62 = v35;
          v38 = *v37;
          v39 = *(v37 + 16);
          v40 = *(v37 + 24);
          v41 = *(v37 + 32);
          v64 = 0;
          v42 = *(v37 + 40);
          *&v43 = Tag.init(_:)(v38);
          v61 = v43;
          v63 = DWORD2(v43);
          *(&v43 + 1) = v40;
          v31 = v75;
          v44 = v41;
          v12 = v73;
          v3 = v64;
          sub_100173584(v39, *(&v43 + 1), v44, v42);
          sub_1001E2C1C(v36, type metadata accessor for Response);
          v4 = v65;
          if ((v63 & 1) == 0 && (v71 & 1) == 0 && v62 == v61 && !((v61 ^ v62) >> 32))
          {
            *(v65 + 232) = 0;
            *(v4 + 240) = 1;
          }
        }

        else
        {
          sub_1001E2C1C(v36, type metadata accessor for Response);
          sub_1001E2C1C(v37, type metadata accessor for Response);
          v4 = v65;
        }
      }

      else
      {
        sub_1001E2C1C(v21, type metadata accessor for ResponseOrContinuationRequest);
      }
    }

    v45 = v84;
    sub_1001E2B98(v26, v84, type metadata accessor for ResponseOrContinuationRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1001E2C1C(v45, type metadata accessor for ResponseOrContinuationRequest);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1001E2B98(v26, v12, type metadata accessor for ResponseOrContinuationRequest);
      v47 = 0;
      v21 = v78;
      goto LABEL_32;
    }

    v48 = *(v4 + 208);
    v21 = v78;
    if (*(v48 + 16))
    {
      sub_1001E2B98(v48 + ((*(v69 + 80) + 32) & ~*(v69 + 80)), v74, _s19CommandOutputBufferV7ElementOMa);
      v49 = swift_getEnumCaseMultiPayload();
      if ((v49 - 1) < 2)
      {
        result = sub_1001E2C1C(v74, _s19CommandOutputBufferV7ElementOMa);
        v50 = *(v4 + 216);
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_41;
        }

        *(v4 + 216) = v52;
        v47 = 1;
        goto LABEL_32;
      }

      if (v49 != 3)
      {
        sub_1001B64B8();
        swift_allocError();
        swift_willThrow();
        sub_1001E2C1C(v74, _s19CommandOutputBufferV7ElementOMa);

        swift_endAccess();

        return sub_1001E2C1C(v26, type metadata accessor for ResponseOrContinuationRequest);
      }

      result = sub_1001E2C1C(v74, _s19CommandOutputBufferV7ElementOMa);
    }

    v53 = *(v4 + 224);
    v51 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v51)
    {
      goto LABEL_40;
    }

    *(v4 + 224) = v54;
    sub_1001E2B98(v26, v12, type metadata accessor for ResponseOrContinuationRequest);
    v47 = 0;
LABEL_32:
    v55 = v87;
    (*v77)(v12, v47, 1, v87);
    swift_endAccess();
    if ((*v76)(v12, 1, v55) == 1)
    {
      sub_1001E2C1C(v26, type metadata accessor for ResponseOrContinuationRequest);
      result = sub_100025F40(v12, &qword_1005D4788, &qword_1004F4BD0);
    }

    else
    {
      v56 = v82;
      sub_1001E2B30(v12, v82, type metadata accessor for ResponseOrContinuationRequest);
      sub_1001E2B98(v56, v83, type metadata accessor for ResponseOrContinuationRequest);
      v58 = v85[2];
      v57 = v85[3];
      if (v58 >= v57 >> 1)
      {
        v85 = sub_1001EC24C((v57 > 1), v58 + 1, 1, v85);
      }

      sub_1001E2C1C(v82, type metadata accessor for ResponseOrContinuationRequest);
      sub_1001E2C1C(v26, type metadata accessor for ResponseOrContinuationRequest);
      v59 = v85;
      v85[2] = v58 + 1;
      result = sub_1001E2B30(v83, v59 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v58, type metadata accessor for ResponseOrContinuationRequest);
      v12 = v73;
      v31 = v75;
    }

    ++v30;
    v27 = v79;
    if (v81 == v30)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1001DC1B8(uint64_t a1)
{
  v4 = _s11CompressionO12OutgoingDataVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if (*(*(v1 + 208) + 16))
  {
    sub_1001DF100(a1, v6);
    if (v2)
    {
      if (qword_1005D2D80 != -1)
      {
        swift_once();
      }

      v8 = sub_1004A4A74();
      sub_1001C203C(v8, qword_1005D4680);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      swift_errorRetain();
      v9 = sub_1004A4A54();
      v10 = sub_1004A6014();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v40 = v13;
        *v11 = 68158466;
        *(v11 + 4) = 2;
        *(v11 + 8) = 256;
        *(v11 + 10) = sub_1001DA630(v13);

        *(v11 + 11) = 2082;
        v15 = sub_1001DA630(v14);
        v16 = ConnectionID.debugDescription.getter(HIDWORD(v15));
        v18 = sub_10015BA6C(v16, v17, &v40);

        *(v11 + 13) = v18;
        *(v11 + 21) = 2112;
        v19 = sub_1004A4264();
        *(v11 + 23) = v19;
        *v12 = v19;
        _os_log_impl(&_mh_execute_header, v9, v10, "[%.*hhx-%{public}s] Protocol error while sending. %@", v11, 0x1Fu);
        sub_100025F40(v12, &qword_1005D51A0, &qword_1004D0940);

        sub_1000197E0(v13);
      }

      else
      {
      }

      return swift_willThrow();
    }

    else
    {
      sub_1001E1BD0(v6);
      if (*(*(v1 + 208) + 16))
      {
        v20 = *(v1 + 232);
        v21 = *(v1 + 240);
        v22 = *(v1 + 241);
        v35 = *(v1 + 208);
        v36 = *(v1 + 216);
        v37 = v20;
        v38 = v21;
        v39 = v22;

        v23 = sub_1001B435C();

        if (qword_1005D2D80 != -1)
        {
          swift_once();
        }

        v24 = sub_1004A4A74();
        sub_1001C203C(v24, qword_1005D4680);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v25 = sub_1004A4A54();
        v26 = sub_1004A6004();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v40 = v28;
          *v27 = 68158466;
          *(v27 + 4) = 2;
          *(v27 + 8) = 256;
          *(v27 + 10) = sub_1001DA630(v28);

          *(v27 + 11) = 2082;
          v30 = sub_1001DA630(v29);
          v31 = ConnectionID.debugDescription.getter(HIDWORD(v30));
          v33 = sub_10015BA6C(v31, v32, &v40);

          *(v27 + 13) = v33;
          *(v27 + 21) = 2048;
          *(v27 + 23) = v23;
          _os_log_impl(&_mh_execute_header, v25, v26, "[%.*hhx-%{public}s] Output buffer still holds %{iec-bytes}ld. Waiting for server response.", v27, 0x1Fu);
          sub_1000197E0(v28);
        }

        else
        {
        }
      }

      return sub_1001E2C1C(v6, _s11CompressionO12OutgoingDataVMa);
    }
  }

  return result;
}

uint64_t sub_1001DC634(_BYTE *a1, _BYTE *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v10 - 8);
  result = 0;
  if ((a3 & 1) == 0 && a1)
  {
    if (a2 == a1)
    {
      return 0;
    }

    else
    {
      sub_1001DC93C(a1, a2, a6);
      return a2 - a1;
    }
  }

  return result;
}

void sub_1001DC93C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v61 = a3;
  v4 = v3;
  v7 = sub_1004A4944();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005D3CE8, &qword_1004DDA78);
  __chkstk_darwin(v9 - 8);
  v56 = &v50 - v10;
  v11 = sub_1004A4904();
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Deflate.InputBuffer(0);
  __chkstk_darwin(v13);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Deflate.Result(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a2 - a1;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v4 + 248);
  if (a1)
  {
    v21 = a2;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v51 = v19;
    v22 = v4;
    v23 = *(v4 + 256);
    *v15 = a1;
    v15[1] = v21;
    swift_storeEnumTagMultiPayload();

    v24 = v60;
    sub_1001D1E78(v15, v18);
    if (v24)
    {
      sub_1001E2A48(v20, v23);
      sub_1001E2C1C(v15, type metadata accessor for Deflate.InputBuffer);
      return;
    }

    v60 = 0;
    v26 = sub_1001E2C1C(v15, type metadata accessor for Deflate.InputBuffer);
    __chkstk_darwin(v26);
    *(&v50 - 2) = sub_1001E2C0C;
    *(&v50 - 1) = v22;
    sub_1004A5304();
    v52 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1001E2A48(v20, v23);
    sub_1001E2C1C(v18, type metadata accessor for Deflate.Result);
    v4 = v22;
    v19 = v51;
  }

  else
  {
    swift_beginAccess();
    ServerResponseFramingParser.append(_:)(a1, v21, v25);
    swift_endAccess();
    v52 = v19;
  }

  sub_1004A5134();
  sub_1004A5094();

  v28 = v57;
  v27 = v58;
  v29 = v59;
  v30 = v56;
  if (v63)
  {
    v31 = swift_dynamicCast();
    (*(v28 + 56))(v30, v31 ^ 1u, 1, v27);
    if ((*(v28 + 48))(v30, 1, v27) != 1)
    {
      v32 = v19;
      (*(v28 + 32))(v29, v30, v27);
      v33 = tracingSignposter.unsafeMutableAddressor();
      (*(v54 + 16))(v53, v33, v55);
      v34 = sub_1004A4934();
      v35 = sub_1004A6154();
      if (sub_1004A6354())
      {
        v36 = swift_slowAlloc();
        *v36 = 134218240;
        *(v36 + 4) = v32;
        *(v36 + 12) = 2048;
        *(v36 + 14) = v52;
        v37 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v37, "Connection.didReceiveData", "%ld,%ld", v36, 0x16u);
        v29 = v59;
      }

      (*(v54 + 8))(v53, v55);
      (*(v28 + 8))(v29, v27);
      goto LABEL_19;
    }
  }

  else
  {
    sub_100025F40(v62, &qword_1005D4768, &unk_1004F5B20);
    (*(v28 + 56))(v30, 1, 1, v27);
  }

  sub_100025F40(v30, &qword_1005D3CE8, &qword_1004DDA78);
LABEL_19:
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v38 = sub_1004A4A74();
  sub_1001C203C(v38, qword_1005D4680);
  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_retain_n();
  v39 = sub_1004A4A54();
  v40 = sub_1004A6004();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v64 = v42;
    *v41 = 0x204100502;
    *(v41 + 8) = 256;
    v43 = sub_1001DA630(v42);

    *(v41 + 10) = v43;

    *(v41 + 11) = 2082;
    v45 = sub_1001DA630(v44);
    v46 = ConnectionID.debugDescription.getter(HIDWORD(v45));
    v48 = sub_10015BA6C(v46, v47, &v64);

    *(v41 + 13) = v48;
    *(v41 + 21) = 2048;
    *(v41 + 23) = v52;
    *(v41 + 31) = 2048;
    swift_beginAccess();
    v49 = *(v4 + 56);
    LODWORD(v48) = *(v4 + 60);

    *(v41 + 33) = (v48 - v49);

    _os_log_impl(&_mh_execute_header, v39, v40, "[%.*hhx-%{public}s] Appending %{iec-bytes}ld to receive buffer. Now has %{iec-bytes}ld.", v41, 0x29u);
    sub_1000197E0(v42);
  }

  else
  {
  }
}

uint64_t sub_1001DD0CC(const void *a1, const void *a2, uint64_t a3)
{
  swift_beginAccess();
  ServerResponseFramingParser.append(_:)(a1, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1001DD130@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  __chkstk_darwin(v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E2B98(a1, v9, type metadata accessor for ServerResponseFramingParser.Frame);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1001E2C1C(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    return sub_1001E2B30(v9, a3, type metadata accessor for ResponseOrContinuationRequest);
  }

  v11 = HIDWORD(a2);
  if (EnumCaseMultiPayload != 1)
  {
    v29 = *(v9 + 1);
    v57 = *(v9 + 4);
    v56 = *(v9 + 5);
    v30 = *(v9 + 14);
    v31 = v9[30];
    if (qword_1005D2D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1004A4A74();
    sub_1001C203C(v32, qword_1005D4680);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_errorRetain();

    v17 = sub_1004A4A54();
    v33 = sub_1004A6024();

    if (!os_log_type_enabled(v17, v33))
    {
      goto LABEL_17;
    }

    v54 = v31;
    v55 = v30;
    v58 = a1;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    a1 = swift_slowAlloc();
    v60 = a1;
    *v34 = 68158979;
    *(v34 + 4) = 2;
    *(v34 + 8) = 256;
    *(v34 + 10) = a2;
    *(v34 + 11) = 2082;
    v36 = ConnectionID.debugDescription.getter(HIDWORD(a2));
    LOBYTE(a2) = v37;
    v38 = sub_10015BA6C(v36, v37, &v60);

    *(v34 + 13) = v38;
    *(v34 + 21) = 2112;
    v39 = sub_1004A4264();
    *(v34 + 23) = v39;
    *v35 = v39;
    *(v34 + 31) = 1040;
    v11 = v57;
    v40 = v56 - v57;
    if (v56 - v57 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v40 <= 0x7FFFFFFF)
    {
      *(v34 + 33) = v40;
      *(v34 + 37) = 2101;
      swift_beginAccess();
      *(v34 + 39) = v11 + (v54 | (v55 << 8)) + *(v29 + 24);
      _os_log_impl(&_mh_execute_header, v17, v33, "[%.*hhx-%{public}s]: Failed to parse: %@. Buffer: %{sensitive}.*P", v34, 0x2Fu);
      sub_100025F40(v35, &qword_1005D51A0, &qword_1004D0940);

      sub_1000197E0(a1);

      a1 = v58;
LABEL_18:
      swift_willThrow();

      return sub_1001E2C1C(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    }

    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 1);
  if (!v12)
  {
    if (qword_1005D2D80 == -1)
    {
LABEL_21:
      v41 = sub_1004A4A74();
      sub_1001C203C(v41, qword_1005D4680);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      swift_errorRetain();
      v42 = sub_1004A4A54();
      v43 = sub_1004A6024();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v59[0] = v46;
        *v44 = 68158466;
        *(v44 + 4) = 2;
        *(v44 + 8) = 256;
        *(v44 + 10) = a2;
        *(v44 + 11) = 2082;
        v47 = ConnectionID.debugDescription.getter(v11);
        v49 = a1;
        v50 = sub_10015BA6C(v47, v48, v59);

        *(v44 + 13) = v50;
        a1 = v49;
        *(v44 + 21) = 2112;
        v51 = sub_1004A4264();
        *(v44 + 23) = v51;
        *v45 = v51;
        _os_log_impl(&_mh_execute_header, v42, v43, "[%.*hhx-%{public}s]: Framing error: %@", v44, 0x1Fu);
        sub_100025F40(v45, &qword_1005D51A0, &qword_1004D0940);

        sub_1000197E0(v46);
      }

      swift_willThrow();
      return sub_1001E2C1C(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    }

LABEL_26:
    swift_once();
    goto LABEL_21;
  }

  v57 = HIDWORD(a2);
  v13 = v9[30];
  LODWORD(v56) = *(v9 + 14);
  v14 = *(v9 + 6);
  v15 = *(v9 + 2);
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v16 = sub_1004A4A74();
  sub_1001C203C(v16, qword_1005D4680);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v17 = sub_1004A4A54();
  v18 = sub_1004A6024();

  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_17;
  }

  v53 = v13;
  v58 = a1;
  v54 = v14;
  v55 = HIDWORD(v15);
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v60 = v20;
  *v19 = 68158723;
  *(v19 + 4) = 2;
  *(v19 + 8) = 256;
  *(v19 + 10) = a2;
  *(v19 + 11) = 2082;
  v21 = ConnectionID.debugDescription.getter(v57);
  v23 = sub_10015BA6C(v21, v22, &v60);

  *(v19 + 13) = v23;
  *(v19 + 21) = 1040;
  v25 = v55 - v15;
  if (v25 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v57 = v20;
    a1 = v58;
    if (v25 <= 0x7FFFFFFF)
    {
      v26 = v56 | (v53 << 16);
      v27 = v54 & 0xFF000000FFFFFFFFLL | ((*&v26 & 0xFFFFFFLL) << 32);
      v28 = HIWORD(v26);
      *(v19 + 23) = v25;
      *(v19 + 27) = 2101;
      swift_beginAccess();
      *(v19 + 29) = *(v12 + 24) + v15 + ((v27 >> 24) & 0xFFFF00 | v28);
      _os_log_impl(&_mh_execute_header, v17, v18, "[%.*hhx-%{public}s]: Framing error. Buffer: %{sensitive}.*P", v19, 0x25u);
      sub_1000197E0(v57);

LABEL_17:

      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DD868@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005D4778, &qword_1004E0690);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for OutboundContent(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A5054();
  if (!v26)
  {
    v13 = &qword_1005D4768;
    v14 = &unk_1004F5B20;
    v15 = v25;
LABEL_9:
    sub_100025F40(v15, v13, v14);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v10 = v24;
    sub_1004A5054();
    if (v26)
    {
      v11 = swift_dynamicCast();
      (*(v7 + 56))(v5, v11 ^ 1u, 1, v6);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {

        sub_1001E2B30(v5, v9, type metadata accessor for OutboundContent);
        v12 = *(sub_10000C9C0(&qword_1005D4750, &qword_1004E0688) + 48);
        *a2 = v10;
        sub_1001E2B30(v9, a2 + v12, type metadata accessor for OutboundContent);
        type metadata accessor for Framer.OutboundMessage(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_100025F40(v25, &qword_1005D4768, &unk_1004F5B20);
      (*(v7 + 56))(v5, 1, 1, v6);
    }

    v13 = &qword_1005D4778;
    v14 = &qword_1004E0690;
    v15 = v5;
    goto LABEL_9;
  }

LABEL_10:
  sub_1004A5054();
  if (v26)
  {
    goto LABEL_11;
  }

  sub_100025F40(v25, &qword_1005D4768, &unk_1004F5B20);
  sub_1004A5054();
  if (v26)
  {
    sub_1004A5154();
    if (swift_dynamicCast())
    {

      *a2 = v24;
      type metadata accessor for Framer.OutboundMessage(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_100025F40(v25, &qword_1005D4768, &unk_1004F5B20);
  }

  sub_1004A5054();
  if (v26)
  {
    if (swift_dynamicCast())
    {

      v17 = BYTE1(v24);
      v18 = BYTE2(v24);
      *a2 = v24;
      *(a2 + 1) = v17;
      *(a2 + 2) = v18;
      type metadata accessor for Framer.OutboundMessage(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_100025F40(v25, &qword_1005D4768, &unk_1004F5B20);
  }

  sub_1004A5054();
  if (v26)
  {
LABEL_11:

    sub_100025F40(v25, &qword_1005D4768, &unk_1004F5B20);
    type metadata accessor for Framer.OutboundMessage(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_100025F40(v25, &qword_1005D4768, &unk_1004F5B20);
  sub_1004A5054();
  if (v26)
  {
    if (swift_dynamicCast())
    {

      type metadata accessor for Framer.OutboundMessage(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_100025F40(v25, &qword_1005D4768, &unk_1004F5B20);
  }

  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v19 = sub_1004A4A74();
  sub_1001C203C(v19, qword_1005D4680);
  v20 = sub_1004A4A54();
  v21 = sub_1004A6014();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Message has no outbound content.", v22, 2u);
  }

  sub_1001E2ADC();
  swift_allocError();
  swift_willThrow();
}

uint64_t sub_1001DDF00(uint64_t a1, uint64_t a2)
{
  v43[2] = a2;
  v2 = sub_10000C9C0(&qword_1005D3CE8, &qword_1004DDA78);
  __chkstk_darwin(v2 - 8);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = v43 - v6;
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v7 = sub_1004A4A74();
  sub_1001C203C(v7, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v8 = sub_1004A4A54();
  v9 = sub_1004A6034();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v45 = v11;
    *v10 = 68158210;
    *(v10 + 4) = 2;
    *(v10 + 8) = 256;
    *(v10 + 10) = sub_1001DA630(v11);

    *(v10 + 11) = 2082;
    v13 = sub_1001DA630(v12);
    v14 = ConnectionID.debugDescription.getter(HIDWORD(v13));
    v16 = sub_10015BA6C(v14, v15, &v45);

    *(v10 + 13) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%.*hhx-%{public}s] Adding TLS to the protocol stack.", v10, 0x15u);
    sub_1000197E0(v11);
  }

  else
  {
  }

  v17 = v44;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  sub_1004A5084();
  swift_allocObject();

  sub_1004A5074();
  *(&v46 + 1) = &type metadata for Bool;
  LOBYTE(v45) = 1;
  sub_1004A50A4();
  sub_1004A5134();
  sub_1004A5094();

  if (*(&v46 + 1))
  {
    v18 = sub_1004A4904();
    v19 = swift_dynamicCast();
    (*(*(v18 - 8) + 56))(v17, v19 ^ 1u, 1, v18);
  }

  else
  {
    sub_100025F40(&v45, &qword_1005D4768, &unk_1004F5B20);
    v18 = sub_1004A4904();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  sub_10000E268(v17, v4, &qword_1005D3CE8, &qword_1004DDA78);
  sub_1004A4904();
  v20 = *(v18 - 8);
  if ((*(v20 + 48))(v4, 1, v18) == 1)
  {
    sub_100025F40(v4, &qword_1005D3CE8, &qword_1004DDA78);
    v45 = 0u;
    v46 = 0u;
  }

  else
  {
    *(&v46 + 1) = v18;
    v21 = sub_1000B3774(&v45);
    (*(v20 + 32))(v21, v4, v18);
  }

  sub_1004A50A4();
  v22 = sub_100025F40(v17, &qword_1005D3CE8, &qword_1004DDA78);
  v23 = sub_1001DA630(v22);
  *(&v46 + 1) = &type metadata for ConnectionLoggerID;
  LOBYTE(v45) = v23;
  DWORD1(v45) = HIDWORD(v23);
  sub_1004A50A4();
  v24 = v58;
  sub_1004A5124();
  if (v24)
  {
  }

  sub_1004A5124();
  sub_1004A50E4();
  sub_1004A50F4();
  sub_1004A5144();
  ServerResponseFramingParser.init()(v57);
  v25 = v43[1];
  swift_beginAccess();
  v26 = *(v25 + 160);
  v53 = *(v25 + 144);
  v54 = v26;
  v27 = *(v25 + 192);
  v55 = *(v25 + 176);
  v56 = v27;
  v28 = *(v25 + 96);
  v49 = *(v25 + 80);
  v50 = v28;
  v29 = *(v25 + 128);
  v51 = *(v25 + 112);
  v52 = v29;
  v30 = *(v25 + 32);
  v45 = *(v25 + 16);
  v46 = v30;
  v31 = *(v25 + 64);
  v47 = *(v25 + 48);
  v48 = v31;
  v32 = v57[9];
  *(v25 + 144) = v57[8];
  *(v25 + 160) = v32;
  v33 = v57[11];
  *(v25 + 176) = v57[10];
  *(v25 + 192) = v33;
  v34 = v57[5];
  *(v25 + 80) = v57[4];
  *(v25 + 96) = v34;
  v35 = v57[7];
  *(v25 + 112) = v57[6];
  *(v25 + 128) = v35;
  v36 = v57[1];
  *(v25 + 16) = v57[0];
  *(v25 + 32) = v36;
  v37 = v57[3];
  *(v25 + 48) = v57[2];
  *(v25 + 64) = v37;
  sub_1001E2A88(&v45);
  swift_beginAccess();
  *(v25 + 208) = _swiftEmptyArrayStorage;
  *(v25 + 216) = 0;
  *(v25 + 224) = 0;
  *(v25 + 232) = 0;
  *(v25 + 240) = 256;

  v38 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
  v39 = *v38;
  v40 = v38[1];
  v41 = v38[2];

  *(v25 + 242) = v39;
  *(v25 + 243) = v40;
  *(v25 + 244) = v41;
  return result;
}