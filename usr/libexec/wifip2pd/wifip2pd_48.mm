uint64_t sub_1003E89D0(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  sub_10000AB0C(a1, a2);
  v12 = a4;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_1000124C8(a1, a2);

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = a3;
    v19 = v18;
    v28 = v18;
    *v16 = 136315650;
    v20 = Data.description.getter();
    v22 = sub_100002320(v20, v21, &v28);

    *(v16 + 4) = v22;
    *(v16 + 12) = 256;
    *(v16 + 14) = v26;
    *(v16 + 15) = 2112;
    *(v16 + 17) = v12;
    *v17 = v12;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "#### Publisher received message: %s from subscriber: %hhu in address: %@", v16, 0x19u);
    sub_100016290(v17, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v19);

    return (*(v9 + 8))(v11, v27);
  }

  else
  {

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1003E8CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003E8D44(uint64_t a1)
{
  sub_10005DC58(&qword_1005989E0, &qword_1004B28E0);
  v10 = v1[3];
  v11 = v1[2];
  v8 = v1[7];
  v9 = v1[6];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10030BDD0;

  return sub_1003D4D04(a1, v11, v10, v9, v8, v3, v4, v5);
}

uint64_t sub_1003E8ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003E8F5C(uint64_t a1)
{
  sub_1003E9A78(319, &unk_100598A50, &type metadata accessor for WABrowserAgentInterface.DescriptorToAgent);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003E9058(uint64_t a1)
{
  sub_1003E9A78(319, &unk_100598B40, &type metadata accessor for WAListenerAgentInterface.DescriptorToAgent);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003E91A4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1003E9338(uint64_t a1)
{
  sub_1003E9A78(319, &qword_100598F28, &type metadata accessor for NWEndpoint);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1003E9444(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E954C(uint64_t a1)
{
  result = type metadata accessor for NWEndpoint();
  if (v2 <= 0x3F)
  {
    result = sub_100018AB4(319, &unk_100599030, WiFiMACAddress_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E9640(uint64_t a1)
{
  v1 = type metadata accessor for WAError.ErrorCode();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1003E96F0(uint64_t a1)
{
  type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    sub_1003E9A78(319, &qword_100599170, &type metadata accessor for WASubscribableService);
    if (v2 <= 0x3F)
    {
      sub_1003E9A78(319, &qword_100599178, &type metadata accessor for WAPairedDevice);
      if (v3 <= 0x3F)
      {
        sub_1001D6F04();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003E9804(uint64_t a1)
{
  type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    sub_1003E9A78(319, &qword_100599170, &type metadata accessor for WASubscribableService);
    if (v2 <= 0x3F)
    {
      sub_1003E9A78(319, &qword_100599178, &type metadata accessor for WAPairedDevice);
      if (v3 <= 0x3F)
      {
        sub_100018AB4(319, &unk_100599030, WiFiMACAddress_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003E9940(uint64_t a1)
{
  type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WASubscribableService();
    if (v2 <= 0x3F)
    {
      type metadata accessor for WAPairedDevice();
      if (v3 <= 0x3F)
      {
        type metadata accessor for NANConnectionClient(319);
        if (v4 <= 0x3F)
        {
          sub_100018AB4(319, &unk_100599030, WiFiMACAddress_ptr);
          if (v5 <= 0x3F)
          {
            sub_1003E9A78(319, &qword_100593008, &type metadata accessor for UUID);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1003E9A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003E9AF4(uint64_t a1)
{
  result = sub_100018AB4(319, &unk_100599030, WiFiMACAddress_ptr);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WASubscribableService();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E9B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003E9BD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1003E9C1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1003E9C80()
{
  result = qword_100599430;
  if (!qword_100599430)
  {
    result = swift_getWitnessTable(byte_1004B2D60, &type metadata for DataPathType, v0, v1);
    atomic_store(result, &qword_100599430);
  }

  return result;
}

uint64_t sub_1003E9E18()
{

  return _swift_deallocObject(v0, 61, 7);
}

uint64_t sub_1003E9F94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10030BDD0;

  return sub_1003AF434(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

void sub_1003EA068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

void sub_1003EA0BC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1003C5BD0(v2, v3, v4);
}

uint64_t sub_1003EA120(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10030BDD0;

  return sub_10030B2B4(a1, v4);
}

uint64_t sub_1003EA1D8(int a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 32);
  v7 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1003D8CA4(a1, a2, v6, v7);
}

uint64_t sub_1003EA25C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1002CB380;

  return sub_1003C7FD4(a1, v4, v5, v6, v7, v8);
}

void sub_1003EA324(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  sub_1003C99A0(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), (v2 + v8), *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

void sub_1003EA3E4(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = *(v7 + 80);
  sub_1003CB0F8(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + ((v8 + 56) & ~v8), v2 + ((*(v7 + 64) + v8 + ((v8 + 56) & ~v8)) & ~v8), v5, v6);
}

uint64_t sub_1003EA4A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

BOOL sub_1003EA584(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 deviceID];
  return v3 == *(v2 + *(type metadata accessor for ResolvedSession(0) + 24));
}

void sub_1003EA5E0(void (**a1)(uint64_t, uint64_t), uint64_t *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  sub_1003C302C(a1, a2, v8, v9, v10, v5, v6);
}

uint64_t sub_1003EA678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10030BDD0;

  return sub_1003B00B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003EA740(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10030BDD0;

  return sub_1003E3478(a1, v4);
}

double sub_1003EA7F8(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for UUID() - 8);
  return sub_1003B80D8(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v7 + 80) + 64) & ~*(v7 + 80)), v5, v6);
}

uint64_t sub_1003EA894(uint64_t a1)
{
  v3 = *(type metadata accessor for sessionStatus(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for UUID();
  v8 = *(v1 + 24);
  v16 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10030BDD0;

  return sub_1003B844C(a1, v16, v8, v1 + v4, v9, v10, v12, v13);
}

uint64_t sub_1003EAA48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10030BDD0;

  return sub_1003E3270(a1, v4);
}

void sub_1003EAB58(uint64_t a1)
{
  sub_1003F086C(319, &qword_100599568, sub_100125588, &type metadata for PreferenceDefaults.EnableUserspaceP2POptions, type metadata accessor for MutableDriverProperty);
  if (v1 <= 0x3F)
  {
    sub_1003F0A64(319, &qword_100599570, &type metadata for Bool, &protocol witness table for Bool, type metadata accessor for ObservableWiFiProperty);
    if (v2 <= 0x3F)
    {
      sub_1003F0724(319);
      if (v3 <= 0x3F)
      {
        sub_1003F086C(319, &qword_100599590, sub_1000C76B4, &type metadata for AutoJoinState, type metadata accessor for ObservableWiFiProperty);
        if (v4 <= 0x3F)
        {
          sub_1002CA064(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for DispatchTimeInterval();
            if (v6 <= 0x3F)
            {
              sub_1003F07C8(319);
              if (v7 <= 0x3F)
              {
                sub_1003F086C(319, &qword_1005995A8, sub_1001B8EC4, &type metadata for CountryCode, type metadata accessor for ObservableWiFiProperty);
                if (v8 <= 0x3F)
                {
                  sub_1003F08D4(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1003F09C0(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1003F0A64(319, &qword_1005995D8, &type metadata for InfrastructureRadioConstraints, &off_1005799E0, type metadata accessor for RadioConstraint);
                      if (v11 <= 0x3F)
                      {
                        swift_initClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1003EAF94(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = sub_10005DC58(&unk_10059B150, &qword_1004B3070);
  ObservableWiFiProperty.wrappedValue.setter(&v3, v1);
  return swift_endAccess();
}

uint64_t sub_1003EB010@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 464);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059B150, &qword_1004B3070);
}

uint64_t sub_1003EB084()
{
  v1 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  __chkstk_darwin();
  v3 = &v6 - v2;
  v4 = *(*v0 + 472);
  swift_beginAccess();
  sub_100012400(v0 + v4, v3, &qword_100594D50, &unk_1004AEBF0);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v7);
  sub_100016290(v3, &qword_100594D50, &unk_1004AEBF0);
  return v7;
}

uint64_t sub_1003EB184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7 = a4;
  v8 = WORD2(a4);
  swift_beginAccess();
  v4 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  ObservableWiFiProperty.wrappedValue.setter(v6, v4);
  return swift_endAccess();
}

uint64_t sub_1003EB210@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 472);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &qword_100594D50, &unk_1004AEBF0);
}

uint64_t sub_1003EB284(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v1 = sub_10005DC58(&qword_10059A3E0, &unk_1004B3080);
  ObservableWiFiProperty.wrappedValue.setter(&v3, v1);
  return swift_endAccess();
}

uint64_t sub_1003EB304@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 480);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &qword_10059A3E0, &unk_1004B3080);
}

unint64_t sub_1003EB378(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  __chkstk_darwin();
  v6 = &v17 - v5;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  result = sub_1003EB694();
  v10 = a1 & 0xFF00000000;
  if ((result & 0xFF00000000) == 0x300000000)
  {
    if (v10 == 0x300000000)
    {
      return result;
    }
  }

  else if (v10 != 0x300000000 && result == a1 && ((0x801004u >> ((result >> 29) & 0xF8)) & 0xFFC) == ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC))
  {
    if (BYTE5(result) <= 3u)
    {
      if (BYTE5(result) == 2)
      {
        if (BYTE5(a1) == 2)
        {
          return result;
        }

        goto LABEL_25;
      }

      if (BYTE5(result) == 3)
      {
        if (BYTE5(a1) == 3)
        {
          return result;
        }

        goto LABEL_25;
      }
    }

    else
    {
      switch(BYTE5(result))
      {
        case 4u:
          if (BYTE5(a1) == 4)
          {
            return result;
          }

          goto LABEL_25;
        case 5u:
          if (BYTE5(a1) == 5)
          {
            return result;
          }

          goto LABEL_25;
        case 6u:
          if (BYTE5(a1) == 6)
          {
            return result;
          }

          goto LABEL_25;
      }
    }

    if (BYTE5(a1) - 2 >= 5 && (((result >> 40) ^ (a1 >> 40)) & 1) == 0)
    {
      return result;
    }
  }

LABEL_25:
  if ((sub_1003EB694() & 0xFF00000000) == 0x300000000)
  {
    v11 = type metadata accessor for DispatchTime();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  else
  {
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    v12 = type metadata accessor for DispatchTime();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  v13 = *(*v1 + 488);
  swift_beginAccess();
  sub_10001AEDC(v8, v2 + v13);
  swift_endAccess();
  v14 = sub_1003EB694();
  v15 = *(*v2 + 592);
  swift_beginAccess();
  sub_100012400(v2 + v15, v6, &qword_1005995E8, &unk_1004B3040);
  v16 = &v6[*(v4 + 36)];
  *(v16 + 10) = WORD2(v14);
  *(v16 + 4) = v14;
  return sub_10001C638(v6);
}

unint64_t sub_1003EB694()
{
  v1 = sub_10005DC58(&qword_100599610, &qword_1004B3078);
  __chkstk_darwin();
  v3 = &v6 - v2;
  v4 = *(*v0 + 512);
  swift_beginAccess();
  sub_100012400(v0 + v4, v3, &qword_100599610, &qword_1004B3078);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v6);
  sub_100016290(v3, &qword_100599610, &qword_1004B3078);
  return v6 | (v7 << 32);
}

unint64_t sub_1003EB78C(uint64_t a1)
{
  swift_beginAccess();
  v2 = sub_10005DC58(&qword_100599610, &qword_1004B3078);
  ObservableWiFiProperty.wrappedValue.getter(v2, &v5);
  v3 = v5 | (v6 << 32);
  swift_endAccess();
  v6 = WORD2(a1);
  v5 = a1;
  swift_beginAccess();
  ObservableWiFiProperty.wrappedValue.setter(&v5, v2);
  swift_endAccess();
  return sub_1003EB378(v3);
}

uint64_t sub_1003EB86C()
{
  v1 = sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80);
  __chkstk_darwin();
  v3 = &v6 - v2;
  v4 = *(*v0 + 568);
  swift_beginAccess();
  sub_100012400(v0 + v4, v3, &unk_10059A6B0, &unk_1004B4D80);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v6 + 6);
  sub_100016290(v3, &unk_10059A6B0, &unk_1004B4D80);
  return HIWORD(v6);
}

uint64_t sub_1003EB95C(__int16 a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80);
  ObservableWiFiProperty.wrappedValue.setter(&v3, v1);
  return swift_endAccess();
}

uint64_t sub_1003EB9D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 568);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059A6B0, &unk_1004B4D80);
}

uint64_t sub_1003EBA4C(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  swift_beginAccess();
  v2 = sub_10005DC58(&unk_10059A3C0, &unk_1004B3060);
  ObservableWiFiProperty.wrappedValue.setter(v4, v2);
  return swift_endAccess();
}

uint64_t sub_1003EBAC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 576);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059A3C0, &unk_1004B3060);
}

uint64_t (*sub_1003EBB3C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, AssociatedTypeWitness, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, AssociatedTypeWitness);
  return sub_1003F2EEC;
}

uint64_t sub_1003EBC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 112);
  v7 = swift_checkMetadataState();
  return v6(a1, v7, AssociatedConformanceWitness);
}

uint64_t sub_1003EBD4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return WiFiNetwork.description.getter(*a1, v1, *(a1 + 16) & 0xFFFFFFFFFFFFLL, *(a1 + 24) | (*(a1 + 28) << 32));
  }

  else
  {
    return 0x6F73736120746F6ELL;
  }
}

uint64_t sub_1003EBDAC(uint64_t *a1)
{
  if (a1[1])
  {
    v1 = *a1;
  }

  else
  {
    v1 = 1701736302;
  }

  return v1;
}

uint64_t sub_1003EBDF8(unsigned int *a1)
{
  v1 = *a1 | (*(a1 + 2) << 32);
  if ((v1 & 0xFF00000000) == 0x300000000)
  {
    return 1701736302;
  }

  else
  {
    return Channel.description.getter(v1);
  }
}

double sub_1003EBE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1003EBA4C(a1, a2);
  }

  return result;
}

uint64_t sub_1003EBEBC()
{
  sub_100016290(v0 + *(*v0 + 448), &qword_100599618, &qword_1004B3090);

  sub_100016290(v0 + *(*v0 + 464), &unk_10059B150, &qword_1004B3070);
  sub_100016290(v0 + *(*v0 + 472), &qword_100594D50, &unk_1004AEBF0);
  sub_100016290(v0 + *(*v0 + 480), &qword_10059A3E0, &unk_1004B3080);
  sub_100016290(v0 + *(*v0 + 488), &unk_100597330, &unk_100481FA0);
  v1 = *(*v0 + 496);
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_100016290(v0 + *(*v0 + 512), &qword_100599610, &qword_1004B3078);
  sub_100016290(v0 + *(*v0 + 520), &unk_100597330, &unk_100481FA0);
  v3(v0 + *(*v0 + 528), v2);

  sub_100016290(v0 + *(*v0 + 560), &unk_10059B150, &qword_1004B3070);
  sub_100016290(v0 + *(*v0 + 568), &unk_10059A6B0, &unk_1004B4D80);
  sub_100016290(v0 + *(*v0 + 576), &unk_10059A3C0, &unk_1004B3060);
  sub_100016290(v0 + *(*v0 + 584), &unk_100599620, &qword_1004B3098);
  return sub_100016290(v0 + *(*v0 + 592), &qword_1005995E8, &unk_1004B3040);
}

uint64_t sub_1003EC1D4()
{
  v1 = v0;
  v2 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = *(v2 + 96);
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, &v1[v7], AssociatedTypeWitness);
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  (*(v9 + 16))(AssociatedTypeWitness, v9);
  v10 = *(v4 + 8);
  v10(v6, AssociatedTypeWitness);
  v8(v6, &v1[v7], AssociatedTypeWitness);
  (*(v9 + 48))(AssociatedTypeWitness, v9);
  v10(v6, AssociatedTypeWitness);
  v11 = WiFiInterface.deinit();
  sub_100016290(v11 + *(*v11 + 448), &qword_100599618, &qword_1004B3090);

  sub_100016290(v11 + *(*v11 + 464), &unk_10059B150, &qword_1004B3070);
  sub_100016290(v11 + *(*v11 + 472), &qword_100594D50, &unk_1004AEBF0);
  sub_100016290(v11 + *(*v11 + 480), &qword_10059A3E0, &unk_1004B3080);
  sub_100016290(v11 + *(*v11 + 488), &unk_100597330, &unk_100481FA0);
  v12 = *(*v11 + 496);
  v13 = type metadata accessor for DispatchTimeInterval();
  v14 = *(*(v13 - 8) + 8);
  v14(v11 + v12, v13);

  sub_100016290(v11 + *(*v11 + 512), &qword_100599610, &qword_1004B3078);
  sub_100016290(v11 + *(*v11 + 520), &unk_100597330, &unk_100481FA0);
  v14(v11 + *(*v11 + 528), v13);

  sub_100016290(v11 + *(*v11 + 560), &unk_10059B150, &qword_1004B3070);
  sub_100016290(v11 + *(*v11 + 568), &unk_10059A6B0, &unk_1004B4D80);
  sub_100016290(v11 + *(*v11 + 576), &unk_10059A3C0, &unk_1004B3060);
  sub_100016290(v11 + *(*v11 + 584), &unk_100599620, &qword_1004B3098);
  sub_100016290(v11 + *(*v11 + 592), &qword_1005995E8, &unk_1004B3040);
  return v11;
}

uint64_t sub_1003EC6A8()
{
  sub_1003EC1D4();

  return swift_deallocClassInstance();
}

uint64_t sub_1003EC714(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v51 = *(v1 - 8);
  __chkstk_darwin();
  v52 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchTimeInterval();
  v53 = *(v50 - 8);
  __chkstk_darwin();
  v49 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v40 - v4;
  __chkstk_darwin();
  v7 = &v40 - v6;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v9 = &v40 - v8;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v40 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = *(*result + 520);
    swift_beginAccess();
    sub_100012400(v17 + v18, v9, &unk_100597330, &unk_100481FA0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      return sub_100016290(v9, &unk_100597330, &unk_100481FA0);
    }

    else
    {
      (*(v11 + 32))(v15, v9, v10);
      type metadata accessor for P2PTimer(0);
      variable initialization expression of AWDLPeer.lastUpdated();
      DispatchTime.distance(to:)();
      v47 = *(v11 + 8);
      v47(v13, v10);
      sub_1000288C0(1);
      v19 = v51;
      (*(v51 + 16))(v52, v17 + *(*v17 + 160), v1);
      v46 = v1;
      v20 = v53;
      v21 = *(v53 + 16);
      v48 = v7;
      v22 = v7;
      v23 = v50;
      v44 = v21;
      v21(v5, v22, v50);
      swift_retain_n();
      v24 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v45))
      {
        v25 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v54 = v43;
        *v25 = 136315394;
        v42 = v24;
        v26 = DispatchTimeInterval.description.getter();
        v28 = v27;
        v29 = *(v53 + 8);
        v53 += 8;
        v41 = v29;
        v29(v5, v23);
        v30 = sub_100002320(v26, v28, &v54);

        *(v25 + 4) = v30;
        *(v25 + 12) = 2080;
        v31 = v23;
        v32 = v49;
        v44(v49, v17 + *(*v17 + 528), v31);

        v33 = DispatchTimeInterval.description.getter();
        v35 = v34;

        v36 = v41;
        v41(v32, v31);
        v37 = sub_100002320(v33, v35, &v54);

        *(v25 + 14) = v37;
        v38 = v42;
        _os_log_impl(&_mh_execute_header, v42, v45, "Infra scan has timed out, revoked infra scan availability, scan on going for %s, maximum allowed %s", v25, 0x16u);
        swift_arrayDestroy();

        (*(v51 + 8))(v52, v46);
        v36(v48, v31);
      }

      else
      {

        v39 = *(v20 + 8);
        v39(v5, v23);
        (*(v19 + 8))(v52, v46);
        v39(v48, v23);
      }

      return (v47)(v15, v10);
    }
  }

  return result;
}

void sub_1003ECD6C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v24 - v9;
  __chkstk_darwin();
  v12 = &v24 - v11;
  v24 = a1;
  sub_1003EB78C(a1 & 0xFFFFFFFFFFFFLL);
  (*(v6 + 16))(v12, v1 + *(*v1 + 496), v5);
  v13 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = *(v4 + 432);
  v15[3] = *(v4 + 440);
  v15[4] = v14;
  v16 = *(v6 + 104);
  v16(v10, enum case for DispatchTimeInterval.never(_:), v5);
  *v8 = 100;
  v16(v8, enum case for DispatchTimeInterval.milliseconds(_:), v5);
  type metadata accessor for P2PTimer(0);
  swift_allocObject();
  *(v2 + *(*v2 + 504)) = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v12, v13, v10, v8, sub_1003F2D24, v15);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = Channel.description.getter(v24 & 0xFFFFFFFFFFFFLL);
    v23 = sub_100002320(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Infra association started on channel %s", v19, 0xCu);
    sub_100002A00(v20);
  }
}

void sub_1003ED0C4(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v56 = *(v1 - 8);
  v57 = v1;
  __chkstk_darwin();
  v55 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchTimeInterval();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v47 - v6;
  __chkstk_darwin();
  v9 = v47 - v8;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v11 = v47 - v10;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v47 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(*Strong + 488);
    swift_beginAccess();
    sub_100012400(v19 + v20, v11, &unk_100597330, &unk_100481FA0);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      sub_100016290(v11, &unk_100597330, &unk_100481FA0);
    }

    else
    {
      (*(v13 + 32))(v17, v11, v12);
      v21 = sub_1003EB694();
      if ((v21 & 0xFF00000000) == 0x300000000)
      {
        (*(v13 + 8))(v17, v12);
      }

      else
      {
        v52 = v21;
        type metadata accessor for P2PTimer(0);
        variable initialization expression of AWDLPeer.lastUpdated();
        DispatchTime.distance(to:)();
        v54 = *(v13 + 8);
        v54(v15, v12);
        sub_1003F2B34();
        (*(v56 + 16))(v55, v19 + *(*v19 + 160), v57);
        v22 = v58;
        v23 = v58 + 16;
        v51 = *(v58 + 16);
        v51(v7, v9, v59);
        swift_retain_n();
        v24 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v24, v53))
        {
          v25 = swift_slowAlloc();
          v50 = v25;
          v49 = swift_slowAlloc();
          v60 = v49;
          *v25 = 136315650;
          v26 = Channel.description.getter(v52);
          v28 = sub_100002320(v26, v27, &v60);
          v52 = v24;
          v29 = v28;

          v30 = v50;
          *(v50 + 1) = v29;
          *(v30 + 6) = 2080;
          v31 = DispatchTimeInterval.description.getter();
          v33 = v32;
          v34 = *(v58 + 8);
          v58 += 8;
          v47[1] = v23;
          v48 = v34;
          v35 = v59;
          v34(v7, v59);
          v36 = sub_100002320(v31, v33, &v60);

          v37 = v50;
          *(v50 + 14) = v36;
          *(v37 + 11) = 2080;
          v51(v5, (v19 + *(*v19 + 496)), v35);

          v38 = DispatchTimeInterval.description.getter();
          v40 = v39;

          v41 = v5;
          v42 = v48;
          v48(v41, v35);
          v43 = sub_100002320(v38, v40, &v60);

          *(v37 + 3) = v43;
          v44 = v52;
          _os_log_impl(&_mh_execute_header, v52, v53, "Infra association has timed out, revoked infra association availability on channel %s, on going for %s, maximum allowed %s", v37, 0x20u);
          swift_arrayDestroy();

          (*(v56 + 8))(v55, v57);
          v42(v9, v59);
        }

        else
        {

          v45 = *(v22 + 8);
          v46 = v59;
          v45(v7, v59);
          (*(v56 + 8))(v55, v57);
          v45(v9, v46);
        }

        v54(v17, v12);
      }
    }
  }
}

