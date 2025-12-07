uint64_t RCSServiceSession.didReportChatbotSpam(_:forChatbot:with:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD000000000000028, 0x80000000000FE7A0);
  if (result)
  {
    v13 = Logger.rcs.unsafeMutableAddressor();
    (*(v9 + 16))(v11, v13, v8);
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = sub_F06AC();
    v18 = sub_F0CCC();

    if (os_log_type_enabled(v17, v18))
    {
      v40 = v18;
      v41 = v17;
      v42 = v4;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v19 = 136446978;
      *(v19 + 4) = sub_3E850(0xD000000000000028, 0x80000000000FE7A0, v43);
      *(v19 + 12) = 2080;
      v21 = [v14 labelID];
      if (v21)
      {
        v22 = v21;
        v23 = sub_F07EC();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_3E850(v23, v25, v43);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v19 + 14) = v26;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v15;
      *(v19 + 32) = 2112;
      *(v19 + 34) = v16;
      *v20 = v15;
      v20[1] = v16;
      v34 = v15;
      v35 = v16;
      v36 = v41;
      _os_log_impl(&dword_0, v41, v40, "%{public}s simID: %s forChatbot: %@ operationResult: %@", v19, 0x2Au);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      result = (*(v9 + 8))(v11, v8);
      v4 = v42;
    }

    else
    {

      result = (*(v9 + 8))(v11, v8);
    }

    if (*(*(v4 + OBJC_IVAR___RCSServiceSession_state) + 56))
    {
      v43[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v43[4] = &protocol witness table for CTLazuliOperationResult;
      v43[0] = v16;
      v37 = v16;

      RCSSpamReportingController.spamReportCompleted(operationResult:)(v43);

      return sub_1EDC(v43);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RCSServiceSession.didReportSpam(_:for:with:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000001ALL, 0x80000000000FE7D0);
  if (result)
  {
    v13 = Logger.rcs.unsafeMutableAddressor();
    (*(v9 + 16))(v11, v13, v8);
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = sub_F06AC();
    v18 = sub_F0CCC();

    if (os_log_type_enabled(v17, v18))
    {
      v40 = v18;
      v41 = v17;
      v42 = v4;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v19 = 136446978;
      *(v19 + 4) = sub_3E850(0xD00000000000001ALL, 0x80000000000FE7D0, v43);
      *(v19 + 12) = 2080;
      v21 = [v14 labelID];
      if (v21)
      {
        v22 = v21;
        v23 = sub_F07EC();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_3E850(v23, v25, v43);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v19 + 14) = v26;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v15;
      *(v19 + 32) = 2112;
      *(v19 + 34) = v16;
      *v20 = v15;
      v20[1] = v16;
      v34 = v15;
      v35 = v16;
      v36 = v41;
      _os_log_impl(&dword_0, v41, v40, "%{public}s simID: %s forDestination: %@ operationResult: %@", v19, 0x2Au);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      result = (*(v9 + 8))(v11, v8);
      v4 = v42;
    }

    else
    {

      result = (*(v9 + 8))(v11, v8);
    }

    if (*(*(v4 + OBJC_IVAR___RCSServiceSession_state) + 56))
    {
      v43[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v43[4] = &protocol witness table for CTLazuliOperationResult;
      v43[0] = v16;
      v37 = v16;

      RCSSpamReportingController.spamReportCompleted(operationResult:)(v43);

      return sub_1EDC(v43);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t CTLazuliOperationResult.operationId.getter()
{
  v1 = [v0 operation];
  v2 = [v1 uuid];

  v3 = sub_F07EC();
  return v3;
}

uint64_t sub_51770()
{
  v1 = [*v0 operation];
  v2 = [v1 uuid];

  v3 = sub_F07EC();
  return v3;
}

id sub_5180C()
{
  v1 = [*v0 error];

  return v1;
}

uint64_t sub_51844(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_388C8(&qword_127F60, &unk_F3970);
    v2 = sub_F110C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_3FE38(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_54F88(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_54F88(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_54F88(v31, v32);
    result = sub_F0F1C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_54F88(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_51B0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_388C8(&qword_127F60, &unk_F3970);
    v2 = sub_F110C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_54F88(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_54F88(v29, v30);
    result = sub_F0F1C(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_54F88(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_51DC0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_51DF8(unsigned __int8 a1)
{
  sub_F12FC();
  v2 = 0xE900000000000074;
  if (a1 == 3)
  {
    v2 = 0xE200000000000000;
  }

  if (a1 == 2)
  {
    v2 = 0xEA00000000006563;
  }

  v3 = 0xED0000747865746ELL;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  if (a1 <= 1u)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_F089C();
  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = sub_F132C();

  return sub_37740(a1, v12, v13, v14, v15, v16, v17, v18);
}

void *sub_51F04(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_51F78@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_51FA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_F0F1C(*(v2 + 40));

  return sub_52064(a1, v4);
}

unint64_t sub_51FEC(uint64_t a1, uint64_t a2)
{
  sub_F12FC();
  sub_F089C();
  v4 = sub_F132C();

  return sub_5212C(a1, a2, v4);
}

unint64_t sub_52064(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_54ED8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_F0F2C();
      sub_54F34(v8);
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

unint64_t sub_5212C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_F122C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_521E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_51FEC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_76A24();
      v11 = v19;
      goto LABEL_8;
    }

    sub_7589C(v16, a4 & 1);
    v11 = sub_51FEC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_F126C();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  sub_76710(v11, a2, a3, a1, v21);
}

_OWORD *sub_52328(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_51FEC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_76D70();
      v11 = v19;
      goto LABEL_8;
    }

    sub_75E48(v16, a4 & 1);
    v11 = sub_51FEC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_F126C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1EDC(v22);

    return sub_54F88(a1, v22);
  }

  else
  {
    sub_76758(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_52478(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_51FEC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_76B90();
      v11 = v19;
      goto LABEL_8;
    }

    sub_75B40(v16, a4 & 1);
    v11 = sub_51FEC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_F126C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 160 * v11;

    return sub_54F98(a1, v22);
  }

  else
  {
    sub_767C4(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_525C0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_51FA8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_76F14();
      goto LABEL_7;
    }

    sub_76100(v13, a3 & 1);
    v19 = sub_51FA8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_54ED8(a2, v21);
      return sub_76838(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_F126C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1EDC(v17);

  return sub_54F88(a1, v17);
}

void sub_5270C(void *a1, char a2, char *a3)
{
  v179 = sub_F06CC();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v174 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v173 - v8;
  v190 = &type metadata for CTRCSGroupIdentity;
  v191 = &off_11F358;
  v188 = a1;
  v189 = a2;
  v180 = a1;
  v10 = [v180 conversationID];
  v11 = sub_F07EC();
  v13 = v12;

  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  v175 = v11;
  static IMDChatRCSGroupIdentity.encodeGroupID(_:)(v11, v13);
  v17 = v16;
  v18 = sub_F07BC();
  v17, v19, v20, v21, v22, v23, v24, v25;
  v177 = a3;
  v26 = [a3 service];
  v27 = [v26 internalName];

  if (!v27)
  {
    sub_F07EC();
    v29 = v28;
    v27 = sub_F07BC();
    v29, v30, v31, v32, v33, v34, v35, v36;
  }

  v37 = [v15 newestExistingChatWithOriginalGroupID:v18 onService:v27];

  if (v37)
  {
    v176 = v37;
    v45 = v37;
    v46 = Logger.rcs.unsafeMutableAddressor();
    v47 = v178;
    v48 = v179;
    (*(v178 + 16))(v9, v46, v179);
    v49 = v45;

    v50 = sub_F06AC();
    v51 = sub_F0D0C();
    if (!os_log_type_enabled(v50, v51))
    {

      swift_bridgeObjectRelease_n();
      (*(v47 + 8))(v9, v48);
LABEL_15:
      v81 = v177;
      v143 = static IMDChatRCSGroupIdentity.migrationEnabled.getter();
      v37 = v176;
      if (v143)
      {
LABEL_18:
        v144 = v49;
        *(&v182 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
        *&v183 = &protocol witness table for IMDChat;
        *&v181 = v144;
        IMDChatRCSGroupIdentity.converge(identity:)(&v188);
        sub_39BC4(&v181);
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v52 = swift_slowAlloc();
    *&v181 = swift_slowAlloc();
    *v52 = 136315394;
    v53 = [v49 guid];

    v13, v54, v55, v56, v57, v58, v59, v60;
    if (v53)
    {
      v61 = sub_F07EC();
      v63 = v62;

      v64 = sub_3E850(v61, v63, &v181);
      v63, v65, v66, v67, v68, v69, v70, v71;
      *(v52 + 4) = v64;
      *(v52 + 12) = 2080;
      v72 = sub_3E850(v175, v13, &v181);
      v13, v73, v74, v75, v76, v77, v78, v79;
      *(v52 + 14) = v72;
      _os_log_impl(&dword_0, v50, v51, "Found chat %s for conversation ID %s", v52, 0x16u);
      swift_arrayDestroy();

      (*(v178 + 8))(v9, v179);
      goto LABEL_15;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v13, v38, v39, v40, v41, v42, v43, v44;
  v80 = static IMDChatRCSGroupIdentity.migrationEnabled.getter();
  v81 = v177;
  if ((v80 & 1) == 0)
  {
LABEL_16:
    if (!v37)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v82 = [v180 focus];
  v83 = sub_F07EC();
  v85 = v84;

  v86 = [v14 sharedInstance];
  v175 = v83;
  v87 = sub_F07BC();
  v88 = [v81 service];
  v89 = [v88 internalName];

  if (!v89)
  {
    sub_F07EC();
    v91 = v90;
    v89 = sub_F07BC();
    v91, v92, v93, v94, v95, v96, v97, v98;
  }

  v99 = [v86 newestExistingChatWithOriginalGroupID:v87 onService:v89];

  if (v99)
  {
    v176 = v99;
    v107 = v99;
    v108 = Logger.rcs.unsafeMutableAddressor();
    v109 = v178;
    v110 = v174;
    v111 = v179;
    (*(v178 + 16))(v174, v108, v179);
    v112 = v107;

    v113 = sub_F06AC();
    v114 = sub_F0D0C();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *&v181 = swift_slowAlloc();
      *v115 = 136315394;
      v116 = [v112 guid];

      v85, v117, v118, v119, v120, v121, v122, v123;
      if (!v116)
      {
        goto LABEL_29;
      }

      v124 = sub_F07EC();
      v126 = v125;

      v127 = sub_3E850(v124, v126, &v181);
      v126, v128, v129, v130, v131, v132, v133, v134;
      *(v115 + 4) = v127;
      *(v115 + 12) = 2080;
      v135 = sub_3E850(v175, v85, &v181);
      v85, v136, v137, v138, v139, v140, v141, v142;
      *(v115 + 14) = v135;
      _os_log_impl(&dword_0, v113, v114, "Found chat %s for group URI %s", v115, 0x16u);
      swift_arrayDestroy();

      (*(v178 + 8))(v174, v179);
      v81 = v177;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v109 + 8))(v110, v111);
    }

    v37 = v176;
    if (v176)
    {
LABEL_17:
      v49 = v37;
      goto LABEL_18;
    }
  }

  else
  {
    v85, v100, v101, v102, v103, v104, v105, v106;
    v37 = 0;
  }

LABEL_19:
  v145 = [v180 conversationID];
  v146 = sub_F07EC();
  v148 = v147;

  v156 = *(*&v81[OBJC_IVAR___RCSServiceSession_state] + 72);
  if (*v156[1].IMDTelephonyServiceSession_opaque && (v157 = v37, , sub_51FEC(v146, v148), v159 = v158, v156, v158, v160, v161, v162, v163, v164, v165, (v159 & 1) != 0))
  {
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v181 = 0u;
    sub_60AF0(v146, v148, &v181);
    v148, v166, v167, v168, v169, v170, v171, v172;

    sub_372B0(&v181, &qword_127EE8, &unk_F33F0);
  }

  else
  {
    v148, v149, v150, v151, v152, v153, v154, v155;
  }

  sub_1EDC(&v188);
}

uint64_t sub_52F78(void *a1)
{
  v2 = [a1 extractedUri];
  v3 = sub_F07EC();
  v5 = v4;

  v5, v6, v7, v8, v9, v10, v11, v12;
  v13 = (v5 >> 56) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v13 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = &selRef_extractedUri;
  }

  else
  {
    v14 = &selRef_uri;
  }

  v15 = [a1 *v14];
  v16 = sub_F07EC();

  [a1 isBot];
  return v16;
}

id sub_53040(uint64_t a1, RCSServiceSession *a2)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v9 = result;
    v10 = [result isMessagesTheDefaultTextApp];

    if (v10)
    {
      return v10;
    }

    v11 = Logger.rcs.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v11, v4);

    v12 = sub_F06AC();
    v13 = sub_F0CEC();
    a2, v14, v15, v16, v17, v18, v19, v20;
    if (os_log_type_enabled(v12, v13))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_3E850(a1, a2, &v40);
      _os_log_impl(&dword_0, v12, v13, "%{public}s invoked while Messages is not the default text app", v21, 0xCu);
      sub_1EDC(v22);
    }

    (*(v5 + 8))(v7, v4);
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v23 = result;
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_F0F9C(41);
      v41, v24, v25, v26, v27, v28, v29, v30;
      v40 = 0xD000000000000027;
      v41 = 0x80000000000FE9F0;
      v42._countAndFlagsBits = a1;
      v42._object = a2;
      sub_F08CC(v42);
      v31 = v41;
      v32 = sub_F07BC();
      v31, v33, v34, v35, v36, v37, v38, v39;
      [v23 forceAutoBugCaptureWithSubType:v32 errorPayload:0];

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSo17RCSServiceSessionC3RCSE22dispositionInformation_4withAEySo31CTXPCServiceSubscriptionContextC_So32CTLazuliMessageDispositionStatusCSo0J8SecurityCSgtF_0(void *a1, void *a2)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v125 - v9;
  __chkstk_darwin(v11);
  v13 = &v125 - v12;
  result = sub_53040(0xD000000000000024, 0x80000000000FE960);
  if ((result & 1) == 0)
  {
    return result;
  }

  v125 = v10;
  v126 = v7;
  v15 = Logger.rcs.unsafeMutableAddressor();
  v16 = *(v5 + 16);
  v127 = v15;
  v129 = v5 + 16;
  v128 = v16;
  (v16)(v13);
  v17 = a1;
  v18 = a2;
  v19 = sub_F06AC();
  v20 = sub_F0CCC();

  v21 = os_log_type_enabled(v19, v20);
  v132 = v5;
  v133 = v4;
  v131 = v17;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *&v135[0] = swift_slowAlloc();
    *v22 = 136446722;
    *(v22 + 4) = sub_3E850(0xD000000000000024, 0x80000000000FE960, v135);
    *(v22 + 12) = 2080;
    v23 = [v17 labelID];
    if (v23)
    {
      v24 = v23;
      v25 = sub_F07EC();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = sub_3E850(v25, v27, v135);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v22 + 14) = v28;
    *(v22 + 22) = 2080;
    v36 = [v18 description];
    v37 = sub_F07EC();
    v39 = v38;

    v40 = sub_3E850(v37, v39, v135);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v22 + 24) = v40;
    _os_log_impl(&dword_0, v19, v20, "%{public}s simID: %s status: %s", v22, 0x20u);
    swift_arrayDestroy();

    v130 = *(v132 + 8);
    v130(v13, v133);
    v17 = v131;
  }

  else
  {

    v130 = *(v5 + 8);
    v130(v13, v4);
  }

  v48 = [objc_opt_self() sharedInstance];
  sub_388C8(&qword_127F78, &qword_F2EB8);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_F2C70;
  *(v49 + 32) = 5456722;
  *(v49 + 40) = 0xE300000000000000;
  *(v49 + 88) = &type metadata for String;
  *(v49 + 56) = &type metadata for String;
  *(v49 + 64) = 0xD000000000000019;
  *(v49 + 72) = 0x80000000000FE990;
  v50 = sub_F09EC();
  v49, v51, v52, v53, v54, v55, v56, v57;
  v58 = sub_F0A5C();
  v59 = sub_F0A5C();
  v60 = [v48 copyCarrierBundleValueForSubscriptionContext:v17 keyHierarchy:v50 defaultValue:v58 valueIfError:v59];

  if (v60)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  v135[0] = v136;
  v135[1] = v137;
  if (!*(&v137 + 1))
  {
    sub_372B0(v135, &unk_127FB0, &qword_F2F40);
    goto LABEL_15;
  }

  if (!swift_dynamicCast())
  {
LABEL_15:
    v61 = 0;
    goto LABEL_16;
  }

  v61 = v134[0];
LABEL_16:
  v62 = [v18 forMessageID];
  v63 = [v62 uuid];

  v64 = sub_F07EC();
  v66 = v65;

  sub_727A4();
  v68 = v67;
  v69 = [v18 from];
  v70 = [v69 uri];

  v71 = sub_F07EC();
  v73 = v72;

  *&v135[0] = v71;
  *(&v135[0] + 1) = v73;
  __chkstk_darwin(v74);
  *(&v125 - 2) = v135;
  LOBYTE(v70) = sub_400F0(sub_55224, (&v125 - 4), v68);
  v73, v75, v76, v77, v78, v79, v80, v81;
  v68, v82, v83, v84, v85, v86, v87, v88;
  v89 = sub_AC068(v64, v66, v70 & 1, v61);
  v66, v90, v91, v92, v93, v94, v95, v96;
  if (v89)
  {
    v97 = [objc_opt_self() sharedInstance];
    v98 = [v97 chatForMessage:v89];

    v99 = v133;
    if (v98)
    {
      RCSHandle.init(destination:)([v18 from], v135);
      v124 = [v18 deliveryType];
      sub_3ADD8(v124, v89, v98, v135, v131);

      return sub_3CAB8(v135);
    }

    v120 = v125;
    v128(v125, v127, v133);
    v121 = sub_F06AC();
    v122 = sub_F0CEC();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_0, v121, v122, "Dropping disposition notification due to missing chat", v123, 2u);
    }

    v119 = v120;
  }

  else
  {
    v100 = v126;
    v99 = v133;
    v128(v126, v127, v133);
    v101 = v18;
    v102 = sub_F06AC();
    v103 = sub_F0CEC();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v135[0] = v105;
      *v104 = 136315138;
      v106 = [v101 forMessageID];
      v107 = [v106 uuid];

      v108 = sub_F07EC();
      v110 = v109;

      v111 = sub_3E850(v108, v110, v135);
      v110, v112, v113, v114, v115, v116, v117, v118;
      *(v104 + 4) = v111;
      _os_log_impl(&dword_0, v102, v103, "Dropping disposition notification due to unrecognized message ID %s", v104, 0xCu);
      sub_1EDC(v105);
    }

    v119 = v100;
  }

  return (v130)(v119, v99);
}

unint64_t sub_53D04()
{
  result = qword_127E90;
  if (!qword_127E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127E90);
  }

  return result;
}

void *RCSPersistentMenu.menu.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

unint64_t sub_53E04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_127F68, &qword_F2EB0);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_51DF8(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

uint64_t _sSo17RCSServiceSessionC3RCSE7request22toDisableAnonymization4from4withySo31CTXPCServiceSubscriptionContextC_So19CTLazuliDestinationCSo0M9MessageIDCtF_0(void *a1, void *a2, void *a3)
{
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000002ALL, 0x80000000000FE900);
  if (result)
  {
    v11 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v11, v6);
    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = sub_F06AC();
    v16 = sub_F0CCC();

    if (os_log_type_enabled(v15, v16))
    {
      v57 = v6;
      v17 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58 = v56;
      *v17 = 136446978;
      *(v17 + 4) = sub_3E850(0xD00000000000002ALL, 0x80000000000FE900, &v58);
      *(v17 + 12) = 2080;
      v18 = [v12 labelID];
      if (v18)
      {
        v19 = v18;
        v20 = sub_F07EC();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = sub_3E850(v20, v22, &v58);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v17 + 14) = v23;
      *(v17 + 22) = 2080;
      v31 = [v13 uri];
      v32 = sub_F07EC();
      v34 = v33;

      v35 = sub_3E850(v32, v34, &v58);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v17 + 24) = v35;
      *(v17 + 32) = 2080;
      v43 = [v14 uuid];
      v44 = sub_F07EC();
      v46 = v45;

      v47 = sub_3E850(v44, v46, &v58);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v17 + 34) = v47;
      _os_log_impl(&dword_0, v15, v16, "%{public}s simID: %s from: %s id: %s", v17, 0x2Au);
      swift_arrayDestroy();

      return (*(v7 + 8))(v9, v57);
    }

    else
    {

      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t _sSo17RCSServiceSessionC3RCSE7request30toEnableDisplayedNotifications4from4withySo31CTXPCServiceSubscriptionContextC_So19CTLazuliDestinationCSo0N9MessageIDCtF_0(void *a1, void *a2, void *a3)
{
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD000000000000032, 0x80000000000FE8C0);
  if (result)
  {
    v11 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v11, v6);
    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = sub_F06AC();
    v16 = sub_F0CCC();

    if (os_log_type_enabled(v15, v16))
    {
      v57 = v6;
      v17 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58 = v56;
      *v17 = 136446978;
      *(v17 + 4) = sub_3E850(0xD000000000000032, 0x80000000000FE8C0, &v58);
      *(v17 + 12) = 2080;
      v18 = [v12 labelID];
      if (v18)
      {
        v19 = v18;
        v20 = sub_F07EC();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = sub_3E850(v20, v22, &v58);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v17 + 14) = v23;
      *(v17 + 22) = 2080;
      v31 = [v13 uri];
      v32 = sub_F07EC();
      v34 = v33;

      v35 = sub_3E850(v32, v34, &v58);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v17 + 24) = v35;
      *(v17 + 32) = 2080;
      v43 = [v14 uuid];
      v44 = sub_F07EC();
      v46 = v45;

      v47 = sub_3E850(v44, v46, &v58);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v17 + 34) = v47;
      _os_log_impl(&dword_0, v15, v16, "%{public}s simID: %s from: %s id: %s", v17, 0x2Au);
      swift_arrayDestroy();

      return (*(v7 + 8))(v9, v57);
    }

    else
    {

      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

void sub_54564(void *a1, void *a2)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v109 - v9;
  if (sub_53040(0xD000000000000049, 0x80000000000FE870))
  {
    v11 = Logger.chatbot.unsafeMutableAddressor();
    v12 = *(v5 + 16);
    v115 = v11;
    v112 = v5 + 16;
    v113 = v12;
    v12(v10);
    v13 = a2;
    v14 = a1;
    v15 = sub_F06AC();
    v16 = sub_F0CCC();
    v111 = v13;

    LODWORD(v114) = v16;
    v17 = os_log_type_enabled(v15, v16);
    v117 = v14;
    if (v17)
    {
      v116 = v7;
      v110 = v5;
      v18 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v118[0] = v109;
      *v18 = 136446722;
      *(v18 + 4) = sub_3E850(0xD000000000000049, 0x80000000000FE870, v118);
      *(v18 + 12) = 2080;
      v19 = [v14 uri];
      v20 = sub_F07EC();
      v22 = v21;

      v23 = sub_3E850(v20, v22, v118);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v18 + 14) = v23;
      *(v18 + 22) = 2080;
      v31 = a2;
      if (a2)
      {
        v32 = [v111 description];
        v33 = sub_F07EC();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      v38 = v114;
      v39 = sub_3E850(v33, v35, v118);
      v35, v40, v41, v42, v43, v44, v45, v46;
      *(v18 + 24) = v39;
      _os_log_impl(&dword_0, v15, v38, "Persistent Menu - Fetched from %{public}s destination: %s info: %s", v18, 0x20u);
      swift_arrayDestroy();

      v37 = *(v110 + 8);
      (v37)(v10, v4);
      v7 = v116;
      v14 = v117;
    }

    else
    {

      v36 = *(v5 + 8);
      (v36)(v10, v4);
      v31 = a2;
      v37 = v36;
    }

    v47 = sub_64270(v14);
    v74 = v47;
    if (v47 >> 62)
    {
      goto LABEL_29;
    }

    v75 = *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));
    if (v75)
    {
      while (([v14 isBot] & 1) != 0 || v31 && objc_msgSend(v111, "cacheType") == &dword_0 + 1)
      {
        v4 = 0;
        v115 = v31;
        v116 = v74 & 0xC000000000000001;
        v113 = v74 & 0xFFFFFFFFFFFFFF8;
        v114 = v74;
        while (1)
        {
          if (v116)
          {
            v83 = sub_F0FCC();
          }

          else
          {
            if (v4 >= *(v113 + 16))
            {
              goto LABEL_28;
            }

            v83 = *(v74 + 8 * v4 + 32);
          }

          v14 = v83;
          v84 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            break;
          }

          sub_64724(v83, v115);
          v86 = v85;
          v87 = v117;
          v31 = v75;
          v88 = [v117 uri];
          v7 = sub_F07EC();
          v37 = v89;

          v90 = [v87 uri];
          v91 = sub_F07EC();
          v93 = v92;

          v94 = v86 & 1;
          v74 = v114;
          sub_47F0C(v7, v37, v91, v93, v94);
          v75 = v31;

          v37, v95, v96, v97, v98, v99, v100, v101;
          v93, v102, v103, v104, v105, v106, v107, v108;
          ++v4;
          if (v84 == v31)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v75 = sub_F10DC();
        if (!v75)
        {
          goto LABEL_30;
        }
      }

LABEL_25:
      v74, v76, v77, v78, v79, v80, v81, v82;
    }

    else
    {
LABEL_30:
      v74, v48, v49, v50, v51, v52, v53, v54;
      (v113)(v7, v115, v4);
      v55 = v14;
      v56 = sub_F06AC();
      v57 = sub_F0CEC();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v118[0] = v59;
        *v58 = 136315138;
        v60 = [v55 uri];
        v61 = sub_F07EC();
        v116 = v7;
        v62 = v61;
        v64 = v63;

        v65 = sub_3E850(v62, v64, v118);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v58 + 4) = v65;
        _os_log_impl(&dword_0, v56, v57, "Persistent Menu - Cannot find any chat for %s", v58, 0xCu);
        sub_1EDC(v59);

        v73 = v116;
      }

      else
      {

        v73 = v7;
      }

      (v37)(v73, v4);
    }
  }
}

