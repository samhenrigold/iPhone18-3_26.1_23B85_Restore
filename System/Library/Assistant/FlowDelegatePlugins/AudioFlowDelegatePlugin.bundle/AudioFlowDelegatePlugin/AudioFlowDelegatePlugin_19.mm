uint64_t sub_234704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_234764(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_20410(&qword_34E1C0, &unk_2D7FD0);
    v2 = sub_2CEDE0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_E2DC(&v22, v24);
        sub_E2DC(v24, v25);
        sub_E2DC(v25, &v23);
        result = sub_4F538(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_306C(v11);
          result = sub_E2DC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_E2DC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_2349AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_20410(&qword_34E1C0, &unk_2D7FD0);
    v2 = sub_2CEDE0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_E2DC(&v22, v24);
        sub_E2DC(v24, v25);
        sub_E2DC(v25, &v23);
        result = sub_4F538(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_306C(v11);
          result = sub_E2DC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_E2DC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_234C04()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_235410();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(SKIDirectInvocationContext) init];
    [v6 setInputOrigin:SAInputOriginDialogButtonTapValue];
    [v6 setInteractionType:SAIntentGroupAceInteractionTypeDisplayDrivenValue];
    v7 = [objc_opt_self() runSiriKitExecutorCommandWithContext:v6 payload:v5];
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v8 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v3, v8, v0);
    v9 = sub_2CDFE0();
    v10 = sub_2CE680();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "DirectInvocationUseCase#runSiriKitExecutorCommand could not build DirectInvocationPayload", v11, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v7;
}

uint64_t sub_234E48(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C67676F74;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656C62616E65;
    }

    else
    {
      v4 = 0x656C6261736964;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7628147;
    }

    else
    {
      v4 = 0x656C67676F74;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x656C62616E65;
  if (a2 != 2)
  {
    v8 = 0x656C6261736964;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 7628147;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2CEEA0();
  }

  return v11 & 1;
}

uint64_t sub_234F70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C65636E6163;
    }

    else
    {
      v4 = 0x666E692065726F6DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE90000000000006FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 7562617;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6C65636E6163;
  if (a2 != 2)
  {
    v8 = 0x666E692065726F6DLL;
    v7 = 0xE90000000000006FLL;
  }

  if (a2)
  {
    v2 = 28526;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2CEEA0();
  }

  return v11 & 1;
}

uint64_t sub_235094(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D7269666E6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F666E4965726F6DLL;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7463656A6572;
    }

    else
    {
      v4 = 0x6D7269666E6F63;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6F666E4965726F6DLL;
  if (a2 != 2)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x7463656A6572;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2CEEA0();
  }

  return v11 & 1;
}

uint64_t sub_2351C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000776FLL;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x73756F6976657270;
  if (a1 != 6)
  {
    v5 = 0x64656D616ELL;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x7478654E79616C70;
  if (a1 != 4)
  {
    v7 = 1954047342;
    v6 = 0xE400000000000000;
  }

  if (a1 > 5u)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x7473614C79616C70;
  v9 = 0xEB00000000747865;
  if (a1 == 2)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x4E676E6979616C70;
  }

  v10 = 0x4C676E6979616C70;
  if (a1)
  {
    v11 = 0xEB00000000747361;
  }

  else
  {
    v10 = 0x4E676E6979616C70;
    v11 = 0xEA0000000000776FLL;
  }

  if (a1 <= 1u)
  {
    v8 = v10;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v5;
  }

  if (v3 <= 3)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE800000000000000;
        if (v12 != 0x73756F6976657270)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v12 != 0x64656D616ELL)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v12 != 0x7478654E79616C70)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v12 != 1954047342)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v12 != 0x7473614C79616C70)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0xEB00000000747865;
    }

    else if (a2)
    {
      v2 = 0xEB00000000747361;
      if (v12 != 0x4C676E6979616C70)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v12 != 0x4E676E6979616C70)
    {
LABEL_44:
      v14 = sub_2CEEA0();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v13 != v2)
  {
    goto LABEL_44;
  }

  v14 = 1;
LABEL_45:

  return v14 & 1;
}

id sub_235410()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  v10 = *(v1 + 56);
  if (v10 <= 1)
  {
    if (*(v1 + 56))
    {

      v16 = sub_112C0(_swiftEmptyArrayStorage);
      if (v9)
      {
        *(&v56 + 1) = &type metadata for String;
        *&v55 = v2;
        *(&v55 + 1) = v9;
        sub_E2DC(&v55, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v16;
        sub_237690(v54, 0x6C646E7542707061, 0xEB00000000644965, isUniquelyReferenced_nonNull_native);
        v16 = v58;
      }

      v44 = 0x80000000002DA380;
      v45 = 0xD00000000000002CLL;
    }

    else
    {
      sub_20410(&unk_353120, &unk_2D0B50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2D0090;
      *(inited + 32) = 0x6C646E7542707061;
      *(inited + 40) = 0xEB00000000644965;
      *(inited + 72) = sub_20410(&qword_34CCC0, &unk_2D0DE0);
      *(inited + 48) = v2;
      *(inited + 56) = v9;

      v16 = sub_112C0(inited);
      swift_setDeallocating();
      sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
      if (v3)
      {
        v17 = objc_opt_self();
        *&v55 = 0;
        v18 = v3;
        v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v55];
        v20 = v55;
        if (v19)
        {
          v21 = sub_2C8DC0();
          v23 = v22;

          *(&v56 + 1) = &type metadata for Data;
          *&v55 = v21;
          *(&v55 + 1) = v23;
          sub_E2DC(&v55, v54);
          sub_525D4(v21, v23);
          v24 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v16;
          sub_237690(v54, 0x746E65746E69, 0xE600000000000000, v24);
          sub_52628(v21, v23);

          v16 = v58;
        }

        else
        {
          v46 = v20;
          sub_2C8D30();

          swift_willThrow();
        }
      }

      v45 = 0xD000000000000033;
      v44 = 0x80000000002DE4F0;
    }

    v42 = sub_237DEC(v45, v44, v16);
    goto LABEL_29;
  }

  if (v10 == 2)
  {
    sub_20410(&unk_353120, &unk_2D0B50);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_2D0090;
    *(v25 + 32) = 0x6E6F74747562;
    v26 = v25 + 32;
    v27 = 0xE600000000000000;
    *(v25 + 40) = 0xE600000000000000;
    if (v2 > 1u)
    {
      if (v2 == 2)
      {
        v27 = 0xE800000000000000;
        v28 = 0x6F666E4965726F6DLL;
      }

      else
      {
        v28 = 0x6C65636E6163;
      }
    }

    else if (v2)
    {
      v28 = 0x7463656A6572;
    }

    else
    {
      v27 = 0xE700000000000000;
      v28 = 0x6D7269666E6F63;
    }

    *(v25 + 72) = &type metadata for String;
    v11 = "createRadioFromType";
    *(v25 + 48) = v28;
    *(v25 + 56) = v27;
    v13 = sub_112C0(v25);
    swift_setDeallocating();
    sub_30B8(v26, &qword_34CBA0, &unk_2D0FE0);
    v14 = 0xD000000000000031;
    goto LABEL_25;
  }

  if (v10 == 3)
  {
    v11 = "supportedParameters";
    sub_20410(&unk_353120, &unk_2D0B50);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_2D0090;
    *(v12 + 32) = 0x64496D657469;
    *(v12 + 72) = &type metadata for String;
    *(v12 + 40) = 0xE600000000000000;
    *(v12 + 48) = v2;
    *(v12 + 56) = v9;
    sub_D41D0(v1, &v55);
    v13 = sub_112C0(v12);
    swift_setDeallocating();
    sub_30B8(v12 + 32, &qword_34CBA0, &unk_2D0FE0);
    v14 = 0xD000000000000034;
LABEL_25:
    v42 = sub_237DEC(v14, v11 | 0x8000000000000000, v13);
LABEL_29:

    return v42;
  }

  if (qword_34BF58 != -1)
  {
    v48 = v6;
    swift_once();
    v6 = v48;
  }

  v29 = v6;
  v30 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  v31 = *(v5 + 16);
  v53 = v29;
  v31(v8, v30, v29);

  v32 = v2;

  v33 = sub_2CDFE0();
  v34 = sub_2CE680();
  sub_133410(v1);
  if (os_log_type_enabled(v33, v34))
  {
    v52 = v34;
    v35 = swift_slowAlloc();
    v50 = v32;
    v36 = v35;
    v51 = swift_slowAlloc();
    v58 = v51;
    *v36 = 136315138;
    v37 = *(v1 + 16);
    v55 = *v1;
    v56 = v37;
    v57[0] = *(v1 + 32);
    *(v57 + 9) = *(v1 + 41);
    v38 = v50;

    v39 = sub_2CE2A0();
    v41 = sub_3F08(v39, v40, &v58);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_0, v33, v52, "DirectInvocationUseCase#buildDirectInvocationPayload unsupported type: %s", v36, 0xCu);
    sub_306C(v51);
  }

  (*(v5 + 8))(v8, v53);
  return 0;
}