void sub_1003ED770(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v11 = &v53 - v10;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v53 - v16;
  __chkstk_darwin();
  v62 = &v53 - v18;
  v19 = *(*v4 + 552);
  v20 = *(v4 + v19);
  v21 = __CFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v59 = v7;
    v60 = v6;
    *(v4 + v19) = v22;
    v23 = sub_1003EB694();
    if ((v23 & 0xFF00000000) != 0x300000000)
    {
      v24 = v23;
      v25 = *(*v4 + 488);
      swift_beginAccess();
      sub_100012400(v4 + v25, v11, &unk_100597330, &unk_100481FA0);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_100016290(v11, &unk_100597330, &unk_100481FA0);
      }

      else
      {
        v26 = v13;
        v27 = v12;
        v28 = HIDWORD(a2);
        v58 = v26;
        v29 = v62;
        (*(v26 + 32))(v62, v11, v27);
        v57 = v28;
        if (v28)
        {
          (*(v58 + 16))(v17, v29, v27);
          swift_bridgeObjectRetain_n();
          v38 = Logger.logObject.getter();
          v56 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v38, v56))
          {
            v39 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v63 = v55;
            *v39 = 136315650;
            v40 = Channel.description.getter(v24);
            v54 = v38;
            v42 = sub_100002320(v40, v41, &v63);

            v53 = v39;
            *(v39 + 4) = v42;
            *(v39 + 12) = 1024;

            *(v39 + 14) = v57;

            *(v39 + 18) = 2080;
            type metadata accessor for P2PTimer(0);
            variable initialization expression of AWDLPeer.lastUpdated();
            DispatchTime.distance(to:)();
            v43 = *(v58 + 8);
            v43(v15, v27);
            v44 = DispatchTimeInterval.description.getter();
            v46 = v45;
            v47 = v9;
            v48 = v43;
            (*(v59 + 8))(v47, v60);
            v43(v17, v27);
            v49 = sub_100002320(v44, v46, &v63);
            v50 = v62;

            v51 = v53;
            *(v53 + 20) = v49;
            v52 = v54;
            _os_log_impl(&_mh_execute_header, v54, v56, "Infra association failed on %s with status code %u (duration: %s)", v51, 0x1Cu);
            swift_arrayDestroy();
          }

          else
          {
            v50 = v29;

            swift_bridgeObjectRelease_n();
            v48 = *(v58 + 8);
            v48(v17, v27);
          }

          *(v4 + *(*v4 + 504)) = 0;

          sub_1003EB78C(0x300000000);
          v48(v50, v27);
        }

        else
        {
          v30 = v58;
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v63 = v34;
            *v33 = 136315138;
            v35 = Channel.description.getter(v24);
            v37 = sub_100002320(v35, v36, &v63);

            *(v33 + 4) = v37;
            _os_log_impl(&_mh_execute_header, v31, v32, "Infra association on %s handshake complete, waiting for IP address", v33, 0xCu);
            sub_100002A00(v34);
          }

          (*(v30 + 8))(v62, v27);
        }
      }
    }
  }
}

uint64_t sub_1003EDDB4(int a1)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v3 - 8);
  __chkstk_darwin();
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v6 = &v46 - v5;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v46 - v11;
  __chkstk_darwin();
  v14 = &v46 - v13;
  result = sub_1003EB694();
  if ((result & 0xFF00000000) != 0x300000000)
  {
    v16 = result;
    v17 = *(*v1 + 488);
    swift_beginAccess();
    sub_100012400(v2 + v17, v6, &unk_100597330, &unk_100481FA0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_100016290(v6, &unk_100597330, &unk_100481FA0);
    }

    else
    {
      v52 = v3;
      v18 = v55;
      (*(v8 + 32))(v14, v6, v7);
      if (v18)
      {
        (*(v8 + 16))(v12, v14, v7);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v49 = v20;
          v21 = v55;
          v50 = v19;
          v47 = BYTE1(v55);
          v22 = v14;
          v23 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v56 = v48;
          *v23 = 136315906;
          v24 = Channel.description.getter(v16);
          v26 = sub_100002320(v24, v25, &v56);

          *(v23 + 4) = v26;
          v51 = v22;
          *(v23 + 12) = 2080;
          v27 = IEEE80211Status.description.getter(v21);
          v29 = sub_100002320(v27, v28, &v56);

          *(v23 + 14) = v29;
          *(v23 + 22) = 2080;
          v30 = IEEE80211Reason.description.getter(v47);
          v32 = sub_100002320(v30, v31, &v56);

          v46 = v23;
          *(v23 + 24) = v32;
          *(v23 + 32) = 2080;
          type metadata accessor for P2PTimer(0);
          variable initialization expression of AWDLPeer.lastUpdated();
          v33 = v53;
          DispatchTime.distance(to:)();
          v34 = *(v8 + 8);
          v34(v10, v7);
          v35 = DispatchTimeInterval.description.getter();
          v37 = v36;
          v38 = v33;
          v39 = v34;
          (*(v54 + 8))(v38, v52);
          v34(v12, v7);
          v40 = sub_100002320(v35, v37, &v56);

          v41 = v46;
          *(v46 + 34) = v40;
          v42 = v50;
          _os_log_impl(&_mh_execute_header, v50, v49, "Infra association failed on %s with status code %s reason: %s (duration: %s)", v41, 0x2Au);
          swift_arrayDestroy();

          v14 = v51;
        }

        else
        {

          v39 = *(v8 + 8);
          v39(v12, v7);
        }

        *(v2 + *(*v2 + 504)) = 0;

        sub_1003EB78C(0x300000000);
        return (v39)(v14, v7);
      }

      else
      {
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Infra association complete", v45, 2u);
        }

        return (*(v8 + 8))(v14, v7);
      }
    }
  }

  return result;
}

unint64_t sub_1003EE388()
{
  *(v0 + *(*v0 + 504)) = 0;

  return sub_1003EB78C(0x300000000);
}

void sub_1003EE3D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 440);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v30 - v8;
  if (!a1)
  {
    if (*&v2[*(v4 + 600)] < 1)
    {
      return;
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v5;
      v21 = v20;
      v31 = swift_slowAlloc();
      v33[0] = v31;
      *v21 = 136315138;
      v22 = WiFiInterface.description.getter();
      v24 = v23;

      v25 = sub_100002320(v22, v24, v33);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s disabling auto-join", v21, 0xCu);
      sub_100002A00(v31);
    }

    else
    {
    }

    v26 = *(*v2 + 96);
    swift_beginAccess();
    (*(v7 + 16))(v9, &v2[v26], AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    goto LABEL_13;
  }

  if (a1 >= 1 && !*&v2[*(v4 + 600)])
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v32 = v5;
      v13 = v12;
      v31 = swift_slowAlloc();
      v33[0] = v31;
      *v13 = 136315138;
      v14 = WiFiInterface.description.getter();
      v16 = v15;

      v17 = sub_100002320(v14, v16, v33);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s enabling auto-join", v13, 0xCu);
      sub_100002A00(v31);
    }

    else
    {
    }

    v28 = *(*v2 + 96);
    swift_beginAccess();
    (*(v7 + 16))(v9, &v2[v28], AssociatedTypeWitness);
    v29 = swift_getAssociatedConformanceWitness();
    (*(v29 + 48))(AssociatedTypeWitness, v29);
LABEL_13:
    (*(v7 + 8))(v9, AssociatedTypeWitness);
  }
}

void sub_1003EE850(uint64_t a1)
{
  v2 = *(*v1 + 600);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_1003EE3D0(v3);
}

void sub_1003EE894(uint64_t a1)
{
  v2 = *(*a1 + 600);
  v3 = *(a1 + v2);
  if (v3 >= 1)
  {
    *(a1 + v2) = v3 - 1;
    sub_1003EE3D0(v3);
  }
}

double sub_1003EE8FC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);
  v13 = v11;

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v17 + 8))(v7, v5);
  (*(v8 + 8))(v10, v16);

  return result;
}

void sub_1003EEB80(uint64_t a1)
{
  v2 = *(*a1 + 600);
  v3 = *(a1 + v2);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + v2) = v3 + 1;
    sub_1003EE3D0(v3);
  }
}

uint64_t sub_1003EEBCC()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *(v1 + 96);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v6], AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return v8 & 1;
}

double sub_1003EED68(char a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  *(v12 + 32) = v2;
  aBlock[4] = sub_1003F2D04;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100579B80;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);

  return result;
}

uint64_t sub_1003EF02C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(*a3 + 440);
  v7 = *(*a3 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v55 = &v50 - v10;
  v56 = v7;
  if (!*(a1 + 16))
  {
    v17 = &_swiftEmptySetSingleton;
    if (*(&_swiftEmptySetSingleton + 2))
    {
      goto LABEL_57;
    }

LABEL_60:
  }

  v53 = v9;
  v51 = a2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = a1 + 56;
  v13 = -1 << *(a1 + 32);
  v14 = v11 & ~v13;
  v15 = *(a1 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14;
  v52 = AssociatedTypeWitness;
  v54 = v6;
  if ((v15 & 1) == 0)
  {
    v17 = &_swiftEmptySetSingleton;
    LOBYTE(a2) = v51;
    if (*(a1 + 16))
    {
      goto LABEL_34;
    }

    goto LABEL_59;
  }

  v16 = ~v13;
  v17 = &_swiftEmptySetSingleton;
  do
  {
    v18 = *(*(a1 + 48) + v14);
    if (v18 <= 2 && v18 != 1 && v18 != 2)
    {

LABEL_16:
      v20 = *(*a3 + 608);
      v21 = *(a3 + v20);
      LOBYTE(a2) = v51;
      if (v51)
      {
        v22 = v21 + 1;
        AssociatedTypeWitness = v52;
        if (!__OFADD__(v21, 1))
        {
          goto LABEL_22;
        }

        __break(1u);
      }

      AssociatedTypeWitness = v52;
      if (v21 <= 0)
      {
        v17 = &_swiftEmptySetSingleton;
        goto LABEL_33;
      }

      v22 = --v21;
LABEL_22:
      *(a3 + v20) = v22;
      v17 = &_swiftEmptySetSingleton;
      if (!v21)
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v23 = Hasher._finalize()();
        v24 = -1 << *(&_swiftEmptySetSingleton + 32);
        v25 = v23 & ~v24;
        if ((*(&_swiftEmptySetSingleton + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25))
        {
          v50 = ~v24;
          while (1)
          {
            v26 = *(*(&_swiftEmptySetSingleton + 6) + v25);
            if (v26 <= 2 && v26 != 1 && v26 != 2)
            {
              break;
            }

            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v27)
            {
              goto LABEL_33;
            }

            v25 = (v25 + 1) & v50;
            if (((*(&_swiftEmptySetSingleton + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          v17 = &_swiftEmptySetSingleton;
          if (*(a1 + 16))
          {
            goto LABEL_34;
          }
        }

        else
        {
LABEL_30:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = &_swiftEmptySetSingleton;
          sub_100472848(0, v25, isUniquelyReferenced_nonNull_native);
          v17 = v57;
          if (*(a1 + 16))
          {
            goto LABEL_34;
          }
        }

LABEL_59:
        v9 = v53;
        if (v17[2])
        {
          goto LABEL_57;
        }

        goto LABEL_60;
      }

LABEL_33:
      if (!*(a1 + 16))
      {
        goto LABEL_59;
      }

      goto LABEL_34;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_16;
    }

    v14 = (v14 + 1) & v16;
  }

  while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  LOBYTE(a2) = v51;
  AssociatedTypeWitness = v52;
  if (!*(a1 + 16))
  {
    goto LABEL_59;
  }

LABEL_34:
  Hasher.init(_seed:)();
  String.hash(into:)();
  v29 = Hasher._finalize()();
  v30 = -1 << *(a1 + 32);
  v31 = v29 & ~v30;
  if (((*(v12 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
  {
    goto LABEL_59;
  }

  v32 = ~v30;
  while (1)
  {
    v33 = *(*(a1 + 48) + v31);
    if (v33 > 2 && v33 != 4)
    {
      break;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_42;
    }

    v31 = (v31 + 1) & v32;
    if (((*(v12 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
      AssociatedTypeWitness = v52;
LABEL_55:
      v9 = v53;
      goto LABEL_56;
    }
  }

LABEL_42:
  v36 = *(*a3 + 616);
  v37 = *(a3 + v36);
  if (a2)
  {
    AssociatedTypeWitness = v52;
    v9 = v53;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return result;
    }

    *(a3 + v36) = v37 + 1;
    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
    AssociatedTypeWitness = v52;
    v9 = v53;
    if (v37 > 0)
    {
      v38 = v37 - 1;
      *(a3 + v36) = v38;
      if (!v38)
      {
LABEL_48:
        Hasher.init(_seed:)();
        String.hash(into:)();
        v39 = Hasher._finalize()();
        v40 = -1 << *(v17 + 32);
        v41 = v39 & ~v40;
        if ((*(v17 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v41))
        {
          v42 = ~v40;
          while (1)
          {
            v43 = *(v17[6] + v41);
            if (v43 > 2 && v43 != 4)
            {
              break;
            }

            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v44)
            {
              goto LABEL_55;
            }

            v41 = (v41 + 1) & v42;
            if (((*(v17 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v41) & 1) == 0)
            {
              goto LABEL_54;
            }
          }
        }

        else
        {
LABEL_54:
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v17;
          sub_100472848(3, v41, v45);
          v17 = v57;
        }

        goto LABEL_55;
      }
    }
  }

LABEL_56:
  if (!v17[2])
  {
    goto LABEL_60;
  }

LABEL_57:
  v46 = *(*a3 + 96);
  swift_beginAccess();
  v47 = a3 + v46;
  v48 = v55;
  (*(v9 + 16))(v55, v47, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(a2 & 1, v17, AssociatedTypeWitness, AssociatedConformanceWitness);

  return (*(v9 + 8))(v48, AssociatedTypeWitness);
}

void sub_1003EF930(char a1)
{
  v3 = *v1;
  v4 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = v1[*(v3 + 632)];
  if (v9 != 3 && a1 == 3)
  {
    v11 = *(v4 + 96);
    swift_beginAccess();
    (*(v6 + 16))(v8, &v1[v11], AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v8, AssociatedTypeWitness);
  }
}

void sub_1003EFB14(char a1)
{
  v2 = *(*v1 + 632);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_1003EF930(v3);
}

void sub_1003EFB60(uint64_t a1, char a2)
{
  v3 = *(*a1 + 600);
  v4 = *(a1 + v3);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + v3) = v4 + 1;
    sub_1003EE3D0(v4);
    v6 = *(*a1 + 632);
    v7 = *(a1 + v6);
    *(a1 + v6) = a2;
    sub_1003EF930(v7);
    v8 = *(*a1 + 624);
    v9 = *(a1 + v8);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      *(a1 + v8) = v11;
      return;
    }
  }

  __break(1u);
}

void sub_1003EFC18(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 624);
  v4 = *(a1 + v3);
  if (v4 >= 1)
  {
    *(a1 + v3) = v4 - 1;
    v2 = *a1;
    --v4;
  }

  if (!v4)
  {
    v5 = *(v2 + 632);
    v6 = *(a1 + v5);
    *(a1 + v5) = 3;
    sub_1003EF930(v6);
    v2 = *a1;
  }

  v7 = *(v2 + 600);
  v8 = *(a1 + v7);
  if (v8 >= 1)
  {
    *(a1 + v7) = v8 - 1;
    sub_1003EE3D0(v8);
  }
}

double sub_1003EFCC0(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1003F2CE4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100579AB8;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  (*(v6 + 8))(v8, v15);

  return result;
}

uint64_t sub_1003EFF74(char *a1, uint64_t a2)
{
  v4 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = *(v4 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, &a1[v9], AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 120))(a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

double sub_1003F013C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);

  return result;
}

uint64_t sub_1003F03E0(char *a1, uint64_t a2)
{
  v4 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = *(v4 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, &a1[v9], AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 152))(a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

void sub_1003F05A8(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = a1 + *(*a1 + 592);
  swift_beginAccess();
  v8 = *(v7 + *(v4 + 36) + 31);
  if (v8 != 6)
  {
    if (v8 == v3)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v3 != 6)
  {
LABEL_5:
    sub_100012400(v7, v6, &qword_1005995E8, &unk_1004B3040);
    v6[*(v4 + 36) + 31] = v3;
    sub_10001C638(v6);
  }
}

void sub_1003F0724(uint64_t a1)
{
  if (!qword_100599578)
  {
    v2 = sub_10005DD04(&qword_100599580, &qword_1004B2F10);
    v3 = sub_10001D6F4(&qword_100599588, &qword_100599580, &qword_1004B2F10, sub_1000C765C);
    v5 = type metadata accessor for ObservableWiFiProperty(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100599578);
    }
  }
}

void sub_1003F07C8(uint64_t a1)
{
  if (!qword_100599598)
  {
    v2 = sub_10005DD04(&unk_10059A5B0, &unk_1004B2F30);
    v3 = sub_10001D6F4(&qword_1005995A0, &unk_10059A5B0, &unk_1004B2F30, sub_100218C7C);
    v5 = type metadata accessor for ObservableWiFiProperty(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100599598);
    }
  }
}

void sub_1003F086C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1003F08D4(uint64_t a1)
{
  if (!qword_1005995B0)
  {
    v2 = sub_10005DD04(&unk_100599FD0, &qword_100482530);
    v3 = sub_1003F0944();
    v5 = type metadata accessor for ObservableWiFiProperty(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1005995B0);
    }
  }
}

unint64_t sub_1003F0944()
{
  result = qword_1005995B8;
  if (!qword_1005995B8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10005DD04(&unk_100599FD0, &qword_100482530);
    v4[0] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_1005995B8);
  }

  return result;
}

void sub_1003F09C0(uint64_t a1)
{
  if (!qword_1005995C0)
  {
    v2 = sub_10005DD04(&qword_1005995C8, &qword_1004B2F40);
    v3 = sub_10001D6F4(&qword_1005995D0, &qword_1005995C8, &qword_1004B2F40, sub_10023758C);
    v5 = type metadata accessor for ObservableWiFiProperty(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1005995C0);
    }
  }
}

void sub_1003F0A64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1003F0AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1003F0B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
  v4 = *TimeBitmap.Slot.FO.unsafeMutableAddressor();
  v5 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
  v6 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v3, v3, v4, *v5);
  v8 = v7;
  v10 = v9;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 32);
  v13 = swift_checkMetadataState();
  return v12(v6, v8, v10, 3, 2, 8, v13, AssociatedConformanceWitness);
}

void sub_1003F0C08(int a1, Swift::UInt a2, Swift::UInt a3, uint64_t a4, unint64_t a5)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  if ((a4 & 0xFF00000000) == 0x300000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Channel.hash(into:)(a1, a4 & 0xFFFFFFFFFFFFLL);
  }

  if ((a5 & 0xFF00000000) == 0x300000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Channel.hash(into:)(a1, a5 & 0xFFFFFFFFFFFFLL);
  }

  v9 = HIBYTE(a5);
  if ((a5 & 0xFF000000000000) == 0x4000000000000)
  {
    Hasher._combine(_:)(0);
    if (v9 != 6)
    {
LABEL_9:
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(HIBYTE(a5));
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(BYTE6(a5) + 1);
    if (v9 != 6)
    {
      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
}

Swift::Int sub_1003F0D08()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  sub_1003F0C08(v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int sub_1003F0D8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | (*(v1 + 20) << 32);
  v5 = *(v1 + 24);
  Hasher.init(_seed:)();
  sub_1003F0C08(v7, v2, v3, v4, v5);
  return Hasher._finalize()();
}

unint64_t sub_1003F0DF8()
{
  result = qword_1005995E0;
  if (!qword_1005995E0)
  {
    result = swift_getWitnessTable(aI_19, &type metadata for InfrastructureRadioConstraints, v0, v1);
    atomic_store(result, &qword_1005995E0);
  }

  return result;
}

uint64_t sub_1003F0E54(char *a1)
{
  BYTE8(v2) = 0;
  *&v2 = *a1;
  sub_10005DC58(&qword_1005995C8, &qword_1004B2F40);
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

uint64_t sub_1003F0EB8(unsigned __int16 *a1)
{
  WORD4(v2) = 0;
  *&v2 = *a1;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 2);
}

unint64_t sub_1003F0F6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v200 = a2;
  v208 = a1;
  v4 = *v2;
  v197 = v4[55];
  v5 = *(v197 + 8);
  v6 = v4[54];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v202 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v182[0] = v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v184 = v182 - v8;
  v212 = v5;
  v204 = v6;
  v9 = swift_getAssociatedTypeWitness();
  v195 = *(v9 - 8);
  __chkstk_darwin();
  v196 = v182 - v10;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v194 = v182 - v11;
  sub_10005DC58(&qword_100599610, &qword_1004B3078);
  __chkstk_darwin();
  v193 = v182 - v12;
  sub_10005DC58(&unk_100599620, &qword_1004B3098);
  __chkstk_darwin();
  v192 = v182 - v13;
  sub_10005DC58(&unk_10059A3C0, &unk_1004B3060);
  __chkstk_darwin();
  v191 = v182 - v14;
  sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80);
  __chkstk_darwin();
  v190 = v182 - v15;
  sub_10005DC58(&qword_10059A3E0, &unk_1004B3080);
  __chkstk_darwin();
  v189 = v182 - v16;
  sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  __chkstk_darwin();
  v188 = v182 - v17;
  sub_10005DC58(&unk_10059B150, &qword_1004B3070);
  __chkstk_darwin();
  v198 = v182 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedTypeWitness();
  v206 = AssociatedConformanceWitness;
  v199 = v9;
  v21 = swift_getAssociatedConformanceWitness();
  v201 = type metadata accessor for Preferences(0, v20, v21, v22);
  v187 = *(v201 - 8);
  __chkstk_darwin();
  v186 = v182 - v23;
  sub_10005DC58(&qword_100599618, &qword_1004B3090);
  __chkstk_darwin();
  v209 = v182 - v24;
  v214 = type metadata accessor for Logger();
  v203 = *(v214 - 8);
  __chkstk_darwin();
  v183 = v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v205 = v182 - v26;
  v182[1] = v27;
  __chkstk_darwin();
  v211 = v182 - v28;
  v207 = type metadata accessor for UUID();
  v185 = *(v207 - 8);
  __chkstk_darwin();
  v30 = v182 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v4[57];
  type metadata accessor for Lock();
  swift_allocObject();
  v32 = Lock.init()();
  v210 = v31;
  *(v31 + v3) = v32;
  v33 = *(*v3 + 488);
  v34 = type metadata accessor for DispatchTime();
  v35 = *(*(v34 - 8) + 56);
  v35(&v3[v33], 1, 1, v34);
  v36 = *(*v3 + 496);
  *&v3[v36] = 24;
  v37 = enum case for DispatchTimeInterval.seconds(_:);
  v38 = type metadata accessor for DispatchTimeInterval();
  v39 = *(*(v38 - 8) + 104);
  v39(&v3[v36], v37, v38);
  *&v3[*(*v3 + 504)] = 0;
  v35(&v3[*(*v3 + 520)], 1, 1, v34);
  v40 = *(*v3 + 528);
  *&v3[v40] = 24;
  v39(&v3[v40], v37, v38);
  *&v3[*(*v3 + 536)] = 0;
  *&v3[*(*v3 + 544)] = 0;
  *&v3[*(*v3 + 552)] = 0;
  v41 = &v3[*(*v3 + 592)];
  UUID.init()();
  v42 = &v41[*(sub_10005DC58(&qword_1005995E8, &unk_1004B3040) + 36)];
  *v42 = 0;
  *(v42 + 1) = 0;
  *(v42 + 10) = 3;
  *(v42 + 4) = 0;
  *(v42 + 3) = 0x604000300000000;
  (*(v185 + 32))(v41, v30, v207);
  *&v3[*(*v3 + 600)] = 0;
  *&v3[*(*v3 + 608)] = 0;
  *&v3[*(*v3 + 616)] = 0;
  *&v3[*(*v3 + 624)] = 0;
  v3[*(*v3 + 632)] = 3;
  v43 = AssociatedTypeWitness;
  v44 = swift_getAssociatedConformanceWitness();
  v207 = (*(v44 + 40))(v43, v44);
  v46 = v45;
  v47 = (*(v44 + 32))(v43, v44);
  if (v47 > 1)
  {
    if (v47 - 2 < 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    v48 = v197;
    goto LABEL_7;
  }

  if (!v47)
  {
    goto LABEL_5;
  }

LABEL_6:
  v48 = v197;
LABEL_7:
  v49 = v209;
  v50 = v206;
  v51 = v201;
  v52 = v211;
  Logger.init(subsystem:category:)();
  v217 = v207;
  v218 = v46;

  v53._countAndFlagsBits = 0x74706F2050325020;
  v53._object = 0xEC000000736E6F69;
  String.append(_:)(v53);
  v201 = v217;
  v185 = v218;
  v54 = *(v203 + 16);
  v209 = (v203 + 16);
  v206 = v54;
  v55 = v205;
  v54(v205, v52, v214);
  v217 = 0;
  LOBYTE(v218) = 1;
  v56 = v186;
  (*(v50 + 15))(v199, v50);
  v57 = Preferences.enableUserspaceP2POptions.getter(v51);
  (*(v187 + 8))(v56, v51);
  v215 = v57;
  v58 = sub_1003EBB3C(v208, v204, v48);
  v60 = v59;
  v61 = swift_allocObject();
  v212 = v46;
  v62 = v61;
  *(v61 + 16) = v58;
  *(v61 + 24) = v60;
  v63 = sub_100125588();
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v201, v185, v55, &v217, &v215, sub_1003F2EB4, v62, sub_1003F0F18, v49, 0, &type metadata for PreferenceDefaults.EnableUserspaceP2POptions, v63);
  sub_10001CEA8(v49, &v3[*(*v3 + 448)], &qword_100599618, &qword_1004B3090);
  v64 = *(v210 + v3);
  v65 = AssociatedTypeWitness;
  v66 = swift_getAssociatedConformanceWitness();
  v67 = *(v66 + 72);

  LOBYTE(v215) = v67(v65, v66) & 1;
  v68 = v207;
  v217 = v207;
  v218 = v212;

  v69._countAndFlagsBits = 0x702069462D695720;
  v69._object = 0xEC0000007265776FLL;
  String.append(_:)(v69);
  v70 = v217;
  v71 = v218;
  v72 = v55;
  v73 = v55;
  v74 = v206;
  v206(v73, v211, v214);
  v75 = v198;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v64, &v215, v70, v71, v72, sub_10001BCD8, 0, &type metadata for Bool, v198, &protocol witness table for Bool);
  sub_10001CEA8(v75, &v3[*(*v3 + 464)], &unk_10059B150, &qword_1004B3070);
  v76 = *(v210 + v3);
  v201 = v66;
  v77 = *(v66 + 80);

  v217 = v77(AssociatedTypeWitness, v66);
  v218 = v78;
  v219 = v79;
  v220 = v80;
  v221 = v81;
  v215 = 0;
  v216 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v215 = v68;
  v216 = v212;
  v82._countAndFlagsBits = 0x6E206172666E6920;
  v82._object = 0xEE006B726F777465;
  String.append(_:)(v82);
  v83 = v215;
  v84 = v216;
  v85 = v205;
  v86 = v211;
  v87 = v214;
  v74(v205, v211, v214);
  v88 = sub_10005DC58(&qword_100599580, &qword_1004B2F10);
  v89 = sub_10001D6F4(&qword_100599588, &qword_100599580, &qword_1004B2F10, sub_1000C765C);
  v90 = v188;
  v91 = v84;
  v92 = v212;
  v93 = v85;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v76, &v217, v83, v91, v85, sub_1003EBD4C, 0, v88, v188, v89);
  sub_10001CEA8(v90, &v3[*(*v3 + 472)], &qword_100594D50, &unk_1004AEBF0);
  v94 = v210;
  v95 = *(v210 + v3);
  LOBYTE(v215) = 1;
  v217 = 0;
  v218 = 0xE000000000000000;

  _StringGuts.grow(_:)(18);

  v217 = v207;
  v218 = v92;
  v96 = v92;
  v97._object = 0x80000001004C11C0;
  v97._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v97);
  v98 = v217;
  v99 = v218;
  v206(v93, v86, v87);
  v100 = sub_1000C76B4();
  v101 = v189;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v95, &v215, v98, v99, v93, sub_1003F0F0C, 0, &type metadata for AutoJoinState, v189, v100);
  sub_10001CEA8(v101, &v3[*(*v3 + 480)], &qword_10059A3E0, &unk_1004B3080);
  v102 = *(v94 + v3);
  v103 = v201;
  v104 = *(v201 + 88);

  v105 = v104(AssociatedTypeWitness, v103);
  if ((v105 & 0x10000) != 0)
  {
    v106 = CountryCode.unknown.unsafeMutableAddressor();
    LOBYTE(v105) = *v106;
    LOBYTE(v106) = *(v106 + 1);
  }

  else
  {
    LODWORD(v106) = v105 >> 8;
  }

  LOBYTE(v215) = v105;
  BYTE1(v215) = v106;
  v107 = v207;
  v217 = v207;
  v218 = v96;
  v108 = v96;

  v109._countAndFlagsBits = 0x7972746E756F6320;
  v109._object = 0xED000065646F6320;
  String.append(_:)(v109);
  v110 = v217;
  v111 = v218;
  v112 = v205;
  v113 = v206;
  v114 = v211;
  v206(v205, v211, v214);
  v115 = sub_1001B8EC4();
  v116 = v190;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v102, &v215, v110, v111, v112, sub_1003F0EB8, 0, &type metadata for CountryCode, v190, v115);
  sub_10001CEA8(v116, &v3[*(*v3 + 568)], &unk_10059A6B0, &unk_1004B4D80);
  v117 = *(v210 + v3);
  LOBYTE(v215) = 0;
  v217 = 0;
  v218 = 0xE000000000000000;

  _StringGuts.grow(_:)(19);

  v217 = v107;
  v218 = v108;
  v118._countAndFlagsBits = 0xD000000000000011;
  v118._object = 0x80000001004C11E0;
  String.append(_:)(v118);
  v119 = v217;
  v120 = v218;
  v121 = v214;
  v113(v112, v114, v214);
  v122 = v198;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v117, &v215, v119, v120, v112, sub_10001BCD8, 0, &type metadata for Bool, v198, &protocol witness table for Bool);
  sub_10001CEA8(v122, &v3[*(*v3 + 560)], &unk_10059B150, &qword_1004B3070);
  v123 = v210;
  v124 = *(v210 + v3);
  v217 = 0;
  v218 = 0;
  v113(v112, v114, v121);

  v125 = sub_10005DC58(&unk_100599FD0, &qword_100482530);
  v181 = sub_1003F0944();
  v126 = v191;
  v127 = v124;
  v128 = v112;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v127, &v217, 0xD000000000000018, 0x80000001004C1200, v112, sub_1003EBDAC, 0, v125, v191, v181);
  sub_10001CEA8(v126, &v3[*(*v3 + 576)], &unk_10059A3C0, &unk_1004B3060);
  v129 = *(v123 + v3);
  LOBYTE(v215) = 4;
  v217 = v207;
  v218 = v212;

  v130._countAndFlagsBits = 1399804192;
  v130._object = 0xE400000000000000;
  String.append(_:)(v130);
  v132 = v217;
  v131 = v218;
  v113(v128, v114, v214);
  v133 = sub_10005DC58(&qword_1005995C8, &qword_1004B2F40);
  v134 = sub_10001D6F4(&qword_1005995D0, &qword_1005995C8, &qword_1004B2F40, sub_10023758C);
  v135 = v192;
  v136 = v132;
  v137 = v131;
  v138 = v128;
  v139 = v214;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v129, &v215, v136, v137, v128, sub_1003F0E54, 0, v133, v192, v134);
  sub_10001CEA8(v135, &v3[*(*v3 + 584)], &unk_100599620, &qword_1004B3098);
  v140 = *(v210 + v3);
  WORD2(v217) = 3;
  LODWORD(v217) = 0;
  v141 = v114;
  v142 = v139;
  v143 = v206;
  v206(v138, v141, v139);

  v144 = sub_10005DC58(&unk_10059A5B0, &unk_1004B2F30);
  v145 = sub_10001D6F4(&qword_1005995A0, &unk_10059A5B0, &unk_1004B2F30, sub_100218C7C);
  v146 = v193;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v140, &v217, 0xD000000000000017, 0x80000001004C1220, v138, sub_1003EBDF8, 0, v144, v193, v145);
  sub_10001CEA8(v146, &v3[*(*v3 + 512)], &qword_100599610, &qword_1004B3078);
  v147 = v202;
  v148 = v194;
  v149 = AssociatedTypeWitness;
  (*(v202 + 16))(v194, v208, AssociatedTypeWitness);
  (*(v147 + 56))(v148, 0, 1, v149);
  v150 = v196;
  (*(v195 + 16))(v196, v200, v199);
  v143(v138, v211, v142);
  result = WiFiInterface.init(driver:components:logger:)(v148, v150, v138, v151);
  if (result)
  {
    v153 = result;

    v154 = *(*v153 + 168);
    v155 = *v153 + 168;

    v157 = v184;
    v210 = v154;
    v207 = v155;
    v154(v156);
    v158 = swift_allocObject();
    swift_weakInit();

    v159 = v183;
    v143(v183, v211, v142);
    v212 = v153;
    v160 = v203;
    v161 = (*(v203 + 80) + 40) & ~*(v203 + 80);
    v162 = swift_allocObject();
    v163 = v204;
    v164 = v197;
    *(v162 + 2) = v204;
    *(v162 + 3) = v164;
    *(v162 + 4) = v158;
    (*(v160 + 32))(&v162[v161], v159, v142);
    v165 = v201;
    v166 = *(v201 + 24);

    v166(sub_100012864, v162, AssociatedTypeWitness, v165);
    v167 = *(v202 + 8);
    v202 += 8;
    v209 = v167;
    (v167)(v157, AssociatedTypeWitness);

    v169 = v182[0];
    v210(v168);
    v170 = swift_allocObject();
    swift_weakInit();
    v171 = swift_allocObject();
    v171[2] = v163;
    v171[3] = v164;
    v171[4] = v170;
    v172 = *(v165 + 8);
    v173 = *(v172 + 40);

    v174 = v169;
    v175 = AssociatedTypeWitness;
    v176 = v173(sub_1003F2EE0, v171, AssociatedTypeWitness, v172);
    v178 = v177;

    (v209)(v174, v175);

    sub_1003EBA4C(v176, v178);
    v179 = v214;
    v180 = v211;
    (*(*(v165 + 8) + 8))(v175);
    (*(v165 + 168))(v175, v165);
    (*(v203 + 8))(v180, v179);
    return v212;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1003F2AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InfrastructureWiFiInterface(0, *(v4 + 432), *(v4 + 440), a4);
  swift_allocObject();
  return sub_1003F0F6C(a1, a2);
}