uint64_t sub_54B7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_37C54;

  return sub_49EF8(a1, v4, v5, v6, (v1 + 5), v7);
}

void sub_54CA8(RCSServiceSession *result, RCSServiceSession *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (result)
  {
    result, a2, a3, a4, a5, a6, a7, a8;

    a2, v9, v10, v11, v12, v13, v14, v15;
  }
}

__n128 sub_54CE8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_54CFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_54D44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_54DA0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_54DB8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_54DD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_54E0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_54E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_54F88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_54FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_55014()
{
  result = qword_127F88;
  if (!qword_127F88)
  {
    sub_F06EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127F88);
  }

  return result;
}

unint64_t sub_5506C()
{
  result = qword_127F98;
  if (!qword_127F98)
  {
    sub_3CB70(&qword_127F90, &qword_F2EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127F98);
  }

  return result;
}

uint64_t sub_55108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[30];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_38B0C;

  return sub_467EC(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_5524C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_F06CC();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  sub_F0AEC();
  v6[14] = sub_F0ADC();
  v9 = sub_F0A6C();
  v6[15] = v9;
  v6[16] = v8;

  return _swift_task_switch(sub_55354, v9, v8);
}

void sub_55354()
{
  v104 = v0;
  v1 = *(v0 + 40);
  v2 = sub_F035C();
  *(v0 + 136) = v2;
  v3 = *(v2 - 8);
  *(v0 + 144) = v3;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  sub_388C8(&qword_128020, &qword_F2F08);
  v5 = swift_task_alloc();
  v6 = [v1 guid];
  if (!v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  sub_F07EC();
  v9 = v8;

  sub_F031C();
  v9, v10, v11, v12, v13, v14, v15, v16;
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 80);
    v20 = *(v0 + 40);

    sub_372B0(v5, &qword_128020, &qword_F2F08);

    v21 = Logger.rcs.unsafeMutableAddressor();
    (*(v18 + 16))(v17, v21, v19);
    v22 = v20;
    v23 = sub_F06AC();
    v24 = sub_F0CFC();
    if (!os_log_type_enabled(v23, v24))
    {
      v84 = *(v0 + 88);
      v83 = *(v0 + 96);
      v85 = *(v0 + 80);

      (*(v84 + 8))(v83, v85);
      goto LABEL_10;
    }

    v25 = *(v0 + 40);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v103[0] = v27;
    *v26 = 136315138;
    v28 = [v25 guid];

    if (v28)
    {
      v29 = *(v0 + 88);
      v100 = *(v0 + 96);
      v30 = *(v0 + 80);
      v31 = sub_F07EC();
      v33 = v32;

      v34 = sub_3E850(v31, v33, v103);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v26 + 4) = v34;
      _os_log_impl(&dword_0, v23, v24, "Non-UUID message GUID %s passed to RCSServiceSession?!", v26, 0xCu);
      sub_1EDC(v27);

      (*(v29 + 8))(v100, v30);
LABEL_10:
      sub_5F980();
      swift_allocError();
      *v86 = 1;
      *(v86 + 4) = 1;
      swift_willThrow();

      v87 = *(v0 + 8);

      v87();
      return;
    }

    goto LABEL_20;
  }

  v42 = *(v0 + 104);
  v43 = *(v0 + 80);
  v44 = *(v0 + 88);
  v45 = *(v0 + 64);
  v101 = *(v0 + 56);
  (*(v3 + 32))(v4, v5, v2);

  v46 = Logger.rcs.unsafeMutableAddressor();
  (*(v44 + 16))(v42, v46, v43);
  v47 = swift_task_alloc();
  (*(v3 + 16))(v47, v4, v2);
  v48 = v45;
  v49 = v101;
  v50 = sub_F06AC();
  v51 = sub_F0CDC();

  if (os_log_type_enabled(v50, v51))
  {
    v102 = v51;
    v53 = *(v0 + 56);
    v52 = *(v0 + 64);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v54 = 138412802;
    *(v54 + 4) = v52;
    v99 = v55;
    *v55 = v52;
    *(v54 + 12) = 2080;
    sub_5F9D4();
    v56 = v52;
    v57 = sub_F11EC();
    v59 = v58;
    v60 = *(v3 + 8);
    v60(v47, v2);
    v61 = sub_3E850(v57, v59, v103);
    v59, v62, v63, v64, v65, v66, v67, v68;
    *(v54 + 14) = v61;
    *(v54 + 22) = 2080;
    v69 = [v53 chatIdentifier];

    if (!v69)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v98 = *(v0 + 104);
    v70 = *(v0 + 80);
    v71 = *(v0 + 88);
    v72 = sub_F07EC();
    v74 = v73;

    v75 = sub_3E850(v72, v74, v103);
    v74, v76, v77, v78, v79, v80, v81, v82;
    *(v54 + 24) = v75;
    _os_log_impl(&dword_0, v50, v102, "Using context %@ for sending message %s to chat %s", v54, 0x20u);
    sub_372B0(v99, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    (*(v71 + 8))(v98, v70);
  }

  else
  {
    v88 = *(v0 + 104);
    v89 = *(v0 + 80);
    v90 = *(v0 + 88);
    v91 = *(v0 + 56);

    v60 = *(v3 + 8);
    v60(v47, v2);
    (*(v90 + 8))(v88, v89);
  }

  *(v0 + 160) = v60;
  v92 = *(v0 + 72);

  v93 = *(*(v92 + OBJC_IVAR___RCSServiceSession_state) + 48);
  *(v0 + 168) = v93;
  if (!v93)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v0 + 16) = *(v0 + 56);

  v94 = swift_task_alloc();
  *(v0 + 176) = v94;
  *v94 = v0;
  v94[1] = sub_55A84;
  v95 = *(v0 + 40);
  v96 = *(v0 + 48);
  v97 = *(v0 + 32);

  RCSMessageCreator.createRCSMessage(with:originalItem:in:using:)(v97, v95, v96, v0 + 16, v0 + 24);
}

uint64_t sub_55A84()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_55C58;
  }

  else
  {
    v5 = sub_55BA8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_55BA8()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];

  v2(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_55C58()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];

  v2(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_55CFC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v52 - v12;
  v14 = [a2 destinationCallerID];
  if (v14)
  {
    v15 = v14;
    v16 = sub_F07EC();
    v18 = v17;

    v19 = sub_5F444(v16, v18);
    LOBYTE(v16) = v20;
    v18, v20, v21, v22, v23, v24, v25, v26;
    if ((v16 & 1) == 0)
    {
      v45 = Logger.rcs.unsafeMutableAddressor();
      (*(v7 + 16))(v13, v45, v6);
      sub_3FA94(v19, 0);
      v46 = a2;
      v47 = sub_F06AC();
      v48 = sub_F0CDC();
      sub_3FA88(v19, 0);

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412546;
        *(v49 + 4) = v19;
        *(v49 + 12) = 2112;
        *(v49 + 14) = v46;
        *v50 = v19;
        v50[1] = v46;
        sub_3FA94(v19, 0);
        v51 = v46;
        _os_log_impl(&dword_0, v47, v48, "Using context %@ for interacting with message %@", v49, 0x16u);
        sub_388C8(&qword_127AF0, &qword_F28E0);
        swift_arrayDestroy();
      }

      (*(v7 + 8))(v13, v6);
      return;
    }

    v19 = v19;
  }

  else
  {
    v19 = 33;
  }

  v27 = Logger.rcs.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v27, v6);
  v28 = a2;
  v29 = sub_F06AC();
  v30 = sub_F0CCC();
  if (!os_log_type_enabled(v29, v30))
  {

    (*(v7 + 8))(v9, v6);
    goto LABEL_9;
  }

  v52 = v19;
  v53 = a1;
  v54 = v6;
  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v55 = v32;
  *v31 = 136315138;
  v33 = [v28 guid];

  if (v33)
  {
    v34 = sub_F07EC();
    v36 = v35;

    v37 = sub_3E850(v34, v36, &v55);
    v36, v38, v39, v40, v41, v42, v43, v44;
    *(v31 + 4) = v37;
    _os_log_impl(&dword_0, v29, v30, "Couldn't find a context for message %s, trying to resolve using the chat", v31, 0xCu);
    sub_1EDC(v32);

    (*(v7 + 8))(v9, v54);
    a1 = v53;
LABEL_9:
    [v3 subscriptionContextForChat:a1];
    return;
  }

  __break(1u);
}

uint64_t sub_56124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[36] = a5;
  v6[37] = v5;
  v6[34] = a3;
  v6[35] = a4;
  v6[32] = a1;
  v6[33] = a2;
  v7 = sub_F06CC();
  v6[38] = v7;
  v6[39] = *(v7 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  sub_F0AEC();
  v6[42] = sub_F0ADC();
  v9 = sub_F0A6C();
  v6[43] = v9;
  v6[44] = v8;

  return _swift_task_switch(sub_5622C, v9, v8);
}

void sub_5622C()
{
  v103 = v0;
  v1 = *(v0 + 264);
  v2 = sub_F035C();
  *(v0 + 360) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 368) = v3;
  *(v0 + 376) = *(v3 + 64);
  v5 = swift_task_alloc();
  *(v0 + 384) = v5;
  sub_388C8(&qword_128020, &qword_F2F08);
  v6 = swift_task_alloc();
  v7 = [v1 guid];
  if (!v7)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v8 = v7;
  sub_F07EC();
  v10 = v9;

  sub_F031C();
  v10, v11, v12, v13, v14, v15, v16, v17;
  if ((*(v4 + 48))(v6, 1, v2) == 1)
  {
    v19 = *(v0 + 312);
    v18 = *(v0 + 320);
    v20 = *(v0 + 304);
    v21 = *(v0 + 264);

    sub_372B0(v6, &qword_128020, &qword_F2F08);

    v22 = Logger.rcs.unsafeMutableAddressor();
    (*(v19 + 16))(v18, v22, v20);
    v23 = v21;
    v24 = sub_F06AC();
    v25 = sub_F0CFC();
    if (!os_log_type_enabled(v24, v25))
    {
      v85 = *(v0 + 312);
      v84 = *(v0 + 320);
      v86 = *(v0 + 304);

      (*(v85 + 8))(v84, v86);
      goto LABEL_14;
    }

    v26 = *(v0 + 264);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v102 = v28;
    *v27 = 136315138;
    v29 = [v26 guid];

    if (v29)
    {
      v30 = *(v0 + 312);
      v101 = *(v0 + 320);
      v31 = *(v0 + 304);
      v32 = sub_F07EC();
      v34 = v33;

      v35 = sub_3E850(v32, v34, &v102);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v27 + 4) = v35;
      _os_log_impl(&dword_0, v24, v25, "Non-UUID message GUID %s passed to RCSServiceSession?!", v27, 0xCu);
      sub_1EDC(v28);

      (*(v30 + 8))(v101, v31);
LABEL_14:
      sub_5F980();
      swift_allocError();
      *v87 = 1;
      *(v87 + 4) = 1;
      swift_willThrow();
LABEL_18:

      v96 = *(v0 + 8);

      v96();
      return;
    }

    goto LABEL_27;
  }

  v43 = *(v0 + 280);
  (*(v4 + 32))(v5, v6, v2);

  v44 = sub_F07EC();
  v46 = v45;
  if (!*(v43 + 16))
  {

    v46, v88, v89, v90, v91, v92, v93, v94;
    goto LABEL_17;
  }

  v47 = sub_51FEC(v44, v45);
  v49 = v48;
  v46, v48, v50, v51, v52, v53, v54, v55;
  if ((v49 & 1) == 0 || (v56 = *(v0 + 280), sub_3FE38(*(v56 + 56) + 32 * v47, v0 + 144), (swift_dynamicCast() & 1) == 0))
  {

LABEL_17:
    sub_5F980();
    swift_allocError();
    *v95 = 5;
    *(v95 + 4) = 1;
    swift_willThrow();
    (*(v4 + 8))(v5, v2);

    goto LABEL_18;
  }

  v57 = *(v0 + 208);
  v58 = *(v0 + 216);
  v59 = sub_F07EC();
  if (*(v43 + 16))
  {
    v67 = v60;
    v68 = sub_51FEC(v59, v60);
    v70 = v69;
    v67, v69, v71, v72, v73, v74, v75, v76;
    if (v70)
    {
      sub_3FE38(*(v56 + 56) + 32 * v68, v0 + 176);
      if (swift_dynamicCast())
      {
        v58, v77, v78, v79, v80, v81, v82, v83;
        v57 = *(v0 + 224);
        v58 = *(v0 + 232);
      }
    }
  }

  else
  {
    v60, v60, v61, v62, v63, v64, v65, v66;
  }

  *(v0 + 392) = v57;
  *(v0 + 400) = v58;
  v97 = *(*(v0 + 296) + OBJC_IVAR___RCSServiceSession_state);
  *(v0 + 408) = v97;
  v98 = *(v97 + 48);
  *(v0 + 416) = v98;
  if (!v98)
  {
    goto LABEL_28;
  }

  v99 = swift_task_alloc();
  *(v0 + 424) = v99;
  *v99 = v0;
  v99[1] = sub_56820;
  v100 = *(v0 + 264);

  RCSMessageCreator.createSenderInfo(with:for:using:)(v0 + 16, v100, v57, v58);
}

