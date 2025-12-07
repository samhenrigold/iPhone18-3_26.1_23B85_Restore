uint64_t sub_1001130C4(uint64_t a1, uint64_t a2)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 1;
  }

  v3 = 0;
  v29 = a1 + 32;
  v4 = a2 + 56;
  while (*(a2 + 16))
  {
    v5 = *(v29 + v3);
    sub_1004DF26C();
    ApplicationCapabilities.Service.description.getter();
    sub_1004DD55C();

    v6 = sub_1004DF2BC();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      break;
    }

    v30 = v3 + 1;
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 <= 4)
      {
        v13 = 0x6C6169636F73;
        if (v10 != 3)
        {
          v13 = 0x6F69646172;
        }

        v14 = 0xE600000000000000;
        if (v10 != 3)
        {
          v14 = 0xE500000000000000;
        }

        if (v10 == 2)
        {
          v13 = 0xD000000000000013;
          v14 = 0x80000001004E9570;
        }

        v15 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v8))
        {
          v15 = 0x636973756DLL;
        }

        v16 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v8))
        {
          v16 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }
      }

      else if (*(*(a2 + 48) + v8) > 7u)
      {
        if (v10 == 8)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004E95B0;
        }

        else if (v10 == 9)
        {
          v11 = 0xD000000000000011;
          v12 = 0x80000001004E95D0;
        }

        else
        {
          v11 = 0x6C62616E45696C6DLL;
          v12 = 0xEA00000000006465;
        }
      }

      else if (v10 == 5)
      {
        v12 = 0xE600000000000000;
        v11 = 0x73656E757469;
      }

      else
      {
        if (v10 == 6)
        {
          v11 = 0x74634170756F7267;
        }

        else
        {
          v11 = 0x746963696C707865;
        }

        if (v10 == 6)
        {
          v12 = 0xED00007974697669;
        }

        else
        {
          v12 = 0xEF746E65746E6F43;
        }
      }

      if (v5 > 4)
      {
        v17 = 0xD000000000000011;
        if (v5 != 9)
        {
          v17 = 0x6C62616E45696C6DLL;
        }

        v18 = 0xEA00000000006465;
        if (v5 == 9)
        {
          v18 = 0x80000001004E95D0;
        }

        if (v5 == 8)
        {
          v17 = 0xD000000000000013;
          v18 = 0x80000001004E95B0;
        }

        v19 = 0x746963696C707865;
        if (v5 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        v20 = 0xEF746E65746E6F43;
        if (v5 == 6)
        {
          v20 = 0xED00007974697669;
        }

        if (v5 == 5)
        {
          v19 = 0x73656E757469;
          v20 = 0xE600000000000000;
        }

        if (v5 <= 7)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v5 <= 7)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        if (v11 == v21)
        {
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (v5 <= 1)
      {
        break;
      }

      v23 = 0x6C6169636F73;
      if (v5 != 3)
      {
        v23 = 0x6F69646172;
      }

      v24 = 0xE600000000000000;
      if (v5 != 3)
      {
        v24 = 0xE500000000000000;
      }

      if (v5 == 2)
      {
        v25 = 0xD000000000000013;
      }

      else
      {
        v25 = v23;
      }

      if (v5 == 2)
      {
        v22 = 0x80000001004E9570;
      }

      else
      {
        v22 = v24;
      }

      if (v11 == v25)
      {
        goto LABEL_74;
      }

LABEL_75:
      v26 = sub_1004DF08C();

      if (v26)
      {
        goto LABEL_80;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v5)
    {
      v22 = 0xE500000000000000;
      if (v11 == 0x636973756DLL)
      {
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    v22 = 0xEB00000000736F65;
    if (v11 != 0x646956636973756DLL)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (v12 != v22)
    {
      goto LABEL_75;
    }

LABEL_80:
    v3 = v30;
    if (v30 == v28)
    {
      return 1;
    }
  }

  return 0;
}

void sub_100113500(unsigned __int8 a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_59:
    if (a1 == 2)
    {
      v42 = &off_1005D10A0;
      sub_1000450C8(&off_1005D10C8);
    }

    return;
  }

  v3 = a2;
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
  v39 = v3;
  v40 = _swiftEmptyArrayStorage;
  v36 = a1;
  if (!v7)
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_9;
      }
    }

    if (*(v40 + 2))
    {
      return;
    }

    goto LABEL_59;
  }

  while (1)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17._rawValue = &off_1005D11E0;
    v43._countAndFlagsBits = v14;
    v43._object = v15;
    v18 = sub_1004DEE2C(v17, v43);

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v20 = 0x6269726373627573;
        v19 = 0xEA00000000007265;
      }

      else
      {
        if (v18 != 3)
        {
          goto LABEL_35;
        }

        v20 = 0x6275536563696F76;
        v19 = 0xEF72656269726373;
      }
    }

    else if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_35;
      }

      v19 = 0xE700000000000000;
      v20 = 0x63697373616C63;
    }

    else
    {
      v20 = 0x6564696365646E75;
      v19 = 0xE900000000000064;
    }

    v21 = 0x6275536563696F76;
    if (a1 == 2)
    {
      v21 = 0x6269726373627573;
    }

    v22 = 0xEF72656269726373;
    if (a1 == 2)
    {
      v22 = 0xEA00000000007265;
    }

    v23 = 0x6564696365646E75;
    if (a1)
    {
      v23 = 0x63697373616C63;
    }

    v24 = 0xE900000000000064;
    if (a1)
    {
      v24 = 0xE700000000000000;
    }

    v25 = a1 <= 1u ? v23 : v21;
    v26 = a1 <= 1u ? v24 : v22;
    if (v20 == v25 && v19 == v26)
    {
      break;
    }

    v27 = sub_1004DF08C();

    if (v27)
    {
      goto LABEL_38;
    }

LABEL_35:

    v3 = v39;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

LABEL_38:

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v42 = &off_1005D10A0;
      sub_1000450C8(&off_1005D10C8);
      a1 = v36;
      v28 = v42;
    }

    else
    {
      v28 = &off_1005D10F0;
    }

LABEL_44:
    v38 = v28;
  }

  else
  {
    v38 = &off_1005D1050;
    if (!a1)
    {
      v28 = &off_1005D1078;
      goto LABEL_44;
    }
  }

  v37 = *(v16 + 16);
  if (!v37)
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_56:

    goto LABEL_35;
  }

  v29 = 0;
  v40 = _swiftEmptyArrayStorage;
  while (v29 < *(v16 + 16))
  {
    v42 = *(v16 + 32 + 8 * v29);

    sub_100110EF8(&v42, v38, &v41);

    v31 = v41;
    if ((v41 & 0xFF00) != 0x200)
    {
      v32 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_10003A5A8(0, *(v40 + 2) + 1, 1, v40);
      }

      v33 = v32;
      v34 = *(v32 + 2);
      v40 = v33;
      v35 = *(v33 + 3);
      if (v34 >= v35 >> 1)
      {
        v40 = sub_10003A5A8((v35 > 1), v34 + 1, 1, v40);
      }

      *(v40 + 2) = v34 + 1;
      v30 = &v40[2 * v34];
      v30[32] = v31;
      v30[33] = HIBYTE(v31) & 1;
      a1 = v36;
    }

    if (v37 == ++v29)
    {
      goto LABEL_56;
    }
  }

LABEL_63:
  __break(1u);
}

id sub_1001139A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = objc_opt_self();
  result = [v6 sharedCloudController];
  if (result)
  {
    v8 = result;
    v9 = [result hasProperNetworkConditionsToShowCloudMedia];

    *(&v85 + 1) = v9;
    *(&v85 + 1) = 0;
    *&v86 = 0;
    *&v87 = &_swiftEmptySetSingleton;
    *(&v87 + 1) = &_swiftEmptySetSingleton;
    *v88 = 0x7FFFFFFFFFFFFFFFLL;
    memset(&v88[8], 0, 32);
    v10 = objc_opt_self();
    v11 = [v10 sharedController];
    v12 = [v11 musicSubscriptionStatus];

    v13 = 1;
    LOBYTE(v89) = 1;
    *(&v89 + 1) = sub_100112B70(_swiftEmptyArrayStorage);
    LOBYTE(v90) = v14;
    *(&v90 + 1) = v15;
    v16 = [v10 sharedController];
    v17 = [objc_opt_self() sharedConnection];
    v72 = [v6 sharedCloudController];
    v74 = v16;
    v18 = [v16 musicSubscriptionStatus];
    v19 = v18;
    if (v18)
    {
      v71 = 2 * ([v18 capabilities] & 1);
    }

    else
    {
      v71 = 0;
    }

    v20 = [objc_opt_self() defaultIdentityStore];
    sub_10010F46C();
    v22 = v21;

    LOBYTE(v85) = (v22 & 1) == 0;
    if (v19)
    {
      v23 = v19;
      *&v86 = [v23 statusType];
      v24 = [v23 capabilities];

      *(&v85 + 1) = v24;
      v13 = (v24 & 1) == 0;
    }

    v25 = [objc_opt_self() sharedPrivacyInfo];
    v26 = [v25 privacyAcknowledgementRequiredForMusic];

    BYTE8(v86) = v26 ^ 1;
    v27 = v74;
    if (sub_1001105E0(v19, v74))
    {
      sub_1001BB36C(v84, 2);
    }

    if (qword_100633B70 != -1)
    {
      swift_once();
    }

    if ([qword_100637020 isRadioAvailable])
    {
      sub_1001BB36C(v84, 4);
    }

    if (sub_100110800(v17, a1))
    {
      sub_1001BB36C(v84, 3);
    }

    if (a1)
    {
      v28 = sub_1004DD3FC();
      v29 = [a1 BOOLValueForBagKey:v28];

      if (v29)
      {
        sub_1001BB36C(v84, 9);
      }
    }

    if (v17)
    {
      sub_1004DD43C();
      v30 = sub_1004DD3FC();

      v31 = [v17 effectiveBoolValueForSetting:v30];

      if (v31 != 2)
      {
        sub_1001BB36C(v84, 6);
      }

      sub_1004DD43C();
      v32 = sub_1004DD3FC();

      v33 = [v17 effectiveBoolValueForSetting:v32];

      if (v33 != 2)
      {
        sub_1001BB36C(v84, 0);
      }

      sub_1004DD43C();
      v34 = sub_1004DD3FC();

      v35 = [v17 effectiveBoolValueForSetting:v34];

      if (v35 != 2)
      {
        sub_1001BB36C(v84, 1);
      }

      sub_1004DD43C();
      v36 = sub_1004DD3FC();

      v37 = [v17 effectiveBoolValueForSetting:v36];

      if (v37 != 2)
      {
        sub_1001BB36C(v84, 5);
      }

      *&v88[40] = v19;
      v38 = v19;

      sub_1004DD43C();
      v39 = sub_1004DD3FC();

      v40 = [v17 effectiveBoolValueForSetting:v39];

      if (v40 != 2)
      {
        sub_1001BB36C(v84, 8);
      }

      sub_1004DD43C();
      v41 = sub_1004DD3FC();

      v42 = [v17 isBoolSettingLockedDownByRestrictions:v41];

      v27 = v74;
      if (v42)
      {
        sub_1001BB36C(v84, 7);
      }
    }

    else
    {
      *&v88[40] = v19;
      v43 = v19;
    }

    v44 = v87;
    sub_100004CB8(&unk_100637260, &unk_10051B120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005126C0;
    *(inited + 32) = 2;
    LOBYTE(v44) = sub_1001130C4(inited, v44);
    swift_setDeallocating();
    if (v44)
    {
      LOBYTE(v89) = v71;
      if (v19)
      {
        v46 = v19;
        if ([v46 statusType] == 3)
        {
          if (qword_100633B78 != -1)
          {
            swift_once();
          }

          v47 = sub_1004D966C();
          sub_100035430(v47, qword_100637028);
          v48 = sub_1004D964C();
          v49 = sub_1004DDF8C();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Unexpectedly found a Voice subscriber! 😡", v50, 2u);
            v27 = v74;
          }
        }
      }
    }

    else
    {
      v71 = 1;
    }

    if (a1)
    {
      v51 = v13;
    }

    else
    {
      v51 = 1;
    }

    if ((v51 & 1) == 0)
    {
      v52 = sub_100110A24();
      if (v52 != 2 && (v52 & 1) != 0)
      {
        v53 = sub_100110C78();
        if (v53 != 2 && (v53 & 1) != 0)
        {
          sub_1001BB36C(v84, 10);
        }
      }
    }

    v54 = v72;
    if (v72)
    {
      v55 = v72;
      if ([v55 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        v56 = 0;
      }

      else
      {
        v56 = [v55 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      v56 = 0;
    }

    BYTE1(v85) = v56;
    BYTE2(v85) = [v27 isCloudLibraryEnabled];
    v57 = a1;
    sub_100112984(a1, v88);
    if (a3)
    {
      *&v84[0] = &off_1005D1260;
      sub_1000450C8(&off_1005D1288);
      v58 = *&v84[0];
    }

    else
    {
      v59 = *(a2 + 16);
      __chkstk_darwin();
      os_unfair_lock_lock((v59 + 44));
      sub_100114C44((v59 + 16), v84);
      os_unfair_lock_unlock((v59 + 44));
      if (*&v84[0])
      {
        sub_100113500(v71, *&v84[0]);
        v58 = v60;

        v54 = v72;
      }

      else
      {
        v54 = v72;
        if (v71)
        {
          if (v71 == 1)
          {
            v58 = &off_1005D1050;
          }

          else
          {
            *&v84[0] = &off_1005D10A0;
            sub_1000450C8(&off_1005D10C8);
            v58 = *&v84[0];
          }
        }

        else
        {
          v58 = &off_1005D1078;
        }
      }
    }

    v61 = sub_100112164(v58, &v85);

    v62 = sub_100112B70(v61);
    LOBYTE(v61) = v63;
    v65 = v64;

    *(&v89 + 1) = v62;
    LOBYTE(v90) = v61;
    *(&v90 + 1) = v65;
    v80 = *&v88[16];
    v81 = *&v88[32];
    v76 = v85;
    v77 = v86;
    v78 = v87;
    v79 = *v88;
    v82 = v89;
    v83 = v90;
    v84[6] = v89;
    v84[7] = v90;
    v84[2] = v87;
    v84[3] = *v88;
    v84[0] = v85;
    v84[1] = v86;
    v84[4] = *&v88[16];
    v84[5] = *&v88[32];
    sub_100114A70(&v76, &v75);
    result = sub_100073E60(v84);
    v66 = v81;
    a4[4] = v80;
    a4[5] = v66;
    v67 = v83;
    a4[6] = v82;
    a4[7] = v67;
    v68 = v77;
    *a4 = v76;
    a4[1] = v68;
    v69 = v79;
    a4[2] = v78;
    a4[3] = v69;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t _s9MusicCore23ApplicationCapabilitiesV7ServiceO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D21D8;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t _s9MusicCore23ApplicationCapabilitiesV17SubscriptionStateO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D2300;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void sub_1001143D0()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if ((*(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) & 1) == 0)
  {
    **(v0 + 24) = 1;
    *(v1 + v2) = 1;
  }
}

uint64_t sub_1001143FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_10010D834(a1, v4, v5, v6);
}

unint64_t sub_1001144BC()
{
  result = qword_100637098;
  if (!qword_100637098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637098);
  }

  return result;
}

unint64_t sub_100114514()
{
  result = qword_1006370A0;
  if (!qword_1006370A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006370A0);
  }

  return result;
}

__n128 sub_100114570(uint64_t a1, __int128 *a2)
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