void sub_1003F2B34()
{
  *(v0 + *(*v0 + 504)) = 0;

  sub_1003EB78C(0x300000000);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Infra association ready", v2, 2u);
  }
}

void sub_1003F2C14(uint64_t a1)
{
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Infra authentication complete", v2, 2u);
  }
}

uint64_t sub_1003F2D3C(uint64_t a1)
{
  v2 = type metadata accessor for DriverEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1003F2D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7 == 5)
  {
    sub_100185484(a2, a3, a4, a5, a6);
  }

  else if (a7 == 4 || a7 == 1)
  {
  }
}

unint64_t sub_1003F2DDC()
{
  result = qword_1005995F8;
  if (!qword_1005995F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_1005995E8, &unk_1004B3040);
    v4[0] = sub_1003F2E60();
    result = swift_getWitnessTable(aI_18, v3, v4);
    atomic_store(result, &qword_1005995F8);
  }

  return result;
}

unint64_t sub_1003F2E60()
{
  result = qword_100599600;
  if (!qword_100599600)
  {
    result = swift_getWitnessTable(a1_4, &type metadata for InfrastructureRadioConstraints, v0, v1);
    atomic_store(result, &qword_100599600);
  }

  return result;
}

uint64_t sub_1003F2EEC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1003EBC8C(a1, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4);
}