uint64_t sub_56820()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    *(v2 + 400), v3, v4, v5, v6, v7, v8, v9;

    v10 = *(v2 + 344);
    v11 = *(v2 + 352);
    v12 = sub_56F10;
  }

  else
  {

    v10 = *(v2 + 344);
    v11 = *(v2 + 352);
    v12 = sub_56950;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_56950(uint64_t a1)
{
  v76 = v1;
  v2 = v1[50];
  v3 = v1[48];
  v4 = v1[45];
  v5 = v1[46];
  v6 = v1[41];
  v7 = v1[38];
  v8 = v1[39];
  v9 = v1[36];
  v10 = Logger.rcs.unsafeMutableAddressor();
  (*(v8 + 16))(v6, v10, v7);
  v11 = swift_task_alloc();
  (*(v5 + 16))(v11, v3, v4);
  v12 = v9;

  v13 = sub_F06AC();
  v14 = sub_F0CDC();

  v2, v15, v16, v17, v18, v19, v20, v21;
  v22 = os_log_type_enabled(v13, v14);
  v23 = v1[50];
  if (v22)
  {
    v70 = v1[49];
    log = v13;
    v25 = v1[45];
    v24 = v1[46];
    v72 = v1[39];
    v73 = v1[38];
    v74 = v1[41];
    v26 = v1[36];
    v27 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v27 = 138412802;
    *(v27 + 4) = v26;
    *v69 = v26;
    *(v27 + 12) = 2080;
    sub_5F9D4();
    v28 = v11;
    v29 = v26;
    v30 = sub_F11EC();
    v32 = v31;
    v33 = *(v24 + 8);
    v33(v28, v25);
    v34 = sub_3E850(v30, v32, &v75);
    v32, v35, v36, v37, v38, v39, v40, v41;
    *(v27 + 14) = v34;
    *(v27 + 22) = 2080;
    v42 = sub_3E850(v70, v23, &v75);
    v23, v43, v44, v45, v46, v47, v48, v49;
    *(v27 + 24) = v42;
    _os_log_impl(&dword_0, log, v14, "Using context %@ for sending message %s to broadcast recipient %s", v27, 0x20u);
    sub_372B0(v69, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    (*(v72 + 8))(v74, v73);
  }

  else
  {
    v50 = v1[45];
    v51 = v1[46];
    v52 = v1[41];
    v53 = v1[38];
    v54 = v1[39];

    v23, v55, v56, v57, v58, v59, v60, v61;
    v33 = *(v51 + 8);
    v33(v11, v50);
    (*(v54 + 8))(v52, v53);
  }

  v1[55] = v33;
  v62 = v1[51];

  v64 = *(v62 + 48);
  v1[56] = v64;
  if (v64)
  {
    v1[31] = v1[36];

    v65 = swift_task_alloc();
    v1[57] = v65;
    *v65 = v1;
    v65[1] = sub_56CE4;
    v66 = v1[33];
    v67 = v1[34];
    v68 = v1[32];

    return RCSMessageCreator.createRCSMessage(with:originalItem:with:using:)(v68, v66, v67, (v1 + 2), (v1 + 31));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_56CE4()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_56FB4;
  }

  else
  {
    v5 = sub_56E08;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_56E08()
{
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[32];

  sub_5EFF4((v0 + 2));
  v1(v2, v3);
  v5 = type metadata accessor for RCSMessage(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_56F10()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_56FB4()
{
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[45];

  sub_5EFF4((v0 + 2));
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_57064(void *a1, void *a2)
{
  v240 = a2;
  v3 = type metadata accessor for RCSMessage(0);
  __chkstk_darwin(v3);
  v236 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v234 = &v225 - v6;
  __chkstk_darwin(v7);
  v231 = &v225 - v8;
  __chkstk_darwin(v9);
  v230 = &v225 - v10;
  v11 = sub_F06CC();
  v237 = *(v11 - 8);
  __chkstk_darwin(v11);
  v235 = &v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v233 = &v225 - v14;
  __chkstk_darwin(v15);
  v232 = &v225 - v16;
  v17 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v225 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v225 - v21;
  v23 = type metadata accessor for RCSMessage.Content(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v225 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v225 - v28;
  v238 = *(v3 + 32);
  sub_5F2EC(a1 + v238, v22);
  v30 = (*(v24 + 48))(v22, 1, v23);
  v239 = v3;
  if (v30 == 1)
  {
    sub_372B0(v22, &unk_127FA0, &qword_F34C0);
LABEL_15:
    v72 = v240;
    goto LABEL_16;
  }

  v229 = v11;
  v31 = type metadata accessor for RCSMessage.Content;
  sub_5F38C(v22, v29, type metadata accessor for RCSMessage.Content);
  sub_5F918(v29, v26, type metadata accessor for RCSMessage.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v228 = v29;
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_37640(v29, type metadata accessor for RCSMessage.Content);
      sub_37640(v26, type metadata accessor for RCSMessage.Content);
      v11 = v229;
      goto LABEL_15;
    }

    v228 = v29;
    sub_388C8(&qword_128028, &qword_F3670);

    v31 = type metadata accessor for RCSFile;
  }

  sub_37640(v26, v31);
  v33 = sub_F035C();
  v227 = &v225;
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v225 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F034C();
  v226 = sub_F032C();
  v38 = v37;
  (*(v34 + 8))(v36, v33);
  v39 = &v242;
  sub_5BD2C(a1, &v242);
  if (v248 == 1)
  {
    v47 = v243;
    v48 = v244;
    v49 = v246;
    v245, v40, v41, v42, v43, v44, v45, v46;
    v48, v50, v51, v52, v53, v54, v55, v56;
    v47, v57, v58, v59, v60, v61, v62, v63;
    v49, v64, v65, v66, v67, v68, v69, v70;
    v39 = v247;
  }

  v71 = v39[1];
  v249 = *v39;
  v250 = v71;
  *v251 = v39[2];
  *&v251[10] = *(v39 + 42);
  *v19 = 0;
  swift_storeEnumTagMultiPayload();
  (*(v24 + 56))(v19, 0, 1, v23);
  v72 = v240;
  v73 = v252;
  sub_57E38(v226, v38, &v249, v19, a1[20], 0, v240);
  if (v73)
  {
    v226 = v73;
    v81 = v72;
    v252 = 0;
    v38, v74, v75, v76, v77, v78, v79, v80;
    sub_372B0(v19, &unk_127FA0, &qword_F34C0);
    sub_5BD88(&v249);
    v82 = Logger.rcs.unsafeMutableAddressor();
    v83 = v237;
    v84 = v235;
    v11 = v229;
    (*(v237 + 16))(v235, v82, v229);
    v85 = v234;
    sub_5F918(a1, v234, type metadata accessor for RCSMessage);
    v86 = v236;
    sub_5F918(a1, v236, type metadata accessor for RCSMessage);
    v87 = sub_F06AC();
    v88 = sub_F0CEC();
    if (os_log_type_enabled(v87, v88))
    {
      LODWORD(v227) = v88;
      v89 = v86;
      v90 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v241 = v225;
      *v90 = 136315394;
      v91 = *(v85 + 128);
      v92 = *(v85 + 136);

      sub_37640(v85, type metadata accessor for RCSMessage);
      v93 = sub_3E850(v91, v92, &v241);
      v92, v94, v95, v96, v97, v98, v99, v100;
      *(v90 + 4) = v93;
      *(v90 + 12) = 2080;
      v101 = &v242;
      sub_5BD2C(v89, &v242);
      if (v248 == 1)
      {
        v109 = v243;
        v110 = v244;
        v111 = v246;
        v245, v102, v103, v104, v105, v106, v107, v108;
        v110, v112, v113, v114, v115, v116, v117, v118;
        v109, v119, v120, v121, v122, v123, v124, v125;
        v126 = v111;
        v84 = v235;
        v126, v127, v128, v129, v130, v131, v132, v133;
        v101 = v247;
      }

      v134 = v101[1];
      v249 = *v101;
      v250 = v134;
      *v251 = v101[2];
      *&v251[10] = *(v101 + 42);
      v135 = RCSDestination.description.getter();
      v137 = v136;
      sub_5BD88(&v249);
      sub_37640(v236, type metadata accessor for RCSMessage);
      v138 = sub_3E850(v135, v137, &v241);
      v137, v139, v140, v141, v142, v143, v144, v145;
      *(v90 + 14) = v138;
      _os_log_impl(&dword_0, v87, v227, "Failed to revoke typing indicator while sending %s to %s, still attempting to send", v90, 0x16u);
      swift_arrayDestroy();

      (*(v237 + 8))(v84, v11);
      sub_37640(v228, type metadata accessor for RCSMessage.Content);
      goto LABEL_15;
    }

    sub_37640(v86, type metadata accessor for RCSMessage);
    sub_37640(v85, type metadata accessor for RCSMessage);
    (*(v83 + 8))(v84, v11);
    sub_37640(v228, type metadata accessor for RCSMessage.Content);
    v72 = v81;
  }

  else
  {
    v38, v74, v75, v76, v77, v78, v79, v80;
    sub_372B0(v19, &unk_127FA0, &qword_F34C0);
    sub_5BD88(&v249);
    sub_37640(v228, type metadata accessor for RCSMessage.Content);
    v252 = 0;
    v11 = v229;
  }

LABEL_16:
  v146 = a1[16];
  v147 = a1[17];
  v148 = &v242;
  sub_5BD2C(a1, &v242);
  if (v248 == 1)
  {
    v156 = v243;
    v157 = v244;
    v158 = a1;
    v159 = v11;
    v160 = v72;
    v161 = v246;
    v245, v149, v150, v151, v152, v153, v154, v155;
    v157, v162, v163, v164, v165, v166, v167, v168;
    v156, v169, v170, v171, v172, v173, v174, v175;
    v176 = v161;
    v72 = v160;
    v11 = v159;
    a1 = v158;
    v176, v177, v178, v179, v180, v181, v182, v183;
    v148 = v247;
  }

  v184 = v148[1];
  v249 = *v148;
  v250 = v184;
  *v251 = v148[2];
  *&v251[10] = *(v148 + 42);
  v185 = v252;
  v186 = sub_57E38(v146, v147, &v249, a1 + v238, a1[20], *(a1 + *(v239 + 40)), v72);
  result = sub_5BD88(&v249);
  if (!v185)
  {
    v188 = Logger.rcs.unsafeMutableAddressor();
    v189 = v237;
    v190 = *(v237 + 16);
    if (v186)
    {
      v191 = v232;
      v190(v232, v188, v11);
      v192 = a1;
      v193 = v230;
      sub_5F918(v192, v230, type metadata accessor for RCSMessage);
      v194 = sub_F06AC();
      v195 = sub_F0CCC();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        v252 = swift_slowAlloc();
        v242 = v252;
        *v196 = 136315138;
        v197 = v193;
        v198 = *(v193 + 128);
        v199 = *(v193 + 136);

        sub_37640(v197, type metadata accessor for RCSMessage);
        v200 = sub_3E850(v198, v199, &v242);
        v199, v201, v202, v203, v204, v205, v206, v207;
        *(v196 + 4) = v200;
        _os_log_impl(&dword_0, v194, v195, "Handed %s off to CT!", v196, 0xCu);
        sub_1EDC(v252);
      }

      else
      {

        sub_37640(v193, type metadata accessor for RCSMessage);
      }

      (*(v189 + 8))(v191, v11);
      return 0;
    }

    else
    {
      v208 = v233;
      v190(v233, v188, v11);
      v209 = a1;
      v210 = v231;
      sub_5F918(v209, v231, type metadata accessor for RCSMessage);
      v211 = sub_F06AC();
      v212 = sub_F0CEC();
      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        v252 = swift_slowAlloc();
        v242 = v252;
        *v213 = 136315138;
        v214 = v210;
        v215 = *(v210 + 128);
        v216 = *(v210 + 136);

        sub_37640(v214, type metadata accessor for RCSMessage);
        v217 = sub_3E850(v215, v216, &v242);
        v216, v218, v219, v220, v221, v222, v223, v224;
        *(v213 + 4) = v217;
        _os_log_impl(&dword_0, v211, v212, "Didn't send message %s!", v213, 0xCu);
        sub_1EDC(v252);
      }

      else
      {

        sub_37640(v210, type metadata accessor for RCSMessage);
      }

      (*(v189 + 8))(v208, v11);
      return 5;
    }
  }

  return result;
}

uint64_t sub_57E38(uint64_t a1, RCSServiceSession *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v142 = a7;
  v145 = a6;
  v147 = a5;
  v143 = a1;
  v10 = type metadata accessor for RCSFile(0);
  __chkstk_darwin(v10 - 8);
  v132 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v12 - 8);
  v133 = (&v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v148 = &v130 - v15;
  __chkstk_darwin(v16);
  v18 = &v130 - v17;
  __chkstk_darwin(v19);
  v21 = &v130 - v20;
  v22 = sub_F06CC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v140 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v130 - v26;
  v28 = Logger.rcs.unsafeMutableAddressor();
  v29 = *(v23 + 16);
  v136 = v28;
  v137 = v23 + 16;
  v135 = v29;
  (v29)(v27);
  v139 = a4;
  sub_5F2EC(a4, v21);
  v138 = a3;
  sub_551C8(a3, v149);

  v30 = sub_F06AC();
  v31 = sub_F0CCC();
  v141 = a2;
  a2, v32, v33, v34, v35, v36, v37, v38;
  v39 = os_log_type_enabled(v30, v31);
  v146 = v23;
  if (v39)
  {
    v131 = v22;
    v40 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *v40 = 136315650;
    sub_5F2EC(v21, v18);
    v41 = type metadata accessor for RCSMessage.Content(0);
    if ((*(*(v41 - 8) + 48))(v18, 1, v41) == 1)
    {
      sub_372B0(v18, &unk_127FA0, &qword_F34C0);
      v42 = 0;
      v43 = 0xE000000000000000;
    }

    else
    {
      v46 = RCSMessage.Content.type.getter();
      sub_37640(v18, type metadata accessor for RCSMessage.Content);
      if (v46 <= 3u)
      {
        v53 = 0xE400000000000000;
        v54 = 1954047348;
        v55 = 0xE800000000000000;
        v56 = 0x6E6F697461636F6CLL;
        if (v46 != 2)
        {
          v56 = 0x70756F7267;
          v55 = 0xE500000000000000;
        }

        if (v46)
        {
          v54 = 0x726566736E617274;
          v53 = 0xE800000000000000;
        }

        if (v46 <= 1u)
        {
          v42 = v54;
        }

        else
        {
          v42 = v56;
        }

        if (v46 <= 1u)
        {
          v43 = v53;
        }

        else
        {
          v43 = v55;
        }
      }

      else
      {
        v47 = 0xEE00796C70655264;
        v48 = 0x6574736567677573;
        v49 = 0xEF6E6F6974634164;
        v50 = 0x6574736567677573;
        if (v46 != 7)
        {
          v50 = 0x6341656369766564;
          v49 = 0xEC0000006E6F6974;
        }

        if (v46 != 6)
        {
          v48 = v50;
          v47 = v49;
        }

        v51 = 0xE600000000000000;
        v52 = 0x676E69707974;
        if (v46 != 4)
        {
          v52 = 0x6472614368636972;
          v51 = 0xE900000000000073;
        }

        if (v46 <= 5u)
        {
          v42 = v52;
        }

        else
        {
          v42 = v48;
        }

        if (v46 <= 5u)
        {
          v43 = v51;
        }

        else
        {
          v43 = v47;
        }
      }
    }

    sub_372B0(v21, &unk_127FA0, &qword_F34C0);
    v57 = sub_3E850(v42, v43, &v151);
    v43, v58, v59, v60, v61, v62, v63, v64;
    *(v40 + 4) = v57;
    *(v40 + 12) = 2080;
    v44 = v143;
    v45 = v141;
    *(v40 + 14) = sub_3E850(v143, v141, &v151);
    *(v40 + 22) = 2080;
    v65 = RCSDestination.description.getter();
    v67 = v66;
    sub_5BD88(v149);
    v68 = sub_3E850(v65, v67, &v151);
    v67, v69, v70, v71, v72, v73, v74, v75;
    *(v40 + 24) = v68;
    _os_log_impl(&dword_0, v30, v31, "Sending %s message with ID %s to %s", v40, 0x20u);
    swift_arrayDestroy();

    v22 = v131;
    v134 = *(v146 + 8);
    v134(v27, v131);
  }

  else
  {

    sub_5BD88(v149);
    sub_372B0(v21, &unk_127FA0, &qword_F34C0);
    v134 = *(v23 + 8);
    v134(v27, v22);
    v44 = v143;
    v45 = v141;
  }

  v76 = v147;
  sub_551C8(v138, v150);
  v149[0] = v44;
  v149[1] = v45;
  v77 = v142;
  v150[8] = v142;
  v150[9] = v76;
  v150[10] = v145;
  v78 = v148;
  sub_5F2EC(v139, v148);
  v79 = type metadata accessor for RCSMessage.Content(0);
  v80 = (*(*(v79 - 8) + 48))(v78, 1, v79);
  v81 = v140;
  if (v80 == 1)
  {

    v82 = v77;

    sub_3896C(v76);
LABEL_31:
    v135(v81, v136, v22);

    v83 = sub_F06AC();
    v84 = sub_F0CFC();
    v45, v85, v86, v87, v88, v89, v90, v91;
    if (os_log_type_enabled(v83, v84))
    {
      v92 = v81;
      v93 = swift_slowAlloc();
      v94 = v22;
      v95 = swift_slowAlloc();
      v151 = v95;
      *v93 = 136315138;
      *(v93 + 4) = sub_3E850(v44, v45, &v151);
      _os_log_impl(&dword_0, v83, v84, "Attempt to send invalid/unsupported message %s", v93, 0xCu);
      sub_1EDC(v95);

      v96 = v92;
      v97 = v94;
    }

    else
    {

      v96 = v81;
      v97 = v22;
    }

    v134(v96, v97);
    sub_5F35C(v149);
    LOBYTE(v79) = 0;
    goto LABEL_57;
  }

  v98 = v133;
  sub_5F2EC(v148, v133);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_388C8(&qword_128028, &qword_F3670);

        v127 = v77;

        sub_3896C(v147);

        v128 = v132;
        sub_5F38C(v98, v132, type metadata accessor for RCSFile);
        LOBYTE(v79) = sub_5D3E8(v149, v128);
        sub_37640(v128, type metadata accessor for RCSFile);
        goto LABEL_56;
      }

      if (EnumCaseMultiPayload != 2)
      {
LABEL_50:

        v120 = v77;

        sub_3896C(v147);
        sub_37640(v98, type metadata accessor for RCSMessage.Content);
        goto LABEL_31;
      }

      v102 = *v98;
      v103 = v98[1];
      v104 = *(v98 + 2);
      v105 = *(v98 + 3);

      v106 = v77;

      sub_3896C(v147);

      v107 = sub_5CBCC(v149, v104, v105, v102, v103);
    }

    else
    {
      v111 = *v98;
      v105 = *(v98 + 1);

      v112 = v77;

      sub_3896C(v147);

      v107 = sub_5C344(v149, v111, v105);
    }

    LOBYTE(v79) = v107;
    sub_5F35C(v149);
    v105, v113, v114, v115, v116, v117, v118, v119;
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v100 = *v98;

        v101 = v77;

        sub_3896C(v147);
        LOBYTE(v79) = sub_5E700(v149, v100, sub_5FBB0, RCSSuggestedReply.responseForSuggestedReply.getter, &selRef_sendResponseForSuggestedReply_to_withMessageID_response_withError_);
        sub_5F35C(v149);

        goto LABEL_57;
      }

      goto LABEL_50;
    }

    v121 = *v98;

    v122 = v77;

    sub_3896C(v147);
    LOBYTE(v79) = sub_5DCA8(v149, v121);
LABEL_56:
    sub_5F35C(v149);
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 8)
    {

      v108 = v77;

      sub_3896C(v147);
      v109 = v144;
      sub_5E9B0(v149);
      if (!v109)
      {
        LOBYTE(v79) = v110;
      }

      goto LABEL_56;
    }

    goto LABEL_50;
  }

  v123 = *v98;

  v124 = v77;

  sub_3896C(v147);
  v125 = v144;
  v126 = sub_5E700(v149, v123, sub_5FBB0, RCSSuggestedAction.responseForSuggestedAction.getter, &selRef_sendResponseForSuggestedAction_to_withMessageID_response_withError_);
  if (!v125)
  {
    LOBYTE(v79) = v126;
  }

  sub_5F35C(v149);

LABEL_57:
  sub_372B0(v148, &unk_127FA0, &qword_F34C0);
  return v79 & 1;
}

uint64_t sub_58A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[75] = v3;
  v4[74] = a3;
  v4[73] = a2;
  v4[72] = a1;
  type metadata accessor for RCSMessage(0);
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v5 = sub_F06CC();
  v4[78] = v5;
  v4[79] = *(v5 - 8);
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v6 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v4[84] = v6;
  v4[85] = *(v6 - 8);
  v4[86] = swift_task_alloc();
  v4[87] = sub_F0AEC();
  v4[88] = sub_F0ADC();
  v8 = sub_F0A6C();
  v4[89] = v8;
  v4[90] = v7;

  return _swift_task_switch(sub_58C50, v8, v7);
}

uint64_t sub_58C50()
{
  v1 = sub_F014C();
  *(v0 + 728) = v1;
  v2 = [v1 domain];
  v3 = sub_F07EC();
  v5 = v4;

  v11 = CTLazuliOperationError.errorDomain.unsafeMutableAddressor();
  v12 = v11[1];
  if (v3 == *v11 && v5 == v12)
  {
    v5, v6, *v11, v12, v7, v8, v9, v10;
  }

  else
  {
    v14 = sub_F122C();
    v5, v15, v16, v17, v18, v19, v20, v21;
    if ((v14 & 1) == 0)
    {
LABEL_12:

LABEL_24:
      v81 = [v1 domain];
      v82 = sub_F07EC();
      v84 = v83;

      v90 = v11[1];
      if (v82 == *v11 && v84 == v90)
      {
        v84, v85, *v11, v90, v86, v87, v88, v89;
      }

      else
      {
        v91 = sub_F122C();
        v84, v92, v93, v94, v95, v96, v97, v98;
        if ((v91 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v99 = [v1 code];
      if (qword_127A98 != -1)
      {
        swift_once();
      }

      v100 = *(v0 + 688);
      v101 = *(v0 + 680);
      v102 = *(v0 + 672);
      v103 = sub_3C96C(v102, qword_127DC0);
      (*(v101 + 16))(v100, v103, v102);
      sub_F044C();
      (*(v101 + 8))(v100, v102);
      if ((*(v0 + 139) & 1) != 0 || v99 == &dword_8 + 1)
      {
        v104 = (v0 + 16);
        sub_5BD2C(*(v0 + 576), v0 + 16);
        if (*(v0 + 138) == 1)
        {
          v112 = *(v0 + 40);
          v113 = *(v0 + 48);
          v114 = *(v0 + 64);
          *(v0 + 24), v105, v106, v107, v108, v109, v110, v111;
          v112, v115, v116, v117, v118, v119, v120, v121;
          v113, v122, v123, v124, v125, v126, v127, v128;
          v114, v129, v130, v131, v132, v133, v134, v135;
          v104 = (v0 + 80);
        }

        *(v0 + 314) = *(v104 + 42);
        v136 = v104[1];
        *(v0 + 272) = *v104;
        *(v0 + 288) = v136;
        *(v0 + 304) = v104[2];
        if ((*(v0 + 329) & 1) == 0)
        {

          sub_5BD88(v0 + 272);
          goto LABEL_41;
        }

        v137 = *(v0 + 600);
        sub_55248((v0 + 272), v0 + 400);
        v138 = *(v0 + 424);
        v139 = *(v0 + 432);
        v140 = sub_373E8((v0 + 400), v138);
        sub_6F3C8(v140, v137, v138, v139);
        if (v141)
        {
          v142 = v141;
          v143 = *(v0 + 648);
          v144 = *(v0 + 632);
          v145 = *(v0 + 624);
          v146 = Logger.rcs.unsafeMutableAddressor();
          (*(v144 + 16))(v143, v146, v145);
          v147 = sub_F06AC();
          v148 = sub_F0CCC();
          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            *v149 = 0;
            _os_log_impl(&dword_0, v147, v148, "We were evicted from the group, failing message send and updating chat join state", v149, 2u);
          }

          v150 = *(v0 + 648);
          v151 = *(v0 + 632);
          v152 = *(v0 + 624);

          (*(v151 + 8))(v150, v152);
          sub_1EDC((v0 + 400));
          v153 = 0;
          v154 = 20;
          goto LABEL_42;
        }

        sub_1EDC((v0 + 400));
      }

LABEL_32:

LABEL_41:
      v154 = 0;
      v153 = 1;
LABEL_42:

      v155 = *(v0 + 8);

      return v155(v154 | (v153 << 32));
    }
  }

  v22 = [v1 code];
  if (qword_127A90 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 688);
  v24 = *(v0 + 680);
  v25 = *(v0 + 672);
  v26 = sub_3C96C(v25, qword_127DA8);
  (*(v24 + 16))(v23, v26, v25);
  sub_F044C();
  (*(v24 + 8))(v23, v25);
  if ((*(v0 + 140) & 1) == 0 && v22 != &dword_8)
  {
    goto LABEL_12;
  }

  v27 = (v0 + 144);
  sub_5BD2C(*(v0 + 576), v0 + 144);
  if (*(v0 + 266) == 1)
  {
    v35 = *(v0 + 168);
    v36 = *(v0 + 176);
    v37 = *(v0 + 192);
    *(v0 + 152), v28, v29, v30, v31, v32, v33, v34;
    v35, v38, v39, v40, v41, v42, v43, v44;
    v36, v45, v46, v47, v48, v49, v50, v51;
    v37, v52, v53, v54, v55, v56, v57, v58;
    v27 = (v0 + 208);
  }

  *(v0 + 378) = *(v27 + 42);
  v59 = v27[1];
  *(v0 + 336) = *v27;
  *(v0 + 352) = v59;
  *(v0 + 368) = v27[2];
  if ((*(v0 + 393) & 1) == 0)
  {

    sub_5BD88(v0 + 336);
    goto LABEL_24;
  }

  v60 = *(v0 + 600);
  sub_55248((v0 + 336), v0 + 440);
  v61 = *(v0 + 464);
  v62 = *(v0 + 472);
  v63 = sub_373E8((v0 + 440), v61);
  sub_6F3C8(v63, v60, v61, v62);
  *(v0 + 736) = v64;
  if (!v64)
  {

    sub_1EDC((v0 + 440));
    goto LABEL_24;
  }

  v65 = v64;
  v66 = *(v0 + 664);
  v67 = *(v0 + 632);
  v68 = *(v0 + 624);
  v69 = Logger.rcs.unsafeMutableAddressor();
  *(v0 + 744) = v69;
  v70 = *(v67 + 16);
  *(v0 + 752) = v70;
  *(v0 + 760) = (v67 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v70(v66, v69, v68);
  v71 = sub_F06AC();
  v72 = sub_F0CCC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_0, v71, v72, "Group recreation requested, recreating group", v73, 2u);
  }

  v74 = *(v0 + 664);
  v75 = *(v0 + 632);
  v76 = *(v0 + 624);

  v77 = *(v75 + 8);
  *(v0 + 768) = v77;
  v77(v74, v76);
  *(v0 + 504) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  *(v0 + 512) = &protocol witness table for IMDChat;
  *(v0 + 480) = v65;
  v78 = v65;
  IMDChatRCSGroupIdentity.reset()();
  sub_39BC4(v0 + 480);
  *(v0 + 776) = sub_F0ADC();
  v80 = sub_F0A6C();
  *(v0 + 784) = v80;
  *(v0 + 792) = v79;

  return _swift_task_switch(sub_59370, v80, v79);
}

void sub_59370()
{
  v1 = *(*(v0[75] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[100] = v1;
  if (v1)
  {
    v2 = v0[73];
    v0[70] = v0[92];
    v0[71] = v2;

    v3 = swift_task_alloc();
    v0[101] = v3;
    *v3 = v0;
    v3[1] = sub_5944C;

    RCSGroupController.resolveGroupIdentity(for:subscriptionContext:)((v0 + 65), (v0 + 70), (v0 + 71));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5944C()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {

    v3 = v2[99];
    v4 = v2[98];
    v5 = sub_5995C;
  }

  else
  {
    sub_1EDC(v2 + 65);

    v3 = v2[99];
    v4 = v2[98];
    v5 = sub_59584;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_59584()
{

  v1 = *(v0 + 720);
  v2 = *(v0 + 712);

  return _swift_task_switch(sub_595EC, v2, v1);
}

uint64_t sub_595EC()
{
  v41 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);

  v4 = sub_57064(v3, v2);
  if (v1)
  {
    v5 = *(v0 + 608);
    v6 = *(v0 + 576);
    (*(v0 + 752))(*(v0 + 640), *(v0 + 744), *(v0 + 624));
    sub_5F918(v6, v5, type metadata accessor for RCSMessage);
    swift_errorRetain();
    v7 = sub_F06AC();
    v8 = sub_F0CEC();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 768);
    v11 = *(v0 + 736);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);
    v14 = *(v0 + 608);
    if (v9)
    {
      v37 = *(v0 + 728);
      v39 = *(v0 + 624);
      v15 = swift_slowAlloc();
      v38 = v11;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v40 = v17;
      *v15 = 136315394;
      v35 = v12;
      v36 = v10;
      v19 = *(v14 + 128);
      v18 = *(v14 + 136);

      sub_37640(v14, type metadata accessor for RCSMessage);
      v20 = sub_3E850(v19, v18, &v40);
      v18, v21, v22, v23, v24, v25, v26, v27;
      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v28;
      *v16 = v28;
      _os_log_impl(&dword_0, v7, v8, "Re-send after group creation failed, failing message %s due to error %@", v15, 0x16u);
      sub_372B0(v16, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v17);

      v36(v35, v39);
    }

    else
    {

      sub_37640(v14, type metadata accessor for RCSMessage);
      v10(v12, v13);
    }

    sub_1EDC((v0 + 440));
    v32 = 4;
  }

  else
  {
    v29 = v4;
    v30 = *(v0 + 736);
    v31 = *(v0 + 728);
    sub_1EDC((v0 + 440));

    v32 = v29;
  }

  LOBYTE(v40) = 0;
  v33 = *(v0 + 8);

  return v33(v32);
}

uint64_t sub_5995C()
{

  v1 = *(v0 + 720);
  v2 = *(v0 + 712);

  return _swift_task_switch(sub_599C4, v2, v1);
}

uint64_t sub_599C4()
{
  v37 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 576);

  v1(v3, v2, v4);
  sub_5F918(v6, v5, type metadata accessor for RCSMessage);
  swift_errorRetain();
  v7 = sub_F06AC();
  v8 = sub_F0CEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 768);
  v11 = *(v0 + 736);
  v12 = *(v0 + 656);
  v13 = *(v0 + 624);
  v14 = *(v0 + 616);
  if (v9)
  {
    v33 = *(v0 + 728);
    v35 = *(v0 + 624);
    v15 = swift_slowAlloc();
    v34 = v11;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v15 = 136315394;
    v31 = v12;
    v32 = v10;
    v19 = *(v14 + 128);
    v18 = *(v14 + 136);

    sub_37640(v14, type metadata accessor for RCSMessage);
    v20 = sub_3E850(v19, v18, &v36);
    v18, v21, v22, v23, v24, v25, v26, v27;
    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v28;
    *v16 = v28;
    _os_log_impl(&dword_0, v7, v8, "Failed to re-create group, failing message %s due to error %@", v15, 0x16u);
    sub_372B0(v16, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v17);

    v32(v31, v35);
  }

  else
  {

    sub_37640(v14, type metadata accessor for RCSMessage);
    v10(v12, v13);
  }

  sub_1EDC((v0 + 440));

  v29 = *(v0 + 8);

  return v29(4);
}

uint64_t sub_59D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[98] = v6;
  v7[97] = a6;
  v7[96] = a5;
  v7[95] = a4;
  v7[94] = a3;
  v7[93] = a2;
  v7[92] = a1;
  v8 = *(type metadata accessor for RCSMessage(0) - 8);
  v7[99] = v8;
  v7[100] = *(v8 + 64);
  v7[101] = swift_task_alloc();
  v7[102] = swift_task_alloc();
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  v9 = sub_F06CC();
  v7[105] = v9;
  v7[106] = *(v9 - 8);
  v7[107] = swift_task_alloc();
  v7[108] = swift_task_alloc();
  v7[109] = swift_task_alloc();
  v7[110] = swift_task_alloc();
  sub_F0AEC();
  v7[111] = sub_F0ADC();
  v11 = sub_F0A6C();
  v7[112] = v11;
  v7[113] = v10;

  return _swift_task_switch(sub_59EBC, v11, v10);
}

