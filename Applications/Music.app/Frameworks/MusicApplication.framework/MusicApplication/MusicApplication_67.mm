uint64_t sub_5DA260()
{
  v1 = sub_AB9260();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = sub_AB8FF0();

  if (!v3)
  {
    goto LABEL_15;
  }

  sub_ABAD10();
  if (!*(v3 + 16) || (v4 = sub_2EC004(v10), (v5 & 1) == 0))
  {

    sub_8085C(v10);
LABEL_15:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_16;
  }

  sub_808B0(*(v3 + 56) + 32 * v4, &v11);
  sub_8085C(v10);

  if (!*(&v12 + 1))
  {
LABEL_16:
    sub_12E1C(&v11, &qword_E11F60, &unk_B1BC70);
LABEL_17:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD18, &qword_B1BE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_17;
  }

  sub_ABAD10();
  if (!*(v6 + 16) || (v7 = sub_2EC004(v10), (v8 & 1) == 0))
  {

    sub_8085C(v10);
    goto LABEL_17;
  }

  sub_808B0(*(v6 + 56) + 32 * v7, &v11);
  sub_8085C(v10);

  if (!*(&v12 + 1))
  {
LABEL_18:
    sub_12E1C(&v11, &qword_E11F60, &unk_B1BC70);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v10[0];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_5DA4B4()
{
  v1 = sub_AB9260();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = sub_AB8FF0();

  if (!v3)
  {
    goto LABEL_14;
  }

  sub_ABAD10();
  if (!*(v3 + 16) || (v4 = sub_2EC004(&v10), (v5 & 1) == 0))
  {

    sub_8085C(&v10);
LABEL_14:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_15;
  }

  sub_808B0(*(v3 + 56) + 32 * v4, &v11);
  sub_8085C(&v10);

  if (!*(&v12 + 1))
  {
LABEL_15:
    sub_12E1C(&v11, &qword_E11F60, &unk_B1BC70);
LABEL_16:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD18, &qword_B1BE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  sub_ABAD10();
  if (!*(v6 + 16) || (v7 = sub_2EC004(&v10), (v8 & 1) == 0))
  {

    sub_8085C(&v10);
    goto LABEL_16;
  }

  sub_808B0(*(v6 + 56) + 32 * v7, &v11);
  sub_8085C(&v10);

  if (!*(&v12 + 1))
  {
LABEL_17:
    sub_12E1C(&v11, &qword_E11F60, &unk_B1BC70);
    return 0;
  }

  if (swift_dynamicCast())
  {

    return 1;
  }

  return 0;
}

uint64_t sub_5DA704()
{
  result = sub_AB92A0();
  qword_E10110 = result;
  *algn_E10118 = v1;
  return result;
}

void sub_5DA734(uint64_t *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v5 = *a1;
  sub_ABAD10();
  if (!*(v5 + 16) || (v6 = sub_2EC004(v27), (v7 & 1) == 0))
  {
    sub_8085C(v27);
LABEL_10:
    *a3 = 512;
    return;
  }

  sub_808B0(*(v5 + 56) + 32 * v6, v28);
  sub_8085C(v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = sub_5E87A0(25705, 0xE200000000000000);
  if (v30 == 7)
  {
    goto LABEL_10;
  }

  sub_ABAD10();
  if (*(v5 + 16) && (v8 = sub_2EC004(v27), (v9 & 1) != 0))
  {
    sub_808B0(*(v5 + 56) + 32 * v8, v28);
    sub_8085C(v27);
    if (swift_dynamicCast())
    {
      v29 = 18;
LABEL_65:
      if (v29)
      {
        v26 = 256;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_68;
    }
  }

  else
  {
    sub_8085C(v27);
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 33);
    while (1)
    {
      v12 = *(v11 - 1);
      if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v15 = 0x756F795F726F66;
        }

        else
        {
          v15 = 0x6E5F6E657473696CLL;
        }

        if (v12 == 1)
        {
          v16 = 0xE700000000000000;
        }

        else
        {
          v16 = 0xEA0000000000776FLL;
        }

        if (*(v11 - 1))
        {
          v13 = v15;
        }

        else
        {
          v13 = 0x636973756D5F796DLL;
        }

        if (*(v11 - 1))
        {
          v14 = v16;
        }

        else
        {
          v14 = 0xE800000000000000;
        }
      }

      else if (*(v11 - 1) > 4u)
      {
        if (v12 == 5)
        {
          v14 = 0xE600000000000000;
          v13 = 0x686372616573;
        }

        else
        {
          v14 = 0xE500000000000000;
          v13 = 0x6F65646976;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = 0x6573776F7262;
        }

        else
        {
          v13 = 0x6F69646172;
        }

        if (v12 == 3)
        {
          v14 = 0xE600000000000000;
        }

        else
        {
          v14 = 0xE500000000000000;
        }
      }

      v29 = *v11;
      v17 = 0x686372616573;
      if (v30 == 5)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v17 = 0x6F65646976;
        v18 = 0xE500000000000000;
      }

      v19 = 0x6573776F7262;
      if (v30 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v19 = 0x6F69646172;
        v20 = 0xE500000000000000;
      }

      if (v30 <= 4u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (v30 == 1)
      {
        v21 = 0x756F795F726F66;
      }

      else
      {
        v21 = 0x6E5F6E657473696CLL;
      }

      if (v30 == 1)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v22 = 0xEA0000000000776FLL;
      }

      if (!v30)
      {
        v21 = 0x636973756D5F796DLL;
        v22 = 0xE800000000000000;
      }

      v23 = v30 <= 2u ? v21 : v17;
      v24 = v30 <= 2u ? v22 : v18;
      if (v13 == v23 && v14 == v24)
      {
        break;
      }

      v25 = sub_ABB3C0();

      if (v25)
      {
        goto LABEL_65;
      }

      v11 += 2;
      if (!--v10)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_65;
  }

LABEL_63:
  v26 = 0;
LABEL_68:
  *a3 = v26 | v30;
}

id sub_5DAB90()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    [result unregisterObserver:v0];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver();
    return objc_msgSendSuper2(&v3, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_5DACFC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_weakLoadStrong())
  {
    v7 = a1;
    UnfairLock.locked<A>(_:)(a5);
  }
}

id sub_5DADA8()
{
  result = [objc_allocWithZone(RadioAvailabilityController) init];
  qword_E10120 = result;
  return result;
}

Swift::Int sub_5DADE8()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_5DAEA4(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_5DAF4C(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_5DB004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5DE9A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_5DB034(unint64_t *a1@<X8>)
{
  v2 = "gMusicTabsDictionary";
  v3 = 0xD000000000000025;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000014;
    v2 = "countUniqueIdentifier";
  }

  v4 = 0xD000000000000024;
  if (*v1)
  {
    v5 = "UserRequestedSubscriptionHidden";
  }

  else
  {
    v4 = 0xD00000000000001FLL;
    v5 = "explicitContent";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_5DB0B0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E10128);
  __swift_project_value_buffer(v0, qword_E10128);
  return sub_AB4BB0();
}

NSString sub_5DB134()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange = result;
  return result;
}

NSString sub_5DB190()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange = result;
  return result;
}

NSString sub_5DB1EC()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange = result;
  return result;
}

NSString sub_5DB248()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange = result;
  return result;
}

NSString sub_5DB2A4()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange = result;
  return result;
}

NSString sub_5DB300()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.mliEnabledDidChange = result;
  return result;
}

NSString sub_5DB35C()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange = result;
  return result;
}

NSString sub_5DB3B8()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.supportedTabsDidChange = result;
  return result;
}

NSString sub_5DB414()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange = result;
  return result;
}

NSString sub_5DB470()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.activeAccountDidChange = result;
  return result;
}

NSString sub_5DB4CC()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange = result;
  return result;
}

NSString sub_5DB528()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange = result;
  return result;
}

NSString sub_5DB584()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange = result;
  return result;
}

NSString sub_5DB5E0()
{
  result = sub_AB9260();
  static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange = result;
  return result;
}