uint64_t sub_1003F2FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_10036A544(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t NANAgentClient.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1003F30F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  UUID.init()();
  v12 = nw_agent_client_copy_parameters();
  if (v12)
  {
    *(v5 + 40) = v12;
    swift_unknownObjectRetain();
    v13 = nw_agent_client_copy_path();
    if (v13)
    {
      v14 = nw_path_copy_effective_local_endpoint(v13);
      if (v14)
      {
        port = nw_endpoint_get_port(v14);
        swift_unknownObjectRelease();
      }

      else
      {
        port = 0;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      port = 0;
    }

    swift_unknownObjectRetain();
    *(v5 + 90) = nw_parameters_get_ip_protocol();
    *(v5 + 88) = port;
    *(v5 + 16) = a1;
    *(v5 + 24) = a4;
    *(v5 + 32) = a5;
    swift_unknownObjectRetain();
    sub_10001F89C(a4, a5);
    pid = nw_parameters_get_pid();
    swift_unknownObjectRelease();
    *(v5 + 64) = pid;
    Int32.peerCodeIdentity.getter(&v21, pid);
    v18 = v22;
    if (v22)
    {
      v19 = v21;
      v24 = v23;
      sub_100016290(&v24, &unk_100599FD0, &qword_100482530);
      swift_unknownObjectRelease();
      sub_100010520(a4, a5);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_100010520(a4, a5);
      swift_unknownObjectRelease();
      v18 = 0xE700000000000000;
      v19 = 0x6E776F6E6B6E55;
    }

    *(v5 + 72) = v19;
    *(v5 + 80) = v18;
    *(v5 + 48) = a2;
    *(v5 + 56) = a3;
  }

  else
  {
    sub_100010520(a4, a5);
    swift_unknownObjectRelease();

    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v5 + v11, v16);
    type metadata accessor for NANAgentClient(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t sub_1003F3330(uint64_t a1)
{
  v1 = UUID.uuidString.getter();
  sub_1003FC9E0(8, v1, v2);

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x3A646970202CLL;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 93;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 979659099;
}

uint64_t sub_1003F3454()
{
  v1 = v0;
  _StringGuts.grow(_:)(38);

  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100480F40;
  v3 = [*(v1 + 16) hash];
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = v3;
  v4._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 979659040;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  v6 = UUID.uuidString.getter();
  sub_1003FC9E0(8, v6, v7);

  v8 = static String._fromSubstring(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x3A646970202CLL;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x656C646E7562202CLL;
  v14._object = 0xEB000000003A6469;
  String.append(_:)(v14);
  String.append(_:)(*(v1 + 72));
  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16 = *(v1 + 48);
  v17 = *(v1 + 56);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    String.append(_:)(*&v16);
    v19._countAndFlagsBits = 0x3A63767320;
    v19._object = 0xE500000000000000;
    String.append(_:)(v19);
  }

  if (*(v1 + 88))
  {
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 0x3A74726F7020;
    v21._object = 0xE600000000000000;
    String.append(_:)(v21);
  }

  v22._countAndFlagsBits = 93;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 0x3A746E65696C635BLL;
}

char *NANAgentClient.deinit()
{
  swift_unknownObjectRelease();
  sub_100010520(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NANAgentClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_100010520(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1003F3874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = nw_agent_client_copy_browse_descriptor();
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  if (nw_browse_descriptor_get_type() != 2 || !nw_browse_descriptor_get_application_service_name(v8))
  {
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRelease();

    type metadata accessor for NANBrowserClient(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + OBJC_IVAR____TtC12wifip2pdCore16NANBrowserClient_descriptor) = v8;
  swift_unknownObjectRetain();
  v9 = String.init(cString:)();
  v11 = v10;

  v12 = sub_1003F30F0(a1, v9, v11, a2, a3);

  swift_unknownObjectRelease();
  if (v12)
  {

    return v12;
  }

  return 0;
}

uint64_t sub_1003F39A8()
{
  v0 = sub_1003F3454();
  v1._countAndFlagsBits = 0x7069726373656420;
  v1._object = 0xEC0000003A726F74;
  String.append(_:)(v1);
  sub_10005DC58(&qword_100599FE8, &unk_1004B3288);
  _print_unlocked<A, B>(_:_:)();

  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  String.append(_:)(v2);

  return v0;
}

char *NANBrowserClient.deinit()
{
  swift_unknownObjectRelease();
  sub_100010520(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NANBrowserClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_100010520(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1003F3C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
  *v7 = 0;
  v7[1] = 0;
  v8 = nw_agent_client_copy_advertise_descriptor();
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  if (nw_advertise_descriptor_get_type() != 2 || !nw_advertise_descriptor_get_application_service_name(v9))
  {
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRelease();

    sub_100010520(*v7, v7[1]);
    type metadata accessor for NANListenerClient(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_descriptor) = v9;
  swift_unknownObjectRetain();
  v10 = String.init(cString:)();
  v12 = v11;

  v13 = sub_1003F30F0(a1, v10, v12, a2, a3);

  swift_unknownObjectRelease();
  if (v13)
  {

    return v13;
  }

  return 0;
}

uint64_t sub_1003F3D58()
{
  v1 = sub_1003F3454();
  sub_10005DC58(&qword_100599FF8, &qword_1004B3298);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0x3A6E676973736120;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  if (*(v0 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign))
  {
    v3 = 7628147;
  }

  else
  {
    v3 = 0x7465736E75;
  }

  if (*(v0 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign))
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  String.append(_:)(v6);

  return v1;
}

uint64_t sub_1003F3E80()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
  v2 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign + 8);

  return sub_100010520(v1, v2);
}

char *NANListenerClient.deinit()
{
  swift_unknownObjectRelease();
  sub_100010520(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  sub_100010520(*(v0 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign), *(v0 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign + 8));
  return v0;
}

char *NANFlowClient.deinit()
{
  swift_unknownObjectRelease();
  sub_100010520(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t NANFlowClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_100010520(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

char *NANConnectionClient.deinit()
{
  swift_unknownObjectRelease();
  sub_100010520(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003F41E8()
{

  v1 = OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_endpoint;
  v2 = type metadata accessor for NWEndpoint();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

char *NANResolverClient.deinit()
{
  swift_unknownObjectRelease();
  sub_100010520(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_endpoint;
  v4 = type metadata accessor for NWEndpoint();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1003F4380(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003F460C(uint64_t a1)
{
  result = type metadata accessor for NWEndpoint();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1003F46AC(uint64_t a1)
{
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v3 = &v19 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v19 - v8;
  v9 = *(a1 + 16);
  v23 = _swiftEmptyArrayStorage;
  sub_1003678E8(0, v9, 0);
  v10 = v23;
  if (v9)
  {
    v11 = a1 + 32;
    v19 = v3;
    v20 = (v5 + 56);
    v12 = (v5 + 32);
    while (1)
    {
      sub_100002B30(v11, v22);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v20)(v3, 0, 1, v4);
      v13 = *v12;
      v14 = v21;
      (*v12)(v21, v3, v4);
      v13(v7, v14, v4);
      v23 = v10;
      v15 = v7;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_1003678E8((v16 > 1), v17 + 1, 1);
        v10 = v23;
      }

      v10[2] = v17 + 1;
      v13(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v15, v4);
      v11 += 32;
      --v9;
      v7 = v15;
      v3 = v19;
      if (!v9)
      {
        return v10;
      }
    }

    (*v20)(v3, 1, 1, v4);
    sub_100016290(v3, &qword_10058F4D0, &qword_100491AB0);
    return 0;
  }

  return v10;
}

void sub_1003F4970(unsigned __int16 a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerAdvertiseClients;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v4 + 56) + ((v10 << 9) | (8 * v11)));
      if (*(v12 + 88) == v2)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v9 = v12;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_4;
    }
  }

  v14 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerFlowClients;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  v21 = 0;
  if (!v18)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_15:
    while (1)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = *(*(v15 + 56) + ((v21 << 9) | (8 * v22)));
      if (*(v23 + 88) == v2)
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v20 = v23;
  }

  while (v18);
LABEL_17:
  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v19)
    {

      if (v9)
      {
        if (v20)
        {
          v25 = *(v20 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);
          v26 = (v9 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
          v27 = *(v9 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
          v28 = *(v9 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign + 8);
          *v26 = *(v20 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
          v26[1] = v25;

          v29 = v27;
          v30 = v28;
        }

        else
        {
          v31 = (v9 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
          v29 = *(v9 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign);
          v30 = *(v9 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_assign + 8);
          *v31 = 0;
          v31[1] = 0;
        }

        sub_100010520(v29, v30);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v39 = v35;
          *v34 = 136315138;
          v36 = sub_1003F3D58();
          v38 = sub_100002320(v36, v37, &v39);

          *(v34 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v32, v33, "### Updated listener %s", v34, 0xCu);
          sub_100002A00(v35);
        }
      }

      return;
    }

    v18 = *(v15 + 64 + 8 * v24);
    ++v21;
    if (v18)
    {
      v21 = v24;
      goto LABEL_15;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1003F4CBC()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1003FCC38;
  v9 = v0;
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = sub_1003F611C;
  v7 = &unk_100579F18;
  v1 = _Block_copy(&v4);

  v2 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1003FCC40;
  v9 = v2;
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = sub_1000991C0;
  v7 = &unk_100579F40;
  v3 = _Block_copy(&v4);

  nw_agent_set_browse_handlers();
  _Block_release(v3);
  _Block_release(v1);
}

void sub_1003F4E34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WAError.ErrorCode();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  if (nw_agent_client_copy_browse_descriptor())
  {
    swift_unknownObjectRelease();
    type metadata accessor for NANBrowserClient(0);
    swift_allocObject();
    swift_unknownObjectRetain();

    v13 = sub_1003F3874(a1, a2, a3);
    if (v13)
    {
      v14 = v13;
      v140 = v10;
      v141 = v8;
      v142 = v7;
      v144 = a1;
      v15 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_browserClients;
      swift_beginAccess();
      v143 = v12;
      v139 = v15;
      v16 = *(v12 + v15);
      v17 = v16 + 64;
      v18 = 1 << *(v16 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v16 + 64);
      v149 = OBJC_IVAR____TtC12wifip2pdCore16NANBrowserClient_descriptor;
      v145 = (v18 + 63) >> 6;
      v151 = "outOfBandFrameInFlight";
      v147 = 0x80000001004C0A80;

      v21 = 0;
      v146 = xmmword_100480F40;
      v150 = v14;
      v148 = v16;
      while (v20)
      {
LABEL_12:
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v24 = *(*(v16 + 56) + ((v21 << 9) | (8 * v23)));
        v25 = *(v24 + 48) == *(v14 + 48) && *(v24 + 56) == *(v14 + 56);
        if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v152 = v24;

          v26 = sub_1003F3454();
          v28 = v27;
          v155 = 0;
          v156 = 0xE000000000000000;
          v29._countAndFlagsBits = 0x7069726373656420;
          v29._object = 0xEC0000003A726F74;
          String.append(_:)(v29);
          v153 = *(v14 + v149);
          sub_10005DC58(&qword_100599FE8, &unk_1004B3288);
          _print_unlocked<A, B>(_:_:)();
          v30 = v155;
          v31 = v156;
          v155 = v26;
          v156 = v28;

          v32._countAndFlagsBits = v30;
          v32._object = v31;
          String.append(_:)(v32);

          v33 = v155;
          v34 = v156;
          v35 = objc_allocWithZone(NSRegularExpression);
          v48 = sub_1003E0818(0xD000000000000021, v151 | 0x8000000000000000, 0);
          v49 = HIBYTE(v34) & 0xF;
          if ((v34 & 0x2000000000000000) == 0)
          {
            v49 = v33;
          }

          v50 = 7;
          if (((v34 >> 60) & ((v33 & 0x800000000000000) == 0)) != 0)
          {
            v50 = 11;
          }

          v155 = 15;
          v156 = v50 | (v49 << 16);
          v153 = v33;
          v154 = v34;

          sub_10005DC58(&qword_100598968, &qword_1004B2870);
          sub_1003FCC48();
          sub_10005E2E4();
          v51 = _NSRange.init<A, B>(_:in:)();
          v53 = v52;
          v54 = String._bridgeToObjectiveC()();
          v47 = [v48 firstMatchInString:v54 options:0 range:{v51, v53}];

          if (!v47)
          {
            v36 = sub_1003F39A8();
            v38 = v37;
            v39 = objc_allocWithZone(NSRegularExpression);
            v40 = sub_1003E0818(0xD000000000000021, v151 | 0x8000000000000000, 0);
            v41 = HIBYTE(v38) & 0xF;
            if ((v38 & 0x2000000000000000) == 0)
            {
              v41 = v36;
            }

            v42 = 7;
            if (((v38 >> 60) & ((v36 & 0x800000000000000) == 0)) != 0)
            {
              v42 = 11;
            }

            v155 = 15;
            v156 = v42 | (v41 << 16);
            v153 = v36;
            v154 = v38;

            sub_10005DC58(&qword_100598968, &qword_1004B2870);
            sub_1003FCC48();
            sub_10005E2E4();
            v43 = _NSRange.init<A, B>(_:in:)();
            v45 = v44;
            v46 = String._bridgeToObjectiveC()();
            v47 = [v40 firstMatchInString:v46 options:0 range:{v43, v45}];

            if (!v47)
            {
              v119 = v152;

              v120 = v150;

              v121 = Logger.logObject.getter();
              v122 = static os_log_type_t.default.getter();

              v123 = os_log_type_enabled(v121, v122);
              v124 = v142;
              v125 = v141;
              if (v123)
              {
                v126 = swift_slowAlloc();
                v151 = swift_slowAlloc();
                v155 = v151;
                *v126 = 136315650;
                v127 = *(v119 + 48);
                v128 = *(v119 + 56);

                v129 = sub_100002320(v127, v128, &v155);

                *(v126 + 4) = v129;
                *(v126 + 12) = 2080;
                v130 = *(v152 + 72);
                v131 = *(v152 + 80);

                v132 = sub_100002320(v130, v131, &v155);

                *(v126 + 14) = v132;
                *(v126 + 22) = 2080;
                v133 = *(v120 + 72);
                v134 = *(v120 + 80);

                v135 = sub_100002320(v133, v134, &v155);

                *(v126 + 24) = v135;
                _os_log_impl(&_mh_execute_header, v121, v122, "### Duplicate Service %s found for %s. Rejecting %s", v126, 0x20u);
                swift_arrayDestroy();
              }

              v136 = v140;
              (*(v125 + 104))(v140, enum case for WAError.ErrorCode.serviceAlreadySubscribing(_:), v124);
              v137 = WAError.ErrorCode.rawValue.getter();
              (*(v125 + 8))(v136, v124);
              if (v137 < 0xFFFFFFFF80000000)
              {
                goto LABEL_89;
              }

              if (v137 > 0x7FFFFFFF)
              {
                goto LABEL_90;
              }

              if (!nw_error_create_error_with_inferred_domain())
              {
                goto LABEL_95;
              }

              goto LABEL_82;
            }
          }

          v16 = v148;

          v14 = v150;
        }
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_86;
        }

        if (v22 >= v145)
        {
          break;
        }

        v20 = *(v17 + 8 * v22);
        ++v21;
        if (v20)
        {
          v21 = v22;
          goto LABEL_12;
        }
      }

      v84 = v143;
      sub_10002B154(v143 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, &v155);
      v85 = v157;
      v86 = v158;
      sub_100029B34(&v155, v157);
      v87 = (*(v86 + 8))(v14, v85, v86);
      sub_100002A00(&v155);
      if (!v87)
      {
        v96 = v14;

        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v155 = v100;
          *v99 = 136315138;
          v101 = sub_1003F39A8();
          v103 = sub_100002320(v101, v102, &v155);

          *(v99 + 4) = v103;
          _os_log_impl(&_mh_execute_header, v97, v98, "### Start browse request from %s", v99, 0xCu);
          sub_100002A00(v100);
        }

        v104 = [v144 hash];
        v105 = v139;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v153 = *(v84 + v105);
        *(v84 + v105) = 0x8000000000000000;
        sub_1003E3018(v96, v104, isUniquelyReferenced_nonNull_native);
        *(v84 + v105) = v153;
        swift_endAccess();

        goto LABEL_83;
      }

      if (v87 == 255)
      {
        goto LABEL_54;
      }

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 67109120;
        *(v109 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v107, v108, "### Failed to Start browse: error%d", v109, 8u);
      }

      swift_unknownObjectRetain();
      if (!nw_error_create_error_with_inferred_domain())
      {
        goto LABEL_94;
      }

LABEL_72:
      nw_agent_send_error_response();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_83;
    }

    (*(v8 + 104))(v10, enum case for WAError.ErrorCode.error(_:), v7);
    swift_unknownObjectRetain();
    v88 = WAError.ErrorCode.rawValue.getter();
    (*(v8 + 8))(v10, v7);
    if (v88 >= 0xFFFFFFFF80000000)
    {
      if (v88 <= 0x7FFFFFFF)
      {
        if (nw_error_create_error_with_inferred_domain())
        {
          nw_agent_send_error_response();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return;
        }

LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      goto LABEL_88;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (!nw_agent_client_copy_advertise_descriptor() || (swift_unknownObjectRelease(), type metadata accessor for NANListenerClient(0), swift_allocObject(), swift_unknownObjectRetain(), , (v55 = sub_1003F3C0C(a1, a2, a3)) == 0))
  {
LABEL_83:

    return;
  }

  v56 = v55;
  v140 = v10;
  v141 = v8;
  v142 = v7;
  v144 = a1;
  v57 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerAdvertiseClients;
  swift_beginAccess();
  v58 = 0;
  v59 = v12;
  v60 = *(v12 + v57);
  v61 = 1 << *(v60 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v60 + 64);
  v64 = (v61 + 63) >> 6;
  while (v63)
  {
LABEL_41:
    v66 = *(*(v60 + 56) + ((v58 << 9) | (8 * __clz(__rbit64(v63)))));
    if (v66[6] != *(v56 + 48) || v66[7] != *(v56 + 56))
    {
      v63 &= v63 - 1;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v155 = v152;
      *v70 = 136315650;
      v71 = v66[6];
      v72 = v66[7];

      v73 = sub_100002320(v71, v72, &v155);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2080;
      v74 = v66[9];
      v75 = v66[10];

      v76 = sub_100002320(v74, v75, &v155);

      *(v70 + 14) = v76;
      *(v70 + 22) = 2080;
      v77 = *(v56 + 72);
      v78 = *(v56 + 80);

      v79 = sub_100002320(v77, v78, &v155);

      *(v70 + 24) = v79;
      _os_log_impl(&_mh_execute_header, v68, v69, "### Duplicate Service %s found for %s. Rejecting %s", v70, 0x20u);
      swift_arrayDestroy();
    }

    v80 = v142;
    v81 = v141;
    v82 = v140;
    (*(v141 + 104))(v140, enum case for WAError.ErrorCode.serviceAlreadyPublishing(_:), v142);
    v83 = WAError.ErrorCode.rawValue.getter();
    (*(v81 + 8))(v82, v80);
    if (v83 >= 0xFFFFFFFF80000000)
    {
      if (v83 <= 0x7FFFFFFF)
      {
        if (!nw_error_create_error_with_inferred_domain())
        {
          goto LABEL_97;
        }

LABEL_82:
        swift_unknownObjectRetain();
        nw_agent_send_error_response();

        swift_unknownObjectRelease_n();
        goto LABEL_83;
      }

      goto LABEL_92;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  while (1)
  {
    v65 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v65 >= v64)
    {
      break;
    }

    v63 = *(v60 + 64 + 8 * v65);
    ++v58;
    if (v63)
    {
      v58 = v65;
      goto LABEL_41;
    }
  }

  v89 = v59;
  sub_10002B154(v59 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, &v155);
  v90 = v157;
  v91 = v158;
  sub_100029B34(&v155, v157);
  v92 = (*(v91 + 24))(v56, v90, v91);
  sub_100002A00(&v155);
  if (!v92)
  {

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v155 = v113;
      *v112 = 136315138;
      v114 = sub_1003F3D58();
      v116 = sub_100002320(v114, v115, &v155);

      *(v112 + 4) = v116;
      v89 = v59;
      _os_log_impl(&_mh_execute_header, v110, v111, "### Start listener advertise request from %s", v112, 0xCu);
      sub_100002A00(v113);
    }

    v117 = [v144 hash];
    swift_beginAccess();

    v118 = swift_isUniquelyReferenced_nonNull_native();
    v153 = *(v89 + v57);
    *(v89 + v57) = 0x8000000000000000;
    sub_1003E2FD8(v56, v117, v118);
    *(v89 + v57) = v153;
    swift_endAccess();
    sub_1003F4970(*(v56 + 88));
    goto LABEL_54;
  }

  if (v92 == 255)
  {
LABEL_54:

    goto LABEL_83;
  }

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 67109120;
    *(v95 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v93, v94, "### Failed to Start Publish: error[%d]", v95, 8u);
  }

  swift_unknownObjectRetain();
  if (nw_error_create_error_with_inferred_domain())
  {
    goto LABEL_72;
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

void sub_1003F6140(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a1 hash];
    v6 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_browserClients;
    swift_beginAccess();
    v7 = *(v4 + v6);
    if (*(v7 + 16) && (v8 = sub_100085268(v5), (v9 & 1) != 0))
    {
      v64 = a1;
      v10 = *(*(v7 + 56) + 8 * v8);
      v11 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients;
      swift_beginAccess();
      v12 = *(v4 + v11);
      v13 = 1 << *(v12 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v12 + 64);
      v16 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger;
      v17 = (v13 + 63) >> 6;

      oslog = 0;
      v18 = 0;
      while (v15)
      {
LABEL_12:
        v20 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v21 = *(*(v12 + 56) + ((v18 << 9) | (8 * v20)));
        if (*(v21 + 64) == *(v10 + 64))
        {
          v22 = *(v21 + 48) == *(v10 + 48) && *(v21 + 56) == *(v10 + 56);
          if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v63 = v16;
            osloga = Logger.logObject.getter();
            v23 = static os_log_type_t.default.getter();

            v61 = v23;
            if (os_log_type_enabled(osloga, v23))
            {
              buf = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *buf = 136315394;
              v55 = sub_1003F3454();
              v57 = v24;
              v68 = 0;
              v69 = 0xE000000000000000;
              v25._countAndFlagsBits = 0x7069726373656420;
              v25._object = 0xEC0000003A726F74;
              String.append(_:)(v25);
              sub_10005DC58(&qword_100599FE8, &unk_1004B3288);
              _print_unlocked<A, B>(_:_:)();
              v54 = v68;
              v56 = v69;
              v68 = v55;
              v69 = v57;

              v26._countAndFlagsBits = v54;
              v26._object = v56;
              String.append(_:)(v26);

              v58 = sub_100002320(v68, v69, &v67);

              *(buf + 4) = v58;
              *(buf + 6) = 2080;
              v27 = *(v21 + 56);
              v59 = *(v21 + 48);

              v60 = sub_100002320(v59, v27, &v67);

              *(buf + 14) = v60;
              _os_log_impl(&_mh_execute_header, osloga, v61, "### Resolve Pending %s %s", buf, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            oslog = 1;
            v16 = v63;
          }
        }
      }

      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
          return;
        }

        if (v19 >= v17)
        {
          break;
        }

        v15 = *(v12 + 64 + 8 * v19);
        ++v18;
        if (v15)
        {
          v18 = v19;
          goto LABEL_12;
        }
      }

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v68 = v47;
        *v46 = 136315138;
        v48 = sub_1003F39A8();
        v50 = sub_100002320(v48, v49, &v68);

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v44, v45, "### Stop browse request from %s", v46, 0xCu);
        sub_100002A00(v47);
      }

      sub_10002B154(v4 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, &v68);
      v51 = v70;
      v52 = v71;
      sub_100029B34(&v68, v70);
      (*(v52 + 16))(v10, oslog & 1, v51, v52);
      sub_100002A00(&v68);
      v53 = [v64 hash];
      swift_beginAccess();
      sub_100338F50(0, v53);
    }

    else
    {
      v28 = [a1 hash];
      v29 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerAdvertiseClients;
      swift_beginAccess();
      v30 = *(v4 + v29);
      if (!*(v30 + 16))
      {
        goto LABEL_32;
      }

      v31 = sub_100085268(v28);
      if ((v32 & 1) == 0)
      {
        goto LABEL_32;
      }

      v33 = *(*(v30 + 56) + 8 * v31);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v68 = v37;
        *v36 = 136315138;
        v38 = sub_1003F3D58();
        v40 = sub_100002320(v38, v39, &v68);

        *(v36 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v34, v35, "### Stop listener advertise request from %s", v36, 0xCu);
        sub_100002A00(v37);
      }

      sub_10002B154(v4 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, &v68);
      v41 = v70;
      v42 = v71;
      sub_100029B34(&v68, v70);
      (*(v42 + 32))(v33, v41, v42);
      sub_100002A00(&v68);
      v43 = [a1 hash];
      swift_beginAccess();
      sub_100338F90(0, v43);
    }

    swift_endAccess();

LABEL_32:
  }
}

void sub_1003F6870()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1003FCBF0;
  v9 = v0;
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = sub_1003F76EC;
  v7 = &unk_100579E78;
  v1 = _Block_copy(&v4);

  v2 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1003FCBF8;
  v9 = v2;
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = sub_1000991C0;
  v7 = &unk_100579EA0;
  v3 = _Block_copy(&v4);

  nw_agent_set_flow_handlers_with_result();
  _Block_release(v3);
  _Block_release(v1);
}

void sub_1003F69F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v102[0] = v10;
    *v9 = 136315138;
    v103[0] = 0;
    v103[1] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v11 = sub_100002320(0, 0xE000000000000000, v102);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "### Start Flow handler callback: Client %s", v9, 0xCu);
    sub_100002A00(v10);
  }

  if (nw_agent_client_copy_path())
  {
    if (nw_path_is_listener())
    {
      type metadata accessor for NANFlowClient(0);
      v12 = (swift_allocObject() + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
      *v12 = a2;
      v12[1] = a3;
      swift_unknownObjectRetain();

      v13 = sub_1003F30F0(a1, 0, 0xE000000000000000, 0, 0);
      if (v13)
      {
        v14 = v13;

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v103[0] = v18;
          *v17 = 136315138;
          v19 = (*(*v14 + 176))();
          v21 = sub_100002320(v19, v20, v103);

          *(v17 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v15, v16, "### Start listener flow request from %s", v17, 0xCu);
          sub_100002A00(v18);
        }

        v22 = [a1 hash];
        v23 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerFlowClients;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102[0] = *(Strong + v23);
        *(Strong + v23) = 0x8000000000000000;
        sub_1003E3098(v14, v22, isUniquelyReferenced_nonNull_native);
        *(Strong + v23) = v102[0];
        swift_endAccess();
        sub_1003F4970(v14[44]);
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_57;
    }

    swift_unknownObjectRelease();
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "### Start connection flow request", v27, 2u);
  }

  v28 = nw_agent_client_copy_endpoint();
  if (v28)
  {
    v29 = v28;
    nw_endpoint_copy_address_string(v28);
    v30 = String.init(cString:)();
    v32 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v98 = v30;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v103[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100002320(v30, v32, v103);
      _os_log_impl(&_mh_execute_header, v33, v34, "### Remote address: %s", v35, 0xCu);
      sub_100002A00(v36);
    }

    type metadata accessor for NANConnectionClient(0);
    v37 = swift_allocObject();
    *(v37 + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote) = v29;
    v38 = (v37 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
    *v38 = a2;
    v38[1] = a3;
    swift_retain_n();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v39 = sub_1003F30F0(a1, 0, 0xE000000000000000, 0, 0);

    if (!v39)
    {

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "### Failed to create connection client", v58, 2u);
      }

      goto LABEL_58;
    }

    v99 = v32;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v103[0] = v43;
      *v42 = 136315138;
      v44 = sub_1003F3454();
      v46 = sub_100002320(v44, v45, v103);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "### Start connection client%s", v42, 0xCu);
      sub_100002A00(v43);
    }

    sub_10002B154(Strong + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, v103);
    v47 = v104;
    v48 = v105;
    sub_100029B34(v103, v104);
    v49 = (*(v48 + 56))(v39, v29, v47, v48);
    sub_100002A00(v103);
    if (v49)
    {

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "### Agent user returned false", v52, 2u);
      }

LABEL_57:

LABEL_58:
      swift_unknownObjectRelease();
      return;
    }

    v95 = v39;
    v59 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_connectionClients;
    swift_beginAccess();
    v94 = v59;
    v60 = *(Strong + v59);
    v63 = *(v60 + 64);
    v62 = v60 + 64;
    v61 = v63;
    v64 = 1 << *(*(Strong + v59) + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & v61;
    v67 = (v64 + 63) >> 6;
    v97 = *(Strong + v59);

    v96 = 0;
    v68 = 0;
    v69 = v32;
    if (!v66)
    {
      while (1)
      {
LABEL_33:
        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          __break(1u);
          return;
        }

        if (v70 >= v67)
        {
          break;
        }

        v66 = *(v62 + 8 * v70);
        ++v68;
        if (v66)
        {
          v68 = v70;
          goto LABEL_37;
        }
      }

      if (v96)
      {

        goto LABEL_58;
      }

      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v102[0] = swift_slowAlloc();
        *v83 = 136315650;
        v84 = sub_1003F3454();
        v86 = sub_100002320(v84, v85, v102);

        *(v83 + 4) = v86;
        *(v83 + 12) = 2048;
        v87 = [a1 hash];
        swift_unknownObjectRelease();
        *(v83 + 14) = v87;
        swift_unknownObjectRelease();
        *(v83 + 22) = 2080;
        swift_unknownObjectRetain();
        sub_10005DC58(&qword_100599FE0, &qword_1004B3280);
        v88 = String.init<A>(describing:)();
        v90 = sub_100002320(v88, v89, v102);

        *(v83 + 24) = v90;
        _os_log_impl(&_mh_execute_header, v81, v82, "### Start connection request from %s %ld remote endpoint:%s", v83, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      v91 = v94;
      v92 = [a1 hash];
      swift_beginAccess();

      v93 = swift_isUniquelyReferenced_nonNull_native();
      v101 = *(Strong + v91);
      *(Strong + v91) = 0x8000000000000000;
      sub_1003E3058(v95, v92, v93);
      *(Strong + v91) = v101;
      swift_endAccess();

      goto LABEL_57;
    }

    while (1)
    {
LABEL_37:
      while (1)
      {
        v71 = (v68 << 9) | (8 * __clz(__rbit64(v66)));
        v72 = *(*(v97 + 48) + v71);
        v66 &= v66 - 1;
        v73 = *(*(*(v97 + 56) + v71) + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote);
        swift_retain_n();
        nw_endpoint_copy_address_string(v73);
        if (v98 != String.init(cString:)() || v69 != v74)
        {
          break;
        }

LABEL_44:
        v77 = [a1 hash];

        if (v77 != v72)
        {
          goto LABEL_45;
        }

        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&_mh_execute_header, v78, v79, "### Connection already exists", v80, 2u);
        }

        v96 = 1;
        v69 = v99;
        if (!v66)
        {
          goto LABEL_33;
        }
      }

      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v76)
      {
        goto LABEL_44;
      }

LABEL_45:

      v69 = v99;
      if (!v66)
      {
        goto LABEL_33;
      }
    }
  }

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "### No remote endpoint present", v55, 2u);
  }
}

void sub_1003F7710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, int a11, uint64_t a12)
{
  v13 = a6;
  if (a8)
  {
    aBlock[4] = a8;
    aBlock[5] = a10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003F7830;
    aBlock[3] = &unk_100579EF0;
    v21 = a7;
    v19 = _Block_copy(aBlock);

    v13 = a6;
    a7 = v21;
  }

  else
  {
    v19 = 0;
  }

  (*(a12 + 16))(a12, a1, a2, a3, a4, a5, v13, a7, v19, a11);
  _Block_release(v19);
}

double sub_1003F7830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

double sub_1003F7890(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_unknownObjectRetain_n();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v46[0] = v9;
      *v8 = 136315394;
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      v45 = a1;
      _print_unlocked<A, B>(_:_:)();
      v10 = sub_100002320(0, 0xE000000000000000, v46);

      *(v8 + 4) = v10;
      *(v8 + 12) = 2048;
      v11 = [a1 hash];
      swift_unknownObjectRelease();
      *(v8 + 14) = v11;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v6, v7, "### Stop Flow handler callback: Client %s %ld", v8, 0x16u);
      sub_100002A00(v9);
    }

    else
    {

      swift_unknownObjectRelease_n();
    }

    v12 = [a1 hash];
    v13 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerFlowClients;
    swift_beginAccess();
    v14 = *(v5 + v13);
    if (*(v14 + 16) && (v15 = sub_100085268(v12), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v42[0] = v21;
        *v20 = 136315138;
        v22 = (*(*v17 + 176))(v21);
        v24 = sub_100002320(v22, v23, v42);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "### Stop listener flow request from %s", v20, 0xCu);
        sub_100002A00(v21);
      }

      v25 = [a1 hash];
      swift_beginAccess();
      sub_100338FD0(0, v25);
      swift_endAccess();
      sub_1003F4970(v17[44]);
    }

    else
    {
      v26 = [a1 hash];
      v27 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_connectionClients;
      swift_beginAccess();
      v28 = *(v5 + v27);
      if (*(v28 + 16))
      {
        v29 = sub_100085268(v26);
        if (v30)
        {
          v31 = *(*(v28 + 56) + 8 * v29);

          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v42[0] = v35;
            *v34 = 136315138;
            v36 = sub_1003F3454();
            v38 = sub_100002320(v36, v37, v42);

            *(v34 + 4) = v38;
            _os_log_impl(&_mh_execute_header, v32, v33, "### Stop connection flow request from %s", v34, 0xCu);
            sub_100002A00(v35);
          }

          sub_10002B154(v5 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, v42);
          v39 = v43;
          v40 = v44;
          sub_100029B34(v42, v43);
          (*(v40 + 64))(v31, 0, 0, v39, v40);
          sub_100002A00(v42);
          v41 = [a1 hash];
          swift_beginAccess();
          sub_100339010(0, v41);
          swift_endAccess();
        }
      }
    }
  }

  return result;
}