uint64_t sub_59EBC()
{
  v262 = v0;
  sub_5BD2C(*(v0 + 736), v0 + 16);
  if (*(v0 + 138))
  {
    v8 = *(v0 + 856);
    v9 = *(v0 + 848);
    v10 = *(v0 + 840);
    v11 = *(v0 + 808);
    v12 = *(v0 + 736);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    v15 = *(v0 + 64);
    *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
    v13, v16, v17, v18, v19, v20, v21, v22;
    v14, v23, v24, v25, v26, v27, v28, v29;
    v15, v30, v31, v32, v33, v34, v35, v36;
    sub_5BD88(v0 + 80);
    v37 = Logger.rcs.unsafeMutableAddressor();
    (*(v9 + 16))(v8, v37, v10);
    sub_5F918(v12, v11, type metadata accessor for RCSMessage);
    v38 = sub_F06AC();
    v39 = sub_F0CEC();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 856);
    v42 = *(v0 + 848);
    v43 = *(v0 + 840);
    v44 = *(v0 + 808);
    if (v40)
    {
      v257 = *(v0 + 856);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v261 = v46;
      *v45 = 136315138;
      v47 = *(v44 + 128);
      v48 = *(v44 + 136);

      sub_37640(v44, type metadata accessor for RCSMessage);
      v49 = sub_3E850(v47, v48, &v261);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v45 + 4) = v49;
      _os_log_impl(&dword_0, v38, v39, "Not sending message %s, not from me", v45, 0xCu);
      sub_1EDC(v46);

      (*(v42 + 8))(v257, v43);
    }

    else
    {

      sub_37640(v44, type metadata accessor for RCSMessage);
      (*(v42 + 8))(v41, v43);
    }

    v258 = (*(v0 + 768) + **(v0 + 768));
    v141 = swift_task_alloc();
    *(v0 + 1016) = v141;
    *v141 = v0;
    v141[1] = sub_5B5C8;
    v142 = 5;
    goto LABEL_15;
  }

  v57 = (v0 + 144);
  v58 = *(v0 + 736);
  sub_5EFF4(v0 + 16);
  sub_5BD2C(v58, v0 + 144);
  if (*(v0 + 266) == 1)
  {
    v66 = *(v0 + 168);
    v67 = *(v0 + 176);
    v68 = *(v0 + 192);
    *(v0 + 152), v59, v60, v61, v62, v63, v64, v65;
    v66, v69, v70, v71, v72, v73, v74, v75;
    v67, v76, v77, v78, v79, v80, v81, v82;
    v68, v83, v84, v85, v86, v87, v88, v89;
    v57 = (v0 + 208);
  }

  v90 = v57[1];
  *(v0 + 400) = *v57;
  *(v0 + 416) = v90;
  *(v0 + 432) = v57[2];
  *(v0 + 442) = *(v57 + 42);
  sub_551C8(v0 + 400, v0 + 464);
  if (*(v0 + 521))
  {
    v98 = (v0 + 272);
    v99 = *(v0 + 736);
    sub_5BD88(v0 + 464);
    sub_5BD2C(v99, v0 + 272);
    if (*(v0 + 394) == 1)
    {
      v107 = *(v0 + 296);
      v108 = *(v0 + 304);
      v109 = *(v0 + 320);
      *(v0 + 280), v100, v101, v102, v103, v104, v105, v106;
      v107, v110, v111, v112, v113, v114, v115, v116;
      v108, v117, v118, v119, v120, v121, v122, v123;
      v109, v124, v125, v126, v127, v128, v129, v130;
      v98 = (v0 + 336);
    }

    *(v0 + 570) = *(v98 + 42);
    v131 = v98[1];
    *(v0 + 528) = *v98;
    *(v0 + 544) = v131;
    *(v0 + 560) = v98[2];
    if ((*(v0 + 585) & 1) == 0)
    {
      v138 = sub_5BD88(v0 + 528);
      goto LABEL_26;
    }

    v132 = *(v0 + 784);
    sub_55248((v0 + 528), v0 + 656);
    v133 = *(v0 + 680);
    v134 = *(v0 + 688);
    v135 = sub_373E8((v0 + 656), v133);
    sub_6F3C8(v135, v132, v133, v134);
    *(v0 + 920) = v136;
    if (!v136)
    {
      v138 = sub_1EDC((v0 + 656));
      goto LABEL_26;
    }

    v137 = v136;
    if ([v136 state])
    {
      sub_1EDC((v0 + 656));

      goto LABEL_26;
    }

    v243 = *(v0 + 872);
    v244 = *(v0 + 848);
    v245 = *(v0 + 840);
    v246 = Logger.rcs.unsafeMutableAddressor();
    (*(v244 + 16))(v243, v246, v245);
    v247 = sub_F06AC();
    v248 = sub_F0CEC();
    if (os_log_type_enabled(v247, v248))
    {
      v249 = swift_slowAlloc();
      *v249 = 0;
      _os_log_impl(&dword_0, v247, v248, "Not sending group message, we are not a member anymore", v249, 2u);
    }

    v250 = *(v0 + 872);
    v251 = *(v0 + 848);
    v252 = *(v0 + 840);
    v253 = *(v0 + 768);

    (*(v251 + 8))(v250, v252);
    v258 = (v253 + *v253);
    v241 = swift_task_alloc();
    *(v0 + 928) = v241;
    *v241 = v0;
    v242 = sub_5AB44;
  }

  else
  {
    v144 = *(v0 + 472);
    v146 = *(v0 + 488);
    v145 = *(v0 + 496);
    v147 = *(v0 + 512);
    if (!*(v0 + 520))
    {
      *(v0 + 472), v91, v92, v93, v94, v95, v96, v97;
      v146, v201, v202, v203, v204, v205, v206, v207;
      v145, v208, v209, v210, v211, v212, v213, v214;
      v147, v215, v216, v217, v218, v219, v220, v221;
      goto LABEL_26;
    }

    v138 = [objc_opt_self() sharedInstance];
    if (!v138)
    {
      goto LABEL_39;
    }

    v153 = v138;
    v144, v139, v140, v148, v149, v150, v151, v152;
    v146, v154, v155, v156, v157, v158, v159, v160;
    v145, v161, v162, v163, v164, v165, v166, v167;
    v147, v168, v169, v170, v171, v172, v173, v174;
    v175 = [v153 isRBMEnabled];

    if (v175)
    {
LABEL_26:
      v222 = *(*(*(v0 + 784) + OBJC_IVAR___RCSServiceSession_state) + 64);
      *(v0 + 936) = v222;
      if (v222)
      {
        v223 = *(v0 + 736);
        sub_388C8(&qword_128020, &qword_F2F08);
        v224 = swift_task_alloc();
        *(v0 + 944) = v224;
        *(v0 + 952) = *(v223 + 128);
        *(v0 + 960) = *(v223 + 136);
        v225 = v222;
        sub_F031C();
        v226 = sub_F035C();
        *(v0 + 968) = v226;
        v227 = *(v226 - 8);
        *(v0 + 976) = v227;
        v138 = (*(v227 + 48))(v224, 1, v226);
        if (v138 != 1)
        {
          v228 = *(v0 + 824);
          v229 = *(v0 + 800);
          v230 = *(v0 + 792);
          v231 = *(v0 + 784);
          v256 = *(v0 + 776);
          v260 = *(v0 + 760);
          v254 = *(v0 + 768);
          v255 = *(v0 + 752);
          v232 = *(v0 + 744);
          sub_5F918(*(v0 + 736), v228, type metadata accessor for RCSMessage);
          v233 = (*(v230 + 80) + 24) & ~*(v230 + 80);
          v234 = (v229 + v233 + 7) & 0xFFFFFFFFFFFFFFF8;
          v235 = (v234 + 15) & 0xFFFFFFFFFFFFFFF8;
          v236 = swift_allocObject();
          *(v0 + 984) = v236;
          *(v236 + 16) = v231;
          sub_5F38C(v228, v236 + v233, type metadata accessor for RCSMessage);
          *(v236 + v234) = v232;
          v237 = (v236 + v235);
          *v237 = v254;
          v237[1] = v256;
          v238 = (v236 + ((v235 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v238 = v255;
          v238[1] = v260;
          v239 = v231;
          v240 = v232;

          v138 = sub_5AD50;
          v139 = 0;
          v140 = 0;

          return _swift_task_switch(v138, v139, v140);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_39:
      __break(1u);
      return _swift_task_switch(v138, v139, v140);
    }

    v176 = *(v0 + 880);
    v177 = *(v0 + 848);
    v178 = *(v0 + 840);
    v179 = *(v0 + 832);
    v180 = *(v0 + 736);
    v181 = Logger.rcs.unsafeMutableAddressor();
    (*(v177 + 16))(v176, v181, v178);
    sub_5F918(v180, v179, type metadata accessor for RCSMessage);
    v182 = sub_F06AC();
    v183 = sub_F0CEC();
    v184 = os_log_type_enabled(v182, v183);
    v185 = *(v0 + 880);
    v186 = *(v0 + 848);
    v187 = *(v0 + 840);
    v188 = *(v0 + 832);
    if (v184)
    {
      v259 = *(v0 + 880);
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v261 = v190;
      *v189 = 136315138;
      v191 = *(v188 + 128);
      v192 = *(v188 + 136);

      sub_37640(v188, type metadata accessor for RCSMessage);
      v193 = sub_3E850(v191, v192, &v261);
      v192, v194, v195, v196, v197, v198, v199, v200;
      *(v189 + 4) = v193;
      _os_log_impl(&dword_0, v182, v183, "Not sending RBM message %s, RBM is disabled in Settings", v189, 0xCu);
      sub_1EDC(v190);

      (*(v186 + 8))(v259, v187);
    }

    else
    {

      sub_37640(v188, type metadata accessor for RCSMessage);
      (*(v186 + 8))(v185, v187);
    }

    v258 = (*(v0 + 768) + **(v0 + 768));
    v241 = swift_task_alloc();
    *(v0 + 912) = v241;
    *v241 = v0;
    v242 = sub_5A948;
  }

  v241[1] = v242;
  v142 = 4;
LABEL_15:

  return v258(v142);
}

uint64_t sub_5A948()
{
  v1 = *v0;

  v2 = *(v1 + 904);
  v3 = *(v1 + 896);

  return _swift_task_switch(sub_5AA68, v3, v2);
}

uint64_t sub_5AA68()
{

  sub_5BD88(v0 + 400);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5AB44()
{
  v1 = *v0;

  v2 = *(v1 + 904);
  v3 = *(v1 + 896);

  return _swift_task_switch(sub_5AC64, v3, v2);
}

uint64_t sub_5AC64()
{
  v1 = v0[115];

  sub_5BD88((v0 + 50));
  sub_1EDC(v0 + 82);

  v2 = v0[1];

  return v2();
}

uint64_t sub_5AD50()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[118];
  v5 = *(v0[117] + OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_operationController);
  v0[90] = type metadata accessor for RCSOutgoingMessageController.OperationID(0);
  v0[91] = sub_5F1E4();
  v6 = sub_37474(v0 + 87);
  (*(v2 + 16))(v6, v4, v3);
  v7 = swift_allocObject();
  v0[124] = v7;
  *(v7 + 16) = &unk_F2F20;
  *(v7 + 24) = v1;
  v8 = *(*v5 + 216);

  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[125] = v9;
  *v9 = v0;
  v9[1] = sub_5AF1C;

  return v11(v0 + 87, &unk_F3E80, v7);
}

uint64_t sub_5AF1C()
{
  v2 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v3 = sub_5B1D8;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[122];
    v7 = v2[121];
    v8 = v2[118];
    v9 = v2[117];

    sub_1EDC(v2 + 87);
    (*(v6 + 8))(v8, v7);

    v5 = v2[113];
    v4 = v2[112];
    v3 = sub_5B0AC;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_5B0AC()
{
  v1 = v0[92];

  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = (v0[92] + 144);
    v4 = v2;
  }

  else
  {
    v4 = v0[120];
    v3 = v0 + 119;
  }

  v5 = *v3;

  sub_43EB0(v5, v4);
  v4, v6, v7, v8, v9, v10, v11, v12;
  sub_5BD88((v0 + 50));

  v13 = v0[1];

  return v13();
}

uint64_t sub_5B1D8()
{
  v1 = v0[117];

  sub_1EDC(v0 + 87);
  v2 = v0[113];
  v3 = v0[112];

  return _swift_task_switch(sub_5B250, v3, v2);
}

uint64_t sub_5B250()
{
  v47 = v0;
  v1 = v0[108];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[102];
  v5 = v0[92];
  (*(v0[122] + 8))(v0[118], v0[121]);

  v6 = Logger.rcs.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v6, v3);
  sub_5F918(v5, v4, type metadata accessor for RCSMessage);
  sub_551C8((v0 + 50), (v0 + 74));
  swift_errorRetain();
  v7 = sub_F06AC();
  v8 = sub_F0CEC();

  if (os_log_type_enabled(v7, v8))
  {
    v43 = v0[106];
    v44 = v0[105];
    v45 = v0[108];
    v9 = v0[102];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v10 = 136315650;
    v12 = *(v9 + 128);
    v13 = *(v9 + 136);

    sub_37640(v9, type metadata accessor for RCSMessage);
    v14 = sub_3E850(v12, v13, &v46);
    v13, v15, v16, v17, v18, v19, v20, v21;
    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v22 = RCSDestination.description.getter();
    v24 = v23;
    sub_5BD88((v0 + 74));
    v25 = sub_3E850(v22, v24, &v46);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v10 + 14) = v25;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v33;
    *v11 = v33;
    _os_log_impl(&dword_0, v7, v8, "Failed to send %s to %s via CT: %@", v10, 0x20u);
    sub_372B0(v11, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    (*(v43 + 8))(v45, v44);
  }

  else
  {
    v34 = v0[108];
    v35 = v0[106];
    v36 = v0[105];
    v37 = v0[102];

    sub_5BD88((v0 + 74));
    sub_37640(v37, type metadata accessor for RCSMessage);
    (*(v35 + 8))(v34, v36);
  }

  v38 = swift_task_alloc();
  v0[128] = v38;
  *v38 = v0;
  v38[1] = sub_5B7BC;
  v39 = v0[126];
  v40 = v0[93];
  v41 = v0[92];

  return sub_58A84(v41, v40, v39);
}

uint64_t sub_5B5C8()
{
  v1 = *v0;

  v2 = *(v1 + 904);
  v3 = *(v1 + 896);

  return _swift_task_switch(sub_5B6E8, v3, v2);
}

uint64_t sub_5B6E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5B7BC(uint64_t a1)
{
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v9 = (*(v3 + 768) + **(v3 + 768));
  v6 = swift_task_alloc();
  if ((a1 & 0x100000000) != 0)
  {
    *(v4 + 1040) = v6;
    *v6 = v5;
    v6[1] = sub_5BC0C;
    v7 = 4;
  }

  else
  {
    *(v4 + 1032) = v6;
    *v6 = v5;
    v6[1] = sub_5BA04;
    v7 = a1;
  }

  return v9(v7);
}

uint64_t sub_5BA04()
{
  v1 = *v0;

  v2 = *(v1 + 904);
  v3 = *(v1 + 896);

  return _swift_task_switch(sub_5BB24, v3, v2);
}

uint64_t sub_5BB24()
{

  sub_5BD88(v0 + 400);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5BC0C()
{
  v1 = *v0;

  v2 = *(v1 + 904);
  v3 = *(v1 + 896);

  return _swift_task_switch(sub_5FBAC, v3, v2);
}

uint64_t sub_5BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_F0AEC();
  v7[9] = sub_F0ADC();
  v9 = sub_F0A6C();
  v7[10] = v9;
  v7[11] = v8;

  return _swift_task_switch(sub_5BE80, v9, v8);
}

uint64_t sub_5BE80()
{
  v1 = sub_57064(*(v0 + 24), *(v0 + 32));
  if (v1)
  {
    v6 = (*(v0 + 40) + **(v0 + 40));
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_5C0A0;

    return v6(v2);
  }

  else
  {
    v7 = (*(v0 + 56) + **(v0 + 56));
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_5C224;

    return v7();
  }
}

uint64_t sub_5C0A0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_5C1C0, v3, v2);
}

uint64_t sub_5C1C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5C224()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_5FBB4, v3, v2);
}

uint64_t sub_5C344(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(CTLazuliMessageText) init];
  v9 = sub_F07BC();
  [v8 setContent:v9];

  v10 = a1[12];
  if (v10)
  {
    v11 = sub_5F720(v10);
    [v8 setMetaData:v11];
  }

  v79 = v8;
  v77 = a1[11];
  if (v77)
  {
    v12 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  else
  {
    v12 = 0;
  }

  v13 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v13, v4);
  v14 = v12;
  v15 = sub_F06AC();
  v16 = sub_F0CCC();
  v80 = v14;

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v80;
    *(v17 + 4) = v80;
    *v18 = v12;
    v20 = v19;
    _os_log_impl(&dword_0, v15, v16, "Sending with encryption: %@", v17, 0xCu);
    sub_372B0(v18, &qword_127AF0, &qword_F28E0);
  }

  (*(v5 + 8))(v7, v4);
  sub_551C8((a1 + 2), v85);
  if (v87)
  {
    sub_55248(v85, v81);
    v21 = *(*(v78 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v22 = a1[10];
    v23 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
    sub_1F28(v81, v82);
    v24 = v83;
    v25 = v84;
    v26 = sub_5F3F4(v82, v83);
    v27 = __chkstk_darwin(v26);
    v29 = v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29, v27);
    v31 = v21;
    v32 = sub_A84F0(v29, v23, v24, v25);
    sub_1EDC(v82);
    v33 = v77;
    if (v77 >= 2)
    {
      v78 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v46 = *a1;
      v47 = a1[1];

      v48 = [v33 secureGroupVersion];
      v49 = v22;
      v50 = [v33 uuid];
      v51 = sub_F07EC();
      v53 = v52;

      v22 = v49;
      v36 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v46, v47, v48, v51, v53);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v34 = *a1;
      v35 = a1[1];

      v36 = CTLazuliMessageID.init(uuid:)(v34, v35);
    }

    v54 = v36;
    v55 = v79;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v56 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v56 = v80;
    }

    v82[0] = 0;
    v57 = [v31 sendTextMessage:v22 toGroupDestination:v32 withMessageID:v54 withMessage:v55 withSecurity:v56 withError:v82];

    if (!v57)
    {
      v74 = v82[0];
      sub_F015C();

      swift_willThrow();
      sub_1EDC(v81);
      return 1;
    }

    v58 = v82[0];
    sub_1EDC(v81);
  }

  else
  {
    v88[0] = v85[0];
    v88[1] = v85[1];
    *v89 = *v86;
    *&v89[9] = *&v86[9];
    v37 = a1[10];
    v38 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v38);
    v76[-2] = v37;
    sub_38910(v88, v81);
    v39 = CTLazuliDestination.init(handle:countryCode:)(v88, sub_39CD4, &v76[-4]);
    v40 = *(*(v78 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v41 = v77;
    if (v77 >= 2)
    {
      v76[1] = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v59 = v37;
      v60 = v39;
      v61 = *a1;
      v43 = a1[1];
      v62 = v40;

      v63 = [v41 secureGroupVersion];
      v64 = [v41 uuid];
      v65 = sub_F07EC();
      v67 = v66;

      v42 = v61;
      v39 = v60;
      v37 = v59;
      v45 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v42, v43, v63, v65, v67);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v42 = *a1;
      v43 = a1[1];
      v44 = v40;

      v45 = CTLazuliMessageID.init(uuid:)(v42, v43);
    }

    v68 = v45;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v69 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v69 = v80;
    }

    v81[0] = 0;
    v70 = v79;
    v71 = [v40 sendTextMessage:v37 to:v39 withMessageID:v68 withMessage:v79 withSecurity:v69 withError:v81];

    v72 = v81[0];
    sub_3CAB8(v88);
    if (!v71)
    {
      sub_F015C();

      swift_willThrow();
      return 1;
    }

    if (v89[24])
    {
      sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);

      v73 = CTLazuliOperationID.init(id:)(v42, v43);
      sub_62F9C(v37, v39, v73);
    }
  }

  return 1;
}

uint64_t sub_5CBCC(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_F06CC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = RCSMessage.Coordinates.toCTCoordinates()(a2, a3, a4, a5);
  v17 = a1[12];
  if (v17)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    v19 = sub_5F720(v17);
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

    [v20 setMetaData:v19];
  }

  v85 = a1[11];
  if (v85)
  {
    v21 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  else
  {
    v21 = 0;
  }

  v86 = v16;
  v22 = Logger.rcs.unsafeMutableAddressor();
  (*(v13 + 16))(v15, v22, v12);
  v23 = v21;
  v24 = sub_F06AC();
  v25 = sub_F0CCC();
  v87 = v23;

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v84 = v12;
    v28 = a1;
    v29 = v6;
    v30 = v27;
    *v26 = 138412290;
    v31 = v87;
    *(v26 + 4) = v87;
    *v27 = v21;
    v32 = v31;
    _os_log_impl(&dword_0, v24, v25, "Sending with encryption: %@", v26, 0xCu);
    sub_372B0(v30, &qword_127AF0, &qword_F28E0);
    v6 = v29;
    a1 = v28;
    v12 = v84;
  }

  (*(v13 + 8))(v15, v12);
  sub_551C8((a1 + 2), v92);
  if (v94)
  {
    sub_55248(v92, v91);
    v33 = *(*(v6 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v84 = a1[10];
    v34 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
    sub_1F28(v91, v88);
    v35 = v89;
    v36 = v90;
    v37 = sub_5F3F4(v88, v89);
    v38 = __chkstk_darwin(v37);
    v40 = &v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v40, v38);
    v42 = v33;
    v43 = sub_A84F0(v40, v34, v35, v36);
    sub_1EDC(v88);
    v44 = v85;
    if (v85 >= 2)
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v57 = *a1;
      v58 = a1[1];

      v59 = [v44 secureGroupVersion];
      v60 = [v44 uuid];
      v61 = sub_F07EC();
      v63 = v62;

      v47 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v57, v58, v59, v61, v63);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v46 = *a1;
      v45 = a1[1];

      v47 = CTLazuliMessageID.init(uuid:)(v46, v45);
    }

    v64 = v47;
    v65 = v86;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v66 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v66 = v87;
    }

    v88[0] = 0;
    v67 = [v42 sendGeolocationMessage:v84 toGroupDestination:v43 withMessageID:v64 withGeoPush:v65 withSecurity:v66 withError:v88];

    if (!v67)
    {
      v80 = v88[0];
      sub_F015C();

      swift_willThrow();
      sub_1EDC(v91);
      return 1;
    }

    v68 = v88[0];
    sub_1EDC(v91);
  }

  else
  {
    v95[0] = v92[0];
    v95[1] = v92[1];
    v96[0] = *v93;
    *(v96 + 9) = *&v93[9];
    v48 = *(*(v6 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v49 = a1[10];
    v50 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v50);
    *(&v83 - 2) = v49;
    v51 = v48;
    v52 = CTLazuliDestination.init(handle:countryCode:)(v95, sub_5FBB0, (&v83 - 4));
    v53 = v85;
    if (v85 >= 2)
    {
      v84 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v69 = *a1;
      v70 = a1[1];

      v71 = [v53 secureGroupVersion];
      v72 = [v53 uuid];
      v73 = sub_F07EC();
      v75 = v74;

      v56 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v69, v70, v71, v73, v75);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v55 = *a1;
      v54 = a1[1];

      v56 = CTLazuliMessageID.init(uuid:)(v55, v54);
    }

    v76 = v56;
    v65 = v86;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v77 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v77 = v87;
    }

    v91[0] = 0;
    v78 = [v51 sendGeolocationMessage:v49 to:v52 withMessageID:v76 withGeoPush:v65 withSecurity:v77 withError:v91];

    if (!v78)
    {
      v81 = v91[0];
      sub_F015C();

      swift_willThrow();
      return 1;
    }

    v79 = v91[0];
  }

  return 1;
}