id sub_5DB63C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t _s9MusicCore23ApplicationCapabilitiesV13RatingWarningV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_ABB3C0();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (v10 && (a1[3] == a2[3] && v9 == v10 || (sub_ABB3C0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

BOOL _s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || ((a1[24] ^ a2[24]))
  {
    return 0;
  }

  sub_67C094(*(a1 + 4), *(a2 + 4));
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_67C094(*(a1 + 5), *(a2 + 5));
  if ((v6 & 1) == 0 || *(a1 + 6) != *(a2 + 6))
  {
    return 0;
  }

  v7 = a1;
  v8 = a2;
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  v11 = *(a1 + 10);
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v14 = *(a2 + 10);
  if (v9)
  {
    if (!v12)
    {
      return 0;
    }

    if (*(a1 + 7) != *(a2 + 7) || v9 != v12)
    {
      v15 = sub_ABB3C0();
      v8 = a2;
      v7 = a1;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v11)
  {
    if (!v14)
    {
      return 0;
    }

    if (v10 != v13 || v11 != v14)
    {
      v16 = sub_ABB3C0();
      v8 = a2;
      v7 = a1;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v17 = *(v7 + 11);
  v18 = *(v8 + 11);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    sub_13C80(0, &qword_E103B8, ICMusicSubscriptionStatus_ptr);
    v19 = v18;
    v20 = v17;
    v21 = sub_ABA790();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if ((sub_56E1B8() & 1) == 0)
  {
    return 0;
  }

  v22 = a1[112];
  v23 = *(a1 + 15);
  v24 = a2[112];
  v25 = *(a2 + 15);
  sub_12D5F0(*(a1 + 13), *(a2 + 13));
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  if (v22 == 7)
  {
    if (v24 != 7)
    {
      return 0;
    }
  }

  else if (v24 == 7 || (sub_56E1BC() & 1) == 0)
  {
    return 0;
  }

  sub_5D4B54(v23, v25);
  return (v27 & 1) != 0;
}

void sub_5DB9A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v34 = a1 + 32;
  v4 = _swiftEmptyArrayStorage;
  v31 = *(a1 + 16);
  do
  {
    v33 = v4;
    while (1)
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_62:
        __break(1u);
        return;
      }

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_62;
      }

      v6 = (v34 + 2 * v3);
      v7 = v6[1];
      ++v3;
      v8 = *v6;
      if (v8 == 2)
      {
        break;
      }

      if (v8 == 6)
      {
        v15 = *(a2 + 32);
        if (!*(v15 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        sub_ABB5C0();

        sub_AB93F0();
        v16 = sub_ABB610();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (*(*(v15 + 48) + v18) > 2u || !*(*(v15 + 48) + v18) || *(*(v15 + 48) + v18) == 2)
          {
            v20 = sub_ABB3C0();

            if (v20)
            {
              goto LABEL_48;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_48:

          LOBYTE(v8) = 6;
          goto LABEL_50;
        }
      }

      else
      {
        if (v8 != 4)
        {
          goto LABEL_51;
        }

        v9 = *(a2 + 32);
        if (!*(v9 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        sub_ABB5C0();

        sub_AB93F0();
        v10 = sub_ABB610();
        v11 = -1 << *(v9 + 32);
        v12 = v10 & ~v11;
        if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (*(*(v9 + 48) + v12) > 5u || *(*(v9 + 48) + v12) < 4u || *(*(v9 + 48) + v12) == 5)
          {
            v14 = sub_ABB3C0();

            if (v14)
            {
              goto LABEL_47;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_47:

          LOBYTE(v8) = 4;
          goto LABEL_50;
        }
      }

LABEL_4:
      v2 = v31;
LABEL_5:

      v4 = v33;
LABEL_6:
      if (v5 == v2)
      {
        return;
      }
    }

    v21 = *(a2 + 32);
    if (!*(v21 + 16))
    {
      goto LABEL_6;
    }

    v32 = v6[1];
    sub_ABB5C0();

    sub_AB93F0();
    v22 = sub_ABB610();
    v23 = -1 << *(v21 + 32);
    v24 = v22 & ~v23;
    if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_5;
    }

    v25 = ~v23;
    while (1)
    {
      v26 = *(*(v21 + 48) + v24);
      if (v26 > 4)
      {
        break;
      }

      if (v26 == 2)
      {
        goto LABEL_57;
      }

LABEL_44:
      v27 = sub_ABB3C0();

      if (v27)
      {
        goto LABEL_49;
      }

      v24 = (v24 + 1) & v25;
      if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (*(*(v21 + 48) + v24) <= 7u || v26 != 8 || 0x8000000000B5B970 != 0x8000000000B5B9B0)
    {
      goto LABEL_44;
    }

LABEL_57:

LABEL_49:

    LOBYTE(v8) = 2;
LABEL_50:
    v2 = v31;
    v4 = v33;
    v7 = v32;
LABEL_51:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_5038F8(0, v4[2] + 1, 1);
    }

    v29 = v4[2];
    v28 = v4[3];
    if (v29 >= v28 >> 1)
    {
      sub_5038F8((v28 > 1), v29 + 1, 1);
    }

    v4[2] = v29 + 1;
    v30 = v4 + 2 * v29;
    v30[32] = v8;
    v30[33] = v7;
  }

  while (v5 != v2);
}

void sub_5DC1C0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_AB9260();
    v5 = [v3 numberForBagKey:v4];

    if (v5)
    {
      sub_AB9C20();
    }

    v10 = v3;
    v11 = sub_AB9260();
    v12 = [v10 stringForBagKey:v11];

    if (v12)
    {
      v8 = sub_AB92A0();
      v9 = v13;
    }

    else
    {

      v8 = 0;
      v9 = 0;
    }

    v14 = v10;
    v15 = sub_AB9260();
    v16 = [v14 stringForBagKey:v15];

    if (v16)
    {
      v6 = sub_AB92A0();
      v7 = v17;
    }

    else
    {

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = 0x7FFFFFFFFFFFFFFFLL;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v6;
  a2[4] = v7;
}

char *sub_5DC3AC(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_506774(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_506774((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      v4[v8 + 32] = 0x5040302010100uLL >> (8 * v5);
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v29 = v4;
  if (qword_E0CDC0 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    if (!static NSUserDefaults.mobileiPod)
    {
      goto LABEL_16;
    }

    sub_5DE384();
    sub_4FD6CC();
    NSUserDefaults.subscript.getter(&v27);
    if (!v28)
    {
      sub_12E1C(&v27, &qword_E11F60, &unk_B1BC70);
LABEL_16:
      v9 = 1;
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v9 = v26 ^ 1;
LABEL_17:
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 != &dword_0 + 1 || (v12 = *(v4 + 2)) == 0)
    {
LABEL_28:
      v15 = *(v4 + 2);
      if (!v15)
      {
        return v4;
      }

      goto LABEL_29;
    }

    v13 = 0;
    while (1)
    {
      if (v13 >= *(v4 + 2))
      {
        goto LABEL_57;
      }

      if (v4[v13 + 32] > 2u && v4[v13 + 32] <= 4u && v4[v13 + 32] != 3)
      {
        break;
      }

      v14 = sub_ABB3C0();

      if (v14)
      {
        goto LABEL_51;
      }

      if (v12 == ++v13)
      {
        goto LABEL_28;
      }
    }

LABEL_51:
    sub_5207AC(v13);
    v4 = v29;
    v23 = *(v29 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v23 >= *(v4 + 3) >> 1)
    {
      v4 = sub_506774(isUniquelyReferenced_nonNull_native, v23 + 1, 1, v4);
      v29 = v4;
    }

    sub_61D260();
    v15 = *(v4 + 2);
    if (!v15)
    {
      return v4;
    }

LABEL_29:
    v16 = (v9 & 1) == 0;
    if (v9)
    {
      v17 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v17 = 0x7972617262696CLL;
    }

    if (v16)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE900000000000077;
    }

    v19 = 0;
    while (v19 < *(v4 + 2))
    {
      v20 = v4[v19 + 32];
      if (v20 > 2)
      {
        goto LABEL_38;
      }

      if (v4[v19 + 32])
      {
        if (v20 != 1)
        {
          goto LABEL_38;
        }

        v22 = 0xE900000000000077;
        if (v17 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v22 = 0xE700000000000000;
        if (v17 != 0x7972617262696CLL)
        {
          goto LABEL_38;
        }
      }

      if (v22 == v18)
      {

LABEL_40:

        return v4;
      }

LABEL_38:
      v21 = sub_ABB3C0();

      if ((v21 & 1) == 0 && v15 != ++v19)
      {
        continue;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }
}

uint64_t sub_5DC900(uint64_t a1, uint64_t a2)
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
    sub_ABB5C0();
    ApplicationCapabilities.Service.description.getter();
    sub_AB93F0();

    v6 = sub_ABB610();
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
          v14 = 0x8000000000B5B970;
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
          v12 = 0x8000000000B5B9B0;
        }

        else if (v10 == 9)
        {
          v11 = 0xD000000000000011;
          v12 = 0x8000000000B5B990;
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
          v18 = 0x8000000000B5B990;
        }

        if (v5 == 8)
        {
          v17 = 0xD000000000000013;
          v18 = 0x8000000000B5B9B0;
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
        v22 = 0x8000000000B5B970;
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
      v26 = sub_ABB3C0();

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

void sub_5DCD3C(unsigned __int8 a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_59:
    if (a1 == 2)
    {
      v42 = &off_D1A4C8;
      sub_510E34(&off_D1A4F0);
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

    v17._rawValue = &off_D1A608;
    v43._countAndFlagsBits = v14;
    v43._object = v15;
    v18 = sub_ABB140(v17, v43);

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

    v27 = sub_ABB3C0();

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
      v42 = &off_D1A4C8;
      sub_510E34(&off_D1A4F0);
      a1 = v36;
      v28 = v42;
    }

    else
    {
      v28 = &off_D1A518;
    }

LABEL_44:
    v38 = v28;
  }

  else
  {
    v38 = &off_D1A478;
    if (!a1)
    {
      v28 = &off_D1A4A0;
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

    sub_5DA734(&v42, v38, &v41);

    v31 = v41;
    if ((v41 & 0xFF00) != 0x200)
    {
      v32 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_506788(0, *(v40 + 2) + 1, 1, v40);
      }

      v33 = v32;
      v34 = *(v32 + 2);
      v40 = v33;
      v35 = *(v33 + 3);
      if (v34 >= v35 >> 1)
      {
        v40 = sub_506788((v35 > 1), v34 + 1, 1, v40);
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

id sub_5DD1E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = objc_opt_self();
  result = [v6 sharedCloudController];
  if (result)
  {
    v8 = result;
    v9 = [result hasProperNetworkConditionsToShowCloudMedia];

    *(&v88 + 1) = v9;
    *(&v88 + 1) = 0;
    *&v89 = 0;
    *&v90 = &_swiftEmptySetSingleton;
    *(&v90 + 1) = &_swiftEmptySetSingleton;
    *v91 = 0x7FFFFFFFFFFFFFFFLL;
    memset(&v91[8], 0, 32);
    v10 = objc_opt_self();
    v11 = [v10 sharedController];
    v12 = [v11 musicSubscriptionStatus];

    v13 = 1;
    LOBYTE(v92) = 1;
    *(&v92 + 1) = sub_5DC3AC(_swiftEmptyArrayStorage, v14);
    LOBYTE(v93) = v15;
    *(&v93 + 1) = v16;
    v17 = [v10 sharedController];
    v18 = [objc_opt_self() sharedConnection];
    v75 = [v6 sharedCloudController];
    v77 = v17;
    v19 = [v17 musicSubscriptionStatus];
    v20 = v19;
    if (v19)
    {
      v74 = 2 * ([v19 capabilities] & 1);
    }

    else
    {
      v74 = 0;
    }

    v21 = [objc_opt_self() defaultIdentityStore];
    sub_5D8CF8();
    v23 = v22;

    LOBYTE(v88) = (v23 & 1) == 0;
    if (v20)
    {
      v24 = v20;
      *&v89 = [v24 statusType];
      v25 = [v24 capabilities];

      *(&v88 + 1) = v25;
      v13 = (v25 & 1) == 0;
    }

    v26 = [objc_opt_self() sharedPrivacyInfo];
    v27 = [v26 privacyAcknowledgementRequiredForMusic];

    BYTE8(v89) = v27 ^ 1;
    v28 = v77;
    if (sub_5D9E1C(v20, v77))
    {
      sub_682A7C(v87, 2);
    }

    if (qword_E0CC70 != -1)
    {
      swift_once();
    }

    if ([qword_E10120 isRadioAvailable])
    {
      sub_682A7C(v87, 4);
    }

    if (sub_5DA03C(v18, a1))
    {
      sub_682A7C(v87, 3);
    }

    if (a1)
    {
      v29 = sub_AB9260();
      v30 = [a1 BOOLValueForBagKey:v29];

      if (v30)
      {
        sub_682A7C(v87, 9);
      }
    }

    if (v18)
    {
      sub_AB92A0();
      v31 = sub_AB9260();

      v32 = [v18 effectiveBoolValueForSetting:v31];

      if (v32 != 2)
      {
        sub_682A7C(v87, 6);
      }

      sub_AB92A0();
      v33 = sub_AB9260();

      v34 = [v18 effectiveBoolValueForSetting:v33];

      if (v34 != 2)
      {
        sub_682A7C(v87, 0);
      }

      sub_AB92A0();
      v35 = sub_AB9260();

      v36 = [v18 effectiveBoolValueForSetting:v35];

      if (v36 != 2)
      {
        sub_682A7C(v87, 1);
      }

      sub_AB92A0();
      v37 = sub_AB9260();

      v38 = [v18 effectiveBoolValueForSetting:v37];

      if (v38 != 2)
      {
        sub_682A7C(v87, 5);
      }

      *&v91[40] = v20;
      v39 = v20;

      sub_AB92A0();
      v40 = sub_AB9260();

      v41 = [v18 effectiveBoolValueForSetting:v40];

      if (v41 != 2)
      {
        sub_682A7C(v87, 8);
      }

      sub_AB92A0();
      v42 = sub_AB9260();

      v43 = [v18 isBoolSettingLockedDownByRestrictions:v42];

      v28 = v77;
      if (v43)
      {
        sub_682A7C(v87, 7);
      }
    }

    else
    {
      *&v91[40] = v20;
      v44 = v20;
    }

    v45 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10360, &unk_B1C450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 32) = 2;
    LOBYTE(v45) = sub_5DC900(inited, v45);
    swift_setDeallocating();
    if (v45)
    {
      LOBYTE(v92) = v74;
      if (v20)
      {
        v47 = v20;
        if ([v47 statusType] == &dword_0 + 3)
        {
          if (qword_E0CC78 != -1)
          {
            swift_once();
          }

          v48 = sub_AB4BC0();
          __swift_project_value_buffer(v48, qword_E10128);
          v49 = sub_AB4BA0();
          v50 = sub_AB9F40();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_0, v49, v50, "Unexpectedly found a Voice subscriber! 😡", v51, 2u);
            v28 = v77;
          }
        }
      }
    }

    else
    {
      v74 = 1;
    }

    if (a1)
    {
      v52 = v13;
    }

    else
    {
      v52 = 1;
    }

    if ((v52 & 1) == 0)
    {
      v53 = sub_5DA260();
      if (v53 != 2 && (v53 & 1) != 0)
      {
        v54 = sub_5DA4B4();
        if (v54 != 2 && (v54 & 1) != 0)
        {
          sub_682A7C(v87, 10);
        }
      }
    }

    v55 = v75;
    if (v75)
    {
      v56 = v75;
      if ([v56 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        v57 = 0;
      }

      else
      {
        v57 = [v56 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      v57 = 0;
    }

    BYTE1(v88) = v57;
    BYTE2(v88) = [v28 isCloudLibraryEnabled];
    v58 = a1;
    sub_5DC1C0(a1, v91);
    if (a3)
    {
      *&v87[0] = &off_D1A688;
      sub_510E34(&off_D1A6B0);
      v59 = *&v87[0];
    }

    else
    {
      v60 = *(a2 + 16);
      __chkstk_darwin();
      os_unfair_lock_lock((v60 + 44));
      sub_5DE3D8((v60 + 16), v87);
      os_unfair_lock_unlock((v60 + 44));
      if (*&v87[0])
      {
        sub_5DCD3C(v74, *&v87[0]);
        v59 = v61;

        v55 = v75;
      }

      else
      {
        v55 = v75;
        if (v74)
        {
          if (v74 == 1)
          {
            v59 = &off_D1A478;
          }

          else
          {
            *&v87[0] = &off_D1A4C8;
            sub_510E34(&off_D1A4F0);
            v59 = *&v87[0];
          }
        }

        else
        {
          v59 = &off_D1A4A0;
        }
      }
    }

    sub_5DB9A0(v59, &v88);
    v63 = v62;

    v65 = sub_5DC3AC(v63, v64);
    LOBYTE(v63) = v66;
    v68 = v67;

    *(&v92 + 1) = v65;
    LOBYTE(v93) = v63;
    *(&v93 + 1) = v68;
    v83 = *&v91[16];
    v84 = *&v91[32];
    v79 = v88;
    v80 = v89;
    v81 = v90;
    v82 = *v91;
    v85 = v92;
    v86 = v93;
    v87[6] = v92;
    v87[7] = v93;
    v87[2] = v90;
    v87[3] = *v91;
    v87[0] = v88;
    v87[1] = v89;
    v87[4] = *&v91[16];
    v87[5] = *&v91[32];
    sub_5DE204(&v79, &v78);
    result = sub_70C54(v87);
    v69 = v84;
    a4[4] = v83;
    a4[5] = v69;
    v70 = v86;
    a4[6] = v85;
    a4[7] = v70;
    v71 = v80;
    *a4 = v79;
    a4[1] = v71;
    v72 = v82;
    a4[2] = v81;
    a4[3] = v72;
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
  v3._rawValue = &off_D1B600;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

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
  v3._rawValue = &off_D1B728;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void sub_5DDC0C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if ((*(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) & 1) == 0)
  {
    **(v0 + 24) = 1;
    *(v1 + v2) = 1;
  }
}

uint64_t sub_5DDC38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_5D70C0(a1, v4, v5, v6);
}

unint64_t sub_5DDCF8()
{
  result = qword_E10198;
  if (!qword_E10198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10198);
  }

  return result;
}

unint64_t sub_5DDD50()
{
  result = qword_E101A0;
  if (!qword_E101A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E101A0);
  }

  return result;
}

__n128 __swift_memcpy128_8_0(uint64_t a1, __int128 *a2)
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

uint64_t getEnumTagSinglePayload for JSShelfSection.UniformCellType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JSShelfSection.UniformCellType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_5DDF30(uint64_t a1, unsigned int a2)
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

uint64_t sub_5DDF8C(uint64_t result, unsigned int a2, unsigned int a3)
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
  result = qword_E101E0;
  if (!qword_E101E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5DE074(uint64_t a1)
{
  sub_5DE154();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_5DE154()
{
  if (!qword_E101F0)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E101F0);
    }
  }
}

uint64_t sub_5DE23C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_5DE2BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[21];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_5D86DC(a1, v4, v5, v6, (v1 + 5), v7);
}

unint64_t sub_5DE384()
{
  result = qword_E10358;
  if (!qword_E10358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10358);
  }

  return result;
}

unint64_t sub_5DE3F4()
{
  result = qword_E10370;
  if (!qword_E10370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10370);
  }

  return result;
}

uint64_t sub_5DE448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5DE490()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_5DE4C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103A8, &unk_B1C460);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_5DE598(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103A8, &unk_B1C460);
  v3 = *(v1 + 16);

  return sub_5D9850(a1, v3);
}

uint64_t sub_5DE618()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_5DE704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_5D76D4(a1, v4, v5, v6);
}

double block_copy_helper_178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5DE7E0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_5DE820()
{
  result = qword_E103D0;
  if (!qword_E103D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E103D0);
  }

  return result;
}

uint64_t sub_5DE8AC()
{

  return swift_deallocObject();
}

id sub_5DE8FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = v2;

  return v2;
}

unint64_t sub_5DE950()
{
  result = qword_E10408;
  if (!qword_E10408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10408);
  }

  return result;
}

unint64_t sub_5DE9A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1B7A8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5DEA5C()
{
  type metadata accessor for BackgroundFetchManager();
  result = swift_initStaticObject();
  static BackgroundFetchManager.shared = result;
  return result;
}

uint64_t *BackgroundFetchManager.shared.unsafeMutableAddressor()
{
  if (qword_E0CCF0 != -1)
  {
    swift_once();
  }

  return &static BackgroundFetchManager.shared;
}

void BackgroundFetchManager.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_5DF388();
  if (*(v6 + 16) && (v7 = sub_52215C(a1, a2), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), , , *(v9 + 16)) && (v10 = sub_52215C(7107189, 0xE300000000000000), (v11 & 1) != 0))
  {
    sub_808B0(*(v9 + 56) + 32 * v10, v13);

    if (swift_dynamicCast())
    {
      sub_AB3180();

      return;
    }
  }

  else
  {
  }

  v12 = sub_AB31C0();
  (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
}