void sub_1003F7DB4()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1003FC9D0;
  v9 = v0;
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = sub_1003F611C;
  v7 = &unk_100579E00;
  v1 = _Block_copy(&v4);

  v2 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1003FC9D8;
  v9 = v2;
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = sub_1000991C0;
  v7 = &unk_100579E28;
  v3 = _Block_copy(&v4);

  nw_agent_add_resolve_handlers();
  _Block_release(v3);
  _Block_release(v1);
}

void sub_1003F7F34(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  sub_10005DC58(&qword_1005989E0, &qword_1004B28E0);
  __chkstk_darwin();
  v8 = &v76 - v7;
  v9 = type metadata accessor for NWEndpoint();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v76 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = nw_agent_client_copy_endpoint();
    if (v17)
    {
      v18 = v17;
      swift_unknownObjectRetain();
      NWEndpoint.init(_:)();
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_100016290(v8, &qword_1005989E0, &qword_1004B28E0);
        if (nw_error_create_error_with_inferred_domain())
        {
          nw_agent_send_error_response();

          swift_unknownObjectRelease();
LABEL_8:
          swift_unknownObjectRelease();
          return;
        }

LABEL_39:
        __break(1u);
        return;
      }

      v86 = a3;
      v87 = a2;
      v88 = a1;
      v89 = v10;
      v91 = v18;
      v92 = v14;
      v19 = *(v10 + 32);
      v90 = v9;
      v19(v14, v8, v9);
      v20 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients;
      swift_beginAccess();
      v83 = v20;
      v21 = *(v16 + v20);
      v24 = *(v21 + 64);
      v23 = v21 + 64;
      v22 = v24;
      v25 = 1 << *(*(v16 + v20) + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & v22;
      v85 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger;
      v28 = (v25 + 63) >> 6;

      v29 = 0;
      v30 = 0;
      *&v31 = 136315138;
      v84 = v31;
      while (1)
      {
        v32 = v30;
        if (!v27)
        {
          break;
        }

LABEL_17:
        v27 &= v27 - 1;

        if (static NWEndpoint.== infix(_:_:)())
        {

          v82 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          v81 = v33;
          if (os_log_type_enabled(v82, v33))
          {
            v34 = swift_slowAlloc();
            v80 = v34;
            v78 = swift_slowAlloc();
            v97 = v78;
            *v34 = v84;
            v77 = sub_1003F3454();
            v79 = v35;
            v93 = 0;
            v94 = 0xE000000000000000;
            v36._countAndFlagsBits = 0x6E696F70646E6520;
            v36._object = 0xEA00000000003A74;
            String.append(_:)(v36);
            _print_unlocked<A, B>(_:_:)();
            v37 = v94;
            v76 = v93;
            v93 = v77;
            v94 = v79;

            v38._countAndFlagsBits = v76;
            v38._object = v37;
            String.append(_:)(v38);

            v39 = sub_100002320(v93, v94, &v97);

            v40 = v80;
            *(v80 + 1) = v39;
            v41 = v82;
            _os_log_impl(&_mh_execute_header, v82, v81, "### Resolve for client %s in progress", v40, 0xCu);
            sub_100002A00(v78);
          }

          else
          {
          }

          v29 = 1;
        }

        else
        {
        }
      }

      while (1)
      {
        v30 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v30 >= v28)
        {

          if (v29)
          {
            (v89[1])(v92, v90);

            goto LABEL_8;
          }

          nw_endpoint_get_bonjour_service_type(v91);
          v42 = String.init(cString:)();
          v82 = v43;
          v45 = v89;
          v44 = v90;
          v46 = v89[2];
          v47 = v92;
          v46(v12, v92, v90);
          type metadata accessor for NANResolverClient(0);
          v48 = swift_allocObject();
          v49 = (v48 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve);
          v50 = v86;
          *v49 = v87;
          v49[1] = v50;
          v46((v48 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_endpoint), v12, v44);
          v51 = v44;

          v52 = swift_unknownObjectRetain();
          v53 = sub_1003F30F0(v52, v42, v82, 0, 0);
          v54 = v45[1];
          v54(v12, v51);
          if (!v53)
          {
            v54(v47, v51);
            swift_unknownObjectRelease();

            return;
          }

          v55 = v47;
          sub_10002B154(v16 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, &v93);
          v56 = v95;
          v57 = v96;
          sub_100029B34(&v93, v95);
          v58 = (*(v57 + 40))(v53, v56, v57);
          sub_100002A00(&v93);
          if (v58 != 255)
          {
            if (!v58)
            {

              v59 = Logger.logObject.getter();
              v60 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v59, v60))
              {
                v61 = swift_slowAlloc();
                v87 = v61;
                v89 = swift_slowAlloc();
                v97 = v89;
                *v61 = v84;
                v86 = sub_1003F3454();
                v63 = v62;
                v93 = 0;
                v94 = 0xE000000000000000;
                v64._countAndFlagsBits = 0x6E696F70646E6520;
                v64._object = 0xEA00000000003A74;
                String.append(_:)(v64);
                _print_unlocked<A, B>(_:_:)();
                v65 = v94;
                v85 = v93;
                v93 = v86;
                v94 = v63;

                v66._countAndFlagsBits = v85;
                v66._object = v65;
                String.append(_:)(v66);

                v67 = sub_100002320(v93, v94, &v97);

                v68 = v87;
                *(v87 + 1) = v67;
                _os_log_impl(&_mh_execute_header, v59, v60, "### Start resolve request from %s", v68, 0xCu);
                sub_100002A00(v89);
              }

              v69 = [v88 hash];
              v70 = v83;
              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v97 = *(v16 + v70);
              *(v16 + v70) = 0x8000000000000000;
              sub_1003E30D8(v53, v69, isUniquelyReferenced_nonNull_native);
              *(v16 + v70) = v97;
              swift_endAccess();
              swift_unknownObjectRelease();

              v72 = v92;
              goto LABEL_36;
            }

            v73 = Logger.logObject.getter();
            v74 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              *v75 = 67109120;
              *(v75 + 4) = v58;
              _os_log_impl(&_mh_execute_header, v73, v74, "### Failed to Resolve: error[%d", v75, 8u);
            }

            nw_array_create();
            (v87)();
            swift_unknownObjectRelease();
            v55 = v92;
          }

          sub_1003FCA7C(v53);
          swift_unknownObjectRelease();

          v72 = v55;
LABEL_36:
          v54(v72, v51);
          return;
        }

        v27 = *(v23 + 8 * v30);
        ++v32;
        if (v27)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else if (nw_error_create_error_with_inferred_domain())
    {
      nw_agent_send_error_response();

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_39;
  }
}

double sub_1003F8910(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a1 hash];
    v7 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients;
    swift_beginAccess();
    v8 = *(v5 + v7);
    if (*(v8 + 16))
    {
      v9 = sub_100085268(v6);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          buf = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v25 = v24;
          *buf = 136315138;
          v22 = sub_1003F3454();
          v15 = v14;
          v16._countAndFlagsBits = 0x6E696F70646E6520;
          v16._object = 0xEA00000000003A74;
          String.append(_:)(v16);
          type metadata accessor for NWEndpoint();
          _print_unlocked<A, B>(_:_:)();
          v26[0] = v22;
          v26[1] = v15;

          v17._countAndFlagsBits = 0;
          v17._object = 0xE000000000000000;
          String.append(_:)(v17);

          v18 = sub_100002320(v22, v15, &v25);

          *(buf + 4) = v18;
          _os_log_impl(&_mh_execute_header, v12, v13, "### Stop resolve request from %s", buf, 0xCu);
          sub_100002A00(v24);
        }

        sub_10002B154(v5 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user, v26);
        v19 = v27;
        v20 = v28;
        sub_100029B34(v26, v27);
        (*(v20 + 48))(v11, v19, v20);
        sub_100002A00(v26);
        v21 = [a1 hash];
        swift_beginAccess();
        sub_100339050(0, v21);
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_1003F8C14(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v9 = swift_unknownObjectRetain();
  v6(v9, a5, v8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003F8CC4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger, v2, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "### Stopping agent", v10, 2u);
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  nw_agent_change_state();
  v11((v1 + v7), v2);
  swift_unknownObjectRelease();

  sub_100002A00((v1 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user));

  v12 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  return v1;
}

uint64_t sub_1003F8F28(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1003F8FAC(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1003F90B4(uint64_t a1, void *a2)
{
  v67 = type metadata accessor for Logger();
  v5 = *(v67 - 8);
  __chkstk_darwin();
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NWEndpoint();
  *&v62 = *(v8 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v11 = &v58 - v10;
  v12 = *(a1 + 24);
  if (v12)
  {
    v63 = v7;
    v64 = v2;
    v58 = v5;
    v69 = v9;
    v65 = a1;
    v60 = *(a1 + 32);
    v61 = v12;

    v13 = nw_array_create();
    v66 = a2;
    v14 = a2[2];
    if (v14)
    {
      v68 = *(v62 + 16);
      v15 = v66 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v16 = *(v62 + 72);
      v17 = (v62 + 8);
      v18 = v14;
      do
      {
        v68(v11, v15, v8);
        NWEndpoint.nw.getter();
        (*v17)(v11, v8);
        nw_array_append();
        swift_unknownObjectRelease();
        v15 += v16;
        --v18;
      }

      while (v18);
    }

    v68 = v8;

    swift_unknownObjectRetain();
    v19 = v13;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    v22 = os_log_type_enabled(v20, v21);
    v59 = v13;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v70[0] = v24;
      *v23 = 136315394;
      v25 = sub_1003F3330(v24);
      v27 = sub_100002320(v25, v26, v70);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = [v19 description];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_100002320(v29, v31, v70);

      *(v23 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v20, v21, "### Vending endpoints to client %s - %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    v34 = v63;
    v35 = v68;
    v36 = v69;
    if (v14)
    {
      v37 = v66 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v65 = *(v62 + 72);
      v66 = &unk_1004B4EC0;
      v64 = (v62 + 16);
      v38 = (v62 + 8);
      v39 = (v58 + 8);
      *&v33 = 136315138;
      v62 = v33;
      do
      {
        Logger.init(subsystem:category:)();
        (*v64)(v36, v37, v35);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v71 = v43;
          *v42 = v62;
          v70[0] = NWEndpoint.deviceName.getter();
          v70[1] = v44;
          sub_10005DC58(&unk_100599FD0, &qword_100482530);
          v45 = String.init<A>(describing:)();
          v47 = v46;
          (*v38)(v69, v68);
          v48 = sub_100002320(v45, v47, &v71);
          v34 = v63;

          *(v42 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v40, v41, "#### vendEndpoints deviceName %s", v42, 0xCu);
          sub_100002A00(v43);
          v36 = v69;

          v35 = v68;
        }

        else
        {

          (*v38)(v36, v35);
        }

        (*v39)(v34, v67);
        v37 += v65;
        --v14;
      }

      while (v14);
    }

    v49 = v60;
    v50 = v61;
    v61(v59);
    swift_unknownObjectRelease();
    sub_100010520(v50, v49);
  }

  else
  {

    v69 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v70[0] = v53;
      *v52 = 136315138;
      v54 = sub_1003F3330(v53);
      v56 = sub_100002320(v54, v55, v70);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v69, v51, "### Cannot vend endpoints to client %s - no browse response", v52, 0xCu);
      sub_100002A00(v53);
    }

    else
    {
      v57 = v69;
    }
  }
}

void sub_1003F9804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), char *a4, void *a5, uint64_t (*a6)(void, __n128), ...)
{
  v9 = a2;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    format = a4;
    v13 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    v14 = a6;
    v15 = v22[0];
    *v13 = 136315394;
    v16 = a3();
    v18 = sub_100002320(v16, v17, v22);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v11, v12, format, v13, 0x12u);
    sub_100002A00(v15);
    a6 = v14;
  }

  v19 = *(a1 + 16);
  if (nw_error_create_error_with_inferred_domain())
  {
    nw_agent_send_error_response();
    swift_unknownObjectRelease();
    v20 = [v19 hash];
    swift_beginAccess();
    (a6)(v20);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_1003F99E8(uint64_t a1, uint64_t a2)
{
  v2 = a2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v6 = 136315394;
    v7 = sub_1003F3454();
    v9 = v8;
    v10._countAndFlagsBits = 0x6E696F70646E6520;
    v10._object = 0xEA00000000003A74;
    String.append(_:)(v10);
    type metadata accessor for NWEndpoint();
    _print_unlocked<A, B>(_:_:)();
    v14 = v2;

    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    String.append(_:)(v11);

    v12 = sub_100002320(v7, v9, &v15);

    *(v6 + 4) = v12;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "### Agent user stopping resolver session:%s with error:%d", v6, 0x12u);
    sub_100002A00(v13);
  }

  if (nw_error_create_error_with_inferred_domain())
  {
    nw_agent_send_error_response();
    swift_unknownObjectRelease();
    sub_1003FCA7C(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003F9C08(uint64_t a1, void *a2, char *a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a6;
  v14 = *(a8 - 8);
  __chkstk_darwin();
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v25 - v18;
  (*(v14 + 32))(&v25 - v18, v20, v21, v17);
  type metadata accessor for NANAgent(0);
  v22 = swift_allocObject();
  (*(v14 + 16))(v16, v19, a8);
  v23 = sub_1003F9D98(a1, a2, a3, a4, v16, v26, v22, a8, a9);
  (*(v14 + 8))(v19, a8);
  return v23;
}

uint64_t sub_1003F9D98(uint64_t a1, void *a2, char *a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v101 = a6;
  v102 = a1;
  v99 = a3;
  v14 = type metadata accessor for UUID();
  v91 = *(v14 - 8);
  __chkstk_darwin();
  v95 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v86 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v83 - v19;
  __chkstk_darwin();
  v90 = &v83 - v20;
  __chkstk_darwin();
  v93 = &v83 - v21;
  __chkstk_darwin();
  v23 = &v83 - v22;
  v112[3] = a8;
  v112[4] = a9;
  v24 = sub_1000297D4(v112);
  (*(*(a8 - 8) + 32))(v24, a5, a8);
  v25 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger;
  Logger.init(subsystem:category:)();
  *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_policySession) = 0;
  *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_vInterfaceRef) = 0;
  v26 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_browserClients;
  *(a7 + v26) = sub_1002DE768(_swiftEmptyArrayStorage);
  v27 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerAdvertiseClients;
  *(a7 + v27) = sub_1002DE77C(_swiftEmptyArrayStorage);
  v28 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_listenerFlowClients;
  *(a7 + v28) = sub_1002DE790(_swiftEmptyArrayStorage);
  v29 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_connectionClients;
  *(a7 + v29) = sub_1002DE7A4(_swiftEmptyArrayStorage);
  v30 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients;
  *(a7 + v30) = sub_1002DE7B8(_swiftEmptyArrayStorage);
  v103 = v17;
  v31 = *(v17 + 16);
  v97 = v17 + 16;
  v96 = v31;
  v31(v23, a7 + v25, v16);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v94 = v25;
  v92 = v14;
  v100 = v16;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = v99;
    v37 = v35;
    aBlock = swift_slowAlloc();
    *v37 = 136315394;
    *(v37 + 4) = sub_100002320(v102, a2, &aBlock);
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_100002320(v36, a4, &aBlock);
    _os_log_impl(&_mh_execute_header, v32, v33, "### Creating agent with domain:%s type:%s", v37, 0x16u);
    swift_arrayDestroy();

    v25 = v94;
  }

  v98 = *(v103 + 8);
  v98(v23, v16);
  sub_10002B154(v112, a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user);
  String.utf8CString.getter();
  String.utf8CString.getter();
  v38 = nw_agent_create();

  v39 = v95;
  if (!v38)
  {

    v58 = v90;
    v96(v90, a7 + v25, v100);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "### Failed to create NAN Agent", v61, 2u);
    }

    v62 = v100;
    v63 = v98;
    v98(v58, v100);
    sub_100002A00(v112);
    v63(a7 + v25, v62);

    sub_100002A00((a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_user));

    type metadata accessor for NANAgent(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v88 = a2;
  *(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_nanAgent) = v38;
  swift_unknownObjectRetain_n();
  UUID.init()();
  v40 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID;
  v41 = v91;
  v42 = v92;
  (*(v91 + 32))(a7 + OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID, v39, v92);
  v104 = 0;
  v105 = 0;
  nw_agent_get_uuid();
  UUID.init(uuid:)();
  swift_beginAccess();
  v43 = *(v41 + 40);
  v90 = v40;
  v43(a7 + v40, v39, v42);
  swift_endAccess();
  v44 = a7 + v25;
  v45 = v93;
  v46 = v100;
  v96(v93, v44, v100);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  v85 = v48;
  v49 = os_log_type_enabled(v47, v48);
  v87 = v38;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    aBlock = v83;
    *v50 = 136315138;
    v84 = *(v41 + 16);
    v51 = v41;
    v84(v39, &v90[a7], v42);
    sub_1003FC98C(&qword_100597520, &protocol conformance descriptor for UUID);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = a4;
    v55 = v54;
    (*(v41 + 8))(v39, v42);
    v56 = sub_100002320(v52, v55, &aBlock);
    a4 = v53;

    *(v50 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v47, v85, "### Agent UUID:%s", v50, 0xCu);
    sub_100002A00(v83);

    v57 = v100;
    (v98)(v93);
    v84(v39, &v90[a7], v42);
  }

  else
  {

    v57 = v46;
    v98(v45, v46);
    v51 = v41;
    (*(v41 + 16))(v39, &v90[a7], v42);
  }

  sub_1003FAB80(v102, v88, v99, a4, v39);
  v65 = v64;

  v66 = (*(v51 + 8))(v39, v42);
  if ((v65 & 1) == 0)
  {
    v72 = v89;
    v73 = v57;
    v96(v89, a7 + v94, v57);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    v76 = os_log_type_enabled(v74, v75);
    v77 = v101;
    if (v76)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      v79 = "### Failed to set up agent policy, not creating agent";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v74, v75, v79, v78, 2u);

      swift_unknownObjectRelease_n();

LABEL_21:
      v98(v72, v73);
      sub_100002A00(v112);

      return 0;
    }

LABEL_20:

    swift_unknownObjectRelease_n();
    goto LABEL_21;
  }

  if ((sub_1003FC670(v66) & 1) == 0)
  {
    v73 = v57;
    v80 = v86;
    v96(v86, a7 + v94, v57);
    v72 = v80;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    v81 = os_log_type_enabled(v74, v75);
    v77 = v101;
    if (v81)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      v79 = "### Failed to set up agent interface, not creating agent";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  sub_1003F4CBC();
  sub_1003F6870();
  sub_1003F7DB4();
  nw_agent_set_resolve_flags();
  v110 = NANBitmap.Channel.operatingClass.getter;
  v111 = 0;
  aBlock = _NSConcreteStackBlock;
  v107 = 1107296256;
  v108 = sub_1003F8BF0;
  v109 = &unk_100579D60;
  v67 = _Block_copy(&aBlock);
  v110 = NANBitmap.Channel.operatingClass.getter;
  v111 = 0;
  aBlock = _NSConcreteStackBlock;
  v107 = 1107296256;
  v108 = sub_1000991C0;
  v109 = &unk_100579D88;
  v68 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  nw_agent_set_assert_handlers();
  _Block_release(v68);
  _Block_release(v67);
  swift_unknownObjectRelease();
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "### Changing agent state to active", v71, 2u);
  }

  nw_agent_change_state();
  swift_unknownObjectRelease_n();

  sub_100002A00(v112);
  return a7;
}

