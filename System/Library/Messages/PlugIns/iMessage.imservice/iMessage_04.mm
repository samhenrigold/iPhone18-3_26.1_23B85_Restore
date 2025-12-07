double sub_AB948(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_AB97C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AB9A0(uint64_t result)
{
  v1 = *(result + 136);
  v2 = *(result + 112) & 1;
  *(result + 96) &= 1uLL;
  *(result + 112) = v2;
  *(result + 136) = v1 & 1 | 0x40;
  return result;
}

uint64_t sub_AB9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if ((a18 & 0xC0) != 0x80)
  {
  }
}

void sub_ABA5C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 104);
  v3 = *(v0 + 136);
  v16 = *(v0 + 120);
  v17[0] = v3;
  *(v17 + 9) = *(v0 + 145);
  v4 = *(v0 + 40);
  v5 = *(v0 + 72);
  v12 = *(v0 + 56);
  v13 = v5;
  v14 = *(v0 + 88);
  v15 = v2;
  v10 = *(v0 + 24);
  v11 = v4;
  MessageServiceSession.UpdateType.rawValue.getter();
  LOBYTE(v9[1]) = BYTE8(v17[0]);
  *(&v9[1] + 1) = *(v17 + 9);
  sub_BD8B4();
  v6 = sub_BD884();

  v7 = [objc_opt_self() contextWithKnownSender:1 serviceName:{v6, v10, v11, v12, v13, v14, v15, v16, *&v17[0], v9[1], (*(v17 + 9) >> 56), v9[3]}];

  sub_A0458(&v8, v1, 0, 0, v7);
}

void sub_ABBE0()
{
  v2 = [*(v0 + 16) transcriptBackgroundTransfersCurrentlyDownloading];
  v1 = sub_BD884();
  [v2 removeObject:v1];
}

uint64_t sub_ABCAC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_AB36C(result, a2);
  }

  return result;
}

void sub_ABCC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong transcriptBackgroundTransfersCurrentlyDownloading];

    v3 = sub_BD884();
    [v2 removeObject:v3];
  }
}

unint64_t sub_ABD60()
{
  result = qword_123F80;
  if (!qword_123F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123F80);
  }

  return result;
}

void sub_ABDB4(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v5 = sub_BD7B4();
    sub_96A28(v5, qword_1244F8);
    sub_ABB78(v2 + 16, v34);
    sub_AC390(a1, 1);
    v6 = sub_BD794();
    v7 = sub_BDA64();
    sub_ABBB0(v3 + 16);
    sub_AC39C(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v34[0] = v10;
      *v8 = 136315394;
      v11 = *(v3 + 32);
      if (v11)
      {
        v12 = *(v3 + 24);
        v13 = v11;
      }

      else
      {
        v12 = 0x3E6C696E3CLL;
        v13 = 0xE500000000000000;
      }

      v23 = sub_96A60(v12, v13, v34);

      *(v8 + 4) = v23;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v24;
      *v9 = v24;
      _os_log_impl(&dword_0, v6, v7, "Failed to Blast Door data for background with transferID: %s. Error: %@", v8, 0x16u);
      sub_75B0(v9, &qword_123E98, &unk_CEE80);

      sub_97C9C(v10);
    }

    goto LABEL_24;
  }

  v14 = *(v2 + 160);
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v15 = sub_BD7B4();
  sub_96A28(v15, qword_1244F8);
  sub_ABB78(v2 + 16, v34);
  swift_errorRetain();
  v16 = sub_BD794();
  v17 = sub_BDA84();
  sub_ABBB0(v3 + 16);

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v34[0] = v20;
    *v18 = 136315394;
    if (*(v3 + 32))
    {
      v21 = *(v3 + 24);
      v22 = *(v3 + 32);
    }

    else
    {
      v21 = 0x3E6C696E3CLL;
      v22 = 0xE500000000000000;
    }

    v25 = sub_96A60(v21, v22, v34);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2112;
    if (v14)
    {
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v18 + 14) = v26;
    *v19 = v27;
    _os_log_impl(&dword_0, v16, v17, "Successfully blastdoor'd data for background with transferID: %s. Error: %@", v18, 0x16u);
    sub_75B0(v19, &qword_123E98, &unk_CEE80);

    sub_97C9C(v20);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v29 = *(v3 + 352);
    v35[0] = *(v3 + 368);
    *(v35 + 9) = *(v3 + 377);
    v30 = *(v3 + 304);
    v34[2] = *(v3 + 288);
    v34[3] = v30;
    v31 = *(v3 + 320);
    v34[5] = *(v3 + 336);
    v34[6] = v29;
    v34[4] = v31;
    v32 = *(v3 + 272);
    v34[0] = *(v3 + 256);
    v34[1] = v32;
    if (sub_A9770(v34) == 1)
    {
      sub_2748(v34);
      v33 = 2;
    }

    else
    {
      v33 = 0;
    }

    sub_9D51C((v3 + 176), v33, 0, 0xB000000000000000, 0, 0);
LABEL_24:
  }
}

uint64_t sub_AC284(char a1, void *a2)
{
  v3 = *(v2 + 16);
  if (a1)
  {
    if (!a2)
    {
      return v3(1);
    }
  }

  else if (!a2)
  {
    v6 = objc_allocWithZone(NSError);
    v7 = sub_BD884();
    v5 = [v6 initWithDomain:v7 code:0 userInfo:0];

    goto LABEL_7;
  }

  v5 = a2;
LABEL_7:
  swift_errorRetain();
  (v3)(v5, 1);
}

uint64_t sub_AC390(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_AC39C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_AC3A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_AC3F0(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v86 = *(v1 + 104);
  v5 = *(v1 + 112);
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v6 = sub_BD7B4();
  sub_96A28(v6, qword_1244F8);
  v7 = sub_BD794();
  v8 = sub_BDA84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v7, v8, "Poster is sensitive: %{BOOL}d.", v9, 8u);
  }

  v10 = *(v2 + 72);
  sub_94E7C(v10, *(v2 + 64), a1 & 1);
  v11 = [v4 chatIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = v5;
    v14 = a1;
    v15 = [v4 style];
    v16 = [v86 broadcasterForChatListeners];
    v17 = [v86 account];
    v18 = [v17 accountID];

    if (!v18)
    {
      sub_BD8B4();
      v18 = sub_BD884();
    }

    [v16 transcriptBackgroundUpdatedForChatIdentifier:v12 style:v15 account:v18 userInfo:0];

    swift_unknownObjectRelease();
    a1 = v14;
    v19 = v13;
  }

  else
  {
    v85 = v5;
    v20 = v4;
    v21 = sub_BD794();
    v22 = sub_BDA64();
    if (os_log_type_enabled(v21, v22))
    {
      v84 = a1;
      v23 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89[0] = v83;
      *v23 = 16777986;
      *(v23 + 4) = [v20 style];

      *(v23 + 5) = 2080;
      v24 = [v20 chatIdentifier];
      if (v24)
      {
        v25 = v24;
        v26 = sub_BD8B4();
        v28 = v27;
      }

      else
      {
        v28 = 0xE500000000000000;
        v26 = 0x3E6C696E3CLL;
      }

      v80 = sub_96A60(v26, v28, v89);

      *(v23 + 7) = v80;
      *(v23 + 15) = 2112;
      *(v23 + 17) = v20;
      *v82 = v20;
      v81 = v20;
      _os_log_impl(&dword_0, v21, v22, "No valid IMChatStyle or chatIdentifier found on chat. Style: %hhu. Chat identifier: %s, chat: %@", v23, 0x19u);
      sub_75B0(v82, &qword_123E98, &unk_CEE80);

      sub_97C9C(v83);

      v19 = v85;
      a1 = v84;
    }

    else
    {

      v19 = v5;
    }
  }

  v90[0] = sub_BD8B4();
  v90[1] = v29;
  sub_BDBC4();
  if (*(v10 + 16) && (v30 = sub_97008(v89), (v31 & 1) != 0))
  {
    sub_97D3C(*(v10 + 56) + 32 * v30, v90);
    sub_97CE8(v89);
    if (swift_dynamicCast())
    {
      v32 = v88;
    }

    else
    {
      v32 = 0;
    }

    if (!*(v2 + 88))
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_97CE8(v89);
    v32 = 0;
    if (!*(v2 + 88))
    {
LABEL_19:
      v33 = 0;
      goto LABEL_25;
    }
  }

  v34 = a1;
  v35 = sub_BD884();
  v36 = [v35 _stripFZIDPrefix];

  if (v36)
  {
    sub_BD8B4();
    v33 = v37;
  }

  else
  {
    v33 = 0;
  }

  a1 = v34;
LABEL_25:
  v38 = [objc_opt_self() contextWithAssetChangeType:1 isHidden:*(v2 + 96) hasSensitiveContent:a1 & 1];
  if (v19 == 1)
  {

LABEL_38:
    v56 = sub_BD794();
    v57 = sub_BDA84();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v89[0] = v59;
      *v58 = 136315138;
      v60 = 0xE700000000000000;
      v61 = 0xD000000000000015;
      if (v19 == 1)
      {
        v60 = 0x80000000000DCB80;
      }

      else
      {
        v61 = 0x68736572666572;
      }

      if (v19)
      {
        v62 = v61;
      }

      else
      {
        v62 = 0xD000000000000010;
      }

      if (v19)
      {
        v63 = v60;
      }

      else
      {
        v63 = 0x80000000000DCBA0;
      }

      v64 = sub_96A60(v62, v63, v89);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_0, v56, v57, "Did not broadcast asset change status item. Update type: %s.", v58, 0xCu);
      sub_97C9C(v59);
    }

    return;
  }

  if (v33)
  {
    v39 = sub_BD884();

    if (v32)
    {
LABEL_29:
      v40 = sub_BD884();

      goto LABEL_32;
    }
  }

  else
  {
    v39 = 0;
    if (v32)
    {
      goto LABEL_29;
    }
  }

  v40 = 0;
LABEL_32:
  v41 = [v86 generateAndStoreAssetChangeStatusItemForChat:v4 sender:v39 fileTransferGuid:v40 assetStatusChange:v38];

  if (!v41)
  {
    goto LABEL_38;
  }

  v42 = [v4 chatIdentifier];
  if (v42)
  {
    v43 = v42;
    v44 = [v4 style];
    v45 = [v86 broadcasterForChatListeners];
    v46 = [v86 account];
    v47 = [v46 accountID];

    if (!v47)
    {
      sub_BD8B4();
      v47 = sub_BD884();
    }

    v48 = [v4 groupID];
    if (v48)
    {
      v87 = v47;
      v49 = v43;
      v50 = v38;
      v51 = v45;
      v52 = v41;
      v53 = v44;
      v54 = v19;
      v55 = v48;
      sub_BD8B4();

      v19 = v54;
      v44 = v53;
      v41 = v52;
      v45 = v51;
      v38 = v50;
      v43 = v49;
      v47 = v87;
    }

    v71 = sub_BD884();

    v72 = [v4 personCentricID];
    [v45 account:v47 chat:v43 style:v44 chatProperties:0 groupID:v71 chatPersonCentricID:v72 messageReceived:v41];

    swift_unknownObjectRelease();
    v73 = sub_BD794();
    v74 = sub_BDA84();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v89[0] = v76;
      *v75 = 136315138;
      if (v19)
      {
        v77 = 0x68736572666572;
      }

      else
      {
        v77 = 0xD000000000000010;
      }

      if (v19)
      {
        v78 = 0xE700000000000000;
      }

      else
      {
        v78 = 0x80000000000DCBA0;
      }

      v79 = sub_96A60(v77, v78, v89);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_0, v73, v74, "Generated and broadcasted asset change status item. Update type: %s.", v75, 0xCu);
      sub_97C9C(v76);
    }
  }

  else
  {
    v65 = v4;
    v66 = sub_BD794();
    v67 = sub_BDA64();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 16777730;
      *(v68 + 4) = [v65 style];

      *(v68 + 5) = 2112;
      *(v68 + 7) = v65;
      *v69 = v4;
      v70 = v65;
      _os_log_impl(&dword_0, v66, v67, "Missing chatIdentifier or chatStyle on chat: ChatStyle: %hhu, %@", v68, 0xFu);
      sub_75B0(v69, &qword_123E98, &unk_CEE80);
    }

    else
    {
    }
  }
}

