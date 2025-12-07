int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000017BC(&qword_1000D8168, &unk_1000A5830);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  __bd_register_for_dlsym_callbacks();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  sub_10009F420();
  qword_1000DADE8 = sub_10009F3F0();
  sub_10009F3C0();
  qword_1000DADF0 = &_swiftEmptyArrayStorage;
  sub_10009F3D0();
  sub_10009F610();
  sub_100001804();
  sub_10009F400();
  sub_10009F900();
  sub_100001858();
  sub_10009F400();
  sub_10009FFF0();
  sub_1000018AC();
  sub_10009F400();
  sub_10009F5A0();
  sub_100001900();
  sub_10009F400();
  sub_10009FC20();
  sub_100001954();
  sub_10009F410();
  v6 = enum case for SandboxID.blastdoor(_:);
  v7 = sub_1000A0540();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v5, v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  sub_10009F3E0();
  sub_1000019A8(v5);
  return 0;
}

uint64_t sub_1000017BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001804()
{
  result = qword_1000D8170;
  if (!qword_1000D8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8170);
  }

  return result;
}

unint64_t sub_100001858()
{
  result = qword_1000D8178;
  if (!qword_1000D8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8178);
  }

  return result;
}

unint64_t sub_1000018AC()
{
  result = qword_1000D8180;
  if (!qword_1000D8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8180);
  }

  return result;
}

unint64_t sub_100001900()
{
  result = qword_1000D8188;
  if (!qword_1000D8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8188);
  }

  return result;
}

unint64_t sub_100001954()
{
  result = qword_1000D8190;
  if (!qword_1000D8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8190);
  }

  return result;
}

uint64_t sub_1000019A8(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D8168, &unk_1000A5830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001A1C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WalletPassSharingGeneralMessageSchema.WalletPassSharingGeneralMessageContent.WalletPassSharingGeneralMessageGenericData(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_100001AA0()
{
  result = qword_1000D8198;
  if (!qword_1000D8198)
  {
    sub_10009FC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8198);
  }

  return result;
}

uint64_t sub_100001AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000D8118 != -1)
  {
    swift_once();
  }

  v3 = qword_1000DADF8;
  v4 = sub_10009FCF0();
  if (*(v3 + 16))
  {
    v6 = sub_10000217C(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_100002248(*(v3 + 56) + 40 * v6, v14);
      sub_1000022AC(v14, v15);
      sub_1000022C4(v15, v15[3]);
      sub_10009F870();
      return sub_100002308(v15);
    }
  }

  else
  {
  }

  v10 = sub_10009FCF0();
  v12 = v11;
  sub_1000021F4();
  swift_allocError();
  *v13 = v10;
  *(v13 + 8) = v12;
  *(v13 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_100001C6C()
{
  sub_1000017BC(&qword_1000D81A8, &qword_1000A58E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000A5840;
  *(v0 + 32) = 0xD00000000000002FLL;
  *(v0 + 40) = 0x80000001000A2AD0;
  *(v0 + 72) = &type metadata for AccountsRepresentativeMessageUnpacker;
  *(v0 + 80) = sub_100002518();
  *(v0 + 88) = 0xD000000000000028;
  *(v0 + 96) = 0x80000001000A2B00;
  *(v0 + 128) = &type metadata for WalletSharingMessageUnpacker;
  *(v0 + 136) = sub_10000256C();
  *(v0 + 144) = 0xD00000000000002ELL;
  *(v0 + 152) = 0x80000001000A2B30;
  *(v0 + 184) = &type metadata for IDSSampleMessageUnpacker;
  *(v0 + 192) = sub_1000025C0();
  *(v0 + 200) = 0xD000000000000026;
  *(v0 + 208) = 0x80000001000A2B60;
  *(v0 + 240) = &type metadata for CompanionAuthMessageUnpacker;
  *(v0 + 248) = sub_100002614();
  *(v0 + 256) = 0xD000000000000026;
  *(v0 + 264) = 0x80000001000A2B90;
  *(v0 + 296) = &type metadata for FTAudioVideoMessageUnpacker;
  v1 = sub_100002668();
  *(v0 + 304) = v1;
  *(v0 + 312) = 0xD000000000000023;
  *(v0 + 320) = 0x80000001000A2BC0;
  *(v0 + 352) = &type metadata for FTLivePhotoMessageUnpacker;
  *(v0 + 360) = sub_1000026BC();
  *(v0 + 368) = 0xD00000000000001BLL;
  *(v0 + 376) = 0x80000001000A2BF0;
  *(v0 + 408) = &type metadata for FMFMessageUnpacker;
  *(v0 + 416) = sub_100002710();
  *(v0 + 424) = 0xD000000000000026;
  *(v0 + 432) = 0x80000001000A2C10;
  *(v0 + 464) = &type metadata for FTMultiMessageUnpacker;
  *(v0 + 472) = sub_100002764();
  *(v0 + 480) = 0xD000000000000026;
  *(v0 + 488) = 0x80000001000A2C40;
  *(v0 + 520) = &type metadata for FTAudioVideoMessageUnpacker;
  *(v0 + 528) = v1;
  *(v0 + 536) = 0xD000000000000037;
  *(v0 + 544) = 0x80000001000A2C70;
  *(v0 + 576) = &type metadata for FindMyCrossAccountMessageUnpacker;
  *(v0 + 584) = sub_1000027B8();
  *(v0 + 592) = 0xD00000000000002DLL;
  *(v0 + 600) = 0x80000001000A2CB0;
  *(v0 + 632) = &type metadata for ActivitySharingLegacyMessageUnpacker;
  v2 = sub_10000280C();
  *(v0 + 640) = v2;
  *(v0 + 648) = 0xD00000000000002FLL;
  *(v0 + 656) = 0x80000001000A2CE0;
  *(v0 + 688) = &type metadata for ActivitySharingLegacyMessageUnpacker;
  *(v0 + 696) = v2;
  *(v0 + 704) = 0xD000000000000030;
  *(v0 + 712) = 0x80000001000A2D10;
  *(v0 + 744) = &type metadata for NearbySessionMessageUnpacker;
  *(v0 + 752) = sub_100002860();
  *(v0 + 760) = 0xD000000000000020;
  *(v0 + 768) = 0x80000001000A2D50;
  *(v0 + 800) = &type metadata for SharedETAMessageUnpacker;
  *(v0 + 808) = sub_1000028B4();
  *(v0 + 816) = 0xD000000000000024;
  *(v0 + 824) = 0x80000001000A2D80;
  *(v0 + 856) = &type metadata for NameAndPhotoUnpacker;
  *(v0 + 864) = sub_100002908();
  *(v0 + 872) = 0xD00000000000001ELL;
  *(v0 + 880) = 0x80000001000A2DB0;
  *(v0 + 912) = &type metadata for RapportUnpacker;
  *(v0 + 920) = sub_10000295C();
  *(v0 + 928) = 0xD000000000000023;
  *(v0 + 936) = 0x80000001000A2DD0;
  *(v0 + 968) = &type metadata for PhotosSharedAlbumMessageUnpacker;
  *(v0 + 976) = sub_1000029B0();
  *(v0 + 984) = 0xD000000000000025;
  *(v0 + 992) = 0x80000001000A2E00;
  *(v0 + 1024) = &type metadata for SafetyMonitorMessageUnpacker;
  *(v0 + 1032) = sub_100002A04();
  *(v0 + 1040) = 0xD000000000000020;
  *(v0 + 1048) = 0x80000001000A2E30;
  *(v0 + 1080) = &type metadata for SSMessageUnpacker;
  v3 = sub_100002A58();
  *(v0 + 1088) = v3;
  *(v0 + 1096) = 0xD000000000000028;
  *(v0 + 1104) = 0x80000001000A2E60;
  *(v0 + 1136) = &type metadata for SSMessageUnpacker;
  *(v0 + 1144) = v3;
  *(v0 + 1152) = 0xD000000000000025;
  *(v0 + 1160) = 0x80000001000A2E90;
  *(v0 + 1192) = &type metadata for SSMessageUnpacker;
  *(v0 + 1200) = v3;
  *(v0 + 1208) = 0xD000000000000029;
  *(v0 + 1216) = 0x80000001000A2EC0;
  *(v0 + 1248) = &type metadata for StatusKitInvitationUnpacker;
  *(v0 + 1256) = sub_100002AAC();
  *(v0 + 1264) = 0xD000000000000024;
  *(v0 + 1272) = 0x80000001000A2EF0;
  *(v0 + 1304) = &type metadata for TincanMessageUnpacker;
  *(v0 + 1312) = sub_100002B00();
  v4 = sub_100002BC0(v0);
  swift_setDeallocating();
  sub_1000017BC(&qword_1000D8248, &qword_1000A58F0);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000DADF8 = v4;
  return result;
}

unint64_t sub_100002138(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000A0800(*(v2 + 40));

  return sub_100002398(a1, v4);
}

unint64_t sub_10000217C(uint64_t a1, uint64_t a2)
{
  sub_1000A0C60();
  sub_1000A05B0();
  v4 = sub_1000A0C90();

  return sub_100002460(a1, a2, v4);
}

unint64_t sub_1000021F4()
{
  result = qword_1000D81A0;
  if (!qword_1000D81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81A0);
  }

  return result;
}

uint64_t sub_100002248(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000022AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000022C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002308(void *a1)
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

unint64_t sub_100002354(uint64_t a1)
{
  v2 = sub_1000A0C50();

  return sub_100002B54(a1, v2);
}

unint64_t sub_100002398(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100002E18(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000A0810();
      sub_100002E74(v8);
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

unint64_t sub_100002460(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000A0BD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100002518()
{
  result = qword_1000D81B0;
  if (!qword_1000D81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81B0);
  }

  return result;
}

unint64_t sub_10000256C()
{
  result = qword_1000D81B8;
  if (!qword_1000D81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81B8);
  }

  return result;
}

unint64_t sub_1000025C0()
{
  result = qword_1000D81C0;
  if (!qword_1000D81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81C0);
  }

  return result;
}

unint64_t sub_100002614()
{
  result = qword_1000D81C8;
  if (!qword_1000D81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81C8);
  }

  return result;
}

unint64_t sub_100002668()
{
  result = qword_1000D81D0;
  if (!qword_1000D81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81D0);
  }

  return result;
}

unint64_t sub_1000026BC()
{
  result = qword_1000D81D8;
  if (!qword_1000D81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81D8);
  }

  return result;
}

unint64_t sub_100002710()
{
  result = qword_1000D81E0;
  if (!qword_1000D81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81E0);
  }

  return result;
}

unint64_t sub_100002764()
{
  result = qword_1000D81E8;
  if (!qword_1000D81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81E8);
  }

  return result;
}

unint64_t sub_1000027B8()
{
  result = qword_1000D81F0;
  if (!qword_1000D81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81F0);
  }

  return result;
}

unint64_t sub_10000280C()
{
  result = qword_1000D81F8;
  if (!qword_1000D81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D81F8);
  }

  return result;
}

unint64_t sub_100002860()
{
  result = qword_1000D8200;
  if (!qword_1000D8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8200);
  }

  return result;
}

unint64_t sub_1000028B4()
{
  result = qword_1000D8208;
  if (!qword_1000D8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8208);
  }

  return result;
}

unint64_t sub_100002908()
{
  result = qword_1000D8210;
  if (!qword_1000D8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8210);
  }

  return result;
}

unint64_t sub_10000295C()
{
  result = qword_1000D8218;
  if (!qword_1000D8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8218);
  }

  return result;
}

unint64_t sub_1000029B0()
{
  result = qword_1000D8220;
  if (!qword_1000D8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8220);
  }

  return result;
}

unint64_t sub_100002A04()
{
  result = qword_1000D8228;
  if (!qword_1000D8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8228);
  }

  return result;
}

unint64_t sub_100002A58()
{
  result = qword_1000D8230;
  if (!qword_1000D8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8230);
  }

  return result;
}

unint64_t sub_100002AAC()
{
  result = qword_1000D8238;
  if (!qword_1000D8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8238);
  }

  return result;
}

unint64_t sub_100002B00()
{
  result = qword_1000D8240;
  if (!qword_1000D8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8240);
  }

  return result;
}