void sub_1003FAB80(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v224 = a3;
  v225 = a4;
  v222 = a1;
  v223 = a2;
  v217 = type metadata accessor for UUID();
  v206 = *(v217 - 8);
  __chkstk_darwin();
  v8 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v213 = &v193 - v9;
  __chkstk_darwin();
  v218 = &v193 - v10;
  __chkstk_darwin();
  v226 = (&v193 - v11);
  __chkstk_darwin();
  v13 = &v193 - v12;
  __chkstk_darwin();
  v15 = &v193 - v14;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v221 = (&v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v18 = (&v193 - v17);
  __chkstk_darwin();
  v20 = &v193 - v19;
  v21 = [objc_allocWithZone(NEPolicySession) init];
  v22 = *&v5[OBJC_IVAR____TtC12wifip2pdCore8NANAgent_policySession];
  *&v5[OBJC_IVAR____TtC12wifip2pdCore8NANAgent_policySession] = v21;
  v23 = v21;

  if (v23)
  {
    v219 = v5;
    v212 = v13;
    v208 = v8;
    v24 = objc_opt_self();
    v220 = a5;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v26 = [v24 netAgentUUID:isa];

    v27 = String._bridgeToObjectiveC()();
    v28 = [objc_opt_self() routeRuleWithAction:2 forInterfaceName:v27];

    if (!v28)
    {

      swift_arrayDestroy();
      return;
    }

    v214 = v26;
    v193 = 0;
    v215 = v23;
    v216 = sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
    v29 = swift_allocObject();
    v199 = xmmword_1004B1170;
    *(v29 + 16) = xmmword_1004B1170;
    *(v29 + 32) = v28;
    sub_100018AB4(0, &qword_100599FB0, NEPolicyRouteRule_ptr);
    v198 = v28;
    v30 = Array._bridgeToObjectiveC()().super.isa;

    v210 = v24;
    v197 = [v24 routeRules:v30];

    v31 = *(v206 + 56);
    (v31)(v20, 1, 1, v217);
    v200 = sub_100474CEC(&off_100572A68);
    sub_10008378C(&unk_100572A88);
    v209 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_logger;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "### Calling machOUUIDs", v34, 2u);
    }

    v35 = [objc_opt_self() defaultWorkspace];
    if (!v35)
    {
      __break(1u);
      goto LABEL_86;
    }

    v36 = v35;
    v37 = v15;
    v38 = Set._bridgeToObjectiveC()().super.isa;
    v227 = 0;
    v39 = [v36 machOUUIDsForBundleIdentifiers:v38 error:&v227];

    v40 = v227;
    v201 = v20;
    if (v39)
    {
      sub_10005DC58(&unk_100599FC0, &qword_1004B3278);
      v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v40;

      if (*(v41 + 16))
      {
        v43 = sub_1000102E8(0xD000000000000018, 0x80000001004BE1F0);
        v44 = v210;
        if (v45)
        {
          v46 = *(*(v41 + 56) + 8 * v43);
          swift_bridgeObjectRetain_n();

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v207 = swift_slowAlloc();
            v227 = v207;
            *v49 = 136315138;
            sub_1003FC98C(&unk_10058BB00, &protocol conformance descriptor for UUID);
            v50 = v217;
            v51 = Set.description.getter();
            *&v211 = v31;
            v52 = v37;
            v53 = v48;
            v55 = sub_100002320(v51, v54, &v227);
            v56 = v50;

            *(v49 + 4) = v55;
            v44 = v210;
            v57 = v53;
            v37 = v52;
            v31 = v211;
            _os_log_impl(&_mh_execute_header, v47, v57, "### Got mach-O UUID %s", v49, 0xCu);
            sub_100002A00(v207);
          }

          else
          {

            v56 = v217;
          }

          sub_1003F2FBC(v46, v18);

          v67 = v206;
          if ((*(v206 + 48))(v18, 1, v56) != 1)
          {
LABEL_76:
            v182 = *(v67 + 4);
            *&v211 = v67 + 32;
            v207 = v182;
            (v182)(v37, v18, v56);
            v65 = v212;
            (*(v67 + 2))(v212, v37, v56);
            v18 = Logger.logObject.getter();
            v183 = static os_log_type_t.info.getter();
            if (!os_log_type_enabled(v18, v183))
            {
              goto LABEL_79;
            }

            v184 = swift_slowAlloc();
            *&v205 = swift_slowAlloc();
            v227 = v205;
            *v184 = 136315138;
            sub_1003FC98C(&qword_100597520, &protocol conformance descriptor for UUID);
            v185 = dispatch thunk of CustomStringConvertible.description.getter();
            v186 = v56;
            v188 = v187;
            v189 = v65;
            v190 = v186;
            (*(v67 + 1))(v189, v186);
            v191 = sub_100002320(v185, v188, &v227);

            *(v184 + 4) = v191;
            _os_log_impl(&_mh_execute_header, v18, v183, "### Got mach-O UUID %s", v184, 0xCu);
            sub_100002A00(v205);

            v44 = v210;

            v192 = v201;
            sub_100016290(v201, &qword_10058F4D0, &qword_100491AB0);
            v56 = v190;
LABEL_80:
            v71 = v226;
            v72 = v214;
            (v207)(v192, v37, v56);
            (v31)(v192, 0, 1, v56);
            v31 = v206;
            v65 = v213;
LABEL_27:
            v73 = swift_allocObject();
            v211 = xmmword_1004B30A0;
            *(v73 + 16) = xmmword_1004B30A0;
            v74 = objc_opt_self();
            v75 = [v74 allInterfaces];
            if (v75)
            {
              *(v73 + 32) = v75;
              v76 = String._bridgeToObjectiveC()();
              v77 = String._bridgeToObjectiveC()();
              v212 = v74;
              v78 = [v74 requiredAgentDomain:v76 agentType:v77];

              if (v78)
              {
                *(v73 + 40) = v78;
                v79 = objc_allocWithZone(NEPolicy);
                v80 = sub_100018AB4(0, &qword_100599FB8, NEPolicyCondition_ptr);
                v81 = v72;
                v214 = v80;
                v82 = Array._bridgeToObjectiveC()().super.isa;

                v83 = [v79 initWithOrder:1 result:v81 conditions:v82];

                v195 = v83;
                [v215 addPolicy:v83];
                v84 = v221;
                sub_1003FC91C(v201, v221);
                v85 = v217;
                v86 = (*(v31 + 48))(v84, 1, v217);
                v87 = &unk_100588000;
                v196 = v81;
                if (v86 == 1)
                {
                  sub_100016290(v84, &qword_10058F4D0, &qword_100491AB0);
                }

                else
                {
                  (*(v31 + 32))(v71, v84, v85);
                  v88 = v218;
                  (*(v31 + 16))(v218, v71, v85);
                  v89 = Logger.logObject.getter();
                  v90 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v89, v90))
                  {
                    v91 = swift_slowAlloc();
                    v92 = swift_slowAlloc();
                    v227 = v92;
                    *v91 = 136315138;
                    sub_1003FC98C(&qword_100597520, &protocol conformance descriptor for UUID);
                    v93 = dispatch thunk of CustomStringConvertible.description.getter();
                    v95 = v94;
                    v96 = *(v31 + 8);
                    v96(v88, v85);
                    v97 = sub_100002320(v93, v95, &v227);
                    v44 = v210;

                    *(v91 + 4) = v97;
                    _os_log_impl(&_mh_execute_header, v89, v90, "### Setting policy for %s", v91, 0xCu);
                    sub_100002A00(v92);
                    v65 = v213;

                    v87 = &unk_100588000;
                  }

                  else
                  {

                    v96 = *(v31 + 8);
                    v96(v88, v85);
                  }

                  v98 = UUID._bridgeToObjectiveC()().super.isa;
                  v99 = [v44 v87[502]];

                  v100 = swift_allocObject();
                  *(v100 + 16) = v199;
                  v101 = UUID._bridgeToObjectiveC()().super.isa;
                  v102 = [v212 effectiveApplication:v101];

                  if (!v102)
                  {
                    goto LABEL_93;
                  }

                  *(v100 + 32) = v102;
                  v103 = objc_allocWithZone(NEPolicy);
                  v104 = Array._bridgeToObjectiveC()().super.isa;

                  v105 = [v103 initWithOrder:2 result:v99 conditions:v104];

                  [v215 addPolicy:v105];
                  v106 = v206;
                  v96(v71, v217);
                  v31 = v106;
                }

                v107 = UUID._bridgeToObjectiveC()().super.isa;
                v108 = [v44 v87[502]];

                v109 = swift_allocObject();
                *(v109 + 16) = v211;
                v110 = v212;
                v111 = [v212 allInterfaces];
                if (v111)
                {
                  *(v109 + 32) = v111;
                  v112 = String._bridgeToObjectiveC()();
                  v113 = [v110 accountIdentifier:v112];

                  if (v113)
                  {
                    *(v109 + 40) = v113;
                    v114 = objc_allocWithZone(NEPolicy);
                    v115 = Array._bridgeToObjectiveC()().super.isa;

                    v116 = [v114 initWithOrder:3 result:v108 conditions:v115];

                    v194 = v116;
                    [v215 addPolicy:v116];
                    v117 = objc_opt_self();
                    v118 = 0;
                    v226 = (v31 + 8);
                    v119 = 4;
                    *&v120 = 136315394;
                    v205 = v120;
                    v18 = v217;
                    v204 = v117;
                    v218 = (v31 + 16);
                    do
                    {
                      v121 = &off_1005729C8 + 2 * v118;
                      v44 = v121[4];
                      v122 = v121[5];

                      v123 = [v117 defaultManager];
                      v124 = String._bridgeToObjectiveC()();
                      v125 = [v123 fileExistsAtPath:v124];

                      if (v125)
                      {
                        v221 = v123;
                        v126 = objc_opt_self();
                        v220 = v122;
                        v127 = String._bridgeToObjectiveC()();
                        v128 = [v126 copyUUIDsForExecutable:v127];

                        if (v128)
                        {
                          v129 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                          v130 = sub_1003F46AC(v129);

                          v67 = v221;
                          if (v130)
                          {

                            v202 = v130;
                          }

                          else
                          {
                            v202 = 0;
                            v130 = _swiftEmptyArrayStorage;
                          }

                          v37 = v219;
                        }

                        else
                        {
                          v202 = 0;
                          v130 = _swiftEmptyArrayStorage;
                          v37 = v219;
                          v67 = v221;
                        }

                        v203 = v118;
                        v225 = v130[2];
                        if (v225)
                        {
                          v56 = 0;
                          v224 = v130 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
                          v207 = v44;
                          v223 = v130;
                          do
                          {
                            if (v56 >= v130[2])
                            {
                              __break(1u);
                              goto LABEL_76;
                            }

                            v131 = *(v31 + 16);
                            v131(v65, &v224[*(v31 + 72) * v56], v18);
                            if (qword_1005943E8 != -1)
                            {
                              swift_once();
                            }

                            sub_100037644(v18, qword_10059BAD0);
                            if (static UUID.== infix(_:_:)())
                            {
                              (*v226)(v65, v18);
                            }

                            else
                            {
                              v132 = v65;
                              v133 = v208;
                              v131(v208, v132, v18);
                              v134 = v220;

                              v135 = Logger.logObject.getter();
                              v44 = static os_log_type_t.info.getter();

                              v136 = os_log_type_enabled(v135, v44);
                              LODWORD(v222) = v119;
                              if (v136)
                              {
                                v137 = v18;
                                v138 = swift_slowAlloc();
                                v227 = swift_slowAlloc();
                                *v138 = v205;
                                *(v138 + 4) = sub_100002320(v207, v134, &v227);
                                *(v138 + 12) = 2080;
                                sub_1003FC98C(&qword_100597520, &protocol conformance descriptor for UUID);
                                v139 = dispatch thunk of CustomStringConvertible.description.getter();
                                v141 = v140;
                                v67 = *v226;
                                v142 = v137;
                                v31 = v206;
                                (*v226)(v133, v142);
                                v143 = sub_100002320(v139, v141, &v227);

                                *(v138 + 14) = v143;
                                _os_log_impl(&_mh_execute_header, v135, v44, "### Setting Policy for %s uuid %s", v138, 0x16u);
                                swift_arrayDestroy();
                              }

                              else
                              {

                                v67 = *v226;
                                (*v226)(v133, v18);
                              }

                              v37 = [v210 skipWithOrder:0];
                              v144 = swift_allocObject();
                              *(v144 + 16) = v211;
                              v145 = v212;
                              v146 = [v212 allInterfaces];
                              v65 = v213;
                              if (!v146)
                              {
                                goto LABEL_84;
                              }

                              *(v144 + 32) = v146;
                              v147 = UUID._bridgeToObjectiveC()().super.isa;
                              v148 = [v145 effectiveApplication:v147];

                              if (!v148)
                              {
                                goto LABEL_83;
                              }

                              *(v144 + 40) = v148;
                              v149 = objc_allocWithZone(NEPolicy);
                              v150 = Array._bridgeToObjectiveC()().super.isa;

                              v151 = v222;
                              v152 = [v149 initWithOrder:v222 result:v37 conditions:v150];

                              [v215 addPolicy:v152];
                              v18 = v217;
                              v67(v65, v217);
                              v153 = __CFADD__(v151, 1);
                              v119 = (v151 + 1);
                              if (v153)
                              {
                                __break(1u);
LABEL_79:

                                (*(v67 + 1))(v65, v56);
                                v192 = v201;
                                sub_100016290(v201, &qword_10058F4D0, &qword_100491AB0);
                                goto LABEL_80;
                              }

                              v37 = v219;
                              v67 = v221;
                            }

                            ++v56;
                            v130 = v223;
                          }

                          while (v225 != v56);
                        }

                        v117 = v204;
                        v118 = v203;
                      }

                      else
                      {

                        v117 = v204;
                      }

                      ++v118;
                    }

                    while (v118 != 8);
                    v154 = v210;
                    v155 = [v210 skipWithOrder:0];
                    v156 = swift_allocObject();
                    *(v156 + 16) = v211;
                    v157 = v212;
                    v158 = [v212 allInterfaces];
                    if (v158)
                    {
                      *(v156 + 32) = v158;
                      v159 = [v157 usesModernNetworkAPI];
                      if (v159)
                      {
                        *(v156 + 40) = v159;
                        v160 = objc_allocWithZone(NEPolicy);
                        v161 = Array._bridgeToObjectiveC()().super.isa;

                        v162 = [v160 initWithOrder:v119 result:v155 conditions:v161];

                        [v215 addPolicy:v162];
                        v163 = (v119 + 1);
                        if (v119 == -1)
                        {
                          __break(1u);
                        }

                        else
                        {
                          if (!os_variant_allows_internal_security_policies())
                          {
                            goto LABEL_73;
                          }

                          v164 = Logger.logObject.getter();
                          v165 = static os_log_type_t.default.getter();
                          if (os_log_type_enabled(v164, v165))
                          {
                            v166 = swift_slowAlloc();
                            *v166 = 0;
                            _os_log_impl(&_mh_execute_header, v164, v165, "### Setting ICMPV6 allow policy", v166, 2u);
                          }

                          v167 = [v154 skipWithOrder:0];
                          v168 = swift_allocObject();
                          *(v168 + 16) = v211;
                          v169 = [v157 allInterfaces];
                          if (!v169)
                          {
                            goto LABEL_94;
                          }

                          *(v168 + 32) = v169;
                          v170 = [v157 ipProtocol:58];
                          if (!v170)
                          {
LABEL_95:
                            __break(1u);
                            return;
                          }

                          *(v168 + 40) = v170;
                          v171 = objc_allocWithZone(NEPolicy);
                          v172 = Array._bridgeToObjectiveC()().super.isa;

                          v173 = [v171 initWithOrder:(v119 + 1) result:v167 conditions:v172];

                          [v215 addPolicy:v173];
                          v153 = __CFADD__(v163, 1);
                          v163 = (v119 + 2);
                          if (!v153)
                          {
LABEL_73:
                            v174 = swift_allocObject();
                            *(v174 + 16) = v199;
                            v175 = [v157 allInterfaces];
                            if (v175)
                            {
                              v176 = v175;
                              swift_arrayDestroy();

                              *(v174 + 32) = v176;
                              v177 = objc_allocWithZone(NEPolicy);
                              v178 = v197;
                              v179 = Array._bridgeToObjectiveC()().super.isa;

                              v180 = [v177 initWithOrder:v163 result:v178 conditions:v179];

                              v181 = v215;
                              [v215 addPolicy:v180];
                              [v181 setPriority:300];
                              [v181 apply];

                              sub_100016290(v201, &qword_10058F4D0, &qword_100491AB0);
                              return;
                            }

                            goto LABEL_92;
                          }
                        }

                        __break(1u);
LABEL_83:
                        __break(1u);
LABEL_84:
                        __break(1u);
                      }

LABEL_91:
                      __break(1u);
LABEL_92:
                      __break(1u);
LABEL_93:
                      __break(1u);
LABEL_94:
                      __break(1u);
                      goto LABEL_95;
                    }

LABEL_90:
                    __break(1u);
                    goto LABEL_91;
                  }

LABEL_89:
                  __break(1u);
                  goto LABEL_90;
                }

LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          sub_100016290(v18, &qword_10058F4D0, &qword_100491AB0);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&_mh_execute_header, v68, v69, "### Failed to get mach-O UUID first for companionSetup", v70, 2u);
          }
        }

        else
        {
        }
      }

      else
      {

        v44 = v210;
      }

      v31 = v206;
      v65 = v213;
    }

    else
    {
      v61 = v227;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v193 = 0;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      v64 = os_log_type_enabled(v62, v63);
      v44 = v210;
      v31 = v206;
      v65 = v213;
      if (v64)
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "### Failed to get mach-O UUID", v66, 2u);
      }
    }

    v71 = v226;
    v72 = v214;
    goto LABEL_27;
  }

  swift_arrayDestroy();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "### Failed to create policy session, not creating agent", v60, 2u);
  }
}

uint64_t sub_1003FC670(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "### Creating agent virtual interface", v3, 2u);
  }

  if (!nw_interface_create_with_name())
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "### nw_interface_create_with_name failed", v12, 2u);
    }

    return 0;
  }

  v4 = nw_agent_add_to_interface();
  v5 = Logger.logObject.getter();
  if ((v4 & 1) == 0)
  {
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, v13, "### nw_agent_add_to_interface failed", v14, 2u);
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100002320(812540270, 0xE400000000000000, &v15);
    _os_log_impl(&_mh_execute_header, v5, v6, "### Added virtual interface %s to agent", v7, 0xCu);
    sub_100002A00(v8);
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1003FC91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FC98C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for UUID();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003FC9E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

double sub_1003FCA7C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = [v3 hash];
  v5 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_resolveClients;
  swift_beginAccess();
  sub_100420DE4(v4);
  swift_endAccess();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = *(*(v2 + v5) + 16);

    *(v8 + 12) = 2048;
    *(v8 + 14) = [v3 hash];

    _os_log_impl(&_mh_execute_header, v6, v7, "##### resolverDone Stop resolve request from %ld %ld", v8, 0x16u);
  }

  else
  {
  }

  return result;
}

unint64_t sub_1003FCC48()
{
  result = qword_100598970;
  if (!qword_100598970)
  {
    v3 = sub_10005DD04(&qword_100598968, &qword_1004B2870);
    result = swift_getWitnessTable(&protocol conformance descriptor for Range<A>, v3, v0, v1);
    atomic_store(result, &qword_100598970);
  }

  return result;
}

uint64_t sub_1003FCCF0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1003FCE40()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1003325B4();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_10044BF80(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_10044BF80(result);
      }
    }

    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

Class sub_1003FCED0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FCFB4(v3);
  v4.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);

  return v4.super.isa;
}

uint64_t sub_1003FCFB4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059BBA0;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_1003FD03C(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UUID();
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  sub_1003FD0D0(v5);
}

uint64_t sub_1003FD0D0(uint64_t a1)
{
  v3 = qword_10059BBA0;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_1003FD160()
{
  sub_100401394();

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

void sub_1003FD1C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = a1;
  sub_1003FD230(v4, v6);
}

uint64_t sub_1003FD230(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_10059BBA8);
  *v3 = a1;
  v3[1] = a2;
}

char *sub_1003FD40C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[qword_10059BBA8];
  v31 = 0xD000000000000012;
  v32 = 0x80000001004B4EC0;
  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 1279547201;
  v12._object = 0xE400000000000000;
  String.append(_:)(v12);

  v13 = v32;
  *v10 = v31;
  v10[1] = v13;
  v2[qword_10059A008] = 1;
  v2[qword_10059A010] = 0;
  v2[qword_10059A018] = 0;
  v2[qword_10059A020] = 0;
  Logger.init(subsystem:category:)();
  v14 = qword_10059A028;
  v15 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v16 = objc_allocWithZone(type metadata accessor for XPCSession(0));
  *&v2[v14] = sub_100301588(0xD000000000000012, 0x80000001004C1740, v15, 0, 0);
  *&v2[qword_10059A030] = &_swiftEmptyDictionarySingleton;
  v17 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v18 = [objc_allocWithZone(NWNetworkAgentRegistration) initWithNetworkAgentClass:swift_getObjCClassFromMetadata() queue:v17];
  if (v18)
  {
    *&v3[qword_10059A000] = v18;
    v19 = v18;
    UUID.init()();
    (*(v7 + 32))(&v3[qword_10059BBA0], v9, v6);
    *&v3[qword_10059BBB8] = a1;
    *&v3[qword_10059BBC0] = v29;
    swift_unownedRetain();
    swift_unownedRetain();
    v30.receiver = v3;
    v30.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v30, "init");
    v21 = qword_10059A000;
    if ([*&v20[qword_10059A000] registerNetworkAgent:v20])
    {
      v22 = *&v20[v21];

      v23 = String._bridgeToObjectiveC()();

      v24 = [v22 addNetworkAgentToInterfaceNamed:v23];

      if (v24)
      {
        return v20;
      }
    }

    else
    {
    }
  }

  else
  {

    v25 = qword_10059BBB0;
    v26 = type metadata accessor for Logger();
    (*(*(v26 - 8) + 8))(&v3[v25], v26);

    swift_deallocPartialClassInstance();
  }

  return 0;
}