double sub_ACE88(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0x1FFFFFFFELL;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_ACEB0(uint64_t result)
{
  v1 = *(result + 136);
  v2 = *(result + 112) & 1;
  *(result + 96) &= 1uLL;
  *(result + 112) = v2;
  *(result + 136) = v1 & 1 | 0xC0;
  return result;
}

uint64_t sub_ACEDC(uint64_t result)
{
  v1 = *(result + 136);
  v2 = *(result + 112) & 1;
  *(result + 96) &= 1uLL;
  *(result + 112) = v2;
  *(result + 136) = v1 & 1 | 0x80;
  return result;
}

uint64_t sub_ACF08(uint64_t result)
{
  v1 = *(result + 112) & 1;
  v2 = *(result + 136) & 1;
  *(result + 96) &= 1uLL;
  *(result + 112) = v1;
  *(result + 136) = v2;
  return result;
}

uint64_t type metadata accessor for BackgroundUploadContext(uint64_t a1)
{
  result = qword_124690;
  if (!qword_124690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ACF94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_94950(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_ACFFC(unint64_t a1, char a2)
{
  v4 = *(v2 + 48);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v5 = sub_BD7B4();
    sub_96A28(v5, qword_1244F8);
    sub_ADCB0(a1, 1);
    v6 = v4;
    oslog = sub_BD794();
    v7 = sub_BDA64();

    sub_ADCBC(a1, 1);
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2112;
      sub_ADCB0(a1, 1);
      v10 = v6;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      v9[1] = v11;
      _os_log_impl(&dword_0, oslog, v7, "Failed to upload background for chat %@. Error: %@", v8, 0x16u);
      sub_94950(&qword_123E98, &unk_CEE80);
      swift_arrayDestroy();

      sub_ADCBC(a1, 1);
    }

    else
    {

      sub_ADCBC(a1, 1);
    }
  }

  else
  {
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    v14 = *(v2 + 32);
    v15 = *(v2 + 64);
    v29 = *(v2 + 56);
    osloga = *(v2 + 72);
    v16 = qword_1244F0;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_BD7B4();
    sub_96A28(v17, qword_1244F8);

    v18 = sub_BD794();
    v19 = sub_BDA84();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_96A60(v13, v12, v33);
      _os_log_impl(&dword_0, v18, v19, "Successfully uploaded background with transferID %s.", v20, 0xCu);
      sub_97C9C(v21);
    }

    v22 = sub_BD8B4();
    v24 = v23;
    v25 = 1;
    if (v14)
    {
      v25 = 2;
    }

    v34 = &type metadata for Int;
    v33[0] = v25;
    sub_94D98(v33, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_97558(v32, v22, v24, isUniquelyReferenced_nonNull_native);

    sub_9BBD0(a1, v4, v29, v15);
    sub_9CF94(a1);
    v28 = v27;

    sub_94E7C(v28, osloga, 0);
  }
}

uint64_t sub_AD408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundUploadContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AD46C(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundUploadContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_AD4C8(unint64_t result)
{
  if (result >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_AD4D8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_AD4E8()
{
  result = qword_123FB0;
  if (!qword_123FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123FB0);
  }

  return result;
}

uint64_t sub_AD53C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_AD590(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_AD53C(result, a2);
  }

  return result;
}

uint64_t sub_AD5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundUploadContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_AD608(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  v14 = *(sub_BD544() - 8);
  v15 = (*(v14 + 64) + ((*(v14 + 80) + 16) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for BackgroundUploadContext(0);
  v17 = (((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + *(*(v16 - 8) + 80) + 8) & ~*(*(v16 - 8) + 80);
  v47 = *(v12 + v15);
  v51 = *(v12 + ((*(*(v16 - 8) + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v49 = *(v12 + v15 + 8);
  v18 = [objc_opt_self() defaultManager];
  sub_BD4C4();
  v19 = sub_BD884();

  *&v62[0] = 0;
  v20 = [v18 removeItemAtPath:v19 error:v62];

  if (v20)
  {
    v21 = *&v62[0];
  }

  else
  {
    v22 = *&v62[0];
    sub_BD4A4();

    swift_willThrow();
  }

  if ((a3 & 1) != 0 && a8 && *(&a9 + 1) >> 60 != 15 && *(&a10 + 1) && *(&a11 + 1) >> 60 != 15)
  {
    v23 = v12 + v17;

    sub_AD590(a9, *(&a9 + 1));

    sub_AD590(a11, *(&a11 + 1));
    v61 = sub_97980(_swiftEmptyArrayStorage);
    v24 = sub_BD584(0);
    v26 = v25;
    v27 = sub_BD584(0);
    v29 = *(v23 + *(v16 + 44));
    if (*(v23 + *(v16 + 36)))
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    *&v54 = v47;
    *(&v54 + 1) = v49;
    *&v55 = a7;
    *(&v55 + 1) = a8;
    *&v56 = v24;
    *(&v56 + 1) = v26;
    v57 = a10;
    *&v58 = v27;
    *(&v58 + 1) = v28;
    *&v59 = a12;
    *(&v59 + 1) = 1;
    *&v60 = v29;
    *(&v60 + 1) = v30;
    v62[0] = v54;
    v62[1] = v55;
    v62[5] = v59;
    v62[6] = v60;
    v62[3] = a10;
    v62[4] = v58;
    v62[2] = v56;

    sub_A8648(v62);
    sub_ACE58(&v54);
    v51(v61, 0);
    sub_ABCAC(a9, *(&a9 + 1));
    sub_ABCAC(a11, *(&a11 + 1));
  }

  else if (a4)
  {
    swift_errorRetain();
    v51(a4, 1);
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v31 = sub_BD7B4();
    sub_96A28(v31, qword_1244F8);

    sub_AD590(a9, *(&a9 + 1));

    sub_AD590(a11, *(&a11 + 1));

    v32 = sub_BD794();
    v33 = sub_BDA64();

    sub_ABCAC(a9, *(&a9 + 1));

    sub_ABCAC(a11, *(&a11 + 1));
    if (os_log_type_enabled(v32, v33))
    {
      v50 = v33;
      v34 = swift_slowAlloc();
      *&v54 = swift_slowAlloc();
      *v34 = 67110402;
      *(v34 + 4) = a3 & 1;
      *(v34 + 8) = 2080;
      *(v34 + 10) = sub_96A60(v47, v49, &v54);
      *(v34 + 18) = 2080;
      if (a8)
      {
        v35 = a7;
      }

      else
      {
        v35 = 0x3E6C696E3CLL;
      }

      if (a8)
      {
        v36 = a8;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      v37 = sub_96A60(v35, v36, &v54);

      *(v34 + 20) = v37;
      *(v34 + 28) = 2080;
      v62[0] = a9;
      sub_AD590(a9, *(&a9 + 1));
      sub_94950(&qword_123FC0, &unk_CE8B0);
      v38 = sub_BD8C4();
      v40 = sub_96A60(v38, v39, &v54);

      *(v34 + 30) = v40;
      *(v34 + 38) = 2080;
      if (*(&a10 + 1))
      {
        v41 = a10;
      }

      else
      {
        v41 = 0x3E6C696E3CLL;
      }

      if (*(&a10 + 1))
      {
        v42 = *(&a10 + 1);
      }

      else
      {
        v42 = 0xE500000000000000;
      }

      v43 = sub_96A60(v41, v42, &v54);

      *(v34 + 40) = v43;
      *(v34 + 48) = 2080;
      v62[0] = a11;
      sub_AD590(a11, *(&a11 + 1));
      v44 = sub_BD8C4();
      v46 = sub_96A60(v44, v45, &v54);

      *(v34 + 50) = v46;
      _os_log_impl(&dword_0, v32, v50, "Failed to get necessary transfer info from background upload. Aborting send. Success: %{BOOL}d. TransferID: %s Owner ID: %s. Signature: %s. Request URL: %s. Encryption key: %s", v34, 0x3Au);
      swift_arrayDestroy();
    }
  }
}

void *sub_ADC6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_ADCB0(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
  }

  return result;
}

uint64_t sub_ADCBC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_ADCC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_AE02C;

  return sub_A68D0(a1, v4);
}

uint64_t sub_ADD80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_A7F18;

  return sub_A68D0(a1, v4);
}

uint64_t sub_ADE60(uint64_t a1)
{
  result = sub_BD544();
  if (v2 <= 0x3F)
  {
    result = sub_7610(319, &qword_124020, IMDChat_ptr);
    if (v3 <= 0x3F)
    {
      result = sub_7610(319, &qword_123E48, IDSAccount_ptr);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_ADF38(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_ADF5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_ADFA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id MessageServiceSession.calculateReachability(with:responseHandler:)(void *a1, uint64_t a2)
{
  result = [objc_opt_self() sharedAccountController];
  if (result)
  {
    v6 = result;
    v7 = [a1 accountID];
    if (!v7)
    {
      sub_BD8B4();
      v7 = sub_BD884();
    }

    v8 = [v6 accountForAccountID:v7];

    if (v8)
    {
      v9 = [v8 loginID];
      if (v9)
      {
        v10 = v9;
        v11 = sub_BD8B4();
        v13 = v12;

        goto LABEL_9;
      }
    }

    v11 = 0;
    v13 = 0;
LABEL_9:
    swift_beginAccess();
    v14 = objc_getAssociatedObject(v2, &unk_124068);
    swift_endAccess();
    if (v14)
    {
      sub_BDB24();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      type metadata accessor for MessageReachabilityController();
      if (swift_dynamicCast())
      {
        v15 = v19;
LABEL_17:
        (*(*v15 + 128))(a1, a2, v11, v13);
      }
    }

    else
    {
      sub_94DA8(v22);
    }

    type metadata accessor for MessageReachabilityController();
    type metadata accessor for MessageServiceReachabilityDelegate();
    v16 = v2;
    v17 = sub_927A4(v16);
    v18 = sub_AE368();
    v15 = MessageReachabilityController.__allocating_init(delegate:)(v17, v18);
    swift_beginAccess();

    objc_setAssociatedObject(v16, &unk_124068, v15, &dword_0 + 1);
    swift_endAccess();

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_AE368()
{
  result = qword_124070;
  if (!qword_124070)
  {
    type metadata accessor for MessageServiceReachabilityDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124070);
  }

  return result;
}

uint64_t sub_AE3C0()
{
  v0 = sub_BD7B4();
  sub_97E5C(v0, qword_1246A8);
  sub_96A28(v0, qword_1246A8);
  sub_BD784();
  return sub_BD7A4();
}

Swift::Void __swiftcall MessageServiceSession.requestBackgroundsFromRecentChatsIfNeeded()()
{
  v78 = "ServiceForSending";
  v1 = sub_BD884();
  v2 = sub_BD884();
  v3 = IMGetCachedDomainIntForKeyWithDefaultValue();

  if (v3 <= 0)
  {
    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 existingChatsFilteredUsingPredicate:0 sortedUsingLastMessageDateAscending:0 limit:30];

    sub_AEF60();
    v13 = sub_BD954();

    if (qword_1246A0 != -1)
    {
      swift_once();
    }

    v14 = sub_BD7B4();
    sub_96A28(v14, qword_1246A8);

    v15 = sub_BD794();
    LOBYTE(v16) = sub_BDA84();
    v17 = v13 >> 62;
    if (!os_log_type_enabled(v15, v16))
    {

      goto LABEL_14;
    }

    v0 = swift_slowAlloc();
    *v0 = 134217984;
    if (v17)
    {
      goto LABEL_75;
    }

    for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); ; i = sub_BDCC4())
    {
      *(v0 + 4) = i;

      _os_log_impl(&dword_0, v15, v16, "Got %ld chats to request backgrounds for.", v0, 0xCu);

LABEL_14:
      if (v17)
      {
        v16 = sub_BDCC4();
        if (!v16)
        {
LABEL_67:

          v74 = sub_BD794();
          v75 = sub_BDA84();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 134217984;
            *(v76 + 4) = 1;
            _os_log_impl(&dword_0, v74, v75, "Done proactively requesting backgrounds. Setting currentProactiveRequestVersion: %ld", v76, 0xCu);
          }

          v77 = sub_BD884();
          v86 = sub_BD884();
          IMSetDomainIntForKey();

LABEL_70:
          v19 = v86;
          goto LABEL_71;
        }
      }

      else
      {
        v16 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
        if (!v16)
        {
          goto LABEL_67;
        }
      }

      if (v16 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_75:
      ;
    }

    v20 = 0;
    v85 = v13 & 0xC000000000000001;
    v79 = v13;
    v81 = v16;
    while (1)
    {
      if (v85)
      {
        v23 = sub_BDC34();
      }

      else
      {
        v23 = *(v13 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = [v23 chatIdentifier];
      if (v25)
      {
        v26 = v25;
        v27 = [v24 service];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 internalName];

          if (!v29)
          {
            sub_BD8B4();
            v29 = sub_BD884();
          }

          v30 = [objc_opt_self() sharedInstance];
          v31 = [v30 lastIncomingMessageForChatWithIdentifier:v26 chatStyle:objc_msgSend(v24 onService:{"style"), v29}];

          v32 = [v24 lastAddressedLocalHandle];
          if (v32 && (v33 = v32, sub_BD8B4(), v33, v34 = sub_BD884(), , v35 = [v34 _bestGuessURI], v34, v35))
          {
            v84 = sub_BD8B4();
            v37 = v36;

            v82 = v31;
            if (!v31)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v84 = 0;
            v37 = 0;
            v82 = v31;
            if (!v31)
            {
              goto LABEL_38;
            }
          }

          v38 = [v31 sender];
          if (v38 && (v39 = v38, sub_BD8B4(), v39, v40 = sub_BD884(), , v41 = [v40 _bestGuessURI], v40, v41))
          {
            v83 = sub_BD8B4();
            v43 = v42;
          }

          else
          {
LABEL_38:
            v83 = 0;
            v43 = 0;
          }

          v44 = v24;

          v45 = sub_BD794();
          v46 = sub_BDA84();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            *v47 = 136315650;
            if (v37)
            {
              v49 = v84;
            }

            else
            {
              v49 = 0x3E6C696E3CLL;
            }

            if (v37)
            {
              v50 = v37;
            }

            else
            {
              v50 = 0xE500000000000000;
            }

            v51 = sub_96A60(v49, v50, &v87);

            *(v47 + 4) = v51;
            *(v47 + 12) = 2080;
            if (v43)
            {
              v52 = v83;
            }

            else
            {
              v52 = 0x3E6C696E3CLL;
            }

            if (v43)
            {
              v53 = v43;
            }

            else
            {
              v53 = 0xE500000000000000;
            }

            v54 = sub_96A60(v52, v53, &v87);
            v13 = v79;

            *(v47 + 14) = v54;
            *(v47 + 22) = 2112;
            *(v47 + 24) = v44;
            *v48 = v44;
            v55 = v44;
            _os_log_impl(&dword_0, v45, v46, "Requesting from %s to %s, on chat %@", v47, 0x20u);
            sub_AEFAC(v48);

            swift_arrayDestroy();
          }

          v56 = v44;
          if (v43)
          {
            v21 = sub_BD884();

            if (!v37)
            {
LABEL_55:
              v22 = 0;
              goto LABEL_20;
            }
          }

          else
          {
            v21 = 0;
            if (!v37)
            {
              goto LABEL_55;
            }
          }

          v22 = sub_BD884();

LABEL_20:
          [v80 requestTranscriptBackground:v56 toIdentifier:v21 fromIdentifier:v22 messageIsFromStorage:0];

          goto LABEL_21;
        }
      }

      v57 = v24;
      v58 = sub_BD794();
      v59 = sub_BDA84();

      if (!os_log_type_enabled(v58, v59))
      {

        goto LABEL_22;
      }

      v60 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v60 = 136315394;
      v61 = [v57 chatIdentifier];
      if (v61)
      {
        v62 = v61;
        v63 = sub_BD8B4();
        v65 = v64;
      }

      else
      {
        v65 = 0xE500000000000000;
        v63 = 0x3E6C696E3CLL;
      }

      v66 = sub_96A60(v63, v65, &v87);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2080;
      v67 = [v57 service];
      if (v67)
      {
        v68 = v67;
        v69 = [v67 internalName];

        v70 = sub_BD8B4();
        v72 = v71;
      }

      else
      {
        v72 = 0xE500000000000000;
        v70 = 0x3E6C696E3CLL;
      }

      v73 = sub_96A60(v70, v72, &v87);

      *(v60 + 14) = v73;
      _os_log_impl(&dword_0, v58, v59, "Could not find chat identifier %s or service name %s", v60, 0x16u);
      swift_arrayDestroy();

      v13 = v79;
LABEL_21:
      v16 = v81;
LABEL_22:
      if (v16 == ++v20)
      {
        goto LABEL_67;
      }
    }
  }

  if (qword_1246A0 != -1)
  {
    swift_once();
  }

  v4 = sub_BD7B4();
  sub_96A28(v4, qword_1246A8);
  v5 = v80;
  v86 = sub_BD794();
  v6 = sub_BDA84();
  if (os_log_type_enabled(v86, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = 1;
    *(v7 + 12) = 2048;
    v8 = sub_BD884();
    v9 = sub_BD884();
    v10 = IMGetCachedDomainIntForKeyWithDefaultValue();

    *(v7 + 14) = v10;
    _os_log_impl(&dword_0, v86, v6, "Not proactively requesting backgrounds. currentProactiveRequestVersion: %ld, lastProactiveRequestVersion: %ld", v7, 0x16u);

    goto LABEL_70;
  }

  v19 = v5;
LABEL_71:
}

unint64_t sub_AEF60()
{
  result = qword_124020;
  if (!qword_124020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_124020);
  }

  return result;
}

uint64_t sub_AEFAC(uint64_t a1)
{
  v2 = sub_94950(&qword_123E98, &unk_CEE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_AF028()
{
  v1 = *v0;
  sub_BDDC4();
  sub_BDDD4(v1);
  return sub_BDDE4();
}

Swift::Int sub_AF09C(uint64_t a1)
{
  v2 = *v1;
  sub_BDDC4();
  sub_BDDD4(v2);
  return sub_BDDE4();
}

id CollaborationDeliveryRequest.__allocating_init(recipients:message:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_recipients] = a1;
  *&v5[OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id CollaborationDeliveryRequest.init(recipients:message:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_recipients] = a1;
  *&v2[OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollaborationDeliveryRequest();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t CollaborationDeliveryRequest.send()()
{
  v1[9] = v0;
  sub_94950(&qword_123ED0, &unk_CE4D0);
  v1[10] = swift_task_alloc();
  v2 = sub_BD544();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_AF334, 0, 0);
}

uint64_t sub_AF334()
{
  v1 = [*(v0[9] + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message) collaborationInitiationRequestInfo];
  v0[14] = v1;
  if (!v1)
  {
    sub_AFFF0();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
LABEL_34:

    v38 = v0[1];

    return v38();
  }

  v2 = v1;
  v3 = [v1 type];
  if (v3 > 1)
  {
    if (v3 == &dword_0 + 3)
    {
      v23 = [v2 metadata];
      v0[20] = v23;
      if (v23)
      {
        v7 = v23;
        v24 = [v2 url];
        if (v24)
        {
          v59 = v7;
          v25 = v0[9];
          v26 = v24;
          sub_BD504();

          v28 = 0;
          v29 = *(v25 + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_recipients);
          v30 = *(v29 + 16);
          v31 = v29 + 40;
LABEL_24:
          v32 = v31 + 16 * v28;
          while (v30 != v28)
          {
            if (v28 >= *(v29 + 16))
            {
LABEL_44:
              __break(1u);
              return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(v8, v9, v10, v11);
            }

            v33 = v32 + 16;
            ++v28;
            v34 = objc_opt_self();

            v35 = sub_BD884();
            v36 = [v34 normalizedHandleWithDestinationID:v35];

            v32 = v33;
            if (v36)
            {
              sub_BD934();
              if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                sub_BD974();
              }

              v8 = sub_BD984();
              v31 = v29 + 40;
              goto LABEL_24;
            }
          }

          v49 = v0[12];
          v48 = v0[13];
          v50 = v0[10];
          v51 = v0[11];
          v52 = v0[9];
          sub_B4240(_swiftEmptyArrayStorage, v27);

          v53 = [v2 options];
          (*(v49 + 16))(v50, v48, v51);
          (*(v49 + 56))(v50, 0, 1, v51);
          sub_BD6D4();
          swift_allocObject();
          v54 = v59;
          v55 = sub_BD6A4();
          v0[21] = v55;
          v61 = (*&stru_68.segname[swift_isaMask & *v52] + **&stru_68.segname[swift_isaMask & *v52]);
          v56 = swift_task_alloc();
          v0[22] = v56;
          *v56 = v0;
          v56[1] = sub_AFCD4;
          v46 = v55;
          v47 = v61;

          return v47(v46);
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (v3 != &dword_0 + 2)
      {
        goto LABEL_18;
      }

      v6 = [v2 share];
      v0[15] = v6;
      if (v6)
      {
        v7 = v6;
        v8 = [v2 containerSetupInfo];
        v0[16] = v8;
        if (v8)
        {
          v57 = v8;
          v58 = v7;
          v13 = 0;
          v14 = *(v0[9] + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_recipients);
          v15 = *(v14 + 16);
          v16 = v14 + 40;
LABEL_11:
          v17 = v16 + 16 * v13;
          while (v15 != v13)
          {
            if (v13 >= *(v14 + 16))
            {
              __break(1u);
              goto LABEL_44;
            }

            v18 = v17 + 16;
            ++v13;
            v19 = objc_opt_self();

            v20 = sub_BD884();
            v21 = [v19 normalizedHandleWithDestinationID:v20];

            v17 = v18;
            if (v21)
            {
              sub_BD934();
              if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                sub_BD974();
              }

              v8 = sub_BD984();
              v16 = v14 + 40;
              goto LABEL_11;
            }
          }

          v40 = v0[9];
          sub_B4240(_swiftEmptyArrayStorage, v12);

          v41 = [v2 options];
          sub_BD674();
          swift_allocObject();
          v42 = v58;
          v43 = v57;
          v44 = sub_BD644();
          v0[17] = v44;
          v60 = (*&stru_68.segname[(swift_isaMask & *v40) - 8] + **&stru_68.segname[(swift_isaMask & *v40) - 8]);
          v45 = swift_task_alloc();
          v0[18] = v45;
          *v45 = v0;
          v45[1] = sub_AFB20;
          v46 = v44;
          v47 = v60;

          return v47(v46);
        }

LABEL_31:
      }
    }

    sub_AFFF0();
    swift_allocError();
    *v37 = 0;
    goto LABEL_33;
  }

  if (v3 <= 1)
  {
    sub_AFFF0();
    swift_allocError();
    *v4 = 2;
LABEL_33:
    swift_willThrow();

    goto LABEL_34;
  }

LABEL_18:
  v22 = v3;
  type metadata accessor for IMCollaborationInitiationRequestType();
  v0[8] = v22;
  v11 = &type metadata for Int;
  v9 = v0 + 8;
  v10 = v8;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(v8, v9, v10, v11);
}

uint64_t sub_AFB20(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[19] = v1;

  if (v1)
  {
    v4 = sub_AFEAC;
  }

  else
  {
    v4 = sub_AFC3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_AFC3C()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];

  v4 = v0[3];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_AFCD4(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[23] = v1;

  if (v1)
  {
    v4 = sub_AFF3C;
  }

  else
  {
    v4 = sub_AFDF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_AFDF0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_AFEAC()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_AFF3C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_AFFF0()
{
  result = qword_124088;
  if (!qword_124088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124088);
  }

  return result;
}

void type metadata accessor for IMCollaborationInitiationRequestType()
{
  if (!qword_1240E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1240E0);
    }
  }
}

uint64_t sub_B0208(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_B02B0;

  return CollaborationDeliveryRequest.send()();
}

uint64_t sub_B02B0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_BD494();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_94950(&qword_1240A8, &qword_CE9A8);
    sub_7610(0, &qword_1240A0, IMMessageItem_ptr);
    sub_B4CC8();
    isa = sub_BD834().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_B0474()
{
  v1[2] = v0;
  v2 = sub_BD664();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[5] = v3;
  v6 = (&async function pointer to dispatch thunk of CloudKitCollaborationInitiationRequest.initiateCollaboration() + async function pointer to dispatch thunk of CloudKitCollaborationInitiationRequest.initiateCollaboration());
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_B058C;

  return v6(v3);
}

uint64_t sub_B058C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_B4DF0;
  }

  else
  {
    v2 = sub_B06A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B06A0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = sub_B079C(v4, sub_B4380, v5, &type metadata accessor for CloudKitCollaborationInitiationRequest.Response, &protocol witness table for CloudKitCollaborationInitiationRequest.Response);

  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7(v6);
}

void *sub_B079C(void *a1, void (*a2)(id), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v91 = a2;
  v92 = a3;
  v93 = a1;
  v87 = sub_94950(&qword_124090, &qword_CE998);
  v6 = __chkstk_darwin(v87);
  v88 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = &v87 - v8;
  v9 = sub_94950(&qword_124098, &qword_CE9A0);
  __chkstk_darwin(v9);
  v11 = &v87 - v10;
  a4(0);
  v12 = sub_BD634();
  v13 = v12;
  *&v98 = &_swiftEmptyDictionarySingleton;
  v14 = v12 + 64;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_9:
      v21 = __clz(__rbit64(v17)) | (v20 << 6);
      v22 = *(v13 + 56);
      v23 = *(*(v13 + 48) + 8 * v21);
      v24 = sub_BD694();
      (*(*(v24 - 8) + 16))(&v11[*(v9 + 48)], v22 + *(*(v24 - 8) + 72) * v21, v24);
      *v11 = v23;
      v25 = v23;
      sub_B13EC(&v98, v11);
      v17 &= v17 - 1;
      sub_75B0(v11, &qword_124098, &qword_CE9A0);
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_9;
    }
  }

  v26 = v98 + 64;
  v27 = 1 << *(v98 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v98 + 64);
  v30 = (v27 + 63) >> 6;
  v94 = v98;

  v31 = 0;
  v32 = &_swiftEmptyDictionarySingleton;
  v34 = v87;
  v33 = v88;
  v89 = v30;
  v90 = v26;
  while (v29)
  {
    v38 = v31;
LABEL_21:
    v39 = __clz(__rbit64(v29)) | (v38 << 6);
    v40 = v94;
    v41 = *(v94 + 48);
    v42 = sub_BD544();
    v43 = *(v42 - 8);
    v44 = v43;
    v45 = v41 + *(v43 + 72) * v39;
    v46 = *(v43 + 16);
    v47 = v97;
    v96 = v42;
    v46(v97, v45);
    *(v47 + *(v34 + 48)) = *(*(v40 + 56) + 8 * v39);

    if (![v93 copyWithFlags:{objc_msgSend(v93, "flags")}])
    {
      goto LABEL_49;
    }

    sub_BDB24();
    swift_unknownObjectRelease();
    sub_94D98(&v100, &v98);
    sub_7610(0, &qword_1240A0, IMMessageItem_ptr);
    swift_dynamicCast();
    v48 = v99;
    v49 = [v99 payloadData];
    if (v49)
    {
      v95 = v48;
      v50 = v49;
      v51 = sub_BD594();
      v53 = v52;

      v54 = objc_opt_self();
      isa = sub_BD574().super.isa;
      v56 = [v54 linkWithDataRepresentationWithoutSubstitutingAttachments:isa];

      if (v56)
      {
        v57 = [v56 metadata];
        if (v57)
        {
          v59 = v57;
          sub_BD4E4(v58);
          v61 = v60;
          [v59 setOriginalURL:v60];
        }

        v62 = [v56 dataRepresentationWithOutOfLineAttachments:{0, v87}];
        v63 = sub_BD594();
        v65 = v64;

        v66 = sub_BD574().super.isa;
        sub_AB36C(v63, v65);
        [v95 setPayloadData:v66];

        v34 = v87;
      }

      sub_AB36C(v51, v53);
      v33 = v88;
      v48 = v95;
    }

    v91(v48);
    sub_97DF4(v97, v33, &qword_124090, &qword_CE998);
    v67 = *(v33 + *(v34 + 48));
    v68 = *(v67 + 16);
    if (v68)
    {
      sub_94950(&qword_123E90, &qword_CE9B0);
      v69 = swift_allocObject();
      v70 = j__malloc_size(v69);
      v71 = v70 - 32;
      if (v70 < 32)
      {
        v71 = v70 - 17;
      }

      v69[2] = v68;
      v69[3] = 2 * (v71 >> 4);
      v72 = sub_B40E8(&v98, v69 + 4, v68, v67);
      sub_75A8(v98);
      if (v72 != v68)
      {
        goto LABEL_47;
      }
    }

    else
    {

      v69 = _swiftEmptyArrayStorage;
    }

    (*(v44 + 8))(v33, v96);
    v73 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v98 = v32;
    v75 = sub_B2FE0(v69);
    v77 = v32[2];
    v78 = (v76 & 1) == 0;
    v79 = __OFADD__(v77, v78);
    v80 = v77 + v78;
    if (v79)
    {
      goto LABEL_46;
    }

    v81 = v76;
    if (v32[3] >= v80)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v85 = v75;
        sub_B3D08();
        v75 = v85;
      }
    }

    else
    {
      sub_B3114(v80, isUniquelyReferenced_nonNull_native);
      v75 = sub_B2FE0(v69);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_50;
      }
    }

    v29 &= v29 - 1;
    if (v81)
    {
      v35 = v75;

      v32 = v98;
      v36 = *(v98 + 56);
      v37 = *(v36 + 8 * v35);
      *(v36 + 8 * v35) = v73;

      sub_75B0(v97, &qword_124090, &qword_CE998);
    }

    else
    {
      v32 = v98;
      *(v98 + 8 * (v75 >> 6) + 64) |= 1 << v75;
      *(v32[6] + 8 * v75) = v69;
      *(v32[7] + 8 * v75) = v73;

      sub_75B0(v97, &qword_124090, &qword_CE998);
      v83 = v32[2];
      v79 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v79)
      {
        goto LABEL_48;
      }

      v32[2] = v84;
    }

    v31 = v38;
    v30 = v89;
    v26 = v90;
  }

  while (1)
  {
    v38 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v38 >= v30)
    {

      return v32;
    }

    v29 = *(v26 + 8 * v38);
    ++v31;
    if (v29)
    {
      goto LABEL_21;
    }
  }

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
  sub_94950(&qword_1240A8, &qword_CE9A8);
  result = sub_BDD64();
  __break(1u);
  return result;
}

uint64_t sub_B0F4C()
{
  v1[2] = v0;
  v2 = sub_BD6C4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[5] = v3;
  v6 = (&async function pointer to dispatch thunk of ThirdPartyCollaborationInitiationRequest.initiateCollaboration() + async function pointer to dispatch thunk of ThirdPartyCollaborationInitiationRequest.initiateCollaboration());
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_B1064;

  return v6(v3);
}

uint64_t sub_B1064()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_B1274;
  }

  else
  {
    v2 = sub_B1178;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B1178()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = sub_B079C(v4, sub_B458C, v5, &type metadata accessor for ThirdPartyCollaborationInitiationRequest.Response, &protocol witness table for ThirdPartyCollaborationInitiationRequest.Response);

  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_B1274()
{

  v1 = *(v0 + 8);

  return v1();
}

id CollaborationDeliveryRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CollaborationDeliveryRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollaborationDeliveryRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B13EC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_94950(&qword_124098, &qword_CE9A0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v32 - v8);
  v10 = sub_BD544();
  v33 = *(v10 - 8);
  v34 = v10;
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_97DF4(a2, v9, &qword_124098, &qword_CE9A0);

  v36 = v4;
  v13 = *(v4 + 48);
  sub_BD684();
  v14 = sub_BD694();
  v15 = *(*(v14 - 8) + 8);
  v15(v9 + v13, v14);
  v35 = a1;
  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_B3090(v12), (v18 & 1) != 0))
  {
    v38 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v38 = &_swiftEmptySetSingleton;
  }

  sub_97DF4(a2, v7, &qword_124098, &qword_CE9A0);
  v19 = *v7;
  v20 = [*v7 normalizedValue];

  v21 = v36;
  if (v20)
  {
    v22 = sub_BD8B4();
    v24 = v23;
  }

  else
  {
    sub_97DF4(a2, v9, &qword_124098, &qword_CE9A0);
    v25 = *v9;
    v32 = *(v21 + 48);
    v26 = [v25 value];

    v22 = sub_BD8B4();
    v24 = v27;

    v21 = v36;
    v15(v9 + v32, v14);
  }

  v15(v7 + *(v21 + 48), v14);
  sub_B1E30(&v37, v22, v24);

  v28 = v38;
  v29 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v29;
  sub_B37C8(v28, v12, isUniquelyReferenced_nonNull_native);
  *v29 = v37;
  return (*(v33 + 8))(v12, v34);
}

uint64_t sub_B172C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_AE02C;

  return v6();
}

uint64_t sub_B1814(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_A7F18;

  return v7();
}

uint64_t sub_B18FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_94950(&qword_123ED8, &qword_CEE50);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_97DF4(a3, v23 - v10, &qword_123ED8, &qword_CEE50);
  v12 = sub_BD9F4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_75B0(v11, &qword_123ED8, &qword_CEE50);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_BD9E4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_BD994();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_BD8D4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_75B0(a3, &qword_123ED8, &qword_CEE50);

    return v21;
  }