void (*BackgroundFetchManager.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160) - 8) + 64);
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
  return sub_5DECF4;
}

void sub_5DECF4(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_5B513C(a1[3], v2);

    _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(v2, v5, v4);
    sub_12E1C(v3, &qword_E0DC30, &unk_B15160);
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
  v1 = sub_AB9260();
  [v0 removeObjectForKey:v1];
}

void sub_5DEE30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), int a4, int a5, int a6, dispatch_group_t group)
{
  if (a3)
  {
    a3(a1, a2);
  }

  if (a2)
  {
    __chkstk_darwin();
    swift_errorRetain();
    UnfairLock.locked<A>(_:)(sub_5E081C);
  }

  dispatch_group_leave(group);
}

uint64_t sub_5DEF04(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_506BB8(0, v4[2] + 1, 1, v4);
    *a1 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_506BB8((v6 > 1), v7 + 1, 1, v4);
    *a1 = v4;
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  swift_endAccess();
  return swift_errorRetain();
}

double sub_5DEFE0(uint64_t a1, uint64_t a2, void (*a3)())
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E104B8, &qword_B1C588);
  UnfairLock.locked<A>(_:)(sub_5E07C0);
  a3();

  return result;
}

void sub_5DF078()
{
  if (qword_E0CD28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
  UnfairLock.locked<A>(_:)(sub_4FD6B0);
  v0 = v3;
  if (v3 && (sub_5DF174(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x4122750000000000;
  }

  qword_E10410 = v2;
  byte_E10418 = v1;
}

void sub_5DF174(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 valueForBagKey:ICURLBagKeyMusicCommon])
  {
    sub_ABAB50();
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
    sub_12E1C(v10, &qword_E11F60, &unk_B1BC70);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070, &unk_B1C590);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v11 + 16) || (v3 = sub_52215C(0xD00000000000001ELL, 0x8000000000B6CC80), (v4 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_808B0(*(v11 + 56) + 32 * v3, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD18, &qword_B1BE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    *a2 = 0;
    v9 = 1;
    goto LABEL_17;
  }

  v5 = v11;
  sub_ABAD10();
  if (!*(v5 + 16) || (v6 = sub_2EC004(v10), (v7 & 1) == 0))
  {

    sub_8085C(v10);
    goto LABEL_16;
  }

  sub_808B0(*(v5 + 56) + 32 * v6, &v11);
  sub_8085C(v10);

  v8 = swift_dynamicCast();
  if ((v8 & 1) == 0)
  {
    *a2 = 0;
  }

  v9 = v8 ^ 1;
LABEL_17:
  *(a2 + 8) = v9;
}

unint64_t sub_5DF388()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_AB9260();
  v2 = [v0 dictionaryForKey:v1];

  if (v2)
  {
    v3 = sub_AB8FF0();

    sub_782504(v3);
    v5 = v4;

    if (v5)
    {
      return v5;
    }
  }

  else
  {
  }

  v7 = sub_52A798(_swiftEmptyArrayStorage);

  return v7;
}

uint64_t _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v8 = sub_AB31C0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5B513C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &qword_E0DC30, &unk_B15160);
    v25 = sub_5DF388();
    sub_6F8EF0(a2, a3);

    v12 = [objc_opt_self() standardUserDefaults];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070, &unk_B1C590);
    isa = sub_AB8FD0().super.isa;

    v14 = sub_AB9260();
    [v12 setObject:isa forKey:v14];

    return sub_12E1C(a1, &qword_E0DC30, &unk_B15160);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0, &unk_B1B4E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 32) = 7107189;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
    *(inited + 56) = v17;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 1702125924;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 120) = sub_AB3430();
    __swift_allocate_boxed_opaque_existential_0((inited + 96));
    sub_AB3420();
    v18 = sub_52995C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA58, &qword_B18020);
    swift_arrayDestroy();
    v19 = sub_5DF388();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v19;
    sub_525AD4(v18, a2, a3, isUniquelyReferenced_nonNull_native);

    v21 = [objc_opt_self() standardUserDefaults];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070, &unk_B1C590);
    v22 = sub_AB8FD0().super.isa;

    v23 = sub_AB9260();
    [v21 setObject:v22 forKey:v23];

    sub_12E1C(a1, &qword_E0DC30, &unk_B15160);
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
  v5 = sub_AB7C10();
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin();
  v95 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_AB7C50();
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v93 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_AB2A90();
  v8 = *(v72 - 8);
  __chkstk_darwin();
  v78 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v86 = v66 - v10;
  v87 = sub_AB3430();
  v11 = *(v87 - 8);
  __chkstk_darwin();
  v80 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = v66 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v103 = v66 - v14;
  v100 = sub_AB31C0();
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
  if (qword_E0CCF8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v19 = *&qword_E10410;
  v20 = sub_5DF388();
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
              v108 = sub_5E075C;
              v109 = v59;
              aBlock = _NSConcreteStackBlock;
              v105 = 1107296256;
              v106 = sub_1B5EB4;
              v107 = &block_descriptor_13_3;
              v61 = _Block_copy(&aBlock);

              v62 = v93;
              sub_AB7C30();
              v110 = _swiftEmptyArrayStorage;
              sub_5E0768();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50, &qword_B1C580);
              sub_5D1CEC();
              v63 = v95;
              v64 = v99;
              sub_ABABB0();
              v65 = v102;
              sub_ABA0F0();
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

      v31 = sub_52215C(7107189, 0xE300000000000000);
      if (v32)
      {
        sub_808B0(*(v30 + 56) + 32 * v31, &aBlock);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

    v88 = v15;
    sub_AB3180();

    v33 = v100;
    if ((*v89)(v8, 1, v100) == 1)
    {

      v34 = v8;
      v35 = &qword_E0DC30;
      v36 = &unk_B15160;
      goto LABEL_22;
    }

    (*v85)(v90, v8, v33);
    v37 = v86;
    if (!*(v30 + 16) || (v38 = sub_52215C(1702125924, 0xE400000000000000), (v39 & 1) == 0))
    {

      (*v83)(v90, v100);
      (*v84)(v37, 1, 1, v87);
LABEL_21:
      v34 = v37;
      v35 = &qword_E0FF60;
      v36 = &qword_B1BCA0;
LABEL_22:
      sub_12E1C(v34, v35, v36);
      goto LABEL_23;
    }

    sub_808B0(*(v30 + 56) + 32 * v38, &aBlock);

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
    sub_AB3420();
    sub_AB3340();
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
  sub_AB2A50();
  v112._object = (v75 | 0x8000000000000000);
  v111._countAndFlagsBits = 1702195828;
  v111._object = 0xE400000000000000;
  v112._countAndFlagsBits = 0xD00000000000001ALL;
  sub_AB2A60(v111, v112);
  v47 = objc_allocWithZone(ICMusicKitRequestContext);
  v108 = sub_61EE64;
  v109 = 0;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_41A314;
  v107 = &block_descriptor_179;
  v48 = _Block_copy(&aBlock);
  v49 = [v47 initWithBlock:v48];
  _Block_release(v48);

  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    v69 = objc_allocWithZone(ICMusicKitURLRequest);
    v50 = sub_AB2A30();
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
    v108 = sub_5E0704;
    v109 = v51;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_151E0;
    v107 = &block_descriptor_7_0;
    v67 = _Block_copy(&aBlock);
    v66[1] = v109;
    sub_307CC(v52, v53);

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

uint64_t sub_5E065C()
{

  return swift_deallocObject();
}

double block_copy_helper_179(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5E06AC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5E0714()
{

  return swift_deallocObject();
}

unint64_t sub_5E0768()
{
  result = qword_E13D90;
  if (!qword_E13D90)
  {
    sub_AB7C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13D90);
  }

  return result;
}

double sub_5E07C0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;

  return result;
}