id sub_1003FD88C()
{
  AppleDevice.machServiceName.getter();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

id sub_1003FD8DC()
{
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

id sub_1003FD928(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = variable initialization expression of NANBitmap.Band.Iterator.currentIndex();
  sub_1000124C8(v5, v7);

  return v8;
}

uint64_t sub_1003FD9B0(uint64_t a1)
{
  v2 = v1;
  v237 = swift_isaMask & *v2;
  v243 = type metadata accessor for DispatchWorkItemFlags();
  v242 = *(v243 - 8);
  __chkstk_darwin();
  v240 = &v212 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for DispatchQoS();
  v239 = *(v241 - 8);
  __chkstk_darwin();
  v238 = &v212 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for Logger();
  v235 = *(v236 - 8);
  __chkstk_darwin();
  v233 = v6;
  v234 = &v212 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v249 = *(v7 - 8);
  v250 = v7;
  __chkstk_darwin();
  v9 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  v232 = *(v247 - 8);
  __chkstk_darwin();
  v246 = &v212 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v248 = (&v212 - v11);
  __chkstk_darwin();
  v245 = &v212 - v12;
  sub_10005DC58(&qword_100595FC8, &unk_1004B01B8);
  __chkstk_darwin();
  v231 = (&v212 - v13);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v15 = &v212 - v14;
  v16 = type metadata accessor for UUID();
  v253 = *(v16 - 8);
  v254 = v16;
  v17 = *(v253 + 64);
  __chkstk_darwin();
  v18 = &v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v244 = &v212 - v19;
  __chkstk_darwin();
  v251 = &v212 - v20;
  __chkstk_darwin();
  v252 = &v212 - v21;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  isUniquelyReferenced_nonNull_native = &v212 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v27 = *v26;
  *isUniquelyReferenced_nonNull_native = *v26;
  (*(v23 + 104))(isUniquelyReferenced_nonNull_native, enum case for DispatchPredicate.onQueue(_:), v22);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(isUniquelyReferenced_nonNull_native, v22);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_107;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_113;
  }

  v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v257 = v32;
  AnyHashable.init<A>(_:)();
  v30 = v253;
  v33 = v254;
  if (!*(a1 + 16) || (v34 = sub_1003E0A38(aBlock), (v35 & 1) == 0))
  {
    sub_1003E9D8C(aBlock);
    (*(v30 + 56))(v15, 1, 1, v33);
    goto LABEL_12;
  }

  sub_100002B30(*(a1 + 56) + 32 * v34, v258);
  sub_1003E9D8C(aBlock);
  v36 = swift_dynamicCast();
  (*(v30 + 56))(v15, v36 ^ 1u, 1, v33);
  if ((*(v30 + 48))(v15, 1, v33) == 1)
  {
LABEL_12:
    sub_100016290(v15, &qword_10058F4D0, &qword_100491AB0);
LABEL_13:
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to assert because no UUID or path found", v50, 2u);
    }

    return 1;
  }

  v37 = v252;
  v230 = *(v30 + 32);
  v230();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v29 = [objc_opt_self() pathForClientID:isa];

  if (!v29)
  {
    (*(v30 + 8))(v37, v33);
    goto LABEL_13;
  }

  v228 = v30 + 32;
  v39 = [v29 parameters];
  if (!v39 || (v40 = v39, v41 = [v39 account], v40, !v41))
  {
    v229 = v29;
    (*(v30 + 16))(v18, v37, v33);
    v52 = Logger.logObject.getter();
    v53 = v30;
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v52, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      *v55 = 136315138;
      sub_1004014D0(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v60 = *(v53 + 8);
      v60(v18, v33);
      v61 = sub_100002320(v57, v59, aBlock);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v52, v54, "Ignoring assertion from %s because no account", v55, 0xCu);
      sub_100002A00(v56);

      v60(v252, v33);
    }

    else
    {

      v62 = *(v53 + 8);
      v62(v18, v33);
      v62(v37, v33);
    }

    return 1;
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45._countAndFlagsBits = 0x6C7070612E6D6F63;
  v45._object = 0xEA00000000002E65;
  v46 = v29;
  if (String.hasPrefix(_:)(v45))
  {
    String.count.getter();
    v47 = String.index(_:offsetBy:)();
  }

  else
  {
    v47 = 15;
  }

  sub_1001703A8(v47, v42, v44);

  static String._fromSubstring(_:)();

  v226 = String._bridgeToObjectiveC()();

  v63 = [v29 endpoint];
  if (v63)
  {
    v64 = v63;
    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (v65 && (v66 = v65, [v65 addressFamily] == 30))
    {
      v67 = [v66 address];
      v69 = v67[1];
      v68 = v67[2];
      v70 = objc_allocWithZone(WiFiMACAddress);
      v71 = v69;
      v29 = v46;
      v72 = v251;
      v73 = [v70 initWithLinkLocalIPv6Address:{v71, v68}];

      if (v73)
      {
LABEL_91:
        v154 = objc_allocWithZone(AWDLTrafficRegistrationConfiguration);
        v155 = v73;
        v156 = [v154 initWithUniqueIdentifier:v226 peerAddress:v155];
        v157 = v2 + qword_10059BBB0;
        v248 = *(v30 + 16);
        v249 = v30 + 16;
        v248(v72, v252, v254);
        v158 = v156;
        v159 = Logger.logObject.getter();
        v160 = static os_log_type_t.info.getter();

        LODWORD(v245) = v160;
        v161 = os_log_type_enabled(v159, v160);
        v229 = v29;
        v250 = v155;
        v246 = v158;
        v247 = v157;
        if (v161)
        {
          v162 = swift_slowAlloc();
          v163 = v254;
          v232 = v159;
          v164 = v162;
          v165 = v30;
          v30 = swift_slowAlloc();
          aBlock[0] = v30;
          *v164 = 136315650;
          sub_1004014D0(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v166 = dispatch thunk of CustomStringConvertible.description.getter();
          v168 = v167;
          (*(v165 + 8))(v72, v163);
          v169 = sub_100002320(v166, v168, aBlock);

          *(v164 + 4) = v169;
          *(v164 + 12) = 2080;
          v170 = [v158 uniqueIdentifier];
          v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v173 = v172;

          v174 = v171;
          v175 = v252;
          v176 = sub_100002320(v174, v173, aBlock);

          *(v164 + 14) = v176;
          *(v164 + 22) = 2080;
          v177 = WiFiMACAddress.wifiAddress.getter();
          v178 = WiFiAddress.description.getter(v177 & 0xFFFFFFFFFFFFLL);
          v180 = sub_100002320(v178, v179, aBlock);

          *(v164 + 24) = v180;
          v181 = v232;
          _os_log_impl(&_mh_execute_header, v232, v245, "%s starting traffic registration for %s to %s", v164, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v30 + 8))(v72, v254);
          v175 = v252;
        }

        v29 = qword_10059A030;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v256 = *(v2 + v29);
        v182 = v256;
        *(v2 + v29) = 0x8000000000000000;
        v184 = sub_10002A440(v175);
        v185 = v182[2];
        v186 = (v183 & 1) == 0;
        v187 = v185 + v186;
        if (__OFADD__(v185, v186))
        {
          goto LABEL_110;
        }

        v188 = v183;
        if (v182[3] >= v187)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10046E3BC();
            v182 = v256;
          }

LABEL_100:
          v30 = v254;
          isUniquelyReferenced_nonNull_native = v247;
          *(v2 + v29) = v182;
          if ((v188 & 1) == 0)
          {
            v191 = v244;
            v248(v244, v175, v30);
            sub_1002DDAE4(v184, v191, _swiftEmptyArrayStorage, v182);
          }

          v192 = (v182[7] + 8 * v184);
          v29 = v246;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_111;
          }

          goto LABEL_103;
        }

        sub_100314818(v187, isUniquelyReferenced_nonNull_native);
        v182 = v256;
        v189 = sub_10002A440(v175);
        if ((v188 & 1) == (v190 & 1))
        {
          v184 = v189;
          goto LABEL_100;
        }

LABEL_113:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  v74 = [v29 endpoint];
  if (!v74)
  {
LABEL_77:
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&_mh_execute_header, v130, v131, "Unknown endpoint information in assertion", v132, 2u);
    }

    else
    {
    }

    goto LABEL_105;
  }

  v75 = v74;
  objc_opt_self();
  v76 = swift_dynamicCastObjCClass();
  if (!v76)
  {

    goto LABEL_77;
  }

  v77 = v76;
  v213 = v75;
  v78 = [v76 hostname];
  isUniquelyReferenced_nonNull_native = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  v81._countAndFlagsBits = 0x6C61636F6C2ELL;
  v81._object = 0xE600000000000000;
  v82 = String.hasSuffix(_:)(v81);
  v225 = isUniquelyReferenced_nonNull_native;
  if (!v82)
  {

    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.error.getter();

    v135 = v80;
    if (os_log_type_enabled(v133, v134))
    {
      v136 = v29;
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      aBlock[0] = v138;
      *v137 = 136315138;
      v139 = v30;
      v140 = sub_100002320(v225, v135, aBlock);

      *(v137 + 4) = v140;
      v141 = "No local suffix on hostname %s";
LABEL_89:
      _os_log_impl(&_mh_execute_header, v133, v134, v141, v137, 0xCu);
      sub_100002A00(v138);

      (*(v139 + 8))(v252, v254);
      return 1;
    }

    goto LABEL_104;
  }

  v219 = v77;
  v83 = *(v2 + qword_10059BBB8);
  swift_unownedRetainStrong();
  v84 = *(*v83 + 448);
  swift_beginAccess();
  v85 = *(v83 + v84);

  v86 = *(v85 + 64);
  v215 = v85 + 64;
  v87 = 1 << *(v85 + 32);
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  else
  {
    v88 = -1;
  }

  v218 = v88 & v86;
  v214 = (v87 + 63) >> 6;
  v89 = HIBYTE(v80) & 0xF;
  v224 = v80;
  if ((v80 & 0x2000000000000000) == 0)
  {
    v89 = isUniquelyReferenced_nonNull_native;
  }

  v90 = 7;
  if (((v80 >> 60) & ((isUniquelyReferenced_nonNull_native & 0x800000000000000) == 0)) != 0)
  {
    v90 = 11;
  }

  v222 = v90 | (v89 << 16);
  v216 = v85;

  v91 = 0;
  v72 = v251;
  v229 = v29;
  v223 = v9;
LABEL_40:
  v92 = v218;
  if (!v218)
  {
    while (1)
    {
      v93 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_108;
      }

      if (v93 >= v214)
      {
        break;
      }

      v92 = *(v215 + 8 * v93);
      ++v91;
      if (v92)
      {
        goto LABEL_45;
      }
    }

    v142 = 1;
    v143 = v231;
LABEL_86:
    v144 = v232;
    v145 = v247;
    (v232[7].isa)(v143, v142, 1, v247);

    v146 = (v144[6].isa)(v143, 1, v145);
    v147 = v225;
    if (v146 == 1)
    {
      sub_100016290(v143, &qword_100595FC8, &unk_1004B01B8);
      v148 = v224;

      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v133, v134))
      {
        v136 = v29;
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        aBlock[0] = v138;
        *v137 = 136315138;
        v149 = sub_100002320(v147, v148, aBlock);
        v139 = v30;
        v150 = v149;

        *(v137 + 4) = v150;
        v141 = "No peer with specified hostname %s";
        goto LABEL_89;
      }

LABEL_104:

LABEL_105:
      (*(v30 + 8))(v252, v254);
      return 1;
    }

    v151 = *(v143 + 1);
    v152 = *(v145 + 48);
    v153 = *v143;
    sub_100047390(v143 + v152, type metadata accessor for AWDLPeer);
    v73 = WiFiAddress.apiAddress.getter(v153 | (v151 << 16));

    goto LABEL_91;
  }

  v93 = v91;
LABEL_45:
  v218 = (v92 - 1) & v92;
  v217 = v93;
  v94 = __clz(__rbit64(v92)) | (v93 << 6);
  v95 = *(v216 + 56);
  v96 = *(v216 + 48) + 6 * v94;
  v97 = *(v96 + 4);
  v98 = (type metadata accessor for AWDLPeer(0) - 8);
  v99 = v95 + *(*v98 + 72) * v94;
  isUniquelyReferenced_nonNull_native = v247;
  LODWORD(v95) = *v96;
  v100 = v245;
  sub_100401688(v99, &v245[*(v247 + 48)], type metadata accessor for AWDLPeer);
  *v100 = v95;
  *(v100 + 4) = v97;
  v101 = v248;
  sub_100307838(v100, v248);
  v102 = v101;
  v103 = v246;
  sub_100401618(v102, v246);
  v104 = &v103[*(isUniquelyReferenced_nonNull_native + 48)];
  v105 = *(v104 + v98[22]);

  sub_100047390(v104, type metadata accessor for AWDLPeer);
  v106 = *(v105 + 56);
  v221 = v105 + 56;
  v107 = 1 << *(v105 + 32);
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  else
  {
    v108 = -1;
  }

  v30 = v108 & v106;
  v220 = (v107 + 63) >> 6;
  v227 = v105;

  v29 = 0;
  while (v30)
  {
LABEL_55:
    sub_100401688(*(v227 + 48) + *(v249 + 72) * (__clz(__rbit64(v30)) | (v29 << 6)), v9, type metadata accessor for AWDLPeer.AdvertisedService);
    isUniquelyReferenced_nonNull_native = &v9[v250[7]];
    v110 = (isUniquelyReferenced_nonNull_native + *(type metadata accessor for DNSRecords.SRV(0) + 24));
    v112 = *v110;
    v111 = v110[1];
    if (__OFSUB__(0, String.count.getter()))
    {
      goto LABEL_109;
    }

    v30 &= v30 - 1;
    String.index(_:offsetBy:)();
    v113 = String.subscript.getter();
    v117 = v116;
    if ((v111 & 0x2000000000000000) != 0)
    {
      v118 = HIBYTE(v111) & 0xF;
    }

    else
    {
      v118 = v112 & 0xFFFFFFFFFFFFLL;
    }

    if (v112 == v115 && v111 == v117 && v113 >> 16 == 0 && v118 == v114 >> 16)
    {

      v9 = v223;
LABEL_72:
      LOWORD(aBlock[0]) = NWEndpoint.Port.rawValue.getter();
      sub_100119DCC();
      v123 = BinaryInteger.description.getter();
      v125 = v124;
      isUniquelyReferenced_nonNull_native = [v219 port];
      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v127;

      if (v123 == v126 && v125 == v128)
      {

        sub_100047390(v9, type metadata accessor for AWDLPeer.AdvertisedService);
        v72 = v251;
LABEL_85:

        v143 = v231;
        sub_100307838(v248, v231);
        v142 = 0;
        v30 = v253;
        v29 = v229;
        goto LABEL_86;
      }

      v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100047390(v9, type metadata accessor for AWDLPeer.AdvertisedService);
      v72 = v251;
      if (v129)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v122 = _stringCompareInternal(_:_:_:_:expecting:)();

      v9 = v223;
      if (v122)
      {
        goto LABEL_72;
      }

      sub_100047390(v223, type metadata accessor for AWDLPeer.AdvertisedService);
      v72 = v251;
    }
  }

  while (1)
  {
    v109 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v109 >= v220)
    {

      sub_100016290(v248, &unk_100595FA0, &unk_1004B0190);
      v91 = v217;
      v30 = v253;
      v29 = v229;
      goto LABEL_40;
    }

    v30 = *(v221 + 8 * v109);
    ++v29;
    if (v30)
    {
      v29 = v109;
      goto LABEL_55;
    }
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_103:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v246 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v251 = *(v2 + qword_10059BBC0);
  swift_unownedRetainStrong();
  v245 = *(v2 + qword_10059A028);
  v193 = v235;
  v194 = *(v235 + 16);
  v232 = v29;
  v195 = v234;
  v196 = v236;
  v194(v234, isUniquelyReferenced_nonNull_native, v236);
  v197 = v244;
  v248(v244, v252, v30);
  v198 = (*(v193 + 80) + 80) & ~*(v193 + 80);
  v199 = (v233 + *(v253 + 80) + v198) & ~*(v253 + 80);
  v200 = swift_allocObject();
  v201 = v237;
  *(v200 + 16) = *(v237 + 80);
  *(v200 + 24) = *(v201 + 88);
  *(v200 + 32) = *(v201 + 96);
  v202 = v251;
  *(v200 + 48) = *(v201 + 112);
  *(v200 + 56) = v202;
  *(v200 + 64) = v29;
  v203 = v245;
  *(v200 + 72) = v245;
  (*(v193 + 32))(v200 + v198, v195, v196);
  (v230)(v200 + v199, v197, v30);
  v204 = v250;
  *(v200 + ((v17 + v199 + 7) & 0xFFFFFFFFFFFFFFF8)) = v250;
  aBlock[4] = sub_1004016F0;
  aBlock[5] = v200;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_10057A0C0;
  v205 = _Block_copy(aBlock);
  v206 = v232;
  v207 = v246;

  v208 = v203;
  v209 = v238;
  static DispatchQoS.unspecified.getter();
  v256 = _swiftEmptyArrayStorage;
  sub_1004014D0(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  v210 = v240;
  v211 = v243;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();

  _Block_release(v205);

  (*(v242 + 8))(v210, v211);
  (*(v239 + 8))(v209, v241);
  (*(v253 + 8))(v252, v254);

  return 1;
}

double sub_1003FF684(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v29 = a6;
  v30 = a3;
  v28 = a2;
  v31 = a1;
  v8 = type metadata accessor for UUID();
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin();
  v16 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a4, v12, v15);
  (*(v9 + 16))(v11, a5, v8);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v13 + 32))(v20 + v17, v16, v12);
  (*(v9 + 32))(v20 + v18, v11, v27);
  v22 = v28;
  v21 = v29;
  *(v20 + v19) = v28;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v23 = v21;
  v24 = v22;
  sub_1002D4A9C(v24, v30, sub_100401810, v20);

  return result;
}

void sub_1003FF8D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v10 + 16))(v13, a3, v9, v11);
    swift_errorRetain();
    v14 = a4;
    v15 = a5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v18 = 136315906;
      sub_1004014D0(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      HIDWORD(v34) = v17;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v10 + 8))(v13, v9);
      v22 = sub_100002320(v19, v21, &v37);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = [v14 uniqueIdentifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_100002320(v24, v26, &v37);

      *(v18 + 14) = v27;
      *(v18 + 22) = 2080;
      v28 = WiFiMACAddress.wifiAddress.getter();
      v29 = WiFiAddress.description.getter(v28 & 0xFFFFFFFFFFFFLL);
      v31 = sub_100002320(v29, v30, &v37);

      *(v18 + 24) = v31;
      *(v18 + 32) = 2112;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 34) = v32;
      v33 = v35;
      *v35 = v32;
      _os_log_impl(&_mh_execute_header, v16, BYTE4(v34), "%s failed to start %s to %s because %@", v18, 0x2Au);
      sub_100016290(v33, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }
  }
}

uint64_t sub_1003FFC30(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_1003FD9B0(v4);

  return 1;
}

void sub_1003FFCB0(uint64_t a1)
{
  v2 = v1;
  v117 = swift_isaMask & *v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v122 = *(v4 - 8);
  v123 = v4;
  __chkstk_darwin();
  v120 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for DispatchQoS();
  v119 = *(v121 - 8);
  __chkstk_darwin();
  v118 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Logger();
  v115 = *(v116 - 8);
  __chkstk_darwin();
  v113 = v7;
  v114 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v9 = &v100 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 1);
  v125 = v10;
  v126 = v11;
  v12 = *(v11 + 8);
  __chkstk_darwin();
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v100 - v14;
  __chkstk_darwin();
  v111 = &v100 - v15;
  __chkstk_darwin();
  v17 = &v100 - v16;
  __chkstk_darwin();
  v124 = &v100 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v24 = *v23;
  *v22 = *v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v27 = *(v20 + 8);
  v26 = (v20 + 8);
  v27(v22, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  aBlock[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  aBlock[7] = v28;
  AnyHashable.init<A>(_:)();
  v26 = v125;
  v29 = v126;
  if (*(a1 + 16) && (v30 = sub_1003E0A38(aBlock), (v31 & 1) != 0))
  {
    sub_100002B30(*(a1 + 56) + 32 * v30, &v128);
    sub_1003E9D8C(aBlock);
    v32 = swift_dynamicCast();
    (*(v29 + 7))(v9, v32 ^ 1u, 1, v26);
    if ((*(v29 + 6))(v9, 1, v26) != 1)
    {
      v33 = *(v29 + 4);
      v34 = v124;
      v107 = v29 + 32;
      v106 = v33;
      v33(v124, v9, v26);
      v35 = *(v29 + 2);
      v110 = v29 + 16;
      v109 = v35;
      v35(v17, v34, v26);
      v36 = qword_10059A030;
      swift_beginAccess();
      v37 = sub_10040D2AC(aBlock);
      if (*v38)
      {
        v39 = sub_1003FCE40();
        (v37)(aBlock, 0);
        swift_endAccess();
        v9 = (v29 + 8);
        v22 = *(v29 + 1);
        (v22)(v17, v26);
        v108 = v22;
        if (v39)
        {
          v13 = v39;
          swift_beginAccess();
          v40 = *(v2 + v36);
          v17 = v124;
          if (*(v40 + 16))
          {
            v41 = sub_10002A440(v124);
            if (v42)
            {
              v43 = *(*(v40 + 56) + 8 * v41);
              swift_endAccess();
              v19 = v111;
              if (!(v43 >> 62))
              {
                if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_13:
                  v44 = qword_10059BBB0;
                  v109(v19, v17, v26);
                  v45 = v13;
                  v103 = v44;
                  v46 = Logger.logObject.getter();
                  v47 = static os_log_type_t.info.getter();

                  v48 = os_log_type_enabled(v46, v47);
                  v105 = v9;
                  v104 = v45;
                  if (v48)
                  {
                    v49 = swift_slowAlloc();
                    v101 = v47;
                    v50 = v45;
                    v51 = v49;
                    v102 = swift_slowAlloc();
                    aBlock[0] = v102;
                    *v51 = 136315650;
                    sub_1004014D0(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                    v100 = v46;
                    v52 = dispatch thunk of CustomStringConvertible.description.getter();
                    v54 = v53;
                    (v22)(v19, v26);
                    v55 = sub_100002320(v52, v54, aBlock);

                    *(v51 + 4) = v55;
                    *(v51 + 12) = 2080;
                    v56 = [v50 uniqueIdentifier];
                    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v59 = v58;

                    v60 = sub_100002320(v57, v59, aBlock);

                    *(v51 + 14) = v60;
                    *(v51 + 22) = 2080;
                    v26 = v125;
                    v61 = [v50 peerAddress];
                    v62 = WiFiMACAddress.wifiAddress.getter();

                    v63 = WiFiAddress.description.getter(v62 & 0xFFFFFFFFFFFFLL);
                    v65 = sub_100002320(v63, v64, aBlock);

                    *(v51 + 24) = v65;
                    v66 = v100;
                    _os_log_impl(&_mh_execute_header, v100, v101, "%s stopping traffic registration for %s to %s", v51, 0x20u);
                    swift_arrayDestroy();
                  }

                  else
                  {

                    (v22)(v19, v26);
                  }

                  v125 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
                  v111 = *(v2 + qword_10059BBC0);
                  v82 = v111;
                  swift_unownedRetainStrong();
                  v102 = *(v2 + qword_10059A028);
                  v83 = v115;
                  v84 = v2 + v103;
                  v85 = v114;
                  v86 = v116;
                  (*(v115 + 16))(v114, v84, v116);
                  v87 = v112;
                  v109(v112, v124, v26);
                  v88 = (*(v83 + 80) + 80) & ~*(v83 + 80);
                  v89 = (v113 + v126[80] + v88) & ~v126[80];
                  v90 = swift_allocObject();
                  v91 = v117;
                  *(v90 + 16) = *(v117 + 80);
                  *(v90 + 24) = *(v91 + 88);
                  *(v90 + 32) = *(v91 + 96);
                  *(v90 + 48) = *(v91 + 112);
                  *(v90 + 56) = v82;
                  v92 = v104;
                  v93 = v102;
                  *(v90 + 64) = v104;
                  *(v90 + 72) = v93;
                  (*(v83 + 32))(v90 + v88, v85, v86);
                  v106(v90 + v89, v87, v26);
                  aBlock[4] = sub_1004013D8;
                  aBlock[5] = v90;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_10000C8B8;
                  aBlock[3] = &unk_10057A048;
                  v94 = _Block_copy(aBlock);
                  v126 = v92;
                  v95 = v125;

                  v96 = v93;
                  v97 = v118;
                  static DispatchQoS.unspecified.getter();
                  v128 = _swiftEmptyArrayStorage;
                  sub_1004014D0(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
                  sub_10005DCA0();
                  v98 = v120;
                  v99 = v123;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  OS_dispatch_queue.async(group:qos:flags:execute:)();
                  _Block_release(v94);

                  (*(v122 + 8))(v98, v99);
                  (*(v119 + 8))(v97, v121);
                  (v108)(v124, v26);

                  return;
                }

LABEL_12:
                swift_beginAccess();
                sub_1003ADB58(v17);
                swift_endAccess();

                goto LABEL_13;
              }

LABEL_26:
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_13;
              }

              goto LABEL_12;
            }
          }

LABEL_29:
          swift_endAccess();
          __break(1u);
          return;
        }
      }

      else
      {
        (v37)(aBlock, 0);
        swift_endAccess();
        v108 = *(v29 + 1);
        (v108)(v17, v26);
      }

      v70 = v124;
      v109(v13, v124, v26);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        aBlock[0] = v74;
        *v73 = 136315138;
        sub_1004014D0(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        v78 = v13;
        v79 = v108;
        (v108)(v78, v26);
        v80 = sub_100002320(v75, v77, aBlock);

        *(v73 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v71, v72, "No client previously asserted for %s", v73, 0xCu);
        sub_100002A00(v74);

        (v79)(v70, v26);
      }

      else
      {

        v81 = v108;
        (v108)(v13, v26);
        (v81)(v70, v26);
      }

      return;
    }
  }

  else
  {
    sub_1003E9D8C(aBlock);
    (*(v29 + 7))(v9, 1, 1, v26);
  }

  sub_100016290(v9, &qword_10058F4D0, &qword_100491AB0);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "Failed to unassert because no UUID found", v69, 2u);
  }
}

double sub_100400BCC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v23 = a3;
  v24 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin();
  v14 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a4, v10, v13);
  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v7);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  (*(v8 + 32))(v17 + v16, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v18 = v22;
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v19 = v18;
  sub_1002D5690(v19, v23, sub_100401518, v17);

  return result;
}

void sub_100400E00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v8 + 16))(v11, a3, v7, v9);
    swift_errorRetain();
    v12 = a4;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v15 = 136315906;
      sub_1004014D0(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v8 + 8))(v11, v7);
      v19 = sub_100002320(v16, v18, &v35);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = [v12 uniqueIdentifier];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = sub_100002320(v21, v23, &v35);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2080;
      v25 = [v12 peerAddress];
      v26 = WiFiMACAddress.wifiAddress.getter();

      v27 = WiFiAddress.description.getter(v26 & 0xFFFFFFFFFFFFLL);
      v29 = sub_100002320(v27, v28, &v35);

      *(v15 + 24) = v29;
      *(v15 + 32) = 2112;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 34) = v30;
      v31 = v33;
      *v33 = v30;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s failed to clear %s to %s because %@", v15, 0x2Au);
      sub_100016290(v31, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }
}

uint64_t sub_100401168(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_1003FFCB0(v4);
}

uint64_t sub_10040126C(uint64_t a1)
{
  v2 = qword_10059BBA0;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = qword_10059BBB0;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  swift_unownedRelease();
  swift_unownedRelease();
}