id sub_235B38()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_234C04();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() wrapCommandInStartLocalRequest:v4];
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v7 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v3, v7, v0);
    v8 = sub_2CDFE0();
    v9 = sub_2CE680();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "DirectInvocationUseCase#startLocalRequestWithRunSiriKitExecutorCommand could not build RSKE", v10, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v6;
}

void sub_235D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_E2DC(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_237690(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_30B8(a1, &qword_34CEA0, &qword_2D0FC0);
    sub_236110(a2, a3, v8);

    sub_30B8(v8, &qword_34CEA0, &qword_2D0FC0);
  }
}

Swift::Int sub_235E00()
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

double sub_235EB8(uint64_t a1)
{
  sub_2CE310();

  return result;
}

Swift::Int sub_235F5C(uint64_t a1)
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

unint64_t sub_236010@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_238638(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_236040(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6D7269666E6F63;
  v4 = 0xE800000000000000;
  v5 = 0x6F666E4965726F6DLL;
  if (*v1 != 2)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x7463656A6572;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2360B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_2379B0(v5, v7) & 1;
}

double sub_236110@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_4F538(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23632C();
      v10 = v12;
    }

    sub_E2DC((*(v10 + 56) + 32 * v8), a3);
    sub_2374E0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_2361B4()
{
  v1 = v0;
  sub_20410(&qword_34E178, &unk_2D1EC0);
  v2 = *v0;
  v3 = sub_2CEDC0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_23632C()
{
  v1 = v0;
  sub_20410(&qword_34E1C0, &unk_2D7FD0);
  v2 = *v0;
  v3 = sub_2CEDC0();
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
        sub_E2FC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_E2DC(v25, (*(v4 + 56) + v22));
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

void *sub_2364D0()
{
  v1 = v0;
  sub_20410(&qword_34E180, &qword_2D7FE0);
  v2 = *v0;
  v3 = sub_2CEDC0();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

id sub_236638()
{
  v1 = v0;
  sub_20410(qword_355918, &unk_2D7B70);
  v2 = *v0;
  v3 = sub_2CEDC0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

uint64_t sub_236798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_20410(&qword_34E178, &unk_2D1EC0);
  v37 = v4;
  result = sub_2CEDD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_2CEF50();
      sub_2CE310();
      result = sub_2CEF80();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_236A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_20410(&qword_34E1C0, &unk_2D7FD0);
  v33 = v4;
  result = sub_2CEDD0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_E2DC(v24, v34);
      }

      else
      {
        sub_E2FC(v24, v34);
      }

      sub_2CEF50();
      sub_2CE310();
      result = sub_2CEF80();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_E2DC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_236D10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_20410(&qword_34E180, &qword_2D7FE0);
  v34 = v4;
  result = sub_2CEDD0();
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

      sub_2CEF50();
      sub_2CE310();
      result = sub_2CEF80();
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

uint64_t sub_236FB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_20410(&qword_355A98, &unk_2D7FE8);
  v30 = v4;
  result = sub_2CEDD0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      sub_2CEF50();
      if (v21)
      {
        sub_2CEF70(1u);
        sub_2CE310();
      }

      else
      {
        sub_2CEF70(0);
      }

      result = sub_2CEF80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_237278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_20410(qword_355918, &unk_2D7B70);
  result = sub_2CEDD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_2CEB20(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_2374E0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2CEC30() + 1) & ~v5;
    do
    {
      sub_2CEF50();

      sub_2CE310();
      v10 = sub_2CEF80();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

_OWORD *sub_237690(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_4F538(a2, a3);
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
      sub_23632C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_236A58(v16, a4 & 1);
    v11 = sub_4F538(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2CEEE0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_306C(v22);

    return sub_E2DC(a1, v22);
  }

  else
  {
    sub_237944(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_2377E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_4F538(a2, a3);
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
      sub_236D10(v16, a4 & 1);
      result = sub_4F538(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2CEEE0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2364D0();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
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

_OWORD *sub_237944(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_E2DC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2379B0(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 56);
  if (v5 <= 1)
  {
    if (*(a1 + 56))
    {
      if (a2[56] != 1)
      {
        return 0;
      }

      v36 = *(a2 + 1);
      if (!v2)
      {
        return !v36;
      }

      if (!v36)
      {
        return 0;
      }

      if (v3 == *a2 && v2 == v36)
      {
        return 1;
      }

      return (sub_2CEEA0() & 1) != 0;
    }

    if (a2[56])
    {
      return 0;
    }

    v7 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v2)
    {
      if (!v7 || (v3 != *a2 || v2 != v7) && (sub_2CEEA0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }

    if (!v4)
    {
      return !v8;
    }

    if (v8)
    {
      sub_334A0(0, &qword_3512C0, INIntent_ptr);
      v41 = v8;
      v42 = v4;
      v43 = sub_2CEB30();

      if (v43)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v5 == 2)
  {
    if (a2[56] == 2)
    {
      v9 = 0x6D7269666E6F63;
      v10 = 0xE700000000000000;
      v11 = 0xE800000000000000;
      v12 = 0x6F666E4965726F6DLL;
      if (*a1 != 2)
      {
        v12 = 0x6C65636E6163;
        v11 = 0xE600000000000000;
      }

      v13 = 0x7463656A6572;
      if (*a1)
      {
        v10 = 0xE600000000000000;
      }

      else
      {
        v13 = 0x6D7269666E6F63;
      }

      if (*a1 <= 1u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      if (v3 <= 1u)
      {
        v15 = v10;
      }

      else
      {
        v15 = v11;
      }

      v16 = 0xE700000000000000;
      v17 = 0xE800000000000000;
      v18 = 0x6F666E4965726F6DLL;
      if (*a2 != 2)
      {
        v18 = 0x6C65636E6163;
        v17 = 0xE600000000000000;
      }

      if (*a2)
      {
        v9 = 0x7463656A6572;
        v16 = 0xE600000000000000;
      }

      if (*a2 <= 1u)
      {
        v19 = v9;
      }

      else
      {
        v19 = v18;
      }

      if (*a2 <= 1u)
      {
        v20 = v16;
      }

      else
      {
        v20 = v17;
      }

      if (v14 != v19 || v15 != v20)
      {
        v37 = sub_2CEEA0();

        return v37 & 1;
      }

      return 1;
    }

    return 0;
  }

  if (v5 != 3)
  {
    if (a2[56] != 4)
    {
      return 0;
    }

    v21 = a1[3];
    v22 = a1[4];
    v23 = a1[5];
    v24 = a1[6];
    v26 = *a2;
    v25 = *(a2 + 1);
    v28 = *(a2 + 2);
    v27 = *(a2 + 3);
    v29 = *(a2 + 4);
    v30 = *(a2 + 5);
    v31 = *(a2 + 6);
    if (v3)
    {
      if (!v26)
      {
        return 0;
      }

      v46 = *(a2 + 3);
      v47 = *(a2 + 4);
      v44 = *(a2 + 1);
      v45 = *(a2 + 2);
      sub_2CDB90();
      v48 = v22;
      v32 = v24;
      v33 = v26;
      v34 = v3;
      v35 = sub_2CEB30();

      v24 = v32;
      v22 = v48;

      v25 = v44;
      v28 = v45;
      v27 = v46;
      v29 = v47;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    if (v4)
    {
      if (!v28)
      {
        return 0;
      }

      if (v2 != v25 || v4 != v28)
      {
        v38 = v27;
        v39 = v29;
        v40 = sub_2CEEA0();
        v27 = v38;
        v29 = v39;
        if ((v40 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v28)
    {
      return 0;
    }

    if (v22)
    {
      if (!v29 || (v21 != v27 || v22 != v29) && (sub_2CEEA0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    if (!v24)
    {
      return !v31;
    }

    if (!v31)
    {
      return 0;
    }

    if (v23 == v30 && v24 == v31)
    {
      return 1;
    }

    return (sub_2CEEA0() & 1) != 0;
  }

  if (a2[56] != 3)
  {
    return 0;
  }

  if (v3 == *a2 && v2 == *(a2 + 1))
  {
    return 1;
  }

  return sub_2CEEA0();
}

id sub_237DEC(uint64_t a1, unint64_t a2, Class a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_2CDFE0();
  v12 = sub_2CE690();

  if (os_log_type_enabled(v11, v12))
  {
    v23 = v12;
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v13 = 136315394;
    v24 = a1;
    v25 = a2;
    *(v13 + 4) = sub_3F08(a1, a2, &v26);
    *(v13 + 12) = 2080;
    if (!a3)
    {
      sub_112C0(_swiftEmptyArrayStorage);
    }

    v14 = sub_2CE210();
    v16 = v15;

    v17 = sub_3F08(v14, v16, &v26);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_0, v11, v23, "Building direct invocation payload with identifier: %s, userData: %s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v18 = objc_allocWithZone(SKIDirectInvocationPayload);
  v19 = sub_2CE260();
  v20 = [v18 initWithIdentifier:v19];

  if (a3)
  {
    sub_E014(a3);
    a3 = sub_2CE1F0().super.isa;
  }

  [v20 setUserData:a3];

  return v20;
}

uint64_t sub_238164@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2CDFE0();
  v10 = sub_2CE690();

  if (!os_log_type_enabled(v9, v10))
  {

    result = (*(v5 + 8))(v7, v4);
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_18:
    v19 = 0;
    v18 = 0;
    goto LABEL_23;
  }

  v25 = a2;
  v11 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v28[0] = v24;
  *v11 = 136315138;
  if (!a1)
  {
    sub_112C0(_swiftEmptyArrayStorage);
  }

  v12 = sub_2CE210();
  v14 = v13;

  v15 = sub_3F08(v12, v14, v28);

  *(v11 + 4) = v15;
  _os_log_impl(&dword_0, v9, v10, "Parsing replay request data with user data: %s", v11, 0xCu);
  sub_306C(v24);

  result = (*(v5 + 8))(v7, v4);
  a2 = v25;
  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (!*(a1 + 16) || (result = sub_4F538(0x6C646E7542707061, 0xEB00000000644965), (v17 & 1) == 0))
  {
    v18 = 0;
    v19 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_20;
    }

LABEL_23:
    v23 = 0;
    goto LABEL_24;
  }

  sub_E2FC(*(a1 + 56) + 32 * result, v28);
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v26;
  }

  else
  {
    v18 = 0;
  }

  if (result)
  {
    v19 = v27;
  }

  else
  {
    v19 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

LABEL_20:
  result = sub_4F538(0x746E65746E69, 0xE600000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_E2FC(*(a1 + 56) + 32 * result, v28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v21 = v26;
  v22 = v27;
  sub_334A0(0, &qword_34D3E0, NSKeyedUnarchiver_ptr);
  sub_334A0(0, &qword_3512C0, INIntent_ptr);
  v23 = sub_2CE930();
  result = sub_52628(v21, v22);
LABEL_24:
  *a2 = v18;
  *(a2 + 8) = v19;
  *(a2 + 16) = v23;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_238580@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  result = sub_4F538(0x6C646E7542707061, 0xEB00000000644965);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  sub_E2FC(*(v3 + 56) + 32 * result, v9);
  result = swift_dynamicCast();
  v4 = v7;
  v6 = v8;
  if (!result)
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_8:
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 56) = 1;
  return result;
}

unint64_t sub_238638(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_32F2B0;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

double sub_238684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35[-1] - v9;
  if (a1 && *(a1 + 16) && (v11 = sub_4F538(0x6E6F74747562, 0xE600000000000000), (v12 & 1) != 0) && (sub_E2FC(*(a1 + 56) + 32 * v11, v36), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v35[0];
    v13 = v35[1];

    v15 = sub_238638(v14, v13);
    if (v15 != 4)
    {
      v33 = v15;

      v30 = v33;
      v31 = 2;
      goto LABEL_16;
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v16 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v10, v16, v4);

    v17 = sub_2CDFE0();
    v18 = sub_2CE680();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35[0] = v20;
      *v19 = 136315138;
      v21 = sub_3F08(v14, v13, v35);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_0, v17, v18, "DirectInvocationUseCase#parseButtonPress unrecognized buttonPressed value: %s", v19, 0xCu);
      sub_306C(v20);
    }

    else
    {
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v8, v22, v4);

    v23 = sub_2CDFE0();
    v24 = sub_2CE680();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315138;
      v35[2] = a1;

      sub_20410(&qword_34D400, &unk_2D1240);
      v27 = sub_2CE2A0();
      v29 = sub_3F08(v27, v28, v35);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "DirectInvocationUseCase#parseButtonPress invalid user data for buttonPress: %s", v25, 0xCu);
      sub_306C(v26);
    }

    (*(v5 + 8))(v8, v4);
  }

  v30 = 0;
  v31 = -1;
LABEL_16:
  *a2 = v30;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = v31;
  return result;
}

double sub_238B10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_7:
    v7 = 0;
    v8 = -1;
    goto LABEL_8;
  }

  v5 = sub_4F538(0x64496D657469, 0xE600000000000000);
  if ((v6 & 1) == 0 || (sub_E2FC(*(a1 + 56) + 32 * v5, v12), (swift_dynamicCast() & 1) == 0))
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = v10;
  v7 = v11;
  v8 = 3;
LABEL_8:
  *a2 = v4;
  *(a2 + 8) = v7;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = v8;
  return result;
}

uint64_t sub_238BC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    v11 = 0;
    v10 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_32;
  }

  v3 = result;
  if (*(result + 16) && (result = sub_4F538(0x7078456F69647561, 0xEF65636E65697265), (v4 & 1) != 0) && (sub_E2FC(*(v3 + 56) + 32 * result, v17), result = swift_dynamicCast(), (result & 1) != 0))
  {
    sub_525D4(v15, v16);
    v5 = _s23AudioFlowDelegatePlugin13ShimUtilitiesV011deserializeA10Experience05audioH4Data21SiriInformationSearch0aH0CSg10Foundation0J0VSg_tFZ_0(v15, v16);
    sub_52628(v15, v16);
    result = sub_52628(v15, v16);
    if (!*(v3 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_17;
    }
  }

  result = sub_4F538(0x656D616E656C6966, 0xE800000000000000);
  if (v6)
  {
    sub_E2FC(*(v3 + 56) + 32 * result, v17);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }

    if (result)
    {
      v8 = v16;
    }

    else
    {
      v8 = 0;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  v8 = 0;
  if (!*(v3 + 16))
  {
    goto LABEL_27;
  }

LABEL_18:
  result = sub_4F538(0x726577736E61, 0xE600000000000000);
  if (v9)
  {
    sub_E2FC(*(v3 + 56) + 32 * result, v17);
    result = swift_dynamicCast();
    if (result)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    if (result)
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v3 + 16);
    if (!v12)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = 0;
  v11 = 0;
  v12 = *(v3 + 16);
  if (!v12)
  {
LABEL_33:
    v14 = 0;
    goto LABEL_34;
  }

LABEL_28:
  result = sub_4F538(0x726F727265, 0xE500000000000000);
  if ((v13 & 1) == 0)
  {
LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

  sub_E2FC(*(v3 + 56) + 32 * result, v17);
  result = swift_dynamicCast();
  v12 = v15;
  v14 = v16;
  if (!result)
  {
    v12 = 0;
    v14 = 0;
  }

LABEL_34:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = 4;
  return result;
}

void sub_238E4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CA810();
  v61 = *(v4 - 8);
  *&v62 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v58 - v8;
  v10 = sub_2CE000();
  *&v63 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v58 - v14;
  v17 = sub_2CA7F0();
  v18 = v16;
  if (v17 == 0xD000000000000033 && 0x80000000002DE4F0 == v16 || (sub_2CEEA0() & 1) != 0)
  {

    v19 = sub_2CA800();
    sub_238164(v19, v66);
LABEL_5:
    v62 = v66[0];
    v63 = v66[1];
    v20 = v67;
    v21 = v68;
    v22 = v69;
    v23 = v70;

    v24 = v62;
    v25 = v63;
    goto LABEL_6;
  }

  if (v17 == 0xD00000000000002CLL && 0x80000000002DA380 == v18 || (sub_2CEEA0() & 1) != 0)
  {

    v26 = sub_2CA800();
    sub_238580(v26, v66);
    goto LABEL_5;
  }

  if (v17 == 0xD000000000000031 && 0x80000000002DFFA0 == v18 || (sub_2CEEA0() & 1) != 0)
  {

    v27 = sub_2CA800();
    sub_238684(v27, v66);
    goto LABEL_5;
  }

  if (v17 == 0xD000000000000034 && 0x80000000002DA910 == v18 || (sub_2CEEA0() & 1) != 0)
  {

    v28 = sub_2CA800();
    sub_238B10(v28, v66);
    goto LABEL_5;
  }

  if (v17 == 0xD000000000000029 && 0x80000000002DE570 == v18)
  {

    v29 = v10;
LABEL_23:
    v31 = v63;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v32 = sub_3ED0(v29, static Logger.default);
    swift_beginAccess();
    (*(v31 + 16))(v15, v32, v29);
    v60 = v29;
    v33 = v61;
    v34 = v62;
    (*(v61 + 16))(v9, a1, v62);
    v35 = sub_2CDFE0();
    v36 = sub_2CE670();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v58 = v37;
      v59 = swift_slowAlloc();
      *&v66[0] = v59;
      *v37 = 136315138;
      v64 = sub_2CA800();
      sub_20410(&qword_34D400, &unk_2D1240);
      v38 = sub_2CE2A0();
      v39 = v34;
      v41 = v40;
      (*(v33 + 8))(v9, v39);
      v42 = sub_3F08(v38, v41, v66);

      v43 = v58;
      *(v58 + 1) = v42;
      _os_log_impl(&dword_0, v35, v36, "DirectInvocationUseCase#from shim: %s", v43, 0xCu);
      sub_306C(v59);
    }

    else
    {

      (*(v33 + 8))(v9, v34);
    }

    (*(v31 + 8))(v15, v60);
    v44 = sub_2CA800();
    sub_238BC4(v44, v66);
    goto LABEL_5;
  }

  v30 = sub_2CEEA0();

  v29 = v10;
  if (v30)
  {
    goto LABEL_23;
  }

  v45 = v63;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v46 = sub_3ED0(v29, static Logger.default);
  swift_beginAccess();
  (*(v45 + 16))(v13, v46, v29);
  v47 = v29;
  v48 = v61;
  v49 = v62;
  (*(v61 + 16))(v7, a1, v62);
  v50 = sub_2CDFE0();
  v51 = sub_2CE680();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v60 = v47;
    v53 = v52;
    v59 = swift_slowAlloc();
    v65[0] = v59;
    *v53 = 136315138;
    v58 = sub_2CA7F0();
    v55 = v54;
    (*(v48 + 8))(v7, v49);
    v56 = v45;
    v57 = sub_3F08(v58, v55, v65);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_0, v50, v51, "DirectInvocationUseCase#from unsupported identifier: %s", v53, 0xCu);
    sub_306C(v59);

    (*(v56 + 8))(v13, v60);
  }

  else
  {

    (*(v48 + 8))(v7, v49);
    (*(v45 + 8))(v13, v47);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0uLL;
  v23 = -1;
  v25 = 0uLL;
LABEL_6:
  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
}

unint64_t sub_2395F0()
{
  result = qword_355AA0;
  if (!qword_355AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355AA0);
  }

  return result;
}

uint64_t sub_239644(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v73 = a4;
  v79 = a2;
  v80 = a3;
  v7 = sub_2CDFD0();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = *(v83 + 64);
  v9 = __chkstk_darwin(v7);
  v10 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v72 - v11;
  v12 = sub_2CE000();
  v81 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v77 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v72 - v15;
  v90 = a1;

  if (IsAppleInternalBuild())
  {
    v17 = objc_allocWithZone(NSUserDefaults);
    v18 = sub_2CE260();
    v19 = [v17 initWithSuiteName:v18];

    if (v19)
    {
      v20 = sub_2CE260();
      v21 = [v19 stringForKey:v20];

      if (v21)
      {
        v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        v78 = v5;
        v22 = sub_2CE270();
        v24 = v23;

        v86 = &type metadata for String;
        *&v85 = v22;
        *(&v85 + 1) = v24;

        sub_270DC4(&v85, 0xD000000000000012, 0x80000000002E06F0, v87);
        sub_30B8(v87, &qword_34CEA0, &qword_2D0FC0);
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v25 = sub_3ED0(v12, static Logger.default);
        swift_beginAccess();
        v26 = v81;
        (*(v81 + 16))(v16, v25, v12);

        v27 = sub_2CDFE0();
        v28 = sub_2CE670();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *&v87[0] = v30;
          *v29 = 136315138;
          v31 = sub_3F08(v22, v24, v87);

          *(v29 + 4) = v31;
          _os_log_impl(&dword_0, v27, v28, "PlayMediaCatDialogService#intentHandledResponse overriding Siri response for testing with: %s", v29, 0xCu);
          sub_306C(v30);
        }

        else
        {
        }

        (*(v26 + 8))(v16, v12);
        v5 = v78;
        v10 = v76;
      }
    }
  }

  v78 = v12;
  v32 = v5[5];
  v74 = v5[4];
  v72 = v32;
  v33 = v5[6];
  v76 = v90;
  v34 = swift_allocObject();
  *(v34 + 16) = v73;
  *(v34 + 24) = v75;
  v35 = qword_34BF98;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_35F760;
  v37 = v82;
  sub_2CDFB0();
  v39 = v83;
  v38 = v84;
  (*(v83 + 16))(v10, v37, v84);
  v40 = (*(v39 + 80) + 33) & ~*(v39 + 80);
  v41 = v10;
  v42 = (v8 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = "catServiceExecute";
  *(v43 + 24) = 17;
  *(v43 + 32) = 2;
  (*(v39 + 32))(v43 + v40, v41, v38);
  v44 = (v43 + v42);
  *v44 = sub_2535A8;
  v44[1] = v34;
  v75 = v34;

  v45 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2D0E40;
  *(v46 + 56) = &type metadata for String;
  v47 = sub_1087C();
  v48 = v72;
  *(v46 + 32) = v72;
  *(v46 + 40) = v33;
  *(v46 + 96) = &type metadata for String;
  *(v46 + 104) = v47;
  *(v46 + 64) = v47;
  *(v46 + 72) = 2036427856;
  *(v46 + 80) = 0xE400000000000000;

  LOBYTE(v70) = 2;
  sub_2CDF90(v45, &dword_0, v36, "catServiceExecute", 17, 2, v37, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v70, v46);

  v49 = swift_allocObject();
  *(v49 + 16) = sub_13D80;
  *(v49 + 24) = v43;
  v50 = qword_34BF58;

  v51 = v48;
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = v78;
  v53 = sub_3ED0(v78, static Logger.default);
  swift_beginAccess();
  v54 = v81;
  v55 = v77;
  (*(v81 + 16))(v77, v53, v52);

  v56 = sub_2CDFE0();
  v57 = sub_2CE660();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v73 = v49;
    v88 = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_3F08(v51, v33, &v88);
    *(v58 + 12) = 2080;
    *(v58 + 14) = sub_3F08(2036427856, 0xE400000000000000, &v88);
    _os_log_impl(&dword_0, v56, v57, "Evaluating CAT family:%s id:%s...", v58, 0x16u);
    swift_arrayDestroy();
    v49 = v73;
  }

  (*(v54 + 8))(v55, v52);
  v88 = v51;
  v89 = v33;

  v91._countAndFlagsBits = 35;
  v91._object = 0xE100000000000000;
  sub_2CE350(v91);
  v92._countAndFlagsBits = 2036427856;
  v92._object = 0xE400000000000000;
  sub_2CE350(v92);
  v61 = v88;
  v60 = v89;
  v62 = sub_2CB460();
  if (!v62)
  {
    sub_2CB180();
    v62 = sub_2CB170();
  }

  v63 = v62;
  v64 = swift_allocObject();
  v64[2] = v63;
  v64[3] = sub_13DB4;
  v64[4] = v49;
  v65 = sub_2CB180();
  __chkstk_darwin(v65);
  v66 = v76;
  *(&v72 - 10) = v74;
  *(&v72 - 9) = v66;
  v67 = v80;
  *(&v72 - 8) = v79;
  *(&v72 - 7) = v67;
  *(&v72 - 6) = 0;
  *(&v72 - 5) = v61;
  v69 = v60;
  v70 = sub_3E06C;
  v71 = v64;

  sub_2CB0F0();

  return (*(v83 + 8))(v82, v84);
}

uint64_t sub_239FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E06B0;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD00000000000001ELL;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD00000000000001ELL, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD00000000000001ELL;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23A680(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_20410(&unk_3519A0, &qword_2D0980);
  v5 = __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v11 - v8);
  sub_188844(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v9 = *v7;
  }

  else
  {
    sub_24BE0(v7, v9);
  }

  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_30B8(v9, &unk_3519A0, &qword_2D0980);
}

uint64_t sub_23A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0690;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000013;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000013, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000013;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0670;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000015;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000015, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000015;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23B4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0650;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000010;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000010, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000010;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23BBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v8 = sub_2CE000();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v17 = v5[5];
  v59 = v5[4];
  v66 = v17;
  v18 = v5[6];
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v67 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v56 = v11;
  v25 = *(v11 + 32);
  v64 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v60 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  *(v28 + 32) = v66;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0x63646F5079616C50;
  *(v28 + 80) = 0xEB00000000747361;

  LOBYTE(v51) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v67, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v51, v28);

  v30 = swift_allocObject();
  *(v30 + 16) = sub_13D80;
  *(v30 + 24) = v24;
  v54 = v30;
  v55 = v24;
  v31 = qword_34BF58;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = v58;
  v33 = sub_3ED0(v58, static Logger.default);
  swift_beginAccess();
  v34 = v57;
  v35 = v65;
  (*(v57 + 16))(v65, v33, v32);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v66;
    *(v38 + 4) = sub_3F08(v66, v18, &v68);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_3F08(0x63646F5079616C50, 0xEB00000000747361, &v68);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    (*(v34 + 8))(v65, v32);
  }

  else
  {

    (*(v34 + 8))(v35, v32);
    v39 = v66;
  }

  v68 = v39;
  v69 = v18;

  v70._countAndFlagsBits = 35;
  v70._object = 0xE100000000000000;
  sub_2CE350(v70);
  v71._countAndFlagsBits = 0x63646F5079616C50;
  v71._object = 0xEB00000000747361;
  sub_2CE350(v71);
  v40 = v68;
  v41 = v69;
  v42 = sub_2CB460();
  if (!v42)
  {
    sub_2CB180();
    v42 = sub_2CB170();
  }

  v43 = v42;
  v44 = v56;
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = sub_13DB4;
  v45[4] = v54;
  v46 = sub_2CB180();
  __chkstk_darwin(v46);
  v48 = v61;
  v47 = v62;
  *(&v53 - 10) = v59;
  *(&v53 - 9) = v48;
  *(&v53 - 8) = v47;
  *(&v53 - 7) = v63;
  *(&v53 - 6) = 0;
  *(&v53 - 5) = v40;
  v50 = v41;
  v51 = sub_3E06C;
  v52 = v45;

  sub_2CB0F0();

  return (*(v44 + 8))(v67, v64);
}

uint64_t sub_23C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v8 = sub_2CE000();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v17 = v5[5];
  v59 = v5[4];
  v66 = v17;
  v18 = v5[6];
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v67 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v56 = v11;
  v25 = *(v11 + 32);
  v64 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v60 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  *(v28 + 32) = v66;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0x7377654E79616C50;
  *(v28 + 80) = 0xEF74736163646F50;

  LOBYTE(v51) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v67, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v51, v28);

  v30 = swift_allocObject();
  *(v30 + 16) = sub_13D80;
  *(v30 + 24) = v24;
  v54 = v30;
  v55 = v24;
  v31 = qword_34BF58;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = v58;
  v33 = sub_3ED0(v58, static Logger.default);
  swift_beginAccess();
  v34 = v57;
  v35 = v65;
  (*(v57 + 16))(v65, v33, v32);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v66;
    *(v38 + 4) = sub_3F08(v66, v18, &v68);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_3F08(0x7377654E79616C50, 0xEF74736163646F50, &v68);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    (*(v34 + 8))(v65, v32);
  }

  else
  {

    (*(v34 + 8))(v35, v32);
    v39 = v66;
  }

  v68 = v39;
  v69 = v18;

  v70._countAndFlagsBits = 35;
  v70._object = 0xE100000000000000;
  sub_2CE350(v70);
  v71._countAndFlagsBits = 0x7377654E79616C50;
  v71._object = 0xEF74736163646F50;
  sub_2CE350(v71);
  v40 = v68;
  v41 = v69;
  v42 = sub_2CB460();
  if (!v42)
  {
    sub_2CB180();
    v42 = sub_2CB170();
  }

  v43 = v42;
  v44 = v56;
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = sub_13DB4;
  v45[4] = v54;
  v46 = sub_2CB180();
  __chkstk_darwin(v46);
  v48 = v61;
  v47 = v62;
  *(&v53 - 10) = v59;
  *(&v53 - 9) = v48;
  *(&v53 - 8) = v47;
  *(&v53 - 7) = v63;
  *(&v53 - 6) = 0;
  *(&v53 - 5) = v40;
  v50 = v41;
  v51 = sub_3E06C;
  v52 = v45;

  sub_2CB0F0();

  return (*(v44 + 8))(v67, v64);
}

uint64_t sub_23C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0630;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD00000000000001ALL;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD00000000000001ALL, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD00000000000001ALL;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23CFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0600;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000020;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000020, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000020;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23D69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E05D0;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD00000000000002BLL;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD00000000000002BLL, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD00000000000002BLL;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23DD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E05A0;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000026;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000026, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000026;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23E3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0580;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000014;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000014, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000014;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23EAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0560;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000014;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000014, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000014;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0540;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000015;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000015, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000015;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v8 = sub_2CE000();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v17 = v5[5];
  v59 = v5[4];
  v66 = v17;
  v18 = v5[6];
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v67 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v56 = v11;
  v25 = *(v11 + 32);
  v64 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v60 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  *(v28 + 32) = v66;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  strcpy((v28 + 72), "PlaySomething");
  *(v28 + 86) = -4864;

  LOBYTE(v51) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v67, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v51, v28);

  v30 = swift_allocObject();
  *(v30 + 16) = sub_13D80;
  *(v30 + 24) = v24;
  v54 = v30;
  v55 = v24;
  v31 = qword_34BF58;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = v58;
  v33 = sub_3ED0(v58, static Logger.default);
  swift_beginAccess();
  v34 = v57;
  v35 = v65;
  (*(v57 + 16))(v65, v33, v32);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v66;
    *(v38 + 4) = sub_3F08(v66, v18, &v68);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_3F08(0x656D6F5379616C50, 0xED0000676E696874, &v68);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    (*(v34 + 8))(v65, v32);
  }

  else
  {

    (*(v34 + 8))(v35, v32);
    v39 = v66;
  }

  v68 = v39;
  v69 = v18;

  v70._countAndFlagsBits = 35;
  v70._object = 0xE100000000000000;
  sub_2CE350(v70);
  v71._countAndFlagsBits = 0x656D6F5379616C50;
  v71._object = 0xED0000676E696874;
  sub_2CE350(v71);
  v40 = v68;
  v41 = v69;
  v42 = sub_2CB460();
  if (!v42)
  {
    sub_2CB180();
    v42 = sub_2CB170();
  }

  v43 = v42;
  v44 = v56;
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = sub_13DB4;
  v45[4] = v54;
  v46 = sub_2CB180();
  __chkstk_darwin(v46);
  v48 = v61;
  v47 = v62;
  *(&v53 - 10) = v59;
  *(&v53 - 9) = v48;
  *(&v53 - 8) = v47;
  *(&v53 - 7) = v63;
  *(&v53 - 6) = 0;
  *(&v53 - 5) = v40;
  v50 = v41;
  v51 = sub_3E06C;
  v52 = v45;

  sub_2CB0F0();

  return (*(v44 + 8))(v67, v64);
}