id sub_5E0848()
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
  if (qword_E0CD00 != -1)
  {
    swift_once();
  }

  return &static BackgroundRefreshController.shared;
}

double static BackgroundRefreshController.shared.getter()
{
  if (qword_E0CD00 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_307CC(v1, *(v0 + 24));
  return v1;
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_17654(v5, v6);
}

Swift::Void __swiftcall BackgroundRefreshController.registerAllTasks()()
{
  v0 = sub_AB9F50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0, &qword_B1B4C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF4EC0;
  *(v1 + 56) = &type metadata for String;
  v2 = sub_5C2204();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0xD00000000000002FLL;
  *(v1 + 40) = 0x8000000000B6CD00;
  sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
  v3 = sub_ABA980();
  sub_AB4A90(v0, &dword_0, v3, "BackgroundRefreshController: REGISTER TASK: %@", 46, 2, v1);

  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = sub_AB9260();
  aBlock[4] = sub_5E0CE4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_180;
  v7 = _Block_copy(aBlock);
  [v5 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v7];
  _Block_release(v7);

  v8 = sub_AB9F50();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = v2;
  *(v9 + 32) = 0xD000000000000041;
  *(v9 + 40) = 0x8000000000B6CD90;
  v10 = sub_ABA980();
  sub_AB4A90(v8, &dword_0, v10, "BackgroundRefreshController: CANCEL DEPRECATED TASK: %@", 55, 2, v9);

  v11 = [v4 sharedScheduler];
  v12 = sub_AB9260();
  [v11 cancelTaskRequestWithIdentifier:v12];
}

double sub_5E0CE4(uint64_t a1)
{
  if (qword_E0CD00 != -1)
  {
    swift_once();
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  return sub_5E0D64(v1);
}

double sub_5E0D64(void *a1)
{
  v3 = *v1;
  v4 = sub_AB9F50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0, &qword_B1B4C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF4EC0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_5C2204();
  *(v5 + 32) = 0xD00000000000002FLL;
  *(v5 + 40) = 0x8000000000B6CD00;
  sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
  v6 = sub_ABA980();
  sub_AB4A90(v4, &dword_0, v6, "BackgroundRefreshController: EXECUTING REFRESH SUBTASKS: %@", 59, 2, v5);

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v3;
  v8 = a1;
  sub_5E24E0(sub_5E4D14, v7);

  return result;
}

double block_copy_helper_180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

Swift::Void __swiftcall BackgroundRefreshController.scheduleAllTasks()()
{
  v72 = *v0;
  v78 = sub_AB7C10();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v75 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_AB7C50();
  v74 = *(v76 - 8);
  __chkstk_darwin();
  v73 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v96 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v71 - v4;
  v5 = sub_AB3430();
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
  if (qword_E0CD10 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v18 = off_E104C8;
    sub_AB3330();
    v83 = v6;
    v19 = *(v6 + 16);
    v82 = v17;
    v80 = v6 + 16;
    v79 = v19;
    v19(v15, v17, v5);
    v97 = v18;
    v84 = *(&dword_10 + v18);
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
        sub_5E419C();
        sub_4FD6CC();
        NSUserDefaults.subscript.getter(&aBlock);

        if (v104)
        {
          v35 = v95;
          v36 = swift_dynamicCast();
          (*v89)(v35, v36 ^ 1u, 1, v5);
        }

        else
        {
          sub_12E1C(&aBlock, &qword_E11F60, &unk_B1BC70);
          v35 = v95;
          (*v89)(v95, 1, 1, v5);
        }

        v37 = v96;
        sub_5E41F0(v35, v96);
        v38 = *v20;
        if ((*v20)(v37, 1, v5) == 1)
        {
          v86 = v21;
          v39 = v93;
          sub_AB3420();
          v40 = v38(v37, 1, v5);
          v21 = v86;
          if (v40 != 1)
          {
            sub_12E1C(v37, &qword_E0FF60, &qword_B1BCA0);
          }
        }

        else
        {
          v39 = v93;
          (*v98)(v93, v37, v5);
        }

        sub_12E1C(v35, &qword_E0FF60, &qword_B1BCA0);
        sub_AB33A0();
        Kind = v17->Kind;
        (v17->Kind)(v39, v5);
        v42 = v94;
        sub_AB3420();
        if (sub_AB3390())
        {
          v23 = v85;
          sub_AB33A0();
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
        sub_5E4C94(&qword_E10508, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v28 = sub_AB9160();
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

    if (*(v97 + 2))
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
    if (v6 >= *(v97 + 2))
    {
      goto LABEL_44;
    }
  }

  v49 = *v47;
  v50 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v101) = v49;
  sub_5E419C();
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&aBlock);

  if (!v104)
  {
    sub_12E1C(&aBlock, &qword_E11F60, &unk_B1BC70);
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
  sub_AB3420();
  (*(v83 + 40))(v100, v52, v5);
  v51 = 1;
LABEL_38:
  v53 = v85;
  v54 = v79;
  v79(v85, v100, v5);
  v55 = v81;
  sub_AB3330();
  v56 = sub_AB3390();
  v57 = v98;
  (v98)(v55, v5);
  (v57)(v53, v5);
  if (v51 & 1) != 0 || (v56)
  {
    v58 = objc_allocWithZone(BGAppRefreshTaskRequest);
    v59 = sub_AB9260();
    v60 = [v58 initWithIdentifier:v59];

    v61 = v85;
    v54(v85, v100, v5);
    v62 = v60;
    isa = sub_AB3370().super.isa;
    (v57)(v61, v5);
    [v62 setEarliestBeginDate:isa];

    if (qword_E0CD08 != -1)
    {
      swift_once();
    }

    v64 = swift_allocObject();
    v65 = v99;
    *(v64 + 16) = v62;
    *(v64 + 24) = v65;
    *(v64 + 32) = v51;
    *(v64 + 40) = v72;
    v105 = sub_5E42A0;
    v106 = v64;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v103 = sub_1B5EB4;
    v104 = &block_descriptor_3_4;
    v66 = _Block_copy(&aBlock);
    v67 = v62;

    v68 = v73;
    sub_AB7C30();
    v101 = _swiftEmptyArrayStorage;
    sub_5E4C94(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50, &qword_B1C580);
    sub_809E0(&qword_E13DA0, &unk_E11A50, &qword_B1C580);
    v69 = v75;
    v70 = v78;
    sub_ABABB0();
    sub_ABA160();
    _Block_release(v66);

    (*(v77 + 8))(v69, v70);
    (*(v74 + 8))(v68, v76);
  }
}

void sub_5E1BC8(void *a1, uint64_t a2, int a3)
{
  v42 = a3;
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  v9 = sub_AB9F50();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0, &qword_B1B4C0);
  v10 = swift_allocObject();
  v40 = xmmword_AF85F0;
  *(v10 + 16) = xmmword_AF85F0;
  v11 = [a1 identifier];
  v12 = sub_AB92A0();
  v14 = v13;

  *(v10 + 56) = &type metadata for String;
  v15 = sub_5C2204();
  *(v10 + 64) = v15;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  sub_AB33D0();
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
  sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
  v19 = sub_ABA980();
  sub_AB4A90(v9, &dword_0, v19, "BackgroundRefreshController: SCHEDULING TASK: %@ EARLIEST BEGIN DATE %{time_t}d", 79, 2, v10);

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
    v25 = sub_AB3050();

    swift_willThrow();
    v26 = sub_AB9F30();
    v27 = swift_allocObject();
    *(v27 + 16) = v40;
    v28 = [a1 identifier];
    v29 = sub_AB92A0();
    v31 = v30;

    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v15;
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    v43 = v25;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v32 = sub_AB9350();
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v15;
    *(v27 + 72) = v32;
    *(v27 + 80) = v33;
    v34 = sub_ABA980();
    sub_AB4A90(v26, &dword_0, v34, "BackgroundRefreshController: SCHEDULING TASK: %@ ERROR %@", 57, 2, v27);

    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  v35 = sub_AB9F50();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_AF4EC0;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v15;
  *(v36 + 32) = 0xD00000000000002FLL;
  *(v36 + 40) = 0x8000000000B6CD00;
  v37 = sub_ABA980();
  sub_AB4A90(v35, &dword_0, v37, "BackgroundRefreshController: FORCING TASK: %@", 45, 2, v36);

  v38 = [v20 sharedScheduler];
  v39 = sub_AB9260();
  [v38 _simulateLaunchForTaskWithIdentifier:v39];
}

double sub_5E209C(char a1, void *a2, uint64_t a3)
{
  v6 = sub_AB7C10();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB7C50();
  v10 = *(v18 - 8);
  __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CD08 != -1)
  {
    swift_once();
  }

  v17[1] = qword_E104C0;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a3;
  aBlock[4] = sub_5E4F68;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_45_4;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  sub_AB7C30();
  v19 = _swiftEmptyArrayStorage;
  sub_5E4C94(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50, &qword_B1C580);
  sub_809E0(&qword_E13DA0, &unk_E11A50, &qword_B1C580);
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);

  return result;
}

void sub_5E239C(void *a1, char a2)
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
  v4 = sub_AB9F30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0, &qword_B1B4C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF85F0;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_5C2204();
  *(v5 + 32) = 0xD00000000000002FLL;
  *(v5 + 40) = 0x8000000000B6CD00;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 64) = v6;
  *(v5 + 72) = v2;
  *(v5 + 80) = v3;
  sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
  v7 = sub_ABA980();
  sub_AB4A90(v4, &dword_0, v7, "BackgroundRefreshController: COMPLETED REFRESH SUBTASKS: %@ SUCCESS: %@", 71, 2, v5);
}