double sub_1004013D8()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  return sub_100400BCC(*(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_1004014D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_100401518(uint64_t a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100400E00(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_100401618(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100401688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1004016F0()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  return sub_1003FF684(*(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v2, v0 + v5, *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_100401810(uint64_t a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1003FF8D0(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t sub_100401924(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100401A04(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = qword_10059A138;
  if (*(v1 + qword_10059A138) != a1)
  {
    v8 = *(v1 + qword_10059A130);
    swift_unownedRetainStrong();
    v9 = *(*v8 + 96);
    swift_beginAccess();
    (*(v4 + 16))(v6, v8 + v9, AssociatedTypeWitness);

    v10 = *(v1 + v7);
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 <= 0xFF)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 416))(v10 | ((v10 != 0) << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v4 + 8))(v6, AssociatedTypeWitness);
      return;
    }

    __break(1u);
  }
}

void sub_100401C14(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + qword_10059A140 + 8);
  if (v4)
  {
    if (a2)
    {
      v5 = *(v2 + qword_10059A140) == result && v4 == a2;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        sub_100401C9C(1);
      }

      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  sub_100401FAC();
}

void sub_100401C9C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = swift_isaMask & *v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315138;
    if (v3)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x6C7561686B636142;
    }

    if (v3)
    {
      v10 = 0x80000001004C1990;
    }

    else
    {
      v10 = 0xED000074736F4C20;
    }

    v11 = sub_100002320(v9, v10, v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping internetSharing provider based on policy update: %s", v7, 0xCu);
    sub_100002A00(v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_beginAccess();
    _s17ResponderInstanceCMa(0, *(v4 + 80), *(v4 + 88), v14);
    sub_10020CB70();

    v15 = Dictionary.isEmpty.getter();

    if (v15)
    {
      sub_1002F29CC();

      swift_unknownObjectWeakAssign();
    }

    else
    {
      *(v2 + qword_10059A158) = v3 & 1;
      NANBitmap.Channel.operatingClass.getter();
      __chkstk_darwin();
      v16 = type metadata accessor for Dictionary.Values();

      swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v16);
      Sequence.forEach(_:)();
    }
  }
}

void sub_100401FAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

LABEL_3:
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {

      if (!*&v0[qword_10059A140 + 8])
      {

        sub_100401C9C(0);
      }
    }

    return;
  }

  v3 = &v0[qword_10059A140];
  v4 = *&v0[qword_10059A140 + 8];
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *v3;

  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    if (v3[1])
    {
      v11 = *v3;
      v12 = v3[1];
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7104878;
    }

    v13 = sub_100002320(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "internetSharing provider (interfaceToProvideInternetFrom %s calling startProviding ", v9, 0xCu);
    sub_100002A00(v10);
  }

  sub_1004027AC(v5, v4);
}

void sub_1004021C0()
{
  v1 = *v0;
  v2 = swift_isaMask;
  sub_100402338();
  swift_beginAccess();
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);
  sub_1002CAFC4();
  NANBitmap.Channel.operatingClass.getter();
  v4 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v4);
  Sequence.filter(_:)();
  v5 = Array.count.getter();

  v6 = *(v0 + qword_10059A138);
  *(v0 + qword_10059A138) = v5;
  sub_100401A04(v6);
}

void sub_100402338()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = sub_10005DC58(&unk_10059A3C0, &unk_1004B3060);
  __chkstk_darwin();
  v6 = &v33[-1] - v5;
  swift_beginAccess();
  v7 = *((v3 & v2) + 0x50);
  v8 = *((v3 & v2) + 0x58);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester(0, v7, v8, v9);
  sub_1002CAFC4();

  v10 = Dictionary.isEmpty.getter();

  if ((v10 & 1) != 0 || (v11 = v1 + qword_10059A140, *(v1 + qword_10059A140 + 8)))
  {

    v12 = Dictionary.isEmpty.getter();

    if (v12)
    {
      v13 = (v1 + qword_10059A140);
      v14 = *(v1 + qword_10059A140);
      v15 = *(v1 + qword_10059A140 + 8);
      *v13 = 0;
      v13[1] = 0;
      sub_100401C14(v14, v15);

      v16 = qword_10059A120;
      swift_beginAccess();
      *(v1 + v16) = 0;
    }
  }

  else
  {
    v17 = qword_10059A120;
    swift_beginAccess();
    v32 = *(v1 + v17);
    swift_unownedRetainStrong();
    swift_unownedRetainStrong();

    sub_1003EBAC8(v6);

    v18 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v7;
    v20[3] = v8;
    v20[4] = v19;
    swift_beginAccess();
    v21 = *(v1 + v17);
    v22 = v18;
    v23 = v22;
    if (v21)
    {
      ObservableWiFiProperty.wrappedValue.getter(v4, v33);
    }

    else
    {
      ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v22, (v1 + v17), sub_1004098A8, v20, v4, v33);
    }

    v24 = v33[0];
    v25 = v33[1];
    swift_endAccess();

    sub_100016290(v6, &unk_10059A3C0, &unk_1004B3060);
    v26 = (v1 + qword_10059A140);
    v27 = *(v1 + qword_10059A140);
    v28 = *(v1 + qword_10059A140 + 8);
    *v26 = v24;
    v26[1] = v25;
    sub_100401C14(v27, v28);

    if (!v32 && !*(v11 + 1))
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Waiting to start publishing internetSharing provider because there is no interface to share internet from", v31, 2u);
      }
    }
  }
}

void (*sub_100402714(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100402778;
}

void sub_100402778(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1004021C0();
  }
}

void sub_1004027AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v32 - v11;
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();

  v13 = Preferences.internetSharingOptions.getter(v9);
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v32[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100002320(a1, a2, v32);
        _os_log_impl(&_mh_execute_header, v15, v16, "Starting internetSharing provider from %s based on policy update", v17, 0xCu);
        sub_100002A00(v18);
      }

      NANConstants.internetSharingServiceName.unsafeMutableAddressor();
      v19 = objc_allocWithZone(WiFiAwarePublishConfiguration);

      v20 = String._bridgeToObjectiveC()();

      v21 = [v19 initWithServiceName:v20];

      [v21 setAuthenticationType:0];
      v22 = objc_opt_self();
      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 provideInternetToInitiatorsFromInterface:v23];

      [v21 setInternetSharingConfiguration:v24];
      v25 = [v21 internetSharingConfiguration];
      if (v25)
      {
        v26 = v25;
        [v25 setUseBridging:1];
      }

      *(v3 + qword_10059A158) = 2;
      v27 = swift_unownedRetainStrong();
      sub_10040CAE8(v27, v28, v29, v30);

      LOBYTE(v32[0]) = 1;
      v31 = sub_1003653B0(v21, v3, 0, 0, 0x100000000uLL);

      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
  }
}

void sub_100402C84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000000000) != 0)
  {
    v11 = swift_isaMask & *v3;
    swift_beginAccess();
    __chkstk_darwin();
    type metadata accessor for LowLatencyInternetProviderPolicy.Requester(0, *(v11 + 80), *(v11 + 88), v12);
    sub_1002CAFC4();

    Dictionary.filter(_:)();
    __chkstk_darwin();
    v13 = type metadata accessor for Dictionary();
    swift_getWitnessTable(&protocol conformance descriptor for [A : B], v13);
    Sequence.forEach(_:)();
  }

  else
  {
    v7 = swift_unownedRetainStrong();
    sub_10040CAE8(v7, v8, v9, v10);

    sub_10034A84C(a3 & 0xFFFFFFFFFFFFFFLL, a1, a2);
  }
}

uint64_t sub_100402EBC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C7561686B636142;
  }
}

Swift::Int sub_100402F38(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANInternetSharingStatistics.Status.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

id sub_100402F90()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = swift_isaMask;
  swift_beginAccess();
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester(255, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v5);
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1004030A4(uint64_t a1)
{
  v2 = qword_10059BBC8;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  swift_unownedRelease();

  return swift_unknownObjectWeakDestroy();
}

void sub_100403178(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *((swift_isaMask & *v5) + 0x50);
  v10 = *((swift_isaMask & *v5) + 0x58);
  v19[0] = a4 & 0xFFFFFFFFFFFFFFLL;
  v19[1] = a2;
  v19[2] = a3;
  v20 = 0;
  swift_beginAccess();
  sub_100286C2C(a2, a3);
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester(255, v9, v10, v11);
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_1004021C0();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19[0] = v15;
    *v14 = 136315138;
    v16 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v18 = sub_100002320(v16, v17, v19);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Provider Added internetSharing requester %s", v14, 0xCu);
    sub_100002A00(v15);
  }
}

void sub_100403384(uint64_t a1)
{
  v3 = swift_isaMask & *v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    v8 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v10 = sub_100002320(v8, v9, v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Provider Removed internetSharing requester %s", v6, 0xCu);
    sub_100002A00(v7);
  }

  swift_beginAccess();
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester(255, *(v3 + 80), *(v3 + 88), v11);
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  v12 = v16[0];
  v13 = v16[1];
  v14 = v16[2];
  v15 = v17;
  swift_endAccess();
  sub_100409884(v12, v13, v14, v15);
  sub_1004021C0();
}

uint64_t sub_100403590(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_isaMask;
  swift_beginAccess();
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v4);
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  if (v10 == 2)
  {
    sub_100409884(v7, v8, v9, 2);
    swift_endAccess();
    return 0;
  }

  else
  {
    v5 = v8;
    sub_100286C2C(v8, v9);
    swift_endAccess();
    sub_100409884(v7, v8, v9, v10);
  }

  return v5;
}

uint64_t sub_1004036B8()
{
  v1 = *v0;
  v2 = swift_isaMask;
  swift_beginAccess();
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);
  sub_1002CAFC4();

  Dictionary.filter(_:)();
  v4 = Dictionary.count.getter();

  return v4;
}

uint64_t sub_1004037E0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v61 = *(v6 - 8);
  __chkstk_darwin();
  v60 = &v55 - v7;
  sub_10005DC58(&unk_100596880, &unk_1004B0F70);
  __chkstk_darwin();
  v9 = &v55 - v8;
  v10 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v55 - v13;
  v15 = *(v1 + qword_10059A130);
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v63 = v15;

  sub_1003EB084();
  v17 = v16;
  v19 = v18;

  v20 = 0x300000000;
  v62 = 0x300000000;
  if (v17)
  {

    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v59 = v20;
  swift_unownedRetainStrong();
  sub_10040CD68(a1 & 0xFFFFFFFFFFFFLL, v14);

  v21 = *&v14[v10[18] + 8];
  sub_100023A18(v14, type metadata accessor for NANPeer);
  if ((v21 & 0xFF00000000) != 0x300000000)
  {
    v62 = Optional<A>.init(integerLiteral:)(BYTE6(v21)) & 0xFFFFFFFFFFFFLL;
  }

  swift_unownedRetainStrong();
  sub_10040CD68(a1 & 0xFFFFFFFFFFFFLL, v12);

  sub_100012400(&v12[v10[19]], v9, &unk_100596880, &unk_1004B0F70);
  v22 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  if ((*(*(v22 - 8) + 48))(v9, 1, v22) == 1)
  {
    sub_100016290(v9, &unk_100596880, &unk_1004B0F70);
  }

  else
  {
    v23 = *(v9 + 1);
    sub_100023A18(v9, type metadata accessor for NANAttribute.CustomDeviceInformation);
    if ((*NANAttribute.CustomDeviceInformation.Flags.doesNotSupportSimultaneousDualBand.unsafeMutableAddressor() & ~v23) == 0)
    {
      goto LABEL_10;
    }
  }

  v24 = *&v12[v10[17] + 8];
  if (v24)
  {
    v25 = *(v24 + 16) > 1uLL;
    goto LABEL_11;
  }

LABEL_10:
  v25 = 0;
LABEL_11:
  sub_100023A18(v12, type metadata accessor for NANPeer);
  swift_unownedRetainStrong();
  v26 = sub_10040E5FC();

  v27 = *(v26 + 16);
  if (v27)
  {
    v57 = v25;
    v58 = v6;
    v68 = _swiftEmptyArrayStorage;
    v65 = v27;
    v66 = v26;
    sub_100027CF0(0, v27, 0);
    v28 = v68;
    v29 = v66 + 64;
    v30 = _HashTable.startBucket.getter();
    v32 = v65;
    result = v66;
    v33 = 0;
    v64 = v66 + 72;
    v67 = v29;
    while ((v30 & 0x8000000000000000) == 0 && v30 < 1 << *(result + 32))
    {
      v35 = v30 >> 6;
      if ((*(v29 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
      {
        goto LABEL_33;
      }

      v36 = *(result + 36);
      v37 = *(result + 48) + 8 * v30;
      v38 = *v37;
      v39 = *(v37 + 4);
      v40 = *(v37 + 5);
      v68 = v28;
      v42 = v28[2];
      v41 = v28[3];
      if (v42 >= v41 >> 1)
      {
        v56 = v36;
        sub_100027CF0((v41 > 1), v42 + 1, 1);
        v36 = v56;
        v32 = v65;
        result = v66;
        v28 = v68;
      }

      v28[2] = v42 + 1;
      v43 = v28;
      v44 = &v28[v42];
      *(v44 + 8) = v38;
      *(v44 + 36) = v39;
      *(v44 + 37) = v40;
      v34 = 1 << *(result + 32);
      if (v30 >= v34)
      {
        goto LABEL_34;
      }

      v29 = v67;
      v45 = *(v67 + 8 * v35);
      if ((v45 & (1 << v30)) == 0)
      {
        goto LABEL_35;
      }

      if (v36 != *(result + 36))
      {
        goto LABEL_36;
      }

      v46 = v45 & (-2 << (v30 & 0x3F));
      if (v46)
      {
        v34 = __clz(__rbit64(v46)) | v30 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = v35 << 6;
        v48 = v35 + 1;
        v49 = (v64 + 8 * v35);
        while (v48 < (v34 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            sub_10002BEB8(v30, v36, 0);
            v32 = v65;
            result = v66;
            v34 = __clz(__rbit64(v50)) + v47;
            goto LABEL_14;
          }
        }

        sub_10002BEB8(v30, v36, 0);
        v32 = v65;
        result = v66;
      }

LABEL_14:
      ++v33;
      v30 = v34;
      v28 = v43;
      if (v33 == v32)
      {

        v6 = v58;
        LOBYTE(v25) = v57;
        v52 = v28;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {

    v52 = _swiftEmptyArrayStorage;
LABEL_31:
    swift_unownedRetainStrong();
    v53 = v60;
    WiFiInterface.preferences.getter();

    v54 = Preferences.autoInternetSharingOnInfraLost.getter(v6);
    (*(v61 + 8))(v53, v6);
    return sub_100408EB4(v59, v62, v25, v52, v54 & 1);
  }

  return result;
}

char *sub_100403EC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = &result[qword_10059A140];
    v8 = *&result[qword_10059A140];
    v9 = *&result[qword_10059A140 + 8];
    *v7 = v4;
    *(v7 + 1) = v3;

    sub_100401C14(v8, v9);
  }

  return result;
}

double sub_100403F54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *(a1 + 10);
  v7 = *(a1 + 11);
  v8 = *(a1 + 8);
  v9 = swift_unownedRetainStrong();
  sub_10040CAE8(v9, v10, v11, v12);

  sub_10034A84C(v8 | (v6 << 16) | (v7 << 24), a3, a4);

  return result;
}

unint64_t sub_100403FE8(void *a1)
{
  v3 = swift_isaMask & *v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, swift_beginAccess(), , v5, v6 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter(), LOWORD(v27[0]) = v6, BYTE2(v27[0]) = BYTE2(v6), BYTE3(v27[0]) = BYTE3(v6), BYTE4(v27[0]) = BYTE4(v6), BYTE5(v27[0]) = BYTE5(v6), BYTE6(v27[0]) = BYTE6(v6), _s17ResponderInstanceCMa(0, *(v3 + 80), *(v3 + 88), v7), sub_10020CB70(), Dictionary.subscript.getter(), , (v8 = v28) != 0))
  {
    v9 = qword_100594B08;
    swift_beginAccess();
    sub_1002CB130(v28 + v9, v27);

    v10 = *(v27 + 2);
    v11 = BYTE6(v27[0]);
    v12 = HIBYTE(v27[0]);
    sub_1002CB18C(v27);
    v13 = 0;
    v14 = v10 | (v11 << 32) | (v12 << 40);
  }

  else
  {
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      sub_1002FA108(a1, NANBitmap.Channel.operatingClass.getter, 0);
    }

    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136315138;
      v22 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      v23 = NANPeerServiceIdentifier.description.getter(v22 & 0xFFFFFFFFFFFFFFLL);
      v25 = sub_100002320(v23, v24, v27);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unknown internetSharing requester address for %s", v20, 0xCu);
      sub_100002A00(v21);
    }

    v14 = 0;
    v13 = 1;
  }

  return v14 | (v13 << 48);
}

uint64_t sub_1004042B4(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2._countAndFlagsBits = WiFiP2PError.description.getter(a1);
  String.append(_:)(v2);

  sub_100402C84(0xD000000000000020, 0x80000001004C1BE0, 0x100000000000000);
}

void sub_100404370(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1004042B4(a3);
}

void sub_1004043C4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for DispatchQoS() - 8);
  __chkstk_darwin();
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == -1)
  {
    return;
  }

  v11 = v1[qword_10059A158];
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v12 = v8;
    v13 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v27 = sub_100409BA0;
    v28 = v14;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10000C8B8;
    v26 = &unk_10057A5A0;
    v15 = _Block_copy(&aBlock);
    v16 = v13;
    v17 = v1;
    static DispatchQoS.unspecified.getter();
    v22[1] = _swiftEmptyArrayStorage;
    sub_10001CF14();
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10005DCA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v4 + 8))(v6, v3);
    (*(v7 + 8))(v10, v12);

    return;
  }

  v18 = 0xD000000000000018;
  aBlock = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  aBlock = 0xD00000000000001BLL;
  v24 = 0x80000001004C1BC0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v19 = 0xEC0000006572756CLL;
      v18 = 0x6961462070696843;
      goto LABEL_16;
    }

    if (a1 == 4)
    {
      v19 = 0x80000001004BA540;
      goto LABEL_16;
    }

LABEL_13:
    v19 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E55;
    goto LABEL_16;
  }

  if (a1 == 1)
  {
    v19 = 0xE900000000000074;
    v18 = 0x754F2064656D6954;
    goto LABEL_16;
  }

  if (a1 != 2)
  {
    goto LABEL_13;
  }

  v19 = 0xEE00646574736575;
  v18 = 0x7165522072657355;
LABEL_16:
  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  v21 = aBlock;
  LOBYTE(aBlock) = 1;
  sub_100402C84(v21, v24, 0x100000000000000);
}

void sub_1004047B8(uint64_t a1)
{
  if (*(a1 + qword_10059A140 + 8))
  {
    sub_100401FAC();
  }

  else
  {
    sub_100402338();
  }
}

void sub_1004047FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1004043C4(a3);
}

uint64_t sub_100404850@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, BOOL *a3@<X8>)
{
  v5 = *a2;
  v6 = swift_isaMask;
  v7 = *(a1 + 2);
  v8 = sub_100402714(v15);
  v16 = *a1;
  v17 = v7;
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester(255, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), v9);
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  v11 = Dictionary.subscript.modify();
  v12 = *(v10 + 24);
  if (v12 != 2)
  {
    *(v10 + 24) = 1;
  }

  v11(&v14, 0);
  result = (v8)(v15, 0);
  *a3 = v12 == 2;
  return result;
}

void sub_100404990(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = a1;
  sub_10040996C(v7);
}

uint64_t sub_100404A08(void *a1, uint64_t a2)
{
  if (a2 != -1)
  {
    v4 = sub_100403FE8(a1);
    if ((v4 & 0x1000000000000) == 0)
    {
      v6 = v4;
      v7 = BYTE2(v4);
      v8 = BYTE3(v4);
      v9 = BYTE4(v4);
      v10 = BYTE5(v4);
      sub_100404CE4(&v6, v2, a2);
    }
  }

  return sub_100404AA8(v2);
}

uint64_t sub_100404AA8(void *a1)
{
  v2 = swift_isaMask & *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();

    _s17ResponderInstanceCMa(0, *(v2 + 80), *(v2 + 88), v5);
    sub_10020CB70();
    v6 = Dictionary.count.getter();

    if (v6 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        swift_beginAccess();

        NANBitmap.Channel.operatingClass.getter();

        v9 = type metadata accessor for Dictionary.Keys();
        swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v9);
        Collection.first.getter();

        result = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
        if ((v15 & 1) == 0)
        {
          result = static NANPeerServiceIdentifier.__derived_struct_equals(_:_:)((v12 | ((v13 | (v14 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, result & 0xFFFFFFFFFFFFFFLL);
          if ((result & 1) != 0 && *(a1 + qword_10059A158) != 2)
          {
            v10 = swift_unknownObjectWeakLoadStrong();
            if (v10)
            {
              v11 = v10;
              sub_1002F29CC();
            }

            return swift_unknownObjectWeakAssign();
          }
        }
      }

      else
      {
        return WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      }
    }
  }

  return result;
}

uint64_t sub_100404CE4(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = swift_isaMask;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v30 = sub_100402714(&v33);
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  type metadata accessor for LowLatencyInternetProviderPolicy.Requester(255, *((v5 & v4) + 0x50), *((v5 & v4) + 0x58), v12);
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  v14 = Dictionary.subscript.modify();
  if (*(v13 + 24) != 2)
  {
    *(v13 + 24) = 0;
  }

  v14(v32, 0);
  result = (v30)(&v33, 0);
  if ((*(a2 + qword_10059A158) & 1) == 0)
  {
    result = sub_1004037E0(v6 | (v7 << 8) | (v8 << 16) | (v9 << 24) | (v10 << 32) | (v11 << 40));
    if (result)
    {
      swift_beginAccess();
      v37 = v6;
      v38 = v7;
      v39 = v8;
      v40 = v9;
      v41 = v10;
      v42 = v11;
      Dictionary.subscript.getter();
      v16 = v36;
      if (v36 == 2)
      {
        sub_100409884(v33, v34, v35, 2);
        return swift_endAccess();
      }

      v17 = 0xD000000000000011;
      v18 = v33;
      v19 = BYTE4(v33);
      v20 = BYTE5(v33);
      v31 = BYTE6(v33);
      v21 = v33;
      v22 = v34;
      v23 = v35;
      swift_endAccess();
      sub_100409884(v21, v22, v23, v16);
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v33 = 0xD000000000000026;
      v34 = 0x80000001004C1B90;
      if (a3 <= 1)
      {
        v25 = v19;
        if (a3 == -1)
        {
          v26 = 0x80000001004BA5E0;
          v24 = v31;
          goto LABEL_19;
        }

        v24 = v31;
        if (a3 == 1)
        {
          v26 = 0xE900000000000074;
          v17 = 0x754F2064656D6954;
          goto LABEL_19;
        }
      }

      else
      {
        if (a3 == 2)
        {
          v25 = v19;
          v26 = 0xEE00646574736575;
          v17 = 0x7165522072657355;
          v24 = v31;
          goto LABEL_19;
        }

        v24 = v31;
        v25 = v19;
        if (a3 == 3)
        {
          v26 = 0xEC0000006572756CLL;
          v17 = 0x6961462070696843;
          goto LABEL_19;
        }

        if (a3 == 4)
        {
          v26 = 0x80000001004BA540;
          v17 = 0xD000000000000018;
LABEL_19:
          v27._countAndFlagsBits = v17;
          v27._object = v26;
          String.append(_:)(v27);

          v28 = v33;
          LOBYTE(v33) = 0;
          sub_100402C84(v28, v34, v18 | (v25 << 32) | (v20 << 40) | (v24 << 48));
        }
      }

      v26 = 0xE700000000000000;
      v17 = 0x6E776F6E6B6E55;
      goto LABEL_19;
    }
  }

  return result;
}