uint64_t sub_5D3E8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RCSFile(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37310(0, &qword_128048, CTLazuliFileTransferDescriptor_ptr);
  sub_5F918(a2, v12, type metadata accessor for RCSFile);
  v13 = CTLazuliFileTransferDescriptor.init(file:)(v12);
  v14 = a1[12];
  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = sub_5F720(v14);
      [v16 setMetaData:v17];
    }

    else
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      v17 = sub_5F720(v14);
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v13;
      }

      [v19 setMetaData:v17];
    }
  }

  v84 = a1[11];
  v85 = v13;
  if (v84)
  {
    v20 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  else
  {
    v20 = 0;
  }

  v21 = Logger.rcs.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v21, v6);
  v22 = v20;
  v23 = sub_F06AC();
  v24 = sub_F0CCC();
  v86 = v22;

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v83 = a1;
    v26 = v6;
    v27 = v3;
    v28 = v25;
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v86;
    *(v28 + 4) = v86;
    *v29 = v20;
    v31 = v30;
    _os_log_impl(&dword_0, v23, v24, "Sending with encryption: %@", v28, 0xCu);
    sub_372B0(v29, &qword_127AF0, &qword_F28E0);

    v3 = v27;
    v6 = v26;
    a1 = v83;
  }

  (*(v7 + 8))(v9, v6);
  sub_551C8((a1 + 2), v91);
  if (v93)
  {
    sub_55248(v91, v90);
    v32 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v83 = a1[10];
    v33 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
    sub_1F28(v90, v87);
    v34 = v88;
    v35 = v89;
    v36 = sub_5F3F4(v87, v88);
    v37 = __chkstk_darwin(v36);
    v39 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39, v37);
    v41 = v32;
    v42 = sub_A84F0(v39, v33, v34, v35);
    sub_1EDC(v87);
    v43 = v84;
    if (v84 >= 2)
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v56 = *a1;
      v57 = a1[1];

      v58 = [v43 secureGroupVersion];
      v59 = [v43 uuid];
      v60 = sub_F07EC();
      v62 = v61;

      v46 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v56, v57, v58, v60, v62);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v45 = *a1;
      v44 = a1[1];

      v46 = CTLazuliMessageID.init(uuid:)(v45, v44);
    }

    v63 = v46;
    v64 = v85;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v65 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v65 = v86;
    }

    v87[0] = 0;
    v66 = [v41 sendFileTransferMessage:v83 toGroupDestination:v42 withMessageID:v63 withFileInformation:v64 withSecurity:v65 withError:v87];

    if (!v66)
    {
      v79 = v87[0];
      sub_F015C();

      swift_willThrow();
      sub_1EDC(v90);
      return 1;
    }

    v67 = v87[0];
    sub_1EDC(v90);
  }

  else
  {
    v94[0] = v91[0];
    v94[1] = v91[1];
    v95[0] = *v92;
    *(v95 + 9) = *&v92[9];
    v47 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v48 = a1[10];
    v49 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v49);
    *(&v82 - 2) = v48;
    v50 = v47;
    v51 = CTLazuliDestination.init(handle:countryCode:)(v94, sub_5FBB0, (&v82 - 4));
    v52 = v84;
    if (v84 >= 2)
    {
      v83 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v68 = *a1;
      v69 = a1[1];

      v70 = [v52 secureGroupVersion];
      v71 = [v52 uuid];
      v72 = sub_F07EC();
      v74 = v73;

      v55 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v68, v69, v70, v72, v74);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v54 = *a1;
      v53 = a1[1];

      v55 = CTLazuliMessageID.init(uuid:)(v54, v53);
    }

    v75 = v55;
    v64 = v85;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v76 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v76 = v86;
    }

    v90[0] = 0;
    v77 = [v50 sendFileTransferMessage:v48 to:v51 withMessageID:v75 withFileInformation:v64 withSecurity:v76 withError:v90];

    if (!v77)
    {
      v80 = v90[0];
      sub_F015C();

      swift_willThrow();
      return 1;
    }

    v78 = v90[0];
  }

  return 1;
}

uint64_t sub_5DCA8(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v95 = *(v6 - 1);
  v96 = v6;
  __chkstk_darwin(v6);
  v94 = &v93 - v7;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(CTLazuliMessageComposingIndicator) init];
  [v12 setActive:a2 & 1];
  if (a2)
  {
    sub_37310(0, &qword_128050, NSNumber_ptr);
    v13 = sub_F0DCC();
    [v12 setRefreshTime:v13];
  }

  v14 = a1[11];
  v99 = a1;
  v97 = v14;
  if (v14)
  {
    v15 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  else
  {
    v15 = 0;
  }

  v16 = Logger.rcs.unsafeMutableAddressor();
  v17 = *(v9 + 16);
  v98 = v8;
  v17(v11, v16, v8);
  v18 = v15;
  v19 = sub_F06AC();
  v20 = sub_F0CCC();
  v100 = v18;

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v93 = v3;
    v23 = v12;
    v24 = v22;
    *v21 = 138412290;
    v25 = v100;
    *(v21 + 4) = v100;
    *v22 = v15;
    v26 = v25;
    _os_log_impl(&dword_0, v19, v20, "Sending with encryption: %@", v21, 0xCu);
    sub_372B0(v24, &qword_127AF0, &qword_F28E0);
    v12 = v23;
    v3 = v93;
  }

  (*(v9 + 8))(v11, v98);
  v27 = v99;
  sub_551C8((v99 + 2), v108);
  if (v110)
  {
    sub_55248(v108, v107);
    v28 = [objc_opt_self() sharedInstanceForBagType:1];
    v29 = sub_F07BC();
    v30 = [v28 objectForKey:v29];

    if (v30)
    {
      sub_F0E6C();
      swift_unknownObjectRelease();
    }

    else
    {
      v105 = 0u;
      v106 = 0u;
    }

    v102 = v105;
    v103 = v106;
    if (*(&v106 + 1))
    {
      sub_37310(0, &qword_128050, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v54 = v101;
        v55 = [v101 BOOLValue];

        if (v55)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_372B0(&v102, &unk_127FB0, &qword_F2F40);
    }

    if (qword_127A08 != -1)
    {
      swift_once();
    }

    v56 = v96;
    v57 = sub_3C96C(v96, qword_127C10);
    v58 = v94;
    v59 = v95;
    (*(v95 + 16))(v94, v57, v56);
    sub_F044C();
    (*(v59 + 8))(v58, v56);
    if (v102 != 1)
    {
LABEL_31:

      sub_1EDC(v107);
      v53 = 0;
      return v53 & 1;
    }

LABEL_28:
    v60 = [objc_opt_self() sharedFeatureFlags];
    v61 = [v60 isGroupTypingIndicatorsEnabled];

    if (v61)
    {
      v98 = v12;
      v62 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 16);
      v95 = v27[10];
      v96 = v28;
      v63 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
      sub_1F28(v107, &v102);
      v64 = *(&v103 + 1);
      v65 = v104;
      v66 = sub_5F3F4(&v102, *(&v103 + 1));
      v67 = __chkstk_darwin(v66);
      v69 = v27;
      v70 = &v93 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v71 + 16))(v70, v67);
      v94 = v62;
      v72 = sub_A84F0(v70, v63, v64, v65);
      sub_1EDC(&v102);
      v73 = v97;
      if (v97 >= 2)
      {
        v93 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
        v77 = *v69;
        v78 = v69[1];

        v79 = [v73 secureGroupVersion];
        v80 = [v73 uuid];
        v81 = sub_F07EC();
        v83 = v82;

        v76 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v77, v78, v79, v81, v83);
      }

      else
      {
        sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
        v74 = *v69;
        v75 = v69[1];

        v76 = CTLazuliMessageID.init(uuid:)(v74, v75);
      }

      v84 = v76;
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v85 = static NSUserDefaults.forceEncryption.getter();
      v86 = 0;
      v87 = v98;
      if ((v85 & 1) == 0)
      {
        v86 = v100;
      }

      *&v102 = 0;
      v88 = v94;
      v89 = [v94 sendComposingIndicator:v95 toGroupDestination:v72 withMessageID:v84 withIndication:v87 withSecurity:v86 withError:&v102];

      if (!v89)
      {
        v91 = v102;
        sub_F015C();

        swift_willThrow();
        sub_1EDC(v107);
        return v53 & 1;
      }

      v90 = v102;
      sub_1EDC(v107);

      goto LABEL_37;
    }

    goto LABEL_31;
  }

  v111[0] = v108[0];
  v111[1] = v108[1];
  v112[0] = *v109;
  *(v112 + 9) = *&v109[9];
  v31 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 16);
  v32 = v27[10];
  v33 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
  __chkstk_darwin(v33);
  v98 = v32;
  *(&v93 - 2) = v32;
  v34 = v31;
  v35 = CTLazuliDestination.init(handle:countryCode:)(v111, sub_5FBB0, (&v93 - 4));
  v36 = v97;
  if (v97 >= 2)
  {
    v40 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v41 = v27[1];
    v95 = *v27;
    v96 = v40;

    v42 = [v36 secureGroupVersion];
    v43 = v12;
    v44 = [v36 uuid];
    v45 = sub_F07EC();
    v47 = v46;

    v12 = v43;
    v39 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v95, v41, v42, v45, v47);
  }

  else
  {
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v37 = *v27;
    v38 = v27[1];

    v39 = CTLazuliMessageID.init(uuid:)(v37, v38);
  }

  v48 = v39;
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  v49 = 0;
  if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
  {
    v49 = v100;
  }

  v107[0] = 0;
  v50 = [v34 sendComposingIndicator:v98 to:v35 messageID:v48 indication:v12 withSecurity:v49 error:v107];

  if (v50)
  {
    v51 = v107[0];

LABEL_37:
    v53 = 1;
    return v53 & 1;
  }

  v52 = v107[0];
  sub_F015C();

  swift_willThrow();
  return v53 & 1;
}

uint64_t sub_5E700(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), SEL *a5)
{
  sub_551C8((a1 + 2), v43);
  v11 = v45;
  if (v45)
  {
    sub_5BD88(v43);
    v12 = v11 ^ 1;
  }

  else
  {
    v39 = a2;
    v40 = a4;
    v41 = a5;
    v46[0] = v43[0];
    v46[1] = v43[1];
    v47[0] = *v44;
    *(v47 + 9) = *&v44[9];
    v13 = *(*(v5 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v14 = a1[10];
    v15 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v15);
    v38 = v14;
    v35[2] = v14;
    v16 = v13;
    v17 = CTLazuliDestination.init(handle:countryCode:)(v46, a3, v35);
    v18 = a1[11];
    if (v18 >= 2)
    {
      v37 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v22 = *a1;
      v23 = a1[1];
      v36 = v22;

      v24 = [v18 secureGroupVersion];
      v25 = [v18 uuid];
      v26 = sub_F07EC();
      v28 = v27;

      v21 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v36, v23, v24, v26, v28);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v19 = *a1;
      v20 = a1[1];

      v21 = CTLazuliMessageID.init(uuid:)(v19, v20);
    }

    v29 = v21;
    v30 = v40();
    v42 = 0;
    v31 = [v16 *v41];

    if (v31)
    {
      v32 = v42;
      v12 = v11 ^ 1;
    }

    else
    {
      v33 = v42;
      sub_F015C();

      swift_willThrow();
    }
  }

  return v12 & 1;
}

void sub_5E9B0(uint64_t *a1)
{
  v3 = sub_F06CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_551C8((a1 + 2), v67);
  if (v69)
  {
    sub_5BD88(v67);
    return;
  }

  v61 = v6;
  v60 = v4;
  v70[0] = v67[0];
  v70[1] = v67[1];
  *v71 = *v68;
  *&v71[9] = *&v68[9];
  v7 = [objc_allocWithZone(CTLazuliSuggestedActionDevice) init];
  [v7 setType:0];
  v62 = *(v1 + OBJC_IVAR___RCSServiceSession_state);
  v8 = *(v62 + 16);
  v9 = a1[10];
  v10 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
  __chkstk_darwin(v10);
  v64 = v9;
  *(&v56 - 2) = v9;
  v63 = v8;
  sub_38910(v70, v66);
  v11 = CTLazuliDestination.init(handle:countryCode:)(v70, sub_5FBB0, (&v56 - 4));
  v59 = a1[11];
  v12 = v59;
  if (v59 >= 2)
  {
    v58 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v14 = a1[1];
    v57 = *a1;

    v16 = [v12 secureGroupVersion];
    v17 = [v12 uuid];
    v18 = v3;
    v19 = v7;
    v20 = v17;
    v21 = sub_F07EC();
    v23 = v22;

    v7 = v19;
    v3 = v18;
    v13 = v57;
    v15 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v57, v14, v16, v21, v23);
  }

  else
  {
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v13 = *a1;
    v14 = a1[1];

    v15 = CTLazuliMessageID.init(uuid:)(v13, v14);
  }

  v24 = v15;
  v66[0] = 0;
  v25 = v63;
  v26 = [v63 sendDeviceAction:v64 to:v11 withMessageID:v15 withAction:v7 withError:v66];

  if (!v26)
  {
    v36 = v66[0];
    sub_3CAB8(v70);
    v37 = sub_F015C();

    v65 = v37;
    swift_willThrow();

    return;
  }

  v27 = *(v62 + 64);
  if (!v27)
  {
    __break(1u);
    goto LABEL_19;
  }

  v28 = v66[0];
  v29 = v27;
  sub_3CAB8(v70);
  v30 = [v29 respondsToSelector:"messageSendSuccess:withID:"];

  v31 = v61;
  if (!v30)
  {
    v38 = Logger.rcs.unsafeMutableAddressor();
    v39 = v60;
    (*(v60 + 16))(v31, v38, v3);
    v40 = sub_F06AC();
    v41 = sub_F0CEC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v31;
      v44 = swift_slowAlloc();
      v66[0] = v44;
      *v42 = 136315138;
      *(v42 + 4) = sub_3E850(0xD00000000000001BLL, 0x80000000000FEA50, v66);
      _os_log_impl(&dword_0, v40, v41, "OutgoingMessageController no longer responds to selector %s", v42, 0xCu);
      sub_1EDC(v44);

      (*(v39 + 8))(v43, v3);
    }

    else
    {

      (*(v39 + 8))(v31, v3);
    }

    return;
  }

  v32 = *(v62 + 64);
  if (!v32)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v33 = v59;
  if (v59 >= 2)
  {
    v63 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v45 = v32;

    v46 = v14;
    v47 = v13;
    v48 = [v33 secureGroupVersion];
    v49 = [v33 uuid];
    v50 = sub_F07EC();
    v51 = v7;
    v53 = v52;

    v54 = v53;
    v7 = v51;
    v35 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v47, v46, v48, v50, v54);
  }

  else
  {
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v34 = v32;

    v35 = CTLazuliMessageID.init(uuid:)(v13, v14);
  }

  v55 = v35;
  RCSOutgoingMessageController.messageSendSuccess(_:with:)(v64, v35);
}

double sub_5F048(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_5F09C()
{
  v2 = *(type metadata accessor for RCSMessage(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = *(v0 + v6);
  v12 = *(v0 + v6 + 8);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_38B0C;

  return sub_5BDDC(v7, v0 + v3, v8, v9, v10, v11, v12);
}

unint64_t sub_5F1E4()
{
  result = qword_128030;
  if (!qword_128030)
  {
    type metadata accessor for RCSOutgoingMessageController.OperationID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128030);
  }

  return result;
}

uint64_t sub_5F23C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_37C54;

  return sub_97C40(a1, a2, v6);
}

uint64_t sub_5F2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5F38C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_5F3F4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_5F444(uint64_t a1, RCSServiceSession *a2)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v44, v8, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (v9)
  {

    object = a2;
  }

  else
  {
    object = v44.id._object;

    sub_3CAB8(&v44);
  }

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 ctSubscriptionInfo];

  if (v12)
  {
    v20 = sub_F07BC();
    v21 = sub_F07BC();
    object, v22, v23, v24, v25, v26, v27, v28;
    v29 = [v12 __im_subscriptionContextForForSimID:v20 phoneNumber:v21];

    if (v29)
    {
      return v29;
    }
  }

  else
  {
    object, v13, v14, v15, v16, v17, v18, v19;
  }

  v31 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v31, v4);

  v32 = sub_F06AC();
  v33 = sub_F0CEC();
  a2, v34, v35, v36, v37, v38, v39, v40;
  if (os_log_type_enabled(v32, v33))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_3E850(a1, a2, v43);
    _os_log_impl(&dword_0, v32, v33, "Can't find a subscription context for destination caller ID %s", v41, 0xCu);
    sub_1EDC(v42);
  }

  (*(v5 + 8))(v7, v4);
  return &dword_1C + 3;
}

id sub_5F720(uint64_t a1)
{
  RCSMessageMetadata.toPairs()(a1);
  v9 = v1;
  v10 = *v1[1].IMDTelephonyServiceSession_opaque;
  if (v10)
  {
    v50 = [objc_allocWithZone(CTLazuliCustomMetaData) init];
    state = v9[3].state;
    do
    {
      v12 = *(state - 2);
      v13 = *state;
      v14 = objc_allocWithZone(CTLazuliCustomMetaDataWrapper);

      v15 = [v14 init];
      v16 = sub_F07BC();
      v12, v17, v18, v19, v20, v21, v22, v23;
      [v15 setHeader:v16];

      v24 = sub_F07BC();
      v13, v25, v26, v27, v28, v29, v30, v31;
      [v15 setValue:v24];

      v32 = v15;
      sub_F09DC();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_F0A1C();
      }

      sub_F0A3C();

      state += 4;
      --v10;
    }

    while (v10);
    v9, v33, v34, v35, v36, v37, v38, v39;
    sub_37310(0, &qword_128040, CTLazuliCustomMetaDataWrapper_ptr);
    v40 = sub_F09EC();
    _swiftEmptyArrayStorage, v41, v42, v43, v44, v45, v46, v47;
    v48 = v50;
    [v50 setList:v40];
  }

  else
  {
    v1, v2, v3, v4, v5, v6, v7, v8;
    return 0;
  }

  return v48;
}

uint64_t sub_5F918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_5F980()
{
  result = qword_128058;
  if (!qword_128058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128058);
  }

  return result;
}

unint64_t sub_5F9D4()
{
  result = qword_128060;
  if (!qword_128060)
  {
    sub_F035C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128060);
  }

  return result;
}

__n128 sub_5FA20(uint64_t a1, __int128 *a2)
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