uint64_t sub_23FEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0520;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_253584;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000010;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000010, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000010;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_240574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0500;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000013;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000013, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000013;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_240C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E04E0;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000015;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000015, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000015;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_2412CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E04C0;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000014;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000014, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000014;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_241978(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v52 = a3;
  v56 = a1;
  v57 = a2;
  v6 = sub_2CE000();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = v4[5];
  v55 = v4[4];
  v48 = v4[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v60 = v14;
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v51 = v9;
  v20 = *(v9 + 32);
  v58 = v8;
  v20(v19 + v17, v12);
  v21 = (v19 + v18);
  *v21 = v52;
  v21[1] = a4;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v50 = v15;
  *(v23 + 32) = v15;
  v25 = v48;
  *(v23 + 40) = v48;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0xD000000000000013;
  v52 = 0x80000000002E04A0;
  *(v23 + 80) = 0x80000000002E04A0;

  LOBYTE(v46) = 2;
  sub_2CDF90(v22, &dword_0, v16, "catServiceExecute", 17, 2, v60, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v46, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v49 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v54;
  v29 = sub_3ED0(v54, static Logger.default);
  swift_beginAccess();
  v30 = v53;
  v31 = v59;
  (*(v53 + 16))(v59, v29, v28);

  v32 = sub_2CDFE0();
  v33 = sub_2CE660();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v50;
    *(v34 + 4) = sub_3F08(v50, v25, &v61);
    *(v34 + 12) = 2080;
    v36 = v52;
    *(v34 + 14) = sub_3F08(0xD000000000000013, v52, &v61);
    _os_log_impl(&dword_0, v32, v33, "Evaluating CAT family:%s id:%s...", v34, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v59, v28);
  }

  else
  {

    (*(v30 + 8))(v31, v28);
    v36 = v52;
    v35 = v50;
  }

  v61 = v35;
  v62 = v25;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0xD000000000000013;
  v64._object = v36;
  sub_2CE350(v64);
  v38 = v61;
  v37 = v62;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v49;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  *(&v48 - 10) = v55;
  *(&v48 - 9) = &_swiftEmptyDictionarySingleton;
  v43 = v57;
  *(&v48 - 8) = v56;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = 0;
  *(&v48 - 5) = v38;
  v45 = v37;
  v46 = sub_3E06C;
  v47 = v41;

  sub_2CB0F0();

  return (*(v51 + 8))(v60, v58);
}

uint64_t sub_241FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0480;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000014;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000014, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000014;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24267C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = v5[5];
  v56 = v5[4];
  v63 = v16;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v57 = v10;
  v20 = *(v10 + 32);
  v61 = v9;
  v20(v19 + v18, v13);
  v21 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v53;
  v21[1] = a5;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "FollowUpFailed");
  *(v23 + 87) = -18;

  LOBYTE(v47) = 2;
  v53 = v15;
  sub_2CDF90(v22, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v51 = v26;
  v52 = v19;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x7055776F6C6C6F46, 0xEE0064656C696146, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x7055776F6C6C6F46;
  v67._object = 0xEE0064656C696146;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_242D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0460;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000016;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000016, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000016;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_243394(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v134 = a5;
  v133 = a4;
  v129 = a3;
  v123 = sub_2CE150();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v119 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2CE180();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v131 = &v116 - v17;
  __chkstk_darwin(v16);
  v137 = &v116 - v18;
  v19 = sub_2CDFD0();
  v140 = *(v19 - 8);
  v141 = v19;
  v20 = *(v140 + 64);
  v21 = __chkstk_darwin(v19);
  v22 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v139 = &v116 - v23;
  sub_2CCF90();
  v24 = sub_2CBDB0();

  v25 = "HandleFailureThirdParty";
  v130 = v24;
  if (v24)
  {
    v25 = "HandleFailureFirstParty";
  }

  v127 = (v25 - 32) | 0x8000000000000000;
  v128 = a2;
  v26 = sub_2CCF90();
  v28 = 0x416E776F6E6B6E55;
  if (v27)
  {
    v28 = v26;
  }

  v136 = v28;
  v29 = 0xEA00000000007070;
  if (v27)
  {
    v29 = v27;
  }

  v138 = v29;
  v154 = a1;
  v30 = sub_2CC230();

  v135 = v30;
  v31 = sub_2CC200();
  v33 = *(a1 + 16);
  v132 = a1;
  if (!v33)
  {

    goto LABEL_11;
  }

  sub_4F538(v31, v32);
  v35 = v34;

  v143 = a1;
  if ((v35 & 1) == 0)
  {
LABEL_11:
    v153 = &type metadata for String;
    *&v152 = v136;
    *(&v152 + 1) = v138;

    v36 = sub_2CC200();
    sub_270DC4(&v152, v36, v37, &aBlock);

    sub_30B8(&aBlock, &qword_34CEA0, &qword_2D0FC0);
    v143 = v154;
  }

  v117 = v15;
  v144 = v12;
  v142 = v11;
  v38 = v6[5];
  v125 = v6[4];
  v39 = v6[6];
  v40 = v141;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v41 = qword_35F760;
  v42 = v139;
  sub_2CDFB0();
  v43 = v140;
  (*(v140 + 16))(v22, v42, v40);
  v44 = (*(v43 + 80) + 33) & ~*(v43 + 80);
  v45 = swift_allocObject();
  v46 = v40;
  v47 = v45;
  *(v45 + 16) = "catServiceExecute";
  *(v45 + 24) = 17;
  *(v45 + 32) = 2;
  (*(v43 + 32))(v45 + v44, v22, v46);
  v48 = (v47 + ((v20 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
  v49 = v134;
  *v48 = v133;
  v48[1] = v49;

  v50 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_2D0E40;
  *(v51 + 56) = &type metadata for String;
  v52 = sub_1087C();
  v124 = v38;
  *(v51 + 32) = v38;
  *(v51 + 40) = v39;
  *(v51 + 96) = &type metadata for String;
  *(v51 + 104) = v52;
  *(v51 + 64) = v52;
  *(v51 + 72) = 0xD000000000000017;
  v53 = v127;
  *(v51 + 80) = v127;

  LOBYTE(v114) = 2;
  sub_2CDF90(v50, &dword_0, v41, "catServiceExecute", 17, 2, v42, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v114, v51);

  v54 = swift_allocObject();
  *(v54 + 16) = sub_13D80;
  *(v54 + 24) = v47;
  v55 = qword_34BF58;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = v142;
  v57 = sub_3ED0(v142, static Logger.default);
  swift_beginAccess();
  v58 = v144;
  v59 = *(v144 + 16);
  v60 = v137;
  v134 = v57;
  v126 = v144 + 16;
  v133 = v59;
  v59(v137, v57, v56);

  v61 = sub_2CDFE0();
  v62 = sub_2CE660();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v63 = 136315394;
    v64 = v124;
    *(v63 + 4) = sub_3F08(v124, v39, &aBlock);
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_3F08(0xD000000000000017, v53, &aBlock);
    _os_log_impl(&dword_0, v61, v62, "Evaluating CAT family:%s id:%s...", v63, 0x16u);
    swift_arrayDestroy();

    v65 = v137;
    v137 = *(v144 + 8);
    (v137)(v65, v56);
  }

  else
  {

    v137 = *(v58 + 8);
    (v137)(v60, v56);
    v64 = v124;
  }

  *&aBlock = v64;
  *(&aBlock + 1) = v39;

  v155._countAndFlagsBits = 35;
  v155._object = 0xE100000000000000;
  sub_2CE350(v155);
  v156._countAndFlagsBits = 0xD000000000000017;
  v156._object = v53;
  sub_2CE350(v156);
  v66 = aBlock;
  v67 = sub_2CB460();
  if (!v67)
  {
    sub_2CB180();
    v67 = sub_2CB170();
  }

  v68 = v67;
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = sub_13DB4;
  v69[4] = v54;
  v70 = sub_2CB180();
  __chkstk_darwin(v70);
  v71 = v143;
  *(&v116 - 10) = v125;
  *(&v116 - 9) = v71;
  v72 = v129;
  *(&v116 - 8) = v128;
  *(&v116 - 7) = v72;
  *(&v116 - 6) = 0;
  *(&v116 - 5) = v66;
  v113 = *(&v66 + 1);
  v114 = sub_3E06C;
  v115 = v69;

  sub_2CB0F0();

  (*(v140 + 8))(v139, v141);
  v73 = v131;
  v74 = v142;
  v133(v131, v134, v142);

  v75 = sub_2CDFE0();
  v76 = sub_2CE690();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&aBlock = v78;
    *v77 = 136315138;
    v79 = sub_3F08(0xD000000000000017, v53, &aBlock);

    *(v77 + 4) = v79;
    _os_log_impl(&dword_0, v75, v76, "PlayMediaCatDialogService#makeFailureHandlingIntentDialog, %s", v77, 0xCu);
    sub_306C(v78);
  }

  else
  {
  }

  v80 = v73;
  v81 = v137;
  (v137)(v80, v74);
  v82 = v132;
  if ((v130 & 1) == 0)
  {
    if (*(v132 + 16) && (v96 = sub_4F538(0xD000000000000012, 0x80000000002DEA70), (v97 & 1) != 0) && (sub_E2FC(*(v82 + 56) + 32 * v96, &aBlock), (swift_dynamicCast() & 1) != 0))
    {
      v98 = v145;
    }

    else
    {

      v98 = 0;
    }

    *&aBlock = v98;
    v99 = sub_2CEE70();
    v101 = v100;
    v102 = sub_2CBA10();
    v103 = swift_allocObject();
    v104 = v138;
    v103[2] = v136;
    v103[3] = v104;
    v103[4] = v99;
    v103[5] = v101;
    v150 = sub_253558;
    v151 = v103;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v148 = sub_A4294;
    v149 = &unk_33B1D0;
    v105 = _Block_copy(&aBlock);
    v106 = v118;
    sub_2CE160();
    v145 = _swiftEmptyArrayStorage;
    sub_10101C();
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v107 = v119;
    v108 = v123;
    sub_2CEC10();
    sub_2CE9C0();
    _Block_release(v105);

    goto LABEL_39;
  }

  if (*(v82 + 16))
  {
    v83 = sub_4F538(0x457363697274654DLL, 0xEC000000726F7272);
    if (v84)
    {
      sub_E2FC(*(v82 + 56) + 32 * v83, &aBlock);
      if (swift_dynamicCast())
      {
        v86 = v145;
        v85 = v146;
        v87 = HIBYTE(v146) & 0xF;
        if ((v146 & 0x2000000000000000) == 0)
        {
          v87 = v145 & 0xFFFFFFFFFFFFLL;
        }

        if (v87)
        {
          v88 = v117;
          v133(v117, v134, v74);

          v89 = sub_2CDFE0();
          v90 = sub_2CE680();

          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = v74;
            v93 = swift_slowAlloc();
            *&aBlock = v93;
            *v91 = 136315138;
            *(v91 + 4) = sub_3F08(v86, v85, &aBlock);
            _os_log_impl(&dword_0, v89, v90, "Submitting FirstParty error: %s", v91, 0xCu);
            sub_306C(v93);

            v94 = v88;
            v95 = v92;
          }

          else
          {

            v94 = v88;
            v95 = v74;
          }

          (v81)(v94, v95);
          v110 = sub_2CBA10();
          v111 = swift_allocObject();
          *(v111 + 16) = v86;
          *(v111 + 24) = v85;
          v150 = sub_25357C;
          v151 = v111;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v148 = sub_A4294;
          v149 = &unk_33B220;
          v112 = _Block_copy(&aBlock);
          v106 = v118;
          sub_2CE160();
          v145 = _swiftEmptyArrayStorage;
          sub_10101C();
          sub_20410(&qword_34DD48, &qword_2D5F80);
          sub_7DDE8();
          v107 = v119;
          v108 = v123;
          sub_2CEC10();
          sub_2CE9C0();
          _Block_release(v112);

LABEL_39:
          (*(v122 + 8))(v107, v108);
          (*(v120 + 8))(v106, v121);
        }
      }
    }
  }

  return sub_2CC1E0();
}

uint64_t sub_2443F0(uint64_t a1, uint64_t a2)
{
  v13[1] = a2;
  v2 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = sub_2C9C20();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB4A0();
  sub_2CB490();
  (*(v6 + 104))(v8, enum case for ActivityType.failed(_:), v5);
  v9 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v10 = sub_2C98F0();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v4, v9, v10);
  (*(v11 + 56))(v4, 0, 1, v10);
  sub_2CB470();

  sub_30B8(v4, &qword_34CB78, &unk_2D0D80);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_244620(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18._countAndFlagsBits = a3;
  v18._object = a4;
  v17 = a1;
  v5 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_2C9C20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB4A0();
  sub_2CB490();
  (*(v9 + 104))(v11, enum case for ActivityType.failed(_:), v8);
  v12 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v13 = sub_2C98F0();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v7, v12, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  v19 = v17;
  v20 = a2;

  v21._countAndFlagsBits = 61;
  v21._object = 0xE100000000000000;
  sub_2CE350(v21);

  sub_2CE350(v18);

  sub_2CB470();

  sub_30B8(v7, &qword_34CB78, &unk_2D0D80);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2448A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC120;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_244F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E03E0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000012;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000012, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_2455A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E03C0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000014;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000014, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000014;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_245C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E03A0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001CLL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001CLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001CLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_2462B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0370;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000022;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000022, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000022;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_246934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0350;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_246FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0F0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000029;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000029, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000029;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_247CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_248344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC050;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_2489C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0300;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000043;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000043, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000043;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24904C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E02E0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000013;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000013, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000013;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_2496D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E02B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000021;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000021, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000021;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_249D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0270;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000035;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000035, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000035;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24A3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0240;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0210;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002BLL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000002BLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000002BLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}