void sub_5E24E0(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v62 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v61 = *(v5 - 8);
  __chkstk_darwin();
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v76 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v57 - v8;
  v10 = sub_AB3430();
  v66 = *(v10 - 8);
  __chkstk_darwin();
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v57 - v12;
  __chkstk_darwin();
  v74 = &v57 - v13;
  __chkstk_darwin();
  v73 = &v57 - v14;
  __chkstk_darwin();
  v72 = &v57 - v15;
  __chkstk_darwin();
  v77 = &v57 - v16;
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v87);

  v95[4] = v91;
  v95[5] = v92;
  v96 = v93;
  v97 = v94;
  v95[0] = v87;
  v95[1] = v88;
  v95[2] = v89;
  v95[3] = v90;
  sub_70C54(v95);
  v64 = v3;
  v65 = v2;
  v63 = v5;
  if (v96 == 2)
  {
    v83 = 1;
  }

  else
  {
    v83 = sub_ABB3C0();
  }

  sub_AB3420();
  v79 = dispatch_group_create();
  v80 = swift_allocObject();
  *(v80 + 16) = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v78 = UnfairLock.init()();
  if (qword_E0CD10 != -1)
  {
    swift_once();
  }

  v17 = off_E104C8;
  v18 = *(&dword_10 + off_E104C8);
  if (v18)
  {
    v85 = objc_opt_self();
    v70 = (v66 + 48);
    v71 = (v66 + 56);
    v19 = v17 + 50;
    v81 = (v66 + 32);
    v82 = v9;
    v68 = (v66 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v69 = (v66 + 8);
    do
    {
      v84 = *(v19 - 18);
      v23 = *v19;
      if (v83 & 1 | ((*(v19 - 17) & 1) == 0))
      {
        v24 = *(v19 - 10);
        v25 = *(v19 - 1);
        v26 = [v85 standardUserDefaults];
        LOBYTE(v86) = v25;
        sub_5E419C();
        sub_4FD6CC();
        NSUserDefaults.subscript.getter(&v87);

        if (*(&v88 + 1))
        {
          v27 = swift_dynamicCast();
          (*v71)(v9, v27 ^ 1u, 1, v10);
        }

        else
        {
          sub_12E1C(&v87, &qword_E11F60, &unk_B1BC70);
          (*v71)(v9, 1, 1, v10);
        }

        v29 = v76;
        v30 = v70;
        sub_5E41F0(v9, v76);
        v31 = *v30;
        if ((*v30)(v29, 1, v10) == 1)
        {
          v32 = v74;
          sub_AB3420();
          if (v31(v29, 1, v10) != 1)
          {
            sub_12E1C(v29, &qword_E0FF60, &qword_B1BCA0);
          }
        }

        else
        {
          v32 = v74;
          (*v81)(v74, v29, v10);
        }

        sub_12E1C(v9, &qword_E0FF60, &qword_B1BCA0);
        v33 = v73;
        sub_AB33A0();
        v34 = *v69;
        (*v69)(v32, v10);
        v35 = v75;
        sub_AB3420();
        if (sub_AB3390())
        {
          v36 = v67;
          sub_AB33A0();
          v34(v35, v10);
          v34(v33, v10);
          v37 = *v81;
          (*v81)(v33, v36, v10);
        }

        else
        {
          v34(v35, v10);
          v37 = *v81;
        }

        v38 = v72;
        v37(v72, v33, v10);
        sub_5E4C94(&qword_E10508, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v39 = sub_AB9160();
        v34(v38, v10);
        v28 = (v24 > 0.0) & ~v39;
      }

      else
      {
        v28 = 0;
      }

      v40 = [v85 standardUserDefaults];
      LOBYTE(v86) = v23;
      v41 = sub_5E419C();
      v42 = sub_4FD6CC();
      NSUserDefaults.subscript.getter(&v87);

      if (*(&v88 + 1))
      {
        if (swift_dynamicCast() & 1) != 0 && (v86)
        {
          v43 = [v85 standardUserDefaults];
          *(&v88 + 1) = &type metadata for Bool;
          LOBYTE(v87) = 0;
          LOBYTE(v86) = v23;
          NSUserDefaults.subscript.setter(&v87, &v86, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v41, v42, v44);

LABEL_32:
          v45 = v79;
          dispatch_group_enter(v79);
          if (v84)
          {
            v20 = swift_allocObject();
            v21 = v80;
            v20[2] = v78;
            v20[3] = v21;
            v20[4] = v45;

            v22 = v45;
            sub_5E3550(sub_5E4DFC, v20);
          }

          else
          {
            v46 = swift_allocObject();
            v47 = v80;
            v46[2] = v78;
            v46[3] = v47;
            v46[4] = v45;

            v48 = v45;
            sub_5E31E8(sub_5E50A8, v46);
          }

          goto LABEL_12;
        }
      }

      else
      {
        sub_12E1C(&v87, &qword_E11F60, &unk_B1BC70);
      }

      if (v28)
      {
        goto LABEL_32;
      }

LABEL_12:
      v19 += 24;
      --v18;
      v9 = v82;
    }

    while (v18);
  }

  if (qword_E0CD08 != -1)
  {
    swift_once();
  }

  v85 = qword_E104C0;
  v49 = swift_allocObject();
  v50 = v80;
  v49[2] = v78;
  v49[3] = v50;
  v51 = v59;
  v49[4] = v58;
  v49[5] = v51;
  *&v89 = sub_5E4D7C;
  *(&v89 + 1) = v49;
  *&v87 = _NSConcreteStackBlock;
  *(&v87 + 1) = 1107296256;
  *&v88 = sub_1B5EB4;
  *(&v88 + 1) = &block_descriptor_23_2;
  v52 = _Block_copy(&v87);

  v53 = v60;
  sub_AB7C30();
  v86 = _swiftEmptyArrayStorage;
  sub_5E4C94(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50, &qword_B1C580);
  sub_809E0(&qword_E13DA0, &unk_E11A50, &qword_B1C580);
  v54 = v62;
  v55 = v65;
  sub_ABABB0();
  v56 = v79;
  sub_ABA0F0();
  _Block_release(v52);

  (*(v64 + 8))(v54, v55);
  (*(v61 + 8))(v53, v63);
  (*(v66 + 8))(v77, v10);
}

void sub_5E3178(_BYTE *a1, char a2)
{
  swift_beginAccess();
  v4 = *a1 & a2;
  swift_beginAccess();
  *a1 = v4 & 1;
}

void sub_5E31E8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CD18 != -1)
  {
    swift_once();
  }

  v7 = word_E104D0;
  v8 = HIBYTE(word_E104D0);
  v9 = qword_E104D8;
  v10 = word_E104E0;
  v11 = HIBYTE(word_E104E0);
  HIDWORD(v27) = byte_E104E2;
  sub_AB3420();
  v12 = [objc_opt_self() standardUserDefaults];
  v31 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(aBlock);
  (*(v4 + 16))(boxed_opaque_existential_0, v6, v3);
  v34 = v11;
  v14 = sub_5E419C();
  v15 = sub_4FD6CC();
  NSUserDefaults.subscript.setter(aBlock, &v34, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v14, v15, v16);

  (*(v4 + 8))(v6, v3);
  v17 = sub_AB9F50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0, &qword_B1B4C0);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = xmmword_AF4EC0;
  v20 = "updateSubscribedPlaylists";
  if (v7)
  {
    v21 = 0xD000000000000018;
  }

  else
  {
    v21 = 0xD000000000000019;
  }

  if (!v7)
  {
    v20 = "allowsPumpkinContent";
  }

  v22 = v20 | 0x8000000000000000;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_5C2204();
  *(v19 + 32) = v21;
  *(v19 + 40) = v22;
  sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
  v23 = sub_ABA980();
  sub_AB4A90(v17, &dword_0, v23, "BackgroundRefreshController: EXECUTING SUBTASK: %@", 50, 2, v19);

  v24 = *(v28 + 32);
  v25 = swift_allocObject();
  *(v25 + 16) = v7;
  *(v25 + 17) = v8;
  *(v25 + 24) = v9;
  *(v25 + 32) = v10;
  *(v25 + 33) = v11;
  *(v25 + 34) = BYTE4(v27);
  *(v25 + 40) = v29;
  *(v25 + 48) = a2;
  v32 = sub_5E4E40;
  v33 = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3A5920;
  v31 = &block_descriptor_36_4;
  v26 = _Block_copy(aBlock);

  [v24 updatePinnedSubscribedPlaylistsWithCompletion:v26];
  _Block_release(v26);
}

void sub_5E3550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CD20 != -1)
  {
    swift_once();
  }

  v9 = word_E104E8;
  v10 = qword_E104F0;
  v29 = byte_E104F8;
  v30 = HIBYTE(word_E104E8);
  v11 = byte_E104F9;
  v12 = byte_E104FA;
  sub_AB3420();
  v13 = [objc_opt_self() standardUserDefaults];
  v33[3] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(v6 + 16))(boxed_opaque_existential_0, v8, v5);
  v32 = v11;
  v15 = sub_5E419C();
  v16 = sub_4FD6CC();
  NSUserDefaults.subscript.setter(v33, &v32, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v15, v16, v17);

  (*(v6 + 8))(v8, v5);
  v18 = sub_AB9F50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0, &qword_B1B4C0);
  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 16) = xmmword_AF4EC0;
  v21 = "updateSubscribedPlaylists";
  if (v9)
  {
    v22 = 0xD000000000000018;
  }

  else
  {
    v22 = 0xD000000000000019;
  }

  if (!v9)
  {
    v21 = "allowsPumpkinContent";
  }

  v23 = v21 | 0x8000000000000000;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_5C2204();
  *(v20 + 32) = v22;
  *(v20 + 40) = v23;
  sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
  v24 = sub_ABA980();
  sub_AB4A90(v18, &dword_0, v24, "BackgroundRefreshController: EXECUTING SUBTASK: %@", 50, 2, v20);

  if (qword_E0CD08 != -1)
  {
    swift_once();
  }

  v25 = qword_E104C0;
  v26 = swift_allocObject();
  *(v26 + 16) = v9;
  v27 = v29;
  *(v26 + 17) = v30;
  *(v26 + 24) = v10;
  *(v26 + 32) = v27;
  *(v26 + 33) = v11;
  *(v26 + 34) = v12;
  *(v26 + 40) = v31;
  *(v26 + 48) = a2;

  _s9MusicCore22BackgroundFetchManagerC14updateURLCache5queue20onDidReceiveResponse10completionySo012OS_dispatch_H0C_ySo13ICURLResponseCSg_s5Error_pSgtcSgySaysAM_pGctF_0(v25, sub_5E4E58, v3, sub_5E4E60, v26);
}

uint64_t sub_5E38B4(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v7 = 0xD000000000000018;
  if (a1)
  {
    swift_errorRetain();
    v8 = sub_AB9F30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0, &qword_B1B4C0);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_AF85F0;
    v11 = "updateSubscribedPlaylists";
    if ((a2 & 1) == 0)
    {
      v7 = 0xD000000000000019;
      v11 = "allowsPumpkinContent";
    }

    v12 = v11 | 0x8000000000000000;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_5C2204();
    v10[8] = v13;
    v10[4] = v7;
    v10[5] = v12;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v14 = sub_AB9350();
    v10[12] = &type metadata for String;
    v10[13] = v13;
    v10[9] = v14;
    v10[10] = v15;
    sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
    v16 = sub_ABA980();
    sub_AB4A90(v8, &dword_0, v16, "BackgroundRefreshController: COMPLETED SUBTASK: %@ ERROR %@", 59, 2, v10);
  }

  else
  {
    v17 = sub_AB9F30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0, &qword_B1B4C0);
    v18 = swift_allocObject();
    v19 = v18;
    *(v18 + 16) = xmmword_AF4EC0;
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
    *(v18 + 64) = sub_5C2204();
    *(v19 + 32) = v22;
    *(v19 + 40) = v23;
    sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
    v24 = sub_ABA980();
    sub_AB4A90(v17, &dword_0, v24, "BackgroundRefreshController: COMPLETED SUBTASK: %@ SUCCESS", 58, 2, v19);
  }

  return a4(a1 == 0);
}

double sub_5E3B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  if (v6)
  {

    v6(a1);
  }

  return result;
}

uint64_t sub_5E3B84(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v6 = sub_AB9F50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0, &qword_B1B4C0);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_AF4EC0;
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
  v12 = sub_5C2204();
  v8[8] = v12;
  v8[4] = v10;
  v8[5] = v11;
  sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
  v13 = sub_ABA980();
  sub_AB4A90(v6, &dword_0, v13, "BackgroundRefreshController: COMPLETED SUBTASK: %@", 50, 2, v8);

  v23 = *(a1 + 16);
  if (v23)
  {
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    do
    {
      v14 += 8;
      swift_errorRetain();
      v16 = sub_AB9F30();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_AF85F0;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = v12;
      *(v17 + 32) = v10;
      *(v17 + 40) = v11;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
      v18 = sub_AB9350();
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v12;
      *(v17 + 72) = v18;
      *(v17 + 80) = v19;
      v20 = sub_ABA980();
      sub_AB4A90(v16, &dword_0, v20, "BackgroundRefreshController: ERROR EXECUTING SUBTASK: %@ ERROR %@", 65, 2, v17);

      --v15;
    }

    while (v15);
  }

  return a4(v23 == 0);
}

uint64_t sub_5E3DAC()
{
  v5 = sub_ABA140();
  v0 = *(v5 - 8);
  __chkstk_darwin();
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA100();
  __chkstk_darwin();
  sub_AB7C50();
  __chkstk_darwin();
  v4[1] = sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
  sub_AB7C30();
  v6 = _swiftEmptyArrayStorage;
  sub_5E4C94(&qword_E105C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E105C8, &qword_B1C718);
  sub_809E0(&qword_E105D0, &qword_E105C8, &qword_B1C718);
  sub_ABABB0();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  result = sub_ABA180();
  qword_E104C0 = result;
  return result;
}