uint64_t sub_5FA4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_5FA94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t _s23RCSServiceSessionErrorsOwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s23RCSServiceSessionErrorsOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s23RCSServiceSessionErrorsOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_5FB5C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5FB7C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_5FBB8()
{
  v1 = v0;
  v2 = type metadata accessor for RCSMessageSendItem.SendState(0);
  __chkstk_darwin(v2 - 8);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = 0;
  v32 = 0xE000000000000000;
  sub_F0F9C(25);
  v32, v5, v6, v7, v8, v9, v10, v11;
  strcpy(v33, "originalID: ");
  BYTE5(v33[1]) = 0;
  HIWORD(v33[1]) = -5120;
  v12 = *(v0 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
  v13 = *(v0 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

  v34._countAndFlagsBits = v12;
  v34._object = v13;
  sub_F08CC(v34);
  v13, v14, v15, v16, v17, v18, v19, v20;
  v35._countAndFlagsBits = 0x3A6574617473202CLL;
  v35._object = 0xE900000000000020;
  sub_F08CC(v35);
  v21 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
  swift_beginAccess();
  sub_60478(v1 + v21, v4);
  v36._countAndFlagsBits = sub_6018C();
  object = v36._object;
  sub_F08CC(v36);
  object, v23, v24, v25, v26, v27, v28, v29;
  sub_60528(v4, type metadata accessor for RCSMessageSendItem.SendState);
  return v33[0];
}

uint64_t sub_5FD20()
{
  sub_60528(v0 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage, type metadata accessor for RCSMessage);

  sub_60528(v0 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState, type metadata accessor for RCSMessageSendItem.SendState);

  return swift_deallocClassInstance();
}

uint64_t sub_5FE0C(uint64_t a1)
{
  result = type metadata accessor for RCSMessage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RCSMessageSendItem.SendState(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_5FF34(uint64_t a1)
{
  sub_5FF8C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_5FF8C()
{
  if (!qword_128240)
  {
    v0 = sub_F030C();
    if (!v1)
    {
      atomic_store(v0, &qword_128240);
    }
  }
}

uint64_t sub_5FFF8@<X0>(void *a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
  v3 = *(v2 + 136);
  *a1 = *(v2 + 128);
  a1[1] = v3;
}

Swift::Int sub_60014()
{
  v1 = *v0;
  sub_F12FC();
  v2 = *(v1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

  sub_F089C();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_F132C();
}

void sub_60080(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

  sub_F089C();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_600E8(uint64_t a1)
{
  sub_F12FC();
  v2 = *(*v1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

  sub_F089C();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_F132C();
}

uint64_t sub_60150(void *a1, uint64_t *a2)
{
  v2 = *a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
  if (*(v2 + 128) == *(*a2 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128) && *(v2 + 136) == *(*a2 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136))
  {
    return 1;
  }

  else
  {
    return sub_F122C();
  }
}

unint64_t sub_6018C()
{
  v1 = v0;
  v2 = type metadata accessor for RCSMessageSendItem.SendState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_60478(v1, v4);
  v5 = sub_388C8(&qword_127B28, &qword_F2B20);
  v6 = (*(*(v5 - 8) + 48))(v4, 4, v5);
  if (v6 <= 1)
  {
    if (v6)
    {
      return 0x6C616974696E49;
    }

    else
    {
      v8 = sub_F030C();
      v9 = *(v8 - 8);
      v10 = __chkstk_darwin(v8);
      v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 32))(v12, v4, v8, v10);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_F0F9C(21);
      v30, v13, v14, v15, v16, v17, v18, v19;
      v29 = 0xD000000000000012;
      v30 = 0x80000000000FEAC0;
      sub_604DC();
      v31._countAndFlagsBits = sub_F11EC();
      object = v31._object;
      sub_F08CC(v31);
      object, v21, v22, v23, v24, v25, v26, v27;
      v32._countAndFlagsBits = 41;
      v32._object = 0xE100000000000000;
      sub_F08CC(v32);
      v28 = v29;
      (*(v9 + 8))(v12, v8);
      return v28;
    }
  }

  else if (v6 == 2)
  {
    return 0x6572206C616E6946;
  }

  else if (v6 == 3)
  {
    return 0x73736563637553;
  }

  else
  {
    return 0x6572756C696146;
  }
}

unint64_t sub_60414()
{
  result = qword_128268;
  if (!qword_128268)
  {
    type metadata accessor for RCSMessageSendItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128268);
  }

  return result;
}

uint64_t sub_60478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessageSendItem.SendState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_604DC()
{
  result = qword_128270;
  if (!qword_128270)
  {
    sub_F030C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128270);
  }

  return result;
}

uint64_t sub_60528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_605A0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_F07EC();

  return v6;
}

uint64_t sub_60628()
{
  v1 = [*v0 participantHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F09FC();

  return v3;
}

void sub_60684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = a4;
  v10 = sub_F06CC();
  v100 = *(v10 - 8);
  v101 = v10;
  __chkstk_darwin(v10);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  sub_373E8(a1, v13);
  v15 = (*(v14 + 16))(v13, v14);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v97 = v5;
    v98 = v12;
    v19 = *(v5 + OBJC_IVAR___RCSServiceSession_state);
    v20 = *(v19 + 72);
    if (*v20[1].IMDTelephonyServiceSession_opaque && (, sub_51FEC(v17, v18), v22 = v21, v20, v21, v23, v24, v25, v26, v27, v28, (v22 & 1) != 0))
    {

      v18, v29, v30, v31, v32, v33, v34, v35;
    }

    else
    {
      sub_54C4C(a1, &v104);
      *&v113 = _swiftEmptyArrayStorage;
      *(&v113 + 1) = _swiftEmptyArrayStorage;
      *&v111 = a2;
      *(&v111 + 1) = a3;
      *&v112 = v99;
      *(&v112 + 1) = a5;
      v36 = *(v19 + 72);
      v103[6] = v110;
      v103[7] = v111;
      v103[8] = v112;
      v103[9] = v113;
      v103[2] = v106;
      v103[3] = v107;
      v103[4] = v108;
      v103[5] = v109;
      v103[0] = v104;
      v103[1] = v105;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v36;
      sub_52478(v103, v17, v18, isUniquelyReferenced_nonNull_native);
      v18, v38, v39, v40, v41, v42, v43, v44;
      v45 = *(v19 + 72);
      *(v19 + 72) = v102;
      v45, v46, v47, v48, v49, v50, v51, v52;
      sub_61894(a1);
      v53 = Logger.rcs.unsafeMutableAddressor();
      v55 = v100;
      v54 = v101;
      v56 = v98;
      (*(v100 + 16))(v98, v53, v101);
      sub_54C4C(a1, &v104);
      v57 = sub_F06AC();
      v58 = sub_F0CCC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v103[0] = v60;
        *v59 = 136315138;
        v61 = *(&v105 + 1);
        v62 = v106;
        sub_373E8(&v104, *(&v105 + 1));
        v63 = (*(v62 + 16))(v61, v62);
        if (v64)
        {
          v65 = v63;
        }

        else
        {
          v65 = 0x3E6C696E3CLL;
        }

        if (v64)
        {
          v66 = v64;
        }

        else
        {
          v66 = 0xE500000000000000;
        }

        sub_53D58(&v104);
        v67 = sub_3E850(v65, v66, v103);
        v66, v68, v69, v70, v71, v72, v73, v74;
        *(v59 + 4) = v67;
        _os_log_impl(&dword_0, v57, v58, "Queued incoming group change for group: %s", v59, 0xCu);
        sub_1EDC(v60);

        (*(v55 + 8))(v98, v54);
      }

      else
      {

        (*(v55 + 8))(v56, v54);
        sub_53D58(&v104);
      }
    }
  }

  else
  {
    v75 = [objc_opt_self() sharedInstance];
    if (v75)
    {
      v76 = v75;
      sub_54C4C(a1, &v104);
      v77 = sub_F085C();
      v79 = v78;
      v80 = sub_F0FBC();
      v82 = v81;
      LOBYTE(v104) = 1;
      *(&v104 + 1) = v80;
      *&v105 = v81;
      *(&v105 + 1) = v77;
      v106 = v79;
      LOBYTE(v107) = 0;
      sub_94528(&v104);
      v79, v83, v84, v85, v86, v87, v88, v89;
      v82, v90, v91, v92, v93, v94, v95, v96;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_60AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v89 = *(v8 - 8);
  v90 = v8;
  __chkstk_darwin(v8);
  v91 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = &v88 - v12;
  v14 = *&v3[OBJC_IVAR___RCSServiceSession_state];
  *&v120[0] = *(v14 + 72);

  sub_61BA8(a1, a2, &v110);
  v15 = *(v14 + 72);
  *(v14 + 72) = *&v120[0];
  v15, v16, v17, v18, v19, v20, v21, v22;
  if (!*(&v111 + 1))
  {
    sub_372B0(&v110, &qword_128280, &qword_F3400);
    return;
  }

  v120[6] = v116;
  v120[7] = v117;
  v120[8] = v118;
  v121 = v119;
  v120[2] = v112;
  v120[3] = v113;
  v120[4] = v114;
  v120[5] = v115;
  v120[0] = v110;
  v120[1] = v111;
  v99 = *(&v117 + 1);
  v93 = v118;
  v94 = v117;
  v92 = *(&v118 + 1);
  sub_37380(a3, &v103, &qword_127EE8, &unk_F33F0);
  if (*(&v104 + 1))
  {
    v114 = v107;
    v115 = v108;
    v116 = v109;
    v110 = v103;
    v111 = v104;
    v112 = v105;
    v113 = v106;
  }

  else
  {
    sub_54C4C(v120, &v110);
    if (*(&v104 + 1))
    {
      sub_372B0(&v103, &qword_127EE8, &unk_F33F0);
    }
  }

  v23 = v99;
  if (v99)
  {
    sub_388C8(&qword_128288, &qword_F3460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F2C60;
    *(inited + 32) = v94;
    *(inited + 40) = v23;

    RCSGroup.removing(participants:)(inited, &v103);
    swift_setDeallocating();
    sub_61CB0(inited + 32);
    sub_53D58(&v110);
    v114 = v107;
    v115 = v108;
    v116 = v109;
    v110 = v103;
    v111 = v104;
    v112 = v105;
    v113 = v106;
  }

  v25 = *(v121 + 16);
  if (v25)
  {
    v26 = v121 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v27 = *(v11 + 72);
    do
    {
      sub_37380(v26, v13, &qword_127EE0, qword_F2CB0);
      RCSServiceSession.process(participantChange:)(v13);
      sub_77CA4(v13, 1);
      sub_372B0(v13, &qword_127EE0, qword_F2CB0);
      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v28 = *(&v111 + 1);
  v29 = v112;
  v30 = sub_373E8(&v110, *(&v111 + 1));
  v31 = sub_6F3C8(v30, v4, v28, v29);
  if (v31)
  {
    v97 = v4;
    v98 = v31;
    v96 = *(&v121 + 1);
    v95 = *(*(&v121 + 1) + 16);
    if (v95)
    {
      v32 = 0;
      v33 = (v96 + 56);
      while (v32 < *(v96 + 16))
      {
        v34 = *(v33 - 1);
        v35 = *v33;
        v100 = *(v33 - 2);
        v102 = v34;
        if (v100)
        {

          v101 = sub_F07BC();
        }

        else
        {

          v101 = 0;
        }

        v36 = sub_F035C();
        v37 = *(v36 - 8);
        __chkstk_darwin(v36);
        v39 = &v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_F034C();
        sub_F032C();
        v41 = v40;
        (*(v37 + 8))(v39, v36);
        v42 = sub_F07BC();
        v41, v43, v44, v45, v46, v47, v48, v49;
        v50 = sub_F07BC();
        if (v99)
        {
          v51 = sub_F07BC();
        }

        else
        {
          v51 = 0;
        }

        v52 = v98;
        v53 = [v98 chatIdentifier];
        if (!v53)
        {
          goto LABEL_32;
        }

        v61 = v53;
        ++v32;
        v35, v54, v55, v56, v57, v58, v59, v60;
        v100, v62, v63, v64, v65, v66, v67, v68;
        v69 = [v52 style];
        v70 = v97;
        v71 = [v97 account];
        LOBYTE(v87) = 1;
        v72 = v70;
        v73 = v101;
        [v72 didReceiveDisplayNameChange:v101 guid:v42 fromID:v50 toIdentifier:v51 forChat:v61 style:v69 account:v71 shouldRelay:v87];

        v33 += 4;
        if (v95 == v32)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

LABEL_24:

    v4 = v97;
  }

  memset(v122, 0, 57);

  v74 = *(&v111 + 1);
  v75 = v112;
  v76 = sub_373E8(&v110, *(&v111 + 1));
  v77 = sub_6F3C8(v76, v4, v74, v75);
  if (v77)
  {
    v78 = v77;
    v79 = [v77 chatIdentifier];
    if (v79)
    {
      v80 = v79;
      [v4 didJoinChat:v79 style:{objc_msgSend(v78, "style")}];

      sub_53D58(&v110);
      sub_61C80(v120);
      return;
    }

    goto LABEL_33;
  }

  v81 = Logger.rcs.unsafeMutableAddressor();
  v83 = v89;
  v82 = v90;
  (*(v89 + 16))(v91, v81, v90);
  v84 = sub_F06AC();
  v85 = sub_F0CCC();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_0, v84, v85, "Dropping incoming group for group that doesn't already exist in the database", v86, 2u);
  }

  (*(v83 + 8))(v91, v82);
  sub_53D58(&v110);
  sub_61C80(v120);
}

Swift::Int sub_61324()
{
  sub_F12FC();
  sub_F130C(0);
  return sub_F132C();
}

Swift::Int sub_61390(uint64_t a1)
{
  sub_F12FC();
  sub_F130C(0);
  return sub_F132C();
}

void sub_613D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v2 + OBJC_IVAR___RCSServiceSession_state) + 72);
  if (*v9[1].IMDTelephonyServiceSession_opaque)
  {

    sub_51FEC(a1, a2);
    v11 = v10;
    v9, v10, v12, v13, v14, v15, v16, v17;
    if (v11)
    {
      v18 = Logger.rcs.unsafeMutableAddressor();
      (*(v6 + 16))(v8, v18, v5);
      v19 = sub_F06AC();
      v20 = sub_F0CCC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = 5;
        _os_log_impl(&dword_0, v19, v20, "Finishing group change after %ld timeout", v21, 0xCu);
      }

      (*(v6 + 8))(v8, v5);
      memset(v23, 0, sizeof(v23));
      sub_60AF0(a1, a2, v23);

      sub_372B0(v23, &qword_127EE8, &unk_F33F0);
    }
  }
}

uint64_t sub_6163C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_61658(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_61670(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_6169C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_616E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSMessageMetadata.Entry.HeaderKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RCSMessageMetadata.Entry.HeaderKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_61840()
{
  result = qword_128278;
  if (!qword_128278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128278);
  }

  return result;
}

void sub_61894(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_373E8(a1, v4);
  (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = sub_F07BC();
    [v8 cancelPreviousPerformRequestsWithTarget:v2 selector:"cleanupPendingGroupChangesFor:" object:v9];

    v39 = sub_F07BC();
    v7, v10, v11, v12, v13, v14, v15, v16;
    [v2 performSelector:"cleanupPendingGroupChangesFor:" withObject:v39 afterDelay:5.0];
  }

  else
  {
    v17 = [objc_opt_self() sharedInstance];
    if (v17)
    {
      v18 = v17;
      sub_54C4C(a1, v40);
      v19 = sub_F085C();
      v21 = v20;
      v22 = sub_F0FBC();
      v24 = v23;
      v40[0] = 1;
      v41 = v22;
      v42 = v23;
      v43 = v19;
      v44 = v21;
      v45 = 0;
      v46 = 0;
      sub_94528(v40);
      v21, v25, v26, v27, v28, v29, v30, v31;
      v24, v32, v33, v34, v35, v36, v37, v38;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_61A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_37380(a2, &v12 - v6, &qword_127EE0, qword_F2CB0);
  v8 = *(a1 + 144);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_6E518(0, *v8[1].IMDTelephonyServiceSession_opaque + 1, 1, v8);
  }

  v10 = *v8[1].IMDTelephonyServiceSession_opaque;
  v9 = *v8[1].state;
  if (v10 >= v9 >> 1)
  {
    v8 = sub_6E518((v9 > 1), v10 + 1, 1, v8);
  }

  *v8[1].IMDTelephonyServiceSession_opaque = v10 + 1;
  result = sub_62E88(v7, &v8->IMDTelephonyServiceSession_opaque[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10]);
  *(a1 + 144) = v8;
  return result;
}

double sub_61BA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_51FEC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v25 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_76B90();
      v17 = v25;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    v18 = (*(v17 + 56) + 160 * v8);
    v19 = v18[7];
    a3[6] = v18[6];
    a3[7] = v19;
    v20 = v18[9];
    a3[8] = v18[8];
    a3[9] = v20;
    v21 = v18[3];
    a3[2] = v18[2];
    a3[3] = v21;
    v22 = v18[5];
    a3[4] = v18[4];
    a3[5] = v22;
    v23 = v18[1];
    *a3 = *v18;
    a3[1] = v23;
    sub_763B8(v8, v17);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    a3[8] = 0u;
    a3[9] = 0u;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_61D04(void *a1, uint64_t a2, uint64_t a3, RCSServiceSession *a4, uint64_t a5, RCSServiceSession *a6)
{
  v10 = a1[3];
  v11 = a1[4];
  sub_373E8(a1, v10);
  v12 = (*(v11 + 16))(v10, v11);
  if (!v13)
  {
    return;
  }

  v20 = v13;
  v82 = a5;
  v21 = *(a2 + OBJC_IVAR___RCSServiceSession_state);
  v22 = *(v21 + 72);
  if (!*v22[1].IMDTelephonyServiceSession_opaque || (v23 = v12, , sub_51FEC(v23, v20), v25 = v24, v22, v24, v26, v27, v28, v29, v30, v31, (v25 & 1) == 0))
  {
    v20, v13, v14, v15, v16, v17, v18, v19;
    sub_62E34();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v81 = a4;
  v32 = *(v21 + 72);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = v32;
  v41 = sub_51FEC(v23, v20);
  v42 = v32[2];
  v43 = (v34 & 1) == 0;
  v44 = v42 + v43;
  if (__OFADD__(v42, v43))
  {
    __break(1u);
    goto LABEL_22;
  }

  v45 = v34;
  if (v32[3] >= v44)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_76B90();
    }

    v23 = v41;
  }

  else
  {
    sub_75B40(v44, isUniquelyReferenced_nonNull_native);
    v46 = sub_51FEC(v23, v20);
    if ((v45 & 1) != (v34 & 1))
    {
LABEL_24:
      a6, v34, v35, v36, v37, v38, v39, v40;
      v81, v74, v75, v76, v77, v78, v79, v80;
      sub_F126C();
      __break(1u);
      return;
    }

    v23 = v46;
  }

  v41 = v81;
  if ((v45 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v20, v34, v35, v36, v37, v38, v39, v40;
  v32 = v106;
  v47 = (v106[7] + 160 * v23);
  v48 = v47[1];
  v104[0] = *v47;
  v104[1] = v48;
  v49 = v47[5];
  v51 = v47[2];
  v50 = v47[3];
  v104[4] = v47[4];
  v104[5] = v49;
  v104[2] = v51;
  v104[3] = v50;
  v52 = v47[9];
  v54 = v47[6];
  v53 = v47[7];
  v104[8] = v47[8];
  v105 = v52;
  v104[6] = v54;
  v104[7] = v53;
  v10 = *(&v52 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_22:
    v10 = sub_6E708(0, *v10[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v10, v37, v38, v39, v40);
  }

  v56 = *v10[1].IMDTelephonyServiceSession_opaque;
  v55 = *v10[1].state;
  if (v56 >= v55 >> 1)
  {
    v10 = sub_6E708((v55 > 1), v56 + 1, &dword_0 + 1, v10, v37, v38, v39, v40);
  }

  *v10[1].IMDTelephonyServiceSession_opaque = v56 + 1;
  v57 = &v10[2 * v56];
  *v57[2].IMDTelephonyServiceSession_opaque = a3;
  *v57[2].state = v41;
  *v57[3].IMDTelephonyServiceSession_opaque = v82;
  *v57[3].state = a6;
  *(&v105 + 1) = v10;
  sub_37380(v104, &v84, &qword_128280, &qword_F3400);
  if (*(&v85 + 1))
  {
    v100 = v90;
    v101 = v91;
    v102 = v92;
    v103 = v93;
    v58 = v86;
    v96 = v86;
    v97 = v87;
    v98 = v88;
    v99 = v89;
    v94 = v84;
    v95 = v85;
    v59 = (v32[7] + 160 * v23);
    v60 = v91;
    v59[6] = v90;
    v59[7] = v60;
    v61 = v103;
    v59[8] = v102;
    v59[9] = v61;
    v62 = v97;
    v63 = v98;
    v64 = v99;
    v59[2] = v58;
    v59[3] = v62;
    v59[4] = v63;
    v59[5] = v64;
    v65 = v95;
    *v59 = v94;
    v59[1] = v65;
  }

  else
  {
    sub_372B0(&v84, &qword_128280, &qword_F3400);
    sub_61CB0(v32[6] + 16 * v23);
    sub_763B8(v23, v32);
  }

  sub_372B0(v104, &qword_128280, &qword_F3400);
  v66 = *(v21 + 72);
  *(v21 + 72) = v32;
  v66, v67, v68, v69, v70, v71, v72, v73;
}

void sub_62078(uint64_t a1, RCSServiceSession *a2, uint64_t a3, RCSServiceSession *a4, void *a5)
{
  v83 = a5;
  v82 = a1;
  v85 = sub_F06CC();
  v9 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v79 - v12;
  v14 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v79 - v16;
  if (qword_127AB8 != -1)
  {
    swift_once();
  }

  v18 = sub_3C96C(v14, qword_127E20);
  (*(v15 + 16))(v17, v18, v14);
  sub_F044C();
  (*(v15 + 8))(v17, v14);
  if (LOBYTE(v86[0]) == 1)
  {
    v19 = Logger.rcs.unsafeMutableAddressor();
    v20 = v85;
    (*(v9 + 16))(v13, v19, v85);
    v21 = sub_F06AC();
    v22 = sub_F0CCC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Dropping pending name change due to override", v23, 2u);
    }

    (*(v9 + 8))(v13, v20);
  }

  else
  {

    v24 = v83;
    sub_61D04(v83, v84, v82, a2, a3, a4);
    a2, v25, v26, v27, v28, v29, v30, v31;
    a4, v32, v33, v34, v35, v36, v37, v38;
    if (!v5)
    {
      v39 = v9;
      v40 = Logger.rcs.unsafeMutableAddressor();
      v41 = *(v9 + 16);
      v42 = v81;
      v43 = v85;
      v41(v81, v40, v85);
      sub_54C4C(v24, v86);

      v44 = sub_F06AC();
      v45 = sub_F0CCC();
      a2, v46, v47, v48, v49, v50, v51, v52;
      if (os_log_type_enabled(v44, v45))
      {
        v53 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v89 = v80;
        *v53 = 136315394;
        if (a2)
        {
          v54 = v82;
        }

        else
        {
          v54 = 0x3E6C696E3CLL;
        }

        if (a2)
        {
          v55 = a2;
        }

        else
        {
          v55 = 0xE500000000000000;
        }

        v56 = sub_3E850(v54, v55, &v89);
        v55, v57, v58, v59, v60, v61, v62, v63;
        *(v53 + 4) = v56;
        *(v53 + 12) = 2080;
        v64 = v39;
        v65 = v87;
        v66 = v88;
        sub_373E8(v86, v87);
        v67 = (*(v66 + 16))(v65, v66);
        if (v68)
        {
          v69 = v67;
        }

        else
        {
          v69 = 0x3E6C696E3CLL;
        }

        if (v68)
        {
          v70 = v68;
        }

        else
        {
          v70 = 0xE500000000000000;
        }

        sub_53D58(v86);
        v71 = sub_3E850(v69, v70, &v89);
        v70, v72, v73, v74, v75, v76, v77, v78;
        *(v53 + 14) = v71;
        _os_log_impl(&dword_0, v44, v45, "Added pending name change %s to group: %s", v53, 0x16u);
        swift_arrayDestroy();

        (*(v64 + 8))(v81, v43);
      }

      else
      {

        (*(v39 + 8))(v42, v43);
        sub_53D58(v86);
      }

      sub_61894(v83);
    }
  }
}

void sub_62598(void *a1, void (*a2)(_OWORD *))
{
  v4 = a1[3];
  v5 = a1[4];
  sub_373E8(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  if (!v7)
  {
    return;
  }

  v14 = v7;
  v15 = *(v2 + OBJC_IVAR___RCSServiceSession_state);
  v16 = *(v15 + 72);
  if (!*v16[1].IMDTelephonyServiceSession_opaque || (v17 = v6, , sub_51FEC(v17, v14), v19 = v18, v16, v18, v20, v21, v22, v23, v24, v25, (v19 & 1) == 0))
  {
    v14, v7, v8, v9, v10, v11, v12, v13;
    sub_62E34();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v65 = a2;
  v26 = *(v15 + 72);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87 = v26;
  v35 = sub_51FEC(v17, v14);
  v36 = *(v26 + 16);
  v37 = (v28 & 1) == 0;
  v38 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(a2) = v28;
    if (*(v26 + 24) < v38)
    {
      sub_75B40(v38, isUniquelyReferenced_nonNull_native);
      v39 = sub_51FEC(v17, v14);
      if ((a2 & 1) != (v28 & 1))
      {
LABEL_20:
        sub_F126C();
        __break(1u);
        return;
      }

      v35 = v39;
      if ((a2 & 1) == 0)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }
  }

  sub_76B90();
  if ((a2 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v14, v28, v29, v30, v31, v32, v33, v34;
  v40 = v87;
  v41 = (*(v87 + 56) + 160 * v35);
  v42 = v41[1];
  v86[0] = *v41;
  v86[1] = v42;
  v43 = v41[5];
  v45 = v41[2];
  v44 = v41[3];
  v86[4] = v41[4];
  v86[5] = v43;
  v86[2] = v45;
  v86[3] = v44;
  v46 = v41[9];
  v48 = v41[6];
  v47 = v41[7];
  v86[8] = v41[8];
  v86[9] = v46;
  v86[6] = v48;
  v86[7] = v47;
  v65(v86);
  sub_37380(v86, &v66, &qword_128280, &qword_F3400);
  if (*(&v67 + 1))
  {
    v82 = v72;
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v49 = v68;
    v78 = v68;
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v76 = v66;
    v77 = v67;
    v50 = (*(v40 + 56) + 160 * v35);
    v51 = v73;
    v50[6] = v72;
    v50[7] = v51;
    v52 = v85;
    v50[8] = v84;
    v50[9] = v52;
    v53 = v79;
    v54 = v80;
    v55 = v81;
    v50[2] = v49;
    v50[3] = v53;
    v50[4] = v54;
    v50[5] = v55;
    v56 = v77;
    *v50 = v76;
    v50[1] = v56;
  }

  else
  {
    sub_372B0(&v66, &qword_128280, &qword_F3400);
    sub_61CB0(*(v40 + 48) + 16 * v35);
    sub_763B8(v35, v40);
  }

  sub_372B0(v86, &qword_128280, &qword_F3400);
  v57 = *(v15 + 72);
  *(v15 + 72) = v40;
  v57, v58, v59, v60, v61, v62, v63, v64;
}

void sub_62878(uint64_t a1, void *a2)
{
  v57 = a2;
  v3 = sub_388C8(&qword_127EE0, qword_F2CB0);
  __chkstk_darwin(v3);
  v5 = &v54[-v4];
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v56 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v54[-v10];
  v12 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v54[-v14];
  if (qword_127AB8 != -1)
  {
    swift_once();
  }

  v16 = sub_3C96C(v12, qword_127E20);
  (*(v13 + 16))(v15, v16, v12);
  sub_F044C();
  v17 = (*(v13 + 8))(v15, v12);
  if (LOBYTE(v59[0]) == 1)
  {
    v18 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v11, v18, v6);
    v19 = sub_F06AC();
    v20 = sub_F0CCC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "Dropping pending participant change due to override", v21, 2u);
    }

    (*(v7 + 8))(v11, v6);
  }

  else
  {
    __chkstk_darwin(v17);
    *&v54[-16] = a1;
    v22 = v57;
    v23 = v58;
    sub_62598(v57, sub_62E2C);
    if (!v23)
    {
      v58 = 0;
      v24 = Logger.rcs.unsafeMutableAddressor();
      v25 = v56;
      (*(v7 + 16))(v56, v24, v6);
      sub_37380(a1, v5, &qword_127EE0, qword_F2CB0);
      sub_54C4C(v22, v59);
      v26 = sub_F06AC();
      v27 = sub_F0CCC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v55 = v27;
        v29 = v28;
        v62 = swift_slowAlloc();
        *v29 = 136315394;
        if (v5[*(v3 + 40)])
        {
          v30 = 0x65766F6D6572;
        }

        else
        {
          v30 = 6579297;
        }

        if (v5[*(v3 + 40)])
        {
          v31 = 0xE600000000000000;
        }

        else
        {
          v31 = 0xE300000000000000;
        }

        sub_372B0(v5, &qword_127EE0, qword_F2CB0);
        v32 = sub_3E850(v30, v31, &v62);
        v31, v33, v34, v35, v36, v37, v38, v39;
        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        v40 = v60;
        v41 = v61;
        sub_373E8(v59, v60);
        v42 = (*(v41 + 16))(v40, v41);
        if (v43)
        {
          v44 = v42;
        }

        else
        {
          v44 = 0x3E6C696E3CLL;
        }

        if (v43)
        {
          v45 = v43;
        }

        else
        {
          v45 = 0xE500000000000000;
        }

        sub_53D58(v59);
        v46 = sub_3E850(v44, v45, &v62);
        v45, v47, v48, v49, v50, v51, v52, v53;
        *(v29 + 14) = v46;
        _os_log_impl(&dword_0, v26, v55, "Added pending participant change: %s to group: %s", v29, 0x16u);
        swift_arrayDestroy();

        (*(v7 + 8))(v56, v6);
      }

      else
      {

        sub_372B0(v5, &qword_127EE0, qword_F2CB0);
        (*(v7 + 8))(v25, v6);
        sub_53D58(v59);
      }

      sub_61894(v57);
    }
  }
}

unint64_t sub_62E34()
{
  result = qword_128290;
  if (!qword_128290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128290);
  }

  return result;
}

uint64_t sub_62E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127EE0, qword_F2CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_62EF8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_62F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_62F4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_62F9C(void (**a1)(char **, uint64_t, uint64_t), char **a2, unint64_t a3)
{
  v291 = a1;
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v278 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v278 - v10);
  __chkstk_darwin(v12);
  v14 = (&v278 - v13);
  __chkstk_darwin(v15);
  v17 = (&v278 - v16);
  __chkstk_darwin(v18);
  v20 = (&v278 - v19);
  v21 = sub_64270(a2);
  v50 = a3;
  v51 = v293;
  v52 = v20;
  v288 = v14;
  v290 = v17;
  v292 = v50;
  v53 = v21;
  if (!(v21 >> 62))
  {
    v54 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    v55 = v6;
    if (v54)
    {
      goto LABEL_9;
    }

LABEL_77:
    v53, v22, v23, v24, v25, v26, v27, v28;
    v29 = Logger.chatbot.unsafeMutableAddressor();
    (*(v55 + 16))(v11, v29, v5);
    v30 = a2;
    v31 = sub_F06AC();
    v32 = sub_F0CEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v295[0] = v34;
      *v33 = 136315138;
      v35 = [v30 uri];
      v36 = v5;
      v37 = sub_F07EC();
      v39 = v38;

      v40 = sub_3E850(v37, v39, v295);
      v39, v41, v42, v43, v44, v45, v46, v47;
      *(v33 + 4) = v40;
      _os_log_impl(&dword_0, v31, v32, "Persistent Menu - Trying to fetch but cannot find any chat for %s ", v33, 0xCu);
      sub_1EDC(v34);

      (*(v55 + 8))(v11, v36);
      return;
    }

    v48 = *(v55 + 8);
    v49 = v11;
LABEL_5:
    v48(v49, v5);
    return;
  }

LABEL_76:
  v54 = sub_F10DC();
  v55 = v6;
  if (!v54)
  {
    goto LABEL_77;
  }

LABEL_9:
  v6 = v52;
  v56 = v54;
  v284 = v8;
  v57 = *&v51[OBJC_IVAR___RCSServiceSession_state];
  v58 = *(v57 + 16);
  v295[0] = 0;
  *&v286 = a2;
  v59 = [v58 readCachedChatBotRenderInformation:v291 forChatBot:a2 withError:v295];
  v8 = v295[0];
  if (!v59)
  {
    v141 = v295[0];
    v53, v142, v143, v144, v145, v146, v147, v148;
    sub_F015C();

    swift_willThrow();
LABEL_63:
    v217 = Logger.chatbot.unsafeMutableAddressor();
    v218 = v284;
    (*(v55 + 16))(v284, v217, v5);
    v219 = v286;
    swift_errorRetain();
    v220 = sub_F06AC();
    v221 = sub_F0CEC();

    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v288 = v55;
      v287 = v5;
      v224 = v223;
      v225 = swift_slowAlloc();
      v295[0] = v225;
      *v222 = 136315394;
      v226 = [v219 extractedUri];
      v227 = sub_F07EC();
      v229 = v228;

      v230 = sub_3E850(v227, v229, v295);
      v229, v231, v232, v233, v234, v235, v236, v237;
      *(v222 + 4) = v230;
      *(v222 + 12) = 2112;
      swift_errorRetain();
      v238 = _swift_stdlib_bridgeErrorToNSError();
      *(v222 + 14) = v238;
      *v224 = v238;
      _os_log_impl(&dword_0, v220, v221, "Persistent Menu - Failed to fetch chatbot info for %s with error %@", v222, 0x16u);
      sub_389D8(v224);

      sub_1EDC(v225);

      v288[1](v218, v287);
      return;
    }

    v48 = *(v55 + 8);
    v49 = v218;
    goto LABEL_5;
  }

  v60 = v59;
  v289 = v53;
  v61 = v59;
  v62 = v8;
  v63 = [v61 renderInformation];
  v287 = v5;
  v293 = v56;
  v283 = v61;
  if (v63)
  {
    v64 = v63;
    v51 = v56;
    type metadata accessor for RCSPersistentMenu();
    swift_initStackObject();
    v53 = RCSPersistentMenu.init(menu:)(v64);
    v65 = *v53[1].IMDTelephonyServiceSession_opaque;
    v8 = v65;

    if (v65)
    {

      a2 = 0;
      v52 = v289;
      v292 = v289 & 0xC000000000000001;
      v284 = v289 & 0xFFFFFFFFFFFFFF8;
      v290 = (v55 + 8);
      v291 = (v55 + 16);
      *&v66 = 136315138;
      v286 = v66;
      v11 = v288;
      v285 = v60;
      while (1)
      {
        if (v292)
        {
          v67 = sub_F0FCC();
        }

        else
        {
          if (a2 >= *(v284 + 16))
          {
            goto LABEL_75;
          }

          v67 = *&v52[2].IMDTelephonyServiceSession_opaque[8 * a2];
        }

        v8 = v67;
        v68 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_74;
        }

        sub_64724(v67, v60);
        v69 = Logger.chatbot.unsafeMutableAddressor();
        (*v291)(v11, v69, v5);
        v70 = v8;
        v8 = v5;
        v71 = v70;
        v53 = sub_F06AC();
        v6 = sub_F0CCC();
        if (os_log_type_enabled(v53, v6))
        {
          v72 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v295[0] = v8;
          *v72 = v286;
          v73 = [v71 guid];

          if (!v73)
          {
            __break(1u);
            return;
          }

          v74 = sub_F07EC();
          v76 = v75;

          v77 = sub_3E850(v74, v76, v295);
          v76, v78, v79, v80, v81, v82, v83, v84;
          *(v72 + 4) = v77;
          _os_log_impl(&dword_0, v53, v6, "Persistent Menu - Populate cached chatbot info for %s", v72, 0xCu);
          sub_1EDC(v8);

          v11 = v288;
          v5 = v287;
          (*v290)(v288, v287);
          v52 = v289;
          v51 = v293;
          v60 = v285;
        }

        else
        {

          (*v290)(v11, v8);
          v5 = v8;
        }

        a2 = (a2 + 1);
        if (v68 == v51)
        {
          v178 = v283;

          v52, v179, v180, v181, v182, v183, v184, v185;
          return;
        }
      }
    }
  }

  v282 = v57;
  v281 = v6;
  v288 = v55;

  v85 = 0;
  v294 = _swiftEmptyArrayStorage;
  v52 = v289;
  v6 = v289 & 0xC000000000000001;
  v5 = v289 & 0xFFFFFFFFFFFFFF8;
  v285 = IMPersistentMenuAttributeName;
  v11 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  a2 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  do
  {
    if (v6)
    {
      v93 = sub_F0FCC();
    }

    else
    {
      if (v85 >= *(v5 + 16))
      {
        goto LABEL_73;
      }

      v93 = *&v52[2].IMDTelephonyServiceSession_opaque[8 * v85];
    }

    v51 = v93;
    v94 = (v85 + 1);
    if (__OFADD__(v85, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v95 = [objc_opt_self() sharedInstance];
    if (!v95)
    {
      goto LABEL_84;
    }

    v8 = v95;
    v53 = [v95 isRBMEnabled];

    if ((v53 & 1) == 0)
    {
LABEL_24:

      goto LABEL_25;
    }

    v96 = [v51 properties];
    if (!v96)
    {
      goto LABEL_44;
    }

    v97 = v96;
    v98 = sub_F076C();

    v99 = sub_A93BC(v98);
    v98, v100, v101, v102, v103, v104, v105, v106;
    if (!v99)
    {
      goto LABEL_44;
    }

    v53 = objc_allocWithZone(IMPersistentMenu);
    v107 = sub_F075C();
    v99, v108, v109, v110, v111, v112, v113, v114;
    v8 = [(RCSServiceSession *)v53 initWithDictionary:v107];

    if (v8)
    {

      v52 = v289;
      goto LABEL_25;
    }

    v115 = [v51 properties];
    v52 = v289;
    if (!v115)
    {
      goto LABEL_42;
    }

    v116 = v115;
    v117 = sub_F076C();

    *&v296 = sub_F07EC();
    *(&v296 + 1) = v118;
    sub_F0F3C();
    if (!*v117[1].IMDTelephonyServiceSession_opaque || (v126 = sub_51FA8(v295), (v119 & 1) == 0))
    {
      v117, v119, v120, v121, v122, v123, v124, v125;
      sub_54F34(v295);
LABEL_42:
      v53 = 0;
      v296 = 0u;
      v297 = 0u;
      goto LABEL_43;
    }

    sub_3FE38(*v117[3].state + 32 * v126, &v296);
    sub_54F34(v295);
    v117, v127, v128, v129, v130, v131, v132, v133;
    v134 = *(&v297 + 1);
    if (*(&v297 + 1))
    {
      v135 = sub_373E8(&v296, *(&v297 + 1));
      v280 = &v278;
      v279 = *(v134 - 8);
      v136 = __chkstk_darwin(v135);
      v138 = &v278 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v139 + 16))(v138, v136);
      v53 = sub_F121C();
      v140 = v138;
      v52 = v289;
      (*(v279 + 8))(v140, v134);
      sub_1EDC(&v296);
    }

    else
    {
      v53 = 0;
    }

LABEL_43:
    v8 = [objc_opt_self() isEmptyStamped:v53];
    swift_unknownObjectRelease();
    if (v8)
    {
      goto LABEL_24;
    }

LABEL_44:
    v53 = &v294;
    sub_F0FFC();
    v8 = *(v294 + 16);
    sub_F104C();
    sub_F105C();
    sub_F100C();
LABEL_25:
    ++v85;
  }

  while (v94 != v293);
  v52, v86, v87, v88, v89, v90, v91, v92;
  v149 = v294;
  if ((v294 & 0x8000000000000000) == 0 && (v294 & 0x4000000000000000) == 0)
  {
    v150 = *(v294 + 16);
    v151 = v287;
    v152 = v288;
    v153 = v290;
    if (v150)
    {
      goto LABEL_51;
    }

LABEL_79:

    v260 = Logger.chatbot.unsafeMutableAddressor();
    (v152[2])(v153, v260, v151);
    v261 = v286;
    v262 = sub_F06AC();
    v263 = sub_F0CCC();

    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      v295[0] = v265;
      *v264 = 136315138;
      v266 = [v261 uri];
      v267 = sub_F07EC();
      v269 = v268;

      v270 = sub_3E850(v267, v269, v295);
      v269, v271, v272, v273, v274, v275, v276, v277;
      *(v264 + 4) = v270;
      _os_log_impl(&dword_0, v262, v263, "Persistent Menu - Found no chat in need of persistent menu for %s ", v264, 0xCu);
      sub_1EDC(v265);
    }

    else
    {
    }

    v152[1](v153, v151);
    return;
  }

  v150 = sub_F10DC();
  v151 = v287;
  v152 = v288;
  v153 = v290;
  if (!v150)
  {
    goto LABEL_79;
  }