unint64_t sub_100002B54(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100002BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000017BC(&qword_1000D8250, &qword_1000A58F8);
    v3 = sub_1000A08D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_100002CDC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000217C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000022AC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_100002CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8248, &qword_1000A58F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100002D58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100002D6C(uint64_t a1, unsigned int a2)
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

uint64_t sub_100002DB4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

Swift::Int sub_100002ED4()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100002F68(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_100002FE8(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100003078@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100003DFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000030A8(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 118;
  v4 = 0xE100000000000000;
  v5 = 112;
  if (*v1 != 2)
  {
    v5 = 26994;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 115;
    v2 = 0xE100000000000000;
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

uint64_t sub_1000030F8()
{
  v1 = 118;
  v2 = 112;
  if (*v0 != 2)
  {
    v2 = 26994;
  }

  if (*v0)
  {
    v1 = 115;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100003144@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100003DFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100003184(uint64_t a1)
{
  v2 = sub_100003424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000031C0(uint64_t a1)
{
  v2 = sub_100003424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSessionReinitiateSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8258, &qword_1000A59E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_100003424();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_1000A0B70();
  if (!v1)
  {
    v8[14] = 1;
    sub_1000A0B30();
    v8[13] = 2;
    sub_1000A0B30();
    type metadata accessor for IDSSessionReinitiateSchema(0);
    v8[12] = 3;
    sub_10009FAA0();
    sub_10000384C(&qword_1000D8268, &protocol conformance descriptor for IDSSessionReinitiate.IDSSessionReinitiateSubcommand);
    sub_1000A0B80();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100003424()
{
  result = qword_1000D8260;
  if (!qword_1000D8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8260);
  }

  return result;
}

uint64_t type metadata accessor for IDSSessionReinitiateSchema(uint64_t a1)
{
  result = qword_1000D82D8;
  if (!qword_1000D82D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSSessionReinitiateSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_10009FAA0();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000017BC(&qword_1000D8270, &qword_1000A59E8);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v19 - v6;
  v8 = type metadata accessor for IDSSessionReinitiateSchema(0);
  __chkstk_darwin(v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000022C4(a1, a1[3]);
  sub_100003424();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v11 = a1;
  v21 = v8;
  v13 = v24;
  v12 = v25;
  v14 = v5;
  v30 = 0;
  v15 = v26;
  *v10 = sub_1000A0A10();
  v29 = 1;
  v10[1] = sub_1000A09D0();
  v10[2] = v16;
  v20 = v16;
  v28 = 2;
  v10[3] = sub_1000A09D0();
  v10[4] = v17;
  v27 = 3;
  sub_10000384C(&qword_1000D8278, &protocol conformance descriptor for IDSSessionReinitiate.IDSSessionReinitiateSubcommand);
  v20 = v14;
  sub_1000A0A20();
  (*(v13 + 8))(v7, v15);
  (*(v22 + 32))(v10 + *(v21 + 28), v20, v12);
  sub_100003890(v10, v23);
  sub_100002308(v11);
  return sub_1000038F4(v10);
}

uint64_t sub_10000384C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009FAA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSessionReinitiateSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000038F4(uint64_t a1)
{
  v2 = type metadata accessor for IDSSessionReinitiateSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10009FAA0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100003A54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10009FAA0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100003AF8(uint64_t a1)
{
  result = sub_10009FAA0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSSessionReinitiateSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSSessionReinitiateSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100003CF8()
{
  result = qword_1000D8318;
  if (!qword_1000D8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8318);
  }

  return result;
}

unint64_t sub_100003D50()
{
  result = qword_1000D8320;
  if (!qword_1000D8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8320);
  }

  return result;
}

unint64_t sub_100003DA8()
{
  result = qword_1000D8328;
  if (!qword_1000D8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8328);
  }

  return result;
}

unint64_t sub_100003DFC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000C9FE8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_100003EA8()
{
  sub_1000A0C60();
  sub_1000A0C70(0);
  return sub_1000A0C90();
}

Swift::Int sub_100003F14(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A0C70(0);
  return sub_1000A0C90();
}

uint64_t sub_100003F54@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v162 = a2;
  v161 = a1;
  v145 = a3;
  v3 = sub_10009F9D0();
  v143 = *(v3 - 8);
  v144 = v3;
  __chkstk_darwin(v3);
  v142 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000017BC(&qword_1000D8338, &qword_1000A5C30);
  __chkstk_darwin(v5 - 8);
  v154 = &v125 - v6;
  v141 = sub_1000A01E0();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v155 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000017BC(&qword_1000D8340, &qword_1000A5C38);
  v9 = __chkstk_darwin(v8 - 8);
  v153 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v146 = &v125 - v12;
  __chkstk_darwin(v11);
  v160 = &v125 - v13;
  v14 = sub_1000017BC(&qword_1000D8348, &qword_1000A5C40);
  v15 = __chkstk_darwin(v14 - 8);
  v152 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v151 = &v125 - v18;
  __chkstk_darwin(v17);
  v159 = &v125 - v19;
  v20 = sub_1000017BC(&qword_1000D8350, &qword_1000A5C48);
  v21 = __chkstk_darwin(v20 - 8);
  v136 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v134 = &v125 - v23;
  v139 = sub_10009F990();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  v26 = __chkstk_darwin(v25 - 8);
  v135 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v133 = &v125 - v29;
  __chkstk_darwin(v28);
  v147 = &v125 - v30;
  v31 = sub_10009F2A0();
  v148 = *(v31 - 8);
  v149 = v31;
  __chkstk_darwin(v31);
  v150 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000017BC(&qword_1000D8360, &qword_1000B1270);
  __chkstk_darwin(v33 - 8);
  v157 = &v125 - v34;
  v158 = type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v36 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000017BC(&qword_1000D8368, &unk_1000A5C60);
  v38 = __chkstk_darwin(v37 - 8);
  v40 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38);
  v43 = &v125 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v125 - v45;
  __chkstk_darwin(v44);
  v48 = &v125 - v47;
  v49 = type metadata accessor for AccountsRepresentativeMessageSchema(0);
  __chkstk_darwin(v49);
  v51 = &v125 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  sub_10009F260();
  sub_1000017BC(&qword_1000D8370, &unk_1000AA060);
  sub_100005350();
  v52 = v163;
  sub_10009F250();
  if (v52)
  {
  }

  v130 = v43;
  v129 = v46;
  v131 = v36;
  v162 = v48;
  v163 = v49;
  v161 = v40;
  v132 = v51;

  v54 = v164;
  v55 = sub_10009FD00();
  if (!*(v54 + 16))
  {

    goto LABEL_7;
  }

  v57 = sub_10000217C(v55, v56);
  v59 = v58;

  if ((v59 & 1) == 0)
  {
LABEL_7:

    sub_100005478();
    swift_allocError();
    return swift_willThrow();
  }

  v60 = (*(v54 + 56) + 16 * v57);
  v62 = *v60;
  v61 = v60[1];
  sub_1000054CC(*v60, v61);

  sub_10009F1F0();
  swift_allocObject();
  sub_10009F1E0();
  sub_100005520(&qword_1000D8390, type metadata accessor for AccountsRepresentativeMessageSchema, &protocol conformance descriptor for AccountsRepresentativeMessageSchema);
  v63 = v132;
  v64 = v163;
  sub_10009F1D0();
  v126 = v62;
  v127 = v61;
  v128 = 0;

  v65 = sub_1000A0390();
  v66 = *(v65 - 8);
  v67 = *(v66 + 56);
  v68 = v66 + 56;
  v69 = v162;
  (v67)(v162, 1, 1, v65);
  v70 = v157;
  sub_100005620(v63 + v64[8], v157, &qword_1000D8360, &qword_1000B1270);
  v71 = v158;
  if (v156[6](v70, 1, v158) != 1)
  {
    v125 = v68;
    v156 = v67;
    v75 = v131;
    sub_1000055BC(v70, v131);
    v76 = v147;
    sub_100005620(v75, v147, &qword_1000D8358, &unk_1000A5C50);
    v77 = v148;
    v78 = v149;
    if ((*(v148 + 48))(v76, 1, v149) == 1)
    {
      sub_100005688(v75, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
      v72 = &qword_1000D8358;
      v73 = &unk_1000A5C50;
      v74 = v76;
      goto LABEL_12;
    }

    (*(v77 + 32))(v150, v76, v78);
    v95 = *(v75 + *(v71 + 20));
    v96 = (v75 + *(v71 + 24));
    v97 = v96[1];
    if (v97 >> 60 == 15)
    {
      v98 = *(v77 + 16);
      v158 = v95;
      v99 = v135;
      v98(v135, v150, v78);
      (*(v77 + 56))(v99, 0, 1, v78);
      (*(v138 + 56))(v136, 1, 1, v139);

      v100 = v128;
      sub_1000A0380();
      v128 = v100;
      if (v100)
      {
        sub_100005568(v126, v127);
        (*(v77 + 8))(v150, v78);
        sub_100005688(v131, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
        sub_1000057C4(v69, &qword_1000D8368, &unk_1000A5C60);
        return sub_100005688(v63, type metadata accessor for AccountsRepresentativeMessageSchema);
      }

      (*(v77 + 8))(v150, v78);
      sub_100005688(v131, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
      sub_1000057C4(v69, &qword_1000D8368, &unk_1000A5C60);
      v105 = v130;
      (v156)(v130, 0, 1, v65);
      sub_1000056E8(v105, v69, &qword_1000D8368, &unk_1000A5C60);
      goto LABEL_13;
    }

    v101 = *v96;

    sub_100005750(v101, v97);
    v102 = v137;
    v103 = v150;
    v104 = v128;
    sub_1000A01A0();
    if (v104)
    {

      v128 = 0;
    }

    else
    {
      v157 = v101;
      v158 = v97;
      v106 = v148;
      v107 = *(v148 + 16);
      v108 = v133;
      v147 = 0;
      v109 = v149;
      v107(v133, v103, v149);
      (*(v106 + 56))(v108, 0, 1, v109);
      v110 = v102;
      v111 = v138;
      v112 = v134;
      v113 = v139;
      (*(v138 + 16))(v134, v110, v139);
      (*(v111 + 56))(v112, 0, 1, v113);
      v114 = v147;
      sub_1000A0380();
      v115 = (v111 + 8);
      if (!v114)
      {
        v128 = 0;
        sub_1000057B0(v157, v158);
        (*v115)(v137, v113);
        (*(v148 + 8))(v150, v149);
        sub_100005688(v131, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
        v123 = v162;
        sub_1000057C4(v162, &qword_1000D8368, &unk_1000A5C60);
        v124 = v129;
        (v156)(v129, 0, 1, v65);
        sub_1000056E8(v124, v123, &qword_1000D8368, &unk_1000A5C60);
        v79 = v159;
LABEL_34:
        v81 = v152;
        v80 = v153;
        v63 = v132;
        goto LABEL_14;
      }

      (*v115)(v137, v113);
      v128 = 0;
      v103 = v150;
      v101 = v157;
      v97 = v158;
    }

    v116 = sub_1000A0770();
    sub_100005764();
    v117 = sub_1000A0790();
    v118 = os_log_type_enabled(v117, v116);
    v79 = v159;
    if (v118)
    {
      v119 = v97;
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v120 = 138412290;
      swift_errorRetain();
      v122 = _swift_stdlib_bridgeErrorToNSError();
      *(v120 + 4) = v122;
      *v121 = v122;
      _os_log_impl(&_mh_execute_header, v117, v116, "Failed to decode shareInfo %@", v120, 0xCu);
      sub_1000057C4(v121, &qword_1000D83A0, &unk_1000A5C70);

      sub_1000057B0(v101, v119);

      (*(v148 + 8))(v150, v149);
    }

    else
    {
      sub_1000057B0(v101, v97);

      (*(v148 + 8))(v103, v149);
    }

    sub_100005688(v131, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
    goto LABEL_34;
  }

  v72 = &qword_1000D8360;
  v73 = &qword_1000B1270;
  v74 = v70;
LABEL_12:
  sub_1000057C4(v74, v72, v73);
LABEL_13:
  v79 = v159;
  v81 = v152;
  v80 = v153;
LABEL_14:
  v82 = v151;
  v83 = sub_1000A01D0();
  (*(*(v83 - 8) + 56))(v79, 1, 1, v83);
  v84 = v160;
  v85 = v154;
  if ((*(v63 + v64[12] + 8) & 1) == 0)
  {
    sub_1000A01C0();
    sub_1000057C4(v79, &qword_1000D8348, &qword_1000A5C40);
    v64 = v163;
    sub_1000056E8(v82, v79, &qword_1000D8348, &qword_1000A5C40);
  }

  v86 = sub_1000A0190();
  (*(*(v86 - 8) + 56))(v84, 1, 1, v86);
  if ((*(v63 + v64[13] + 8) & 1) == 0)
  {
    v87 = v146;
    sub_1000A0180();
    sub_1000057C4(v84, &qword_1000D8340, &qword_1000A5C38);
    sub_1000056E8(v87, v84, &qword_1000D8340, &qword_1000A5C38);
  }

  sub_1000A0160();
  v88 = sub_1000A0170();
  (*(*(v88 - 8) + 56))(v85, 0, 1, v88);
  sub_100005620(v79, v81, &qword_1000D8348, &qword_1000A5C40);
  sub_100005620(v84, v80, &qword_1000D8340, &qword_1000A5C38);
  v89 = *(v63 + 16);
  v157 = *(v63 + 32);
  v158 = v89;
  LODWORD(v156) = *(v63 + 48);
  sub_100005620(v162, v161, &qword_1000D8368, &unk_1000A5C60);

  v90 = v155;
  v91 = v128;
  sub_1000A01B0();
  if (v91)
  {
    sub_100005568(v126, v127);
  }

  else
  {
    v92 = v140;
    v93 = v142;
    v94 = v141;
    (*(v140 + 16))(v142, v90, v141);
    (*(v143 + 104))(v93, enum case for IDSClientMessageType.accountsRepresentativeMessage(_:), v144);
    sub_10009FC10();
    sub_100005568(v126, v127);
    (*(v92 + 8))(v90, v94);
  }

  sub_1000057C4(v160, &qword_1000D8340, &qword_1000A5C38);
  sub_1000057C4(v159, &qword_1000D8348, &qword_1000A5C40);
  sub_1000057C4(v162, &qword_1000D8368, &unk_1000A5C60);
  return sub_100005688(v132, type metadata accessor for AccountsRepresentativeMessageSchema);
}

unint64_t sub_1000052D4(uint64_t a1)
{
  result = sub_1000052FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000052FC()
{
  result = qword_1000D8330;
  if (!qword_1000D8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8330);
  }

  return result;
}

unint64_t sub_100005350()
{
  result = qword_1000D8378;
  if (!qword_1000D8378)
  {
    sub_1000053DC(&qword_1000D8370, &unk_1000AA060);
    sub_100005424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8378);
  }

  return result;
}

uint64_t sub_1000053DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005424()
{
  result = qword_1000D8380;
  if (!qword_1000D8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8380);
  }

  return result;
}

unint64_t sub_100005478()
{
  result = qword_1000D8388;
  if (!qword_1000D8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8388);
  }

  return result;
}

void sub_1000054CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_100005520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005568(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000055BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000017BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000056E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000017BC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_100005750(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1000054CC(a1, a2);
  }
}

unint64_t sub_100005764()
{
  result = qword_1000D8398;
  if (!qword_1000D8398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D8398);
  }

  return result;
}

uint64_t sub_1000057B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005568(result, a2);
  }

  return result;
}

uint64_t sub_1000057C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000017BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccountsRepresentativeMessageUnpackerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AccountsRepresentativeMessageUnpackerError(_WORD *result, int a2, int a3)
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

unint64_t sub_100005910()
{
  result = qword_1000D83A8;
  if (!qword_1000D83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83A8);
  }

  return result;
}

uint64_t sub_100005964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10009FF70();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v67 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D83B0, &qword_1000A5D58);
  v7 = __chkstk_darwin(v6 - 8);
  v66 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v68 = v53 - v10;
  __chkstk_darwin(v9);
  v70 = v53 - v11;
  v12 = sub_1000017BC(&qword_1000D83B8, &unk_1000B0670);
  v13 = __chkstk_darwin(v12 - 8);
  v14 = __chkstk_darwin(v13);
  v69 = v53 - v15;
  __chkstk_darwin(v14);
  v72 = v53 - v17;
  v19 = *a1;
  v18 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v24 = *(a1 + 56);
  if (v24 >> 60 == 15 && !*(a1 + 72) && *(a1 + 177) == 2)
  {
    sub_1000A0530();
    sub_1000061EC();
    swift_allocError();
    sub_1000A0520();
    return swift_willThrow();
  }

  v64 = *(a1 + 48);
  v65 = v22;
  v61 = v16;
  v57 = a2;
  v26 = sub_10009F860();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v29 = v72;
  v58 = v26;
  v59 = v27 + 56;
  v60 = v28;
  (v28)(v72, 1, 1);
  if (v24 >> 60 != 15)
  {
    v56 = v18;
    sub_100005750(v19, v18);
    sub_100005750(v20, v21);
    sub_100005750(v65, v23);
    sub_1000054CC(v64, v24);
    v30 = v71;
    sub_10009F850();
    result = sub_1000057C4(v29, &qword_1000D83B8, &unk_1000B0670);
    if (v30)
    {
      return result;
    }

    v71 = 0;
    v31 = v69;
    v60(v69, 0, 1, v58);
    sub_1000062B4(v31, v29);
  }

  v32 = sub_10009F5D0();
  v33 = *(v32 - 8);
  v34 = v33;
  v35 = *(v33 + 56);
  v36 = v33 + 56;
  v37 = v70;
  v35(v70, 1, 1, v32);
  if (!*(a1 + 72))
  {
    goto LABEL_21;
  }

  v53[1] = v36;
  v54 = v35;
  v55 = v34;
  LODWORD(v64) = *(a1 + 176);
  v38 = *(a1 + 160);
  v59 = *(a1 + 144);
  v60 = v38;
  v58 = *(a1 + 128);
  v69 = *(a1 + 112);
  v65 = *(a1 + 96);
  v56 = *(a1 + 80);

  v39 = v68;
  v40 = v71;
  sub_10009F5C0();
  if (v40)
  {
    sub_1000057C4(v72, &qword_1000D83B8, &unk_1000B0670);
LABEL_23:
    v42 = v70;
    return sub_1000057C4(v42, &qword_1000D83B0, &qword_1000A5D58);
  }

  v71 = 0;
  v54(v39, 0, 1, v32);
  v37 = v70;
  sub_100006244(v39, v70);
  v41 = *(v55 + 48);
  if (!v41(v37, 1, v32))
  {
    if (sub_10009F5B0() == 0xD000000000000010 && 0x80000001000A2F50 == v43)
    {
      goto LABEL_20;
    }

    v44 = sub_1000A0BD0();

    if (v44)
    {
      goto LABEL_21;
    }
  }

  if (!v41(v37, 1, v32))
  {
    if (sub_10009F5B0() == 0x65746164696C6156 && v45 == 0xEF6E656B6F545353)
    {
LABEL_20:

      goto LABEL_21;
    }

    v52 = sub_1000A0BD0();

    if ((v52 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    v46 = v72;
    sub_100005620(v72, v61, &qword_1000D83B8, &unk_1000B0670);
    sub_100005620(v37, v66, &qword_1000D83B0, &qword_1000A5D58);

    v47 = v67;
    v48 = v71;
    sub_10009FF60();
    sub_1000057C4(v46, &qword_1000D83B8, &unk_1000B0670);
    if (!v48)
    {
      v49 = v57;
      (*(v62 + 32))(v57, v47, v63);
      v50 = enum case for IDSDictionaryContext.idsScreenSharingInvitation(_:);
      v51 = sub_10009F9E0();
      (*(*(v51 - 8) + 104))(v49, v50, v51);
    }

    goto LABEL_23;
  }

LABEL_13:
  sub_1000A0530();
  sub_1000061EC();
  swift_allocError();
  sub_1000A0520();
  swift_willThrow();
  sub_1000057C4(v72, &qword_1000D83B8, &unk_1000B0670);
  v42 = v37;
  return sub_1000057C4(v42, &qword_1000D83B0, &qword_1000A5D58);
}

unint64_t sub_1000061EC()
{
  result = qword_1000D83C0;
  if (!qword_1000D83C0)
  {
    sub_1000A0530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83C0);
  }

  return result;
}

uint64_t sub_100006244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D83B0, &qword_1000A5D58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000062B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D83B8, &unk_1000B0670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100006330()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10000638C(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_1000063CC(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_100006424@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000068C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100006488@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000068C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000064B0(uint64_t a1)
{
  v2 = sub_100006740();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000064EC(uint64_t a1)
{
  v2 = sub_100006740();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSessionDeclineSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D83C8, &qword_1000A5D60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000022C4(a1, a1[3]);
  sub_100006740();
  sub_1000A0CE0();
  LOBYTE(v12) = 0;
  sub_1000A0B70();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1000A0B30();
    LOBYTE(v12) = 2;
    sub_1000A0B30();
    v12 = *(v3 + 40);
    v13 = v12;
    v11[23] = 3;
    sub_100006794(&v13, v11);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100006740()
{
  result = qword_1000D83D0;
  if (!qword_1000D83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83D0);
  }

  return result;
}

uint64_t sub_100006794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D83D8, &qword_1000A5D68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006804()
{
  result = qword_1000D83E0;
  if (!qword_1000D83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83E0);
  }

  return result;
}

double IDSSessionDeclineSchema.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10000690C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_1000068C0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CA068;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000690C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D8400, &unk_1000A5FE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_100006740();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v24) = 0;
  v9 = sub_1000A0A10();
  LOBYTE(v24) = 1;
  v10 = sub_1000A09D0();
  v12 = v11;
  v23 = v10;
  LOBYTE(v24) = 2;
  v21 = sub_1000A09D0();
  v22 = v13;
  v26 = 3;
  sub_100005424();
  sub_1000A0970();
  (*(v6 + 8))(v8, v5);
  v14 = v24;
  v15 = v25;

  v16 = v22;

  sub_100005750(v14, v15);
  sub_100002308(a1);

  result = sub_1000057B0(v14, v15);
  v18 = v23;
  *a2 = v9;
  a2[1] = v18;
  v19 = v21;
  a2[2] = v12;
  a2[3] = v19;
  a2[4] = v16;
  a2[5] = v14;
  a2[6] = v15;
  return result;
}

uint64_t sub_100006BCC(uint64_t a1)
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

uint64_t sub_100006BE8(uint64_t a1)
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

__n128 sub_100006C10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100006C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100006C74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100006CE4()
{
  result = qword_1000D83E8;
  if (!qword_1000D83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83E8);
  }

  return result;
}

unint64_t sub_100006D3C()
{
  result = qword_1000D83F0;
  if (!qword_1000D83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83F0);
  }

  return result;
}

unint64_t sub_100006D94()
{
  result = qword_1000D83F8;
  if (!qword_1000D83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D83F8);
  }

  return result;
}

uint64_t StatusKitInvitationSchema.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10009F960();
  v74 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v59 = &v57 - v8;
  v9 = __chkstk_darwin(v7);
  v60 = &v57 - v10;
  v11 = __chkstk_darwin(v9);
  v61 = &v57 - v12;
  v13 = __chkstk_darwin(v11);
  v62 = &v57 - v14;
  v15 = __chkstk_darwin(v13);
  v63 = &v57 - v16;
  v17 = __chkstk_darwin(v15);
  v64 = &v57 - v18;
  v19 = __chkstk_darwin(v17);
  v65 = &v57 - v20;
  v21 = __chkstk_darwin(v19);
  v66 = &v57 - v22;
  v23 = __chkstk_darwin(v21);
  v67 = &v57 - v24;
  v25 = __chkstk_darwin(v23);
  v68 = &v57 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v57 - v28;
  __chkstk_darwin(v27);
  v31 = &v57 - v30;
  v32 = sub_1000017BC(&qword_1000D8408, &qword_1000A6020);
  v72 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v57 - v33;
  sub_1000022C4(a1, a1[3]);
  sub_10000778C();
  sub_1000A0CE0();
  v70 = v2;
  v35 = v74;
  v36 = *(v74 + 104);
  v73 = v4;
  v69 = v36;
  (v36)(v31, enum case for StatusKitInvitation.StatusKitInvitationKey.channelIdentifier(_:), v4);
  v37 = v71;
  sub_1000A0B30();
  if (v37)
  {
    (*(v35 + 8))(v31, v73);
    return (*(v72 + 8))(v34, v32);
  }

  else
  {
    v38 = v68;
    v39 = v31;
    v40 = *(v35 + 8);
    v41 = v73;
    v74 = v35 + 8;
    v40(v39, v73);
    (v69)(v29, enum case for StatusKitInvitation.StatusKitInvitationKey.dateInvitationCreated(_:), v41);
    sub_1000A0B50();
    v42 = v32;
    v43 = v73;
    v71 = v40;
    v40(v29, v73);
    (v69)(v38, enum case for StatusKitInvitation.StatusKitInvitationKey.statusTypeIdentifier(_:), v43);
    sub_1000A0A80();
    v71(v38, v73);
    v44 = v67;
    v69();
    sub_1000A0A80();
    v71(v44, v73);
    v45 = v66;
    v69();
    sub_1000A0A80();
    v71(v45, v73);
    v46 = v65;
    v69();
    sub_1000A0A80();
    v71(v46, v73);
    v47 = v64;
    v69();
    sub_1000A0A80();
    v71(v47, v73);
    v48 = v63;
    v69();
    sub_1000A0A80();
    v71(v48, v73);
    v49 = v62;
    v69();
    sub_1000A0A80();
    v71(v49, v73);
    v50 = v61;
    v69();
    sub_1000A0A80();
    v52 = v50;
    v53 = v73;
    v71(v52, v73);
    (v69)(v60, enum case for StatusKitInvitation.StatusKitInvitationKey.channelCreationDate(_:), v53);
    v54 = v34;
    sub_1000A0AA0();
    v55 = v73;
    v71(v60, v73);
    (v69)(v59, enum case for StatusKitInvitation.StatusKitInvitationKey.isPersonalPresence(_:), v55);
    sub_1000A0A90();
    v56 = v73;
    v71(v59, v73);
    (v69)(v58, enum case for StatusKitInvitation.StatusKitInvitationKey.serviceIdentifier(_:), v56);
    sub_1000A0A80();
    v71(v58, v73);
    return (*(v72 + 8))(v54, v42);
  }
}

unint64_t sub_10000778C()
{
  result = qword_1000D8410;
  if (!qword_1000D8410)
  {
    sub_10009F960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8410);
  }

  return result;
}