uint64_t sub_100114594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1001145DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Service(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Service(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10011479C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001147F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for ApplicationCapabilities.Controller(uint64_t a1)
{
  result = qword_1006370E0;
  if (!qword_1006370E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001148E0(uint64_t a1)
{
  sub_1001149C0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001149C0()
{
  if (!qword_1006370F0)
  {
    v0 = sub_1004D9B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1006370F0);
    }
  }
}

uint64_t sub_100114AA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100114B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[21];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035B28;

  return sub_10010EE50(a1, v4, v5, v6, (v1 + 5), v7);
}

unint64_t sub_100114BF0()
{
  result = qword_100637258;
  if (!qword_100637258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637258);
  }

  return result;
}

unint64_t sub_100114C60()
{
  result = qword_100637270;
  if (!qword_100637270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637270);
  }

  return result;
}

uint64_t sub_100114CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100114CFC(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100114D34()
{
  v1 = sub_100004CB8(&qword_1006372A8, &unk_10051B130);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_100114E04(void *a1)
{
  sub_100004CB8(&qword_1006372A8, &unk_10051B130);
  v3 = *(v1 + 16);

  return sub_10010FFC4(a1, v3);
}

uint64_t sub_100114E84()
{

  return swift_deallocObject();
}

uint64_t sub_100114F30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100114F70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_10010DE48(a1, v4, v5, v6);
}

double sub_100115034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10011504C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_10011508C()
{
  result = qword_1006372D0;
  if (!qword_1006372D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006372D0);
  }

  return result;
}

uint64_t sub_100115118()
{

  return swift_deallocObject();
}

id sub_100115168()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = v2;

  return v2;
}

unint64_t sub_1001151BC()
{
  result = qword_100637308;
  if (!qword_100637308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637308);
  }

  return result;
}

unint64_t sub_100115210(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D2380;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001152C8()
{
  type metadata accessor for BackgroundFetchManager();
  result = swift_initStaticObject();
  static BackgroundFetchManager.shared = result;
  return result;
}

uint64_t *BackgroundFetchManager.shared.unsafeMutableAddressor()
{
  if (qword_100633BF0 != -1)
  {
    swift_once();
  }

  return &static BackgroundFetchManager.shared;
}

uint64_t BackgroundFetchManager.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100115BF4();
  if (*(v6 + 16) && (v7 = sub_100056B84(a1, a2), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), , , *(v9 + 16)) && (v10 = sub_100056B84(7107189, 0xE300000000000000), (v11 & 1) != 0))
  {
    sub_10000904C(*(v9 + 56) + 32 * v10, v14);

    if (swift_dynamicCast())
    {
      sub_1004D805C();
    }
  }

  else
  {
  }

  v13 = sub_1004D809C();
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

void (*BackgroundFetchManager.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = a3;
  v6 = *(*(sub_100004CB8(&qword_100634B30, &unk_100513D70) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v6);
    v7 = malloc(v6);
  }

  a1[3] = v7;
  BackgroundFetchManager.subscript.getter(a2, a3, v7);
  return sub_100115560;
}

void sub_100115560(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_1000EAC4C(a1[3], v2);

    _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(v2, v5, v4);
    sub_10001074C(v3, &qword_100634B30, &unk_100513D70);
  }

  else
  {

    _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(v3, v5, v4);
  }

  free(v3);

  free(v2);
}

Swift::Void __swiftcall BackgroundFetchManager.removeAll()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1004DD3FC();
  [v0 removeObjectForKey:v1];
}

void sub_10011569C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), int a4, int a5, int a6, dispatch_group_t group)
{
  if (a3)
  {
    a3(a1, a2);
  }

  if (a2)
  {
    __chkstk_darwin();
    swift_errorRetain();
    UnfairLock.locked<A>(_:)(sub_100117088);
  }

  dispatch_group_leave(group);
}

uint64_t sub_100115770(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10003A9D8(0, v4[2] + 1, 1, v4);
    *a1 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10003A9D8((v6 > 1), v7 + 1, 1, v4);
    *a1 = v4;
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  swift_endAccess();
  return swift_errorRetain();
}

uint64_t sub_10011584C(uint64_t a1, uint64_t a2, void (*a3)())
{
  sub_100004CB8(&qword_1006373B8, &qword_10051B268);
  UnfairLock.locked<A>(_:)(sub_10011702C);
  a3();
}

void sub_1001158E4()
{
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  sub_100004CB8(&qword_1006372B0, &qword_1005128E0);
  UnfairLock.locked<A>(_:)(sub_100030C3C);
  v0 = v3;
  if (v3 && (sub_1001159E0(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x4122750000000000;
  }

  qword_100637310 = v2;
  byte_100637318 = v1;
}

uint64_t sub_1001159E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 valueForBagKey:ICURLBagKeyMusicCommon])
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v10[0] = v11;
  v10[1] = v12;
  if (!*(&v12 + 1))
  {
    result = sub_10001074C(v10, &qword_100638E60, &unk_10051A920);
    goto LABEL_16;
  }

  sub_100004CB8(&unk_100639F70, &unk_10051B270);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v11 + 16) || (v4 = sub_100056B84(0xD00000000000001ELL, 0x80000001004ED120), (v5 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_10000904C(*(v11 + 56) + 32 * v4, v10);

  sub_100004CB8(&qword_100636C18, &qword_10051AB20);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    *a2 = 0;
    v9 = 1;
    goto LABEL_17;
  }

  v6 = v11;
  sub_1004DEA4C();
  if (!*(v6 + 16) || (v7 = sub_100028F3C(v10), (v8 & 1) == 0))
  {

    result = sub_1000105EC(v10);
    goto LABEL_16;
  }

  sub_10000904C(*(v6 + 56) + 32 * v7, &v11);
  sub_1000105EC(v10);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  v9 = result ^ 1;
LABEL_17:
  *(a2 + 8) = v9;
  return result;
}

unint64_t sub_100115BF4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1004DD3FC();
  v2 = [v0 dictionaryForKey:v1];

  if (v2)
  {
    v3 = sub_1004DD21C();

    sub_1002BC84C(v3);
    v5 = v4;

    if (v5)
    {
      return v5;
    }
  }

  else
  {
  }

  v7 = sub_10005F5A4(_swiftEmptyArrayStorage);

  return v7;
}

uint64_t _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v8 = sub_1004D809C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EAC4C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001074C(v7, &qword_100634B30, &unk_100513D70);
    v25 = sub_100115BF4();
    sub_1002321BC(a2, a3);

    v12 = [objc_opt_self() standardUserDefaults];
    sub_100004CB8(&unk_100639F70, &unk_10051B270);
    isa = sub_1004DD1FC().super.isa;

    v14 = sub_1004DD3FC();
    [v12 setObject:isa forKey:v14];

    return sub_10001074C(a1, &qword_100634B30, &unk_100513D70);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005126C0;
    *(inited + 32) = 7107189;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = sub_1004D7F9C();
    *(inited + 56) = v17;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 1702125924;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 120) = sub_1004D826C();
    sub_1000357EC((inited + 96));
    sub_1004D825C();
    v18 = sub_10005E644(inited);
    swift_setDeallocating();
    sub_100004CB8(&qword_100635958, &qword_100516C60);
    swift_arrayDestroy();
    v19 = sub_100115BF4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v19;
    sub_10005A684(v18, a2, a3, isUniquelyReferenced_nonNull_native);

    v21 = [objc_opt_self() standardUserDefaults];
    sub_100004CB8(&unk_100639F70, &unk_10051B270);
    v22 = sub_1004DD1FC().super.isa;

    v23 = sub_1004DD3FC();
    [v21 setObject:v22 forKey:v23];

    sub_10001074C(a1, &qword_100634B30, &unk_100513D70);
    return (*(v9 + 8))(v11, v8);
  }
}