LABEL_51:
  v154 = objc_opt_self();
  if (v150 < 1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
  }

  v155 = v154;
  v156 = 0;
  do
  {
    if ((v149 & 0xC000000000000001) != 0)
    {
      v157 = sub_F0FCC();
    }

    else
    {
      v157 = *(v149 + 8 * v156 + 32);
    }

    v158 = v157;
    ++v156;
    v159 = [v155 emptyStampProperty];
    v160 = sub_F076C();

    v161 = sub_51844(v160);
    v160, v162, v163, v164, v165, v166, v167, v168;
    v169 = sub_F075C();
    v161, v170, v171, v172, v173, v174, v175, v176;
    [v158 updateProperties:v169];

    v177 = v292;
  }

  while (v150 != v156);

  v186 = *(v282 + 16);
  v295[0] = 0;
  v187 = v291;
  v188 = v286;
  if (![v186 fetchRenderInformation:v291 forChatBot:v286 withOperationID:v177 withError:v295])
  {
    v216 = v295[0];
    sub_F015C();

    swift_willThrow();
    v5 = v287;
    v55 = v288;
    goto LABEL_63;
  }

  v189 = v295[0];
  v190 = Logger.chatbot.unsafeMutableAddressor();
  v191 = v288;
  v192 = v281;
  v193 = v287;
  (v288[2])(v281, v190, v287);
  v194 = v187;
  v195 = v188;
  v196 = sub_F06AC();
  v197 = sub_F0CCC();

  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v295[0] = swift_slowAlloc();
    *v198 = 136315650;
    v199 = [v195 extractedUri];
    v200 = sub_F07EC();
    v202 = v201;

    v203 = sub_3E850(v200, v202, v295);
    v202, v204, v205, v206, v207, v208, v209, v210;
    *(v198 + 4) = v203;
    *(v198 + 12) = 2080;
    v211 = [v194 label];
    if (v211)
    {
      v212 = v211;
      v213 = sub_F07EC();
      v215 = v214;
    }

    else
    {
      v215 = 0xEB0000000064656CLL;
      v213 = 0x6562616C2D746F6ELL;
    }

    v239 = sub_3E850(v213, v215, v295);
    v215, v240, v241, v242, v243, v244, v245, v246;
    *(v198 + 14) = v239;
    *(v198 + 22) = 2080;
    v247 = [v194 phoneNumber];
    if (v247)
    {
      v248 = v247;
      v249 = sub_F07EC();
      v251 = v250;
    }

    else
    {
      v251 = 0xE400000000000000;
      v249 = 1701736302;
    }

    v252 = sub_3E850(v249, v251, v295);
    v251, v253, v254, v255, v256, v257, v258, v259;
    *(v198 + 24) = v252;
    _os_log_impl(&dword_0, v196, v197, "Persistent Menu - Fetch chatbot info for %s, with %s number: %s", v198, 0x20u);
    swift_arrayDestroy();

    v191[1](v281, v287);
  }

  else
  {

    v191[1](v192, v193);
  }
}

uint64_t sub_641A0()
{
  v0 = sub_F06CC();
  sub_42800(v0, qword_128298);
  sub_3C96C(v0, qword_128298);
  return sub_F06BC();
}