LABEL_8:
  sub_75B0(a3, &qword_123ED8, &qword_CEE50);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_B1BF8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_BDB84();

    if (v9)
    {

      sub_7610(0, &qword_124118, TUHandle_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_BDB74();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_B1F80(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_B2170(v20 + 1);
    }

    v18 = v8;
    sub_A7110(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_7610(0, &qword_124118, TUHandle_ptr);
  v11 = sub_BDAE4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_B25F8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_BDAF4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_B1E30(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_BDDC4();
  sub_BD8E4();
  v8 = sub_BDDE4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_BDD24() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_B2768(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_B1F80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_94950(&qword_124128, &unk_CEB30);
    v2 = sub_BDBF4();
    v15 = v2;
    sub_BDB64();
    if (sub_BDB94())
    {
      sub_7610(0, &qword_124118, TUHandle_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_B2170(v9 + 1);
        }

        v2 = v15;
        result = sub_BDAE4(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_BDB94());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_B2170(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_94950(&qword_124128, &unk_CEB30);
  result = sub_BDBE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_BDAE4(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_B2398(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_94950(&qword_124108, &qword_CEB28);
  result = sub_BDBE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      sub_BDDC4();
      sub_BD8E4();
      result = sub_BDDE4();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_B25F8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_B2170(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_B28E8();
      goto LABEL_12;
    }

    sub_B2B94(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_BDAE4(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_7610(0, &qword_124118, TUHandle_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_BDAF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_BDD54();
  __break(1u);
}

void sub_B2768(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_B2398(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_B2A38();
      goto LABEL_16;
    }

    sub_B2DA8(v8 + 1);
  }

  v10 = *v4;
  sub_BDDC4();
  sub_BD8E4();
  v11 = sub_BDDE4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_BDD24() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_BDD54();
  __break(1u);
}

id sub_B28E8()
{
  v1 = v0;
  sub_94950(&qword_124128, &unk_CEB30);
  v2 = *v0;
  v3 = sub_BDBD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_B2A38()
{
  v1 = v0;
  sub_94950(&qword_124108, &qword_CEB28);
  v2 = *v0;
  v3 = sub_BDBD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

uint64_t sub_B2B94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_94950(&qword_124128, &unk_CEB30);
  result = sub_BDBE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_BDAE4(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

uint64_t sub_B2DA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_94950(&qword_124108, &qword_CEB28);
  result = sub_BDBE4();
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
      sub_BDDC4();

      sub_BD8E4();
      result = sub_BDDE4();
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

unint64_t sub_B2FE0(uint64_t a1)
{
  sub_BDDC4();
  v2 = *(a1 + 16);
  sub_BDDD4(v2);
  if (v2)
  {
    v3 = a1 + 40;
    do
    {

      sub_BD8E4();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v4 = sub_BDDE4();

  return sub_B3A4C(a1, v4);
}

unint64_t sub_B3090(uint64_t a1)
{
  sub_BD544();
  sub_B4D44(&qword_124100, &protocol conformance descriptor for URL);
  v2 = sub_BD864();

  return sub_B3B5C(a1, v2);
}

uint64_t sub_B3114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_94950(&qword_1240F0, &qword_CEB18);
  v36 = v4;
  result = sub_BDCE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
      v37 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v23 = v22;
      }

      sub_BDDC4();
      sub_BDDD4(*(v21 + 16));
      v24 = *(v21 + 16);
      if (v24)
      {
        v25 = v21 + 40;
        do
        {

          sub_BD8E4();

          v25 += 16;
          --v24;
        }

        while (v24);
      }

      result = sub_BDDE4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v16 = v22;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v16 = v22;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        v37 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_B3400(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_BD544();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_94950(&qword_1240F8, &qword_CEB20);
  v39 = v4;
  result = sub_BDCE4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_B4D44(&qword_124100, &protocol conformance descriptor for URL);
      result = sub_BD864();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_B37C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_BD544();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_B3090(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_B3E68();
      goto LABEL_7;
    }

    sub_B3400(v17, a3 & 1);
    v22 = sub_B3090(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_B3994(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_BDD64();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_B3994(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_BD544();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

unint64_t sub_B3A4C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_BDD24() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_B3B5C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_BD544();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_B4D44(&qword_123F90, &protocol conformance descriptor for URL);
      v15 = sub_BD874();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

id sub_B3D08()
{
  v1 = v0;
  sub_94950(&qword_1240F0, &qword_CEB18);
  v2 = *v0;
  v3 = sub_BDCD4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        result = v18;
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

void sub_B3E68()
{
  v1 = v0;
  v33 = sub_BD544();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_94950(&qword_1240F8, &qword_CEB20);
  v3 = *v0;
  v4 = sub_BDCD4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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
}

void *sub_B40E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_B4240(unint64_t a1, __n128 a2)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_7610(0, &qword_124118, TUHandle_ptr);
    sub_B4D88();
    result = sub_BDA34();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_BDC34();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_B1BF8(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_BDCC4();
  }

  v6 = result;
  v5 = sub_BDCC4();
  result = v6;
  if (v5)
  {
    goto LABEL_6;
  }

  return result;
}

id sub_B4380(void *a1)
{
  result = [a1 payloadData];
  if (result)
  {
    v3 = result;
    v4 = sub_BD594();
    v6 = v5;

    v7 = objc_opt_self();
    isa = sub_BD574().super.isa;
    v9 = [v7 linkWithDataRepresentationWithoutSubstitutingAttachments:isa];

    if (v9)
    {
      v10 = [v9 metadata];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 specialization];

        if (v12)
        {
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            v14 = v13;
            sub_BD654();
            sub_7610(0, &qword_124110, CKDeviceToDeviceShareInvitationToken_ptr);
            v15 = sub_BD834().super.isa;

            [v14 setEncodedTokens:v15];
          }
        }
      }

      v16 = [v9 dataRepresentationWithOutOfLineAttachments:0];
      v17 = sub_BD594();
      v19 = v18;

      v20 = sub_BD574().super.isa;
      sub_AB36C(v17, v19);
      [a1 setPayloadData:v20];
    }

    return sub_AB36C(v4, v6);
  }

  return result;
}

id sub_B458C(void *a1)
{
  result = [a1 payloadData];
  if (result)
  {
    v3 = result;
    v4 = sub_BD594();
    v6 = v5;

    v7 = objc_opt_self();
    isa = sub_BD574().super.isa;
    v9 = [v7 linkWithDataRepresentationWithoutSubstitutingAttachments:isa];

    if (v9)
    {
      v10 = [v9 metadata];
      if (v10)
      {
        v11 = v10;
        v12 = sub_BD6B4();
        [v11 setCollaborationMetadata:v12];
      }

      v13 = [v9 dataRepresentationWithOutOfLineAttachments:0];
      v14 = sub_BD594();
      v16 = v15;

      v17 = sub_BD574().super.isa;
      sub_AB36C(v14, v16);
      [a1 setPayloadData:v17];
    }

    return sub_AB36C(v4, v6);
  }

  return result;
}

unint64_t sub_B471C()
{
  result = qword_1240B0;
  if (!qword_1240B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1240B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollaborationDeliveryRequest.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CollaborationDeliveryRequest.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_B48E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_A7F18;

  return sub_B0208(v2, v3);
}

uint64_t sub_B498C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_AE02C;

  return sub_B172C(v2, v3, v4);
}

uint64_t sub_B4A4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B4A8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_AE02C;

  return sub_B1814(a1, v4, v5, v6);
}

uint64_t sub_B4B58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_AE02C;

  return sub_A68D0(a1, v4);
}

uint64_t sub_B4C10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_A7F18;

  return sub_A68D0(a1, v4);
}

unint64_t sub_B4CC8()
{
  result = qword_1240E8;
  if (!qword_1240E8)
  {
    sub_A9E00(&qword_1240A8, &qword_CE9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1240E8);
  }

  return result;
}

uint64_t sub_B4D44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_BD544();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_B4D88()
{
  result = qword_124120;
  if (!qword_124120)
  {
    sub_7610(255, &qword_124118, TUHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124120);
  }

  return result;
}

uint64_t sub_B4E98()
{
  v0 = sub_BD7B4();
  sub_97E5C(v0, qword_124848);
  sub_96A28(v0, qword_124848);
  sub_BD784();
  return sub_BD7A4();
}

uint64_t sub_B4F04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v166 = a2;
  v175 = a1;
  v177 = a3;
  v3 = sub_BD4B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD624();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD544();
  v180 = *(v11 - 8);
  v181 = v11;
  v12 = __chkstk_darwin(v11);
  v176 = v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v172 = v162 - v15;
  v16 = __chkstk_darwin(v14);
  v182 = v162 - v17;
  v18 = __chkstk_darwin(v16);
  v184 = v162 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v162 - v21;
  v165 = v23;
  __chkstk_darwin(v20);
  v183 = v162 - v24;
  v25 = NSTemporaryDirectory();
  sub_BD8B4();

  sub_BD4D4();

  sub_BD614();
  v26 = sub_BD604();
  v28 = v27;
  v179 = v27;
  (*(v8 + 8))(v10, v7);
  aBlock = v26;
  v186 = v28;
  v29 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v30 = *(v4 + 104);
  v30(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  v31 = sub_ABD60();
  sub_BD534();
  v32 = *(v4 + 8);
  v32(v6, v3);

  v33 = *(v180 + 8);
  v164 = v22;
  v178 = v180 + 8;
  v179 = v33;
  v33(v22, v181);
  aBlock = 0xD000000000000014;
  v186 = 0x80000000000DCDB0;
  v30(v6, v29, v3);
  sub_BD534();
  v32(v6, v3);
  aBlock = 0xD000000000000018;
  v186 = 0x80000000000DCB10;
  v171 = v29;
  v170 = v30;
  v168 = v4 + 104;
  v30(v6, v29, v3);
  v169 = v31;
  v34 = v6;
  sub_BD534();
  v173 = v3;
  v174 = v4 + 8;
  v167 = v32;
  v32(v6, v3);
  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  sub_BD4E4(v37);
  v39 = v38;
  aBlock = 0;
  LODWORD(v22) = [v36 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  v40 = aBlock;
  if (!v22)
  {
    v91 = aBlock;
    v84 = sub_BD4A4();

    swift_willThrow();
    v89 = 0;
    v90 = 0;
    v87 = v181;
    v88 = v179;
    goto LABEL_13;
  }

  aBlock = 0x726574736F70;
  v186 = 0xE600000000000000;
  v41 = v171;
  v163 = v35;
  v42 = v173;
  v43 = v170;
  v170(v6, v171, v173);
  v44 = v40;
  v45 = v172;
  sub_BD534();
  v46 = v6;
  v47 = v167;
  v167(v46, v42);
  aBlock = 0x6361426863746177;
  v186 = 0xEF646E756F72676BLL;
  v43(v34, v41, v42);
  v48 = v176;
  sub_BD534();
  v47(v34, v42);
  v49 = v163;
  v50 = [v163 defaultManager];
  sub_BD4E4(v51);
  v53 = v52;
  sub_BD4E4(v54);
  v56 = v55;
  aBlock = 0;
  v57 = [v50 moveItemAtURL:v53 toURL:v55 error:&aBlock];

  if (!v57)
  {
    v92 = aBlock;
    v84 = sub_BD4A4();

    swift_willThrow();
    v87 = v181;
    v88 = v179;
    v179(v48, v181);
    v88(v45, v87);
    v89 = 0;
    v90 = 0;
    goto LABEL_13;
  }

  v58 = v45;
  v59 = aBlock;
  v60 = [v49 defaultManager];
  sub_BD4E4(&v192);
  v62 = v61;
  sub_BD4E4(v63);
  v65 = v64;
  aBlock = 0;
  v66 = [v60 moveItemAtURL:v62 toURL:v64 error:&aBlock];

  v67 = aBlock;
  v68 = v181;
  if (!v66)
  {
    v93 = aBlock;
    v84 = sub_BD4A4();

    swift_willThrow();
    v94 = v179;
    v179(v48, v68);
    v94(v58, v68);
    v89 = 0;
    v90 = 0;
    v88 = v94;
    v87 = v68;
    goto LABEL_13;
  }

  v191 = 0;
  v69 = objc_allocWithZone(NSFileCoordinator);
  v70 = v67;
  v71 = [v69 init];
  sub_BD4E4(v72);
  v74 = v73;
  v75 = v180;
  v76 = v164;
  (*(v180 + 16))(v164, v182, v68);
  v77 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v78 = (v165 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = *(v75 + 32);
  v180 = v75 + 32;
  v173 = v80;
  v80(v79 + v77, v76, v68);
  *(v79 + v78) = &v191;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_B6B84;
  *(v81 + 24) = v79;
  v174 = v79;
  v189 = sub_B6CEC;
  v190 = v81;
  aBlock = _NSConcreteStackBlock;
  v186 = 1107296256;
  v187 = sub_B6218;
  v188 = &unk_115508;
  v82 = _Block_copy(&aBlock);

  aBlock = 0;
  [v71 coordinateReadingItemAtURL:v74 options:8 error:&aBlock byAccessor:v82];
  _Block_release(v82);

  v83 = aBlock;
  LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

  if (v82)
  {
    __break(1u);
LABEL_45:
    if (qword_124840 != -1)
    {
      swift_once();
    }

    v155 = sub_BD7B4();
    sub_96A28(v155, qword_124848);
    v156 = v162[1];
    v157 = sub_BD794();
    v158 = sub_BDA84();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 134218240;
      *(v159 + 4) = 20971520;

      *(v159 + 12) = 2048;
      *(v159 + 14) = v71;
      _os_log_impl(&dword_0, v157, v158, "Zipped background exceeds upload limit, returning nil. Max size: %ld, actual size: %llu", v159, 0x16u);
    }

    else
    {
    }

    v160 = v181;
    v161 = v179;
    v179(v182, v181);
    v161(v184, v160);
    v161(v183, v160);
    *v177 = 0;
LABEL_42:
    sub_94950(&qword_123F98, &qword_CE890);
    goto LABEL_43;
  }

  v84 = v83;
  v85 = v184;
  v86 = v58;
  if (!v83)
  {
    v84 = v191;
    if (v191)
    {
      swift_errorRetain();
      goto LABEL_8;
    }

    v103 = v163;
    v104 = [v163 defaultManager];
    sub_BD4E4(v105);
    v107 = v106;
    sub_BD4E4(v108);
    v110 = v109;
    aBlock = 0;
    v111 = [v104 moveItemAtURL:v107 toURL:v109 error:&aBlock];

    if (v111)
    {
      v175 = v71;
      v112 = aBlock;
      v113 = [v103 defaultManager];
      v114 = v176;
      sub_BD4E4(v115);
      v117 = v116;
      sub_BD4E4(&v192);
      v119 = v118;
      aBlock = 0;
      v120 = [v113 moveItemAtURL:v117 toURL:v118 error:&aBlock];

      if (v120)
      {
        v121 = aBlock;
        v122 = [v103 defaultManager];
        sub_BD4E4(v123);
        v125 = v124;
        aBlock = 0;
        v126 = [v122 removeItemAtURL:v124 error:&aBlock];

        if (v126)
        {
          v127 = aBlock;

          v128 = v114;
          v129 = v181;
          v130 = v179;
          v179(v128, v181);
          v130(v58, v129);

          v131 = [v103 defaultManager];
          sub_BD524();
          v132 = sub_BD884();

          v133 = [v131 fileExistsAtPath:v132];

          if (v133)
          {
            v134 = [v103 defaultManager];
            sub_BD524();
            v135 = sub_BD884();

            v191 = 0;
            v136 = [v134 attributesOfItemAtPath:v135 error:&v191];

            v137 = v191;
            if (v136)
            {
              type metadata accessor for FileAttributeKey();
              sub_B70B8(&qword_124130, &unk_CED48);
              v138 = sub_BD844();
              v139 = v137;

              if (*(v138 + 16) && (v140 = sub_B6D7C(NSFileSize), (v141 & 1) != 0))
              {
                sub_97D3C(*(v138 + 56) + 32 * v140, &aBlock);

                if (swift_dynamicCast())
                {
                  v71 = v191;
                  if (v191 >> 22 <= 4)
                  {
                    v142 = v179;
                    v179(v85, v129);
                    v142(v183, v129);
                    v173(v177, v182, v129);
                    sub_94950(&qword_123F98, &qword_CE890);
LABEL_43:
                    swift_storeEnumTagMultiPayload();
                  }

                  goto LABEL_45;
                }
              }

              else
              {
              }
            }

            else
            {
              v148 = v191;
              sub_BD4A4();

              swift_willThrow();
            }
          }

          if (qword_124840 != -1)
          {
            swift_once();
          }

          v149 = sub_BD7B4();
          sub_96A28(v149, qword_124848);
          v150 = sub_BD794();
          v151 = sub_BDA84();
          v152 = os_log_type_enabled(v150, v151);
          v153 = v179;
          if (v152)
          {
            v154 = swift_slowAlloc();
            *v154 = 0;
            _os_log_impl(&dword_0, v150, v151, "Could not get file size of zipped background.", v154, 2u);
          }

          v153(v182, v129);
          v153(v85, v129);
          v153(v183, v129);
          *v177 = 1;
          goto LABEL_42;
        }

        v147 = aBlock;
        v84 = sub_BD4A4();

        swift_willThrow();
        v144 = v114;
        v87 = v181;
        v146 = v181;
LABEL_32:
        v88 = v179;
        v179(v144, v146);
        v88(v86, v87);
        goto LABEL_9;
      }

      v145 = aBlock;
      v84 = sub_BD4A4();

      swift_willThrow();
      v144 = v114;
    }

    else
    {
      v143 = aBlock;
      v84 = sub_BD4A4();

      swift_willThrow();
      v144 = v176;
    }

    v87 = v181;
    v146 = v181;
    goto LABEL_32;
  }

LABEL_8:
  swift_willThrow();

  v87 = v181;
  v88 = v179;
  v179(v176, v181);
  v88(v86, v87);

LABEL_9:

  v89 = sub_B6B84;
  v90 = v174;
LABEL_13:
  swift_errorRetain();
  if (qword_124840 != -1)
  {
    swift_once();
  }

  v95 = sub_BD7B4();
  sub_96A28(v95, qword_124848);
  swift_errorRetain();
  v96 = sub_BD794();
  v97 = sub_BDA84();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = v90;
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v99 = 138412290;
    swift_errorRetain();
    v101 = _swift_stdlib_bridgeErrorToNSError();
    *(v99 + 4) = v101;
    *v100 = v101;

    _os_log_impl(&dword_0, v96, v97, "Failed to zip background with error: %@", v99, 0xCu);
    sub_AEFAC(v100);

    v90 = v98;
  }

  else
  {
  }

  v88(v182, v87);
  v88(v184, v87);
  v88(v183, v87);
  *v177 = v84;
  sub_94950(&qword_123F98, &qword_CE890);
  swift_storeEnumTagMultiPayload();
  return sub_B6208(v89, v90);
}

uint64_t sub_B6208(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_B6218(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD544();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_BD504();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

void sub_B62FC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v6 = sub_BD544();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedManager];
  if (v10)
  {
    v34 = v10;
    if ([v10 checksForSensitivityOnReceive])
    {
      v11 = objc_opt_self();
      sub_BD4E4(v12);
      v14 = v13;
      v15 = [v11 posterImageURLForPosterConfigurationAtURL:v13];

      if (v15)
      {
        sub_BD504();

        v16 = [objc_opt_self() sharedManager];
        sub_BD4E4(v17);
        v19 = v18;
        v20 = swift_allocObject();
        *(v20 + 16) = a3;
        *(v20 + 24) = a4;
        aBlock[4] = sub_B6E10;
        aBlock[5] = v20;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_A46B0;
        aBlock[3] = &unk_115558;
        v21 = _Block_copy(aBlock);

        [v16 isSensitiveContent:v19 contentAttachmentType:0 withChatID:0 completionHandler:v21];
        _Block_release(v21);

        (*(v7 + 8))(v9, v6);
        return;
      }

      if (qword_124840 != -1)
      {
        swift_once();
      }

      v31 = sub_BD7B4();
      sub_96A28(v31, qword_124848);
      v27 = sub_BD794();
      v28 = sub_BDA84();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_19;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Sensitivity Analysis will not run. Unable to find a posterImageURL for the poster configuration. Continuing.";
    }

    else
    {
      if (qword_124840 != -1)
      {
        swift_once();
      }

      v26 = sub_BD7B4();
      sub_96A28(v26, qword_124848);
      v27 = sub_BD794();
      v28 = sub_BDA84();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_19;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Sensitivity Analysis is not enabled. Continuing.";
    }

    _os_log_impl(&dword_0, v27, v28, v30, v29, 2u);

LABEL_19:

    a3(0);
    v32 = v34;

    return;
  }

  if (qword_124840 != -1)
  {
    swift_once();
  }

  v22 = sub_BD7B4();
  sub_96A28(v22, qword_124848);
  v23 = sub_BD794();
  v24 = sub_BDA64();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "Sensitivity Analysis settings object is unexpectedly not available.", v25, 2u);
  }

  a3(0);
}

uint64_t sub_B67A8()
{
  sub_BD8B4();
  v0 = sub_BD914();

  return v0;
}

uint64_t sub_B67E4(uint64_t a1)
{
  sub_BD8B4();
  sub_BD8E4();
}

Swift::Int sub_B6838(uint64_t a1)
{
  sub_BD8B4();
  sub_BDDC4();
  sub_BD8E4();
  v1 = sub_BDDE4();

  return v1;
}

uint64_t sub_B68B4(uint64_t a1, id *a2)
{
  result = sub_BD894();
  *a2 = 0;
  return result;
}

uint64_t sub_B692C(uint64_t a1, id *a2)
{
  v3 = sub_BD8A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_B69AC@<X0>(uint64_t *a2@<X8>)
{
  sub_BD8B4();
  v3 = sub_BD884();

  *a2 = v3;
  return result;
}

uint64_t sub_B69F0(void *a1, uint64_t *a2)
{
  v2 = sub_BD8B4();
  v4 = v3;
  if (v2 == sub_BD8B4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_BDD24();
  }

  return v7 & 1;
}

uint64_t sub_B6A78@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_BD884();

  *a2 = v3;
  return result;
}

uint64_t sub_B6AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BD8B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_B6AEC(uint64_t a1)
{
  v2 = sub_B70B8(&qword_124130, &unk_CED48);
  v3 = sub_B70B8(&qword_124158, &unk_CEC9C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

id sub_B6B84()
{
  v1 = *(sub_BD544() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = [objc_opt_self() defaultManager];
  sub_BD4E4(v4);
  v6 = v5;
  sub_BD4E4(v7);
  v9 = v8;
  v15 = 0;
  v10 = [v3 moveItemAtURL:v6 toURL:v8 error:&v15];

  v11 = v15;
  if (v10)
  {

    return v11;
  }

  else
  {
    v13 = v15;
    v14 = sub_BD4A4();

    swift_willThrow();
    *v2 = v14;
  }
}

uint64_t sub_B6D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_124138)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_124138);
    }
  }
}

unint64_t sub_B6D7C(uint64_t a1)
{
  sub_BD8B4();
  sub_BDDC4();
  sub_BD8E4();
  v2 = sub_BDDE4();

  return sub_B70FC(a1, v2);
}

uint64_t sub_B6E10(char a1)
{
  v3 = *(v1 + 16);
  if (qword_124840 != -1)
  {
    swift_once();
  }

  v4 = sub_BD7B4();
  sub_96A28(v4, qword_124848);
  v5 = sub_BD794();
  v6 = sub_BDA84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v5, v6, "Sensitivity Analysis completed on wallpaper with result, isSensitive=%{BOOL}d.", v7, 8u);
  }

  return v3(a1 & 1);
}

uint64_t sub_B6F18(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_B6F3C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_B6F90(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_B6FEC(void *result, int a2)
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

uint64_t sub_B70B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_B70FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_BD8B4();
      v8 = v7;
      if (v6 == sub_BD8B4() && v8 == v9)
      {
        break;
      }

      v11 = sub_BDD24();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t static NSUserDefaults.forceUnreachable.getter()
{
  v0 = sub_94950(&qword_124188, &qword_CED90);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-v2];
  if (qword_124160 != -1)
  {
    swift_once();
  }

  v4 = sub_96A28(v0, qword_124168);
  (*(v1 + 16))(v3, v4, v0);
  sub_BD714();
  (*(v1 + 8))(v3, v0);
  return v6[15];
}

uint64_t sub_B733C()
{
  v0 = sub_94950(&qword_124190, &qword_CEDA0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_94950(&qword_124188, &qword_CED90);
  sub_97E5C(v3, qword_124168);
  sub_96A28(v3, qword_124168);
  v4 = sub_94950(&qword_124198, &qword_CEDA8);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_BD734();
  return sub_BD724();
}

uint64_t sub_B7464()
{
  v0 = sub_BD7B4();
  sub_97E5C(v0, qword_1241A0);
  sub_96A28(v0, qword_1241A0);
  return sub_BD7A4();
}

void *MessageReachabilityController.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  sub_BD764();
  swift_unknownObjectRetain();
  v4[4] = sub_BD754();
  return v4;
}

void *MessageReachabilityController.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_BD764();
  swift_unknownObjectRetain();
  v2[4] = sub_BD754();
  return v2;
}

void MessageReachabilityController.calculateReachability(with:responseHandler:requestingSelfHandle:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v10 = [v7 networkDataAvailable];
  if (qword_124180 != -1)
  {
    swift_once();
  }

  v11 = sub_BD7B4();
  sub_96A28(v11, qword_1241A0);
  swift_retain_n();
  v12 = a1;
  v13 = sub_BD794();
  v14 = sub_BDA54();

  v138 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v133 = v14;
    v15 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v140 = v132;
    *v15 = 136446722;
    v16 = [v12 requestID];
    v17 = sub_BD8B4();
    v18 = v7;
    v19 = v10;
    v20 = v8;
    v21 = ObjectType;
    v22 = v18;
    v24 = v23;

    v25 = sub_96A60(v17, v24, &v140);
    v26 = v22;
    ObjectType = v21;
    v8 = v20;
    LODWORD(v20) = v19;
    v7 = v26;

    *(v15 + 4) = v25;
    *(v15 + 12) = 1024;
    LOBYTE(v25) = (*(v8 + 24))(ObjectType, v8);

    *(v15 + 14) = v25 & 1;

    *(v15 + 18) = 1024;
    *(v15 + 20) = v20;
    _os_log_impl(&dword_0, v13, v133, "%{public}s Always online %{BOOL}d, network data available %{BOOL}d", v15, 0x18u);
    sub_97C9C(v132);

    v136 = v7;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v136 = v7;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (((*(v8 + 24))(ObjectType, v8) & 1) == 0)
  {
    v52 = 0;
    p_align = (&stru_11EFE8 + 24);
    v35 = v12;
    goto LABEL_17;
  }

LABEL_8:
  v27 = [v12 context];
  v28 = [v138 handleIDs];
  sub_BD954();

  p_align = &stru_11EFE8.align;
  v30 = [v138 requestID];
  sub_BD8B4();

  v31 = sub_BD744();

  if ((v31 & 1) == 0)
  {
    v52 = 0;
    v35 = v138;
LABEL_17:
    v53 = v35;
    v54 = sub_BD794();
    v55 = sub_BDA54();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v140 = v57;
      *v56 = 136446466;
      v58 = [v53 *(p_align + 170)];
      v59 = sub_BD8B4();
      v61 = v60;

      v62 = sub_96A60(v59, v61, &v140);

      *(v56 + 4) = v62;
      *(v56 + 12) = 1024;
      *(v56 + 14) = v52;
      _os_log_impl(&dword_0, v54, v55, "%{public}s IMChatCalculateServiceForSending iMessage not available (%{BOOL}d) or no addresses, bailing", v56, 0x12u);
      sub_97C9C(v57);
    }

    isa = [v53 handleIDs];
    if (!isa)
    {
      sub_BD954();
      isa = sub_BD944().super.isa;
    }

    v64 = [v136 internalServiceName];
    if (!v64)
    {
      sub_BD8B4();
      v64 = sub_BD884();
    }

    v65 = [objc_opt_self() finalResultForService:v64 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:3];
    goto LABEL_24;
  }

  v32 = [v138 handleIDs];
  v33 = sub_BD954();

  v34 = *(v33 + 16);

  v35 = v138;
  if (!v34)
  {
    v52 = 1;
    goto LABEL_17;
  }

  v36 = [v138 context];
  v37 = [v36 forceMMS];

  if ((v37 & 1) != 0 || (v38 = [v138 context], v39 = objc_msgSend(v38, "conversationWasDowngraded"), v38, v39))
  {
    v40 = v138;
    v41 = sub_BD794();
    v42 = sub_BDA54();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v140 = v44;
      *v43 = 136446722;
      v45 = [v40 requestID];
      v46 = sub_BD8B4();
      v48 = v47;

      v49 = sub_96A60(v46, v48, &v140);

      *(v43 + 4) = v49;
      *(v43 + 12) = 1024;
      v50 = [v40 context];
      LODWORD(v46) = [v50 forceMMS];

      *(v43 + 14) = v46;
      *(v43 + 18) = 1024;
      v51 = [v40 context];
      LODWORD(v46) = [v51 conversationWasDowngraded];

      *(v43 + 20) = v46;
      _os_log_impl(&dword_0, v41, v42, "%{public}s Forcing iMessage unavailable due to forceMMS: %{BOOL}d conversationWasDowngraded: %{BOOL}d", v43, 0x18u);
      sub_97C9C(v44);
    }

    else
    {
    }

    v66 = [v40 handleIDs];
    if (!v66)
    {
      sub_BD954();
      v66 = sub_BD944().super.isa;
    }

    v67 = [v136 internalServiceName];
    if (!v67)
    {
      sub_BD8B4();
      v67 = sub_BD884();
    }

    v139 = [objc_opt_self() finalResultForService:v67 handleIDs:v66 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];

    [a2 reachabilityRequest:v40 updatedWithResult:v139];
    goto LABEL_25;
  }

  v68 = [v138 handleIDs];
  v69 = sub_BD954();

  if (v69[2])
  {
    v71 = v69[4];
    v70 = v69[5];

    v72 = [v138 handleIDs];
    v73 = sub_BD954();

    v74 = *(v73 + 16);

    if (v74 == 1)
    {
      v75 = sub_BD884();
      v76 = [v7 hasValidDowngradeRequestForHandleID:v75];

      if (v76)
      {
        v53 = v138;

        v77 = sub_BD794();
        v78 = sub_BDA54();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          *v79 = 136446466;
          v80 = [v53 requestID];
          v81 = sub_BD8B4();
          v83 = v82;

          v84 = sub_96A60(v81, v83, &v140);

          *(v79 + 4) = v84;
          *(v79 + 12) = 2080;
          v85 = sub_96A60(v71, v70, &v140);

          *(v79 + 14) = v85;
          _os_log_impl(&dword_0, v77, v78, "%{public}s Forcing iMessage unavailable due to downgrade request for %s", v79, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        isa = [v53 handleIDs];
        if (!isa)
        {
          sub_BD954();
          isa = sub_BD944().super.isa;
        }

        v64 = [v136 internalServiceName];
        if (!v64)
        {
          sub_BD8B4();
          v64 = sub_BD884();
        }

LABEL_62:
        v65 = [objc_opt_self() finalResultForService:v64 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];
LABEL_24:
        v139 = v65;

        [a2 reachabilityRequest:v53 updatedWithResult:v139];
LABEL_25:

        return;
      }
    }
  }

  if ([v7 isInternationalSpamFilteringEnabled])
  {
    v86 = [v138 handleIDs];
    v87 = sub_BD954();

    v88 = *(v87 + 16);

    if (v88 == 1)
    {
      v89 = [v138 context];
      v90 = [v89 senderLastAddressedHandle];

      if (v90)
      {
        sub_BD8B4();
      }

      else
      {
        v106 = [v138 context];
        v107 = [v106 senderLastAddressedSIMID];

        if (!v107)
        {
          goto LABEL_55;
        }

        sub_BD8B4();

        swift_unknownObjectRetain();

        sub_BD774();
        v109 = v108;
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        if (!v109)
        {
          goto LABEL_55;
        }
      }

      v91 = [v138 handleIDs];
      v92 = sub_BD954();

      if (!*(v92 + 16))
      {
        __break(1u);
        return;
      }

      v93 = sub_BD884();

      v94 = sub_BD884();

      v95 = [v138 context];
      v96 = [v7 shouldDowngradeToRecipient:v93 fromSender:v94 withContext:v95];

      if (v96)
      {
        v53 = v138;
        v97 = sub_BD794();
        v98 = sub_BDA54();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v140 = v100;
          *v99 = 136446210;
          v101 = [v53 requestID];
          v102 = sub_BD8B4();
          v104 = v103;

          v105 = sub_96A60(v102, v104, &v140);

          *(v99 + 4) = v105;
          _os_log_impl(&dword_0, v97, v98, "%{public}s Forcing iMessage unavailable due to Hawking downgrade", v99, 0xCu);
          sub_97C9C(v100);
        }

        isa = [v53 handleIDs];
        if (!isa)
        {
          sub_BD954();
          isa = sub_BD944().super.isa;
        }

        v64 = [v136 internalServiceName];
        if (!v64)
        {
          sub_BD8B4();
          v64 = sub_BD884();
        }

        v65 = [objc_opt_self() finalResultForService:v64 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:5];
        goto LABEL_24;
      }
    }
  }

LABEL_55:
  v110 = [objc_opt_self() sharedController];
  v111 = [v110 isLiteMessageActiveOverSatellite];

  if (v111)
  {
    v53 = v138;
    v112 = sub_BD794();
    v113 = sub_BDA54();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v140 = v115;
      *v114 = 136446210;
      v116 = [v53 requestID];
      v117 = sub_BD8B4();
      v119 = v118;

      v120 = sub_96A60(v117, v119, &v140);

      *(v114 + 4) = v120;
      _os_log_impl(&dword_0, v112, v113, "%{public}s Forcing iMessage unavailable due to satellite connectivity", v114, 0xCu);
      sub_97C9C(v115);
    }

    isa = [v53 handleIDs];
    if (!isa)
    {
      sub_BD954();
      isa = sub_BD944().super.isa;
    }

    v64 = [v136 internalServiceName];
    if (!v64)
    {
      sub_BD8B4();
      v64 = sub_BD884();
    }

    goto LABEL_62;
  }

  v121 = [v138 handleIDs];
  v122 = sub_BD954();

  v123 = [v138 requestID];
  v124 = sub_BD8B4();
  v126 = v125;

  v127 = [v138 context];
  v128 = [v138 context];
  v129 = [v128 shouldForceServerStatusRefresh];

  v130 = swift_allocObject();
  *(v130 + 16) = a2;
  *(v130 + 24) = v138;
  v131 = v138;
  swift_unknownObjectRetain();
  sub_B8850(v122, v124, v126, a3, a4, v127, v129, 2u, sub_6FE4, v130);
}

uint64_t sub_B8850(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, id a6, char a7, unsigned __int16 a8, uint64_t a9, uint64_t a10)
{
  v11 = a6;
  v12 = a3;
  if ((a7 & 1) == 0 && ![a6 shouldForceServerStatusRefresh])
  {
    v30 = [objc_opt_self() currentIDInfo];
    v31 = qword_124180;
    v102 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_BD7B4();
    sub_96A28(v32, qword_1241A0);

    v33 = sub_BD794();
    v34 = sub_BDA54();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v115[0] = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_96A60(a2, v12, v115);
      _os_log_impl(&dword_0, v33, v34, "%{public}s Doing a cached ID query", v35, 0xCu);
      sub_97C9C(v36);
    }

    v108 = 0;
    goto LABEL_19;
  }

  v14 = a8;
  v15 = [objc_opt_self() refreshIDInfo];
  [v15 setForceRefresh:{objc_msgSend(v11, "shouldForceServerStatusRefresh")}];

  if (v14 != 2)
  {
    if (qword_124180 != -1)
    {
      swift_once();
    }

    v27 = sub_BD7B4();
    sub_96A28(v27, qword_1241A0);
    v17 = v15;

    v18 = sub_BD794();
    v28 = sub_BDA54();

    if (!os_log_type_enabled(v18, v28))
    {
      goto LABEL_12;
    }

    v29 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v115[0] = v21;
    *v29 = 136446978;
    *(v29 + 4) = sub_96A60(a2, v12, v115);
    *(v29 + 12) = 1024;
    *(v29 + 14) = v14 & 1;
    *(v29 + 18) = 1024;
    *(v29 + 20) = (v14 >> 8) & 1;
    *(v29 + 24) = 1024;
    *(v29 + 26) = [v17 forceRefresh];

    v22 = "%{public}s Refreshing ID info due to results: allAreReachable=%{BOOL}d hadUnknownAddress=%{BOOL}d. Force refresh: %{BOOL}d";
    v23 = v28;
    v24 = v18;
    v25 = v29;
    v26 = 30;
    goto LABEL_11;
  }

  if (qword_124180 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v16 = sub_BD7B4();
    sub_96A28(v16, qword_1241A0);
    v17 = v15;

    v18 = sub_BD794();
    v19 = sub_BDA54();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v115[0] = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_96A60(a2, v12, v115);
      *(v20 + 12) = 1024;
      *(v20 + 14) = [v17 forceRefresh];

      v22 = "%{public}s Refreshing ID info due to explicit request. Force refresh: %{BOOL}d";
      v23 = v19;
      v24 = v18;
      v25 = v20;
      v26 = 18;
LABEL_11:
      _os_log_impl(&dword_0, v24, v23, v22, v25, v26);
      sub_97C9C(v21);
    }

    else
    {
LABEL_12:
    }

    v102 = v17;
    v108 = 1;
LABEL_19:
    v106 = v11;
    v37 = sub_BB8F4(_swiftEmptyArrayStorage);
    v12 = a1[2];
    v110 = a1;
    if (v12)
    {
      a1 += 5;
      do
      {
        v11 = *(a1 - 1);
        v40 = *a1;

        v15 = sub_BD884();
        v41 = IMChatCanonicalIDSIDsForAddress();

        if (!v41)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v115[0] = v37;
          v54 = sub_94048(v11, v40);
          v56 = v37[2];
          v57 = (v55 & 1) == 0;
          v49 = __OFADD__(v56, v57);
          v58 = v56 + v57;
          if (v49)
          {
            goto LABEL_65;
          }

          v15 = v55;
          if (v37[3] < v58)
          {
            sub_BA73C(v58, isUniquelyReferenced_nonNull_native);
            v54 = sub_94048(v11, v40);
            if ((v15 & 1) != (v59 & 1))
            {
LABEL_70:
              result = sub_BDD64();
              __break(1u);
              return result;
            }

            goto LABEL_39;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_39:
            v37 = v115[0];
            if ((v15 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v65 = v54;
            sub_BB164();
            v54 = v65;
            v37 = v115[0];
            if ((v15 & 1) == 0)
            {
LABEL_44:
              v37[(v54 >> 6) + 8] |= 1 << v54;
              v66 = (v37[6] + 16 * v54);
              *v66 = v11;
              v66[1] = v40;
              v67 = (v37[7] + 16 * v54);
              *v67 = v11;
              v67[1] = v40;
              v68 = v37[2];
              v49 = __OFADD__(v68, 1);
              v63 = v68 + 1;
              if (v49)
              {
                goto LABEL_67;
              }

              goto LABEL_45;
            }
          }

          v39 = (v37[7] + 16 * v54);
          goto LABEL_22;
        }

        v42 = sub_BD8B4();
        v15 = v43;

        v44 = swift_isUniquelyReferenced_nonNull_native();
        v115[0] = v37;
        v45 = sub_94048(v42, v15);
        v47 = v37[2];
        v48 = (v46 & 1) == 0;
        v49 = __OFADD__(v47, v48);
        v50 = v47 + v48;
        if (v49)
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v51 = v46;
        if (v37[3] >= v50)
        {
          if ((v44 & 1) == 0)
          {
            v64 = v45;
            sub_BB164();
            v45 = v64;
            if ((v51 & 1) == 0)
            {
LABEL_35:
              v37 = v115[0];
              *(v115[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
              v60 = (v37[6] + 16 * v45);
              *v60 = v42;
              v60[1] = v15;
              v61 = (v37[7] + 16 * v45);
              *v61 = v11;
              v61[1] = v40;

              v62 = v37[2];
              v49 = __OFADD__(v62, 1);
              v63 = v62 + 1;
              if (v49)
              {
                goto LABEL_66;
              }

LABEL_45:
              v37[2] = v63;
              goto LABEL_23;
            }

            goto LABEL_21;
          }
        }

        else
        {
          sub_BA73C(v50, v44);
          v45 = sub_94048(v42, v15);
          if ((v51 & 1) != (v52 & 1))
          {
            goto LABEL_70;
          }
        }

        if ((v51 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_21:
        v38 = v45;

        v37 = v115[0];
        v39 = (*(v115[0] + 56) + 16 * v38);
LABEL_22:
        *v39 = v11;
        v39[1] = v40;

LABEL_23:
        a1 += 2;
        --v12;
      }

      while (v12);
    }

    v69 = swift_allocObject();
    *(v69 + 16) = v37;
    v70 = a5;
    if (a5)
    {

      v71 = sub_BD884();
      v72 = [v71 _stripFZIDPrefix];

      v73 = IMChatCanonicalIDSIDsForAddress();
      v74 = a3;
      v75 = v106;
      if (v73)
      {
        v76 = sub_BD8B4();
        v78 = v77;

        swift_bridgeObjectRetain_n();
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v115[0] = *(v69 + 16);
        *(v69 + 16) = 0x8000000000000000;
        sub_BAE50(v76, v78, v76, v78, v79);

        v37 = v115[0];
        *(v69 + 16) = v115[0];
      }

      else
      {

        v76 = 0;
        v78 = 0;
      }
    }

    else
    {
      v78 = 0;
      v76 = a4;
      v74 = a3;
      v75 = v106;
    }

    v80 = v37[2];
    v103 = v69;
    if (!v80)
    {
      v84 = _swiftEmptyArrayStorage;
      goto LABEL_55;
    }

    v100 = v76;
    v81 = v78;
    a1 = sub_B9C20(v80, 0);
    v82 = sub_BB2DC(v115, a1 + 4, v80, v37);
    v83 = v115[0];
    v12 = v115[1];
    v15 = v115[3];
    v11 = v115[4];

    sub_75A8(v83);
    if (v82 == v80)
    {
      break;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
  }

  v74 = a3;
  v70 = a5;
  v75 = v106;
  v69 = v103;
  v84 = a1;
  v78 = v81;
  v76 = v100;
LABEL_55:
  v107 = v84;
  sub_931BC(v84);
  isa = sub_BD944().super.isa;

  v86 = IMServiceNameForCanonicalIDSAddresses();

  if (v86)
  {
    v101 = sub_BD8B4();
    v105 = v87;
  }

  else
  {
    v101 = 0;
    v105 = 0;
  }

  v88 = swift_allocObject();
  *(v88 + 16) = v109;
  *(v88 + 24) = a2;
  *(v88 + 32) = v74;
  *(v88 + 40) = v76;
  *(v88 + 48) = v78;
  *(v88 + 56) = v69;
  *(v88 + 64) = v75;
  *(v88 + 72) = v108;
  *(v88 + 80) = a9;
  *(v88 + 88) = a10;
  *(v88 + 96) = v110;
  *(v88 + 104) = a4;
  *(v88 + 112) = v70;
  v112 = *(v109 + 24);

  v89 = v75;

  v90 = [v89 senderLastAddressedHandle];
  if (v90)
  {
    v91 = v90;
    v98 = sub_BD8B4();
    v99 = v92;
  }

  else
  {
    v98 = 0;
    v99 = 0;
  }

  ObjectType = swift_getObjectType();
  sub_7610(0, &qword_123EF8, OS_dispatch_queue_ptr);
  v94 = sub_BDAA4();
  v95 = swift_allocObject();
  *(v95 + 16) = a2;
  *(v95 + 24) = a3;
  *(v95 + 32) = a9;
  *(v95 + 40) = a10;
  *(v95 + 48) = v109;
  *(v95 + 56) = v110;
  *(v95 + 64) = v108;
  *(v95 + 72) = &unk_CEE48;
  *(v95 + 80) = v88;
  v96 = *(v112 + 16);

  v96(v107, v101, v105, v98, v99, 2, v102, 0xD000000000000022, 0x80000000000DCE50, v94, sub_7454, v95, ObjectType, v112);
}

uint64_t MessageReachabilityController.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t MessageReachabilityController.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_B942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 88) = v11;
  *(v9 + 96) = v8;
  *(v9 + 216) = a8;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  *(v9 + 56) = a4;
  *(v9 + 64) = a5;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 32) = a1;
  return _swift_task_switch(sub_4430, 0, 0);
}

uint64_t sub_B9468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v13;
  *(v8 + 120) = v12;
  *(v8 + 104) = v11;
  *(v8 + 169) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  return _swift_task_switch(sub_69AC, 0, 0);
}

void sub_B94B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(id), uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v32 = a6;
  v33 = a5;
  v15 = sub_94950(&qword_123ED8, &qword_CEE50);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  if (a1 && (sub_B9820(a1), v18))
  {
    v19 = v18;
    sub_BD9C4();
    v20 = sub_BD9F4();
    (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
    sub_BD9B4();

    v21 = sub_BD9A4();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = a10;
    v22[5] = a11;
    v22[6] = v19;
    sub_9B0BC(0, 0, v17, &unk_CEE60, v22);
  }

  else
  {
    if (qword_124180 != -1)
    {
      swift_once();
    }

    v23 = sub_BD7B4();
    sub_96A28(v23, qword_1241A0);

    v24 = sub_BD794();
    v25 = sub_BDA74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_96A60(a3, a4, &v35);
      _os_log_impl(&dword_0, v24, v25, "%{public}s Did not get a [String: IDSIDInfoResult] from IDS!?", v26, 0xCu);
      sub_97C9C(v27);
    }

    v28 = [*(a7 + 16) internalServiceName];
    if (!v28)
    {
      sub_BD8B4();
      v28 = sub_BD884();
    }

    v29 = objc_opt_self();
    isa = sub_BD944().super.isa;
    v34 = [v29 finalResultForService:v28 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:a9 & 1 error:-1];

    v33(v34);
    v31 = v34;
  }
}

void sub_B9820(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_94950(&qword_123D48, &qword_CE330);
    v2 = sub_BDCF4();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_97D98(*(a1 + 48) + 40 * v12, v26);
        sub_97D3C(*(a1 + 56) + 32 * v12, v27 + 8);
        v24[0] = v27[0];
        v24[1] = v27[1];
        v25 = v28;
        v23[0] = v26[0];
        v23[1] = v26[1];
        sub_97D98(v23, v22);
        if (!swift_dynamicCast())
        {
          sub_75B0(v23, &qword_1242E0, &qword_CEE68);

          goto LABEL_23;
        }

        sub_97D3C(v24 + 8, v22);
        sub_75B0(v23, &qword_1242E0, &qword_CEE68);
        sub_7610(0, &qword_123E60, IDSIDInfoResult_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v13 = sub_94048(v20, v21);
        v14 = v13;
        if (v15)
        {
          v8 = (v2[6] + 16 * v13);
          *v8 = v20;
          v8[1] = v21;

          v9 = v2[7];
          v10 = *(v9 + 8 * v14);
          *(v9 + 8 * v14) = v20;

          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
          v16 = (v2[6] + 16 * v13);
          *v16 = v20;
          v16[1] = v21;
          *(v2[7] + 8 * v13) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_26;
          }

          v2[2] = v19;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }

LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_B9B04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_BD9B4();
  v6[3] = sub_BD9A4();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_6D10;

  return v11(a6);
}

void *sub_B9C20(uint64_t a1, uint64_t a2)
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

  sub_94950(&qword_123E90, &qword_CE9B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_B9CC8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_BDDC4();

    sub_BD8E4();
    v23 = sub_BDDE4();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_BDD24() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_BA470(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_BDDC4();

            sub_BD8E4();
            v41 = sub_BDDE4();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_BDD24() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_BA238(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_75A8(v13);
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t *sub_BA238(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_BA470(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_BDDC4();

        sub_BD8E4();
        v19 = sub_BDDE4();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_BDD24() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_BA470(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_94950(&qword_124108, &qword_CEB28);
  result = sub_BDC04();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_BDDC4();

    sub_BD8E4();
    result = sub_BDDE4();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_BA694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_94048(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_6FF8(&qword_123D48, &qword_CE330);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_BACA0(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_BA73C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_94950(&qword_124308, &qword_CEEA8);
  v37 = v4;
  result = sub_BDCE4();
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

      sub_BDDC4();
      sub_BD8E4();
      result = sub_BDDE4();
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

uint64_t sub_BA9FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_94950(&qword_124300, &unk_CEE90);
  v35 = v4;
  result = sub_BDCE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_BDDC4();
      sub_BD8E4();
      result = sub_BDDE4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_BACA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_BDB44() + 1) & ~v5;
    do
    {
      sub_BDDC4();

      sub_BD8E4();
      v9 = sub_BDDE4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_BAE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_94048(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_BA73C(v18, a5 & 1);
      v13 = sub_94048(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_BDD64();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_BB164();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_BAFD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_94048(a2, a3);
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
      sub_BA9FC(v16, a4 & 1);
      v11 = sub_94048(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_BDD64();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_6FF8(&qword_124300, &unk_CEE90);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_BB164()
{
  v1 = v0;
  sub_94950(&qword_124308, &qword_CEEA8);
  v2 = *v0;
  v3 = sub_BDCD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void *sub_BB2DC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_BB448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_124300, &unk_CEE90);
    v3 = sub_BDCF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_94048(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_BB54C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_BDA34();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_B1E30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_BB5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_BB448(_swiftEmptyArrayStorage);
  v7 = *(a4 + 16) != 0;
  v8 = objc_allocWithZone(IMServiceReachabilityResult);
  v9 = sub_BD884();
  sub_7610(0, &qword_1242E8, IMServiceReachabilityHandleResult_ptr);
  isa = sub_BD834().super.isa;

  LOBYTE(v25) = 0;
  v11 = [v8 initWithService:v9 error:0 handleResults:isa isFinal:0 allAreReachable:v7 allSupportEncryption:0 didCheckServer:v25];

  [v11 setSelfKTData:a3];
  sub_7610(0, &qword_123E60, IDSIDInfoResult_ptr);
  v12 = sub_BD834().super.isa;
  [v11 setKtData:v12];

  v14 = sub_BB54C(v13);

  if (sub_B9CC8(a4, v14)[2])
  {
    if (qword_124180 != -1)
    {
      swift_once();
    }

    v15 = sub_BD7B4();
    sub_96A28(v15, qword_1241A0);

    v16 = sub_BD794();
    v17 = sub_BDA54();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      v20 = sub_BDA24();
      v22 = v21;

      v23 = sub_96A60(v20, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "IDS didn't give us back all the results we asked about: %s", v18, 0xCu);
      sub_97C9C(v19);
    }

    else
    {
    }

    [v11 setAllAreReachable:0];
  }

  else
  {
  }

  return v11;
}

unint64_t sub_BB8F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_124308, &qword_CEEA8);
    v3 = sub_BDCF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_94048(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_BBA08()
{
  result = qword_1242F8;
  if (!qword_1242F8)
  {
    sub_A9E00(&qword_1242F0, &qword_CEE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1242F8);
  }

  return result;
}

uint64_t sub_BBA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_BDD24() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_BBB0C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_BBC1C(void *a1)
{

  objc_end_catch();
}

void sub_BBC50(void *a1, NSObject *a2)
{
  v3 = [a1 guid];
  sub_35480();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Found a chat that is not 1-1 chat for message relay: %@", v4, 0xCu);
}

void sub_BBCE8()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BBD58(void *a1, NSObject *a2, double a3)
{
  [a1 _messageRetryTimeout];
  v6 = 134218240;
  v7 = a3;
  v8 = 2048;
  v9 = v5;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "timeSinceLastCacheFlush > _messagesRetryTimeout (%f > %f), or not flushed before.", &v6, 0x16u);
}

void sub_BBEE4()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BBF74()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC004()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC0B8()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC128()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC164()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC1A0()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC1DC()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC218()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC288()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC318(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "  Unable to reflect mark as reviewed, callerID is nil for account: %@", &v2, 0xCu);
}

void sub_BC390()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC41C()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC4A8()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC4E4()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC554()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC590()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC5CC()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC63C()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC6AC(uint64_t a1, int a2, NSObject *a3)
{
  [*(a1 + 32) guid];
  sub_35480();
  v7 = 2112;
  v8 = v5;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Individual send for collaboration, message guid %@ to %@ failed for reason: %u", v6, 0x1Cu);
}

void sub_BC764()
{
  sub_54EB8(__stack_chk_guard);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC7D4()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC864()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC8F4()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC984()
{
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC9F8()
{
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BCB0C()
{
  sub_54EA4(__stack_chk_guard);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BCCF8()
{
  sub_54EB8(__stack_chk_guard);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BCD68()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BCDA4()
{
  sub_54EB8(__stack_chk_guard);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BCE14()
{
  sub_54EB8(__stack_chk_guard);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BCE84()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BCEC0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to store updated breadcrumb item %@", &v2, 0xCu);
}

void sub_BCF38()
{
  v5 = 138412546;
  sub_35464();
  sub_6F378(&dword_0, &_os_log_default, v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_BCFC4()
{
  v5 = 138412546;
  sub_35464();
  sub_6F378(&dword_0, &_os_log_default, v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_BD04C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error unpacking balloon plugin from BlastDoor: %@", &v2, 0xCu);
}

void sub_BD0C4()
{
  v5 = 138412546;
  sub_35464();
  sub_6F378(&dword_0, &_os_log_default, v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_BD14C()
{
  v5 = 138412546;
  sub_35464();
  sub_6F378(&dword_0, &_os_log_default, v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_BD1D4()
{
  v5 = 138412546;
  sub_35464();
  sub_6F378(&dword_0, &_os_log_default, v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_BD25C()
{
  v5 = 138412546;
  sub_35464();
  sub_6F378(&dword_0, &_os_log_default, v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_BD2E4()
{
  v5 = 138412546;
  sub_35464();
  sub_6F378(&dword_0, &_os_log_default, v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_BD380(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "_handleIncomingMessageError: %@", &v3, 0x16u);
}