double StatusKitInvitationSchema.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10000787C(a2, v10);
  if (!v2)
  {
    v5 = v18;
    *(a1 + 128) = v17;
    *(a1 + 144) = v5;
    *(a1 + 160) = v19;
    *(a1 + 176) = v20;
    v6 = v14;
    *(a1 + 64) = v13;
    *(a1 + 80) = v6;
    v7 = v16;
    *(a1 + 96) = v15;
    *(a1 + 112) = v7;
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a1 + 32) = v11;
    *(a1 + 48) = v9;
  }

  return result;
}

uint64_t sub_10000787C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = sub_10009F960();
  v132 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v122 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v123 = &v109 - v7;
  v8 = __chkstk_darwin(v6);
  v124 = &v109 - v9;
  v10 = __chkstk_darwin(v8);
  v126 = &v109 - v11;
  v12 = __chkstk_darwin(v10);
  v125 = &v109 - v13;
  v14 = __chkstk_darwin(v12);
  v127 = &v109 - v15;
  v16 = __chkstk_darwin(v14);
  v128 = &v109 - v17;
  v18 = __chkstk_darwin(v16);
  v129 = &v109 - v19;
  v20 = __chkstk_darwin(v18);
  v130 = &v109 - v21;
  v22 = __chkstk_darwin(v20);
  v131 = &v109 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v109 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v109 - v28;
  __chkstk_darwin(v27);
  v134 = &v109 - v30;
  v31 = sub_1000017BC(&qword_1000D8418, &unk_1000A6100);
  v133 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v109 - v32;
  v34 = a1[3];
  v137 = a1;
  sub_1000022C4(a1, v34);
  sub_10000778C();
  v135 = v3;
  v35 = v136;
  sub_1000A0CD0();
  if (v35)
  {
    return sub_100002308(v137);
  }

  v36 = v29;
  v120 = v26;
  v37 = v132;
  v39 = (v132 + 104);
  v38 = *(v132 + 104);
  v38(v134, enum case for StatusKitInvitation.StatusKitInvitationKey.channelIdentifier(_:), v135);
  v117 = sub_1000A09D0();
  v119 = v41;
  v136 = 0;
  v42 = v38;
  v45 = *(v37 + 8);
  v43 = v37 + 8;
  v44 = v45;
  v46 = v39;
  v47 = v135;
  (v45)(v134, v135);
  v118 = v42;
  v134 = v46;
  v42(v36, enum case for StatusKitInvitation.StatusKitInvitationKey.dateInvitationCreated(_:), v47);
  v48 = v136;
  sub_1000A09F0();
  if (v48)
  {
    v136 = v48;
    (v44)(v36, v47);
    (*(v133 + 8))(v33, v31);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    goto LABEL_8;
  }

  v50 = v49;
  v51 = v43;
  v52 = v33;
  (v44)(v36, v47);
  v53 = v120;
  v118(v120, enum case for StatusKitInvitation.StatusKitInvitationKey.statusTypeIdentifier(_:), v47);
  v114 = sub_1000A0920();
  v116 = v60;
  v61 = v53;
  v62 = v44;
  (v44)(v61, v47);
  v63 = v131;
  v118(v131, enum case for StatusKitInvitation.StatusKitInvitationKey.incomingRatchetState(_:), v47);
  v115 = v31;
  v113 = sub_1000A0920();
  v120 = v64;
  v62(v63, v47);
  v65 = v130;
  v66 = v118;
  v118(v130, enum case for StatusKitInvitation.StatusKitInvitationKey.invitationPayload(_:), v47);
  v112 = sub_1000A0920();
  v131 = v67;
  v62(v65, v47);
  v68 = v129;
  v66(v129, enum case for StatusKitInvitation.StatusKitInvitationKey.presenceIdentifier(_:), v47);
  v111 = sub_1000A0920();
  v130 = v69;
  v62(v68, v47);
  v70 = v128;
  v66(v128, enum case for StatusKitInvitation.StatusKitInvitationKey.channelToken(_:), v47);
  v71 = sub_1000A0920();
  v129 = v72;
  v110 = v71;
  v62(v70, v47);
  v73 = v127;
  v66(v127, enum case for StatusKitInvitation.StatusKitInvitationKey.channelServerKeyData(_:), v47);
  v74 = sub_1000A0920();
  v136 = 0;
  v128 = v75;
  v109 = v74;
  v62(v73, v47);
  v76 = v125;
  v66(v125, enum case for StatusKitInvitation.StatusKitInvitationKey.channelPeerKeyData(_:), v47);
  v77 = v115;
  v78 = v136;
  v79 = sub_1000A0920();
  v127 = v80;
  v136 = v78;
  if (v78)
  {
    v62(v76, v47);
    (*(v133 + 8))(v52, v77);
    v54 = 1;
    v55 = 1;
    v56 = 1;
    v57 = 1;
    v58 = 1;
    v59 = 1;
LABEL_8:
    sub_100002308(v137);

    if (v54)
    {

      if ((v55 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (!v55)
    {
LABEL_10:
      if (v56)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    if (v56)
    {
LABEL_11:

      if ((v57 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v57)
    {
LABEL_12:
      if (v58)
      {
        goto LABEL_13;
      }

LABEL_19:
      if (v59)
      {
      }

      return result;
    }

LABEL_18:

    if (v58)
    {
LABEL_13:

      if (v59)
      {
      }

      return result;
    }

    goto LABEL_19;
  }

  v81 = v79;
  v132 = v51;
  v125 = v62;
  v62(v76, v47);
  v118(v126, enum case for StatusKitInvitation.StatusKitInvitationKey.channelMembershipKeyData(_:), v47);
  v82 = v52;
  v83 = v136;
  v84 = sub_1000A0920();
  v86 = v85;
  v87 = v83;
  if (v83)
  {
    v136 = v83;
  }

  else
  {
    v88 = v84;
    v89 = v135;
    (v125)(v126, v135);
    v118(v124, enum case for StatusKitInvitation.StatusKitInvitationKey.channelCreationDate(_:), v89);
    v90 = sub_1000A0940();
    v136 = 0;
    v91 = v90;
    LOBYTE(v89) = v92;
    v93 = v135;
    (v125)(v124, v135);
    v159 = v89 & 1;
    v118(v123, enum case for StatusKitInvitation.StatusKitInvitationKey.isPersonalPresence(_:), v93);
    v94 = v136;
    LODWORD(v126) = sub_1000A0930();
    v136 = v94;
    if (v94)
    {
      v95 = v123;
    }

    else
    {
      v96 = v135;
      (v125)(v123, v135);
      v118(v122, enum case for StatusKitInvitation.StatusKitInvitationKey.serviceIdentifier(_:), v96);
      v97 = v136;
      v134 = sub_1000A0920();
      v124 = v98;
      v136 = v97;
      if (!v97)
      {
        (v125)(v122, v135);
        (*(v133 + 8))(v82, v115);
        v99 = v119;
        *&v138 = v117;
        *(&v138 + 1) = v119;
        *&v139 = v50;
        *(&v139 + 1) = v114;
        *&v140 = v116;
        *(&v140 + 1) = v113;
        *&v141 = v120;
        *(&v141 + 1) = v112;
        *&v142 = v131;
        *(&v142 + 1) = v111;
        *&v143 = v130;
        *(&v143 + 1) = v110;
        *&v144 = v129;
        *(&v144 + 1) = v109;
        *&v145 = v128;
        *(&v145 + 1) = v81;
        *&v146 = v127;
        *(&v146 + 1) = v88;
        *&v147 = v86;
        *(&v147 + 1) = v91;
        LODWORD(v135) = v159;
        LOBYTE(v148) = v159;
        v100 = v126;
        BYTE1(v148) = v126;
        WORD3(v148) = v158;
        *(&v148 + 2) = v157;
        v101 = v134;
        v102 = v124;
        *(&v148 + 1) = v134;
        v149 = v124;
        sub_100008798(&v138, v150);
        sub_100002308(v137);
        v150[0] = v117;
        v150[1] = v99;
        v150[2] = v50;
        v150[3] = v114;
        v150[4] = v116;
        v150[5] = v113;
        v150[6] = v120;
        v150[7] = v112;
        v150[8] = v131;
        v150[9] = v111;
        v150[10] = v130;
        v150[11] = v110;
        v150[12] = v129;
        v150[13] = v109;
        v150[14] = v128;
        v150[15] = v81;
        v150[16] = v127;
        v150[17] = v88;
        v150[18] = v86;
        v150[19] = v91;
        v151 = v135;
        v152 = v100;
        v154 = v158;
        v153 = v157;
        v155 = v101;
        v156 = v102;
        result = sub_1000087D0(v150);
        v103 = v147;
        v104 = v121;
        *(v121 + 128) = v146;
        *(v104 + 144) = v103;
        *(v104 + 160) = v148;
        *(v104 + 176) = v149;
        v105 = v143;
        *(v104 + 64) = v142;
        *(v104 + 80) = v105;
        v106 = v145;
        *(v104 + 96) = v144;
        *(v104 + 112) = v106;
        v107 = v139;
        *v104 = v138;
        *(v104 + 16) = v107;
        v108 = v141;
        *(v104 + 32) = v140;
        *(v104 + 48) = v108;
        return result;
      }

      v95 = v122;
    }

    v126 = v95;
  }

  (v125)(v126, v135);
  (*(v133 + 8))(v82, v115);
  sub_100002308(v137);

  if (!v87)
  {
  }

  return result;
}

__n128 sub_100008698(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1000086D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_10000871C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008810(uint64_t a1)
{
  v83 = __chkstk_darwin(a1);
  v84 = v2;
  v79 = v3;
  v4 = sub_10009F9D0();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D8428, &qword_1000A6188);
  __chkstk_darwin(v6 - 8);
  v82 = &v32 - v7;
  v8 = sub_1000017BC(&qword_1000D8430, &qword_1000A6190);
  __chkstk_darwin(v8 - 8);
  v81 = &v32 - v9;
  v10 = sub_1000017BC(&qword_1000D8438, &qword_1000A6198);
  __chkstk_darwin(v10 - 8);
  v80 = &v32 - v11;
  v12 = sub_1000017BC(&qword_1000D8440, &qword_1000A61A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_1000017BC(&qword_1000D8448, &qword_1000A61A8);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_10009FAE0();
  __chkstk_darwin(v18 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10009FB50();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  v25 = sub_10009F260();
  sub_100009058();
  sub_10009F250();
  if (v1)
  {
  }

  v74 = v17;
  v75 = v24;
  v83 = v14;
  v84 = v25;
  v72 = v22;
  v73 = v21;
  memcpy(v86, v85, 0x970uLL);
  v58 = sub_1000090AC(v86);
  v71 = v20;
  sub_10009FAD0();
  v69 = v86[3];
  v70 = v86[1];
  v63 = v86[6];
  v64 = v86[4];
  v67 = v86[7];
  v68 = v86[5];
  v65 = v86[11];
  v66 = v86[9];
  v61 = v86[8];
  v62 = v86[13];
  v56 = v86[14];
  v57 = v86[12];
  v59 = v86[10];
  v60 = v86[15];
  v50 = v86[16];

  sub_10009FAF0();
  v54 = v86[19];
  v53 = LOBYTE(v86[20]);
  v52 = v86[21];
  v51 = LOBYTE(v86[22]);
  sub_10009FB10();
  v49 = v86[25];
  v55 = 0;

  sub_10009FB30();
  v48 = v86[29];
  v47 = LOBYTE(v86[30]);
  v45 = LOBYTE(v86[32]);
  v46 = v86[31];
  v44 = v86[33];
  v43 = LOBYTE(v86[34]);
  v41 = LOBYTE(v86[36]);
  v42 = v86[35];
  v40 = v86[37];
  v39 = LOBYTE(v86[38]);
  v37 = LOBYTE(v86[40]);
  v38 = v86[39];
  v36 = v86[41];
  v35 = LOBYTE(v86[42]);
  sub_10009FB20();
  v33 = LOBYTE(v86[46]);
  v34 = v86[45];
  sub_10009FB00();
  v32 = v86[49];

  v27 = v75;
  v28 = v55;
  sub_10009FB40();
  if (v28)
  {

    return sub_1000099F8(v86);
  }

  else
  {
    sub_1000099F8(v86);
    v29 = v72;
    v30 = v73;
    v31 = v76;
    (*(v72 + 16))(v76, v27, v73);
    (*(v77 + 104))(v31, enum case for IDSClientMessageType.safetyMonitorMessage(_:), v78);
    sub_10009FC10();

    return (*(v29 + 8))(v27, v30);
  }
}

unint64_t sub_100008FDC(uint64_t a1)
{
  result = sub_100009004();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100009004()
{
  result = qword_1000D8420;
  if (!qword_1000D8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8420);
  }

  return result;
}

unint64_t sub_100009058()
{
  result = qword_1000D8450;
  if (!qword_1000D8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8450);
  }

  return result;
}

void *sub_1000090AC(const void *a1)
{
  v3 = sub_1000A0CC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  v50 = v7;
  *(v7 + 16) = &_swiftEmptyDictionarySingleton;
  v8 = (v7 + 16);
  *(&v45 + 1) = &type metadata for SafetyMonitorSchema;
  v44[0] = swift_allocObject();
  memcpy((v44[0] + 16), a1, 0x970uLL);
  sub_100009EE4(a1, &v46);
  sub_1000A0CA0();
  sub_1000A0CB0();
  (*(v4 + 8))(v6, v3);
  sub_1000A0890();

  sub_1000A08E0();
  if (v49)
  {
    v39 = "mmaryText";
    do
    {
      v9 = v47;
      v44[0] = v46;
      v44[1] = v47;
      sub_10000C86C(&v48, &v45);
      if (v9)
      {
        result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
        if (!v42)
        {
          goto LABEL_41;
        }

        v51._countAndFlagsBits = 0x7265766965636572;
        v51._object = 0xEE00656C646E6148;
        v11 = sub_1000A0660(v51);

        sub_100002308(v43);
        if (v11)
        {
          result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
          if (!v42)
          {
            goto LABEL_45;
          }

          v12 = sub_100009F40(v41, v42, v50);

          if (v1)
          {
            goto LABEL_38;
          }

          sub_100002308(v43);
          swift_beginAccess();
          v13 = sub_10000AA10(v40, v12);
          v15 = v14;
          v16 = sub_10009FEF0();
          if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
          {
            sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);

            swift_dynamicCast();
            sub_10009FEB0();
          }

          (v13)(v40, 0);
          swift_endAccess();
        }

        result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
        if (!v42)
        {
          goto LABEL_42;
        }

        v52._object = (v39 | 0x8000000000000000);
        v52._countAndFlagsBits = 0xD000000000000015;
        v17 = sub_1000A0660(v52);

        sub_100002308(v43);
        if (v17)
        {
          result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
          if (!v42)
          {
            goto LABEL_46;
          }

          v12 = sub_100009F40(v41, v42, v50);

          if (v1)
          {
            goto LABEL_38;
          }

          sub_100002308(v43);
          swift_beginAccess();
          v18 = sub_10000AA10(v40, v12);
          v20 = v19;
          v21 = sub_10009FEF0();
          if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
          {
            sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);

            swift_dynamicCast();
            sub_10009FEC0();
          }

          (v18)(v40, 0);
          swift_endAccess();
        }

        result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
        if (!v42)
        {
          goto LABEL_43;
        }

        v53._countAndFlagsBits = 0x4C52556572616873;
        v53._object = 0xE800000000000000;
        v22 = sub_1000A0660(v53);

        sub_100002308(v43);
        if (v22)
        {
          result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
          if (!v42)
          {
            goto LABEL_47;
          }

          v12 = sub_100009F40(v41, v42, v50);

          if (v1)
          {
            goto LABEL_38;
          }

          sub_100002308(v43);
          swift_beginAccess();
          v23 = sub_10000AA10(v40, v12);
          v25 = v24;
          v26 = sub_10009FEF0();
          if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
          {
            sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);

            swift_dynamicCast();
            sub_10009FEE0();
          }

          (v23)(v40, 0);
          swift_endAccess();
        }

        result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
        v12 = v42;
        if (!v42)
        {
          goto LABEL_44;
        }

        v54._countAndFlagsBits = 0x7069636974726170;
        v54._object = 0xED00004449746E61;
        v27 = sub_1000A0660(v54);

        sub_100002308(v43);
        if (v27)
        {
          result = sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);
          if (!v42)
          {
            goto LABEL_48;
          }

          v28 = sub_100009F40(v41, v42, v50);
          if (v1)
          {

LABEL_38:

            sub_100002308(v43);
            sub_1000057C4(v44, &qword_1000D8458, &qword_1000A61B0);

            return v12;
          }

          v29 = v28;

          sub_100002308(v43);
          swift_beginAccess();
          v30 = sub_10000AA10(v40, v29);
          v32 = v31;
          v33 = sub_10009FEF0();
          if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
          {
            sub_100005620(v44, &v41, &qword_1000D8458, &qword_1000A61B0);

            swift_dynamicCast();
            sub_10009FEA0();
          }

          (v30)(v40, 0);
          swift_endAccess();
        }
      }

      sub_1000057C4(v44, &qword_1000D8458, &qword_1000A61B0);
      sub_1000A08E0();
    }

    while (v49);
  }

  swift_beginAccess();
  v34 = *v8;
  v35 = *(*v8 + 16);
  if (!v35)
  {

    return &_swiftEmptyArrayStorage;
  }

  v12 = sub_10000AAD4(v35, 0);
  v36 = *(sub_10009FEF0() - 8);
  v39 = sub_10000C5C0(&v46, (v12 + ((*(v36 + 80) + 32) & ~*(v36 + 80))), v35, v34);
  v37 = v46;

  result = sub_10000C864(v37);
  if (v39 == v35)
  {

    return v12;
  }

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
  return result;
}

uint64_t sub_100009A4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009A84()
{

  return _swift_deallocObject(v0, 2432, 7);
}

uint64_t sub_100009F40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_1000017BC(&qword_1000D8460, &qword_1000A61B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v70 - v8;
  v87 = sub_10009FEF0();
  v81 = *(v87 - 8);
  __chkstk_darwin(v87);
  v77 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000017BC(&qword_1000D8470, &qword_1000A61C8);
  v12 = __chkstk_darwin(v11 - 8);
  v79 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v70 - v14;
  v85 = 0;
  v86 = 0xE000000000000000;
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    while (1)
    {
      v16 = sub_1000A05C0();
      sub_1000A0670();
      if ((sub_1000A0560() & 1) == 0)
      {
        break;
      }

      sub_1000A05F0();

      if (!(v16 >> 14))
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  result = v86;
  v18 = HIBYTE(v86) & 0xF;
  v19 = v85 & 0xFFFFFFFFFFFFLL;
  if ((v86 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v86) & 0xF;
  }

  else
  {
    v20 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_95;
  }

  if ((v86 & 0x1000000000000000) != 0)
  {
    v24 = sub_10000B9EC(v85, v86, 10);
    v68 = v67;

    if (v68)
    {
      return 0;
    }

    goto LABEL_72;
  }

  if ((v86 & 0x2000000000000000) != 0)
  {
    v84[0] = v85;
    v84[1] = v86 & 0xFFFFFFFFFFFFFFLL;
    if (v85 == 43)
    {
      if (!v18)
      {
LABEL_102:
        __break(1u);
        return result;
      }

      v21 = (v18 - 1);
      if (v18 != 1)
      {
        v24 = 0;
        v33 = v84 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          if (!is_mul_ok(v24, 0xAuLL))
          {
            break;
          }

          v27 = __CFADD__(10 * v24, v34);
          v24 = 10 * v24 + v34;
          if (v27)
          {
            break;
          }

          ++v33;
          if (!--v21)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v85 == 45)
    {
      if (!v18)
      {
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v21 = (v18 - 1);
      if (v18 != 1)
      {
        v24 = 0;
        v28 = v84 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          if (!is_mul_ok(v24, 0xAuLL))
          {
            break;
          }

          v27 = 10 * v24 >= v29;
          v24 = 10 * v24 - v29;
          if (!v27)
          {
            break;
          }

          ++v28;
          if (!--v21)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v18)
    {
      v24 = 0;
      v36 = v84;
      while (1)
      {
        v37 = *v36 - 48;
        if (v37 > 9)
        {
          break;
        }

        if (!is_mul_ok(v24, 0xAuLL))
        {
          break;
        }

        v27 = __CFADD__(10 * v24, v37);
        v24 = 10 * v24 + v37;
        if (v27)
        {
          break;
        }

        ++v36;
        if (!--v18)
        {
LABEL_69:
          LOBYTE(v21) = 0;
          goto LABEL_71;
        }
      }
    }
  }

  else
  {
    if ((v85 & 0x1000000000000000) != 0)
    {
      v21 = ((v86 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v69 = v86;
      v21 = sub_1000A0880();
      result = v69;
    }

    v22 = *v21;
    if (v22 == 43)
    {
      if (v19 >= 1)
      {
        v30 = v19 - 1;
        if (v19 != 1)
        {
          v24 = 0;
          if (!v21)
          {
            goto LABEL_71;
          }

          v31 = v21 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            if (!is_mul_ok(v24, 0xAuLL))
            {
              break;
            }

            v27 = __CFADD__(10 * v24, v32);
            v24 = 10 * v24 + v32;
            if (v27)
            {
              break;
            }

            ++v31;
            if (!--v30)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_70;
      }

      goto LABEL_101;
    }

    if (v22 == 45)
    {
      if (v19 >= 1)
      {
        v23 = v19 - 1;
        if (v19 != 1)
        {
          v24 = 0;
          if (!v21)
          {
            goto LABEL_71;
          }

          v25 = v21 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            if (!is_mul_ok(v24, 0xAuLL))
            {
              break;
            }

            v27 = 10 * v24 >= v26;
            v24 = 10 * v24 - v26;
            if (!v27)
            {
              break;
            }

            ++v25;
            if (!--v23)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_70;
      }

      __break(1u);
      goto LABEL_100;
    }

    if (v19)
    {
      v24 = 0;
      if (!v21)
      {
        goto LABEL_71;
      }

      while (1)
      {
        v35 = *v21 - 48;
        if (v35 > 9)
        {
          break;
        }

        if (!is_mul_ok(v24, 0xAuLL))
        {
          break;
        }

        v27 = __CFADD__(10 * v24, v35);
        v24 = 10 * v24 + v35;
        if (v27)
        {
          break;
        }

        ++v21;
        if (!--v19)
        {
          goto LABEL_69;
        }
      }
    }
  }

LABEL_70:
  v24 = 0;
  LOBYTE(v21) = 1;
LABEL_71:
  v83 = v21;
  v38 = v21;

  if (v38)
  {
    return 0;
  }

LABEL_72:
  if (!v24)
  {
    return 0;
  }

  v82 = v24;
  v71 = v9;
  v72 = v3;
  swift_beginAccess();
  v70 = a3;
  v39 = *(a3 + 16);
  v40 = *(v39 + 64);
  v73 = v39 + 64;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v40;
  v44 = (v41 + 63) >> 6;
  v74 = v81 + 32;
  v75 = v81 + 16;
  v78 = (v81 + 8);
  v76 = v39;

  v45 = 0;
  v47 = v79;
  v46 = v80;
  if (!v43)
  {
LABEL_77:
    if (v44 <= v45 + 1)
    {
      v49 = v45 + 1;
    }

    else
    {
      v49 = v44;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v48 >= v44)
      {
        v63 = sub_1000017BC(&qword_1000D8478, &qword_1000A61D0);
        (*(*(v63 - 8) + 56))(v47, 1, 1, v63);
        v43 = 0;
        goto LABEL_85;
      }

      v43 = *(v73 + 8 * v48);
      ++v45;
      if (v43)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_95:

    return 0;
  }

  while (1)
  {
    v48 = v45;
LABEL_84:
    v51 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v52 = v51 | (v48 << 6);
    v53 = v77;
    v54 = *(*(v76 + 48) + 8 * v52);
    v55 = v81;
    v56 = v87;
    (*(v81 + 16))(v77, *(v76 + 56) + *(v81 + 72) * v52, v87);
    v57 = sub_1000017BC(&qword_1000D8478, &qword_1000A61D0);
    v58 = *(v57 + 48);
    v59 = v79;
    *v79 = v54;
    v60 = *(v55 + 32);
    v47 = v59;
    v60(&v59[v58], v53, v56);
    (*(*(v57 - 8) + 56))(v47, 0, 1, v57);
    v50 = v48;
    v46 = v80;
LABEL_85:
    sub_10000C87C(v47, v46);
    v61 = sub_1000017BC(&qword_1000D8478, &qword_1000A61D0);
    if ((*(*(v61 - 8) + 48))(v46, 1, v61) == 1)
    {
      break;
    }

    v62 = *(v61 + 48);
    if (*v46 == v82)
    {

      (*v78)(&v46[v62], v87);
      return v82;
    }

    (*v78)(&v46[v62], v87);
    v45 = v50;
    if (!v43)
    {
      goto LABEL_77;
    }
  }

  v65 = v71;
  v64 = v72;
  v66 = v82;
  result = sub_10009FED0();
  if (!v64)
  {
    (*(v81 + 56))(v65, 0, 1, v87);
    swift_beginAccess();
    sub_10000A7C0(v65, v66);
    swift_endAccess();
    return v66;
  }

  return result;
}

uint64_t sub_10000A7C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000017BC(&qword_1000D8460, &qword_1000A61B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_10009FEF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1000057C4(a1, &qword_1000D8460, &qword_1000A61B8);
    v13 = sub_100002354(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000B784();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_10000B52C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1000057C4(v8, &qword_1000D8460, &qword_1000A61B8);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10000BF70(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t (*sub_10000AA10(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10000ABD0(v4, a2);
  return sub_10000AA88;
}

void sub_10000AA88(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

char *sub_10000AAD4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000017BC(&qword_1000D8488, &unk_1000A61E0);
  v4 = *(sub_10009FEF0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_10000ABD0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10000B1AC(v5);
  v5[9] = sub_10000ACD4(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10000AC74;
}

void sub_10000AC74(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10000ACD4(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_10009FEF0();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[3] = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[4] = swift_coroFrameAlloc();
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v9[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v9[6] = v14;
  v15 = *(*(sub_1000017BC(&qword_1000D8460, &qword_1000A61B8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(v15);
    v9[8] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v9[9] = v16;
  v18 = *v4;
  v19 = sub_100002354(a2);
  *(v9 + 88) = v20 & 1;
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      v27 = v19;
      sub_10000B784();
      v19 = v27;
      goto LABEL_17;
    }

    sub_10000B1E0(v24, a3 & 1);
    v19 = sub_100002354(a2);
    if ((v25 & 1) == (v28 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = sub_1000A0C00();
    __break(1u);
    return result;
  }

LABEL_17:
  v9[10] = v19;
  if (v25)
  {
    (*(v12 + 32))(v17, *(*v4 + 56) + *(v12 + 72) * v19, v10);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v12 + 56))(v17, v29, 1, v10);
  return sub_10000AF8C;
}

void sub_10000AF8C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_100005620(v5, v6, &qword_1000D8460, &qword_1000A61B8);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      v11 = *(*(v2 + 3) + 32);
      v11(*(v2 + 5), *(v2 + 7), *(v2 + 2));
      v12 = *v10;
      v13 = *(v2 + 10);
      v14 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = *(v2 + 4);
        v16 = *v2;
        v11(v15, v14, *(v2 + 2));
        sub_10000B6D8(v13, v16, v15, v12);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 8);
    sub_100005620(v5, v17, &qword_1000D8460, &qword_1000A61B8);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v18 != 1)
    {
      v19 = *(v2 + 1);
      v11 = *(*(v2 + 3) + 32);
      v11(*(v2 + 6), *(v2 + 8), *(v2 + 2));
      v12 = *v19;
      v13 = *(v2 + 10);
      v14 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(*(v2 + 3) + 72) * v13, v14, *(v2 + 2));
      goto LABEL_10;
    }
  }

  sub_1000057C4(v9, &qword_1000D8460, &qword_1000A61B8);
  if (v8)
  {
    sub_10000B52C(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v20 = *(v2 + 8);
  v21 = *(v2 + 9);
  v23 = *(v2 + 6);
  v22 = *(v2 + 7);
  v25 = *(v2 + 4);
  v24 = *(v2 + 5);
  sub_1000057C4(v21, &qword_1000D8460, &qword_1000A61B8);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

uint64_t (*sub_10000B1AC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10000B1D4;
}

uint64_t sub_10000B1E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_10009FEF0();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000017BC(&qword_1000D8468, &qword_1000A61C0);
  v37 = v4;
  result = sub_1000A08C0();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_1000A0C50();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_10000B52C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000A07F0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1000A0C50();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_10009FEF0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000B6D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_10009FEF0();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_10000B784()
{
  v1 = v0;
  v29 = sub_10009FEF0();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000017BC(&qword_1000D8468, &qword_1000A61C0);
  v3 = *v0;
  v4 = sub_1000A08B0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unsigned __int8 *sub_10000B9EC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1000A0680();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000C0D8(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000A0880();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10000BF70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100002354(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000B784();
      goto LABEL_7;
    }

    sub_10000B1E0(v13, a3 & 1);
    v24 = sub_100002354(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1000A0C00();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_10009FEF0();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_10000B6D8(v10, a2, a1, v16);
}

uint64_t sub_10000C0D8(uint64_t a1, unint64_t a2)
{
  v2 = sub_1000A0690();
  v6 = sub_10000C158(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10000C158(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1000A07B0();
    if (!v9 || (v10 = v9, v11 = sub_10000C2B0(v9, 0), v12 = sub_10000C324(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1000A05A0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000A05A0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000A0880();
LABEL_4:

  return sub_1000A05A0();
}

void *sub_10000C2B0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000017BC(&qword_1000D8480, &qword_1000A61D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_10000C324(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000C544(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000A0620();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000A0880();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000C544(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000A0600();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10000C544(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000A0650();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000A0610();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10000C5C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_10009FEF0();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

_OWORD *sub_10000C86C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000C87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8470, &qword_1000A61C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10000C8FC()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10000C9B4(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10000CA58(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10000CB0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000D920(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000CB3C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x646E616D6D6F63;
  v4 = 0xE400000000000000;
  v5 = 1702125924;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x746E65696C63;
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

uint64_t sub_10000CBB0()
{
  v1 = 0x646E616D6D6F63;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x746E65696C63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10000CC20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000D920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000CC48(uint64_t a1)
{
  v2 = sub_10000CEF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000CC84(uint64_t a1)
{
  v2 = sub_10000CEF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSampleMessageSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8490, &unk_1000A61F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000022C4(a1, a1[3]);
  sub_10000CEF8();
  sub_1000A0CE0();
  v8[15] = 0;
  sub_1000A0B60();
  if (!v1)
  {
    v8[14] = 1;
    sub_1000A0B30();
    type metadata accessor for IDSSampleMessageSchema(0);
    v8[13] = 2;
    sub_10009F350();
    sub_10000D38C(&qword_1000D84A0, &protocol conformance descriptor for Date);
    sub_1000A0AD0();
    v8[12] = 3;
    sub_1000A0AB0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10000CEF8()
{
  result = qword_1000D8498;
  if (!qword_1000D8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8498);
  }

  return result;
}

uint64_t type metadata accessor for IDSSampleMessageSchema(uint64_t a1)
{
  result = qword_1000D8518;
  if (!qword_1000D8518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSSampleMessageSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1000017BC(&qword_1000D84B0, &qword_1000A6200);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for IDSSampleMessageSchema(0);
  __chkstk_darwin(v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000022C4(a1, a1[3]);
  sub_10000CEF8();
  v12 = v24;
  sub_1000A0CD0();
  if (v12)
  {
    return sub_100002308(a1);
  }

  v13 = a1;
  v14 = v22;
  v28 = 0;
  *v11 = sub_1000A0A00();
  v27 = 1;
  v11[1] = sub_1000A09D0();
  v11[2] = v15;
  sub_10009F350();
  v26 = 2;
  sub_10000D38C(&qword_1000D84B8, &protocol conformance descriptor for Date);
  sub_1000A0970();
  sub_10000D3D0(v5, v11 + *(v9 + 24));
  v25 = 3;
  v16 = sub_1000A0950();
  v18 = v17;
  (*(v14 + 8))(v8, v23);
  v19 = v11 + *(v9 + 28);
  *v19 = v16;
  v19[8] = v18 & 1;
  sub_10000D440(v11, v21);
  sub_100002308(v13);
  return sub_10000D4A4(v11);
}

uint64_t sub_10000D324(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D38C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009F350();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleMessageSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D4A4(uint64_t a1)
{
  v2 = type metadata accessor for IDSSampleMessageSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000D614(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000D6C4(uint64_t a1)
{
  sub_10000D760(319);
  if (v1 <= 0x3F)
  {
    sub_10000D7B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000D760(uint64_t a1)
{
  if (!qword_1000D8528)
  {
    sub_10009F350();
    v1 = sub_1000A07A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1000D8528);
    }
  }
}

void sub_10000D7B8()
{
  if (!qword_1000D8530)
  {
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D8530);
    }
  }
}

unint64_t sub_10000D81C()
{
  result = qword_1000D8568;
  if (!qword_1000D8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8568);
  }

  return result;
}

unint64_t sub_10000D874()
{
  result = qword_1000D8570;
  if (!qword_1000D8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8570);
  }

  return result;
}

unint64_t sub_10000D8CC()
{
  result = qword_1000D8578;
  if (!qword_1000D8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8578);
  }

  return result;
}

unint64_t sub_10000D920(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CA0E8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000D96C@<X0>(uint64_t a3@<X8>)
{
  v39 = a3;
  v4 = sub_1000017BC(&qword_1000D8580, &qword_1000A63E0);
  __chkstk_darwin(v4 - 8);
  v6 = v33 - v5;
  v7 = sub_10009F690();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v33 - v12;
  sub_10009F270();
  swift_allocObject();
  v14 = sub_10009F260();
  sub_10000DFC4();
  sub_10009F250();
  if (v3)
  {
  }

  v34 = v6;
  v33[2] = 0;
  v37 = v11;
  v36 = v14;
  v38 = v13;
  v35 = v8;
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  sub_1000017BC(&qword_1000D8590, &qword_1000B1190);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000A63D0;
  v17 = sub_10000E018();
  *(v16 + 56) = sub_1000017BC(&qword_1000D85A0, &qword_1000A63E8);
  *(v16 + 32) = v17;
  v18 = objc_allocWithZone(NSSet);
  isa = sub_1000A06F0().super.isa;

  v20 = [v18 initWithArray:isa];

  v41[0] = 0;
  result = sub_1000A0720();
  if (v41[0])
  {

    v21 = objc_opt_self();
    v22 = sub_1000A0710().super.isa;
    v23 = sub_10009F300().super.isa;
    v40 = 0;
    v24 = [v21 _strictlyUnarchivedObjectOfClasses:v22 fromData:v23 error:&v40];

    v25 = v40;
    v26 = v37;
    if (!v24)
    {
      v31 = v25;

      sub_10009F280();

      swift_willThrow();

      return sub_10000E064(&v42);
    }

    sub_1000A07D0();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v27 = v35;
    v28 = v38;
    v29 = v7;
    v30 = v34;
    v32 = v40;
    sub_10009F680();
    result = (*(v27 + 48))(v30, 1, v29);
    if (result != 1)
    {

      (*(v27 + 32))(v28, v30, v29);
      v34 = v42;
      v33[1] = v43;
      (*(v27 + 16))(v26, v28, v29);
      v35 = v29;
      v33[0] = v46;

      [v32 coordinate];
      [v32 coordinate];
      sub_10009F6A0();

      sub_10000E064(&v42);
      return (*(v27 + 8))(v38, v35);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10000DFC4()
{
  result = qword_1000D8588;
  if (!qword_1000D8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8588);
  }

  return result;
}

unint64_t sub_10000E018()
{
  result = qword_1000D8598;
  if (!qword_1000D8598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D8598);
  }

  return result;
}

Swift::Int sub_10000E0C8()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_10000E13C(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_10000E190@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CA168;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10000E220@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CA1A0;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10000E284(uint64_t a1)
{
  v2 = sub_10000ED7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E2C0(uint64_t a1)
{
  v2 = sub_10000ED7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E2FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D85B8, &qword_1000A64E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000022C4(a1, a1[3]);
  sub_10000ED7C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v9 = sub_1000A09D0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100002308(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_10000E478(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D85C8, &qword_1000A64F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000022C4(a1, a1[3]);
  sub_10000ED7C();
  sub_1000A0CE0();
  sub_1000A0B30();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10000E5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = sub_10009F630();
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  __chkstk_darwin(v5);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009F6B0();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v55 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10009F8A0();
  v47 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10009F9D0();
  v53 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009F700();
  v46 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F270();
  swift_allocObject();
  v18 = sub_10009F260();
  sub_10000EC3C();
  v19 = a1;
  v20 = a2;
  v21 = v59;
  sub_10009F250();
  if (v21)
  {
  }

  v42 = v15;
  v43 = v17;
  v44 = v12;
  v45 = 0;
  v23 = v54;
  v22 = v55;
  v59 = v18;
  v24 = v53;
  result = sub_10000EC90(v57, v58);
  if (result <= 1u)
  {
    if (result)
    {
      v35 = v45;
      sub_10006C734(a2, v11);
      if (v35)
      {
      }

      v38 = v47;
      (*(v47 + 16))(v14, v11, v23);
      (*(v24 + 104))(v14, enum case for IDSClientMessageType.fmfShareInvitation(_:), v44);
      sub_10009FC10();

      return (*(v38 + 8))(v11, v23);
    }

    else
    {
      v31 = v43;
      v32 = v45;
      sub_100044330(v19, a2);
      if (v32)
      {
      }

      v33 = v46;
      v34 = v42;
      (*(v46 + 16))(v14, v31, v42);
      (*(v24 + 104))(v14, enum case for IDSClientMessageType.fmfMappingPacket(_:), v44);
      sub_10009FC10();

      return (*(v33 + 8))(v31, v34);
    }
  }

  else if (result == 2)
  {
    v36 = v22;
    v37 = v45;
    sub_10000D96C(v22);
    if (v37)
    {
    }

    v39 = v48;
    v40 = v49;
    (*(v48 + 16))(v14, v36, v49);
    (*(v24 + 104))(v14, enum case for IDSClientMessageType.fmfFenceTrigger(_:), v44);
    sub_10009FC10();

    return (*(v39 + 8))(v36, v40);
  }

  else if (result == 3)
  {
    v26 = v50;
    v27 = v45;
    sub_10003FF64(v19, v20);
    v28 = v44;
    v30 = v51;
    v29 = v52;
    if (v27)
    {
    }

    (*(v52 + 16))(v14, v26, v51);
    (*(v24 + 104))(v14, enum case for IDSClientMessageType.fmfDeleteFence(_:), v28);
    sub_10009FC10();

    return (*(v29 + 8))(v26, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000EBC0(uint64_t a1)
{
  result = sub_10000EBE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000EBE8()
{
  result = qword_1000D85A8;
  if (!qword_1000D85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85A8);
  }

  return result;
}

unint64_t sub_10000EC3C()
{
  result = qword_1000D85B0;
  if (!qword_1000D85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85B0);
  }

  return result;
}

unint64_t sub_10000EC90(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000C9F68;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

__n128 sub_10000ECDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000ECE8(uint64_t a1, int a2)
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

uint64_t sub_10000ED30(uint64_t result, int a2, int a3)
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

unint64_t sub_10000ED7C()
{
  result = qword_1000D85C0;
  if (!qword_1000D85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85C0);
  }

  return result;
}

unint64_t sub_10000EDE4()
{
  result = qword_1000D85D0;
  if (!qword_1000D85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85D0);
  }

  return result;
}

unint64_t sub_10000EE3C()
{
  result = qword_1000D85D8;
  if (!qword_1000D85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85D8);
  }

  return result;
}

unint64_t sub_10000EE94()
{
  result = qword_1000D85E0;
  if (!qword_1000D85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85E0);
  }

  return result;
}

unint64_t sub_10000EEE8(char a1)
{
  result = 0x546567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x65746144646E6573;
      break;
    case 3:
      result = 0x496567617373656DLL;
      break;
    case 4:
      result = 0x496E6F6973736573;
      break;
    case 5:
      result = 0x547972616D6D7573;
      break;
    case 6:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
      result = 0x7265766965636572;
      break;
    case 7:
      v3 = 5;
      goto LABEL_87;
    case 8:
      result = 0x4C52556572616873;
      break;
    case 9:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case -128:
    case -127:
    case -126:
    case -125:
    case -124:
    case -123:
    case -122:
    case -121:
    case -120:
    case -119:
    case -118:
    case -117:
    case -116:
    case -115:
    case -114:
    case -113:
    case -112:
    case -111:
    case -110:
    case -109:
    case -108:
    case -107:
    case -106:
    case -105:
    case -104:
      result = 0x7069636974726170;
      break;
    case 10:
      result = 0x546E6F6973736573;
      break;
    case 11:
    case 28:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
      result = 0xD000000000000016;
      break;
    case 12:
      v3 = 9;
LABEL_87:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x5472656767697274;
      break;
    case 15:
      result = 0x656475746974616CLL;
      break;
    case 16:
      result = 0x64757469676E6F6CLL;
      break;
    case 17:
      result = 1668183400;
      break;
    case 18:
      result = 0x6564757469746C61;
      break;
    case 19:
      result = 1668183414;
      break;
    case 20:
      result = 0x6F4C664F656D6974;
      break;
    case 21:
      result = 0x636E657265666572;
      break;
    case 22:
      result = 0x6465657073;
      break;
    case 23:
      result = 0x5472656767697274;
      break;
    case 24:
      result = 0x6143797465666173;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    case 26:
      result = 0x697254534F537369;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 37:
      result = 0xD000000000000010;
      break;
    case 38:
      result = 0xD000000000000010;
      break;
    case 39:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0xD000000000000010;
      break;
    case 41:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0xD000000000000010;
      break;
    case 43:
      result = 0xD000000000000010;
      break;
    case 44:
      result = 0xD000000000000010;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 46:
      result = 0xD000000000000010;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    case 48:
      result = 0xD000000000000010;
      break;
    case 49:
      result = 0xD000000000000010;
      break;
    case 50:
      result = 0xD000000000000010;
      break;
    case 51:
      result = 0xD000000000000010;
      break;
    case 52:
      result = 0xD000000000000010;
      break;
    case 53:
      result = 0xD000000000000010;
      break;
    case 54:
      result = 0xD000000000000010;
      break;
    case 55:
      result = 0xD000000000000010;
      break;
    case 56:
      result = 0xD000000000000010;
      break;
    case 57:
      result = 0xD000000000000010;
      break;
    case 58:
      result = 0xD000000000000010;
      break;
    case 59:
      result = 0xD000000000000010;
      break;
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
      result = 0xD000000000000017;
      break;
    case 91:
      result = 0x4C52556572616873;
      break;
    case 92:
      result = 0x4C52556572616873;
      break;
    case 93:
      result = 0x4C52556572616873;
      break;
    case 94:
      result = 0x4C52556572616873;
      break;
    case 95:
      result = 0x4C52556572616873;
      break;
    case 96:
      result = 0x4C52556572616873;
      break;
    case 97:
      result = 0x4C52556572616873;
      break;
    case 98:
      result = 0x4C52556572616873;
      break;
    case 99:
      result = 0x4C52556572616873;
      break;
    case 100:
      result = 0x4C52556572616873;
      break;
    case 101:
      result = 0x4C52556572616873;
      break;
    case 102:
      result = 0x4C52556572616873;
      break;
    case 103:
      result = 0x4C52556572616873;
      break;
    case 104:
      result = 0x4C52556572616873;
      break;
    case 105:
      result = 0x4C52556572616873;
      break;
    case 106:
      result = 0x4C52556572616873;
      break;
    case 107:
      result = 0x4C52556572616873;
      break;
    case 108:
      result = 0x4C52556572616873;
      break;
    case 109:
      result = 0x4C52556572616873;
      break;
    case 110:
      result = 0x4C52556572616873;
      break;
    case 111:
      result = 0x4C52556572616873;
      break;
    case 112:
      result = 0x4C52556572616873;
      break;
    case 113:
      result = 0x4C52556572616873;
      break;
    case 114:
      result = 0x4C52556572616873;
      break;
    case 115:
      result = 0x4C52556572616873;
      break;
    case 116:
      result = 0x4C52556572616873;
      break;
    case 117:
      result = 0x4C52556572616873;
      break;
    case 118:
      result = 0x4C52556572616873;
      break;
    case 119:
      result = 0x4C52556572616873;
      break;
    case 120:
      result = 0x4C52556572616873;
      break;
    case 121:
      result = 0x4C52556572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000FE8C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000EEE8(*a1);
  v5 = v4;
  if (v3 == sub_10000EEE8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_10000FF14()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10000EEE8(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10000FF78(uint64_t a1)
{
  sub_10000EEE8(*v1);
  sub_1000A05B0();
}

Swift::Int sub_10000FFCC(uint64_t a1)
{
  v2 = *v1;
  sub_1000A0C60();
  sub_10000EEE8(v2);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10001002C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011CC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10001005C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000EEE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100010090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100011CC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000100C4(uint64_t a1)
{
  v2 = sub_100011C0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010100(uint64_t a1)
{
  v2 = sub_100011C0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SafetyMonitorSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D85E8, &qword_1000A6650);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_1000022C4(a1, a1[3]);
  sub_100011C0C();
  sub_1000A0CE0();
  v9 = 0;
  sub_1000A0B70();
  if (!v1)
  {
    v9 = 1;
    sub_1000A0B70();
    v9 = 2;
    sub_1000A0B50();
    v9 = 3;
    sub_1000A0B30();
    v9 = 4;
    sub_1000A0B30();
    v9 = 5;
    sub_1000A0A80();
    v9 = 6;
    sub_1000A0A80();
    v9 = 7;
    sub_1000A0A80();
    v9 = 8;
    sub_1000A0A80();
    v9 = 9;
    sub_1000A0A80();
    v9 = 10;
    sub_1000A0AC0();
    v9 = 11;
    sub_1000A0AC0();
    v9 = 12;
    sub_1000A0A80();
    v9 = 13;
    sub_1000A0AC0();
    v9 = 14;
    sub_1000A0AA0();
    v9 = 15;
    sub_1000A0AA0();
    v9 = 16;
    sub_1000A0AA0();
    v9 = 17;
    sub_1000A0AA0();
    v9 = 18;
    sub_1000A0AA0();
    v9 = 19;
    sub_1000A0AA0();
    v9 = 20;
    sub_1000A0AA0();
    v9 = 21;
    sub_1000A0AC0();
    v9 = 22;
    sub_1000A0AA0();
    v9 = 23;
    sub_1000A0AC0();
    v9 = 24;
    sub_1000A0A80();
    v9 = 25;
    sub_1000A0A80();
    v9 = 26;
    sub_1000A0A90();
    v9 = 27;
    sub_1000A0AA0();
    v9 = 28;
    sub_1000A0AA0();
    v9 = 29;
    sub_1000A0A80();
    v9 = 30;
    sub_1000A0A80();
    v9 = 31;
    sub_1000A0A80();
    v9 = 32;
    sub_1000A0A80();
    v9 = 33;
    sub_1000A0A80();
    v9 = 34;
    sub_1000A0A80();
    v9 = 35;
    sub_1000A0A80();
    v9 = 36;
    sub_1000A0A80();
    v9 = 37;
    sub_1000A0A80();
    v9 = 38;
    sub_1000A0A80();
    v9 = 39;
    sub_1000A0A80();
    v9 = 40;
    sub_1000A0A80();
    v9 = 41;
    sub_1000A0A80();
    v9 = 42;
    sub_1000A0A80();
    v9 = 43;
    sub_1000A0A80();
    v9 = 44;
    sub_1000A0A80();
    v9 = 45;
    sub_1000A0A80();
    v9 = 46;
    sub_1000A0A80();
    v9 = 47;
    sub_1000A0A80();
    v9 = 48;
    sub_1000A0A80();
    v9 = 49;
    sub_1000A0A80();
    v9 = 50;
    sub_1000A0A80();
    v9 = 51;
    sub_1000A0A80();
    v9 = 52;
    sub_1000A0A80();
    v9 = 53;
    sub_1000A0A80();
    v9 = 54;
    sub_1000A0A80();
    v9 = 55;
    sub_1000A0A80();
    v9 = 56;
    sub_1000A0A80();
    v9 = 57;
    sub_1000A0A80();
    v9 = 58;
    sub_1000A0A80();
    v9 = 59;
    sub_1000A0A80();
    v9 = 60;
    sub_1000A0A80();
    v9 = 61;
    sub_1000A0A80();
    v9 = 62;
    sub_1000A0A80();
    v9 = 63;
    sub_1000A0A80();
    v9 = 64;
    sub_1000A0A80();
    v9 = 65;
    sub_1000A0A80();
    v9 = 66;
    sub_1000A0A80();
    v9 = 67;
    sub_1000A0A80();
    v9 = 68;
    sub_1000A0A80();
    v9 = 69;
    sub_1000A0A80();
    v9 = 70;
    sub_1000A0A80();
    v9 = 71;
    sub_1000A0A80();
    v9 = 72;
    sub_1000A0A80();
    v9 = 73;
    sub_1000A0A80();
    v9 = 74;
    sub_1000A0A80();
    v9 = 75;
    sub_1000A0A80();
    v9 = 76;
    sub_1000A0A80();
    v9 = 77;
    sub_1000A0A80();
    v9 = 78;
    sub_1000A0A80();
    v9 = 79;
    sub_1000A0A80();
    v9 = 80;
    sub_1000A0A80();
    v9 = 81;
    sub_1000A0A80();
    v9 = 82;
    sub_1000A0A80();
    v9 = 83;
    sub_1000A0A80();
    v9 = 84;
    sub_1000A0A80();
    v9 = 85;
    sub_1000A0A80();
    v9 = 86;
    sub_1000A0A80();
    v9 = 87;
    sub_1000A0A80();
    v9 = 88;
    sub_1000A0A80();
    v9 = 89;
    sub_1000A0A80();
    v9 = 90;
    sub_1000A0A80();
    v9 = 91;
    sub_1000A0A80();
    v9 = 92;
    sub_1000A0A80();
    v9 = 93;
    sub_1000A0A80();
    v9 = 94;
    sub_1000A0A80();
    v9 = 95;
    sub_1000A0A80();
    v9 = 96;
    sub_1000A0A80();
    v9 = 97;
    sub_1000A0A80();
    v9 = 98;
    sub_1000A0A80();
    v9 = 99;
    sub_1000A0A80();
    v9 = 100;
    sub_1000A0A80();
    v9 = 101;
    sub_1000A0A80();
    v9 = 102;
    sub_1000A0A80();
    v9 = 103;
    sub_1000A0A80();
    v9 = 104;
    sub_1000A0A80();
    v9 = 105;
    sub_1000A0A80();
    v9 = 106;
    sub_1000A0A80();
    v9 = 107;
    sub_1000A0A80();
    v9 = 108;
    sub_1000A0A80();
    v9 = 109;
    sub_1000A0A80();
    v9 = 110;
    sub_1000A0A80();
    v9 = 111;
    sub_1000A0A80();
    v9 = 112;
    sub_1000A0A80();
    v9 = 113;
    sub_1000A0A80();
    v9 = 114;
    sub_1000A0A80();
    v9 = 115;
    sub_1000A0A80();
    v9 = 116;
    sub_1000A0A80();
    v9 = 117;
    sub_1000A0A80();
    v9 = 118;
    sub_1000A0A80();
    v9 = 119;
    sub_1000A0A80();
    v9 = 120;
    sub_1000A0A80();
    v9 = 121;
    sub_1000A0A80();
    v9 = 122;
    sub_1000A0A80();
    v9 = 123;
    sub_1000A0A80();
    v9 = 124;
    sub_1000A0A80();
    v9 = 125;
    sub_1000A0A80();
    v9 = 126;
    sub_1000A0A80();
    v9 = 127;
    sub_1000A0A80();
    v9 = 0x80;
    sub_1000A0A80();
    v9 = -127;
    sub_1000A0A80();
    v9 = -126;
    sub_1000A0A80();
    v9 = -125;
    sub_1000A0A80();
    v9 = -124;
    sub_1000A0A80();
    v9 = -123;
    sub_1000A0A80();
    v9 = -122;
    sub_1000A0A80();
    v9 = -121;
    sub_1000A0A80();
    v9 = -120;
    sub_1000A0A80();
    v9 = -119;
    sub_1000A0A80();
    v9 = -118;
    sub_1000A0A80();
    v9 = -117;
    sub_1000A0A80();
    v9 = -116;
    sub_1000A0A80();
    v9 = -115;
    sub_1000A0A80();
    v9 = -114;
    sub_1000A0A80();
    v9 = -113;
    sub_1000A0A80();
    v9 = -112;
    sub_1000A0A80();
    v9 = -111;
    sub_1000A0A80();
    v9 = -110;
    sub_1000A0A80();
    v9 = -109;
    sub_1000A0A80();
    v9 = -108;
    sub_1000A0A80();
    v9 = -107;
    sub_1000A0A80();
    v9 = -106;
    sub_1000A0A80();
    v9 = -105;
    sub_1000A0A80();
    v9 = -104;
    sub_1000A0A80();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100011C0C()
{
  result = qword_1000D85F0;
  if (!qword_1000D85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85F0);
  }

  return result;
}

void *SafetyMonitorSchema.init(from:)@<X0>(void *a1@<X8>)
{
  result = sub_100012344(v4);
  if (!v1)
  {
    return memcpy(a1, v4, 0x970uLL);
  }

  return result;
}

uint64_t sub_100011CC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000A0BE0();

  v3 = 0;
  result = 45;
  switch(v2)
  {
    case 0:
      goto LABEL_109;
    case 1:
      v3 = 1;
      goto LABEL_109;
    case 2:
      v3 = 2;
      goto LABEL_109;
    case 3:
      v3 = 3;
      goto LABEL_109;
    case 4:
      v3 = 4;
      goto LABEL_109;
    case 5:
      v3 = 5;
      goto LABEL_109;
    case 6:
      v3 = 6;
      goto LABEL_109;
    case 7:
      v3 = 7;
      goto LABEL_109;
    case 8:
      v3 = 8;
      goto LABEL_109;
    case 9:
      v3 = 9;
      goto LABEL_109;
    case 10:
      v3 = 10;
      goto LABEL_109;
    case 11:
      v3 = 11;
      goto LABEL_109;
    case 12:
      v3 = 12;
      goto LABEL_109;
    case 13:
      v3 = 13;
      goto LABEL_109;
    case 14:
      v3 = 14;
      goto LABEL_109;
    case 15:
      v3 = 15;
      goto LABEL_109;
    case 16:
      v3 = 16;
      goto LABEL_109;
    case 17:
      v3 = 17;
      goto LABEL_109;
    case 18:
      v3 = 18;
      goto LABEL_109;
    case 19:
      v3 = 19;
      goto LABEL_109;
    case 20:
      v3 = 20;
      goto LABEL_109;
    case 21:
      v3 = 21;
      goto LABEL_109;
    case 22:
      v3 = 22;
      goto LABEL_109;
    case 23:
      v3 = 23;
      goto LABEL_109;
    case 24:
      v3 = 24;
      goto LABEL_109;
    case 25:
      v3 = 25;
      goto LABEL_109;
    case 26:
      v3 = 26;
      goto LABEL_109;
    case 27:
      v3 = 27;
      goto LABEL_109;
    case 28:
      v3 = 28;
      goto LABEL_109;
    case 29:
      v3 = 29;
      goto LABEL_109;
    case 30:
      v3 = 30;
      goto LABEL_109;
    case 31:
      v3 = 31;
      goto LABEL_109;
    case 32:
      v3 = 32;
      goto LABEL_109;
    case 33:
      v3 = 33;
      goto LABEL_109;
    case 34:
      v3 = 34;
      goto LABEL_109;
    case 35:
      v3 = 35;
      goto LABEL_109;
    case 36:
      v3 = 36;
      goto LABEL_109;
    case 37:
      v3 = 37;
      goto LABEL_109;
    case 38:
      v3 = 38;
      goto LABEL_109;
    case 39:
      v3 = 39;
      goto LABEL_109;
    case 40:
      v3 = 40;
      goto LABEL_109;
    case 41:
      v3 = 41;
      goto LABEL_109;
    case 42:
      v3 = 42;
      goto LABEL_109;
    case 43:
      v3 = 43;
      goto LABEL_109;
    case 44:
      v3 = 44;
LABEL_109:
      result = v3;
      break;
    case 45:
      return result;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v2 - 128) >= 0x19)
      {
        result = 4294967193;
      }

      else
      {
        result = v2;
      }

      break;
  }

  return result;
}

uint64_t sub_100028CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 2416))
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

uint64_t sub_100028D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 2408) = 0;
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
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 2416) = 1;
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

    *(result + 2416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafetyMonitorSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x68)
  {
    goto LABEL_17;
  }

  if (a2 + 152 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 152) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 152;
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

      return (*a1 | (v4 << 8)) - 152;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 152;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x99;
  v8 = v6 - 153;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafetyMonitorSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 152 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 152) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x68)
  {
    v4 = 0;
  }

  if (a2 > 0x67)
  {
    v5 = ((a2 - 104) >> 8) + 1;
    *result = a2 - 104;
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
    *result = a2 - 104;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100029138()
{
  result = qword_1000D85F8;
  if (!qword_1000D85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D85F8);
  }

  return result;
}

unint64_t sub_100029190()
{
  result = qword_1000D8600;
  if (!qword_1000D8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8600);
  }

  return result;
}

unint64_t sub_1000291E8()
{
  result = qword_1000D8608;
  if (!qword_1000D8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8608);
  }

  return result;
}

Swift::Int sub_100029248()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000292A4(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_1000292E4(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10002933C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002A2A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000293A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002A2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000293D4(uint64_t a1)
{
  v2 = sub_1000296CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100029410(uint64_t a1)
{
  v2 = sub_1000296CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSessionCancelSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D8618, &qword_1000A6C60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_1000022C4(a1, a1[3]);
  sub_1000296CC();
  sub_1000A0CE0();
  LOBYTE(v14) = 0;
  sub_1000A0B70();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1000A0B30();
    LOBYTE(v14) = 2;
    sub_1000A0B30();
    v9 = type metadata accessor for IDSSessionCancelSchema(0);
    LOBYTE(v14) = 3;
    sub_10009F770();
    sub_100029BC4(&qword_1000D8628, &protocol conformance descriptor for IDSSessionCancel.IDSSessionEndedReason);
    sub_1000A0AD0();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 4;
    sub_100005750(v14, v11);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000296CC()
{
  result = qword_1000D8620;
  if (!qword_1000D8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8620);
  }

  return result;
}

uint64_t type metadata accessor for IDSSessionCancelSchema(uint64_t a1)
{
  result = qword_1000D86A0;
  if (!qword_1000D86A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSSessionCancelSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v20 = sub_1000017BC(&qword_1000D8638, &qword_1000A6C70);
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v18 - v8;
  v10 = type metadata accessor for IDSSessionCancelSchema(0);
  __chkstk_darwin(v10);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v21 = a1;
  sub_1000022C4(a1, v13);
  sub_1000296CC();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v21);
  }

  v14 = v19;
  LOBYTE(v22) = 0;
  *v12 = sub_1000A0A10();
  LOBYTE(v22) = 1;
  v12[1] = sub_1000A09D0();
  v12[2] = v15;
  LOBYTE(v22) = 2;
  v12[3] = sub_1000A09D0();
  v12[4] = v16;
  sub_10009F770();
  LOBYTE(v22) = 3;
  sub_100029BC4(&qword_1000D8640, &protocol conformance descriptor for IDSSessionCancel.IDSSessionEndedReason);
  sub_1000A0970();
  sub_100029C08(v6, v12 + *(v10 + 28));
  v23 = 4;
  sub_100005424();
  sub_1000A0970();
  (*(v7 + 8))(v9, v20);
  *(v12 + *(v10 + 32)) = v22;
  sub_100029C78(v12, v14);
  sub_100002308(v21);
  return sub_100029CDC(v12);
}

uint64_t sub_100029B5C(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029BC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009F770();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100029C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSessionCancelSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029CDC(uint64_t a1)
{
  v2 = type metadata accessor for IDSSessionCancelSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100029E4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100029EFC(uint64_t a1)
{
  sub_100029FA0(319);
  if (v1 <= 0x3F)
  {
    sub_100029FF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100029FA0(uint64_t a1)
{
  if (!qword_1000D86B0)
  {
    sub_10009F770();
    v1 = sub_1000A07A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1000D86B0);
    }
  }
}

void sub_100029FF8()
{
  if (!qword_1000D86B8)
  {
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D86B8);
    }
  }
}

uint64_t getEnumTagSinglePayload for IDSSessionCancelSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSSessionCancelSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002A19C()
{
  result = qword_1000D86F8;
  if (!qword_1000D86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D86F8);
  }

  return result;
}

unint64_t sub_10002A1F4()
{
  result = qword_1000D8700;
  if (!qword_1000D8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8700);
  }

  return result;
}

unint64_t sub_10002A24C()
{
  result = qword_1000D8708;
  if (!qword_1000D8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8708);
  }

  return result;
}

unint64_t sub_10002A2A0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB050;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002A2EC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000001000A1F80;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001000A1F80;
  }

  else
  {
    v6 = 0x80000001000A1FA0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6574614465736162;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000011;
    v4 = 0x80000001000A1FA0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6574614465736162;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_10002A3C8()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002A470(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10002A504(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10002A5A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002B298(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10002A5D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x80000001000A1F80;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v5 = 0x80000001000A1FA0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6574614465736162;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10002A63C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574614465736162;
  }
}

unint64_t sub_10002A69C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002B298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002A6D0(uint64_t a1)
{
  v2 = sub_10002A92C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002A70C(uint64_t a1)
{
  v2 = sub_10002A92C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AlignmentSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8710, &qword_1000A6E60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_1000022C4(a1, a1[3]);
  sub_10002A92C();
  sub_1000A0CE0();
  v11 = 0;
  sub_10009F350();
  sub_10000D38C(&qword_1000D84A0, &protocol conformance descriptor for Date);
  sub_1000A0B80();
  if (!v1)
  {
    type metadata accessor for AlignmentSchema(0);
    v10 = 1;
    sub_1000A0B80();
    v9 = 2;
    sub_1000A0B60();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10002A92C()
{
  result = qword_1000D8718;
  if (!qword_1000D8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8718);
  }

  return result;
}

uint64_t type metadata accessor for AlignmentSchema(uint64_t a1)
{
  result = qword_1000D8780;
  if (!qword_1000D8780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlignmentSchema.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_10009F350();
  v29 = *(v31 - 8);
  v4 = __chkstk_darwin(v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v30 = &v24 - v7;
  v8 = sub_1000017BC(&qword_1000D8720, &qword_1000A6E68);
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AlignmentSchema(0);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022C4(a1, a1[3]);
  sub_10002A92C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v26 = v13;
  v27 = a1;
  v25 = v11;
  v36 = 0;
  sub_10000D38C(&qword_1000D84B8, &protocol conformance descriptor for Date);
  v14 = v30;
  v15 = v31;
  sub_1000A0A20();
  v30 = *(v29 + 32);
  (v30)(v26, v14, v15);
  v35 = 1;
  v16 = v6;
  sub_1000A0A20();
  v18 = v25;
  v17 = v26;
  (v30)(&v26[*(v25 + 20)], v16, v15);
  v34 = 2;
  v19 = sub_1000A0A00();
  v20 = v17;
  v21 = v27;
  v22 = v19;
  (*(v32 + 8))(v10, v33);
  *(v20 + *(v18 + 24)) = v22;
  sub_10002ADD0(v20, v28);
  sub_100002308(v21);
  return sub_10002AE34(v20);
}

uint64_t sub_10002ADD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlignmentSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002AE34(uint64_t a1)
{
  v2 = type metadata accessor for AlignmentSchema(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002AED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F350();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002AF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F350();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002AFC4(uint64_t a1)
{
  result = sub_10009F350();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlignmentSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlignmentSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002B194()
{
  result = qword_1000D87C0;
  if (!qword_1000D87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D87C0);
  }

  return result;
}

unint64_t sub_10002B1EC()
{
  result = qword_1000D87C8;
  if (!qword_1000D87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D87C8);
  }

  return result;
}

unint64_t sub_10002B244()
{
  result = qword_1000D87D0;
  if (!qword_1000D87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D87D0);
  }

  return result;
}

unint64_t sub_10002B298(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB0E8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002B2E4(char *a1, char *a2)
{
  if (qword_1000A7470[*a1] == qword_1000A7470[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10002B34C()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002B3A8(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10002B3E8(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10002B440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002BBF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10002B4A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002BBF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002B4CC(uint64_t a1)
{
  v2 = sub_10002B708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B508(uint64_t a1)
{
  v2 = sub_10002B708();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CirclesStoppedEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v9 = sub_1000017BC(&qword_1000D87D8, &qword_1000A7020);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_10002B708();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B60();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_10002B708()
{
  result = qword_1000D87E0;
  if (!qword_1000D87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D87E0);
  }

  return result;
}

uint64_t CirclesStoppedEnvelopeV1Schema.init(from:)(void *a1)
{
  result = sub_10002BC40(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002B788@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002BC40(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

Swift::Int sub_10002B7D8()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_10002B84C(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_10002B8A0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB1B8;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002B930@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB1F0;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10002B988(uint64_t a1)
{
  v2 = sub_10002BE80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B9C4(uint64_t a1)
{
  v2 = sub_10002BE80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CirclesStoppedEnvelopeV1PayloadSchema.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D87E8, &qword_1000A7028);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000022C4(a1, a1[3]);
  sub_10002BE80();
  sub_1000A0CE0();
  v9[1] = a2;
  sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
  sub_10002C390(&qword_1000D8800, &qword_1000D8808, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
  sub_1000A0B80();
  return (*(v5 + 8))(v7, v4);
}

void *sub_10002BBAC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002BED4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10002BBF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB150;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002BC40(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8858, &unk_1000A7460);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000022C4(a1, v7);
  sub_10002B708();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v11 = 0;
    sub_100005424();
    sub_1000A0A20();
    v7 = v10[0];
    v9 = v10[1];
    LOBYTE(v10[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v10[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v6, v3);
    sub_1000054CC(v7, v9);
    sub_100002308(a1);
    sub_100005568(v7, v9);
  }

  return v7;
}

unint64_t sub_10002BE80()
{
  result = qword_1000D87F0;
  if (!qword_1000D87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D87F0);
  }

  return result;
}

void *sub_10002BED4(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D8840, &qword_1000A7458);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000022C4(a1, a1[3]);
  sub_10002BE80();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
    sub_10002C390(&qword_1000D8848, &qword_1000D8850, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    sub_1000A0A20();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100002308(a1);
  }

  return v7;
}

__n128 sub_10002C090(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002C09C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10002C0F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10002C184()
{
  result = qword_1000D8810;
  if (!qword_1000D8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8810);
  }

  return result;
}

unint64_t sub_10002C1DC()
{
  result = qword_1000D8818;
  if (!qword_1000D8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8818);
  }

  return result;
}

unint64_t sub_10002C234()
{
  result = qword_1000D8820;
  if (!qword_1000D8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8820);
  }

  return result;
}

unint64_t sub_10002C28C()
{
  result = qword_1000D8828;
  if (!qword_1000D8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8828);
  }

  return result;
}

unint64_t sub_10002C2E4()
{
  result = qword_1000D8830;
  if (!qword_1000D8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8830);
  }

  return result;
}

unint64_t sub_10002C33C()
{
  result = qword_1000D8838;
  if (!qword_1000D8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8838);
  }

  return result;
}

uint64_t sub_10002C390(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000D87F8, &qword_1000A7030);
    sub_10002C418(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C418(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009F370();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C45C(char *a1, char *a2)
{
  if (qword_1000A78E0[*a1] == qword_1000A78E0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10002C4C4()
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002C520(uint64_t a1)
{
  sub_1000A05B0();
}

Swift::Int sub_10002C560(uint64_t a1)
{
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

unint64_t sub_10002C5B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002CC68(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10002C61C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002CC68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002C644(uint64_t a1)
{
  v2 = sub_10002C880();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C680(uint64_t a1)
{
  v2 = sub_10002C880();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CirclesUpdatedEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8860, &qword_1000A7490);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000022C4(a1, a1[3]);
  sub_10002C880();
  sub_1000A0CE0();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_1000A0B60();
    LOBYTE(v15) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_10002C880()
{
  result = qword_1000D8868;
  if (!qword_1000D8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8868);
  }

  return result;
}

uint64_t CirclesUpdatedEnvelopeV1Schema.init(from:)(void *a1)
{
  result = sub_10002CCB4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002C900@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002CCB4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10002C950@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB290;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002C9A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB2C8;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10002C9FC(uint64_t a1)
{
  v2 = sub_10002CEF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002CA38(uint64_t a1)
{
  v2 = sub_10002CEF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CirclesUpdatedEnvelopeV1PayloadSchema.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8870, &unk_1000A7498);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000022C4(a1, a1[3]);
  sub_10002CEF4();
  sub_1000A0CE0();
  v9[1] = a2;
  sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
  sub_10002C390(&qword_1000D8800, &qword_1000D8808, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
  sub_1000A0B80();
  return (*(v5 + 8))(v7, v4);
}

void *sub_10002CC20@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002CF48(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}