uint64_t BackgroundRefreshController.deinit()
{
  sub_17654(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t BackgroundRefreshController.__deallocating_deinit()
{
  sub_17654(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

double sub_5E4074()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E105D8, &qword_B1C720);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  if (qword_E0CD18 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  v1 = HIBYTE(word_E104D0);
  v2 = qword_E104D8;
  v3 = word_E104E0;
  v4 = *(&word_E104E0 + 1);
  *(v0 + 32) = word_E104D0;
  *(v0 + 33) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 49) = v4;
  if (qword_E0CD20 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  v5 = HIBYTE(word_E104E8);
  result = *&qword_E104F0;
  v7 = byte_E104F8;
  v8 = *&byte_E104F9;
  *(v0 + 56) = word_E104E8;
  *(v0 + 57) = v5;
  *(v0 + 64) = result;
  *(v0 + 72) = v7;
  *(v0 + 73) = v8;
  off_E104C8 = v0;
  return result;
}

unint64_t sub_5E419C()
{
  result = qword_E10500;
  if (!qword_E10500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10500);
  }

  return result;
}

uint64_t sub_5E41F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5E4260()
{

  return swift_deallocObject();
}

unint64_t sub_5E42F8()
{
  result = qword_E105B8;
  if (!qword_E105B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E105B8);
  }

  return result;
}

void sub_5E434C()
{
  if (qword_E0CD28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
  UnfairLock.locked<A>(_:)(sub_5DEA18);

  word_E104D0 = 256;
  qword_E104D8 = 0x40E5180000000000;
  word_E104E0 = 257;
  byte_E104E2 = 0;
}

void sub_5E442C()
{
  if (qword_E0CD28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
  UnfairLock.locked<A>(_:)(sub_4FD6B0);
  v0 = v3;
  if (v3 && (sub_5E4538(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x40D5180000000000;
  }

  word_E104E8 = 257;
  qword_E104F0 = v2;
  byte_E104F8 = v1;
  *&byte_E104F9 = 515;
}

void sub_5E4538(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB9260();
  v5 = [a1 dictionaryForBagKey:v4];

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = sub_AB8FF0();

  sub_781F8C(v6);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_12;
  }

  if (!*(v8 + 16))
  {
    goto LABEL_11;
  }

  v9 = sub_52215C(0xD00000000000001ELL, 0x8000000000B6CC80);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_808B0(*(v8 + 56) + 32 * v9, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070, &unk_B1C590);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *a2 = 0;
    v14 = 1;
    goto LABEL_13;
  }

  if (!*(v15 + 16) || (v11 = sub_52215C(0xD00000000000001DLL, 0x8000000000B6CF40), (v12 & 1) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_808B0(*(v15 + 56) + 32 * v11, v16);

  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    *a2 = 0;
  }

  v14 = v13 ^ 1;
LABEL_13:
  *(a2 + 8) = v14;
}

uint64_t sub_5E46F4(_BYTE *a1, _BYTE *a2)
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
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_5E479C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_5E4818(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_5E4880(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_5E48F8(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D1B828;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_5E4958(unint64_t *a1@<X8>)
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

Swift::Int sub_5E49A0()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_5E4A54(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_5E4AF4(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_5E4BA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5E4C48(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_5E4BD4(unint64_t *a1@<X8>)
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

unint64_t sub_5E4C48(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1B878;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5E4C94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5E4CDC()
{

  return swift_deallocObject();
}

uint64_t sub_5E4D34()
{

  return swift_deallocObject();
}

uint64_t sub_5E4D7C()
{
  v1 = *(v0 + 32);
  UnfairLock.locked<A>(_:)(sub_5E4ED8);
  return v1(v3);
}

uint64_t sub_5E4E08()
{

  return swift_deallocObject();
}

uint64_t sub_5E4E78(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, __n128), __n128 a3)
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

void sub_5E4ED8(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;
}

uint64_t sub_5E4F30()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
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

unint64_t sub_5E503C()
{
  result = qword_E105E0[0];
  if (!qword_E105E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E105E0);
  }

  return result;
}

uint64_t BagControlledValue.init(fallback:reader:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a1;
  v6 = sub_ABA9C0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = *(a3 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CD28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
  UnfairLock.locked<A>(_:)(sub_4FD6B0);
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

uint64_t sub_5E53B8(uint64_t a1)
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

uint64_t sub_5E5444(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

unsigned int *sub_5E55AC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  if (qword_E0CD28 != -1)
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

  sub_17654(v5, v6);
  UnfairLock.locked<A>(_:)(sub_5CB8D4);
  sub_5E5FD8(0);
  return v4;
}

uint64_t BagProvider.bag.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
  UnfairLock.locked<A>(_:)(sub_5E6258);
  return v1;
}

double BagProvider.getBag(completion:)(void (*a1)(), uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
  UnfairLock.locked<A>(_:)(sub_5E8248);
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
    *(v5 + 24) = sub_5DE660;
    *(v5 + 32) = v7;

    sub_17654(v8, v9);

    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_5DE66C);
    sub_5E5FD8(0);
  }

  return result;
}

void sub_5E5B94()
{
  if (qword_E0CDC8 != -1)
  {
    swift_once();
  }

  v0 = static ICClientInfo.music;
  type metadata accessor for BagProvider(0);
  swift_allocObject();
  v1 = v0;
  v2 = sub_5E7944(v1);

  static BagProvider.shared = v2;
}

double static BagProvider.shared.getter()
{
  if (qword_E0CD28 != -1)
  {
    swift_once();
  }

  return result;
}

_BYTE *sub_5E5CA0@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
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

double sub_5E5CFC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    __chkstk_darwin();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E109E0, &qword_B1D010);
    UnfairLock.locked<A>(_:)(sub_5E77EC);
  }

  return result;
}

void sub_5E5DF4(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v7 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  v8 = sub_5E7C9C((Strong + v7), a2);
  if (!v3)
  {
    v9 = v8;

    v10 = *(Strong + v7);
    if (v10 >> 62)
    {
      v11 = sub_ABB060();
      if (v11 >= v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v11 >= v9)
      {
LABEL_5:
        sub_52B4B0(v9, v11);
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

double sub_5E5F18(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  sub_AB9730();
  if (*(&dword_10 + (*(a1 + v3) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a1 + v3) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  return result;
}

void sub_5E5FD8(char a1)
{
  v2 = v1;
  UnfairLock.locked<A>(_:)(sub_5E7EC4);
  if (LOBYTE(aBlock[0]) == 1)
  {
    UnfairLock.locked<A>(_:)(sub_5E7EFC);
    v4 = [objc_opt_self() activeAccount];
    v5 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v4 clientInfo:*(v1 + 16)];

    v6 = [objc_opt_self() sharedBagProvider];
    aBlock[4] = sub_5E7F10;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_181;
    v7 = _Block_copy(aBlock);

    [v6 getBagForRequestContext:v5 forceRefetch:a1 & 1 withCompletionHandler:v7];
    _Block_release(v7);
  }
}

void sub_5E6198(uint64_t a1, uint64_t a2, void **a3)
{
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E109D8, &unk_B1C9D0);
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

id sub_5E6258@<X0>(void *a1@<X8>)
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

uint64_t sub_5E62B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_5E62EC()
{

  return swift_deallocObject();
}

void sub_5E6334(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10710, qword_B25BC0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost;
  swift_beginAccess();
  sub_5E7FC8(v1 + v7, v6);
  v8 = type metadata accessor for Signpost(0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_5E7508(v6);
    if (qword_E0CD70 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.musicBag;

    Signpost.init(name:object:log:)("Bag", 3, 2, v10, a1);
    sub_5E8038(a1, v4);
    (*(v9 + 56))(v4, 0, 1, v8);
    swift_beginAccess();
    sub_5E809C(v4, v1 + v7);
    swift_endAccess();
  }

  else
  {
    sub_5E810C(v6, a1);
  }
}

double sub_5E6540(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_5E6598();
  }

  return result;
}

void sub_5E6598()
{
  UnfairLock.locked<A>(_:)(sub_5E8178);

  if (v4 == 1)
  {
    UnfairLock.locked<A>(_:)(sub_5E81BC);
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_5E8230);

    v0 = sub_AB4BA0();
    v1 = sub_AB9F50();
    if (os_log_type_enabled(v0, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&dword_0, v0, v1, "Notification triggered to update bag: storefrontChanged", v2, 2u);
    }

    sub_5E5FD8(1);
  }
}

void sub_5E6734(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Signpost(0);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + OBJC_IVAR____TtC9MusicCore11BagProvider_lock);
  UnfairLock.locked<A>(_:)(sub_5E7F30);
  if (v27)
  {
    sub_5E5FD8(1);
    v9 = sub_5E8218;
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
    v10 = sub_AB3040();

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
  UnfairLock.locked<A>(_:)(sub_5E7F44);
  if (!a1)
  {
    goto LABEL_18;
  }

  v14 = v27;
  if (v27 >> 62)
  {
    v15 = sub_ABB060();
    if (!v15)
    {
LABEL_18:

      sub_5E6334(v7);
      Signpost.end(dso:)(&dword_0);

      sub_5E7F5C(v7);
      v9 = sub_5E7FB8;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
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

    v18 = sub_ABAE20();
    v19 = *(v18 + 24);
    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_16:
    v20 = *(v18 + 32);

    v19(v16);
    sub_17654(v19, v20);
    goto LABEL_11;
  }

  __break(1u);
LABEL_23:
  LODWORD(v22) = 0;
  v21 = 149;
  sub_ABAFD0();
  __break(1u);
}

double sub_5E6A80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E109D8, &unk_B1C9D0);
  WeakArray.remove(_:)(a2, v3);
  swift_endAccess();
  return result;
}

double sub_5E6B04()
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
    v4 = sub_AB4BA0();
    v5 = sub_AB9F50();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Successfully loaded a bag from iTunesCloud", v6, 2u);
    }

    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    Strong = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v7;
    sub_5E6FC8(Strong);
  }

  else
  {
    v3 = v2;
    v10 = sub_AB4BA0();
    v11 = sub_AB9F30();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v3 code];
      _os_log_impl(&dword_0, v10, v11, "Error retrieving bag: %ld", v12, 0xCu);
    }

    v13 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    v14 = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v13;
    sub_5E6FC8(v14);
  }

  return result;
}

void sub_5E6D24(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5)
{
  v7 = a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  v8 = *(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  *v7 = a2;
  *(v7 + 8) = a3;
  v9 = a2;

  sub_5E6B04();
  if (a4)
  {
    swift_beginAccess();
    v10 = type metadata accessor for BagProvider.Observer();

    v14 = WeakArray.allElements.getter(v11, v10, v12, v13);

    swift_beginAccess();

    sub_511174(v15);
    *a5 = v14;
  }
}

uint64_t BagProvider.Observer.deinit()
{
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_5E6EDC);
  }

  swift_weakDestroy();
  sub_17654(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t BagProvider.Observer.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_5E8200);
  }

  swift_weakDestroy();
  sub_17654(*(v0 + 24), *(v0 + 32));
  return swift_deallocClassInstance();
}

void sub_5E6FC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB4BC0();
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

        v13 = sub_AB4BA0();
        v14 = sub_AB9F50();
        if (!os_log_type_enabled(v13, v14))
        {
          v16 = &selRef_registerObserver_;
          goto LABEL_19;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "Beginning observation to retry loading bag", v15, 2u);
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

        v13 = sub_AB4BA0();
        v18 = sub_AB9F50();
        if (!os_log_type_enabled(v13, v18))
        {
          v16 = &selRef_unregisterObserver_;
          v9 = v7;
          goto LABEL_19;
        }

        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v13, v18, "Stopping observation to retry loading bag", v19, 2u);
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