uint64_t sub_64224@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_3FE38((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_64270(void *a1)
{
  v2 = v1;
  v4 = [a1 extractedUri];
  v5 = sub_F07EC();
  v7 = v6;

  v7, v8, v9, v10, v11, v12, v13, v14;
  v15 = (v7 >> 56) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v15 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = &selRef_extractedUri;
  }

  else
  {
    v16 = &selRef_uri;
  }

  v17 = [a1 *v16];
  v18 = sub_F07EC();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v27, v21, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (!v22)
  {
    v23 = [objc_opt_self() sharedInstance];
    v24 = sub_F07BC();
    sub_3CAB8(&v27);
    v25 = [v23 allExistingChatsWithIdentifier:v24];

    sub_37310(0, &qword_127EF0, IMDChat_ptr);
    v2 = sub_F09FC();
  }

  return v2;
}

void sub_643E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v63 = a1;
  v64 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v65 = v8;
  v66 = 0;
  v67 = v11 & v9;
  v68 = a2;
  v69 = a3;

  sub_6F0E0(&v61);
  v12 = *(&v61 + 1);
  if (!*(&v61 + 1))
  {
    goto LABEL_25;
  }

  v13 = v61;
  sub_54F88(v62, v60);
  v14 = *a5;
  v15 = sub_51FEC(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_75E48(v20, a4 & 1);
    v15 = sub_51FEC(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_F126C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v33 = v15;
    sub_76D70();
    v15 = v33;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * v15;
    sub_3FE38(*(*a5 + 56) + 32 * v15, v59);
    sub_1EDC(v60);
    v12, v25, v26, v27, v28, v29, v30, v31;
    v32 = *(v23 + 56);
    sub_1EDC((v32 + v24));
    sub_54F88(v59, (v32 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v34 = *a5;
  *(*a5 + 8 * (v15 >> 6) + 64) |= 1 << v15;
  v35 = (v34[6] + 16 * v15);
  *v35 = v13;
  v35[1] = v12;
  sub_54F88(v60, (v34[7] + 32 * v15));
  v36 = v34[2];
  v19 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v19)
  {
    v34[2] = v37;
LABEL_15:
    sub_6F0E0(&v61);
    v12 = *(&v61 + 1);
    if (*(&v61 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v61;
        sub_54F88(v62, v60);
        v48 = *a5;
        v49 = sub_51FEC(v13, v12);
        v51 = *(v48 + 16);
        v52 = (v50 & 1) == 0;
        v19 = __OFADD__(v51, v52);
        v53 = v51 + v52;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v50;
        if (*(v48 + 24) < v53)
        {
          sub_75E48(v53, 1);
          v49 = sub_51FEC(v13, v12);
          if ((a4 & 1) != (v54 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v38 = *a5;
          v39 = 32 * v49;
          sub_3FE38(*(*a5 + 56) + 32 * v49, v59);
          sub_1EDC(v60);
          v12, v40, v41, v42, v43, v44, v45, v46;
          v47 = *(v38 + 56);
          sub_1EDC((v47 + v39));
          sub_54F88(v59, (v47 + v39));
        }

        else
        {
          v55 = *a5;
          *(*a5 + 8 * (v49 >> 6) + 64) |= 1 << v49;
          v56 = (v55[6] + 16 * v49);
          *v56 = v13;
          v56[1] = v12;
          sub_54F88(v60, (v55[7] + 32 * v49));
          v57 = v55[2];
          v19 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v55[2] = v58;
        }

        sub_6F0E0(&v61);
        v12 = *(&v61 + 1);
      }

      while (*(&v61 + 1));
    }

LABEL_25:
    sub_66138(v63);

    return;
  }

LABEL_27:
  __break(1u);
}

void sub_64724(void *a1, void *a2)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v154 - v9;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v154 - v13;
  if (!a2 || (v15 = [a2 renderInformation]) == 0)
  {
    v70 = Logger.chatbot.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v70, v4);
    v71 = a1;
    v72 = sub_F06AC();
    v73 = sub_F0CEC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v162 = v75;
      *v74 = 136315138;
      v76 = [v71 chatIdentifier];

      if (!v76)
      {
        goto LABEL_34;
      }

      v77 = sub_F07EC();
      v79 = v78;

      v80 = sub_3E850(v77, v79, &v162);
      v79, v81, v82, v83, v84, v85, v86, v87;
      *(v74 + 4) = v80;
      _os_log_impl(&dword_0, v72, v73, "Persistent Menu - No render info found for chat: %s", v74, 0xCu);
      sub_1EDC(v75);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    return;
  }

  v16 = v15;
  v17 = sub_81270(_swiftEmptyArrayStorage);
  v18 = [v16 botInfo];
  v19 = [v18 pcc];

  v20 = [v19 orgDetails];
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = [v20 orgName];

  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = [v21 list];

  sub_37310(0, &qword_1282B0, CTLazuliChatBotOrgNameEntry_ptr);
  v23 = sub_F09FC();

  if (!(v23 >> 62))
  {
    if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

LABEL_22:
    v23, v24, v25, v26, v27, v28, v29, v30;
    goto LABEL_23;
  }

  if (!sub_F10DC())
  {
    goto LABEL_22;
  }

LABEL_7:
  if ((v23 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
    {
      v31 = *(v23 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v31 = sub_F0FCC();
LABEL_10:
  v39 = v31;
  v23, v32, v33, v34, v35, v36, v37, v38;
  v40 = [v39 displayName];

  if (v40)
  {
    v159 = v17;
    v41 = sub_F07EC();
    v43 = v42;

    v44 = v43;
    v45 = Logger.chatbot.unsafeMutableAddressor();
    (*(v5 + 16))(v14, v45, v4);

    v158 = a1;
    v46 = a1;
    v47 = sub_F06AC();
    v48 = sub_F0CCC();
    v44, v49, v50, v51, v52, v53, v54, v55;
    v56 = os_log_type_enabled(v47, v48);
    v155 = v44;
    v156 = v41;
    if (v56)
    {
      v157 = v4;
      v57 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *&v162 = v154;
      *v57 = 136315394;
      *(v57 + 4) = sub_3E850(v41, v44, &v162);
      *(v57 + 12) = 2080;
      v58 = [v46 chatIdentifier];

      if (!v58)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v59 = sub_F07EC();
      v61 = v60;

      v62 = sub_3E850(v59, v61, &v162);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v57 + 14) = v62;
      _os_log_impl(&dword_0, v47, v48, "Populate business name %s for chat: %s", v57, 0x16u);
      swift_arrayDestroy();

      v4 = v157;
      (*(v5 + 8))(v14, v157);
    }

    else
    {

      (*(v5 + 8))(v14, v4);
    }

    v88 = sub_F07EC();
    v90 = v89;
    v163 = &type metadata for String;
    *&v162 = v156;
    *(&v162 + 1) = v155;
    sub_54F88(&v162, v161);
    v91 = v159;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v160 = v91;
    sub_52328(v161, v88, v90, isUniquelyReferenced_nonNull_native);
    v90, v93, v94, v95, v96, v97, v98, v99;
    v17 = v160;
    a1 = v158;
  }

LABEL_23:
  type metadata accessor for RCSPersistentMenu();
  swift_allocObject();
  v100 = v16;
  v108 = RCSPersistentMenu.init(menu:)(v100);
  if (!v108[2])
  {
    goto LABEL_29;
  }

  v159 = v17;
  v109 = Logger.chatbot.unsafeMutableAddressor();
  (*(v5 + 16))(v10, v109, v4);
  v110 = a1;
  v111 = sub_F06AC();
  v112 = sub_F0CCC();
  if (!os_log_type_enabled(v111, v112))
  {

    v127 = (*(v5 + 8))(v10, v4);
    goto LABEL_28;
  }

  v156 = v100;
  v157 = v4;
  v158 = a1;
  v113 = swift_slowAlloc();
  v114 = swift_slowAlloc();
  *&v162 = v114;
  *v113 = 136315138;
  v115 = [v110 guid];

  if (!v115)
  {
    goto LABEL_35;
  }

  v116 = sub_F07EC();
  v118 = v117;

  v119 = sub_3E850(v116, v118, &v162);
  v118, v120, v121, v122, v123, v124, v125, v126;
  *(v113 + 4) = v119;
  _os_log_impl(&dword_0, v111, v112, "Persistent Menu - Populate persistent menu for chat: %s", v113, 0xCu);
  sub_1EDC(v114);

  v127 = (*(v5 + 8))(v10, v157);
  a1 = v158;
  v100 = v156;
LABEL_28:
  v128 = (*(*v108 + 88))(v127);
  v129 = v159;
  v130 = swift_isUniquelyReferenced_nonNull_native();
  *&v162 = v129;
  sub_643E8(v128, sub_64224, 0, v130, &v162);
  v128, v131, v132, v133, v134, v135, v136, v137;
  v17 = v162;
LABEL_29:
  if (*v17[1].IMDTelephonyServiceSession_opaque)
  {
    v138 = sub_51844(v17);
    v17, v139, v140, v141, v142, v143, v144, v145;
    v146 = sub_F075C();
    v138, v147, v148, v149, v150, v151, v152, v153;
    [a1 updateProperties:v146 shouldBroadcast:1];
  }

  else
  {
    v17, v101, v102, v103, v104, v105, v106, v107;
  }
}

void sub_65010(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_F07BC();
  v7 = [v6 __im_isChatBotPatterned];

  if (!v7)
  {
    return;
  }

  if (!a1)
  {
LABEL_14:
    if (qword_127AC8 != -1)
    {
      swift_once();
    }

    v47 = sub_F06CC();
    sub_3C96C(v47, qword_128298);

    v30 = sub_F06AC();
    v48 = sub_F0D0C();
    a3, v49, v50, v51, v52, v53, v54, v55;
    if (os_log_type_enabled(v30, v48))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v97[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_3E850(a2, a3, v97);
      _os_log_impl(&dword_0, v30, v48, "Update empty stamp menu for chat %s", v56, 0xCu);
      sub_1EDC(v57);
    }

    v32 = [objc_opt_self() emptyStampProperty];
    v96 = sub_F076C();
    goto LABEL_19;
  }

  v8 = sub_F07EC();
  if (!*(a1 + 16))
  {
    v9, v9, v10, v11, v12, v13, v14, v15;
    goto LABEL_7;
  }

  v16 = v9;
  v17 = sub_51FEC(v8, v9);
  v19 = v18;
  v16, v18, v20, v21, v22, v23, v24, v25;
  if ((v19 & 1) == 0)
  {
LABEL_7:
    v26 = 0;
    goto LABEL_8;
  }

  sub_3FE38(*(a1 + 56) + 32 * v17, v97);
  sub_373E8(v97, v97[3]);
  v26 = sub_F121C();
  sub_1EDC(v97);
LABEL_8:
  v27 = [objc_opt_self() isEmptyStamped:v26];
  swift_unknownObjectRelease();
  if (v27)
  {
    goto LABEL_14;
  }

  v28 = objc_allocWithZone(IMPersistentMenu);
  v29 = sub_F075C();
  v30 = [v28 initWithDictionary:v29];

  if (!v30)
  {
    goto LABEL_14;
  }

  if (qword_127AC8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v31 = sub_F06CC();
    sub_3C96C(v31, qword_128298);
    v32 = v30;

    v30 = sub_F06AC();
    v33 = sub_F0D0C();
    a3, v34, v35, v36, v37, v38, v39, v40;

    if (os_log_type_enabled(v30, v33))
    {
      v41 = swift_slowAlloc();
      v97[0] = swift_slowAlloc();
      *v41 = 136315394;
      v42 = [v32 displayText];
      if (v42)
      {
        v43 = v42;
        v44 = sub_F07EC();
        v46 = v45;
      }

      else
      {
        v46 = 0xE500000000000000;
        v44 = 0x3E6C696E3CLL;
      }

      v80 = sub_3E850(v44, v46, v97);
      v46, v81, v82, v83, v84, v85, v86, v87;
      *(v41 + 4) = v80;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_3E850(a2, a3, v97);
      _os_log_impl(&dword_0, v30, v33, "Update persistent menu %s for chat %s", v41, 0x16u);
      swift_arrayDestroy();
    }

    v88 = [v32 dictionaryRepresentation];
    v96 = sub_F076C();

LABEL_19:
    v58 = [objc_opt_self() sharedInstance];
    v59 = sub_F07BC();
    v60 = [v58 allExistingChatsWithIdentifier:v59];

    sub_37310(0, &qword_127EF0, IMDChat_ptr);
    a3 = sub_F09FC();

    if (a3 >> 62)
    {
      a2 = sub_F10DC();
      if (!a2)
      {
        goto LABEL_31;
      }
    }

    else
    {
      a2 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
      if (!a2)
      {
        goto LABEL_31;
      }
    }

    if (a2 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  v68 = 0;
  do
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v69 = sub_F0FCC();
    }

    else
    {
      v69 = *(a3 + 8 * v68 + 32);
    }

    v70 = v69;
    ++v68;
    v71 = sub_51844(v96);
    v72 = sub_F075C();
    v71, v73, v74, v75, v76, v77, v78, v79;
    [v70 updateProperties:v72 shouldBroadcast:1];
  }

  while (a2 != v68);
LABEL_31:
  v96, v61, v62, v63, v64, v65, v66, v67;
  a3, v89, v90, v91, v92, v93, v94, v95;
}

id sub_65628(uint64_t a1, uint64_t a2, SEL *a3, Class *a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = sub_F07BC();
  v7 = [v5 allExistingChatsWithIdentifier:v6];

  sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v8 = sub_F09FC();

  if (v8 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v17 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = sub_F0FCC();
      }

      else
      {
        if (v17 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v18 = *(v8 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([v18 *a3])
      {
        v21 = [v19 properties];
        if (!v21 || (v29 = v21, v30 = sub_F076C(), v29, v31 = sub_A93BC(v30), v30, v32, v33, v34, v35, v36, v37, v38, !v31))
        {
          0, v22, v23, v24, v25, v26, v27, v28;
          v31 = &_swiftEmptyDictionarySingleton;
        }

        v39 = objc_allocWithZone(*a4);
        v40 = sub_F075C();
        v31, v41, v42, v43, v44, v45, v46, v47;
        v48 = [v39 initWithDictionary:v40];

        if (v48)
        {
          v8, v9, v10, v11, v12, v13, v14, v15;
          return v48;
        }
      }

      else
      {
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v8, v9, v10, v11, v12, v13, v14, v15;
  return 0;
}

uint64_t sub_65898(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_F07BC();
  v4 = [v2 allExistingChatsWithIdentifier:v3];

  sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v5 = sub_F09FC();

  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v14 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v15 = sub_F0FCC();
      }

      else
      {
        if (v14 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v15 = *(v5 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v15 hasChatBotBrandInfo])
      {
        v18 = [v16 brandLogoData];
        if (v18)
        {
          v26 = v18;
          v5, v19, v20, v21, v22, v23, v24, v25;
          v27 = sub_F025C();

          return v27;
        }
      }

      ++v14;
      if (v17 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v5, v6, v7, v8, v9, v10, v11, v12;
  return 0;
}

void sub_65A60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, RCSServiceSession *a5)
{
  v10 = sub_F07BC();
  v11 = [v10 __im_isChatBotPatterned];

  if (v11)
  {
    v12 = a1 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return;
  }

  v13 = objc_allocWithZone(IMBrandInfo);
  v14 = sub_F075C();
  v15 = [v13 initWithDictionary:v14];

  if (!v15)
  {
    return;
  }

  v16 = [v15 brandLogoGuid];
  if (v16)
  {
    v17 = v16;
    v120 = sub_F07EC();
    v19 = v18;
  }

  else
  {
    v120 = 0;
    v19 = 0;
  }

  v20 = qword_127AC8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_F06CC();
  sub_3C96C(v21, qword_128298);
  sub_660BC(a2, a3);

  sub_660BC(a2, a3);
  v22 = v15;

  v23 = sub_F06AC();
  v24 = sub_F0D0C();
  v19, v25, v26, v27, v28, v29, v30, v31;
  a5, v32, v33, v34, v35, v36, v37, v38;

  v39 = (a3 >> 60);
  v119 = a2;
  if (!os_log_type_enabled(v23, v24))
  {
    sub_66124(a2, a3);
    v19, v66, v67, v68, v69, v70, v71, v72;
    sub_66124(a2, a3);

    goto LABEL_24;
  }

  v117 = v24;
  v118 = v23;
  v40 = swift_slowAlloc();
  v121 = swift_slowAlloc();
  *v40 = 136315906;
  v41 = [v22 name];
  v42 = sub_F07EC();
  v44 = v43;

  v45 = sub_3E850(v42, v44, &v121);
  v44, v46, v47, v48, v49, v50, v51, v52;
  *(v40 + 4) = v45;
  *(v40 + 12) = 2080;
  *(v40 + 14) = sub_3E850(a4, a5, &v121);
  *(v40 + 22) = 2080;
  if (v19)
  {
    v53 = v120;
  }

  else
  {
    v53 = 0x6E756F6620746F6ELL;
  }

  if (v19)
  {
    v54 = v19;
  }

  else
  {
    v54 = 0xE900000000000064;
  }

  v55 = sub_3E850(v53, v54, &v121);
  v54, v56, v57, v58, v59, v60, v61, v62;
  *(v40 + 24) = v55;
  *(v40 + 32) = 2048;
  if (a3 >> 60 != 15)
  {
    v101 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      v64 = v119;
      if (v101 != 2)
      {
        sub_66124(v119, a3);
        v63 = 0;
        goto LABEL_21;
      }

      v65 = *(v119 + 16);
      v102 = *(v119 + 24);
      sub_66124(v119, a3);
      v63 = v102 - v65;
      if (!__OFSUB__(v102, v65))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      v64 = v119;
      v39 = v118;
      LOBYTE(v65) = v117;
      if (!v101)
      {
        sub_66124(v119, a3);
        v63 = BYTE6(a3);
        goto LABEL_22;
      }
    }

    sub_66124(v64, a3);
    LODWORD(v63) = HIDWORD(v64) - v64;
    if (__OFSUB__(HIDWORD(v64), v64))
    {
LABEL_53:
      __break(1u);
      return;
    }

    v63 = v63;
    goto LABEL_22;
  }

  v63 = 0;
  v64 = v119;
LABEL_21:
  v39 = v118;
  LOBYTE(v65) = v117;
LABEL_22:
  *(v40 + 34) = v63;
  sub_66124(v64, a3);
  _os_log_impl(&dword_0, v39, v65, "Update brand info %s for chat %s, brand logo guid: %s, brand logo data: %ld", v40, 0x2Au);
  swift_arrayDestroy();

LABEL_24:
  v73 = [v22 dictionaryRepresentation];
  v74 = sub_F076C();

  v75 = [objc_opt_self() sharedInstance];
  v76 = sub_F07BC();
  v77 = [v75 allExistingChatsWithIdentifier:v76];

  sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v78 = sub_F09FC();

  if (v78 >> 62)
  {
    v86 = sub_F10DC();
    if (v86)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v86 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
    if (v86)
    {
LABEL_26:
      if (v86 >= 1)
      {
        v87 = 0;
        while (1)
        {
          if ((v78 & 0xC000000000000001) != 0)
          {
            v89 = sub_F0FCC();
          }

          else
          {
            v89 = *(v78 + 8 * v87 + 32);
          }

          v90 = v89;
          v91 = sub_51844(v74);
          v92 = sub_F075C();
          v91, v93, v94, v95, v96, v97, v98, v99;
          [v90 updateProperties:v92 shouldBroadcast:1];

          if (a3 >> 60 == 15)
          {
            v100 = 0;
            if (!v19)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v100 = sub_F024C();
            if (!v19)
            {
LABEL_37:
              v88 = 0;
              goto LABEL_29;
            }
          }

          v88 = sub_F07BC();
LABEL_29:
          ++v87;
          [v90 updateBrandLogo:v100 transferGuid:v88];

          if (v86 == v87)
          {
            goto LABEL_49;
          }
        }
      }

      __break(1u);
      goto LABEL_53;
    }
  }

LABEL_49:
  v74, v79, v80, v81, v82, v83, v84, v85;
  v78, v103, v104, v105, v106, v107, v108, v109;

  v19, v110, v111, v112, v113, v114, v115, v116;
}

uint64_t sub_660BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_660D0(a1, a2);
  }

  return a1;
}

uint64_t sub_660D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double sub_66124(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_5F048(a1, a2);
  }

  return result;
}

id RCSAttachmentController.init(session:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSession:a1];

  return v2;
}

{
  v4.super_class = RCSAttachmentController;
  v2 = objc_msgSendSuper2(&v4, "initWithSession:", a1);

  return v2;
}

void __swiftcall RCSAttachmentController.init()(RCSAttachmentController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for RCSAttachmentController()
{
  result = qword_1282E0;
  if (!qword_1282E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1282E0);
  }

  return result;
}

void RCSServiceSession.existingGroupChat(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_373E8(a1, v2);

  sub_6F3C8(v4, v1, v2, v3);
}

double sub_66354@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_51FA8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_76F14();
      v9 = v11;
    }

    sub_54F34(*(v9 + 48) + 40 * v7);
    sub_54F88((*(v9 + 56) + 32 * v7), a2);
    sub_7656C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id RCSServiceSession.groupChat(from:subscriptionInfo:group:)(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, RCSServiceSession *a6)
{
  v7 = v6;
  v276 = a5;
  v249 = a4;
  v250 = a3;
  v11 = sub_F06CC();
  v246 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v233 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a6[1].state;
  v15 = *a6[2].IMDTelephonyServiceSession_opaque;
  v16 = sub_373E8(a6, v14);
  v17 = sub_6F3C8(v16, v7, v14, v15);
  if (v17)
  {
    v18 = a1[1];
    v255[0] = *a1;
    v255[1] = v18;
    v256[0] = a1[2];
    *(v256 + 9) = *(a1 + 41);
    v257 = a2;
    v258 = v250;
    v259 = v249;
    v260 = v276;
    v261 = v17;
    v19 = v17;
    sub_37380(a1, v252, &qword_1282F0, &qword_F3450);

    v20 = v251;
    sub_A9050(v255, a6);
    if (!v20)
    {
LABEL_5:
      sub_A92D0(v255);

      sub_372B0(v255, &qword_1282F8, &qword_F3458);
      return v19;
    }

    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v22 = result;
      v23 = sub_F0FBC();
      v25 = v24;
      v262[0] = 1;
      v263 = v23;
      v264 = v24;
      v265 = 0;
      v266 = 0;
      v267 = v20;
      v268 = 0;
      swift_errorRetain();
      sub_94528(v262);
      0, v26, v27, v28, v29, v30, v31, v32;
      v25, v33, v34, v35, v36, v37, v38, v39;

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_52;
  }

  v234 = v13;
  v235 = v11;
  v40 = v276;
  v243 = v7;
  v244 = a2;
  sub_68ACC(a6);
  v242 = v41;
  v245 = v42;
  v248 = v43;
  v44 = *a6[1].state;
  v45 = *a6[2].IMDTelephonyServiceSession_opaque;
  v46 = a6;
  sub_373E8(a6, v44);
  v47 = (*(v45 + 16))(v44, v45);
  v237 = a1;
  if (v48 || (static IMDChatRCSGroupIdentity.legacyInteractionEnabled.getter() & 1) != 0 && (v60 = *a6[1].state, v61 = *a6[2].IMDTelephonyServiceSession_opaque, sub_373E8(a6, v60), v47 = (*(v61 + 8))(v60, v61), v48))
  {
    v49 = v48;
    static IMDChatRCSGroupIdentity.encodeGroupID(_:)(v47, v48);
    v51 = v50;
    v53 = v52;
    v49, v52, v54, v55, v56, v57, v58, v59;
    goto LABEL_12;
  }

  v62 = v40;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v63 = result;
    v253 = 0x70756F7247534352;
    v254 = 0xE900000000000020;
    sub_54C4C(v46, v252);
    v277._countAndFlagsBits = sub_F085C();
    object = v277._object;
    sub_F08CC(v277);
    object, v65, v66, v67, v68, v69, v70, v71;
    v72 = v253;
    v73 = v254;
    v74 = sub_F0FBC();
    v76 = v75;
    v269[0] = 1;
    v270 = v74;
    v271 = v75;
    v272 = v72;
    v273 = v73;
    v274 = 0;
    v275 = 0;
    sub_94528(v269);
    v73, v77, v78, v79, v80, v81, v82, v83;
    v76, v84, v85, v86, v87, v88, v89, v90;

    v51 = 0;
    v53 = 0;
    v40 = v62;
LABEL_12:
    v91 = sub_F07BC();
    v92 = *v46[3].state;
    v247 = v46;
    if (v92)
    {
      v241 = sub_F07BC();
      if (v53)
      {
LABEL_14:
        v240 = sub_F07BC();
        goto LABEL_17;
      }
    }

    else
    {
      v241 = 0;
      if (v53)
      {
        goto LABEL_14;
      }
    }

    v240 = 0;
LABEL_17:
    if (v250)
    {
      v239 = sub_F07BC();
    }

    else
    {
      v239 = 0;
    }

    v236 = v53;
    v233[1] = v51;
    if (v40)
    {
      v238 = sub_F07BC();
    }

    else
    {
      v238 = 0;
    }

    v93 = *v247[2].state;
    v94 = *(v93 + 16);
    v95 = _swiftEmptyArrayStorage;
    if (v94)
    {
      v252[0] = _swiftEmptyArrayStorage;
      sub_6EB68(0, v94, 0);
      v95 = v252[0];
      v96 = (v93 + 56);
      do
      {
        v97 = *(v96 - 1);
        v98 = *v96;
        v252[0] = v95;
        v100 = *v95[1].IMDTelephonyServiceSession_opaque;
        v99 = *v95[1].state;

        if (v100 >= v99 >> 1)
        {
          sub_6EB68((v99 > 1), v100 + 1, 1);
          v95 = v252[0];
        }

        *v95[1].IMDTelephonyServiceSession_opaque = v100 + 1;
        v101 = &v95[v100];
        *v101[2].IMDTelephonyServiceSession_opaque = v97;
        *v101[2].state = v98;
        v96 += 8;
        --v94;
      }

      while (v94);
    }

    v102 = sub_6FD30(v95);
    v95, v103, v104, v105, v106, v107, v108, v109;
    v110 = sub_694A8(v102);
    v102, v111, v112, v113, v114, v115, v116, v117;
    v118 = sub_F09EC();
    v110, v119, v120, v121, v122, v123, v124, v125;
    v126 = v243;
    v128 = v240;
    v127 = v241;
    v129 = v238;
    v130 = v239;
    [v243 didJoinChat:v91 style:43 displayName:v241 groupID:v240 lastAddressedHandle:v239 lastAddressedSIMID:v238 handleInfo:v118];

    if (v242)
    {
      v138 = sub_F07BC();
      v139 = [v126 service];
      v140 = [v139 internalName];

      if (!v140)
      {
        sub_F07EC();
        v142 = v141;
        v140 = sub_F07BC();
        v142, v143, v144, v145, v146, v147, v148, v149;
      }

      v150 = IMCopyGUIDForChat();

      if (v150)
      {
        sub_F07EC();
        v152 = v151;
      }

      else
      {
        v152 = 0;
      }

      result = [objc_opt_self() sharedInstance];
      if (!v152)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v172 = result;
      v248, v165, v166, v167, v168, v169, v170, v171;
      v173 = sub_F07BC();
      v152, v174, v175, v176, v177, v178, v179, v180;
      v19 = [v172 existingChatWithGUID:v173];

      if (v19)
      {
        v188 = v236;
        if (v236)
        {
          v189 = v19;

          v190 = sub_F07BC();
          v188, v191, v192, v193, v194, v195, v196, v197;
        }

        else
        {
          v198 = v19;
          v190 = 0;
        }

        v199 = v246;
        [v19 assignIdentifier:v190 forDomain:IMChatLookupDomainIMessageGroupID isHistoricalIdentifier:0];

        if (v188)
        {
          v200 = sub_F07BC();
          v188, v201, v202, v203, v204, v205, v206, v207;
        }

        else
        {
          v200 = 0;
        }

        [v19 assignIdentifier:v200 forDomain:IMChatLookupDomainRCSConversationID isHistoricalIdentifier:0];

        v208 = Logger.rcs.unsafeMutableAddressor();
        v210 = v234;
        v209 = v235;
        (*(v199 + 16))(v234, v208, v235);
        v211 = v19;
        v212 = sub_F06AC();
        v213 = sub_F0CCC();

        if (os_log_type_enabled(v212, v213))
        {
          v214 = swift_slowAlloc();
          LODWORD(v248) = v213;
          v215 = v214;
          v245 = swift_slowAlloc();
          v252[0] = v245;
          *v215 = 136315138;
          v216 = v211;
          v217 = [v216 description];
          v218 = sub_F07EC();
          v220 = v219;

          v221 = sub_3E850(v218, v220, v252);
          v220, v222, v223, v224, v225, v226, v227, v228;
          *(v215 + 4) = v221;
          _os_log_impl(&dword_0, v212, v248, "Updating identity for chat: %s", v215, 0xCu);
          sub_1EDC(v245);

          (*(v246 + 8))(v234, v235);
        }

        else
        {

          (*(v199 + 8))(v210, v209);
        }

        v252[3] = sub_37310(0, &qword_127EF0, IMDChat_ptr);
        v252[4] = &protocol witness table for IMDChat;
        v252[0] = v211;
        IMDChatRCSGroupIdentity.converge(identity:)(v247);
        sub_39BC4(v252);
        return v19;
      }

      v236, v181, v182, v183, v184, v185, v186, v187;
      v163 = v237;
      v164 = v276;
    }

    else
    {
      v248, v131, v132, v133, v134, v135, v136, v137;
      v236, v153, v154, v155, v156, v157, v158, v159;
      v160 = *v247[1].state;
      v161 = *v247[2].IMDTelephonyServiceSession_opaque;
      v162 = sub_373E8(v247, v160);
      v19 = sub_6F3C8(v162, v126, v160, v161);
      v163 = v237;
      v164 = v276;
      if (v19)
      {
        return v19;
      }
    }

    type metadata accessor for RCSServiceSession.ChatResolutionError(0);
    sub_72434(&qword_1282E8, type metadata accessor for RCSServiceSession.ChatResolutionError, &protocol conformance descriptor for RCSServiceSession.ChatResolutionError);
    swift_allocError();
    v230 = v163[1];
    v229 = v163[2];
    v231 = *v163;
    *(v232 + 41) = *(v163 + 41);
    *(v232 + 16) = v230;
    *(v232 + 32) = v229;
    *v232 = v231;
    v19 = v250;
    *(v232 + 64) = v244;
    *(v232 + 72) = v19;
    *(v232 + 80) = v249;
    *(v232 + 88) = v164;
    sub_54C4C(v247, v232 + 96);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_37380(v163, v252, &qword_1282F0, &qword_F3450);

    return v19;
  }

LABEL_53:
  __break(1u);
  return result;
}