void _s9MusicCore22BackgroundFetchManagerC14updateURLCache5queue20onDidReceiveResponse10completionySo012OS_dispatch_H0C_ySo13ICURLResponseCSg_s5Error_pSgtcSgySaysAM_pGctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v91 = a4;
  v74 = a3;
  v73 = a2;
  v97 = a1;
  v5 = sub_1004DBEBC();
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin();
  v95 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1004DBEFC();
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v93 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1004D7A6C();
  v8 = *(v72 - 8);
  __chkstk_darwin();
  v78 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v86 = v66 - v10;
  v87 = sub_1004D826C();
  v11 = *(v87 - 8);
  __chkstk_darwin();
  v80 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = v66 - v13;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v103 = v66 - v14;
  v100 = sub_1004D809C();
  v15 = *(v100 - 8);
  __chkstk_darwin();
  v77 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = v66 - v17;
  v102 = dispatch_group_create();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v101 = UnfairLock.init()();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  if (qword_100633BF8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v19 = *&qword_100637310;
  v20 = sub_100115BF4();
  v21 = v20;
  v22 = 0;
  v23 = v20 + 64;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v20 + 64);
  v27 = (v24 + 63) >> 6;
  v89 = (v15 + 6);
  v85 = (v15 + 4);
  v84 = (v11 + 7);
  v82 = (v11 + 6);
  v79 = (v11 + 4);
  ++v11;
  v83 = (v15 + 1);
  v76 = (v15 + 2);
  v75 = "com.apple.mobileipod";
  v15 = &v106;
  v71 = (v8 + 8);
  v8 = v103;
  while (1)
  {
    while (1)
    {
      do
      {
        if (!v26)
        {
          while (1)
          {
            v28 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v28 >= v27)
            {

              v59 = swift_allocObject();
              v59[2] = v101;
              v59[3] = v18;
              v60 = v92;
              v59[4] = v91;
              v59[5] = v60;
              v108 = sub_100116FC8;
              v109 = v59;
              aBlock = _NSConcreteStackBlock;
              v105 = 1107296256;
              v106 = sub_100012680;
              v107 = &unk_1005DDD80;
              v61 = _Block_copy(&aBlock);

              v62 = v93;
              sub_1004DBEDC();
              v110 = _swiftEmptyArrayStorage;
              sub_100116FD4();
              sub_100004CB8(&unk_100638950, &qword_10051B260);
              sub_1001080A0();
              v63 = v95;
              v64 = v99;
              sub_1004DE92C();
              v65 = v102;
              sub_1004DE0DC();
              _Block_release(v61);

              (*(v98 + 8))(v63, v64);
              (*(v94 + 8))(v62, v96);

              return;
            }

            v26 = *(v23 + 8 * v28);
            ++v22;
            if (v26)
            {
              v22 = v28;
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_11:
        v29 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v30 = *(*(v21 + 56) + ((v22 << 9) | (8 * v29)));
      }

      while (!*(v30 + 16));

      v31 = sub_100056B84(7107189, 0xE300000000000000);
      if (v32)
      {
        sub_10000904C(*(v30 + 56) + 32 * v31, &aBlock);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

    v88 = v15;
    sub_1004D805C();

    v33 = v100;
    if ((*v89)(v8, 1, v100) == 1)
    {

      v34 = v8;
      v35 = &qword_100634B30;
      v36 = &unk_100513D70;
      goto LABEL_22;
    }

    (*v85)(v90, v8, v33);
    v37 = v86;
    if (!*(v30 + 16) || (v38 = sub_100056B84(1702125924, 0xE400000000000000), (v39 & 1) == 0))
    {

      (*v83)(v90, v100);
      (*v84)(v37, 1, 1, v87);
LABEL_21:
      v34 = v37;
      v35 = &qword_100636E60;
      v36 = &qword_10051A950;
LABEL_22:
      sub_10001074C(v34, v35, v36);
      goto LABEL_23;
    }

    sub_10000904C(*(v30 + 56) + 32 * v38, &aBlock);

    v40 = v87;
    v41 = swift_dynamicCast();
    (*v84)(v37, v41 ^ 1u, 1, v40);
    if ((*v82)(v37, 1, v40) == 1)
    {
      (*v83)(v90, v100);
      v8 = v103;
      goto LABEL_21;
    }

    (*v79)(v81, v37, v40);
    v42 = v80;
    sub_1004D825C();
    sub_1004D819C();
    v44 = v43;
    v45 = v42;
    v46 = *v11;
    (*v11)(v45, v40);
    if (v44 < v19)
    {
      break;
    }

    v46(v81, v40);
    (*v83)(v90, v100);
    v8 = v103;
LABEL_23:
    v15 = v88;
  }

  v70 = v46;
  (*v76)(v77, v90, v100);
  sub_1004D7A4C();
  v112._object = (v75 | 0x8000000000000000);
  v111._countAndFlagsBits = 1702195828;
  v111._object = 0xE400000000000000;
  v112._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1004D7A5C(v111, v112);
  v47 = objc_allocWithZone(ICMusicKitRequestContext);
  v108 = sub_100156C40;
  v109 = 0;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_10001E3C4;
  v107 = &unk_1005DDCE0;
  v48 = _Block_copy(&aBlock);
  v49 = [v47 initWithBlock:v48];
  _Block_release(v48);

  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    v69 = objc_allocWithZone(ICMusicKitURLRequest);
    v50 = sub_1004D7A3C();
    v69 = [v69 initWithURLRequest:v50 requestContext:v49];

    dispatch_group_enter(v102);
    v68 = [objc_opt_self() highPrioritySession];
    v51 = swift_allocObject();
    v52 = v73;
    v53 = v74;
    v51[2] = v73;
    v51[3] = v53;
    v54 = v102;
    v51[4] = v101;
    v51[5] = v18;
    v51[6] = v54;
    v108 = sub_100116F70;
    v109 = v51;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_100022450;
    v107 = &unk_1005DDD30;
    v67 = _Block_copy(&aBlock);
    v66[1] = v109;
    sub_10000DE64(v52, v53);

    v55 = v54;

    v56 = v68;
    v57 = v69;
    v58 = v67;
    [v68 enqueueDataRequest:v69 withCompletionHandler:v67];
    _Block_release(v58);

    (*v71)(v78, v72);
    v70(v81, v87);
    (*v83)(v90, v100);
    v8 = v103;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_100116EC8()
{

  return swift_deallocObject();
}

double sub_100116F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100116F18()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100116F80()
{

  return swift_deallocObject();
}

unint64_t sub_100116FD4()
{
  result = qword_10063AC90;
  if (!qword_10063AC90)
  {
    sub_1004DBEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063AC90);
  }

  return result;
}

double sub_10011702C@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;

  return result;
}

id sub_1001170B4()
{
  type metadata accessor for BackgroundRefreshController();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  result = [objc_allocWithZone(ICCloudClient) init];
  v0[4] = result;
  static BackgroundRefreshController.shared = v0;
  return result;
}

uint64_t *BackgroundRefreshController.shared.unsafeMutableAddressor()
{
  if (qword_100633C00 != -1)
  {
    swift_once();
  }

  return &static BackgroundRefreshController.shared;
}

double static BackgroundRefreshController.shared.getter()
{
  if (qword_100633C00 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_10000DE64(v1, *(v0 + 24));
  return v1;
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_10000DE74(v5, v6);
}

Swift::Void __swiftcall BackgroundRefreshController.registerAllTasks()()
{
  v0 = sub_1004DDF9C();
  sub_100004CB8(&qword_100636BE0, &qword_10051A170);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100511DA0;
  *(v1 + 56) = &type metadata for String;
  v2 = sub_1000F811C();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0xD00000000000002FLL;
  *(v1 + 40) = 0x80000001004ED1A0;
  sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
  v3 = sub_1004DE79C();
  sub_1004D953C(v0, &_mh_execute_header, v3, "BackgroundRefreshController: REGISTER TASK: %@", 46, 2, v1);

  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = sub_1004DD3FC();
  aBlock[4] = sub_100117550;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018634;
  aBlock[3] = &unk_1005DDDA8;
  v7 = _Block_copy(aBlock);
  [v5 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v7];
  _Block_release(v7);

  v8 = sub_1004DDF9C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100511DA0;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = v2;
  *(v9 + 32) = 0xD000000000000041;
  *(v9 + 40) = 0x80000001004ED230;
  v10 = sub_1004DE79C();
  sub_1004D953C(v8, &_mh_execute_header, v10, "BackgroundRefreshController: CANCEL DEPRECATED TASK: %@", 55, 2, v9);

  v11 = [v4 sharedScheduler];
  v12 = sub_1004DD3FC();
  [v11 cancelTaskRequestWithIdentifier:v12];
}

double sub_100117550(uint64_t a1)
{
  if (qword_100633C00 != -1)
  {
    swift_once();
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  return sub_1001175D0(v1);
}

double sub_1001175D0(void *a1)
{
  v3 = *v1;
  v4 = sub_1004DDF9C();
  sub_100004CB8(&qword_100636BE0, &qword_10051A170);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100511DA0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000F811C();
  *(v5 + 32) = 0xD00000000000002FLL;
  *(v5 + 40) = 0x80000001004ED1A0;
  sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
  v6 = sub_1004DE79C();
  sub_1004D953C(v4, &_mh_execute_header, v6, "BackgroundRefreshController: EXECUTING REFRESH SUBTASKS: %@", 59, 2, v5);

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v3;
  v8 = a1;
  sub_100118D4C(sub_10011B604, v7);

  return result;
}

double sub_100117740(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

Swift::Void __swiftcall BackgroundRefreshController.scheduleAllTasks()()
{
  v72 = *v0;
  v78 = sub_1004DBEBC();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v75 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1004DBEFC();
  v74 = *(v76 - 8);
  __chkstk_darwin();
  v73 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v96 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v71 - v4;
  v5 = sub_1004D826C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v71 - v8;
  __chkstk_darwin();
  v94 = &v71 - v9;
  __chkstk_darwin();
  v93 = &v71 - v10;
  __chkstk_darwin();
  v100 = &v71 - v11;
  __chkstk_darwin();
  v92 = &v71 - v12;
  __chkstk_darwin();
  v91 = &v71 - v13;
  __chkstk_darwin();
  v15 = &v71 - v14;
  __chkstk_darwin();
  v17 = (&v71 - v16);
  if (qword_100633C10 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v18 = off_1006373C8;
    sub_1004D818C();
    v83 = v6;
    v19 = *(v6 + 16);
    v82 = v17;
    v80 = v6 + 16;
    v79 = v19;
    v19(v15, v17, v5);
    v97 = v18;
    v84 = v18[2];
    if (v84)
    {
      v90 = objc_opt_self();
      v89 = (v83 + 56);
      v20 = (v83 + 48);
      v17 = (v83 + 8);
      v21 = v97 + 49;
      v98 = (v83 + 32);
      v87 = (v83 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v22 = v84;
      v88 = (v83 + 48);
      do
      {
        v99 = v22;
        v33 = *v21;
        v34 = [v90 standardUserDefaults];
        LOBYTE(v101) = v33;
        sub_10011AA08();
        sub_100030C58();
        NSUserDefaults.subscript.getter(&aBlock);

        if (v104)
        {
          v35 = v95;
          v36 = swift_dynamicCast();
          (*v89)(v35, v36 ^ 1u, 1, v5);
        }

        else
        {
          sub_10001074C(&aBlock, &qword_100638E60, &unk_10051A920);
          v35 = v95;
          (*v89)(v95, 1, 1, v5);
        }

        v37 = v96;
        sub_10011AA5C(v35, v96);
        v38 = *v20;
        if ((*v20)(v37, 1, v5) == 1)
        {
          v86 = v21;
          v39 = v93;
          sub_1004D825C();
          v40 = v38(v37, 1, v5);
          v21 = v86;
          if (v40 != 1)
          {
            sub_10001074C(v37, &qword_100636E60, &qword_10051A950);
          }
        }

        else
        {
          v39 = v93;
          (*v98)(v93, v37, v5);
        }

        sub_10001074C(v35, &qword_100636E60, &qword_10051A950);
        sub_1004D81FC();
        Kind = v17->Kind;
        (v17->Kind)(v39, v5);
        v42 = v94;
        sub_1004D825C();
        if (sub_1004D81EC())
        {
          v23 = v85;
          sub_1004D81FC();
          Kind(v42, v5);
          v24 = v100;
          Kind(v100, v5);
          v25 = *v98;
          (*v98)(v24, v23, v5);
        }

        else
        {
          Kind(v42, v5);
          v25 = *v98;
        }

        v26 = v99;
        v21 += 24;
        v27 = v92;
        v25(v92, v100, v5);
        sub_10011B584(&qword_100637408, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v28 = sub_1004DD32C();
        v29 = (v28 & 1) == 0;
        if (v28)
        {
          v30 = v15;
        }

        else
        {
          v30 = v27;
        }

        if (v29)
        {
          v31 = v15;
        }

        else
        {
          v31 = v27;
        }

        Kind(v30, v5);
        v32 = v91;
        v25(v91, v31, v5);
        v25(v15, v32, v5);
        v22 = v26 - 1;
        v20 = v88;
      }

      while (v22);
    }

    v99 = swift_allocBox();
    v44 = v43;
    v6 = v83;
    v98 = *(v83 + 8);
    (v98)(v82, v5);
    v45 = *(v6 + 32);
    v100 = v44;
    v45(v44, v15, v5);
    if (!v84)
    {
LABEL_37:
      v51 = 0;
      goto LABEL_38;
    }

    if (v97[2])
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v46 = 0;
  v6 = 0;
  v47 = v97 + 50;
  v48 = v84 - 1;
  v17 = &type metadata for BackgroundTaskConfiguration.UserDefaultsKey;
  v15 = &type metadata for Bool;
  while ((v46 & 1) != 0)
  {
    if (v48 == v6)
    {
      goto LABEL_36;
    }

    v46 = 1;
LABEL_25:
    ++v6;
    v47 += 24;
    if (v6 >= v97[2])
    {
      goto LABEL_44;
    }
  }

  v49 = *v47;
  v50 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v101) = v49;
  sub_10011AA08();
  sub_100030C58();
  NSUserDefaults.subscript.getter(&aBlock);

  if (!v104)
  {
    sub_10001074C(&aBlock, &qword_100638E60, &unk_10051A920);
    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v46 = 0;
    v51 = 0;
    if (v48 == v6)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v46 = v101;
  if (v48 != v6)
  {
    goto LABEL_25;
  }

  if ((v101 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_36:
  v52 = v85;
  sub_1004D825C();
  (*(v83 + 40))(v100, v52, v5);
  v51 = 1;
LABEL_38:
  v53 = v85;
  v54 = v79;
  v79(v85, v100, v5);
  v55 = v81;
  sub_1004D818C();
  v56 = sub_1004D81EC();
  v57 = v98;
  (v98)(v55, v5);
  (v57)(v53, v5);
  if (v51 & 1) != 0 || (v56)
  {
    v58 = objc_allocWithZone(BGAppRefreshTaskRequest);
    v59 = sub_1004DD3FC();
    v60 = [v58 initWithIdentifier:v59];

    v61 = v85;
    v54(v85, v100, v5);
    v62 = v60;
    isa = sub_1004D81CC().super.isa;
    (v57)(v61, v5);
    [v62 setEarliestBeginDate:isa];

    if (qword_100633C08 != -1)
    {
      swift_once();
    }

    v64 = swift_allocObject();
    v65 = v99;
    *(v64 + 16) = v62;
    *(v64 + 24) = v65;
    *(v64 + 32) = v51;
    *(v64 + 40) = v72;
    v105 = sub_10011AB0C;
    v106 = v64;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v103 = sub_100012680;
    v104 = &unk_1005DDDF8;
    v66 = _Block_copy(&aBlock);
    v67 = v62;

    v68 = v73;
    sub_1004DBEDC();
    v101 = _swiftEmptyArrayStorage;
    sub_10011B584(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_100638950, &qword_10051B260);
    sub_100008F60(&qword_10063ACA0, &unk_100638950, &qword_10051B260);
    v69 = v75;
    v70 = v78;
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v66);

    (*(v77 + 8))(v69, v70);
    (*(v74 + 8))(v68, v76);
  }
}

void sub_100118434(void *a1, uint64_t a2, int a3)
{
  v42 = a3;
  v4 = sub_1004D826C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  v9 = sub_1004DDF9C();
  v41 = sub_100004CB8(&qword_100636BE0, &qword_10051A170);
  v10 = swift_allocObject();
  v40 = xmmword_1005126C0;
  *(v10 + 16) = xmmword_1005126C0;
  v11 = [a1 identifier];
  v12 = sub_1004DD43C();
  v14 = v13;

  *(v10 + 56) = &type metadata for String;
  v15 = sub_1000F811C();
  *(v10 + 64) = v15;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  sub_1004D821C();
  v17 = v16;
  v18 = v16;
  (*(v5 + 8))(v7, v4);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v17 >= 9.22337204e18)
  {
    goto LABEL_12;
  }

  *(v10 + 96) = &type metadata for Int;
  *(v10 + 104) = &protocol witness table for Int;
  *(v10 + 72) = v17;
  sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
  v19 = sub_1004DE79C();
  sub_1004D953C(v9, &_mh_execute_header, v19, "BackgroundRefreshController: SCHEDULING TASK: %@ EARLIEST BEGIN DATE %{time_t}d", 79, 2, v10);

  v20 = objc_opt_self();
  v21 = [v20 sharedScheduler];
  v43 = 0;
  v22 = [v21 submitTaskRequest:a1 error:&v43];

  if (v22)
  {
    v23 = v43;
    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v24 = v43;
    v25 = sub_1004D7F4C();

    swift_willThrow();
    v26 = sub_1004DDF7C();
    v27 = swift_allocObject();
    *(v27 + 16) = v40;
    v28 = [a1 identifier];
    v29 = sub_1004DD43C();
    v31 = v30;

    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v15;
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    v43 = v25;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v32 = sub_1004DD4DC();
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v15;
    *(v27 + 72) = v32;
    *(v27 + 80) = v33;
    v34 = sub_1004DE79C();
    sub_1004D953C(v26, &_mh_execute_header, v34, "BackgroundRefreshController: SCHEDULING TASK: %@ ERROR %@", 57, 2, v27);

    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  v35 = sub_1004DDF9C();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100511DA0;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v15;
  *(v36 + 32) = 0xD00000000000002FLL;
  *(v36 + 40) = 0x80000001004ED1A0;
  v37 = sub_1004DE79C();
  sub_1004D953C(v35, &_mh_execute_header, v37, "BackgroundRefreshController: FORCING TASK: %@", 45, 2, v36);

  v38 = [v20 sharedScheduler];
  v39 = sub_1004DD3FC();
  [v38 _simulateLaunchForTaskWithIdentifier:v39];
}

double sub_100118908(char a1, void *a2, uint64_t a3)
{
  v6 = sub_1004DBEBC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004DBEFC();
  v10 = *(v18 - 8);
  __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633C08 != -1)
  {
    swift_once();
  }

  v17[1] = qword_1006373C0;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a3;
  aBlock[4] = sub_10011B8A0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005DE0C0;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  sub_1004DBEDC();
  v19 = _swiftEmptyArrayStorage;
  sub_10011B584(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_100638950, &qword_10051B260);
  sub_100008F60(&qword_10063ACA0, &unk_100638950, &qword_10051B260);
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);

  return result;
}

void sub_100118C08(void *a1, char a2)
{
  if (a2)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a2)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  [a1 setTaskCompletedWithSuccess:a2 & 1];
  v4 = sub_1004DDF7C();
  sub_100004CB8(&qword_100636BE0, &qword_10051A170);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005126C0;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_1000F811C();
  *(v5 + 32) = 0xD00000000000002FLL;
  *(v5 + 40) = 0x80000001004ED1A0;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 64) = v6;
  *(v5 + 72) = v2;
  *(v5 + 80) = v3;
  sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
  v7 = sub_1004DE79C();
  sub_1004D953C(v4, &_mh_execute_header, v7, "BackgroundRefreshController: COMPLETED REFRESH SUBTASKS: %@ SUCCESS: %@", 71, 2, v5);
}

void sub_100118D4C(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v2 = sub_1004DBEBC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DBEFC();
  v60 = *(v5 - 8);
  __chkstk_darwin();
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v75 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v56 - v8;
  v10 = sub_1004D826C();
  v65 = *(v10 - 8);
  __chkstk_darwin();
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = &v56 - v12;
  __chkstk_darwin();
  v73 = &v56 - v13;
  __chkstk_darwin();
  v72 = &v56 - v14;
  __chkstk_darwin();
  v71 = &v56 - v15;
  __chkstk_darwin();
  v76 = &v56 - v16;
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v94[4] = v90;
  v94[5] = v91;
  v95 = v92;
  v96 = v93;
  v94[0] = v86;
  v94[1] = v87;
  v94[2] = v88;
  v94[3] = v89;
  sub_100073E60(v94);
  v63 = v3;
  v64 = v2;
  v62 = v5;
  if (v95 == 2)
  {
    v82 = 1;
  }

  else
  {
    v82 = sub_1004DF08C();
  }

  sub_1004D825C();
  v78 = dispatch_group_create();
  v79 = swift_allocObject();
  *(v79 + 16) = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v77 = UnfairLock.init()();
  if (qword_100633C10 != -1)
  {
    swift_once();
  }

  v17 = off_1006373C8;
  v18 = *(off_1006373C8 + 2);
  if (v18)
  {
    v84 = objc_opt_self();
    v69 = (v65 + 48);
    v70 = (v65 + 56);
    v19 = v17 + 50;
    v80 = (v65 + 32);
    v81 = v9;
    v67 = (v65 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v68 = (v65 + 8);
    do
    {
      v83 = *(v19 - 18);
      v23 = *v19;
      if (v82 & 1 | ((*(v19 - 17) & 1) == 0))
      {
        v24 = *(v19 - 10);
        v25 = *(v19 - 1);
        v26 = [v84 standardUserDefaults];
        LOBYTE(v85) = v25;
        sub_10011AA08();
        sub_100030C58();
        NSUserDefaults.subscript.getter(&v86);

        if (*(&v87 + 1))
        {
          v27 = swift_dynamicCast();
          (*v70)(v9, v27 ^ 1u, 1, v10);
        }

        else
        {
          sub_10001074C(&v86, &qword_100638E60, &unk_10051A920);
          (*v70)(v9, 1, 1, v10);
        }

        v29 = v75;
        v30 = v69;
        sub_10011AA5C(v9, v75);
        v31 = *v30;
        if ((*v30)(v29, 1, v10) == 1)
        {
          v32 = v73;
          sub_1004D825C();
          if (v31(v29, 1, v10) != 1)
          {
            sub_10001074C(v29, &qword_100636E60, &qword_10051A950);
          }
        }

        else
        {
          v32 = v73;
          (*v80)(v73, v29, v10);
        }

        sub_10001074C(v9, &qword_100636E60, &qword_10051A950);
        v33 = v72;
        sub_1004D81FC();
        v34 = *v68;
        (*v68)(v32, v10);
        v35 = v74;
        sub_1004D825C();
        if (sub_1004D81EC())
        {
          v36 = v66;
          sub_1004D81FC();
          v34(v35, v10);
          v34(v33, v10);
          v37 = *v80;
          (*v80)(v33, v36, v10);
        }

        else
        {
          v34(v35, v10);
          v37 = *v80;
        }

        v38 = v71;
        v37(v71, v33, v10);
        sub_10011B584(&qword_100637408, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v39 = sub_1004DD32C();
        v34(v38, v10);
        v28 = (v24 > 0.0) & ~v39;
      }

      else
      {
        v28 = 0;
      }

      v40 = [v84 standardUserDefaults];
      LOBYTE(v85) = v23;
      v41 = sub_10011AA08();
      v42 = sub_100030C58();
      NSUserDefaults.subscript.getter(&v86);

      if (*(&v87 + 1))
      {
        if (swift_dynamicCast() & 1) != 0 && (v85)
        {
          v43 = [v84 standardUserDefaults];
          *(&v87 + 1) = &type metadata for Bool;
          LOBYTE(v86) = 0;
          LOBYTE(v85) = v23;
          NSUserDefaults.subscript.setter(&v86, &v85, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v41, v42);

LABEL_32:
          v44 = v78;
          dispatch_group_enter(v78);
          if (v83)
          {
            v20 = swift_allocObject();
            v21 = v79;
            v20[2] = v77;
            v20[3] = v21;
            v20[4] = v44;

            v22 = v44;
            sub_100119DBC(sub_10011B6EC, v20);
          }

          else
          {
            v45 = swift_allocObject();
            v46 = v79;
            v45[2] = v77;
            v45[3] = v46;
            v45[4] = v44;

            v47 = v44;
            sub_100119A54(sub_10011B9E0, v45);
          }

          goto LABEL_12;
        }
      }

      else
      {
        sub_10001074C(&v86, &qword_100638E60, &unk_10051A920);
      }

      if (v28)
      {
        goto LABEL_32;
      }

LABEL_12:
      v19 += 24;
      --v18;
      v9 = v81;
    }

    while (v18);
  }

  if (qword_100633C08 != -1)
  {
    swift_once();
  }

  v84 = qword_1006373C0;
  v48 = swift_allocObject();
  v49 = v79;
  v48[2] = v77;
  v48[3] = v49;
  v50 = v58;
  v48[4] = v57;
  v48[5] = v50;
  *&v88 = sub_10011B66C;
  *(&v88 + 1) = v48;
  *&v86 = _NSConcreteStackBlock;
  *(&v86 + 1) = 1107296256;
  *&v87 = sub_100012680;
  *(&v87 + 1) = &unk_1005DDFA8;
  v51 = _Block_copy(&v86);

  v52 = v59;
  sub_1004DBEDC();
  v85 = _swiftEmptyArrayStorage;
  sub_10011B584(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_100638950, &qword_10051B260);
  sub_100008F60(&qword_10063ACA0, &unk_100638950, &qword_10051B260);
  v53 = v61;
  v54 = v64;
  sub_1004DE92C();
  v55 = v78;
  sub_1004DE0DC();
  _Block_release(v51);

  (*(v63 + 8))(v53, v54);
  (*(v60 + 8))(v52, v62);
  (*(v65 + 8))(v76, v10);
}

uint64_t sub_1001199E4(_BYTE *a1, char a2)
{
  swift_beginAccess();
  v4 = *a1 & a2;
  result = swift_beginAccess();
  *a1 = v4 & 1;
  return result;
}

void sub_100119A54(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = sub_1004D826C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633C18 != -1)
  {
    swift_once();
  }

  v7 = word_1006373D0;
  v8 = HIBYTE(word_1006373D0);
  v9 = qword_1006373D8;
  v10 = word_1006373E0;
  v11 = HIBYTE(word_1006373E0);
  HIDWORD(v26) = byte_1006373E2;
  sub_1004D825C();
  v12 = [objc_opt_self() standardUserDefaults];
  v30 = v3;
  v13 = sub_1000357EC(aBlock);
  (*(v4 + 16))(v13, v6, v3);
  v33 = v11;
  v14 = sub_10011AA08();
  v15 = sub_100030C58();
  NSUserDefaults.subscript.setter(aBlock, &v33, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v14, v15);

  (*(v4 + 8))(v6, v3);
  v16 = sub_1004DDF9C();
  sub_100004CB8(&qword_100636BE0, &qword_10051A170);
  v17 = swift_allocObject();
  v18 = v17;
  *(v17 + 16) = xmmword_100511DA0;
  v19 = "updateSubscribedPlaylists";
  if (v7)
  {
    v20 = 0xD000000000000018;
  }

  else
  {
    v20 = 0xD000000000000019;
  }

  if (!v7)
  {
    v19 = "allowsPumpkinContent";
  }

  v21 = v19 | 0x8000000000000000;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_1000F811C();
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
  v22 = sub_1004DE79C();
  sub_1004D953C(v16, &_mh_execute_header, v22, "BackgroundRefreshController: EXECUTING SUBTASK: %@", 50, 2, v18);

  v23 = *(v27 + 32);
  v24 = swift_allocObject();
  *(v24 + 16) = v7;
  *(v24 + 17) = v8;
  *(v24 + 24) = v9;
  *(v24 + 32) = v10;
  *(v24 + 33) = v11;
  *(v24 + 34) = BYTE4(v26);
  *(v24 + 40) = v28;
  *(v24 + 48) = a2;
  v31 = sub_10011B778;
  v32 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100167E90;
  v30 = &unk_1005DE048;
  v25 = _Block_copy(aBlock);

  [v23 updatePinnedSubscribedPlaylistsWithCompletion:v25];
  _Block_release(v25);
}

void sub_100119DBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v5 = sub_1004D826C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633C20 != -1)
  {
    swift_once();
  }

  v9 = word_1006373E8;
  v10 = qword_1006373F0;
  v28 = byte_1006373F8;
  v29 = HIBYTE(word_1006373E8);
  v11 = byte_1006373F9;
  v12 = byte_1006373FA;
  sub_1004D825C();
  v13 = [objc_opt_self() standardUserDefaults];
  v32[3] = v5;
  v14 = sub_1000357EC(v32);
  (*(v6 + 16))(v14, v8, v5);
  v31 = v11;
  v15 = sub_10011AA08();
  v16 = sub_100030C58();
  NSUserDefaults.subscript.setter(v32, &v31, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v15, v16);

  (*(v6 + 8))(v8, v5);
  v17 = sub_1004DDF9C();
  sub_100004CB8(&qword_100636BE0, &qword_10051A170);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = xmmword_100511DA0;
  v20 = "updateSubscribedPlaylists";
  if (v9)
  {
    v21 = 0xD000000000000018;
  }

  else
  {
    v21 = 0xD000000000000019;
  }

  if (!v9)
  {
    v20 = "allowsPumpkinContent";
  }

  v22 = v20 | 0x8000000000000000;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_1000F811C();
  *(v19 + 32) = v21;
  *(v19 + 40) = v22;
  sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
  v23 = sub_1004DE79C();
  sub_1004D953C(v17, &_mh_execute_header, v23, "BackgroundRefreshController: EXECUTING SUBTASK: %@", 50, 2, v19);

  if (qword_100633C08 != -1)
  {
    swift_once();
  }

  v24 = qword_1006373C0;
  v25 = swift_allocObject();
  *(v25 + 16) = v9;
  v26 = v28;
  *(v25 + 17) = v29;
  *(v25 + 24) = v10;
  *(v25 + 32) = v26;
  *(v25 + 33) = v11;
  *(v25 + 34) = v12;
  *(v25 + 40) = v30;
  *(v25 + 48) = a2;

  _s9MusicCore22BackgroundFetchManagerC14updateURLCache5queue20onDidReceiveResponse10completionySo012OS_dispatch_H0C_ySo13ICURLResponseCSg_s5Error_pSgtcSgySaysAM_pGctF_0(v24, sub_10011B790, v3, sub_10011B798, v25);
}

uint64_t sub_10011A120(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v7 = 0xD000000000000018;
  if (a1)
  {
    swift_errorRetain();
    v8 = sub_1004DDF7C();
    sub_100004CB8(&qword_100636BE0, &qword_10051A170);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_1005126C0;
    v11 = "updateSubscribedPlaylists";
    if ((a2 & 1) == 0)
    {
      v7 = 0xD000000000000019;
      v11 = "allowsPumpkinContent";
    }

    v12 = v11 | 0x8000000000000000;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_1000F811C();
    v10[8] = v13;
    v10[4] = v7;
    v10[5] = v12;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v14 = sub_1004DD4DC();
    v10[12] = &type metadata for String;
    v10[13] = v13;
    v10[9] = v14;
    v10[10] = v15;
    sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
    v16 = sub_1004DE79C();
    sub_1004D953C(v8, &_mh_execute_header, v16, "BackgroundRefreshController: COMPLETED SUBTASK: %@ ERROR %@", 59, 2, v10);
  }

  else
  {
    v17 = sub_1004DDF7C();
    sub_100004CB8(&qword_100636BE0, &qword_10051A170);
    v18 = swift_allocObject();
    v19 = v18;
    *(v18 + 16) = xmmword_100511DA0;
    v20 = "updateSubscribedPlaylists";
    v21 = (a2 & 1) == 0;
    if (a2)
    {
      v22 = 0xD000000000000018;
    }

    else
    {
      v22 = 0xD000000000000019;
    }

    if (v21)
    {
      v20 = "allowsPumpkinContent";
    }

    v23 = v20 | 0x8000000000000000;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1000F811C();
    *(v19 + 32) = v22;
    *(v19 + 40) = v23;
    sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
    v24 = sub_1004DE79C();
    sub_1004D953C(v17, &_mh_execute_header, v24, "BackgroundRefreshController: COMPLETED SUBTASK: %@ SUCCESS", 58, 2, v19);
  }

  return a4(a1 == 0);
}

double sub_10011A380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  if (v6)
  {

    v6(a1);
  }

  return result;
}

uint64_t sub_10011A3F0(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v6 = sub_1004DDF9C();
  sub_100004CB8(&qword_100636BE0, &qword_10051A170);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_100511DA0;
  v9 = "updateSubscribedPlaylists";
  if (a2)
  {
    v10 = 0xD000000000000018;
  }

  else
  {
    v10 = 0xD000000000000019;
  }

  if ((a2 & 1) == 0)
  {
    v9 = "allowsPumpkinContent";
  }

  v11 = v9 | 0x8000000000000000;
  *(v7 + 56) = &type metadata for String;
  v12 = sub_1000F811C();
  v8[8] = v12;
  v8[4] = v10;
  v8[5] = v11;
  sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
  v13 = sub_1004DE79C();
  sub_1004D953C(v6, &_mh_execute_header, v13, "BackgroundRefreshController: COMPLETED SUBTASK: %@", 50, 2, v8);

  v23 = *(a1 + 16);
  if (v23)
  {
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    do
    {
      v14 += 8;
      swift_errorRetain();
      v16 = sub_1004DDF7C();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1005126C0;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = v12;
      *(v17 + 32) = v10;
      *(v17 + 40) = v11;
      swift_errorRetain();
      sub_100004CB8(&qword_100638980, &qword_100515B30);
      v18 = sub_1004DD4DC();
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v12;
      *(v17 + 72) = v18;
      *(v17 + 80) = v19;
      v20 = sub_1004DE79C();
      sub_1004D953C(v16, &_mh_execute_header, v20, "BackgroundRefreshController: ERROR EXECUTING SUBTASK: %@ ERROR %@", 65, 2, v17);

      --v15;
    }

    while (v15);
  }

  return a4(v23 == 0);
}

uint64_t sub_10011A618()
{
  v5 = sub_1004DE13C();
  v0 = *(v5 - 8);
  __chkstk_darwin();
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DE0FC();
  __chkstk_darwin();
  sub_1004DBEFC();
  __chkstk_darwin();
  v4[1] = sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  sub_1004DBEDC();
  v6 = _swiftEmptyArrayStorage;
  sub_10011B584(&qword_1006374C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&qword_1006374C8, &qword_10051B408);
  sub_100008F60(&qword_1006374D0, &qword_1006374C8, &qword_10051B408);
  sub_1004DE92C();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  result = sub_1004DE17C();
  qword_1006373C0 = result;
  return result;
}

uint64_t BackgroundRefreshController.deinit()
{
  sub_10000DE74(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t BackgroundRefreshController.__deallocating_deinit()
{
  sub_10000DE74(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

double sub_10011A8E0()
{
  sub_100004CB8(&qword_1006374D8, &qword_10051B410);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1005126C0;
  if (qword_100633C18 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  v1 = HIBYTE(word_1006373D0);
  v2 = qword_1006373D8;
  v3 = word_1006373E0;
  v4 = *(&word_1006373E0 + 1);
  *(v0 + 32) = word_1006373D0;
  *(v0 + 33) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 49) = v4;
  if (qword_100633C20 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  v5 = HIBYTE(word_1006373E8);
  result = *&qword_1006373F0;
  v7 = byte_1006373F8;
  v8 = *&byte_1006373F9;
  *(v0 + 56) = word_1006373E8;
  *(v0 + 57) = v5;
  *(v0 + 64) = result;
  *(v0 + 72) = v7;
  *(v0 + 73) = v8;
  off_1006373C8 = v0;
  return result;
}

unint64_t sub_10011AA08()
{
  result = qword_100637400;
  if (!qword_100637400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637400);
  }

  return result;
}

uint64_t sub_10011AA5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100636E60, &qword_10051A950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011AACC()
{

  return swift_deallocObject();
}

uint64_t sub_10011AB40(uint64_t *a1, int a2)
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

uint64_t sub_10011AB88(uint64_t result, int a2, int a3)
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

unint64_t sub_10011ABE8()
{
  result = qword_1006374B8;
  if (!qword_1006374B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006374B8);
  }

  return result;
}

void sub_10011AC3C()
{
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  sub_100004CB8(&qword_1006372B0, &qword_1005128E0);
  UnfairLock.locked<A>(_:)(sub_100115284);

  word_1006373D0 = 256;
  qword_1006373D8 = 0x40E5180000000000;
  word_1006373E0 = 257;
  byte_1006373E2 = 0;
}

void sub_10011AD1C()
{
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  sub_100004CB8(&qword_1006372B0, &qword_1005128E0);
  UnfairLock.locked<A>(_:)(sub_100030C3C);
  v0 = v3;
  if (v3 && (sub_10011AE28(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x40D5180000000000;
  }

  word_1006373E8 = 257;
  qword_1006373F0 = v2;
  byte_1006373F8 = v1;
  *&byte_1006373F9 = 515;
}

void sub_10011AE28(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004DD3FC();
  v5 = [a1 dictionaryForBagKey:v4];

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = sub_1004DD21C();

  sub_1002BC2D4(v6);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_12;
  }

  if (!*(v8 + 16))
  {
    goto LABEL_11;
  }

  v9 = sub_100056B84(0xD00000000000001ELL, 0x80000001004ED120);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10000904C(*(v8 + 56) + 32 * v9, v16);

  sub_100004CB8(&unk_100639F70, &unk_10051B270);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *a2 = 0;
    v14 = 1;
    goto LABEL_13;
  }

  if (!*(v15 + 16) || (v11 = sub_100056B84(0xD00000000000001DLL, 0x80000001004ED3E0), (v12 & 1) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_10000904C(*(v15 + 56) + 32 * v11, v16);

  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    *a2 = 0;
  }

  v14 = v13 ^ 1;
LABEL_13:
  *(a2 + 8) = v14;
}

uint64_t sub_10011AFE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "allowsPumpkinContent";
  }

  else
  {
    v4 = "updateSubscribedPlaylists";
  }

  if (*a2)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (*a2)
  {
    v6 = "updateSubscribedPlaylists";
  }

  else
  {
    v6 = "allowsPumpkinContent";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_10011B08C()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10011B108(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_10011B170()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10011B1E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005D2400;
  v8._object = v3;
  v5 = sub_1004DEE2C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10011B248(unint64_t *a1@<X8>)
{
  v2 = "updateSubscribedPlaylists";
  v3 = 0xD000000000000018;
  if (!*v1)
  {
    v3 = 0xD000000000000019;
    v2 = "allowsPumpkinContent";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int sub_10011B290()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10011B344(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_10011B3E4()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_10011B494@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10011B538(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10011B4C4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "ribedPlaylistsDate";
  if (v2 == 2)
  {
    v4 = 0xD000000000000028;
  }

  else
  {
    v4 = 0xD000000000000027;
  }

  if (v2 != 2)
  {
    v3 = "efreshServerLandingPages";
  }

  v5 = 0xD000000000000032;
  if (*v1)
  {
    v6 = "efreshPinnedSubscribedPlaylists";
  }

  else
  {
    v5 = 0xD00000000000002FLL;
    v6 = "updateServerLandingPages";
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v5 = v4;
    v7 = v3;
  }

  *a1 = v5;
  a1[1] = v7 | 0x8000000000000000;
}

unint64_t sub_10011B538(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D2450;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10011B584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10011B5CC()
{

  return swift_deallocObject();
}

uint64_t sub_10011B624()
{

  return swift_deallocObject();
}

uint64_t sub_10011B66C()
{
  v1 = *(v0 + 32);
  UnfairLock.locked<A>(_:)(sub_10011B810);
  return v1(v3);
}

uint64_t sub_10011B6F8()
{

  return swift_deallocObject();
}

uint64_t sub_10011B740()
{

  return swift_deallocObject();
}

uint64_t sub_10011B7B0(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, __n128), __n128 a3)
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  a3.n128_u64[0] = *(v3 + 24);
  return a2(a1, v4 | *(v3 + 16), *(v3 + 32) | (*(v3 + 33) << 8) | (*(v3 + 34) << 16), *(v3 + 40), *(v3 + 48), a3);
}

uint64_t sub_10011B810@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  *a1 = *v3;
  return result;
}

uint64_t sub_10011B868()
{

  return swift_deallocObject();
}

__n128 initializeBufferWithCopyOfBuffer for BackgroundTaskConfiguration(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10011B974()
{
  result = qword_1006374E0[0];
  if (!qword_1006374E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006374E0);
  }

  return result;
}

uint64_t BagControlledValue.init(fallback:reader:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a1;
  v6 = sub_1004DE7CC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = *(a3 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  sub_100004CB8(&qword_1006372B0, &qword_1005128E0);
  UnfairLock.locked<A>(_:)(sub_100030C3C);
  v15 = v22;
  if (!v22)
  {
    goto LABEL_6;
  }

  v20(v22);

  if ((*(v10 + 48))(v9, 1, a3) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_6:
    *(a4 + *(type metadata accessor for BagControlledValue(0, a3, v13, v14) + 28)) = 1;
    return (*(v10 + 32))(a4, v21, a3);
  }

  (*(v10 + 8))(v21, a3);
  v17 = *(v10 + 32);
  v17(v12, v9, a3);
  *(a4 + *(type metadata accessor for BagControlledValue(0, a3, v18, v19) + 28)) = 0;
  return (v17)(a4, v12, a3);
}

Swift::Int sub_10011BCD8()
{
  sub_1004DF26C();
  LaunchURL.Resolver.PerformOption.hash(into:)(v2, *v0);
  return sub_1004DF2BC();
}

uint64_t sub_10011BD54(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for BagControlledValue.Source(319, result, v2, v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10011BDE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_10011BF48(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t *BagProvider.shared.unsafeMutableAddressor()
{
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  return &static BagProvider.shared;
}

uint64_t BagProvider.createObserver(handler:)(void (*a1)(void), uint64_t a2)
{
  type metadata accessor for BagProvider.Observer();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  swift_weakAssign();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;

  sub_10000DE74(v5, v6);
  UnfairLock.locked<A>(_:)(sub_100101918);
  sub_10011C974(0);
  return v4;
}

uint64_t BagProvider.bag.getter()
{
  sub_100004CB8(&qword_1006372B0, &qword_1005128E0);
  UnfairLock.locked<A>(_:)(sub_10011CBF4);
  return v1;
}

double BagProvider.getBag(completion:)(void (*a1)(), uint64_t a2)
{
  sub_100004CB8(&qword_1006372B0, &qword_1005128E0);
  UnfairLock.locked<A>(_:)(sub_10011EC90);
  if (v10)
  {
    a1();
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v5 = swift_allocObject();
    swift_weakInit();
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    swift_weakAssign();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = v6;
    v7[5] = v5;
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);
    *(v5 + 24) = sub_100114ECC;
    *(v5 + 32) = v7;

    sub_10000DE74(v8, v9);

    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_100114ED8);
    sub_10011C974(0);
  }

  return result;
}

void sub_10011C530()
{
  if (qword_100633CC8 != -1)
  {
    swift_once();
  }

  v0 = static ICClientInfo.music;
  type metadata accessor for BagProvider(0);
  swift_allocObject();
  v1 = v0;
  v2 = sub_10011E38C(v1);

  static BagProvider.shared = v2;
}

double static BagProvider.shared.getter()
{
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  return result;
}

_BYTE *sub_10011C63C@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  v3 = &result[OBJC_IVAR____TtC9MusicCore11BagProvider_result];
  if (result[OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8] == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

double sub_10011C698(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    __chkstk_darwin();
    sub_100004CB8(&unk_1006378E0, &qword_10051BD10);
    UnfairLock.locked<A>(_:)(sub_10011E234);
  }

  return result;
}

void sub_10011C790(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v7 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  v8 = sub_10011E6E4((Strong + v7), a2);
  if (!v3)
  {
    v9 = v8;

    v10 = *(Strong + v7);
    if (v10 >> 62)
    {
      v11 = sub_1004DED5C();
      if (v11 >= v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 >= v9)
      {
LABEL_5:
        sub_1000602BC(v9, v11);
        swift_endAccess();

LABEL_6:
        *a3 = Strong == 0;
        return;
      }
    }

    __break(1u);
  }

  swift_endAccess();
  __break(1u);
}

uint64_t sub_10011C8B4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  sub_1004DD84C();
  if (*((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  return swift_endAccess();
}

void sub_10011C974(char a1)
{
  v2 = v1;
  UnfairLock.locked<A>(_:)(sub_10011E90C);
  if (LOBYTE(aBlock[0]) == 1)
  {
    UnfairLock.locked<A>(_:)(sub_10011E944);
    v4 = [objc_opt_self() activeAccount];
    v5 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v4 clientInfo:*(v1 + 16)];

    v6 = [objc_opt_self() sharedBagProvider];
    aBlock[4] = sub_10011E958;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100022450;
    aBlock[3] = &unk_1005DE3A8;
    v7 = _Block_copy(aBlock);

    [v6 getBagForRequestContext:v5 forceRefetch:a1 & 1 withCompletionHandler:v7];
    _Block_release(v7);
  }
}

void sub_10011CB34(uint64_t a1, uint64_t a2, void **a3)
{
  swift_beginAccess();
  v6 = sub_100004CB8(&qword_1006378D8, &unk_10051B6C0);
  WeakArray.append(_:)(a2, v6);
  swift_endAccess();
  v7 = 0;
  v8 = (a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v7 = *v8;
    v9 = *v8;
  }

  v10 = *a3;
  *a3 = v7;
}

id sub_10011CBF4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_10011CC50(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10011CC88()
{

  return swift_deallocObject();
}

uint64_t sub_10011CCD8@<X0>(uint64_t a1@<X8>)
{
  sub_100004CB8(&qword_100637610, qword_100524990);
  __chkstk_darwin();
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost;
  swift_beginAccess();
  sub_10011EA10(v1 + v7, v6);
  v8 = type metadata accessor for Signpost(0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_10011EB54(v6, a1);
  }

  sub_10011DEAC(v6);
  if (qword_100633C70 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.musicBag;

  Signpost.init(name:object:log:)("Bag", 3, 2, v10, a1);
  sub_10011EA80(a1, v4);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10011EAE4(v4, v1 + v7);
  return swift_endAccess();
}

double sub_10011CEE4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10011CF3C();
  }

  return result;
}

void sub_10011CF3C()
{
  UnfairLock.locked<A>(_:)(sub_10011EBC0);

  if (v4 == 1)
  {
    UnfairLock.locked<A>(_:)(sub_10011EC04);
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_10011EC78);

    v0 = sub_1004D964C();
    v1 = sub_1004DDF9C();
    if (os_log_type_enabled(v0, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v0, v1, "Notification triggered to update bag: storefrontChanged", v2, 2u);
    }

    sub_10011C974(1);
  }
}

void sub_10011D0D8(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Signpost(0);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + OBJC_IVAR____TtC9MusicCore11BagProvider_lock);
  UnfairLock.locked<A>(_:)(sub_10011E978);
  if (v27)
  {
    sub_10011C974(1);
    v9 = sub_10011EC60;
LABEL_19:
    UnfairLock.locked<A>(_:)(v9);
    return;
  }

  v10 = a1;
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    swift_errorRetain();
    v10 = sub_1004D7F3C();

    v11 = v10;
  }

  v27 = _swiftEmptyArrayStorage;
  __chkstk_darwin();
  *(&v23 - 4) = a3;
  *(&v23 - 3) = v10;
  LOBYTE(v21) = v12;
  BYTE1(v21) = 1;
  v22 = &v27;
  v13 = a1;
  UnfairLock.locked<A>(_:)(sub_10011E98C);
  if (!a1)
  {
    goto LABEL_18;
  }

  v14 = v27;
  if (v27 >> 62)
  {
    v15 = sub_1004DED5C();
    if (!v15)
    {
LABEL_18:

      sub_10011CCD8(v7);
      Signpost.end(dso:)(&_mh_execute_header);

      sub_10011E9A4(v7);
      v9 = sub_10011EA00;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v25 = v7;
  v26 = v8;
  if (v15 >= 1)
  {
    v24 = v10;
    v16 = v10;
    v17 = 0;
    while ((v14 & 0xC000000000000001) == 0)
    {
      v18 = *(v14 + 8 * v17 + 32);

      v19 = *(v18 + 24);
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_11:
      ++v17;

      if (v15 == v17)
      {

        v7 = v25;
        v10 = v24;
        goto LABEL_18;
      }
    }

    v18 = sub_1004DEB2C();
    v19 = *(v18 + 24);
    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_16:
    v20 = *(v18 + 32);

    v19(v16);
    sub_10000DE74(v19, v20);
    goto LABEL_11;
  }

  __break(1u);
LABEL_23:
  LODWORD(v22) = 0;
  v21 = 149;
  sub_1004DECCC();
  __break(1u);
}

uint64_t sub_10011D424(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = sub_100004CB8(&qword_1006378D8, &unk_10051B6C0);
  WeakArray.remove(_:)(a2, v3);
  return swift_endAccess();
}

double sub_10011D4A8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) != 1)
    {
      return result;
    }

    v3 = v2;
    v4 = sub_1004D964C();
    v5 = sub_1004DDF9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully loaded a bag from iTunesCloud", v6, 2u);
    }

    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    Strong = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v7;
    sub_10011D96C(Strong);
  }

  else
  {
    v3 = v2;
    v10 = sub_1004D964C();
    v11 = sub_1004DDF7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v3 code];
      _os_log_impl(&_mh_execute_header, v10, v11, "Error retrieving bag: %ld", v12, 0xCu);
    }

    v13 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    v14 = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v13;
    sub_10011D96C(v14);
  }

  return result;
}

void sub_10011D6C8(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5)
{
  v7 = a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  v8 = *(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  *v7 = a2;
  *(v7 + 8) = a3;
  v9 = a2;

  sub_10011D4A8();
  if (a4)
  {
    swift_beginAccess();
    v10 = type metadata accessor for BagProvider.Observer();

    v14 = WeakArray.allElements.getter(v11, v10, v12, v13);

    swift_beginAccess();

    sub_100045408(v15);
    *a5 = v14;
  }
}

uint64_t BagProvider.Observer.deinit()
{
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_10011D880);
  }

  swift_weakDestroy();
  sub_10000DE74(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t BagProvider.Observer.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_10011EC48);
  }

  swift_weakDestroy();
  sub_10000DE74(*(v0 + 24), *(v0 + 32));
  return swift_deallocClassInstance();
}

void sub_10011D96C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004D966C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  Strong = swift_weakLoadStrong();
  if (!a1)
  {
    if (!Strong)
    {
      return;
    }

LABEL_7:
    if (swift_weakLoadStrong())
    {

      v12 = swift_weakLoadStrong();
      if (v12)
      {
        (*(v5 + 16))(v9, v12 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v4);

        v13 = sub_1004D964C();
        v14 = sub_1004DDF9C();
        if (!os_log_type_enabled(v13, v14))
        {
          v16 = &selRef_registerObserver_;
          goto LABEL_19;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Beginning observation to retry loading bag", v15, 2u);
        v16 = &selRef_registerObserver_;
LABEL_14:

LABEL_19:

        (*(v5 + 8))(v9, v4);
        goto LABEL_20;
      }

      v16 = &selRef_registerObserver_;
    }

    else
    {
      v17 = swift_weakLoadStrong();
      if (v17)
      {
        (*(v5 + 16))(v7, v17 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v4);

        v13 = sub_1004D964C();
        v18 = sub_1004DDF9C();
        if (!os_log_type_enabled(v13, v18))
        {
          v16 = &selRef_unregisterObserver_;
          v9 = v7;
          goto LABEL_19;
        }

        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v13, v18, "Stopping observation to retry loading bag", v19, 2u);
        v16 = &selRef_unregisterObserver_;
        v9 = v7;
        goto LABEL_14;
      }

      v16 = &selRef_unregisterObserver_;
    }

LABEL_20:
    v20 = [objc_opt_self() sharedMonitor];
    [v20 *v16];

    return;
  }

  if (!Strong)
  {
    goto LABEL_7;
  }

  v11 = Strong;

  if (v11 != a1)
  {
    goto LABEL_7;
  }
}

id sub_10011DD50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BagProvider.Retry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BagProvider.deinit()
{
  sub_10011DEAC(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost);

  v1 = OBJC_IVAR____TtC9MusicCore11BagProvider_logger;
  v2 = sub_1004D966C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10011DEAC(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100637610, qword_100524990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BagProvider.__deallocating_deinit()
{
  BagProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BagProvider(uint64_t a1)
{
  result = qword_100637680;
  if (!qword_100637680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011DFC0(uint64_t a1)
{
  sub_10011E0D4(319);
  if (v1 <= 0x3F)
  {
    sub_1004D966C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10011E0D4(uint64_t a1)
{
  if (!qword_100637690)
  {
    type metadata accessor for Signpost(255);
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_100637690);
    }
  }
}

uint64_t sub_10011E150(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s7PurposeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t _s7PurposeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10011E20C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

NSString sub_10011E250()
{
  result = sub_1004DD3FC();
  qword_1006375F0 = result;
  return result;
}

unint64_t sub_10011E288(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_1004DED5C();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = sub_1004DEB2C();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_10011E38C(void *a1)
{
  v2 = v1;
  type metadata accessor for Signpost(0);
  v4 = __chkstk_darwin();
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 56))(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_bindings) = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + v8) = UnfairLock.init()();
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers) = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC9MusicCore11BagProvider_durableObservers;
  v10 = type metadata accessor for BagProvider.Observer();
  *(v2 + v9) = WeakArray.init(_:)(_swiftEmptyArrayStorage, v10);
  if (qword_100633C70 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.musicBag;
  sub_1004D967C();
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_isFetching) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_deferReload) = 0;
  v12 = OBJC_IVAR____TtC9MusicCore11BagProvider_retry;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for BagProvider.Retry()) init];
  *(v2 + 16) = a1;
  v13 = v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  *v13 = 0;
  *(v13 + 8) = 2;
  v14 = a1;
  sub_10011CCD8(v6);
  Signpost.begin(dso:)(&_mh_execute_header);
  sub_10011E9A4(v6);
  sub_10011C974(0);
  type metadata accessor for Whitetail.Binding();
  if (qword_100633C30 != -1)
  {
    swift_once();
  }

  v16 = qword_1006375F0;
  v17 = qword_1006375F0;
  location = CFRange.init(_:)(*(&v15 - 1)).location;
  v24[3] = &type metadata for DistributedNotificationTrigger;
  v24[4] = &protocol witness table for DistributedNotificationTrigger;
  v24[0] = location;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v16;
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v24, 0, sub_10011EBB8, v19);
  v21 = OBJC_IVAR____TtC9MusicCore11BagProvider_bindings;
  swift_beginAccess();

  sub_1004DD84C();
  if (*((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  swift_endAccess();

  return v2;
}

uint64_t sub_10011E6E4(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_10011E288(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1004DED5C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1004DED5C())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = sub_1004DEB2C();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = sub_1004DEB2C();
        v14 = sub_1004DEB2C();
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1000117AC(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_1000117AC(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
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
  return sub_1004DED5C();
}

double sub_10011E960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10011E9A4(uint64_t a1)
{
  v2 = type metadata accessor for Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011EA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100637610, qword_100524990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011EA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011EAE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100637610, qword_100524990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011EB54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10011EBC0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  v3 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TabIdentifier.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7972617262696CLL;
  v2 = 0x736F65646976;
  if (a1 != 5)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0x6F69646172;
  if (a1 != 3)
  {
    v3 = 0x686372616573;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6F4E6E657473696CLL;
  if (a1 != 1)
  {
    v4 = 0x6573776F7262;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10011ED94(uint64_t a1)
{
  sub_1004DD55C();
}

unint64_t sub_10011EEA0@<X0>(Swift::String *a1@<X0>, MusicCore::TabIdentifier_optional *a2@<X8>)
{
  result = _s9MusicCore13TabIdentifierO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_10011EED0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0xE600000000000000;
  v6 = 0x736F65646976;
  if (v2 != 5)
  {
    v6 = 0x7473696C79616C70;
    v5 = 0xE900000000000073;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F69646172;
  result = 0x686372616573;
  if (v2 != 3)
  {
    v8 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE900000000000077;
  v11 = 0x6F4E6E657473696CLL;
  if (v2 != 1)
  {
    v11 = 0x6573776F7262;
    v10 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 2);
  v12 = v2 == 2;
  v13 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t sub_10011EFD8(uint64_t a1)
{
  sub_1004DD55C();
}

unint64_t sub_10011F0E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10011F1E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10011F114(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x636973756D5F796DLL;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  if (v2 != 5)
  {
    v6 = 0x6F65646976;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6573776F7262;
  if (v2 != 3)
  {
    v8 = 0x6F69646172;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x756F795F726F66;
  if (v2 != 1)
  {
    v10 = 0x6E5F6E657473696CLL;
    v9 = 0xEA0000000000776FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_10011F1E8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D1118;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t _s9MusicCore13TabIdentifierO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D24D0;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10011F284()
{
  result = qword_1006378F0;
  if (!qword_1006378F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006378F0);
  }

  return result;
}

unint64_t sub_10011F2DC()
{
  result = qword_1006378F8;
  if (!qword_1006378F8)
  {
    sub_100008DE4(&qword_100637900, &qword_10051B748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006378F8);
  }

  return result;
}

unint64_t sub_10011F344()
{
  result = qword_100637908;
  if (!qword_100637908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637908);
  }

  return result;
}

uint64_t _s5StateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5StateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10011F504()
{
  result = qword_100637910;
  if (!qword_100637910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637910);
  }

  return result;
}

uint64_t sub_10011F560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000108DC(a3, v24 - v9, &qword_100635240, &qword_1005171A0);
  v11 = sub_1004DDA8C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001074C(v10, &qword_100635240, &qword_1005171A0);
  }

  else
  {
    sub_1004DDA7C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004DD9BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004DD52C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10001074C(a3, &qword_100635240, &qword_1005171A0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001074C(a3, &qword_100635240, &qword_1005171A0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10011F860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000108DC(a3, v24 - v9, &qword_100635240, &qword_1005171A0);
  v11 = sub_1004DDA8C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001074C(v10, &qword_100635240, &qword_1005171A0);
  }

  else
  {
    sub_1004DDA7C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004DD9BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004DD52C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10001074C(a3, &qword_100635240, &qword_1005171A0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001074C(a3, &qword_100635240, &qword_1005171A0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10011FB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000108DC(a3, v24 - v9, &qword_100635240, &qword_1005171A0);
  v11 = sub_1004DDA8C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001074C(v10, &qword_100635240, &qword_1005171A0);
  }

  else
  {
    sub_1004DDA7C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004DD9BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004DD52C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100004CB8(&unk_100637BE8, &qword_10051BCF0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001074C(a3, &qword_100635240, &qword_1005171A0);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001074C(a3, &qword_100635240, &qword_1005171A0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100004CB8(&unk_100637BE8, &qword_10051BCF0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10011FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000108DC(a3, v24 - v9, &qword_100635240, &qword_1005171A0);
  v11 = sub_1004DDA8C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001074C(v10, &qword_100635240, &qword_1005171A0);
  }

  else
  {
    sub_1004DDA7C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004DD9BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004DD52C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100004CB8(&unk_1006378E0, &qword_10051BD10);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001074C(a3, &qword_100635240, &qword_1005171A0);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001074C(a3, &qword_100635240, &qword_1005171A0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100004CB8(&unk_1006378E0, &qword_10051BD10);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100120180(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1004DF26C(), ActionType.rawValue.getter(a1), sub_1004DD55C(), , v4 = sub_1004DF2BC(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = ActionType.rawValue.getter(*(*(a2 + 48) + v6));
      v10 = v9;
      if (v8 == ActionType.rawValue.getter(a1) && v10 == v11)
      {
        break;
      }

      v13 = sub_1004DF08C();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
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

uint64_t sub_1001202D0(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1004DF26C(), ApplicationCapabilities.Service.rawValue.getter(), sub_1004DD55C(), , v4 = sub_1004DF2BC(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v30 = ~v5;
    v7 = 0x646956636973756DLL;
    v29 = a1;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004E9570;
        }

        v13 = *(*(a2 + 48) + v6) ? v7 : 0x636973756DLL;
        v14 = *(*(a2 + 48) + v6) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(a2 + 48) + v6) <= 1u ? v13 : v11;
        v10 = *(*(a2 + 48) + v6) <= 1u ? v14 : v12;
      }

      else if (*(*(a2 + 48) + v6) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x80000001004E95B0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x80000001004E95D0;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a1 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a1 == 9)
      {
        v16 = 0x80000001004E95D0;
      }

      if (a1 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x80000001004E95B0;
      }

      v17 = 0x746963696C707865;
      if (a1 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a1 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a1 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a1 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a1 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a1 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a1 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x80000001004E9570;
      }

      if (a1)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a1)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a1 <= 4u ? v19 : v15;
      v24 = a1 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = v6;
      v26 = v7;
      v27 = sub_1004DF08C();

      if ((v27 & 1) == 0)
      {
        v6 = (v25 + 1) & v30;
        a1 = v29;
        v7 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_1001206A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1004DF26C();
  sub_1004DD55C();
  v6 = sub_1004DF2BC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1004DF08C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10012079C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004DC7EC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10012C674(&qword_100637BF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant), v7 = sub_1004DD2AC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10012C674(&qword_100637C00, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v15 = sub_1004DD35C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1001209B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, sub_1004DF26C(), Library.Menu.Identifier.rawValue.getter(v3), sub_1004DD55C(), , v4 = sub_1004DF2BC(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xD000000000000029;
      v9 = "orites";
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 0xA:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 0xC:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "orites";
      switch(v3)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1004DF08C();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
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

uint64_t sub_100120D98(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1004DF26C();
  SortOptions.ContentType.identifier.getter(v3);
  sub_1004DD55C();

  v4 = sub_1004DF2BC();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(a2 + 48) + v6);
    v9 = v8 >> 6;
    if (v8 >> 6 > 1)
    {
      break;
    }

    if (v9)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        if (((v8 ^ v3) & 0x3F) == 0)
        {
          return 1;
        }

        goto LABEL_5;
      }
    }

    else if (v3 < 0x40u)
    {
      if (((v8 ^ v3) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_5;
    }

LABEL_18:
    sub_1004DF26C();
    sub_1004DD55C();

    v10 = sub_1004DF2BC();
    sub_1004DF26C();
    sub_1004DD55C();

    if (v10 == sub_1004DF2BC())
    {
      return 1;
    }

LABEL_5:
    v6 = (v6 + 1) & v7;
    if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  if (v9 == 2 || v8 != 192 || v3 != 192)
  {
    goto LABEL_18;
  }

  return 1;
}

BOOL sub_10012131C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1004DF26C();
  sub_1004DF27C(v3);
  v4 = sub_1004DF2BC();
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

uint64_t Playlist.hasActiveCollaboration.getter()
{
  sub_100004CB8(&qword_100637940, &qword_10051B8D0);
  __chkstk_darwin();
  v1 = &v16 - v0;
  sub_100004CB8(&qword_100637948, &qword_10051B8D8);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  sub_1004DCE2C();
  v6 = sub_1004DCE1C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    sub_10001074C(v1, &qword_100637940, &qword_10051B8D0);
    v8 = sub_1004DCD6C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  sub_1004DCDEC();
  (*(v7 + 8))(v1, v6);
  v9 = sub_1004DCD6C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_13;
  }

  sub_1000108DC(v5, v3, &qword_100637948, &qword_10051B8D8);
  v11 = (*(v10 + 88))(v3, v9);
  if (v11 != enum case for Playlist.Collaborator.Status.host(_:) && v11 != enum case for Playlist.Collaborator.Status.joined(_:) && v11 != enum case for Playlist.Collaborator.Status.pending(_:))
  {
    (*(v10 + 8))(v3, v9);
    goto LABEL_13;
  }

  v14 = 1;
LABEL_14:
  sub_10001074C(v5, &qword_100637948, &qword_10051B8D8);
  return v14;
}

BOOL Playlist.Collaboration.hasPendingCollaborators.getter()
{
  sub_100004CB8(&qword_100637950, &qword_10051B8E0);
  __chkstk_darwin();
  v1 = v6 - v0;
  sub_1004DCDFC();
  v2 = sub_100004CB8(&qword_100637958, &qword_10051B8E8);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001074C(v1, &qword_100637950, &qword_10051B8E0);
    return 0;
  }

  else
  {
    sub_100042B08(&unk_100637960, &qword_100637958, &qword_10051B8E8, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_1004DDCFC();
    sub_1004DDD3C();
    v4 = v6[1] != v6[0];
    (*(v3 + 8))(v1, v2);
  }

  return v4;
}

uint64_t static Collaboration.Setup.contextualImageName(active:hasPendingCollaborators:)(char a1)
{
  if (a1)
  {
    return 0x322E6E6F73726570;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_1001218B0()
{
  type metadata accessor for Collaboration.ArtworkCachingReference();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000027;
  *(v0 + 24) = 0x80000001004E9DF0;
  v1 = objc_opt_self();
  v2 = sub_1004DD3FC();

  [v1 setCacheLimit:100 forCacheIdentifier:v2 cacheReference:v0];

  static Collaboration.artworkCaching = v0;
}

uint64_t *Collaboration.artworkCaching.unsafeMutableAddressor()
{
  if (qword_100633C38 != -1)
  {
    swift_once();
  }

  return &static Collaboration.artworkCaching;
}

double static Collaboration.artworkCaching.getter()
{
  if (qword_100633C38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static Collaboration.artworkCaching.setter(uint64_t a1)
{
  if (qword_100633C38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Collaboration.artworkCaching = a1;

  return result;
}

uint64_t (*static Collaboration.artworkCaching.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100633C38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static Collaboration.Setup.imageName(active:hasPendingCollaborators:)(char a1, char a2)
{
  v2 = 0x322E6E6F73726570;
  v3 = 0xD000000000000013;
  if ((a2 & 1) == 0)
  {
    v3 = 0x322E6E6F73726570;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t Collaboration.Error.errorDescription.getter(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    v7 = 0;
    if (a3)
    {
      sub_1004DEAAC(17);
      v4._countAndFlagsBits = 0x74694B636973754DLL;
      v4._object = 0xEF3D726F72726520;
    }

    else
    {
      sub_1004DEAAC(25);
      v4._object = 0x80000001004ED8A0;
      v4._countAndFlagsBits = 0xD000000000000017;
    }

    sub_1004DD5FC(v4);
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    sub_1004DEC6C();
    return v7;
  }

  if (a3 == 2)
  {
    sub_1004DEAAC(38);

    v7 = 0xD000000000000024;
    v8._countAndFlagsBits = a1;
    v8._object = a2;
    sub_1004DD5FC(v8);
    return v7;
  }

  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 ^ 5 | a2)
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD000000000000016;
      }
    }

    else if (a1 ^ 7 | a2)
    {
      if (a1 ^ 8 | a2)
      {
        return 0x73736F7020746F4ELL;
      }

      else
      {
        return 0xD000000000000032;
      }
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else if (a1 <= 1)
  {
    if (a1 | a2)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0x636120726F6E694DLL;
    }
  }

  else if (a1 ^ 2 | a2)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000024;
  }
}

void static Collaboration.Error.tapToRadarAlert()()
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v1 = &v33 - v0;
  v2 = sub_1004D82AC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D809C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v33 - v13;
  if (qword_100634428 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v33 = v5;
    v34 = v3;
    v35 = v2;
    v36 = v1;
    v15 = sub_10005F25C(_swiftEmptyArrayStorage);
    sub_100165FA8(0xD00000000000001FLL, 0x80000001004ED950, 0xD000000000000032, 0x80000001004ED970, _swiftEmptyArrayStorage, v15, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v14, 1u);

    sub_1000108DC(v14, v12, &qword_100634B30, &unk_100513D70);
    if ((*(v7 + 48))(v12, 1, v6) == 1)
    {
      sub_10001074C(v14, &qword_100634B30, &unk_100513D70);
      v16 = v12;
    }

    else
    {
      v17 = *(v7 + 32);
      v17(v10, v12, v6);
      v18 = [objc_opt_self() sharedApplication];
      sub_1004D7FDC(v19);
      v21 = v20;
      v22 = [v18 canOpenURL:v20];

      if (v22)
      {
        v23 = v37;
        (*(v7 + 16))(v37, v10, v6);
        v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v25 = swift_allocObject();
        v17((v25 + v24), v23, v6);
        v26 = v33;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v27 = sub_1004D827C();
        v29 = v28;
        (*(v34 + 8))(v26, v35);
        (*(v7 + 8))(v10, v6);
        sub_10001074C(v14, &qword_100634B30, &unk_100513D70);
        v30 = sub_1004DDA8C();
        v31 = v36;
        (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
        v32 = swift_allocObject();
        *(v32 + 16) = 0;
        *(v32 + 24) = 0;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        strcpy((v32 + 48), "File a Radar");
        *(v32 + 61) = 0;
        *(v32 + 62) = -5120;
        *(v32 + 64) = 2;
        *(v32 + 65) = *v38;
        *(v32 + 68) = *&v38[3];
        *(v32 + 72) = &unk_10051DF20;
        *(v32 + 80) = v25;
        sub_10011F560(0, 0, v31, &unk_10051B8F8, v32);

        return;
      }

      (*(v7 + 8))(v10, v6);
      v16 = v14;
    }

    sub_10001074C(v16, &qword_100634B30, &unk_100513D70);
  }
}

uint64_t sub_100122444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 32) = 0u;
  v5 = *(a4 + 40);
  if (v5)
  {
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    *(v4 + 88) = v7;
    *v7 = v4;
    v7[1] = sub_100122594;

    return v10(a4, v4 + 16);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_100122594()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Collaboration.Manager.__allocating_init(coordinator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_100035850(a1, v2 + 16);
  return v2;
}

id Collaboration.Manager.participantProfile.getter()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 activeUserState];

  v2 = [v1 music];
  v3 = [v2 userProfile];

  return v3;
}

uint64_t sub_100122804()
{
  v0 = sub_1004DCE7C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&unk_100637C90, &qword_100517F50);
  __chkstk_darwin();
  v5 = &v9 - v4;
  sub_1004DCE8C();
  if ((*(v1 + 48))(v5, 1, v0) == 1)
  {
    sub_10001074C(v5, &unk_100637C90, &qword_100517F50);
  }

  else
  {
    sub_1004DCE6C();
    sub_10012C674(&qword_100635EC0, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
    v6 = sub_1004DE8FC();
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v5, v0);
    if (v6)
    {
      return [objc_opt_self() isRunningInStoreDemoMode] ^ 1;
    }
  }

  return 0;
}

id Collaboration.Manager.canCollaborate(for:)()
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  v13[7] = v12;
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  if ((BYTE8(v5) & 1) == 0)
  {
    v0 = 3;
    goto LABEL_10;
  }

  if (BYTE2(v13[0]) != 1)
  {
    v0 = 6;
    goto LABEL_10;
  }

  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = [result isInitialImport];

    if ((v3 & 1) == 0)
    {
      return sub_100073E60(v13);
    }

    v0 = 7;
LABEL_10:
    sub_10012BD08();
    swift_allocError();
    *v4 = v0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    swift_willThrow();
    return sub_100073E60(v13);
  }

  __break(1u);
  return result;
}

uint64_t Logger.collaboration.unsafeMutableAddressor()
{
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.collaboration);
}

uint64_t sub_100122E0C(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_100122E70(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  if (*(a1._rawValue + 2) && (v2 = static Collaboration.Manager.DeepLinkType.actionKey, v3 = qword_100637928, , v4 = sub_100056B84(v2, v3), v6 = v5, , (v6 & 1) != 0))
  {
    v7 = (*(a1._rawValue + 7) + 16 * v4);
    v8 = *v7;
    v9 = v7[1];

    v10._rawValue = &off_1005D25C0;
    v14._countAndFlagsBits = v8;
    v14._object = v9;
    v11 = sub_1004DEE2C(v10, v14);

    if (v11 == 1)
    {
      v12.value = MusicCore_Collaboration_Manager_DeepLinkType_pending;
    }

    else
    {
      v12.value = MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault;
    }

    if (v11)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 2;
  }
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_1005D25C0;
  v6._object = object;
  v3 = sub_1004DEE2C(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicCore_Collaboration_Manager_DeepLinkType_pending;
  }

  else
  {
    v4.value = MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Collaboration.Manager.DeepLinkType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x676E69646E6570;
  }

  else
  {
    return 1852403562;
  }
}

uint64_t sub_10012308C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E69646E6570;
  }

  else
  {
    v3 = 1852403562;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E69646E6570;
  }

  else
  {
    v5 = 1852403562;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_10012312C()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001231A8(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_100123210()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_100123288@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005D25C0;
  v8._object = v3;
  v5 = sub_1004DEE2C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1001232E8(uint64_t *a1@<X8>)
{
  v2 = 1852403562;
  if (*v1)
  {
    v2 = 0x676E69646E6570;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *Collaboration.Manager.queryItemsDictionary(for:)(uint64_t a1)
{
  sub_100004CB8(&qword_100637978, &qword_10051B948);
  __chkstk_darwin();
  v2 = &v18 - v1;
  v3 = sub_1004D7C7C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7BEC();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10001074C(v2, &qword_100637978, &qword_10051B948);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = URLComponents.queryItemsDictionary.getter();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    return v7;
  }

  v8 = sub_10003BFEC(&off_1005D2610);
  swift_arrayDestroy();
  swift_beginAccess();
  if (!v7[2] || (v9 = static Collaboration.Manager.DeepLinkType.actionKey, v10 = qword_100637928, , v11 = sub_100056B84(v9, v10), v13 = v12, , (v13 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  v14 = (v7[7] + 16 * v11);
  v15 = *v14;
  v16 = v14[1];

  LOBYTE(v15) = sub_1001206A4(v15, v16, v8);

  (*(v4 + 8))(v6, v3);
  if ((v15 & 1) == 0)
  {

    return 0;
  }

  return v7;
}

uint64_t Collaboration.Manager.start(_:isOpen:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 200) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  sub_100004CB8(&qword_100637940, &qword_10051B8D0);
  *(v3 + 40) = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  *(v3 + 48) = swift_task_alloc();
  v4 = sub_1004DCDCC();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_1004DD05C();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v6 = sub_1004D8E1C();
  *(v3 + 112) = v6;
  *(v3 + 120) = *(v6 - 8);
  *(v3 + 128) = swift_task_alloc();
  sub_1004DDA4C();
  *(v3 + 136) = sub_1004DDA3C();
  v8 = sub_1004DD9BC();
  *(v3 + 144) = v8;
  *(v3 + 152) = v7;

  return _swift_task_switch(sub_1001237F8, v8, v7);
}

uint64_t sub_1001237F8()
{
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  *(v0 + 160) = sub_100035430(v1, static Logger.collaboration);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start called - isOpenInvite=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v12 = *(v0 + 200);
  v13 = *(v0 + 32);

  v14 = *(v8 + 16);
  *(v0 + 168) = v14;
  *(v0 + 176) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v6, v13, v7);
  v15 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
  if (!v12)
  {
    v15 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
  }

  (*(v10 + 104))(v9, *v15, v11);
  sub_1004D8DFC();
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_100123A08;
  v17 = *(v0 + 24);

  return MusicCollaborativePlaylist.StartCollaborationRequest.response()(v17);
}

uint64_t sub_100123A08()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1001240F4;
  }

  else
  {
    v5 = sub_100123B44;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100123B44()
{
  v47 = v0;
  v1 = v0[5];

  sub_1004DCE2C();
  v2 = sub_1004DCE1C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[5];
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_10001074C(v0[5], &qword_100637940, &qword_10051B8D0);
    v7 = sub_1004D809C();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  else
  {
    sub_1004DCDBC();
    (*(v3 + 8))(v6, v2);
    v8 = sub_1004D809C();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
    {
      v43 = v0[6];
      (*(v0[15] + 8))(v0[16], v0[14]);
      sub_10001074C(v43, &qword_100634B30, &unk_100513D70);

      v42 = v0[1];
      goto LABEL_11;
    }
  }

  v9 = v0[21];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[3];
  sub_10001074C(v0[6], &qword_100634B30, &unk_100513D70);
  v9(v10, v12, v11);
  v13 = sub_1004D964C();
  v14 = sub_1004DDF7C();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v19 = 136446210;
    sub_10012C674(&qword_100637980, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v20 = sub_1004DEFFC();
    v22 = v21;
    v23 = v18;
    v24 = *(v17 + 8);
    v24(v16, v23);
    v25 = sub_1000343A8(v20, v22, v46);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "invitationURL missing for=%{public}s", v19, 0xCu);
    sub_100008D24(v45);
  }

  else
  {

    v26 = v18;
    v24 = *(v17 + 8);
    v24(v16, v26);
  }

  v27 = v0[10];
  v28 = v0[3];
  sub_10012BD08();
  v29 = swift_allocError();
  *v30 = xmmword_1005127B0;
  *(v30 + 16) = 3;
  swift_willThrow();
  v24(v28, v27);
  swift_errorRetain();
  v31 = sub_1004D964C();
  v32 = sub_1004DDF7C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136446210;
    v0[2] = v29;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v35 = sub_1004DD4DC();
    v37 = sub_1000343A8(v35, v36, v46);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Start failed with error=%{public}s", v33, 0xCu);
    sub_100008D24(v34);
  }

  v39 = v0[15];
  v38 = v0[16];
  v40 = v0[14];
  swift_allocError();
  *v41 = v29;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  swift_willThrow();
  (*(v39 + 8))(v38, v40);

  v42 = v0[1];
LABEL_11:

  return v42();
}

uint64_t sub_1001240F4()
{
  v16 = v0;

  v1 = v0[24];
  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v6 = sub_1004DD4DC();
    v8 = sub_1000343A8(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start failed with error=%{public}s", v4, 0xCu);
    sub_100008D24(v5);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  sub_10012BD08();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.validate(_:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1004DD05C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1004D8D8C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1004D809C();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_1004DDA4C();
  v3[16] = sub_1004DDA3C();
  v8 = sub_1004DD9BC();
  v3[17] = v8;
  v3[18] = v7;

  return _swift_task_switch(sub_1001244CC, v8, v7);
}

uint64_t sub_1001244CC()
{
  v29 = v0;
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[5];
  v5 = sub_1004D966C();
  v0[19] = sub_100035430(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_10012C674(&qword_100637988, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = v8;
    v14 = v6;
    v15 = sub_1004DEFFC();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_1000343A8(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Validate called with url=%{public}s", v13, 0xCu);
    sub_100008D24(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[5];
  (*(v0[7] + 16))(v0[8], v0[4], v0[6]);
  v6(v20, v22, v21);
  sub_1004D8D5C();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_1001247A8;
  v24 = v0[3];

  return MusicCollaborativePlaylist.JoinRequest.validate()(v24);
}

uint64_t sub_1001247A8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10012499C;
  }

  else
  {
    v5 = sub_1001248E4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001248E4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012499C()
{
  v17 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_1004D964C();
  v5 = sub_1004DDF7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v9 = sub_1004DD4DC();
    v11 = sub_1000343A8(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Validate failed with error=%{public}s", v7, 0xCu);
    sub_100008D24(v8);
  }

  v12 = v0[21];
  sub_10012BD08();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.join(_:url:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1004DD05C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_1004D8D8C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1004D809C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_1004DDA4C();
  v2[16] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_100124D68, v7, v6);
}

uint64_t sub_100124D68()
{
  v29 = v0;
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[4];
  v5 = sub_1004D966C();
  v0[19] = sub_100035430(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_10012C674(&qword_100637988, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = v8;
    v14 = v6;
    v15 = sub_1004DEFFC();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_1000343A8(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Join called with url=%{public}s", v13, 0xCu);
    sub_100008D24(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[4];
  (*(v0[6] + 16))(v0[8], v0[3], v0[5]);
  v6(v20, v22, v21);
  sub_1004D8D5C();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_100125044;
  v24 = v0[7];

  return MusicCollaborativePlaylist.JoinRequest.response()(v24);
}

uint64_t sub_100125044()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_10012523C;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_100125170;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100125170()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012523C()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004D964C();
  v2 = sub_1004DDF7C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v6 = sub_1004DD4DC();
    v8 = sub_1000343A8(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Join failed with error=%{public}s", v4, 0xCu);
    sub_100008D24(v5);
  }

  v9 = v0[21];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  sub_10012BD08();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.end(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1004DD05C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1004D8DBC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1004DDA4C();
  v2[11] = sub_1004DDA3C();
  v6 = sub_1004DD9BC();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_1001255A0, v6, v5);
}

uint64_t sub_1001255A0()
{
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  v0[14] = sub_100035430(v1, static Logger.collaboration);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "End called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  sub_1004D8D9C();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_100125738;
  v10 = v0[3];

  return MusicCollaborativePlaylist.EndCollaborationRequest.response()(v10);
}

uint64_t sub_100125738()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_100125874;
  }

  else
  {
    v5 = sub_10012C71C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100125874()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004D964C();
  v2 = sub_1004DDF7C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v6 = sub_1004DD4DC();
    v8 = sub_1000343A8(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "End failed with error=%{public}s", v4, 0xCu);
    sub_100008D24(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_10012BD08();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.moderate(_:collaborator:in:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 193) = a1;
  v4 = sub_1004D8EBC();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_1004DD05C();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = sub_1004DCDAC();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  sub_1004DDA4C();
  *(v3 + 128) = sub_1004DDA3C();
  v8 = sub_1004DD9BC();
  *(v3 + 136) = v8;
  *(v3 + 144) = v7;

  return _swift_task_switch(sub_100125C28, v8, v7);
}

uint64_t sub_100125C28()
{
  v44 = v0;
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = sub_1004D966C();
  *(v0 + 152) = sub_100035430(v9, static Logger.collaboration);
  v42 = *(v3 + 16);
  v42(v1, v8, v2);
  v41 = *(v6 + 16);
  v41(v4, v7, v5);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = *(v0 + 88);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  if (v12)
  {
    v40 = v11;
    v19 = *(v0 + 193);
    log = v10;
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v20 = 136446722;
    *(v0 + 192) = v19 & 1;
    v21 = sub_1004DD4DC();
    v23 = sub_1000343A8(v21, v22, &v43);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    sub_10012C674(&unk_100637990, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v24 = sub_1004DEFFC();
    v26 = v25;
    (*(v14 + 8))(v13, v15);
    v27 = sub_1000343A8(v24, v26, &v43);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    sub_10012C674(&qword_100637980, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v28 = sub_1004DEFFC();
    v30 = v29;
    (*(v17 + 8))(v16, v18);
    v31 = sub_1000343A8(v28, v30, &v43);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v40, "    Moderate called for:\n        - type=%{public}s\n        - collaborator=%{public}s\n        - playlist=%{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 32);
  v35 = *(v0 + 193);
  v42(*(v0 + 112), *(v0 + 24), *(v0 + 96));
  v41(v32, v34, v33);
  sub_1004D8E8C();
  if (v35)
  {
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = sub_1001262C0;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.reject()();
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 160) = v37;
    *v37 = v0;
    v37[1] = sub_1001260B8;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.approve()();
  }
}

uint64_t sub_1001260B8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1001263FC;
  }

  else
  {
    v5 = sub_1001261F4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001261F4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001262C0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10012660C;
  }

  else
  {
    v5 = sub_10012C6F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001263FC()
{
  v16 = v0;
  v1 = v0[21];

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v6 = sub_1004DD4DC();
    v8 = sub_1000343A8(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    sub_100008D24(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_10012BD08();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10012660C()
{
  v16 = v0;
  v1 = v0[23];

  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v6 = sub_1004DD4DC();
    v8 = sub_1000343A8(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    sub_100008D24(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_10012BD08();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.remove(collaborator:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1004D8DEC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1004DD05C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_1004DCDAC();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_1004DDA4C();
  v3[17] = sub_1004DDA3C();
  v8 = sub_1004DD9BC();
  v3[18] = v8;
  v3[19] = v7;

  return _swift_task_switch(sub_1001269E4, v8, v7);
}

uint64_t sub_1001269E4()
{
  v39 = v0;
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = sub_1004D966C();
  v0[20] = sub_100035430(v9, static Logger.collaboration);
  v37 = *(v3 + 16);
  v37(v1, v8, v2);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);
  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  v18 = v0[10];
  v36 = v0[9];
  if (v13)
  {
    log = v11;
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v19 = 136446466;
    sub_10012C674(&unk_100637990, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v20 = sub_1004DEFFC();
    v34 = v12;
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = sub_1000343A8(v20, v22, &v38);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    sub_10012C674(&qword_100637980, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v24 = sub_1004DEFFC();
    v26 = v25;
    (*(v18 + 8))(v17, v36);
    v27 = sub_1000343A8(v24, v26, &v38);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v34, "    Remove called for:\n        - collaborator=%{public}s\n        - playlist=%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v18 + 8))(v17, v36);
    (*(v15 + 8))(v14, v16);
  }

  v28 = v0[11];
  v29 = v0[9];
  v30 = v0[5];
  v37(v0[15], v0[4], v0[13]);
  v10(v28, v30, v29);
  sub_1004D8DCC();
  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = sub_100126DC8;
  v32 = v0[3];

  return MusicCollaborativePlaylist.RemoveCollaboratorRequest.response()(v32);
}

uint64_t sub_100126DC8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_100126FD0;
  }

  else
  {
    v5 = sub_100126F04;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100126F04()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100126FD0()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004D964C();
  v2 = sub_1004DDF7C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v6 = sub_1004DD4DC();
    v8 = sub_1000343A8(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Remove failed with error=%{public}s", v4, 0xCu);
    sub_100008D24(v5);
  }

  v9 = v0[22];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  sub_10012BD08();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.resetInvitationURL(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1004DD05C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1004D8E4C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1004DDA4C();
  v2[11] = sub_1004DDA3C();
  v6 = sub_1004DD9BC();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_100127334, v6, v5);
}

uint64_t sub_100127334()
{
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  v0[14] = sub_100035430(v1, static Logger.collaboration);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reset URL called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  sub_1004D8E2C();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1001274CC;
  v10 = v0[3];

  return MusicCollaborativePlaylist.ResetInvitationLinkRequest.response()(v10);
}

uint64_t sub_1001274CC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1001276A4;
  }

  else
  {
    v5 = sub_100127608;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100127608()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001276A4()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004D964C();
  v2 = sub_1004DDF7C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v6 = sub_1004DD4DC();
    v8 = sub_1000343A8(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reset failed with error=%{public}s", v4, 0xCu);
    sub_100008D24(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_10012BD08();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.updateShareOption(_:for:)(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 168) = a1;
  v3 = sub_1004DCDCC();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  v4 = sub_1004D8E7C();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  sub_100004CB8(&qword_100637940, &qword_10051B8D0);
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_1004DCE1C();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  sub_1004DDA4C();
  *(v2 + 120) = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  *(v2 + 128) = v7;
  *(v2 + 136) = v6;

  return _swift_task_switch(sub_100127A84, v7, v6);
}

uint64_t sub_100127A84()
{
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  *(v0 + 144) = sub_100035430(v1, static Logger.collaboration);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "updateShareOption called with isOpen=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  sub_1004DCE2C();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = *(v0 + 80);

    sub_10001074C(v9, &qword_100637940, &qword_10051B8D0);
    sub_10012BD08();
    swift_allocError();
    *v10 = xmmword_100512800;
    *(v10 + 16) = 3;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = *(v0 + 168);
    (*(v16 + 32))(v14, *(v0 + 80), v15);
    (*(v16 + 16))(v13, v14, v15);
    v21 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
    if (!v20)
    {
      v21 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
    }

    (*(v18 + 104))(v17, *v21, v19);
    sub_1004D8E5C();
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = sub_100127D9C;

    return MusicCollaborativePlaylist.UpdateInvitationModeRequest.response()();
  }
}

uint64_t sub_100127D9C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100127FC4;
  }

  else
  {
    v5 = sub_100127ED8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100127ED8()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100127FC4()
{
  v20 = v0;

  swift_errorRetain();
  v1 = sub_1004D964C();
  v2 = sub_1004DDF7C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v6 = sub_1004DD4DC();
    v8 = sub_1000343A8(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "updateShareOption failed with error=%{public}s", v4, 0xCu);
    sub_100008D24(v5);
  }

  v9 = v0[20];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  sub_10012BD08();
  swift_allocError();
  *v16 = v9;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  swift_willThrow();
  (*(v14 + 8))(v13, v15);
  (*(v12 + 8))(v10, v11);

  v17 = v0[1];

  return v17();
}

uint64_t Collaboration.Manager.handleError(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v4 = sub_1004D966C();
  sub_100035430(v4, static Logger.collaboration);
  swift_errorRetain();
  v5 = sub_1004D964C();
  v6 = sub_1004DDF9C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Calling coordinator to handle error=%{public}@", v7, 0xCu);
    sub_10001074C(v8, &qword_100636460, &qword_100518BE0);
  }

  swift_beginAccess();
  sub_100035868(v2 + 16, v13);
  v10 = v14;
  v11 = v15;
  sub_100008C70(v13, v14);
  (*(v11 + 8))(a1, v10, v11);
  return sub_100008D24(v13);
}

id Collaboration.Manager.activityViewController(for:url:)()
{
  v0 = objc_allocWithZone(NSItemProvider);
  sub_1004D7FDC(v1);
  v3 = v2;
  v4 = [v0 initWithContentsOfURL:v2];

  if (v4)
  {
    v5 = [objc_allocWithZone(LPLinkMetadata) init];
    sub_1004D7FDC(v6);
    v8 = v7;
    [v5 setURL:v7];

    v9 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
    sub_1004DCF6C();
    v10 = sub_1004DD3FC();

    [v9 setName:v10];

    sub_1004DCF2C();
    if (v11)
    {
      v12 = sub_1004DD3FC();
    }

    else
    {
      v12 = 0;
    }

    [v9 setCurator:v12];

    sub_1004DCF1C();
    if (v13)
    {
      v14 = sub_1004DD3FC();
    }

    else
    {
      v14 = 0;
    }

    [v9 setStoreIdentifier:v14];

    sub_100128740();
    v16 = v15;
    [v9 setArtwork:v15];

    [v5 setSpecialization:v9];
    sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100511AB0;
    *(v17 + 32) = v4;
    v18 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_100006F10(0, &qword_1006379A8, NSItemProvider_ptr);
    v19 = v4;
    isa = sub_1004DD85C().super.isa;

    v21 = [v18 initWithItemProviders:isa];

    v22 = swift_allocObject();
    *(v22 + 16) = v5;
    aBlock[4] = sub_10012BD94;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100128B70;
    aBlock[3] = &unk_1005DE568;
    v23 = _Block_copy(aBlock);
    v24 = v5;

    [v21 setPerItemMetadataProvider:v23];
    _Block_release(v23);
    v25 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v21];
    [v25 setAllowsProminentActivity:0];

    return v25;
  }

  else
  {
    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

void sub_100128740()
{
  v0 = sub_1004DD05C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v3 = sub_1004D951C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSItemProvider) init];
  sub_1004D94FC();
  sub_1004D94EC();
  (*(v4 + 8))(v6, v3);
  v8 = sub_1004DD3FC();

  (*(v1 + 16))(v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15[1], v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  aBlock[4] = sub_10012C390;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012B1AC;
  aBlock[3] = &unk_1005DE898;
  v11 = _Block_copy(aBlock);

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  v12 = sub_1004DD3FC();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = [objc_allocWithZone(LPImage) initWithPlatformImage:v13];

    [objc_allocWithZone(LPImage) initWithItemProvider:v7 properties:0 placeholderImage:v14];
  }

  else
  {
    __break(1u);
  }
}

id sub_100128A78@<X0>(void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = sub_1004DD43C();
  v6 = v5;
  if (v4 == sub_1004DD43C() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1004DF08C();

    if ((v9 & 1) == 0)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }
  }

  *(a3 + 24) = sub_100006F10(0, &qword_100637C08, LPLinkMetadata_ptr);
  *a3 = a2;

  return a2;
}

id sub_100128B70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v14, a2, v6);

  v7 = v15;
  if (v15)
  {
    sub_100008C70(v14, v15);
    v8 = *(v7 - 8);
    v9 = __chkstk_darwin();
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1004DF06C();
    (*(v8 + 8))(v11, v7);
    sub_100008D24(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t Collaboration.Manager.__deallocating_deinit()
{
  sub_100008D24((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t Collaboration.ArtworkCachingReference.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100128D88()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.collaboration);
  sub_100035430(v0, static Logger.collaboration);
  sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
  sub_1004DE7BC();
  return sub_1004D967C();
}

uint64_t static Logger.collaboration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633C40 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.collaboration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Collaboration.isOpenInvitation.getter()
{
  v0 = sub_1004DCDCC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004CB8(&qword_1006379B0, &qword_10051B990) - 8;
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_100004CB8(&qword_1006379B8, &qword_10051B998);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __chkstk_darwin();
  v11 = &v19 - v10;
  sub_1004DCDDC();
  (*(v1 + 104))(v9, enum case for Playlist.Collaboration.InvitationMode.open(_:), v0);
  (*(v1 + 56))(v9, 0, 1, v0);
  v12 = *(v3 + 56);
  sub_1000108DC(v11, v5, &qword_1006379B8, &qword_10051B998);
  sub_1000108DC(v9, &v5[v12], &qword_1006379B8, &qword_10051B998);
  v13 = *(v1 + 48);
  if (v13(v5, 1, v0) != 1)
  {
    sub_1000108DC(v5, v7, &qword_1006379B8, &qword_10051B998);
    if (v13(&v5[v12], 1, v0) != 1)
    {
      v15 = &v5[v12];
      v16 = v20;
      (*(v1 + 32))(v20, v15, v0);
      sub_10012C674(&qword_1006379C0, &type metadata accessor for Playlist.Collaboration.InvitationMode, &protocol conformance descriptor for Playlist.Collaboration.InvitationMode);
      v14 = sub_1004DD35C();
      v17 = *(v1 + 8);
      v17(v16, v0);
      sub_10001074C(v9, &qword_1006379B8, &qword_10051B998);
      sub_10001074C(v11, &qword_1006379B8, &qword_10051B998);
      v17(v7, v0);
      sub_10001074C(v5, &qword_1006379B8, &qword_10051B998);
      return v14 & 1;
    }

    sub_10001074C(v9, &qword_1006379B8, &qword_10051B998);
    sub_10001074C(v11, &qword_1006379B8, &qword_10051B998);
    (*(v1 + 8))(v7, v0);
    goto LABEL_6;
  }

  sub_10001074C(v9, &qword_1006379B8, &qword_10051B998);
  sub_10001074C(v11, &qword_1006379B8, &qword_10051B998);
  if (v13(&v5[v12], 1, v0) != 1)
  {
LABEL_6:
    sub_10001074C(v5, &qword_1006379B0, &qword_10051B990);
    v14 = 0;
    return v14 & 1;
  }

  sub_10001074C(v5, &qword_1006379B8, &qword_10051B998);
  v14 = 1;
  return v14 & 1;
}

uint64_t Playlist.Collaborator.isHost.getter()
{
  v0 = sub_1004DCD3C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004CB8(&qword_1006379C8, &qword_10051B9A0) - 8;
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_100004CB8(&qword_1006379D0, &qword_10051B9A8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __chkstk_darwin();
  v11 = &v19 - v10;
  sub_1004DCD5C();
  (*(v1 + 104))(v9, enum case for Playlist.Collaborator.Role.host(_:), v0);
  (*(v1 + 56))(v9, 0, 1, v0);
  v12 = *(v3 + 56);
  sub_1000108DC(v11, v5, &qword_1006379D0, &qword_10051B9A8);
  sub_1000108DC(v9, &v5[v12], &qword_1006379D0, &qword_10051B9A8);
  v13 = *(v1 + 48);
  if (v13(v5, 1, v0) != 1)
  {
    sub_1000108DC(v5, v7, &qword_1006379D0, &qword_10051B9A8);
    if (v13(&v5[v12], 1, v0) != 1)
    {
      v15 = &v5[v12];
      v16 = v20;
      (*(v1 + 32))(v20, v15, v0);
      sub_10012C674(&qword_1006379D8, &type metadata accessor for Playlist.Collaborator.Role, &protocol conformance descriptor for Playlist.Collaborator.Role);
      v14 = sub_1004DD35C();
      v17 = *(v1 + 8);
      v17(v16, v0);
      sub_10001074C(v9, &qword_1006379D0, &qword_10051B9A8);
      sub_10001074C(v11, &qword_1006379D0, &qword_10051B9A8);
      v17(v7, v0);
      sub_10001074C(v5, &qword_1006379D0, &qword_10051B9A8);
      return v14 & 1;
    }

    sub_10001074C(v9, &qword_1006379D0, &qword_10051B9A8);
    sub_10001074C(v11, &qword_1006379D0, &qword_10051B9A8);
    (*(v1 + 8))(v7, v0);
    goto LABEL_6;
  }

  sub_10001074C(v9, &qword_1006379D0, &qword_10051B9A8);
  sub_10001074C(v11, &qword_1006379D0, &qword_10051B9A8);
  if (v13(&v5[v12], 1, v0) != 1)
  {
LABEL_6:
    sub_10001074C(v5, &qword_1006379C8, &qword_10051B9A0);
    v14 = 0;
    return v14 & 1;
  }

  sub_10001074C(v5, &qword_1006379D0, &qword_10051B9A8);
  v14 = 1;
  return v14 & 1;
}

uint64_t Playlist.hasJoinedCollaboration.getter()
{
  sub_100004CB8(&qword_100637940, &qword_10051B8D0);
  __chkstk_darwin();
  v1 = &v15 - v0;
  sub_100004CB8(&qword_100637948, &qword_10051B8D8);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  sub_1004DCE2C();
  v6 = sub_1004DCE1C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    sub_10001074C(v1, &qword_100637940, &qword_10051B8D0);
    v8 = sub_1004DCD6C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  sub_1004DCDEC();
  (*(v7 + 8))(v1, v6);
  v9 = sub_1004DCD6C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_10;
  }

  sub_1000108DC(v5, v3, &qword_100637948, &qword_10051B8D8);
  v11 = (*(v10 + 88))(v3, v9);
  if (v11 != enum case for Playlist.Collaborator.Status.host(_:) && v11 != enum case for Playlist.Collaborator.Status.joined(_:))
  {
    (*(v10 + 8))(v3, v9);
    goto LABEL_10;
  }

  v13 = 1;
LABEL_11:
  sub_10001074C(v5, &qword_100637948, &qword_10051B8D8);
  return v13;
}

uint64_t Playlist.hasUnsupportedContent.getter()
{
  v1[7] = v0;
  v2 = sub_1004DD01C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = sub_100004CB8(&unk_1006379E0, &qword_10051B9B8);
  v1[13] = swift_task_alloc();
  sub_100004CB8(&qword_100635BC8, &unk_10051B9C0);
  v1[14] = swift_task_alloc();
  v3 = sub_100004CB8(&qword_1006379F0, &qword_10051DEA0);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = sub_100004CB8(&qword_1006379F8, &unk_10051B9D0);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  sub_100004CB8(&qword_100637A00, &qword_100518D00);
  v1[22] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100637A08, &qword_10051B9E0);
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_100129D1C, 0, 0);
}

uint64_t sub_100129D1C()
{
  v1 = v0[22];
  v2 = v0[7];
  sub_1004DC10C();
  swift_getKeyPath();
  v3 = sub_1004DD05C();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_10012C674(&qword_100637A10, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  sub_1004DC0CC();

  sub_10001074C(v1, &qword_100637A00, &qword_100518D00);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100129EE4;
  v6 = v0[23];
  v7 = v0[21];

  return MusicLibraryRequest.response()(v7, v6);
}

uint64_t sub_100129EE4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10012A430;
  }

  else
  {
    v2 = sub_100129FF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100129FF8()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  sub_1004DC15C();
  (*(v2 + 16))(v3, v1, v4);
  sub_100042B08(&qword_100637A18, &qword_1006379F0, &qword_10051DEA0, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004DD6FC();
  v7 = *(v5 + 36);
  sub_100042B08(&qword_100637A20, &qword_1006379F0, &qword_10051DEA0, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004DDD3C();
  v47 = v0;
  if (*(v6 + v7) == v0[6])
  {
LABEL_5:
    v19 = v47[24];
    v18 = v47[25];
    v20 = v47[23];
    v22 = v47[20];
    v21 = v47[21];
    v24 = v47[18];
    v23 = v47[19];
    v25 = v47[15];
    v26 = v47[16];
    sub_10001074C(v47[13], &unk_1006379E0, &qword_10051B9B8);
    (*(v26 + 8))(v24, v25);
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v27 = 0;
    v28 = 1;
  }

  else
  {
    v8 = v0[9];
    v43 = (v8 + 16);
    v46 = (v8 + 32);
    v41 = (v8 + 8);
    while (1)
    {
      v9 = v47[10];
      v10 = v47[11];
      v11 = v47[8];
      v12 = v7;
      v13 = sub_1004DDE1C();
      (*v43)(v10);
      v13(v47 + 2, 0);
      v7 = v12;
      sub_1004DDD4C();
      v14 = *v46;
      (*v46)(v9, v10, v11);
      sub_1004DCFBC();
      if (!v15)
      {
        break;
      }

      v16 = v47[10];
      v17 = v47[8];

      (*v41)(v16, v17);
      sub_1004DDD3C();
      if (*(v6 + v12) == v47[6])
      {
        goto LABEL_5;
      }
    }

    v29 = v47[24];
    v30 = v47[25];
    v32 = v47[20];
    v31 = v47[21];
    v34 = v47[18];
    v33 = v47[19];
    v36 = v47[15];
    v35 = v47[16];
    v44 = v47[14];
    v45 = v47[23];
    v37 = v47[10];
    v42 = v47[8];
    sub_10001074C(v47[13], &unk_1006379E0, &qword_10051B9B8);
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v30, v45);
    v14(v44, v37, v42);
    v28 = 0;
    v27 = 1;
  }

  v38 = v47[14];
  (*(v47[9] + 56))(v38, v28, 1, v47[8]);
  sub_10001074C(v38, &qword_100635BC8, &unk_10051B9C0);

  v39 = v47[1];

  return v39(v27);
}