id sub_5E73AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BagProvider.Retry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BagProvider.deinit()
{
  sub_5E7508(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost);

  v1 = OBJC_IVAR____TtC9MusicCore11BagProvider_logger;
  v2 = sub_AB4BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_5E7508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10710, qword_B25BC0);
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
  result = qword_E10780;
  if (!qword_E10780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5E761C(uint64_t a1)
{
  sub_5E7730(319);
  if (v1 <= 0x3F)
  {
    sub_AB4BC0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_5E7730(uint64_t a1)
{
  if (!qword_E10790)
  {
    type metadata accessor for Signpost(255);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E10790);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9MusicCore11BagProviderC6Result33_D1F028703756EAFCB4E62A24E619467FLLO(uint64_t a1)
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

uint64_t __swift_memcpy9_8_0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

NSString sub_5E7808()
{
  result = sub_AB9260();
  qword_E106F0 = result;
  return result;
}

unint64_t sub_5E7840(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_ABB060();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = sub_ABAE20();
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

uint64_t sub_5E7944(void *a1)
{
  v2 = v1;
  type metadata accessor for Signpost(0);
  v4 = __chkstk_darwin();
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  if (qword_E0CD70 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.musicBag;
  sub_AB4BD0();
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_isFetching) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_deferReload) = 0;
  v12 = OBJC_IVAR____TtC9MusicCore11BagProvider_retry;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for BagProvider.Retry()) init];
  *(v2 + 16) = a1;
  v13 = v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  *v13 = 0;
  *(v13 + 8) = 2;
  v14 = a1;
  sub_5E6334(v6);
  Signpost.begin(dso:)(&dword_0);
  sub_5E7F5C(v6);
  sub_5E5FD8(0);
  type metadata accessor for Whitetail.Binding();
  if (qword_E0CD30 != -1)
  {
    swift_once();
  }

  v15 = qword_E106F0;
  UIScreen.Dimensions.size.getter();
  v22[3] = &type metadata for DistributedNotificationTrigger;
  v22[4] = &protocol witness table for DistributedNotificationTrigger;
  v22[0] = v16;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v15;
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v22, 0, sub_5E8170, v17);
  v19 = OBJC_IVAR____TtC9MusicCore11BagProvider_bindings;
  swift_beginAccess();

  sub_AB9730();
  if (*(&dword_10 + (*(v2 + v19) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v19) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();

  return v2;
}

uint64_t sub_5E7C9C(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_5E7840(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_ABB060();
    }

    return *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
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
      if (v11 == sub_ABB060())
      {
        return v10;
      }
    }

    else if (v11 == *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = sub_ABAE20();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = sub_ABAE20();
        v14 = sub_ABAE20();
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
    v13 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
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
          v7 = sub_2845A4(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *(&stru_20.cmd + 8 * v10 + (v7 & 0xFFFFFFFFFFFFFF8)) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_2845A4(v7);
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
  return sub_ABB060();
}

double block_copy_helper_181(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5E7F5C(uint64_t a1)
{
  v2 = type metadata accessor for Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5E7FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10710, qword_B25BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5E8038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5E809C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10710, qword_B25BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_5E810C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_5E8178@<X0>(uint64_t a1@<X8>)
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

double sub_5E834C(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

unint64_t sub_5E8458@<X0>(Swift::String *a1@<X0>, MusicCore::TabIdentifier_optional *a2@<X8>)
{
  result = _s9MusicCore13TabIdentifierO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_5E8488@<X0>(uint64_t *a1@<X8>)
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

double sub_5E8590(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

unint64_t sub_5E869C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5E87A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_5E86CC(uint64_t *a1@<X8>)
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

unint64_t sub_5E87A0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1A540;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

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
  v3._rawValue = &off_D1B8F8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_5E883C()
{
  result = qword_E109F0;
  if (!qword_E109F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E109F0);
  }

  return result;
}

unint64_t sub_5E8894()
{
  result = qword_E109F8;
  if (!qword_E109F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E10A00, &qword_B1CA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E109F8);
  }

  return result;
}

unint64_t sub_5E88FC()
{
  result = qword_E10A08;
  if (!qword_E10A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10A08);
  }

  return result;
}

unint64_t sub_5E897C()
{
  result = qword_E10A10;
  if (!qword_E10A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10A10);
  }

  return result;
}

uint64_t sub_5E89D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_15F84(a3, v24 - v9, &qword_E0E340, &qword_B18550);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_E0E340, &qword_B18550);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
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

      sub_12E1C(a3, &qword_E0E340, &qword_B18550);

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

  sub_12E1C(a3, &qword_E0E340, &qword_B18550);
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

uint64_t sub_5E8CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_15F84(a3, v24 - v9, &qword_E0E340, &qword_B18550);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_E0E340, &qword_B18550);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
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

      sub_12E1C(a3, &qword_E0E340, &qword_B18550);

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

  sub_12E1C(a3, &qword_E0E340, &qword_B18550);
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

uint64_t sub_5E8FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_15F84(a3, v24 - v9, &qword_E0E340, &qword_B18550);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_E0E340, &qword_B18550);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10CE8, &qword_B1CFF0);
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

      sub_12E1C(a3, &qword_E0E340, &qword_B18550);

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

  sub_12E1C(a3, &qword_E0E340, &qword_B18550);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10CE8, &qword_B1CFF0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_5E92E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_15F84(a3, v24 - v9, &qword_E0E340, &qword_B18550);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_E0E340, &qword_B18550);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E109E0, &qword_B1D010);
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

      sub_12E1C(a3, &qword_E0E340, &qword_B18550);

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

  sub_12E1C(a3, &qword_E0E340, &qword_B18550);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E109E0, &qword_B1D010);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_5E95F8(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_ABB5C0(), ActionType.rawValue.getter(a1), sub_AB93F0(), , v4 = sub_ABB610(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
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

      v13 = sub_ABB3C0();

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

uint64_t sub_5E9748(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB8550();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_5F5020(&qword_E10CF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant), v7 = sub_AB90D0(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_5F5020(&qword_E10D00, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v15 = sub_AB91C0();
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

uint64_t sub_5E9960(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, sub_ABB5C0(), Library.Menu.Identifier.rawValue.getter(v3), sub_AB93F0(), , v4 = sub_ABB610(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xD000000000000029;
      v9 = "LibraryView.Playlists";
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Artists";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Albums";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Songs";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.MadeForYou";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.MusicVideos";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Genres";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Compilations";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Composers";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Shows";
          break;
        case 0xA:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Downloaded";
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Downloading";
          break;
        case 0xC:
          v8 = 0xD000000000000027;
          v9 = "ByPlaylistOrderAscending";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "LibraryView.Playlists";
      switch(v3)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Artists";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Albums";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Songs";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.MadeForYou";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.MusicVideos";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Genres";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Compilations";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Composers";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Shows";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Downloaded";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Downloading";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "ByPlaylistOrderAscending";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_ABB3C0();

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

uint64_t sub_5E9D44(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_ABB5C0();
  SortOptions.ContentType.identifier.getter(v3);
  sub_AB93F0();

  v4 = sub_ABB610();
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
    sub_ABB5C0();
    sub_AB93F0();

    v10 = sub_ABB610();
    sub_ABB5C0();
    sub_AB93F0();

    if (v10 == sub_ABB610())
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

uint64_t Playlist.hasActiveCollaboration.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A40, &qword_B1CBE0);
  __chkstk_darwin();
  v1 = &v16 - v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A48, &qword_B1CBE8);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  sub_AB8BF0();
  v6 = sub_AB8BE0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    sub_12E1C(v1, &qword_E10A40, &qword_B1CBE0);
    v8 = sub_AB8B30();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  sub_AB8BB0();
  (*(v7 + 8))(v1, v6);
  v9 = sub_AB8B30();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_13;
  }

  sub_15F84(v5, v3, &qword_E10A48, &qword_B1CBE8);
  v11 = (*(v10 + 88))(v3, v9);
  if (v11 != enum case for Playlist.Collaborator.Status.host(_:) && v11 != enum case for Playlist.Collaborator.Status.joined(_:) && v11 != enum case for Playlist.Collaborator.Status.pending(_:))
  {
    (*(v10 + 8))(v3, v9);
    goto LABEL_13;
  }

  v14 = 1;
LABEL_14:
  sub_12E1C(v5, &qword_E10A48, &qword_B1CBE8);
  return v14;
}

BOOL Playlist.Collaboration.hasPendingCollaborators.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A50, &qword_B1CBF0);
  __chkstk_darwin();
  v1 = v6 - v0;
  sub_AB8BC0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A58, &qword_B1CBF8);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v1, &qword_E10A50, &qword_B1CBF0);
    return 0;
  }

  else
  {
    sub_36A00(&unk_E10A60, &qword_E10A58, &qword_B1CBF8, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_AB9C60();
    sub_AB9CA0();
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

void sub_5EA790()
{
  type metadata accessor for Collaboration.ArtworkCachingReference();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000027;
  *(v0 + 24) = 0x8000000000B6A110;
  v1 = objc_opt_self();
  v2 = sub_AB9260();

  [v1 setCacheLimit:100 forCacheIdentifier:v2 cacheReference:v0];

  static Collaboration.artworkCaching = v0;
}

uint64_t *Collaboration.artworkCaching.unsafeMutableAddressor()
{
  if (qword_E0CD38 != -1)
  {
    swift_once();
  }

  return &static Collaboration.artworkCaching;
}

double static Collaboration.artworkCaching.getter()
{
  if (qword_E0CD38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static Collaboration.artworkCaching.setter(uint64_t a1)
{
  if (qword_E0CD38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Collaboration.artworkCaching = a1;

  return result;
}

uint64_t (*static Collaboration.artworkCaching.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_E0CD38 != -1)
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
      sub_ABAD90(17);
      v4._countAndFlagsBits = 0x74694B636973754DLL;
      v4._object = 0xEF3D726F72726520;
    }

    else
    {
      sub_ABAD90(25);
      v4._object = 0x8000000000B6D3E0;
      v4._countAndFlagsBits = 0xD000000000000017;
    }

    sub_AB94A0(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    sub_ABAF70();
    return v7;
  }

  if (a3 == 2)
  {
    sub_ABAD90(38);

    v7 = 0xD000000000000024;
    v8._countAndFlagsBits = a1;
    v8._object = a2;
    sub_AB94A0(v8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v1 = &v33 - v0;
  v2 = sub_AB3470();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v33 - v13;
  if (qword_E0D528 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v33 = v5;
    v34 = v3;
    v35 = v2;
    v36 = v1;
    v15 = sub_52A450(_swiftEmptyArrayStorage);
    sub_62DE74(0xD00000000000001FLL, 0x8000000000B6D490, 0xD000000000000032, 0x8000000000B6D4B0, _swiftEmptyArrayStorage, v15, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v14, 1u);

    sub_15F84(v14, v12, &qword_E0DC30, &unk_B15160);
    if ((*(v7 + 48))(v12, 1, v6) == 1)
    {
      sub_12E1C(v14, &qword_E0DC30, &unk_B15160);
      v16 = v12;
    }

    else
    {
      v17 = *(v7 + 32);
      v17(v10, v12, v6);
      v18 = [objc_opt_self() sharedApplication];
      sub_AB30F0(v19);
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
        v27 = sub_AB3440();
        v29 = v28;
        (*(v34 + 8))(v26, v35);
        (*(v7 + 8))(v10, v6);
        sub_12E1C(v14, &qword_E0DC30, &unk_B15160);
        v30 = sub_AB9990();
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
        *(v32 + 72) = &unk_B1F200;
        *(v32 + 80) = v25;
        sub_5E89D8(0, 0, v31, &unk_B1CC08, v32);

        return;
      }

      (*(v7 + 8))(v10, v6);
      v16 = v14;
    }

    sub_12E1C(v16, &qword_E0DC30, &unk_B15160);
  }
}

uint64_t sub_5EB324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v7[1] = sub_5EB474;

    return v10(a4, v4 + 16);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_5EB474()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Collaboration.Manager.__allocating_init(coordinator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_70DF8(a1, v2 + 16);
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

uint64_t sub_5EB6E4()
{
  v0 = sub_AB8C40();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D90, &qword_B192F0);
  __chkstk_darwin();
  v5 = &v9 - v4;
  sub_AB8C50();
  if ((*(v1 + 48))(v5, 1, v0) == 1)
  {
    sub_12E1C(v5, &unk_E10D90, &qword_B192F0);
  }

  else
  {
    sub_AB8C30();
    sub_5F5020(&qword_E0EFC0, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
    v6 = sub_ABAB70();
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
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v5);

  v6[4] = v5[4];
  v6[5] = v5[5];
  v6[6] = v5[6];
  v6[7] = v5[7];
  v6[0] = v5[0];
  v6[1] = v5[1];
  v6[2] = v5[2];
  v6[3] = v5[3];
  if ((BYTE8(v5[0]) & 1) == 0)
  {
    v0 = 3;
    goto LABEL_10;
  }

  if (BYTE2(v6[0]) != 1)
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
      return sub_70C54(v6);
    }

    v0 = 7;
LABEL_10:
    sub_5F46BC();
    swift_allocError();
    *v4 = v0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    swift_willThrow();
    return sub_70C54(v6);
  }

  __break(1u);
  return result;
}

uint64_t Logger.collaboration.unsafeMutableAddressor()
{
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.collaboration);
}

uint64_t sub_5EBCEC(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

double sub_5EBD50(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;

  return result;
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  if (*(a1._rawValue + 2) && (v2 = static Collaboration.Manager.DeepLinkType.actionKey, v3 = qword_E10A28, , v4 = sub_52215C(v2, v3), v6 = v5, , (v6 & 1) != 0))
  {
    v7 = (*(a1._rawValue + 7) + 16 * v4);
    v8 = *v7;
    v9 = v7[1];

    v10._rawValue = &off_D1B9E8;
    v14._countAndFlagsBits = v8;
    v14._object = v9;
    v11 = sub_ABB140(v10, v14);

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
  v2._rawValue = &off_D1B9E8;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

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

uint64_t sub_5EBF6C(_BYTE *a1, _BYTE *a2)
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
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_5EC00C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_5EC088(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_5EC0F0(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_5EC168(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D1B9E8;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_5EC1C8(uint64_t *a1@<X8>)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A78, &qword_B1CC58);
  __chkstk_darwin();
  v2 = &v18 - v1;
  v3 = sub_AB2CE0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2C40();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_12E1C(v2, &qword_E10A78, &qword_B1CC58);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = URLComponents.queryItemsDictionary.getter();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    return v7;
  }

  v8 = sub_507E14(&off_D1BA38);
  swift_arrayDestroy();
  swift_beginAccess();
  if (!v7[2] || (v9 = static Collaboration.Manager.DeepLinkType.actionKey, v10 = qword_E10A28, , v11 = sub_52215C(v9, v10), v13 = v12, , (v13 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  v14 = (v7[7] + 16 * v11);
  v15 = *v14;
  v16 = v14[1];

  LOBYTE(v15) = sub_472F00(v15, v16, v8);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A40, &qword_B1CBE0);
  *(v3 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  *(v3 + 48) = swift_task_alloc();
  v4 = sub_AB8B90();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_AB8E20();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v6 = sub_AB4260();
  *(v3 + 112) = v6;
  *(v3 + 120) = *(v6 - 8);
  *(v3 + 128) = swift_task_alloc();
  sub_AB9940();
  *(v3 + 136) = sub_AB9930();
  v8 = sub_AB98B0();
  *(v3 + 144) = v8;
  *(v3 + 152) = v7;

  return _swift_task_switch(sub_5EC6D8, v8, v7);
}

uint64_t sub_5EC6D8()
{
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  *(v0 + 160) = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_0, v2, v3, "Start called - isOpenInvite=%{BOOL,public}d", v5, 8u);
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
  sub_AB4240();
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_5EC8E8;
  v17 = *(v0 + 24);

  return MusicCollaborativePlaylist.StartCollaborationRequest.response()(v17);
}

uint64_t sub_5EC8E8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_5ECFD4;
  }

  else
  {
    v5 = sub_5ECA24;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5ECA24()
{
  v47 = v0;
  v1 = v0[5];

  sub_AB8BF0();
  v2 = sub_AB8BE0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[5];
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_12E1C(v0[5], &qword_E10A40, &qword_B1CBE0);
    v7 = sub_AB31C0();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  else
  {
    sub_AB8B80();
    (*(v3 + 8))(v6, v2);
    v8 = sub_AB31C0();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
    {
      v43 = v0[6];
      (*(v0[15] + 8))(v0[16], v0[14]);
      sub_12E1C(v43, &qword_E0DC30, &unk_B15160);

      v42 = v0[1];
      goto LABEL_11;
    }
  }

  v9 = v0[21];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[3];
  sub_12E1C(v0[6], &qword_E0DC30, &unk_B15160);
  v9(v10, v12, v11);
  v13 = sub_AB4BA0();
  v14 = sub_AB9F30();
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
    sub_5F5020(&qword_E10A80, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v20 = sub_ABB330();
    v22 = v21;
    v23 = v18;
    v24 = *(v17 + 8);
    v24(v16, v23);
    v25 = sub_500C84(v20, v22, v46);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_0, v13, v14, "invitationURL missing for=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {

    v26 = v18;
    v24 = *(v17 + 8);
    v24(v16, v26);
  }

  v27 = v0[10];
  v28 = v0[3];
  sub_5F46BC();
  v29 = swift_allocError();
  *v30 = xmmword_AF89D0;
  *(v30 + 16) = 3;
  swift_willThrow();
  v24(v28, v27);
  swift_errorRetain();
  v31 = sub_AB4BA0();
  v32 = sub_AB9F30();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136446210;
    v0[2] = v29;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v35 = sub_AB9350();
    v37 = sub_500C84(v35, v36, v46);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_0, v31, v32, "Start failed with error=%{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
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

uint64_t sub_5ECFD4()
{
  v16 = v0;

  v1 = v0[24];
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Start failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  sub_5F46BC();
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
  v4 = sub_AB8E20();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_AB41D0();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_AB31C0();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_AB9940();
  v3[16] = sub_AB9930();
  v8 = sub_AB98B0();
  v3[17] = v8;
  v3[18] = v7;

  return _swift_task_switch(sub_5ED3AC, v8, v7);
}

uint64_t sub_5ED3AC()
{
  v29 = v0;
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[5];
  v5 = sub_AB4BC0();
  v0[19] = __swift_project_value_buffer(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
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
    sub_5F5020(&qword_E10A88, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = v8;
    v14 = v6;
    v15 = sub_ABB330();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_500C84(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v7, v26, "Validate called with url=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
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
  sub_AB41A0();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_5ED688;
  v24 = v0[3];

  return MusicCollaborativePlaylist.JoinRequest.validate()(v24);
}

uint64_t sub_5ED688()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_5ED87C;
  }

  else
  {
    v5 = sub_5ED7C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5ED7C4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_5ED87C()
{
  v17 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_AB4BA0();
  v5 = sub_AB9F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v9 = sub_AB9350();
    v11 = sub_500C84(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v4, v5, "Validate failed with error=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v12 = v0[21];
  sub_5F46BC();
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
  v3 = sub_AB8E20();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_AB41D0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_AB31C0();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_AB9940();
  v2[16] = sub_AB9930();
  v7 = sub_AB98B0();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_5EDC48, v7, v6);
}

uint64_t sub_5EDC48()
{
  v29 = v0;
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[4];
  v5 = sub_AB4BC0();
  v0[19] = __swift_project_value_buffer(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
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
    sub_5F5020(&qword_E10A88, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = v8;
    v14 = v6;
    v15 = sub_ABB330();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_500C84(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v7, v26, "Join called with url=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
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
  sub_AB41A0();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_5EDF24;
  v24 = v0[7];

  return MusicCollaborativePlaylist.JoinRequest.response()(v24);
}

uint64_t sub_5EDF24()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_5EE11C;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_5EE050;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_5EE050()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_5EE11C()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "Join failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = v0[21];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  sub_5F46BC();
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
  v3 = sub_AB8E20();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_AB4200();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_AB9940();
  v2[11] = sub_AB9930();
  v6 = sub_AB98B0();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_5EE480, v6, v5);
}

uint64_t sub_5EE480()
{
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  v0[14] = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "End called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  sub_AB41E0();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_5EE618;
  v10 = v0[3];

  return MusicCollaborativePlaylist.EndCollaborationRequest.response()(v10);
}

uint64_t sub_5EE618()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_5EE754;
  }

  else
  {
    v5 = sub_5F50C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5EE754()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "End failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_5F46BC();
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
  v4 = sub_AB4300();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_AB8E20();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = sub_AB8B70();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  sub_AB9940();
  *(v3 + 128) = sub_AB9930();
  v8 = sub_AB98B0();
  *(v3 + 136) = v8;
  *(v3 + 144) = v7;

  return _swift_task_switch(sub_5EEB08, v8, v7);
}

uint64_t sub_5EEB08()
{
  v44 = v0;
  if (qword_E0CD40 != -1)
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
  v9 = sub_AB4BC0();
  *(v0 + 152) = __swift_project_value_buffer(v9, static Logger.collaboration);
  v42 = *(v3 + 16);
  v42(v1, v8, v2);
  v41 = *(v6 + 16);
  v41(v4, v7, v5);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
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
    v21 = sub_AB9350();
    v23 = sub_500C84(v21, v22, &v43);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    sub_5F5020(&unk_E10A90, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v24 = sub_ABB330();
    v26 = v25;
    (*(v14 + 8))(v13, v15);
    v27 = sub_500C84(v24, v26, &v43);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    sub_5F5020(&qword_E10A80, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v28 = sub_ABB330();
    v30 = v29;
    (*(v17 + 8))(v16, v18);
    v31 = sub_500C84(v28, v30, &v43);

    *(v20 + 24) = v31;
    _os_log_impl(&dword_0, log, v40, "    Moderate called for:\n        - type=%{public}s\n        - collaborator=%{public}s\n        - playlist=%{public}s", v20, 0x20u);
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
  sub_AB42D0();
  if (v35)
  {
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = sub_5EF1A0;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.reject()();
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 160) = v37;
    *v37 = v0;
    v37[1] = sub_5EEF98;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.approve()();
  }
}

uint64_t sub_5EEF98()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_5EF2DC;
  }

  else
  {
    v5 = sub_5EF0D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5EF0D4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_5EF1A0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_5EF4EC;
  }

  else
  {
    v5 = sub_5F50A4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5EF2DC()
{
  v16 = v0;
  v1 = v0[21];

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_5F46BC();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_5EF4EC()
{
  v16 = v0;
  v1 = v0[23];

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_5F46BC();
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
  v4 = sub_AB4230();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_AB8E20();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_AB8B70();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_AB9940();
  v3[17] = sub_AB9930();
  v8 = sub_AB98B0();
  v3[18] = v8;
  v3[19] = v7;

  return _swift_task_switch(sub_5EF8C4, v8, v7);
}

uint64_t sub_5EF8C4()
{
  v39 = v0;
  if (qword_E0CD40 != -1)
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
  v9 = sub_AB4BC0();
  v0[20] = __swift_project_value_buffer(v9, static Logger.collaboration);
  v37 = *(v3 + 16);
  v37(v1, v8, v2);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
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
    sub_5F5020(&unk_E10A90, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v20 = sub_ABB330();
    v34 = v12;
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = sub_500C84(v20, v22, &v38);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    sub_5F5020(&qword_E10A80, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v24 = sub_ABB330();
    v26 = v25;
    (*(v18 + 8))(v17, v36);
    v27 = sub_500C84(v24, v26, &v38);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_0, log, v34, "    Remove called for:\n        - collaborator=%{public}s\n        - playlist=%{public}s", v19, 0x16u);
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
  sub_AB4210();
  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = sub_5EFCA8;
  v32 = v0[3];

  return MusicCollaborativePlaylist.RemoveCollaboratorRequest.response()(v32);
}

uint64_t sub_5EFCA8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_5EFEB0;
  }

  else
  {
    v5 = sub_5EFDE4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5EFDE4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_5EFEB0()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "Remove failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = v0[22];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  sub_5F46BC();
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
  v3 = sub_AB8E20();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_AB4290();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_AB9940();
  v2[11] = sub_AB9930();
  v6 = sub_AB98B0();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_5F0214, v6, v5);
}

uint64_t sub_5F0214()
{
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  v0[14] = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Reset URL called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  sub_AB4270();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_5F03AC;
  v10 = v0[3];

  return MusicCollaborativePlaylist.ResetInvitationLinkRequest.response()(v10);
}

uint64_t sub_5F03AC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_5F0584;
  }

  else
  {
    v5 = sub_5F04E8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5F04E8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_5F0584()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "Reset failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_5F46BC();
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
  v3 = sub_AB8B90();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  v4 = sub_AB42C0();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A40, &qword_B1CBE0);
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_AB8BE0();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  sub_AB9940();
  *(v2 + 120) = sub_AB9930();
  v7 = sub_AB98B0();
  *(v2 + 128) = v7;
  *(v2 + 136) = v6;

  return _swift_task_switch(sub_5F0964, v7, v6);
}

uint64_t sub_5F0964()
{
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  *(v0 + 144) = __swift_project_value_buffer(v1, static Logger.collaboration);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_0, v2, v3, "updateShareOption called with isOpen=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  sub_AB8BF0();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = *(v0 + 80);

    sub_12E1C(v9, &qword_E10A40, &qword_B1CBE0);
    sub_5F46BC();
    swift_allocError();
    *v10 = xmmword_B03570;
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
    sub_AB42A0();
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = sub_5F0C7C;

    return MusicCollaborativePlaylist.UpdateInvitationModeRequest.response()();
  }
}