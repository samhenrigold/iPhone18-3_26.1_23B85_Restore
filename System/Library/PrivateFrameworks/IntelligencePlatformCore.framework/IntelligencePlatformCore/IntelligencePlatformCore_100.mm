void sub_1C4D4252C()
{
  sub_1C467D6F8();
  type metadata accessor for WalletClassicOrderDeltaSourceIngestor(0);
  if (qword_1EDDFD1F0 != -1)
  {
    sub_1C440EAE0(&qword_1EDDFD1F0);
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, &qword_1EDDFD1F8);
  sub_1C4D45F00();
}

uint64_t sub_1C4D425E4()
{
  sub_1C4D4252C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C4D426AC()
{
  type metadata accessor for WalletClassicOrderSourceIngestor(0);
  if (qword_1EDDFD1F0 != -1)
  {
    sub_1C440EAE0(&qword_1EDDFD1F0);
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, &qword_1EDDFD1F8);
  sub_1C4D449BC();
}

uint64_t sub_1C4D4272C()
{
  sub_1C4D426AC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D427F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C6830, &qword_1C4F6F5C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D42864(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C6830, &qword_1C4F6F5C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4D428CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4D42928(void *a1)
{
  v2 = [a1 localizedDisplayName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4D42998(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4D42A80(uint64_t a1)
{
  result = sub_1C4D42B30(qword_1EDDDDBF8, type metadata accessor for WalletClassicOrderSourceIngestor, &unk_1C4F6F644);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D42AD8(uint64_t a1)
{
  result = sub_1C4D42B30(&qword_1EDDDDBE0, type metadata accessor for WalletClassicOrderSourceIngestor, &unk_1C4F6F66C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D42B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4D42B78(uint64_t a1)
{
  result = sub_1C4D42B30(qword_1EDDDC7B0, type metadata accessor for WalletClassicOrderDeltaSourceIngestor, &unk_1C4F6F6C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D42BD0(uint64_t a1)
{
  result = sub_1C4D42B30(&qword_1EDDDC798, type metadata accessor for WalletClassicOrderDeltaSourceIngestor, &unk_1C4F6F6E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D42C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9488();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  v17 = objc_autoreleasePoolPush();
  sub_1C4EF9428();
  sub_1C4EF9418();
  sub_1C4EF9458();
  v18 = *(v6 + 8);
  v18(v10, v4);
  v18(v13, v4);
  v21[0] = a1;
  v21[1] = a2;
  sub_1C4415EA8();
  sub_1C4F01FF8();
  v19 = sub_1C4F00FF8();

  v18(v16, v4);
  objc_autoreleasePoolPop(v17);
  return v19;
}

uint64_t sub_1C4D42DD8()
{
  v1 = sub_1C4EF9488();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A89C();
  v5 = objc_autoreleasePoolPush();
  sub_1C4EF9418();
  sub_1C4415EA8();
  sub_1C4F01FB8();
  (*(v3 + 8))(v0, v1);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  v6 = sub_1C4F00FF8();

  objc_autoreleasePoolPop(v5);
  return v6;
}

double sub_1C4D4308C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C4D4400C(a3, a4, v16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4F01108();

  v18 = [v16 dateFromString_];

  if (v18)
  {
    sub_1C4EF9C78();

    (*(v8 + 32))(v15, v12, v6);
    sub_1C4EF9C58();
    v20 = v19;

    (*(v8 + 8))(v15, v6);
  }

  else
  {
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C4F0D130;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 32) = 0xD000000000000025;
    *(v21 + 40) = 0x80000001C4FC76D0;
    sub_1C4F02AC8();

    return 0.0;
  }

  return v20;
}

uint64_t sub_1C4D432C8(uint64_t a1)
{
  v42 = a1;
  v1 = sub_1C4EF9F68();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v35 - v17;
  v18 = sub_1C4EF9F88();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A48], v1);
  sub_1C4EF9CC8();
  sub_1C4EF9F28();
  v39 = v11;
  v38 = *(v11 + 8);
  v38(v15, v10);
  (*(v2 + 8))(v4, v1);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    (*(v19 + 8))(v21, v18);
    v22 = v9;
LABEL_5:
    sub_1C44686E4(v22);
    goto LABEL_6;
  }

  v23 = v21;
  v36 = v18;
  v24 = v40;
  v25 = *(v39 + 32);
  v25(v40, v9, v10);
  v26 = v41;
  sub_1C4467FE0(v42, v41);
  if (sub_1C44157D4(v26, 1, v10) == 1)
  {
    v38(v24, v10);
    (*(v19 + 8))(v23, v36);
    v22 = v26;
    goto LABEL_5;
  }

  v29 = v37;
  v25(v37, v26, v10);
  sub_1C4575ED0();
  v30 = sub_1C4F01068();
  v31 = v36;
  if ((v30 & 1) == 0)
  {
    sub_1C4EF9CC8();
    v33 = sub_1C4F01068();
    v34 = v38;
    v38(v15, v10);
    v34(v29, v10);
    v34(v24, v10);
    (*(v19 + 8))(v23, v31);
    v27 = v33 ^ 1;
    return v27 & 1;
  }

  v32 = v38;
  v38(v29, v10);
  v32(v24, v10);
  (*(v19 + 8))(v23, v31);
LABEL_6:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1C4D43794(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  sub_1C4D4E630(result);
  if (v2)
  {

    result = sub_1C4D4E630(v1);
    if (!v3)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v4 = result;
    v5 = v3;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v1 shippingInformation];
  if (!v8)
  {
    return v7;
  }

  sub_1C4D4E624(v8);
  if (!v9)
  {
    return v7;
  }

  result = [v1 shippingInformation];
  if (!result)
  {
    goto LABEL_21;
  }

  result = sub_1C4D4E624(result);
  if (!v10)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = v10;

  if (v7)
  {
    return 1;
  }

  v13 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v12) & 0xF;
  }

  return v13 != 0;
}

uint64_t *BMEventBase.ingestBaseEvent(startTime:endTime:pipelineType:stores:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = v3;
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v14 = *a3;
  v15 = objc_opt_self();
  v16 = sub_1C4413D58(v15);
  if (v16)
  {
    v17 = v16;
    sub_1C442D9DC();
    switch(v14)
    {
      case 2:
        v27 = v5;

        goto LABEL_8;
      case 3:
        sub_1C44133C0();
        break;
      default:
        break;
    }

    v28 = sub_1C4F02938();
    v29 = v5;

    if ((v28 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (sub_1C4D43794(v17))
    {
LABEL_9:
      BYTE4(v66) = v14;
      v30 = sub_1C440828C();
      BMWalletPaymentsCommerceOrderEmail.ingestEvent(startTime:endTime:pipelineType:stores:)(v30, v31, v32, v33, v34, v35, v36, v37, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
      v21 = v38;
LABEL_10:

      return v21;
    }

    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v39 = sub_1C4F00978();
    sub_1C442B738(v39, qword_1EDE2DE10);
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CC8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C43F8000, v40, v41, "Skipping invalid wallet email order: missing both orderNumber and trackingNumber", v42, 2u);
      MEMORY[0x1C6942830](v42, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v18 = objc_opt_self();
  if (sub_1C4413D58(v18))
  {
    BYTE5(v66) = v14;
    v19 = sub_1C440828C();
    v21 = v20;
    v26 = BMWalletPaymentsCommerceClassicOrder.ingestEvent(startTime:endTime:pipelineType:stores:)(v25, v19, v22, v23, v24);
  }

  else
  {
    v43 = objc_opt_self();
    if (!sub_1C4413D58(v43))
    {
      v51 = objc_opt_self();
      v65 = sub_1C4413D58(v51);
      if (v65)
      {
        sub_1C442D9DC();
        switch(v14)
        {
          case 2:
            v52 = v5;

            goto LABEL_27;
          case 3:
            sub_1C44133C0();
            break;
          default:
            break;
        }

        HIDWORD(v64) = sub_1C4F02938();
        v53 = v5;

        if ((v64 & 0x100000000) != 0)
        {
LABEL_27:
          v54 = [v65 transactionDate];
          if (v54)
          {
            v55 = v54;
            sub_1C4EF9C78();

            v56 = sub_1C4EF9CD8();
            v57 = 0;
          }

          else
          {
            v56 = sub_1C4EF9CD8();
            v57 = 1;
          }

          sub_1C440BAA8(v10, v57, 1, v56);
          sub_1C45B69E4(v10, v13);
          v58 = sub_1C4D432C8(v13);
          sub_1C44686E4(v13);
          if ((v58 & 1) == 0)
          {

            return MEMORY[0x1E69E7CC0];
          }
        }

        HIBYTE(v66) = v14;
        v5 = v5;
        v59 = sub_1C440828C();
        v21 = BMWalletPaymentsCommerceTransaction.ingestEvent(startTime:endTime:pipelineType:stores:)(v62, v59, v60, v61);

        goto LABEL_10;
      }

      return MEMORY[0x1E69E7CC0];
    }

    BYTE6(v66) = v14;
    v44 = sub_1C440828C();
    v21 = v45;
    v26 = BMWalletPaymentsCommerceTrackedOrder.ingestEvent(startTime:endTime:pipelineType:stores:)(v49, v44, v46, v47, v48);
  }

  if (!v4)
  {
    return v26;
  }

  return v21;
}

uint64_t sub_1C4D43CFC(uint64_t a1, char a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v10 = type metadata accessor for Pipeline.StatusStore(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C440A89C();
  sub_1C44098F0(a1, v5);
  *(v5 + *(v11 + 28)) = a2;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v5);
  sub_1C442D9DC();
  switch(a2)
  {
    case 1:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  v12 = sub_1C4F02938();

  if (v12)
  {
LABEL_5:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0x61746C6544, 0xE500000000000000);
  }

  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v14 = sub_1C4F01108();

  *(inited + 48) = v14;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  v15 = sub_1C4F01108();

  *(inited + 72) = v15;
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  sub_1C440F1BC();
  swift_beginAccess();
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  sub_1C440F1BC();
  swift_beginAccess();
  v16 = *a5;
  sub_1C440F1BC();
  swift_beginAccess();
  result = v16 - *a4;
  if (__OFSUB__(v16, *a4))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4468200();
    sub_1C4F00F28();
    sub_1C440F1BC();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C4D4400C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();
  [a3 setDateFormat_];
}

uint64_t sub_1C4D44064(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 112) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 120) = swift_task_alloc();
  v7 = type metadata accessor for Source(0);
  *(v3 + 128) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v8 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v8);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 185) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4D44190, 0, 0);
}

uint64_t sub_1C4D44190()
{
  switch(*(v0 + 185))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 96);
        v3 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D44554(&qword_1EDDDCE88, type metadata accessor for WalletEmailOrderDeltaSourceIngestor, &unk_1C4F6F9D0);
        v4 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v2, v5 + v6, v7);
        v8 = qword_1EDDFD288;
        v9 = 2;
        v10 = v4;
      }

      else
      {
        v11 = *(v0 + 96);
        v3 = type metadata accessor for WalletEmailOrderSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D44554(&qword_1EDDDEDB8, type metadata accessor for WalletEmailOrderSourceIngestor, &unk_1C4F6F9F8);
        v10 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v11, v10, v12);
        v4 = (v10 + *(v3 + 20));
        v8 = qword_1EDDFD288;
        v9 = 1;
      }

      if (v8 != -1)
      {
        sub_1C440B8A0(&qword_1EDDFD288);
      }

      v13 = *(v0 + 160);
      v14 = *(v0 + 96);
      sub_1C442B738(*(v0 + 128), &qword_1EDDFD290);
      sub_1C44068F0();
      sub_1C4471750(v15, v4, v16);
      *(v10 + *(v3 + 24)) = v9;
      sub_1C4EFCEF8();
      sub_1C4419288();
      sub_1C4471750(v14, v13, v17);
      if (qword_1EDDFD288 != -1)
      {
        sub_1C440B8A0(&qword_1EDDFD288);
      }

      v18 = *(v0 + 185);
      v19 = *(v0 + 144);
      v20 = *(v0 + 152);
      v21 = *(v0 + 136);
      v22 = *(v0 + 96);
      v23 = sub_1C442B738(*(v0 + 128), &qword_1EDDFD290);
      *(v0 + 168) = v23;
      sub_1C4471750(v23, v19, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v23, v21, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v22, v20, v24);
      *(v0 + 184) = v18;
      v25 = swift_task_alloc();
      *(v0 + 176) = v25;
      *v25 = v0;
      v25[1] = sub_1C4657140;

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t type metadata accessor for WalletEmailOrderEventPhase(uint64_t a1)
{
  result = qword_1EDDE0CA0;
  if (!qword_1EDDE0CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D44554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4D4459C()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletEmailOrderSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v12, v51);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C441D02C(v14, v15, v16, v17, v18, v19, v20, v21, v52);
  v22 = sub_1C440CE00();
  v23 = sub_1C44262B0(v22);
  v24 = sub_1C44062F4(v23);
  sub_1C4413D70(v24);
  sub_1C43FBDBC();
  v25 = swift_allocObject();
  sub_1C440C134(v25);
  v26 = sub_1C440F54C(&unk_1F440D308);
  sub_1C442C158(v26);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v27 = sub_1C4415DE0();
  v28 = sub_1C443F87C(v27, qword_1EDE2DE10);
  v29 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v29))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v30, v31, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v32 = swift_allocObject();
  sub_1C4433F24(v32);
  sub_1C43FCC0C();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C440829C();
  sub_1C44026A4(v34, v35);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v36 = *v3;
  if (*v3)
  {
    swift_willThrow();
    v37 = v36;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C4647508();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  v38 = sub_1C442AA64();
  v39 = sub_1C4485DE8(v38);
  v40 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v40))
  {
    sub_1C440F274();
    v41 = sub_1C444AE50();
    sub_1C443F438(v41);
    sub_1C4426FDC(4.8151e-34);

    v42 = sub_1C442D9F0();
    switch(v43)
    {
      case 1:
        v42 = sub_1C447F3F0();
        break;
      case 2:
        v42 = sub_1C44255E0();
        break;
      case 3:
        v42 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v42, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletEmailOrderSourceIngestor);
    sub_1C4640684();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v46, v47, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v44 = sub_1C447FB28();
    sub_1C4D4E63C(v44, v45);
  }

  v48 = sub_1C465B58C();
  v49 = sub_1C43FFB2C(&type metadata for TransformingError, v48);
  sub_1C44225B8(v49, v50);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D449BC()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletClassicOrderSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v12, v51);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C441D02C(v14, v15, v16, v17, v18, v19, v20, v21, v52);
  v22 = sub_1C440CE00();
  v23 = sub_1C44262B0(v22);
  v24 = sub_1C44062F4(v23);
  sub_1C4413D70(v24);
  sub_1C43FBDBC();
  v25 = swift_allocObject();
  sub_1C440C134(v25);
  v26 = sub_1C440F54C(&unk_1F440D308);
  sub_1C442C158(v26);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v27 = sub_1C4415DE0();
  v28 = sub_1C443F87C(v27, qword_1EDE2DE10);
  v29 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v29))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v30, v31, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v32 = swift_allocObject();
  sub_1C4433F24(v32);
  sub_1C43FCC0C();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C440829C();
  sub_1C44026A4(v34, v35);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v36 = *v3;
  if (*v3)
  {
    swift_willThrow();
    v37 = v36;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C464888C();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  v38 = sub_1C442AA64();
  v39 = sub_1C4485DE8(v38);
  v40 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v40))
  {
    sub_1C440F274();
    v41 = sub_1C444AE50();
    sub_1C443F438(v41);
    sub_1C4426FDC(4.8151e-34);

    v42 = sub_1C442D9F0();
    switch(v43)
    {
      case 1:
        v42 = sub_1C447F3F0();
        break;
      case 2:
        v42 = sub_1C44255E0();
        break;
      case 3:
        v42 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v42, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletClassicOrderSourceIngestor);
    sub_1C46405BC();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v46, v47, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v44 = sub_1C447FB28();
    sub_1C4D4E63C(v44, v45);
  }

  v48 = sub_1C465B58C();
  v49 = sub_1C43FFB2C(&type metadata for TransformingError, v48);
  sub_1C44225B8(v49, v50);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D44DDC()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletTrackedOrderSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v12, v51);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C441D02C(v14, v15, v16, v17, v18, v19, v20, v21, v52);
  v22 = sub_1C440CE00();
  v23 = sub_1C44262B0(v22);
  v24 = sub_1C44062F4(v23);
  sub_1C4413D70(v24);
  sub_1C43FBDBC();
  v25 = swift_allocObject();
  sub_1C440C134(v25);
  v26 = sub_1C440F54C(&unk_1F440D308);
  sub_1C442C158(v26);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v27 = sub_1C4415DE0();
  v28 = sub_1C443F87C(v27, qword_1EDE2DE10);
  v29 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v29))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v30, v31, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v32 = swift_allocObject();
  sub_1C4433F24(v32);
  sub_1C43FCC0C();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C440829C();
  sub_1C44026A4(v34, v35);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v36 = *v3;
  if (*v3)
  {
    swift_willThrow();
    v37 = v36;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C4648D84();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  v38 = sub_1C442AA64();
  v39 = sub_1C4485DE8(v38);
  v40 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v40))
  {
    sub_1C440F274();
    v41 = sub_1C444AE50();
    sub_1C443F438(v41);
    sub_1C4426FDC(4.8151e-34);

    v42 = sub_1C442D9F0();
    switch(v43)
    {
      case 1:
        v42 = sub_1C447F3F0();
        break;
      case 2:
        v42 = sub_1C44255E0();
        break;
      case 3:
        v42 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v42, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletTrackedOrderSourceIngestor);
    sub_1C464049C();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v46, v47, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v44 = sub_1C447FB28();
    sub_1C4D4E63C(v44, v45);
  }

  v48 = sub_1C465B58C();
  v49 = sub_1C43FFB2C(&type metadata for TransformingError, v48);
  sub_1C44225B8(v49, v50);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D451FC(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v66 = a5;
  v65 = a4;
  v67 = a3;
  v7 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53[0] = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = v53 - v10;
  v11 = swift_allocObject();
  v64 = v11;
  *(v11 + 16) = 0;
  v57 = (v11 + 16);
  v12 = swift_allocObject();
  v63 = v12;
  *(v12 + 16) = 0;
  v13 = v12 + 16;
  v14 = swift_allocObject();
  v62 = v14;
  *(v14 + 16) = 0;
  v56 = v14 + 16;
  if (a2)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = *&a1;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v54 = (v18 + 16);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v61 = v18;
  v59 = v13;
  v19 = sub_1C4F00978();
  v53[1] = sub_1C442B738(v19, qword_1EDE2DE10);
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CF8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, v20, v21, "Ingesting orders using time stamp: %f", v22, 0xCu);
    MEMORY[0x1C6942830](v22, -1, -1);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = (v23 + 16);
  v25 = type metadata accessor for PhaseStores(0);
  MEMORY[0x1EEE9AC00](v25);
  *&v53[-12] = v15;
  v26 = v65;
  v53[-11] = v60;
  v53[-10] = v26;
  v27 = v64;
  v53[-9] = v23;
  v53[-8] = v27;
  v28 = v62;
  v53[-7] = v16;
  v53[-6] = v28;
  LOBYTE(v53[-5]) = v67;
  v29 = v63;
  v53[-4] = v30;
  v53[-3] = v29;
  v53[-2] = v61;
  v31 = v58;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4D4E9D4, &v53[-14]);
  if (v31)
  {

LABEL_12:
    v34 = v59;
    goto LABEL_13;
  }

  v58 = v23;
  swift_beginAccess();
  v32 = *v24;
  if (*v24)
  {
    swift_willThrow();
    v33 = v32;

    goto LABEL_12;
  }

  swift_beginAccess();
  v35 = *v17;
  v34 = v59;
  if (!*v17)
  {
    v37 = v55;
    v38 = v60;
LABEL_20:
    v39 = v54;
    swift_beginAccess();
    if ((*v39 & 1) == 0)
    {
      swift_beginAccess();
      sub_1C4649758();

      sub_1C4D43CFC(v66, v67, v65, v34, v57);

      goto LABEL_14;
    }

    sub_1C448D19C(v38, v37);
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CD8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70 = v60;
      *v42 = 136315394;
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_1C4F02248();

      v68 = 0x6E696C657069503CLL;
      v69 = 0xEF203A6570795465;
      v43 = 0xE700000000000000;
      v44 = 0x6E776F6E6B6E75;
      switch(v67)
      {
        case 1:
          v43 = 0xE400000000000000;
          v44 = 1819047270;
          break;
        case 2:
          v43 = 0xE500000000000000;
          v44 = 0x61746C6564;
          break;
        case 3:
          v43 = 0xEA0000000000676ELL;
          v44 = 0x69686374614D6F74;
          break;
        default:
          break;
      }

      MEMORY[0x1C6940010](v44, v43);

      MEMORY[0x1C6940010](62, 0xE100000000000000);
      v45 = sub_1C441D828(v68, v69, &v70);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = v53[0];
      sub_1C448D19C(v37, v53[0]);
      sub_1C4D4E63C(v37, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
      v47 = sub_1C464037C();
      v49 = v48;
      sub_1C4D4E63C(v46, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
      v50 = sub_1C441D828(v47, v49, &v70);

      *(v42 + 14) = v50;
      _os_log_impl(&dword_1C43F8000, v40, v41, "Unable to commit %s for : %s", v42, 0x16u);
      v51 = v60;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v51, -1, -1);
      MEMORY[0x1C6942830](v42, -1, -1);
    }

    else
    {
      sub_1C4D4E63C(v37, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
    }

    sub_1C465B58C();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();

LABEL_13:
    sub_1C4D43CFC(v66, v67, v65, v34, v57);

LABEL_14:

    return;
  }

  swift_beginAccess();
  v71[0] = v67;
  v36 = v35;
  BMEventBase.ingestBaseEvent(startTime:endTime:pipelineType:stores:)(0, 1, v71);
  sub_1C4B46D4C();

  swift_beginAccess();
  if (!__OFADD__(*v34, 1))
  {
    ++*v34;
    v37 = v55;
    v38 = v60;
    goto LABEL_20;
  }

  __break(1u);
}

void sub_1C4D45AE0()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletTransactionOrderSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v12, v51);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C441D02C(v14, v15, v16, v17, v18, v19, v20, v21, v52);
  v22 = sub_1C440CE00();
  v23 = sub_1C44262B0(v22);
  v24 = sub_1C44062F4(v23);
  sub_1C4413D70(v24);
  sub_1C43FBDBC();
  v25 = swift_allocObject();
  sub_1C440C134(v25);
  v26 = sub_1C440F54C(&unk_1F440D308);
  sub_1C442C158(v26);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v27 = sub_1C4415DE0();
  v28 = sub_1C443F87C(v27, qword_1EDE2DE10);
  v29 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v29))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v30, v31, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v32 = swift_allocObject();
  sub_1C4433F24(v32);
  sub_1C43FCC0C();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C440829C();
  sub_1C44026A4(v34, v35);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v36 = *v3;
  if (*v3)
  {
    swift_willThrow();
    v37 = v36;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C464A118();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  v38 = sub_1C442AA64();
  v39 = sub_1C4485DE8(v38);
  v40 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v40))
  {
    sub_1C440F274();
    v41 = sub_1C444AE50();
    sub_1C443F438(v41);
    sub_1C4426FDC(4.8151e-34);

    v42 = sub_1C442D9F0();
    switch(v43)
    {
      case 1:
        v42 = sub_1C447F3F0();
        break;
      case 2:
        v42 = sub_1C44255E0();
        break;
      case 3:
        v42 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v42, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletTransactionOrderSourceIngestor);
    sub_1C464032C();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v46, v47, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v44 = sub_1C447FB28();
    sub_1C4D4E63C(v44, v45);
  }

  v48 = sub_1C465B58C();
  v49 = sub_1C43FFB2C(&type metadata for TransformingError, v48);
  sub_1C44225B8(v49, v50);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D45F00()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v12, v51);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C441D02C(v14, v15, v16, v17, v18, v19, v20, v21, v52);
  v22 = sub_1C440CE00();
  v23 = sub_1C44262B0(v22);
  v24 = sub_1C44062F4(v23);
  sub_1C4413D70(v24);
  sub_1C43FBDBC();
  v25 = swift_allocObject();
  sub_1C440C134(v25);
  v26 = sub_1C440F54C(&unk_1F440D308);
  sub_1C442C158(v26);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v27 = sub_1C4415DE0();
  v28 = sub_1C443F87C(v27, qword_1EDE2DE10);
  v29 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v29))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v30, v31, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v32 = swift_allocObject();
  sub_1C4433F24(v32);
  sub_1C43FCC0C();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C440829C();
  sub_1C44026A4(v34, v35);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v36 = *v3;
  if (*v3)
  {
    swift_willThrow();
    v37 = v36;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C464A610();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  v38 = sub_1C442AA64();
  v39 = sub_1C4485DE8(v38);
  v40 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v40))
  {
    sub_1C440F274();
    v41 = sub_1C444AE50();
    sub_1C443F438(v41);
    sub_1C4426FDC(4.8151e-34);

    v42 = sub_1C442D9F0();
    switch(v43)
    {
      case 1:
        v42 = sub_1C447F3F0();
        break;
      case 2:
        v42 = sub_1C44255E0();
        break;
      case 3:
        v42 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v42, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
    sub_1C4640304();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v46, v47, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v44 = sub_1C447FB28();
    sub_1C4D4E63C(v44, v45);
  }

  v48 = sub_1C465B58C();
  v49 = sub_1C43FFB2C(&type metadata for TransformingError, v48);
  sub_1C44225B8(v49, v50);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D46320()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v12, v51);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C441D02C(v14, v15, v16, v17, v18, v19, v20, v21, v52);
  v22 = sub_1C440CE00();
  v23 = sub_1C44262B0(v22);
  v24 = sub_1C44062F4(v23);
  sub_1C4413D70(v24);
  sub_1C43FBDBC();
  v25 = swift_allocObject();
  sub_1C440C134(v25);
  v26 = sub_1C440F54C(&unk_1F440D308);
  sub_1C442C158(v26);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v27 = sub_1C4415DE0();
  v28 = sub_1C443F87C(v27, qword_1EDE2DE10);
  v29 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v29))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v30, v31, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v32 = swift_allocObject();
  sub_1C4433F24(v32);
  sub_1C43FCC0C();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C440829C();
  sub_1C44026A4(v34, v35);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v36 = *v3;
  if (*v3)
  {
    swift_willThrow();
    v37 = v36;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C464AAF0();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  v38 = sub_1C442AA64();
  v39 = sub_1C4485DE8(v38);
  v40 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v40))
  {
    sub_1C440F274();
    v41 = sub_1C444AE50();
    sub_1C443F438(v41);
    sub_1C4426FDC(4.8151e-34);

    v42 = sub_1C442D9F0();
    switch(v43)
    {
      case 1:
        v42 = sub_1C447F3F0();
        break;
      case 2:
        v42 = sub_1C44255E0();
        break;
      case 3:
        v42 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v42, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
    sub_1C46401E4();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v46, v47, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v44 = sub_1C447FB28();
    sub_1C4D4E63C(v44, v45);
  }

  v48 = sub_1C465B58C();
  v49 = sub_1C43FFB2C(&type metadata for TransformingError, v48);
  sub_1C44225B8(v49, v50);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void sub_1C4D46740()
{
  sub_1C43FE628();
  v9 = sub_1C4401440(v4, v5, v6, v7, v8);
  v10 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(v9);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4432EDC(v12, v51);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C441D02C(v14, v15, v16, v17, v18, v19, v20, v21, v52);
  v22 = sub_1C440CE00();
  v23 = sub_1C44262B0(v22);
  v24 = sub_1C44062F4(v23);
  sub_1C4413D70(v24);
  sub_1C43FBDBC();
  v25 = swift_allocObject();
  sub_1C440C134(v25);
  v26 = sub_1C440F54C(&unk_1F440D308);
  sub_1C442C158(v26);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v27 = sub_1C4415DE0();
  v28 = sub_1C443F87C(v27, qword_1EDE2DE10);
  v29 = sub_1C4F01CF8();
  if (sub_1C441E1F8(v29))
  {
    v2 = sub_1C43FD084();
    sub_1C44A1F7C(v2, 3.852e-34);
    sub_1C44367A4(&dword_1C43F8000, v30, v31, "Ingesting orders using time stamp: %f");
    sub_1C43FFD18();
  }

  sub_1C43FBDBC();
  v32 = swift_allocObject();
  sub_1C4433F24(v32);
  sub_1C43FCC0C();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C440829C();
  sub_1C44026A4(v34, v35);
  if (v0)
  {

LABEL_9:
    sub_1C443EFE4();
    goto LABEL_10;
  }

  sub_1C443046C();
  v36 = *v3;
  if (*v3)
  {
    swift_willThrow();
    v37 = v36;

    sub_1C443E038();
    sub_1C44247D0();
    goto LABEL_9;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441BED8();
  sub_1C4412A00();
  sub_1C441DF34();
  sub_1C440A32C();
  if ((*v1 & 1) == 0)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C4435680();
    sub_1C464AFD0();

    sub_1C443E038();

    sub_1C43FF948();
    sub_1C4402358();

    sub_1C43FFF1C();

    goto LABEL_11;
  }

  v38 = sub_1C442AA64();
  v39 = sub_1C4485DE8(v38);
  v40 = sub_1C4F01CD8();
  if (sub_1C4461DB8(v40))
  {
    sub_1C440F274();
    v41 = sub_1C444AE50();
    sub_1C443F438(v41);
    sub_1C4426FDC(4.8151e-34);

    v42 = sub_1C442D9F0();
    switch(v43)
    {
      case 1:
        v42 = sub_1C447F3F0();
        break;
      case 2:
        v42 = sub_1C44255E0();
        break;
      case 3:
        v42 = sub_1C440EB00();
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v42, &unk_1F440D2B8);

    sub_1C44290F0();
    sub_1C444C42C();
    sub_1C4416A80();

    sub_1C440C85C();
    sub_1C4410760();
    sub_1C4D4E63C(v2, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
    sub_1C46401BC();
    sub_1C4441324();
    sub_1C44624F0();
    sub_1C43FE670();
    *(v1 + 14) = 0;
    sub_1C442F4F0(&dword_1C43F8000, v46, v47, "Unable to commit %s for : %s");
    sub_1C4450174();
    sub_1C4411B3C();
    sub_1C43FEA20();

    sub_1C441C644();
  }

  else
  {
    v44 = sub_1C447FB28();
    sub_1C4D4E63C(v44, v45);
  }

  v48 = sub_1C465B58C();
  v49 = sub_1C43FFB2C(&type metadata for TransformingError, v48);
  sub_1C44225B8(v49, v50);

  sub_1C443E038();

LABEL_10:
  sub_1C43FF948();
  sub_1C43FFF1C();

  sub_1C4458588();

  sub_1C4402358();
LABEL_11:

  sub_1C440EE0C();
  sub_1C44109F8();
}

void BMWalletPaymentsCommerceOrderEmail.ingestEvent(startTime:endTime:pipelineType:stores:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v22;
  a20 = v23;
  v990 = v20;
  v991 = v21;
  v963 = v24;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0C6860, &unk_1C4F6F810);
  sub_1C43FBD18(v27);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBC74();
  v30 = sub_1C43FD2C8(v29);
  v926 = type metadata accessor for WalletEmailOrderStructs.OrderTransactionRelationshipType(v30);
  sub_1C43FCDF8();
  v927 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD2D8();
  v34 = sub_1C43FD2C8(v33);
  v35 = type metadata accessor for WalletEmailOrderStructs.Transaction(v34);
  v36 = sub_1C440DBC4(v35, &v957);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  sub_1C43FCE30(v37);
  v38 = sub_1C456902C(&qword_1EC0C6868, &qword_1C4F7E550);
  sub_1C43FBD18(v38);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  sub_1C43FCE30(v40);
  v41 = sub_1C456902C(&qword_1EC0C6870, &unk_1C4F6F820);
  sub_1C43FBD18(v41);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  v44 = sub_1C43FD2C8(v43);
  v45 = type metadata accessor for WalletEmailOrderStructs.OrderPaymentRelationshipType(v44);
  v46 = sub_1C440DBC4(v45, &v960);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FD2D8();
  sub_1C43FCE30(v47);
  v48 = sub_1C456902C(&qword_1EC0C6878, &qword_1C4F7E750);
  sub_1C43FBD18(v48);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBC74();
  v51 = sub_1C43FD2C8(v50);
  v52 = type metadata accessor for WalletEmailOrderStructs.QuantityRelationshipType(v51);
  v53 = sub_1C440DBC4(v52, &v962);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FD230();
  v56 = sub_1C43FD2C8(v55);
  v57 = type metadata accessor for WalletEmailOrderStructs.Payment(v56);
  v58 = sub_1C440DBC4(v57, &v958);
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FD2D8();
  sub_1C43FCE30(v59);
  v60 = sub_1C456902C(&qword_1EC0C6880, &qword_1C4F6F830);
  sub_1C43FBD18(v60);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBC74();
  v63 = sub_1C43FD2C8(v62);
  v940 = type metadata accessor for WalletEmailOrderStructs.OrderShipmentFullFillmentRelationshipType(v63);
  sub_1C43FCDF8();
  v941 = v64;
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FD2D8();
  sub_1C43FCE30(v66);
  v67 = sub_1C456902C(&qword_1EC0C6888, &qword_1C4F6F838);
  sub_1C43FBD18(v67);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBC74();
  v70 = sub_1C43FD2C8(v69);
  v71 = type metadata accessor for WalletEmailOrderStructs.ShipmentPersonRelationshipType(v70);
  v72 = sub_1C440DBC4(v71, &v955);
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FD2D8();
  sub_1C43FCE30(v73);
  v74 = sub_1C456902C(&qword_1EC0C6890, &qword_1C4F6F840);
  sub_1C43FBD18(v74);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBC74();
  v77 = sub_1C43FD2C8(v76);
  v78 = type metadata accessor for WalletEmailOrderStructs.ShipmentFullFillmentEmailRelationshipType(v77);
  v79 = sub_1C440DBC4(v78, &v970);
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FD2D8();
  v81 = sub_1C43FD2C8(v80);
  v82 = type metadata accessor for WalletEmailOrderStructs.ShipmentFullFillmentInfo(v81);
  v83 = sub_1C440DBC4(v82, &v973);
  MEMORY[0x1EEE9AC00](v83);
  sub_1C43FD2D8();
  sub_1C43FCE30(v84);
  v85 = sub_1C456902C(&qword_1EC0C6898, &qword_1C4F6F848);
  sub_1C43FBD18(v85);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FBC74();
  sub_1C43FCE30(v87);
  v88 = sub_1C456902C(&qword_1EC0C68A0, &unk_1C4F6F850);
  sub_1C43FBD18(v88);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v89);
  sub_1C43FBC74();
  v91 = sub_1C43FD2C8(v90);
  v92 = type metadata accessor for WalletEmailOrderStructs.OrderPersonRelationshipType(v91);
  v93 = sub_1C440DBC4(v92, &v982);
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FD2D8();
  v95 = sub_1C43FD2C8(v94);
  v96 = type metadata accessor for WalletEmailOrderStructs.Person(v95);
  v97 = sub_1C440DBC4(v96, &a10);
  MEMORY[0x1EEE9AC00](v97);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v98);
  sub_1C43FD230();
  sub_1C43FCE30(v99);
  v100 = sub_1C456902C(&qword_1EC0C68A8, &unk_1C4F7E540);
  sub_1C43FBD18(v100);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v101);
  sub_1C43FBC74();
  v103 = sub_1C43FD2C8(v102);
  v104 = type metadata accessor for WalletEmailOrderStructs.EntityOrganizationRelationshipType(v103);
  v105 = sub_1C440DBC4(v104, &v979);
  MEMORY[0x1EEE9AC00](v105);
  sub_1C43FD2D8();
  sub_1C43FCE30(v106);
  v107 = sub_1C456902C(&qword_1EC0C68B0, &unk_1C4F6F860);
  sub_1C43FBD18(v107);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v108);
  sub_1C43FBC74();
  v110 = sub_1C43FD2C8(v109);
  v960 = type metadata accessor for WalletEmailOrderStructs.OrderEmailRelationshipType(v110);
  sub_1C43FCDF8();
  v961 = v111;
  MEMORY[0x1EEE9AC00](v112);
  sub_1C43FD2D8();
  v114 = sub_1C43FD2C8(v113);
  v967 = type metadata accessor for WalletEmailOrderStructs.IdentifierRelationshipType(v114);
  sub_1C43FCDF8();
  v965[0] = v115;
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v917 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v119);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v120);
  sub_1C43FD230();
  sub_1C43FCE30(v121);
  v122 = sub_1C456902C(&qword_1EC0C68B8, &qword_1C4F7E620);
  sub_1C43FBD18(v122);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v123);
  sub_1C43FBC74();
  v976 = v124;
  v125 = sub_1C456902C(&qword_1EC0C68C0, &qword_1C4F6F870);
  sub_1C43FBD18(v125);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v126);
  sub_1C43FBC74();
  v128 = sub_1C43FD2C8(v127);
  v129 = type metadata accessor for WalletEmailOrderStructs.AddressRelationshipType(v128);
  v130 = sub_1C440DBC4(v129, &a13);
  MEMORY[0x1EEE9AC00](v130);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v131);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v132);
  sub_1C43FD230();
  v134 = sub_1C43FD2C8(v133);
  v974 = type metadata accessor for WalletEmailOrderStructs.Organization(v134);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v135);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v136);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v137);
  sub_1C43FD230();
  v977 = v138;
  v139 = sub_1C43FBE44();
  v975 = type metadata accessor for WalletEmailOrderStructs.Email(v139);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v140);
  sub_1C43FD2D8();
  v142 = v141;
  v143 = sub_1C456902C(&qword_1EC0C68C8, &qword_1C4F6F878);
  sub_1C43FBD18(v143);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v144);
  sub_1C43FBC74();
  v986 = v145;
  sub_1C43FBE44();
  sub_1C4EF9648();
  sub_1C43FCDF8();
  v984 = v147;
  v985 = v146;
  MEMORY[0x1EEE9AC00](v146);
  sub_1C43FD2D8();
  v981 = v148;
  sub_1C43FBE44();
  v982 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v980 = v149;
  MEMORY[0x1EEE9AC00](v150);
  sub_1C43FD2D8();
  v979 = v151;
  sub_1C43FBE44();
  v988 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v983 = v152;
  MEMORY[0x1EEE9AC00](v153);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v154);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v917 - v156;
  v987 = type metadata accessor for WalletEmailOrderStructs.DateRelationshipType(0);
  sub_1C43FCDF8();
  v943 = v158;
  MEMORY[0x1EEE9AC00](v159);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v160);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v161);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v162);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v163);
  sub_1C43FD230();
  v978 = v164;
  v165 = sub_1C43FBE44();
  v989 = type metadata accessor for WalletEmailOrderStructs.WalletOrder(v165);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v166);
  v168 = (&v917 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0));
  v946 = *v26;
  v994 = MEMORY[0x1E69E7CD0];
  sub_1C4F019E8();
  if (qword_1EDDE92E8 != -1)
  {
    sub_1C4440B14();
    swift_once();
  }

  v169 = type metadata accessor for SourceIdPrefix(0);
  v170 = sub_1C442B738(v169, qword_1EDE2D008);
  String.base64EncodedSHA(withPrefix:)();
  v172 = v171;
  v174 = v173;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v175 = v991;
  sub_1C4E95950(v172, v174, v176, v177, v178, v179, v180, v181, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
  if (!v175)
  {
    v924 = v170;
    v923 = v172;
    v925 = v174;
    v922 = v118;
    v991 = v168;
    v182 = v990;
    v183 = sub_1C465B638(v990, &selRef_orderNumber);
    v185 = v142;
    v972 = v142;
    if (v184)
    {
      v186 = sub_1C4D42C34(v183, v184);
      v174 = v187;

      v188 = (v991 + v989[13]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *v188 = v186;
      v188[1] = v174;
      sub_1C44A18C8();
      sub_1C44869B4(v189, v190, v191, v192, v193, v194, v195, v196, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928, v929, v930, v931, v932, v933, v934, v935, v936, v937, v938);
    }

    v197 = sub_1C465B638(v182, &selRef_orderDate);
    if (v198)
    {
      v199 = v197;
      v200 = v198;
      sub_1C4EFEEF8();
      v201 = v978;
      sub_1C43FCF64();
      sub_1C440BAA8(v202, v203, v204, v205);
      v185 = v987;
      sub_1C4EFD168();
      v206 = *(v185 + 6);
      if (qword_1EDDFD288 != -1)
      {
        sub_1C440B8A0(&qword_1EDDFD288);
      }

      v207 = type metadata accessor for Source(0);
      sub_1C442B738(v207, &qword_1EDDFD290);
      sub_1C441AAFC();
      sub_1C448D19C(v208, v201 + v206);
      sub_1C4EFE658();
      v209 = *(v185 + 8);
      sub_1C4EFEEE8();
      v174 = (v201 + *(v185 + 10));
      sub_1C4EFE7B8();
      sub_1C43FC4E8(*(v185 + 12));
      sub_1C4EFECE8();
      sub_1C43FC4E8(*(v185 + 14));
      sub_1C4EFE668();
      sub_1C43FC4E8(*(v185 + 16));
      sub_1C4EFE698();
      sub_1C43FC4E8(*(v185 + 18));
      sub_1C4EFEA38();
      v210 = v201;
      v211 = (v201 + *(v185 + 20));
      *(v210 + v209) = xmmword_1C4F6F5A0;
      sub_1C4D4308C(v199, v200, 0x2D4D4D2D79797979, 0xEA00000000006464);
      sub_1C4EF9C48();
      *v211 = v199;
      v211[1] = v200;
      v212 = v979;
      sub_1C4EF9F58();
      if (qword_1EDDE6518 != -1)
      {
        swift_once();
      }

      v213 = v981;
      sub_1C4EF9EA8();
      sub_1C44CDAD4();
      sub_1C44106D4();
      (*(v984 + 8))(v213, v985);
      (*(v980 + 8))(v212, v982);
      *v174 = v213;
      *(v174 + 1) = v200;
      sub_1C4441A4C();
      sub_1C448D19C(v210, v986);
      v214 = sub_1C43FD680();
      v217 = sub_1C441400C(v214, v215, v216, v185);
      sub_1C4E96298(v217);
      (*(v983 + 8))(v157, v988);
      sub_1C448E128();
      sub_1C4D4E63C(v210, v218);
      sub_1C44A18C8();
      v182 = v990;
    }

    sub_1C4480884();
    v220 = *(v219 - 256);
    v992 = v221;
    v993 = v220;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0x6C69616D652DLL, 0xE600000000000000);
    v222 = v993;
    sub_1C444944C(v950);
    String.base64EncodedSHA(withPrefix:)();

    v223 = sub_1C4404BB0();
    sub_1C4E96388(v223, v224, v225, v226, v227, v228, v229, v230, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
    v231 = 0;
    v232 = [v182 emailMetadata];
    v233 = &off_1E81F1000;
    if (v232)
    {
      v234 = v232;
      v992 = 0;
      v993 = 0xE000000000000000;
      v235 = sub_1C465B638(v232, &selRef_replyToEmailAddress);
      v237 = sub_1C441C460(v235, v236);
      if (v239)
      {
        v240 = 0xE000000000000000;
      }

      else
      {
        v240 = v238;
      }

      MEMORY[0x1C6940010](v237, v240);

      v241 = sub_1C465B638(v234, &selRef_replyToDisplayName);
      v243 = sub_1C441C460(v241, v242);
      if (v239)
      {
        v245 = 0xE000000000000000;
      }

      else
      {
        v245 = v244;
      }

      MEMORY[0x1C6940010](v243, v245);

      String.base64EncodedSHA(withPrefix:)();
      sub_1C441D790();
      v246 = sub_1C44C132C();
      MEMORY[0x1C6940010](v246, 0xE000000000000000);

      String.base64EncodedSHA(withPrefix:)();
      v248 = v247;

      v249 = sub_1C4404BB0();
      sub_1C4E96DDC(v249, v250, v251, v252, v253, v254, v255, v256, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
      v920 = v234;
      sub_1C449DB98();
      sub_1C4EFEEF8();
      v275 = v971;
      sub_1C43FCF64();
      v918 = v276;
      sub_1C440BAA8(v277, v278, v279, v276);
      v280 = v969;
      sub_1C4EFD1D8();
      v281 = v280[6];
      if (qword_1EDDFD288 != -1)
      {
        sub_1C440B8A0(&qword_1EDDFD288);
      }

      v282 = type metadata accessor for Source(0);
      sub_1C442B738(v282, &qword_1EDDFD290);
      sub_1C441AAFC();
      v919 = v283;
      sub_1C448D19C(v283, v275 + v281);
      sub_1C4EFE518();
      v284 = (v275 + v280[8]);
      sub_1C4EFE4E8();
      sub_1C4418154(v280[10]);
      sub_1C4EFE478();
      sub_1C4418154(v280[12]);
      sub_1C4EFE318();
      sub_1C4418154(v280[14]);
      sub_1C4EFEB08();
      sub_1C4418154(v280[16]);
      sub_1C4EFE5A8();
      sub_1C4418154(v280[18]);
      sub_1C4EFEDE8();
      sub_1C4418154(v280[20]);
      sub_1C4EFE8D8();
      sub_1C4418154(v280[22]);
      sub_1C4EFE378();
      sub_1C4418154(v280[24]);
      sub_1C4EFECD8();
      sub_1C4418154(v280[26]);
      sub_1C4EFE888();
      sub_1C4418154(v280[28]);
      v285 = sub_1C443E47C(&v947);
      *v284 = sub_1C465B638(v285, v286);
      v284[1] = v287;
      sub_1C465B638(v185, &selRef_replyToDisplayName);
      sub_1C43FC1CC();
      v288 = v974;
      v289 = v977;
      v290 = (v977 + *(v974 + 36));

      *v290 = v284;
      v290[1] = v248;
      sub_1C4411518();
      sub_1C443EFF0(v275, &a18);
      v291 = sub_1C43FD680();
      v294 = sub_1C441400C(v291, v292, v293, v280);
      sub_1C4E974FC(v294);
      sub_1C4440174();
      v295 = v976;
      sub_1C448D19C(v289, v976);
      sub_1C43FBD94();
      sub_1C440BAA8(v296, v297, v298, v288);
      sub_1C44B905C();
      sub_1C4E975EC(v299);
      v992 = 0;
      v993 = 0xE000000000000000;
      v300 = sub_1C465B638(v185, &selRef_fromEmailAddress);
      v302 = sub_1C441C460(v300, v301);
      if (v239)
      {
        v304 = 0xE000000000000000;
      }

      else
      {
        v304 = v303;
      }

      MEMORY[0x1C6940010](v302, v304);

      v305 = sub_1C465B638(v185, &selRef_fromDisplayName);
      v307 = sub_1C441C460(v305, v306);
      if (v239)
      {
        v309 = 0xE000000000000000;
      }

      else
      {
        v309 = v308;
      }

      MEMORY[0x1C6940010](v307, v309);

      v310 = v993;
      String.base64EncodedSHA(withPrefix:)();
      sub_1C441D790();
      v311 = sub_1C44C132C();
      MEMORY[0x1C6940010](v311, 0xE000000000000000);

      v312 = v970;
      sub_1C445BE38();
      sub_1C4E96DDC(v313, v314, v315, v316, v317, v318, v319, v320, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
      sub_1C449DB98();
      sub_1C444944C(&v995);
      sub_1C43FCF64();
      sub_1C440BAA8(v321, v322, v323, v918);
      sub_1C4EFD1D8();
      sub_1C441AAFC();
      sub_1C448D19C(v919, v174 + v324);
      sub_1C4EFE518();
      v325 = v312;
      v326 = (v174 + v280[8]);
      sub_1C4EFE4E8();
      sub_1C442A790(v280[10]);
      sub_1C4EFE478();
      sub_1C442A790(v280[12]);
      sub_1C4EFE318();
      sub_1C442A790(v280[14]);
      sub_1C4EFEB08();
      sub_1C442A790(v280[16]);
      sub_1C4EFE5A8();
      sub_1C442A790(v280[18]);
      sub_1C4EFEDE8();
      sub_1C442A790(v280[20]);
      sub_1C4EFE8D8();
      sub_1C442A790(v280[22]);
      sub_1C4EFE378();
      sub_1C442A790(v280[24]);
      sub_1C4EFECD8();
      sub_1C442A790(v280[26]);
      sub_1C4EFE888();
      sub_1C442A790(v280[28]);
      *v326 = sub_1C465B638(v185, &selRef_fromEmailAddress);
      v326[1] = v327;
      sub_1C465B638(v185, &selRef_fromDisplayName);
      sub_1C43FC1CC();
      v328 = v974;
      v329 = (v325 + *(v974 + 36));

      *v329 = v326;
      v329[1] = v310;
      sub_1C4411518();
      sub_1C443EFF0(v174, &a18);
      v330 = sub_1C43FD680();
      v333 = sub_1C441400C(v330, v331, v332, v280);
      v334 = v325;
      sub_1C4E974FC(v333);
      sub_1C4440174();
      sub_1C448D19C(v325, v295);
      sub_1C43FBD94();
      sub_1C440BAA8(v335, v336, v337, v328);
      sub_1C44B905C();
      sub_1C4E976E8(v338);
      v339 = sub_1C465B638(v185, &selRef_toEmailAddress);
      v341 = v340;
      v342 = v975;
      v343 = (v325 + v975[19]);

      *v343 = v339;
      v343[1] = v341;
      v344 = sub_1C465B638(v185, &selRef_toDisplayName);
      v346 = v345;
      v347 = (v325 + v342[21]);

      *v347 = v344;
      v347[1] = v346;
      v348 = [v185 dateSent];
      v349 = v990;
      if (v348)
      {
        v350 = v348;
        v351 = v950[1];
        sub_1C4EF9C78();

        v352 = v983;
        v353 = v951;
        (*(v983 + 32))(v951, v351, v988);
        v347 = v978;
        sub_1C43FCF64();
        sub_1C440BAA8(v354, v355, v356, v918);
        v357 = v987;
        sub_1C4EFD168();
        sub_1C441AAFC();
        sub_1C448D19C(v919, v347 + v358);
        sub_1C4EFE658();
        v359 = v357[8];
        sub_1C4EFEEE8();
        v360 = (v347 + v357[10]);
        sub_1C4EFE7B8();
        sub_1C44262E0(v357[12]);
        sub_1C4EFECE8();
        sub_1C44262E0(v357[14]);
        sub_1C4EFE668();
        sub_1C44262E0(v357[16]);
        sub_1C4EFE698();
        sub_1C44262E0(v357[18]);
        sub_1C4EFEA38();
        v346 = (v347 + v357[20]);
        *(v347 + v359) = xmmword_1C4F6F7E0;
        sub_1C4EF9AD8();
        *v346 = sub_1C4F019E8();
        v346[1] = v361;
        v362 = v979;
        sub_1C4EF9F58();
        if (qword_1EDDF4920 != -1)
        {
          swift_once();
        }

        v363 = v981;
        sub_1C4EF9EA8();
        sub_1C44CDAD4();
        sub_1C43FC1CC();
        (*(v984 + 8))(v363, v985);
        (*(v980 + 8))(v362, v982);
        *v360 = v363;
        v360[1] = v346;
        sub_1C4441A4C();
        v334 = v986;
        sub_1C448D19C(v347, v986);
        v364 = sub_1C43FD680();
        sub_1C441400C(v364, v365, v366, v357);
        sub_1C44B905C();
        sub_1C4E977E4(v367);
        (*(v352 + 8))(v353, v988);
        sub_1C448E128();
        sub_1C4D4E63C(v347, v368);
        v185 = v920;
        v349 = v990;
      }

      sub_1C465B638(v185, &selRef_messageID);
      sub_1C43FC1CC();
      v369 = v975;
      sub_1C44EB91C();
      *v347 = v334;
      v347[1] = v346;
      sub_1C465B638(v185, &selRef_subject);
      sub_1C43FC1CC();
      sub_1C44EB91C();
      *v347 = v334;
      v347[1] = v346;
      v370 = sub_1C465B638(v185, &selRef_senderDomain);
      v372 = v371;
      v373 = (v972 + v369[13]);

      *v373 = v370;
      v373[1] = v372;
      sub_1C465B638(v185, &selRef_senderDomain);
      sub_1C43FC1CC();
      v374 = (v991 + v989[17]);

      *v374 = &selRef_senderDomain;
      v374[1] = v370;
      LODWORD(v992) = sub_1C44257F8();
      v375 = MEMORY[0x1E69E72F0];
      v376 = MEMORY[0x1E69E7340];
      sub_1C4404BB0();
      sub_1C4F02858();
      sub_1C4416328();
      sub_1C4466DE8();
      *v349 = &v992;
      v349[1] = v373;
      sub_1C465B638(v990, &selRef_orderNumber);
      sub_1C4416328();
      sub_1C4466DE8();
      *v349 = &v992;
      v349[1] = v373;
      v182 = v990;
      v377 = v972;
      LODWORD(v992) = [v990 orderContentType];
      sub_1C4404BB0();
      sub_1C4F02858();
      sub_1C43FC1CC();
      v185 = v377;
      sub_1C44EB91C();
      *v376 = &v992;
      v376[1] = v375;
      v378 = [v182 shippingInformation];
      if (v378)
      {
        sub_1C45C28F0(v378, &selRef_trackingNumber);
        if (v379)
        {
          sub_1C43FC1CC();
          v380 = (v377 + v975[25]);

          *v380 = &v992;
          v380[1] = v375;
        }
      }

      v381 = [v182 merchant];
      v382 = v959;
      if (v381)
      {
        sub_1C45C28F0(v381, &selRef_displayName);
        if (v383)
        {
          sub_1C43FC1CC();
          v384 = (v377 + v975[27]);

          *v384 = &v992;
          v384[1] = v375;
        }
      }

      sub_1C465B638(v182, &selRef_spotlightUniqueIdentifier);
      v385 = v918;
      if (v386)
      {
        sub_1C43FC1CC();
        sub_1C43FCF64();
        sub_1C440BAA8(v387, v388, v389, v385);
        v185 = v182;
        v390 = v967;
        sub_1C4EFD258();
        sub_1C441AAFC();
        v392 = v919;
        sub_1C448D19C(v919, v382 + v391);
        sub_1C4EFE558();
        v393 = (v382 + *(v390 + 32));
        sub_1C4EFE658();
        v394 = (v382 + *(v390 + 40));
        *v394 = 0xD000000000000019;
        v394[1] = 0x80000001C4FC77C0;
        *v393 = &v992;
        v393[1] = v375;
        sub_1C465B638(v185, &selRef_spotlightDomainIdentifier);
        if (v395)
        {
          sub_1C43FC1CC();
          v396 = v945;
          sub_1C43FCF64();
          sub_1C440BAA8(v397, v398, v399, v385);
          sub_1C4EFD258();
          sub_1C441AAFC();
          sub_1C448D19C(v392, v396 + v400);
          sub_1C4EFE558();
          v401 = (v396 + *(v390 + 32));
          sub_1C4EFE658();
          v402 = (v396 + *(v390 + 40));
          *v402 = 0xD000000000000019;
          v402[1] = 0x80000001C4FC77E0;
          *v401 = &v992;
          v401[1] = v375;
          sub_1C456902C(&qword_1EC0C0328, &qword_1C4F3E6C0);
          sub_1C44417B0();
          v405 = v404 & ~v403;
          v185 = swift_allocObject();
          *(v185 + 1) = xmmword_1C4F0CE60;
          v406 = v185 + v405;
          sub_1C448D19C(v382, v406);
          sub_1C448D19C(v396, v401 + v406);
          v375 = v975[33];
          sub_1C44B905C();

          *(&v992 + v375) = v185;
          sub_1C4EA24A8();
          sub_1C43FE24C();
          sub_1C4D4E63C(v396, v407);
        }

        sub_1C43FE24C();
        sub_1C4D4E63C(v382, v408);
        sub_1C44A18C8();
        v182 = v990;
      }

      v257 = &xmmword_1EDDFD000;
      v409 = v962;
      sub_1C43FCF64();
      sub_1C440BAA8(v410, v411, v412, v385);
      v413 = v960;
      sub_1C4EFD268();
      sub_1C441AAFC();
      sub_1C448D19C(v919, v409 + v414);
      sub_1C4EFE658();
      v415 = (v409 + *(v413 + 32));
      *v415 = 0;
      v415[1] = 0;
      sub_1C43FCF64();
      v416 = v975;
      sub_1C440BAA8(v417, v418, v419, v975);
      sub_1C442AD2C();
      sub_1C442A79C(v185, &v993);
      sub_1C43FBD94();
      sub_1C440BAA8(v420, v421, v422, v416);
      sub_1C4E978D4(v413);
      LODWORD(v992) = sub_1C44257F8();
      sub_1C4D4E694();
      sub_1C4F02068();
      sub_1C43FC1CC();

      *v415 = &v992;
      v415[1] = v375;
      sub_1C456902C(&qword_1EC0C0330, &qword_1C4F3E6C8);
      sub_1C44693E4();
      v425 = v424 & ~v423;
      v426 = swift_allocObject();
      *(v426 + 16) = xmmword_1C4F0D130;
      sub_1C448D19C(v409, v426 + v425);
      v427 = v989[22];
      v428 = v991;

      *(v428 + v427) = v426;
      sub_1C4EB5A20();

      sub_1C4D4E63C(v409, type metadata accessor for WalletEmailOrderStructs.OrderEmailRelationshipType);
      v222 = type metadata accessor for WalletEmailOrderStructs.AddressRelationshipType;
      sub_1C4D4E63C(v965[1], type metadata accessor for WalletEmailOrderStructs.AddressRelationshipType);
      sub_1C4D4E63C(v970, type metadata accessor for WalletEmailOrderStructs.Organization);
      v429 = sub_1C4458588();
      sub_1C4D4E63C(v429, type metadata accessor for WalletEmailOrderStructs.AddressRelationshipType);
      sub_1C4D4E63C(v977, type metadata accessor for WalletEmailOrderStructs.Organization);
      v231 = v921;
      v233 = &off_1E81F1000;
    }

    else
    {
      v257 = &xmmword_1EDDFD000;
    }

    v258 = [v182 v233[20]];
    v259 = v976;
    if (v258)
    {
      v260 = sub_1C45C28F0(v258, &selRef_displayName);
      if (v261)
      {
        v262 = v260;
        v263 = v261;
        String.base64EncodedSHA(withPrefix:)();
        v264 = v965[2];
        sub_1C4E96DDC(v265, v266, v267, v268, v269, v270, v271, v272, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
        if (v231)
        {

          sub_1C44209F8();
          v274 = v185;
LABEL_75:
          sub_1C4D4E63C(v274, v273);
          sub_1C4403B9C();
          v571 = v991;
LABEL_76:
          sub_1C4D4E63C(v571, v570);
          goto LABEL_77;
        }

        sub_1C449DB98();
        v430 = v974;
        sub_1C44EB91C();
        MEMORY[0] = v262;
        MEMORY[8] = v263;
        sub_1C4EFEEF8();
        v431 = v954;
        sub_1C43FCF64();
        sub_1C440BAA8(v432, v433, v434, v435);
        sub_1C445884C();
        sub_1C4EFD348();
        v436 = *(v262 + 24);
        if (*(v257 + 81) != -1)
        {
          sub_1C440B8A0(&qword_1EDDFD288);
        }

        v437 = type metadata accessor for Source(0);
        sub_1C442B738(v437, &qword_1EDDFD290);
        sub_1C441AAFC();
        sub_1C448D19C(v438, v431 + v436);
        sub_1C43FCF64();
        sub_1C440BAA8(v439, v440, v441, v430);
        sub_1C4440174();
        sub_1C448D19C(v264, v259);
        sub_1C43FBD94();
        sub_1C440BAA8(v442, v443, v444, v430);
        sub_1C4E979D0(v259);
        sub_1C443EFF0(v431, &v980);
        v445 = sub_1C43FD680();
        v448 = sub_1C441400C(v445, v446, v447, v262);
        v222 = v991;
        sub_1C4E97AC8(v448);
        sub_1C4D4E63C(v431, type metadata accessor for WalletEmailOrderStructs.EntityOrganizationRelationshipType);
        sub_1C44147C0();
        sub_1C4D4E63C(v264, v449);
        v231 = v921;
      }
    }

    sub_1C449DB98();
    v450 = [v182 customer];
    if (v450)
    {
      v451 = v450;
      sub_1C465B638(v450, &selRef_fullName);
      sub_1C44106D4();
      v452 = sub_1C465B638(v451, &selRef_emailAddress);
      v454 = v453;
      v455 = sub_1C465B638(v451, &selRef_phoneNumber);
      v185 = v456;
      sub_1C4D4E224(v222, v231, v452, v454, v455, v456);
      sub_1C4416328();

      v457 = v973;
      sub_1C445BE38();
      sub_1C4E97BB8(v458, v459, v460, v461, v462, v463, v464, v465, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
      sub_1C449DB98();
      sub_1C465B638(v451, &selRef_fullName);
      sub_1C44106D4();
      v467 = (v457 + *(v966 + 60));

      *v467 = v222;
      v467[1] = 0;
      v468 = [v451 billingAddress];
      if (v468)
      {
        v469 = v468;
        sub_1C4EFEEF8();
        v470 = v952;
        sub_1C43FCF64();
        sub_1C440BAA8(v471, v472, v473, v474);
        v475 = v969;
        sub_1C4EFD1D8();
        v476 = v475[6];
        if (qword_1EDDFD288 != -1)
        {
          sub_1C440B8A0(&qword_1EDDFD288);
        }

        v477 = type metadata accessor for Source(0);
        sub_1C442B738(v477, &qword_1EDDFD290);
        sub_1C441AAFC();
        sub_1C448D19C(v478, v470 + v476);
        sub_1C4EFE518();
        v988 = (v470 + v475[8]);
        sub_1C4EFE4E8();
        sub_1C4401738(v475[10]);
        sub_1C4EFE478();
        v986 = (v470 + v475[12]);
        sub_1C4EFE318();
        sub_1C4401738(v475[14]);
        sub_1C4EFEB08();
        sub_1C4401738(v475[16]);
        sub_1C4EFE5A8();
        v185 = (v470 + v475[18]);
        sub_1C4EFEDE8();
        v479 = (v470 + v475[20]);
        sub_1C4EFE8D8();
        v480 = (v470 + v475[22]);
        sub_1C4EFE378();
        v481 = (v470 + v475[24]);
        sub_1C4EFECD8();
        v467 = (v470 + v475[26]);
        sub_1C4EFE888();
        v985 = (v470 + v475[28]);
        *v185 = sub_1C465B638(v469, &selRef_street);
        v185[1] = v482;
        *v479 = sub_1C465B638(v469, &selRef_city);
        v479[1] = v483;
        *v480 = sub_1C465B638(v469, &selRef_state);
        v480[1] = v484;
        *v481 = sub_1C465B638(v469, &selRef_postalCode);
        v481[1] = v485;
        *v467 = sub_1C465B638(v469, &selRef_country);
        v467[1] = v486;
        v487 = sub_1C465B638(v451, &selRef_phoneNumber);
        v488 = v986;
        *v986 = v487;
        v488[1] = v489;
        v490 = sub_1C465B638(v451, &selRef_emailAddress);
        v491 = v988;
        *v988 = v490;
        v491[1] = v492;
        v493 = sub_1C465B638(v469, &selRef_rawAddress);
        v494 = v985;
        *v985 = v493;
        v494[1] = v495;
        sub_1C4411518();
        sub_1C443EFF0(v470, &a18);
        v496 = sub_1C43FD680();
        v499 = sub_1C441400C(v496, v497, v498, v475);
        sub_1C4E98308(v499);

        sub_1C44165F8();
        sub_1C4D4E63C(v470, v500);
      }

      sub_1C4EFEEF8();
      sub_1C444944C(&v983);
      sub_1C43FCF64();
      sub_1C440BAA8(v501, v502, v503, v504);
      v505 = v956[1];
      sub_1C4EFD288();
      v506 = *(v505 + 24);
      v466 = &xmmword_1EDDFD000;
      if (qword_1EDDFD288 != -1)
      {
        sub_1C440B8A0(&qword_1EDDFD288);
      }

      v507 = type metadata accessor for Source(0);
      sub_1C442B738(v507, &qword_1EDDFD290);
      sub_1C441AAFC();
      sub_1C448D19C(v508, v467 + v506);
      sub_1C43FCF64();
      v509 = v966;
      sub_1C440BAA8(v510, v511, v512, v966);
      sub_1C441B5F8();
      v513 = sub_1C443E47C(&a17);
      sub_1C443EFF0(v513, &v989);
      v514 = sub_1C43FD680();
      v517 = sub_1C441400C(v514, v515, v516, v509);
      sub_1C4E983F8(v517);
      sub_1C443EFF0(v467, &v984);
      v518 = sub_1C43FD680();
      v521 = sub_1C441400C(v518, v519, v520, v505);
      sub_1C4E984F0(v521);

      sub_1C4D4E63C(v467, type metadata accessor for WalletEmailOrderStructs.OrderPersonRelationshipType);
      sub_1C442F7F4();
      sub_1C4D4E63C(v185, v522);
      sub_1C44A18C8();
      v182 = v990;
    }

    else
    {
      v466 = v257;
    }

    v523 = v923;
    v524 = [v182 shippingInformation];
    if (v524)
    {
      v525 = v524;
      sub_1C465B638(v524, &selRef_trackingNumber);
      if (v526)
      {
        v527 = sub_1C4D42DD8();
        v529 = v528;

        v530 = (v991 + v989[15]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        *v530 = v527;
        v530[1] = v529;
        v523 = v923;
        sub_1C44A18C8();
        v531 = v529;
        v182 = v990;
        sub_1C44869B4(v532, v533, v531, v534, v535, v536, v537, v538, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928, v929, v930, v931, v932, v933, v934, v935, v936, v937, v938);
      }

      else
      {
      }
    }

    v539 = v185;
    if (sub_1C44257F8() - 5 > 1)
    {
      v555 = v466;
      v556 = v921;
    }

    else
    {
      v540 = &selRef_localizedName;
      sub_1C44BBCF4();
      String.base64EncodedSHA(withPrefix:)();
      v542 = v541;
      v544 = v543;
      v545 = v925;
      v992 = v523;
      v993 = v925;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v546 = sub_1C44C132C();
      MEMORY[0x1C6940010](v546, v544);

      sub_1C445BE38();
      sub_1C4E985E0(v547, v548, v549, v550, v551, v552, v553, v554, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
      if (v542)
      {

LABEL_74:

        sub_1C44209F8();
        v274 = v539;
        goto LABEL_75;
      }

      v573 = [v182 shippingInformation];
      sub_1C449DB98();
      if (v574)
      {
        v575 = v574;
        sub_1C4EFEEF8();
        v576 = v964[0];
        sub_1C43FCF64();
        v986 = v577;
        sub_1C440BAA8(v578, v579, v580, v577);
        v581 = v987;
        sub_1C4EFD168();
        v582 = v581[6];
        if (qword_1EDDFD288 != -1)
        {
          sub_1C440B8A0(&qword_1EDDFD288);
        }

        v583 = type metadata accessor for Source(0);
        sub_1C442B738(v583, &qword_1EDDFD290);
        sub_1C4416944();
        v985 = v584;
        sub_1C448D19C(v584, v576 + v582);
        sub_1C4EFE658();
        v585 = v581[8];
        sub_1C4EFEEE8();
        sub_1C4401738(v581[10]);
        sub_1C4EFE7B8();
        v586 = (v576 + v581[12]);
        sub_1C4EFECE8();
        sub_1C4401738(v581[14]);
        sub_1C4EFE668();
        sub_1C4401738(v581[16]);
        sub_1C4EFE698();
        v587 = (v576 + v581[18]);
        sub_1C4EFEA38();
        v588 = (v964[0] + v581[20]);
        *(v964[0] + v585) = xmmword_1C4F6F7F0;
        *v587 = sub_1C4424A44();
        v587[1] = v589;
        *v588 = sub_1C4424A44();
        v588[1] = v590;
        *v586 = sub_1C465B638(v575, &selRef_shippingTime);
        v586[1] = v591;
        sub_1C443E47C(&v981);
        sub_1C43FCF64();
        v592 = v986;
        sub_1C440BAA8(v593, v594, v595, v986);
        sub_1C4EFD168();
        sub_1C449AF60();
        sub_1C4EFE658();
        v596 = (v586 + v581[8]);
        sub_1C4EFEEE8();
        sub_1C43FC4DC(v581[10]);
        sub_1C4EFE7B8();
        v597 = (v586 + v581[12]);
        sub_1C4EFECE8();
        sub_1C43FC4DC(v581[14]);
        sub_1C4EFE668();
        sub_1C43FC4DC(v581[16]);
        sub_1C4EFE698();
        v598 = (v586 + v581[18]);
        sub_1C4EFEA38();
        v599 = (v586 + v581[20]);
        *v596 = 0xD000000000000012;
        v596[1] = 0x80000001C4FC7780;
        *v598 = sub_1C4424A44();
        v598[1] = v600;
        *v599 = sub_1C4424A44();
        v599[1] = v601;
        *v597 = sub_1C465B638(v575, &selRef_estimatedDeliveryStartTime);
        v597[1] = v602;
        v988 = v575;
        v603 = v950[0];
        sub_1C43FCF64();
        sub_1C440BAA8(v604, v605, v606, v592);
        sub_1C4EFD168();
        sub_1C448D19C(v985, v603 + v581[6]);
        sub_1C4EFE658();
        v607 = (v603 + v581[8]);
        sub_1C4EFEEE8();
        v608 = (v603 + v581[10]);
        *v608 = 0;
        v608[1] = 0;
        sub_1C4EFE7B8();
        v609 = (v603 + v581[12]);
        *v609 = 0;
        v609[1] = 0;
        sub_1C4EFECE8();
        v610 = (v603 + v581[14]);
        *v610 = 0;
        v610[1] = 0;
        sub_1C4EFE668();
        v545 = (v603 + v581[16]);
        sub_1C4EFE698();
        v611 = (v603 + v581[18]);
        sub_1C4EFEA38();
        v612 = (v603 + v581[20]);
        *v607 = 0xD000000000000010;
        v607[1] = 0x80000001C4FC77A0;
        *v611 = sub_1C465B638(v988, &selRef_estimatedDeliveryEndDate);
        v611[1] = v613;
        *v612 = sub_1C465B638(v988, &selRef_estimatedDeliveryEndDate);
        v612[1] = v614;
        v615 = v964[0];
        *v545 = sub_1C465B638(v988, &selRef_estimatedDeliveryEndTime);
        v545[1] = v616;
        sub_1C443E47C(&v966);
        sub_1C43FCF64();
        sub_1C440BAA8(v617, v618, v619, v592);
        sub_1C4EFD168();
        sub_1C449AF60();
        sub_1C4EFE658();
        v620 = v581[8];
        sub_1C4EFEEE8();
        sub_1C43FC4DC(v581[10]);
        sub_1C4EFE7B8();
        sub_1C43FC4DC(v581[12]);
        sub_1C4EFECE8();
        sub_1C43FC4DC(v581[14]);
        sub_1C4EFE668();
        v621 = (v545 + v581[16]);
        sub_1C4EFE698();
        v622 = (v545 + v581[18]);
        sub_1C4EFEA38();
        v623 = (v545 + v581[20]);
        *(v545 + v620) = xmmword_1C4F6F800;
        *v622 = sub_1C465B638(v988, &selRef_deliveryDate);
        v622[1] = v624;
        *v623 = sub_1C465B638(v988, &selRef_deliveryDate);
        v623[1] = v625;
        *v621 = sub_1C465B638(v988, &selRef_deliveryTime);
        v621[1] = v626;
        sub_1C456902C(&qword_1EC0C0338, &qword_1C4F3E6D0);
        sub_1C44417B0();
        v629 = v628 & ~v627;
        v630 = swift_allocObject();
        *(v630 + 16) = xmmword_1C4F0D480;
        v631 = v630 + v629;
        v632 = type metadata accessor for WalletEmailOrderStructs.DateRelationshipType;
        sub_1C448D19C(v615, v631);
        sub_1C448D19C(v956[0], v622 + v631);
        v633 = v603;
        v634 = v988;
        sub_1C448D19C(v633, v631 + 2 * v622);
        sub_1C448D19C(v545, v631 + 3 * v622);
        v635 = v949;
        v636 = *(v949 + 68);
        v637 = v968;

        *(v637 + v636) = v630;
        v638 = v637;
        sub_1C4EA8FC4();
        sub_1C465B638(v634, &selRef_carrierName);
        sub_1C440D158();
        sub_1C44EB91C();
        *type metadata accessor for WalletEmailOrderStructs.DateRelationshipType = v630;
        loc_1C4E941C8 = v637;
        v639 = (v991 + v989[15]);
        v640 = v639[1];
        if (v640)
        {
          v638 = *v639;
          v632 = (v637 + *(v635 + 44));
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          *v632 = v638;
          *(v632 + 1) = v640;
        }

        sub_1C465B638(v634, &selRef_shippingMethod);
        sub_1C440D158();
        sub_1C44EB91C();
        *v632 = v640;
        *(v632 + 1) = v638;
        LODWORD(v992) = [v634 status];
        sub_1C4F02858();
        sub_1C440D158();

        v544 = v637 + *(v635 + 36);

        *v544 = v640;
        *(v544 + 8) = &v992;
        v540 = type metadata accessor for WalletEmailOrderStructs.DateRelationshipType;
        sub_1C4D4E63C(v545, type metadata accessor for WalletEmailOrderStructs.DateRelationshipType);
        sub_1C4D4E63C(v950[0], type metadata accessor for WalletEmailOrderStructs.DateRelationshipType);
        sub_1C4D4E63C(v956[0], type metadata accessor for WalletEmailOrderStructs.DateRelationshipType);
        sub_1C4D4E63C(v615, type metadata accessor for WalletEmailOrderStructs.DateRelationshipType);
        v182 = v990;
      }

      sub_1C4EFEEF8();
      sub_1C443E47C(&v992);
      sub_1C43FCF64();
      v988 = v641;
      sub_1C440BAA8(v642, v643, v644, v641);
      sub_1C445884C();
      sub_1C4EFD3A8();
      v645 = *(v544 + 24);
      if (qword_1EDDFD288 != -1)
      {
        sub_1C440B8A0(&qword_1EDDFD288);
      }

      v646 = type metadata accessor for Source(0);
      sub_1C442B738(v646, &qword_1EDDFD290);
      sub_1C441AAFC();
      v648 = v647;
      sub_1C448D19C(v647, v545 + v645);
      sub_1C4EFE558();
      v649 = (v545 + *(v544 + 32));
      *v649 = 0;
      v649[1] = 0;
      sub_1C4EFE658();
      v650 = (v545 + *(v544 + 40));
      *v650 = 0;
      v650[1] = 0;
      sub_1C43FCF64();
      v651 = v975;
      sub_1C440BAA8(v652, v653, v654, v975);
      sub_1C442AD2C();
      v655 = sub_1C443E47C(&a16);
      sub_1C442A79C(v655, &v993);
      sub_1C43FBD94();
      sub_1C440BAA8(v656, v657, v658, v651);
      sub_1C4E98DEC(v540);
      v659 = (v545 + v651[9]);
      v660 = v964[1];
      v661 = v659[1];
      v662 = v649[1];
      *v649 = *v659;
      v649[1] = v661;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      LODWORD(v992) = [v182 emailType];
      sub_1C4D4E694();
      sub_1C4F02068();
      sub_1C44106D4();

      *v650 = &v992;
      v650[1] = v649;
      sub_1C442A79C(v660, &v971);
      sub_1C43FBD94();
      sub_1C440BAA8(v663, v664, v665, v544);
      v666 = v968;
      sub_1C4E98EE8(v540);
      v667 = [v182 shippingRecipient];
      if (v667)
      {
        v668 = v667;
        v992 = 0;
        v993 = 0xE000000000000000;
        v669 = sub_1C465B638(v667, &selRef_fullName);
        v671 = sub_1C441C460(v669, v670);
        if (v239)
        {
          v673 = 0xE000000000000000;
        }

        else
        {
          v673 = v672;
        }

        MEMORY[0x1C6940010](v671, v673);

        v674 = sub_1C465B638(v668, &selRef_emailAddress);
        v676 = sub_1C441C460(v674, v675);
        if (v239)
        {
          v678 = 0xE000000000000000;
        }

        else
        {
          v678 = v677;
        }

        MEMORY[0x1C6940010](v676, v678);

        v679 = sub_1C465B638(v668, &selRef_phoneNumber);
        v681 = sub_1C441C460(v679, v680);
        if (v239)
        {
          v683 = 0xE000000000000000;
        }

        else
        {
          v683 = v682;
        }

        MEMORY[0x1C6940010](v681, v683);

        v684 = v993;
        sub_1C44BBCF4();
        String.base64EncodedSHA(withPrefix:)();
        v686 = v685;

        v687 = v944;
        sub_1C445BE38();
        sub_1C4E97BB8(v688, v689, v690, v691, v692, v693, v694, v695, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
        v921 = v662;
        if (v662)
        {
          sub_1C4416BE0();

          sub_1C4440E74();
          sub_1C44143B8();
          sub_1C4D4E63C(v968, v696);
          sub_1C44209F8();
          v697 = sub_1C43FFF1C();
          sub_1C4D4E63C(v697, v698);
          sub_1C4403B9C();
          v571 = v991;
          goto LABEL_76;
        }

        sub_1C465B638(v668, &selRef_fullName);
        sub_1C4416328();
        v799 = (v687 + *(v966 + 60));

        *v799 = v684;
        v799[1] = v686;
        v800 = [v668 address];
        if (v800)
        {
          v801 = v800;
          v802 = v952;
          sub_1C43FCF64();
          sub_1C440BAA8(v803, v804, v805, v988);
          sub_1C445884C();
          sub_1C4EFD1D8();
          sub_1C441AAFC();
          sub_1C448D19C(v648, v802 + v806);
          sub_1C4EFE518();
          v986 = (v802 + v687[8]);
          sub_1C4EFE4E8();
          sub_1C4401738(v687[10]);
          sub_1C4EFE478();
          v985 = (v802 + v687[12]);
          sub_1C4EFE318();
          sub_1C4401738(v687[14]);
          sub_1C4EFEB08();
          sub_1C4401738(v687[16]);
          sub_1C4EFE5A8();
          v807 = (v802 + v687[18]);
          sub_1C4EFEDE8();
          v808 = v687[20];
          v987 = v648;
          v809 = (v802 + v808);
          sub_1C4EFE8D8();
          v810 = (v802 + v687[22]);
          sub_1C4EFE378();
          v811 = (v802 + v687[24]);
          sub_1C4EFECD8();
          v812 = (v802 + v687[26]);
          sub_1C4EFE888();
          v984 = v802 + v687[28];
          *v807 = sub_1C465B638(v801, &selRef_street);
          v807[1] = v813;
          *v809 = sub_1C465B638(v801, &selRef_city);
          v809[1] = v814;
          v648 = v987;
          *v810 = sub_1C465B638(v801, &selRef_state);
          v810[1] = v815;
          *v811 = sub_1C465B638(v801, &selRef_postalCode);
          v811[1] = v816;
          *v812 = sub_1C465B638(v801, &selRef_country);
          v812[1] = v817;
          v818 = sub_1C465B638(v668, &selRef_phoneNumber);
          v819 = v985;
          *v985 = v818;
          v819[1] = v820;
          v821 = sub_1C465B638(v668, &selRef_emailAddress);
          v822 = v986;
          *v986 = v821;
          v822[1] = v823;
          v824 = sub_1C465B638(v801, &selRef_rawAddress);
          v825 = v984;
          *v984 = v824;
          *(v825 + 8) = v826;
          sub_1C4411518();
          sub_1C443EFF0(v802, &a18);
          v827 = sub_1C43FD680();
          v828 = v687;
          v687 = v944;
          v831 = sub_1C441400C(v827, v829, v830, v828);
          sub_1C4E98308(v831);

          sub_1C44165F8();
          sub_1C4D4E63C(v802, v832);
        }

        v833 = v931;
        sub_1C43FCF64();
        sub_1C440BAA8(v834, v835, v836, v988);
        v837 = v930;
        sub_1C4EFD308();
        sub_1C441AAFC();
        sub_1C448D19C(v648, v833 + v838);
        sub_1C43FCF64();
        v839 = v966;
        sub_1C440BAA8(v840, v841, v842, v966);
        sub_1C441B5F8();
        sub_1C443EFF0(v687, &v989);
        v843 = sub_1C43FD680();
        v846 = sub_1C441400C(v843, v844, v845, v839);
        sub_1C4E98FD8(v846);
        sub_1C443EFF0(v833, v956);
        v847 = sub_1C43FD680();
        v850 = sub_1C441400C(v847, v848, v849, v837);
        v666 = v968;
        sub_1C4E990D0(v850);

        v851 = sub_1C447FB28();
        sub_1C4D4E63C(v851, v852);
        sub_1C442F7F4();
        sub_1C4D4E63C(v687, v853);
        v182 = v990;
      }

      v854 = v942;
      sub_1C43FCF64();
      sub_1C440BAA8(v855, v856, v857, v988);
      v858 = v940;
      sub_1C4EFD398();
      sub_1C441AAFC();
      sub_1C448D19C(v648, v854 + v859);
      sub_1C43FCF64();
      v860 = v949;
      sub_1C440BAA8(v861, v862, v863, v949);
      sub_1C442A79C(v666, v965);
      sub_1C43FBD94();
      sub_1C440BAA8(v864, v865, v866, v860);
      sub_1C4E991C0(v858);
      sub_1C456902C(&qword_1EC0C0340, &qword_1C4F3E6D8);
      sub_1C44693E4();
      v869 = v868 & ~v867;
      v870 = swift_allocObject();
      *(v870 + 16) = xmmword_1C4F0D130;
      sub_1C448D19C(v854, v870 + v869);
      v871 = v989[18];
      v872 = v991;

      *(v872 + v871) = v870;
      sub_1C4EB5668();
      sub_1C4D4E63C(v854, type metadata accessor for WalletEmailOrderStructs.OrderShipmentFullFillmentRelationshipType);
      sub_1C4440E74();
      sub_1C44143B8();
      sub_1C4D4E63C(v666, v873);
      v539 = v972;
      v556 = v921;
      v523 = v923;
      v555 = 0x1EDDFD000;
    }

    v557 = sub_1C44257F8();
    v558 = v967;
    if (v557 == 1)
    {
      v559 = [v182 paymentInformation];
      if (v559)
      {
        v560 = v559;
        sub_1C44BBCF4();
        String.base64EncodedSHA(withPrefix:)();
        v562 = v561;
        v992 = v523;
        v993 = v925;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v563 = sub_1C44C132C();
        MEMORY[0x1C6940010](v563, v562);

        sub_1C4E992B8(v992, v993, v564, v565, v566, v567, v568, v569, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
        if (v556)
        {

          goto LABEL_74;
        }

        sub_1C449DB98();
        v734 = sub_1C4EFEEF8();
        v735 = v948;
        sub_1C43FCF64();
        sub_1C440BAA8(v736, v737, v738, v734);
        sub_1C445884C();
        sub_1C4EFD208();
        v739 = v562[6];
        if (*(v555 + 648) != -1)
        {
          sub_1C440B8A0(&qword_1EDDFD288);
        }

        v740 = type metadata accessor for Source(0);
        v741 = sub_1C442B738(v740, &qword_1EDDFD290);
        sub_1C4416944();
        sub_1C448D19C(v742, v735 + v739);
        sub_1C4EFEE08();
        v743 = (v735 + v562[8]);
        sub_1C4EFEC18();
        v744 = (v735 + v562[10]);
        v745 = sub_1C465B638(v560, &selRef_totalAmount);
        v747 = v746;
        *v743 = v745;
        v743[1] = v746;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v748 = sub_1C465B638(v560, &selRef_totalCurrencyCode);
        v750 = v749;
        *v744 = v748;
        v744[1] = v749;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v751 = sub_1C4D42F2C(v745, v747, v748, v750);

        sub_1C4D400DC(v751);
        sub_1C4422C34();
        sub_1C443EFF0(v948, &v963);
        v752 = sub_1C43FD680();
        v755 = sub_1C441400C(v752, v753, v754, v562);
        v756 = v953;
        sub_1C4E999D8(v755);
        sub_1C443E47C(v964);
        sub_1C43FCF64();
        sub_1C440BAA8(v757, v758, v759, v734);
        v988 = v734;
        v760 = v937;
        sub_1C4EFD2A8();
        v761 = v750 + v760[6];
        v990 = v741;
        sub_1C448D19C(v741, v761);
        sub_1C4EFE558();
        sub_1C43FC4DC(v760[8]);
        sub_1C4EFE658();
        sub_1C43FC4DC(v760[10]);
        sub_1C43FCF64();
        v762 = v935;
        sub_1C440BAA8(v763, v764, v765, v935);
        sub_1C443EFF0(v756, &v959);
        v766 = sub_1C43FD680();
        v769 = sub_1C441400C(v766, v767, v768, v762);
        sub_1C4E99AC8(v769);
        sub_1C443EFF0(v750, &v961);
        v770 = sub_1C43FD680();
        v773 = sub_1C441400C(v770, v771, v772, v760);
        v774 = v991;
        sub_1C4E99BC4(v773);
        sub_1C44BBCF4();
        String.base64EncodedSHA(withPrefix:)();
        v776 = v775;
        v778 = v777;
        sub_1C4480884();
        v780 = *(v779 - 256);
        v992 = v781;
        v993 = v780;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v782 = sub_1C44C132C();
        MEMORY[0x1C6940010](v782, v778);

        v783 = v939;
        sub_1C445BE38();
        sub_1C4E99CB4(v784, v785, v786, v787, v788, v789, v790, v791, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
        v921 = v776;
        if (v776)
        {

          sub_1C447CCC4();
          v792 = sub_1C447FB28();
          sub_1C4D4E63C(v792, v793);

          sub_1C4D4E63C(v948, type metadata accessor for WalletEmailOrderStructs.QuantityRelationshipType);
          sub_1C44209F8();
          v794 = sub_1C43FFF1C();
          sub_1C4D4E63C(v794, v795);
          sub_1C4403B9C();
          v571 = v774;
          goto LABEL_76;
        }

        v874 = v933;
        sub_1C43FCF64();
        v875 = v988;
        sub_1C440BAA8(v876, v877, v878, v988);
        sub_1C4EFD208();
        sub_1C441AAFC();
        v880 = v990;
        sub_1C448D19C(v990, v874 + v879);
        sub_1C4EFEE08();
        v881 = (v874 + v562[8]);
        sub_1C4EFEC18();
        v882 = (v874 + v562[10]);
        *v881 = sub_1C465B638(v560, &selRef_totalAmount);
        v881[1] = v883;
        *v882 = sub_1C465B638(v560, &selRef_totalCurrencyCode);
        v882[1] = v884;
        sub_1C4422C34();
        sub_1C443EFF0(v874, &v963);
        v885 = sub_1C43FD680();
        v888 = sub_1C441400C(v885, v886, v887, v562);
        v889 = v783;
        sub_1C4E9A5D0(v888);
        v890 = [v560 paymentMethod];
        v891 = v875;
        v892 = v783;
        if (v890)
        {
          sub_1C45C28F0(v890, &selRef_lastFourDigits);
          sub_1C4416328();
        }

        else
        {
          v889 = 0;
          v882 = 0;
        }

        v893 = (v783 + *(v934 + 60));

        *v893 = v889;
        v893[1] = v882;
        v894 = [v560 paymentMethod];
        if (v894)
        {
          sub_1C45C28F0(v894, &selRef_displayName);
          sub_1C4416328();
        }

        else
        {
          v889 = 0;
          v882 = 0;
        }

        v895 = v934;
        v896 = (v892 + *(v934 + 52));

        *v896 = v889;
        v896[1] = v882;
        sub_1C444944C(&v954);
        sub_1C43FCF64();
        sub_1C440BAA8(v897, v898, v899, v891);
        sub_1C445884C();
        sub_1C4EFD328();
        sub_1C441AAFC();
        sub_1C448D19C(v880, v882 + v900);
        sub_1C4EFE558();
        v901 = (v882 + *(v891 + 32));
        sub_1C4EFE658();
        sub_1C442A790(*(v891 + 40));
        sub_1C43FCF64();
        sub_1C440BAA8(v902, v903, v904, v895);
        sub_1C4480884();
        v906 = *(v905 - 256);
        *v901 = v907;
        v901[1] = v906;
        sub_1C443EFF0(v892, &v953);
        v908 = sub_1C43FD680();
        sub_1C440BAA8(v908, v909, v910, v895);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4E9A6C0(v901);
        sub_1C456902C(&qword_1EC0C0348, &qword_1C4F3E6E0);
        sub_1C44693E4();
        v913 = v912 & ~v911;
        v914 = swift_allocObject();
        *(v914 + 16) = xmmword_1C4F0D130;
        sub_1C448D19C(v882, v914 + v913);
        v915 = v989[20];
        v916 = v991;

        *(v916 + v915) = v914;
        sub_1C4EB5844();

        sub_1C447CCC4();
        sub_1C4D4E63C(v953, type metadata accessor for WalletEmailOrderStructs.Payment);
        sub_1C4D4E63C(v882, type metadata accessor for WalletEmailOrderStructs.OrderTransactionRelationshipType);
        sub_1C4D4E63C(v933, type metadata accessor for WalletEmailOrderStructs.QuantityRelationshipType);
        sub_1C4D4E63C(v892, type metadata accessor for WalletEmailOrderStructs.Transaction);
        sub_1C4D4E63C(v948, type metadata accessor for WalletEmailOrderStructs.QuantityRelationshipType);
        v556 = v921;
        v572 = v922;
        v558 = v967;
      }

      else
      {
        v572 = v922;
      }
    }

    else
    {
      v572 = v922;
    }

    sub_1C4EFEEF8();
    sub_1C43FCF64();
    sub_1C440BAA8(v699, v700, v701, v702);
    sub_1C4EFD258();
    v703 = v558[6];
    if (qword_1EDDFD288 != -1)
    {
      sub_1C440B8A0(&qword_1EDDFD288);
    }

    v704 = type metadata accessor for Source(0);
    sub_1C442B738(v704, &qword_1EDDFD290);
    sub_1C441AAFC();
    sub_1C448D19C(v705, v572 + v703);
    sub_1C4EFE558();
    v706 = (v572 + v558[8]);
    sub_1C4EFE658();
    v707 = (v572 + v558[10]);
    *v707 = 0xD000000000000014;
    v707[1] = 0x80000001C4F860D0;
    sub_1C44EC90C(v994, v708, v709, v710, v711, v712, v713, v714, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928, v929, v930, v931, v932, v933, v934);
    v992 = v715;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4F01048();
    sub_1C4416328();

    sub_1C44BBCF4();
    String.base64EncodedSHA(withPrefix:)();
    v717 = v716;
    v719 = v718;

    *v706 = v717;
    v706[1] = v719;
    sub_1C456902C(&qword_1EC0C0328, &qword_1C4F3E6C0);
    sub_1C44693E4();
    v722 = v721 & ~v720;
    v723 = swift_allocObject();
    *(v723 + 16) = xmmword_1C4F0D130;
    sub_1C448D19C(v572, v723 + v722);
    v724 = v989[24];
    v725 = v991;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    *(v725 + v724) = v723;
    sub_1C4EB5BFC();
    type metadata accessor for PhaseStores(0);

    sub_1C448E5DC();
    if (!v556)
    {

      LOBYTE(v992) = v946;
      sub_1C4E9A7BC(v923, v925, &v992, v728, v729, v730, v731, v732, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928);
      sub_1C44B905C();

      sub_1C43FE24C();
      sub_1C4D4E63C(v922, v796);
      sub_1C44209F8();
      sub_1C4D4E63C(v725, v797);
      sub_1C4403B9C();
      sub_1C4D4E63C(v725, v798);
      goto LABEL_77;
    }

    sub_1C43FE24C();
    sub_1C4D4E63C(v572, v726);
    sub_1C44209F8();
    v727 = sub_1C43FFF1C();
    sub_1C4D4E63C(v727, v733);
    sub_1C4403B9C();
    v571 = v725;
    goto LABEL_76;
  }

LABEL_77:
  sub_1C44109F8();
}

uint64_t sub_1C4D4A8FC(uint64_t *a1)
{
  v3 = [BiomeLibrary() WalletPaymentsCommerce];
  sub_1C4416A80();
  swift_unknownObjectRelease();
  v4 = [v1 FoundIn];
  swift_unknownObjectRelease();
  v5 = *a1;
  v6 = a1[1];
  if (qword_1EDDFD1F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Source(0);
  v8 = sub_1C442B738(v7, &qword_1EDDFD1F8);
  v9 = sub_1C44209D0(v8);
  v11 = v9 == v5 && v10 == v6;
  if (v11 || (sub_1C4424DC0(v9, v10) & 1) != 0)
  {
    v12 = &selRef_ClassicOrder;
  }

  else
  {
    if (qword_1EDDFD288 != -1)
    {
      sub_1C440B8A0(&qword_1EDDFD288);
    }

    v15 = sub_1C442B738(v7, &qword_1EDDFD290);
    v16 = sub_1C44209D0(v15);
    if (v16 == v5 && v17 == v6)
    {
      v12 = &selRef_OrderEmail;
    }

    else
    {
      v12 = &selRef_OrderEmail;
      if ((sub_1C4424DC0(v16, v17) & 1) == 0)
      {
        if (qword_1EDDFD1C8 != -1)
        {
          swift_once();
        }

        v19 = sub_1C442B738(v7, &qword_1EDDFD1D0);
        v20 = sub_1C44209D0(v19);
        v22 = v20 == v5 && v21 == v6;
        if (v22 || (sub_1C4424DC0(v20, v21) & 1) != 0)
        {
          v12 = &selRef_TrackedOrder;
        }

        else
        {
          if (qword_1EDDFD1A0 != -1)
          {
            swift_once();
          }

          v23 = sub_1C442B738(v7, &qword_1EDDFD1A8);
          v24 = sub_1C44209D0(v23);
          v12 = &selRef_Transaction;
          v26 = v24 == v5 && v25 == v6;
          if (!v26 && (sub_1C4424DC0(v24, v25) & 1) == 0)
          {
            v12 = &selRef_OrderEmail;
          }
        }
      }
    }
  }

  v13 = [v4 *v12];
  sub_1C4416A80();
  swift_unknownObjectRelease();
  return v5;
}

void sub_1C4D4AB44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a8;
  v65 = a9;
  v68 = a6;
  v69 = a7;
  v66 = a1;
  v67 = a5;
  v70 = a2;
  v16 = type metadata accessor for Source(0);
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores(0);
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletEmailOrderSourceIngestor(0);
  v61 = *(v20 - 8);
  v21 = v61[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v71 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  sub_1C4EF9AC8();
  v28 = sub_1C4EF9CD8();
  sub_1C440BAA8(v27, 0, 1, v28);
  sub_1C440BAA8(v24, 1, 1, v28);
  v29 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v30 = sub_1C457A86C(v27, v24, 0, 0, 0);
  v31 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v32 = v31;
    v58 = a13;
    v57 = a12;
    v56 = a10;
    v60 = [v31 publisherWithOptions_];

    v78 = nullsub_1;
    v79 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v55 = &v76;
    v76 = sub_1C44405F8;
    v77 = &unk_1F440D348;
    v59 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v71);
    sub_1C448D19C(a11, v72);
    sub_1C448D19C(a4, v73);
    v33 = *(v61 + 80);
    v61 = v30;
    v34 = (v33 + 16) & ~v33;
    v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v62 + 80);
    v62 = 0;
    v40 = (v39 + v38 + 9) & ~v39;
    v41 = (v19 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v63 + 80) + v42 + 8) & ~*(v63 + 80);
    v63 = (v17 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1C4D4E94C(v71, v43 + v34);
    *(v43 + v35) = v67;
    *(v43 + v36) = v68;
    *(v43 + v37) = v69;
    v44 = v43 + v38;
    *v44 = v64;
    *(v44 + 8) = v56;
    sub_1C4D4E94C(v72, v43 + v40);
    v45 = (v43 + v41);
    v46 = v70;
    *v45 = v66;
    v45[1] = v46;
    *(v43 + v42) = v57;
    sub_1C4D4E94C(v73, v43 + v54);
    v47 = v58;
    *(v43 + v63) = v58;
    v78 = sub_1C4D4E9A8;
    v79 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1C462BCF4;
    v77 = &unk_1F440D398;
    v48 = _Block_copy(&aBlock);

    v49 = v47;

    v51 = v59;
    v50 = v60;
    v52 = [v60 sinkWithCompletion:v59 shouldContinue:v48];

    _Block_release(v48);
    _Block_release(v51);

    swift_beginAccess();
    *v65 = *(v49 + 16);
  }
}

void sub_1C4D4B1B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a8;
  v65 = a9;
  v68 = a6;
  v69 = a7;
  v66 = a1;
  v67 = a5;
  v70 = a2;
  v16 = type metadata accessor for Source(0);
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores(0);
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletClassicOrderSourceIngestor(0);
  v61 = *(v20 - 8);
  v21 = v61[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v71 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  sub_1C4EF9AC8();
  v28 = sub_1C4EF9CD8();
  sub_1C440BAA8(v27, 0, 1, v28);
  sub_1C440BAA8(v24, 1, 1, v28);
  v29 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v30 = sub_1C457A86C(v27, v24, 0, 0, 0);
  v31 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v32 = v31;
    v58 = a13;
    v57 = a12;
    v56 = a10;
    v60 = [v31 publisherWithOptions_];

    v78 = nullsub_1;
    v79 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v55 = &v76;
    v76 = sub_1C44405F8;
    v77 = &unk_1F440D618;
    v59 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v71);
    sub_1C448D19C(a11, v72);
    sub_1C448D19C(a4, v73);
    v33 = *(v61 + 80);
    v61 = v30;
    v34 = (v33 + 16) & ~v33;
    v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v62 + 80);
    v62 = 0;
    v40 = (v39 + v38 + 9) & ~v39;
    v41 = (v19 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v63 + 80) + v42 + 8) & ~*(v63 + 80);
    v63 = (v17 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1C4D4E94C(v71, v43 + v34);
    *(v43 + v35) = v67;
    *(v43 + v36) = v68;
    *(v43 + v37) = v69;
    v44 = v43 + v38;
    *v44 = v64;
    *(v44 + 8) = v56;
    sub_1C4D4E94C(v72, v43 + v40);
    v45 = (v43 + v41);
    v46 = v70;
    *v45 = v66;
    v45[1] = v46;
    *(v43 + v42) = v57;
    sub_1C4D4E94C(v73, v43 + v54);
    v47 = v58;
    *(v43 + v63) = v58;
    v78 = sub_1C4D4F504;
    v79 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1C462BCF4;
    v77 = &unk_1F440D668;
    v48 = _Block_copy(&aBlock);

    v49 = v47;

    v51 = v59;
    v50 = v60;
    v52 = [v60 sinkWithCompletion:v59 shouldContinue:v48];

    _Block_release(v48);
    _Block_release(v51);

    swift_beginAccess();
    *v65 = *(v49 + 16);
  }
}

void sub_1C4D4B81C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a8;
  v65 = a9;
  v68 = a6;
  v69 = a7;
  v66 = a1;
  v67 = a5;
  v70 = a2;
  v16 = type metadata accessor for Source(0);
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores(0);
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletTrackedOrderSourceIngestor(0);
  v61 = *(v20 - 8);
  v21 = v61[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v71 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  sub_1C4EF9AC8();
  v28 = sub_1C4EF9CD8();
  sub_1C440BAA8(v27, 0, 1, v28);
  sub_1C440BAA8(v24, 1, 1, v28);
  v29 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v30 = sub_1C457A86C(v27, v24, 0, 0, 0);
  v31 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v32 = v31;
    v58 = a13;
    v57 = a12;
    v56 = a10;
    v60 = [v31 publisherWithOptions_];

    v78 = nullsub_1;
    v79 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v55 = &v76;
    v76 = sub_1C44405F8;
    v77 = &unk_1F440D438;
    v59 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v71);
    sub_1C448D19C(a11, v72);
    sub_1C448D19C(a4, v73);
    v33 = *(v61 + 80);
    v61 = v30;
    v34 = (v33 + 16) & ~v33;
    v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v62 + 80);
    v62 = 0;
    v40 = (v39 + v38 + 9) & ~v39;
    v41 = (v19 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v63 + 80) + v42 + 8) & ~*(v63 + 80);
    v63 = (v17 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1C4D4E94C(v71, v43 + v34);
    *(v43 + v35) = v67;
    *(v43 + v36) = v68;
    *(v43 + v37) = v69;
    v44 = v43 + v38;
    *v44 = v64;
    *(v44 + 8) = v56;
    sub_1C4D4E94C(v72, v43 + v40);
    v45 = (v43 + v41);
    v46 = v70;
    *v45 = v66;
    v45[1] = v46;
    *(v43 + v42) = v57;
    sub_1C4D4E94C(v73, v43 + v54);
    v47 = v58;
    *(v43 + v63) = v58;
    v78 = sub_1C4D4EFE4;
    v79 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1C462BCF4;
    v77 = &unk_1F440D488;
    v48 = _Block_copy(&aBlock);

    v49 = v47;

    v51 = v59;
    v50 = v60;
    v52 = [v60 sinkWithCompletion:v59 shouldContinue:v48];

    _Block_release(v48);
    _Block_release(v51);

    swift_beginAccess();
    *v65 = *(v49 + 16);
  }
}

void sub_1C4D4BE88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a8;
  v65 = a9;
  v68 = a6;
  v69 = a7;
  v66 = a1;
  v67 = a5;
  v70 = a2;
  v16 = type metadata accessor for Source(0);
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores(0);
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(0);
  v61 = *(v20 - 8);
  v21 = v61[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v71 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  sub_1C4EF9AC8();
  v28 = sub_1C4EF9CD8();
  sub_1C440BAA8(v27, 0, 1, v28);
  sub_1C440BAA8(v24, 1, 1, v28);
  v29 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v30 = sub_1C457A86C(v27, v24, 0, 0, 0);
  v31 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v32 = v31;
    v58 = a13;
    v57 = a12;
    v56 = a10;
    v60 = [v31 publisherWithOptions_];

    v78 = nullsub_1;
    v79 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v55 = &v76;
    v76 = sub_1C44405F8;
    v77 = &unk_1F440D3C0;
    v59 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v71);
    sub_1C448D19C(a11, v72);
    sub_1C448D19C(a4, v73);
    v33 = *(v61 + 80);
    v61 = v30;
    v34 = (v33 + 16) & ~v33;
    v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v62 + 80);
    v62 = 0;
    v40 = (v39 + v38 + 9) & ~v39;
    v41 = (v19 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v63 + 80) + v42 + 8) & ~*(v63 + 80);
    v63 = (v17 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1C4D4E94C(v71, v43 + v34);
    *(v43 + v35) = v67;
    *(v43 + v36) = v68;
    *(v43 + v37) = v69;
    v44 = v43 + v38;
    *v44 = v64;
    *(v44 + 8) = v56;
    sub_1C4D4E94C(v72, v43 + v40);
    v45 = (v43 + v41);
    v46 = v70;
    *v45 = v66;
    v45[1] = v46;
    *(v43 + v42) = v57;
    sub_1C4D4E94C(v73, v43 + v54);
    v47 = v58;
    *(v43 + v63) = v58;
    v78 = sub_1C4D4EA00;
    v79 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1C462BCF4;
    v77 = &unk_1F440D410;
    v48 = _Block_copy(&aBlock);

    v49 = v47;

    v51 = v59;
    v50 = v60;
    v52 = [v60 sinkWithCompletion:v59 shouldContinue:v48];

    _Block_release(v48);
    _Block_release(v51);

    swift_beginAccess();
    *v65 = *(v49 + 16);
  }
}

void sub_1C4D4C4F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a8;
  v65 = a9;
  v68 = a6;
  v69 = a7;
  v66 = a1;
  v67 = a5;
  v70 = a2;
  v16 = type metadata accessor for Source(0);
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores(0);
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletTransactionOrderSourceIngestor(0);
  v61 = *(v20 - 8);
  v21 = v61[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v71 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  sub_1C4EF9AC8();
  v28 = sub_1C4EF9CD8();
  sub_1C440BAA8(v27, 0, 1, v28);
  sub_1C440BAA8(v24, 1, 1, v28);
  v29 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v30 = sub_1C457A86C(v27, v24, 0, 0, 0);
  v31 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v32 = v31;
    v58 = a13;
    v57 = a12;
    v56 = a10;
    v60 = [v31 publisherWithOptions_];

    v78 = nullsub_1;
    v79 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v55 = &v76;
    v76 = sub_1C44405F8;
    v77 = &unk_1F440D528;
    v59 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v71);
    sub_1C448D19C(a11, v72);
    sub_1C448D19C(a4, v73);
    v33 = *(v61 + 80);
    v61 = v30;
    v34 = (v33 + 16) & ~v33;
    v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v62 + 80);
    v62 = 0;
    v40 = (v39 + v38 + 9) & ~v39;
    v41 = (v19 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v63 + 80) + v42 + 8) & ~*(v63 + 80);
    v63 = (v17 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1C4D4E94C(v71, v43 + v34);
    *(v43 + v35) = v67;
    *(v43 + v36) = v68;
    *(v43 + v37) = v69;
    v44 = v43 + v38;
    *v44 = v64;
    *(v44 + 8) = v56;
    sub_1C4D4E94C(v72, v43 + v40);
    v45 = (v43 + v41);
    v46 = v70;
    *v45 = v66;
    v45[1] = v46;
    *(v43 + v42) = v57;
    sub_1C4D4E94C(v73, v43 + v54);
    v47 = v58;
    *(v43 + v63) = v58;
    v78 = sub_1C4D4F454;
    v79 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1C462BCF4;
    v77 = &unk_1F440D578;
    v48 = _Block_copy(&aBlock);

    v49 = v47;

    v51 = v59;
    v50 = v60;
    v52 = [v60 sinkWithCompletion:v59 shouldContinue:v48];

    _Block_release(v48);
    _Block_release(v51);

    swift_beginAccess();
    *v65 = *(v49 + 16);
  }
}

void sub_1C4D4CB60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a8;
  v65 = a9;
  v68 = a6;
  v69 = a7;
  v66 = a1;
  v67 = a5;
  v70 = a2;
  v16 = type metadata accessor for Source(0);
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores(0);
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(0);
  v61 = *(v20 - 8);
  v21 = v61[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v71 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  sub_1C4EF9AC8();
  v28 = sub_1C4EF9CD8();
  sub_1C440BAA8(v27, 0, 1, v28);
  sub_1C440BAA8(v24, 1, 1, v28);
  v29 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v30 = sub_1C457A86C(v27, v24, 0, 0, 0);
  v31 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v32 = v31;
    v58 = a13;
    v57 = a12;
    v56 = a10;
    v60 = [v31 publisherWithOptions_];

    v78 = nullsub_1;
    v79 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v55 = &v76;
    v76 = sub_1C44405F8;
    v77 = &unk_1F440D690;
    v59 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v71);
    sub_1C448D19C(a11, v72);
    sub_1C448D19C(a4, v73);
    v33 = *(v61 + 80);
    v61 = v30;
    v34 = (v33 + 16) & ~v33;
    v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v62 + 80);
    v62 = 0;
    v40 = (v39 + v38 + 9) & ~v39;
    v41 = (v19 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v63 + 80) + v42 + 8) & ~*(v63 + 80);
    v63 = (v17 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1C4D4E94C(v71, v43 + v34);
    *(v43 + v35) = v67;
    *(v43 + v36) = v68;
    *(v43 + v37) = v69;
    v44 = v43 + v38;
    *v44 = v64;
    *(v44 + 8) = v56;
    sub_1C4D4E94C(v72, v43 + v40);
    v45 = (v43 + v41);
    v46 = v70;
    *v45 = v66;
    v45[1] = v46;
    *(v43 + v42) = v57;
    sub_1C4D4E94C(v73, v43 + v54);
    v47 = v58;
    *(v43 + v63) = v58;
    v78 = sub_1C4D4F5AC;
    v79 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1C462BCF4;
    v77 = &unk_1F440D6E0;
    v48 = _Block_copy(&aBlock);

    v49 = v47;

    v51 = v59;
    v50 = v60;
    v52 = [v60 sinkWithCompletion:v59 shouldContinue:v48];

    _Block_release(v48);
    _Block_release(v51);

    swift_beginAccess();
    *v65 = *(v49 + 16);
  }
}

void sub_1C4D4D1CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a8;
  v65 = a9;
  v68 = a6;
  v69 = a7;
  v66 = a1;
  v67 = a5;
  v70 = a2;
  v16 = type metadata accessor for Source(0);
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores(0);
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(0);
  v61 = *(v20 - 8);
  v21 = v61[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v71 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  sub_1C4EF9AC8();
  v28 = sub_1C4EF9CD8();
  sub_1C440BAA8(v27, 0, 1, v28);
  sub_1C440BAA8(v24, 1, 1, v28);
  v29 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v30 = sub_1C457A86C(v27, v24, 0, 0, 0);
  v31 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v32 = v31;
    v58 = a13;
    v57 = a12;
    v56 = a10;
    v60 = [v31 publisherWithOptions_];

    v78 = nullsub_1;
    v79 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v55 = &v76;
    v76 = sub_1C44405F8;
    v77 = &unk_1F440D4B0;
    v59 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v71);
    sub_1C448D19C(a11, v72);
    sub_1C448D19C(a4, v73);
    v33 = *(v61 + 80);
    v61 = v30;
    v34 = (v33 + 16) & ~v33;
    v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v62 + 80);
    v62 = 0;
    v40 = (v39 + v38 + 9) & ~v39;
    v41 = (v19 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v63 + 80) + v42 + 8) & ~*(v63 + 80);
    v63 = (v17 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1C4D4E94C(v71, v43 + v34);
    *(v43 + v35) = v67;
    *(v43 + v36) = v68;
    *(v43 + v37) = v69;
    v44 = v43 + v38;
    *v44 = v64;
    *(v44 + 8) = v56;
    sub_1C4D4E94C(v72, v43 + v40);
    v45 = (v43 + v41);
    v46 = v70;
    *v45 = v66;
    v45[1] = v46;
    *(v43 + v42) = v57;
    sub_1C4D4E94C(v73, v43 + v54);
    v47 = v58;
    *(v43 + v63) = v58;
    v78 = sub_1C4D4F3FC;
    v79 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1C462BCF4;
    v77 = &unk_1F440D500;
    v48 = _Block_copy(&aBlock);

    v49 = v47;

    v51 = v59;
    v50 = v60;
    v52 = [v60 sinkWithCompletion:v59 shouldContinue:v48];

    _Block_release(v48);
    _Block_release(v51);

    swift_beginAccess();
    *v65 = *(v49 + 16);
  }
}

void sub_1C4D4D838(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a8;
  v65 = a9;
  v68 = a6;
  v69 = a7;
  v66 = a1;
  v67 = a5;
  v70 = a2;
  v16 = type metadata accessor for Source(0);
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores(0);
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(0);
  v61 = *(v20 - 8);
  v21 = v61[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v71 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  sub_1C4EF9AC8();
  v28 = sub_1C4EF9CD8();
  sub_1C440BAA8(v27, 0, 1, v28);
  sub_1C440BAA8(v24, 1, 1, v28);
  v29 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v30 = sub_1C457A86C(v27, v24, 0, 0, 0);
  v31 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v32 = v31;
    v58 = a13;
    v57 = a12;
    v56 = a10;
    v60 = [v31 publisherWithOptions_];

    v78 = nullsub_1;
    v79 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v55 = &v76;
    v76 = sub_1C44405F8;
    v77 = &unk_1F440D5A0;
    v59 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v71);
    sub_1C448D19C(a11, v72);
    sub_1C448D19C(a4, v73);
    v33 = *(v61 + 80);
    v61 = v30;
    v34 = (v33 + 16) & ~v33;
    v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v62 + 80);
    v62 = 0;
    v40 = (v39 + v38 + 9) & ~v39;
    v41 = (v19 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v63 + 80) + v42 + 8) & ~*(v63 + 80);
    v63 = (v17 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1C4D4E94C(v71, v43 + v34);
    *(v43 + v35) = v67;
    *(v43 + v36) = v68;
    *(v43 + v37) = v69;
    v44 = v43 + v38;
    *v44 = v64;
    *(v44 + 8) = v56;
    sub_1C4D4E94C(v72, v43 + v40);
    v45 = (v43 + v41);
    v46 = v70;
    *v45 = v66;
    v45[1] = v46;
    *(v43 + v42) = v57;
    sub_1C4D4E94C(v73, v43 + v54);
    v47 = v58;
    *(v43 + v63) = v58;
    v78 = sub_1C4D4F4AC;
    v79 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1C462BCF4;
    v77 = &unk_1F440D5F0;
    v48 = _Block_copy(&aBlock);

    v49 = v47;

    v51 = v59;
    v50 = v60;
    v52 = [v60 sinkWithCompletion:v59 shouldContinue:v48];

    _Block_release(v48);
    _Block_release(v51);

    swift_beginAccess();
    *v65 = *(v49 + 16);
  }
}

void sub_1C4D4DEA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void))
{
  v19 = objc_autoreleasePoolPush();
  a14();
  sub_1C440F1BC();
  swift_beginAccess();
  if (*(a3 + 16))
  {
    goto LABEL_15;
  }

  v20 = &off_1E81F1000;
  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_15;
  }

  v39 = [a1 eventBody];
  sub_1C4434348();
  swift_beginAccess();
  v21 = *(a4 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(a4 + 16) = v23;
  sub_1C440F1BC();
  swift_beginAccess();
  v24 = *(a5 + 16);
  if (v24)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    v25 = [a1 respondsToSelector_];
    v26 = v24;
    v27 = 0;
    if (v25)
    {
      [a1 timestamp];
      v27 = v28;
    }

    v41[0] = a7;
    BMEventBase.ingestBaseEvent(startTime:endTime:pipelineType:stores:)(v27, (v25 & 1) == 0, v41);
    sub_1C4812140();
    v32 = v31;

    a9(v32);

    if (v39)
    {
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      v20 = &off_1E81F1000;
      if (v35)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v35 = 0;
      v20 = &off_1E81F1000;
    }

    sub_1C4434348();
    swift_beginAccess();
    v36 = *(a5 + 16);
    *(a5 + 16) = v35;

    sub_1C4434348();
    swift_beginAccess();
    v37 = *(a11 + 16);
    v22 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (!v22)
    {
      *(a11 + 16) = v38;
      v29 = &selRef_localizedName;
      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = &selRef_localizedName;
  if (v39)
  {
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v30 = 0;
  }

  sub_1C4434348();
  swift_beginAccess();
  *(a5 + 16) = v30;
LABEL_13:
  if ([a1 v20[232]])
  {
    [a1 v29[469]];
    v34 = v33;
    swift_unknownObjectRelease();
    sub_1C4434348();
    swift_beginAccess();
    *(a6 + 16) = v34;
LABEL_15:
    objc_autoreleasePoolPop(v19);
    return;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_1C4D4E224(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v10, v11);

  if (a4)
  {
    v12 = a4;
  }

  else
  {
    a3 = 0;
    v12 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](a3, v12);

  if (a6)
  {
    v13 = a6;
  }

  else
  {
    a5 = 0;
    v13 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](a5, v13);

  if (qword_1EDDE92E8 != -1)
  {
    sub_1C4440B14();
    swift_once();
  }

  v14 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v14, qword_1EDE2D008);
  String.base64EncodedSHA(withPrefix:)();
  v16 = v15;

  return v16;
}

void sub_1C4D4E35C()
{
  sub_1C467CD60();
  v1 = v6;
  v2 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(0);
  v3 = *(v0 + *(v2 + 24));
  if (qword_1EDDFD288 != -1)
  {
    sub_1C440B8A0(&qword_1EDDFD288);
  }

  if (v7)
  {
    v1 = 0;
  }

  v4 = type metadata accessor for Source(0);
  v5 = sub_1C442B738(v4, &qword_1EDDFD290);
  sub_1C4D451FC(v1, v7, v3, v5, v0 + *(v2 + 20));
}

uint64_t sub_1C4D4E414()
{
  sub_1C4D4E35C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C4D4E4DC()
{
  type metadata accessor for WalletEmailOrderSourceIngestor(0);
  if (qword_1EDDFD288 != -1)
  {
    sub_1C440B8A0(&qword_1EDDFD288);
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, &qword_1EDDFD290);
  sub_1C4D4459C();
}

uint64_t sub_1C4D4E55C()
{
  sub_1C4D4E4DC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D4E63C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C4D4E694()
{
  result = qword_1EC0C68D0;
  if (!qword_1EC0C68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C68D0);
  }

  return result;
}

uint64_t sub_1C4D4E778(uint64_t a1)
{
  result = sub_1C4D4E828(qword_1EDDDEDC0, type metadata accessor for WalletEmailOrderSourceIngestor, &unk_1C4F6F8D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D4E7D0(uint64_t a1)
{
  result = sub_1C4D4E828(&qword_1EDDDEDA8, type metadata accessor for WalletEmailOrderSourceIngestor, &unk_1C4F6F8F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D4E828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4D4E870(uint64_t a1)
{
  result = sub_1C4D4E828(qword_1EDDDCE90, type metadata accessor for WalletEmailOrderDeltaSourceIngestor, &unk_1C4F6F94C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D4E8C8(uint64_t a1)
{
  result = sub_1C4D4E828(&qword_1EDDDCE78, type metadata accessor for WalletEmailOrderDeltaSourceIngestor, &unk_1C4F6F974);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D4E94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4D4EA2C(void *a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v5 = a2(0);
  sub_1C43FCF7C(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = type metadata accessor for PhaseStores(0);
  sub_1C43FCF7C(v13);
  v15 = (*(v14 + 80) + v12 + 9) & ~*(v14 + 80);
  v17 = (*(v16 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = type metadata accessor for Source(0);
  sub_1C43FCF7C(v19);
  v21 = v20;
  v23 = v22;
  v24 = (*(v21 + 80) + v18 + 8) & ~*(v21 + 80);
  sub_1C4D4DEA4(a1, v3 + v7, *(v3 + v9), *(v3 + v10), *(v3 + v11), *(v3 + v12), *(v3 + v12 + 8), v3 + v15, *(v3 + v17), *(v3 + v17 + 8), *(v3 + v18), v3 + v24, *(v3 + ((*(v23 + 64) + v24 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
  return v25 & 1;
}

uint64_t sub_1C4D4EC24(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  sub_1C4460918();
  sub_1C4413D10();
  sub_1C4413D10();
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for PhaseStores(0);
  sub_1C441EAC8();
  v7 = *(v6 + 80);
  v23 = (v7 + v5 + 9) & ~v7;
  sub_1C4460918();
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for Source(0);
  sub_1C4D4F650();
  v11 = *(v10 + 80);
  v24 = (v11 + v9 + 8) & ~v11;
  v26 = v3 | v7 | v11;
  sub_1C4460918();
  v25 = v12;
  v13 = v1 + ((v3 + 16) & ~v3);
  v22 = sub_1C4EF98F8();
  sub_1C43FBCE0();
  v21 = *(v14 + 8);
  (v21)(v13);

  v15 = v13 + v2[7];

  v16 = *(v5 + 32);
  v17 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v19 = *(v18 + 8);
  v19(v15 + v16, v17);
  v19(v13 + v2[9], v17);

  v21(v1 + v23, v22);

  v19(v1 + v24 + *(v5 + 32), v17);

  return MEMORY[0x1EEE6BDD0](v1, v25 + 8, v26 | 7);
}

uint64_t sub_1C4D4F03C(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  sub_1C4460918();
  sub_1C4413D10();
  sub_1C4413D10();
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for PhaseStores(0);
  sub_1C441EAC8();
  v7 = *(v6 + 80);
  v23 = (v7 + v5 + 9) & ~v7;
  sub_1C4460918();
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for Source(0);
  sub_1C4D4F650();
  v11 = *(v10 + 80);
  v24 = (v11 + v9 + 8) & ~v11;
  v26 = v3 | v7 | v11;
  sub_1C4460918();
  v25 = v12;
  v13 = v1 + ((v3 + 16) & ~v3);

  v14 = *(v5 + 32);
  v15 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v22 = *(v16 + 8);
  v22(v13 + v14, v15);
  v17 = v13 + v2[7];
  v18 = sub_1C4EF98F8();
  sub_1C43FBCE0();
  v20 = *(v19 + 8);
  v20(v17, v18);

  v22(v13 + v2[9], v15);

  v20(v1 + v23, v18);

  v22(v1 + v24 + *(v5 + 32), v15);

  return MEMORY[0x1EEE6BDD0](v1, v25 + 8, v26 | 7);
}

uint64_t sub_1C4D4F664(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v42 = a1;
  v43 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FD2D8();
  v44 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCDF8();
  v46 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v40 = v17;
  swift_getAssociatedTypeWitness();
  sub_1C43FCDF8();
  v34 = v19;
  v35 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v22 = sub_1C4F01BA8();
  if (!v22)
  {
    return sub_1C4F01718();
  }

  v45 = v22;
  v49 = sub_1C4F02388();
  v36 = sub_1C4F02398();
  sub_1C4F02338();
  result = sub_1C4F01B98();
  if ((v45 & 0x8000000000000000) == 0)
  {
    v31 = v10;
    v32 = a5;
    v24 = 0;
    v37 = (v46 + 16);
    v38 = v46 + 8;
    v39 = v8;
    while (!__OFADD__(v24, 1))
    {
      v46 = v24 + 1;
      v25 = sub_1C4F01BE8();
      (*v37)(v15);
      v25(v48, 0);
      v26 = v47;
      v42(v15, v44);
      if (v26)
      {
        v29 = sub_1C4435D48();
        v30(v29);
        (*(v34 + 8))(v21, v35);

        return (*(v31 + 32))(v33, v44, v32);
      }

      v47 = 0;
      v27 = sub_1C4435D48();
      v28(v27);
      sub_1C4F02378();
      result = sub_1C4F01BB8();
      ++v24;
      if (v46 == v45)
      {
        (*(v34 + 8))(v21, v35);
        return v49;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void WalletOrderBlockingFunction.init(_:predicates:relationshipPredicates:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1C448DE08();
  *a4 = a2;
  a4[1] = a3;
  a4[2] = a1;
  a4[3] = v8;
}

uint64_t WalletOrderBlockingFunction.blockValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = v3[1];
  v46 = *v3;
  v47 = v9;
  if (qword_1EDDFD028 != -1)
  {
LABEL_19:
    swift_once();
  }

  v10 = sub_1C4F00978();
  v44 = sub_1C442B738(v10, qword_1EDE2DE10);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "Wallet Order Blocking function running", v13, 2u);
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  v50 = a1;
  MEMORY[0x1EEE9AC00](v14);
  v42 = v46;
  v43 = v47;
  v15 = sub_1C4F017A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *&v46 = swift_getWitnessTable();
  v16 = v5;
  v17 = a3;
  v50 = sub_1C4F02308();
  MEMORY[0x1EEE9AC00](v50);
  *&v43 = a2;
  *(&v43 + 1) = a3;
  WitnessTable = swift_getWitnessTable();
  sub_1C4D4F664(sub_1C4D5040C, &v42, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

  v19 = sub_1C4499940();
  v50 = a1;
  MEMORY[0x1EEE9AC00](v19);
  *&v42 = a2;
  *(&v42 + 1) = a3;
  *&v43 = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  a3 = sub_1C4F02308();

  v50 = a3;
  MEMORY[0x1EEE9AC00](v21);
  *&v43 = a2;
  *(&v43 + 1) = v17;
  sub_1C4D4F664(sub_1C4D50450, &v42, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v22);
  *&v46 = v16;

  v23 = sub_1C4499940();
  v24 = v23;
  v5 = 0;
  v50 = MEMORY[0x1E69E7CD0];
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  a1 = v23 + 56;
  v27 = v26 & *(v23 + 56);
  v28 = (v25 + 63) >> 6;
  a2 = v47;
  if (v27)
  {
    while (1)
    {
      v29 = v5;
LABEL_12:
      v30 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      a3 = *(*(v24 + 48) + ((v29 << 10) | (16 * v30)) + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v31 = WalletOrderKeyValueStore.fetchTransactionDetails(for:)();

      sub_1C4D400DC(v31);
      if (!v27)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v29 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(a1 + 8 * v29);
    ++v5;
    if (v27)
    {
      v5 = v29;
      goto LABEL_12;
    }
  }

  v32 = v50;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v33 = sub_1C4F00968();
  v34 = sub_1C4F01CB8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v49 = v36;
    *v35 = 134218242;
    *(v35 + 4) = *(v32 + 16);

    *(v35 + 12) = 2080;
    v48 = v32;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4C6C73C();
    sub_1C4415EA8();
    v37 = sub_1C4F01568();
    v39 = v38;

    v40 = sub_1C441D828(v37, v39, &v49);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_1C43F8000, v33, v34, "blocking keys for wallet order are %ld, %s", v35, 0x16u);
    sub_1C440962C(v36);
    MEMORY[0x1C6942830](v36, -1, -1);
    MEMORY[0x1C6942830](v35, -1, -1);
  }

  else
  {
  }

  return sub_1C44FE820(v32);
}

uint64_t sub_1C4D50038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_1C4EFF7D8();
  LOBYTE(a5) = sub_1C4499AD0(v8, v9, a5);

  return a5 & 1;
}

uint64_t sub_1C4D50094@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C4EFF8A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFF7B8();
  v7 = sub_1C4EFF848();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

uint64_t sub_1C4D50198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v4 = sub_1C4EFEEF8();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = sub_1C4EFF8A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  sub_1C4EFF7B8();
  v14 = sub_1C4EFF848();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  LOBYTE(v10) = sub_1C4499AD0(v14, v16, v24);

  if (v10)
  {
    sub_1C4EFF7C8();
    sub_1C4EFE558();
    v17 = sub_1C44DBB50(v9, v6);
    v18 = v23;
    v19 = *(v22 + 8);
    v19(v6, v23);
    v19(v9, v18);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1C4D50450@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4EFF7D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C4D504A4()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  sub_1C4EFEEF8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4412A1C(v6, v7, v8, v9, v10, v11, v12, v13, v32);
  if (v0 && (sub_1C456902C(&qword_1EC0BDE78, &qword_1C4F322C0), sub_1C4406320(), sub_1C4435698(), v14))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v16)
      {
        break;
      }

      v17 = sub_1C44082FC(v15);
      v1(v17);
      v18 = *(v2 + 40);
      sub_1C440A354();
      v20 = sub_1C4D52868(&qword_1EDDFCCB8, v19, MEMORY[0x1E69A9758]);
      sub_1C442C170(v20);
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10();
        if (v22)
        {
          break;
        }

        v23 = sub_1C4401470();
        v1(v23);
        sub_1C440A354();
        v25 = sub_1C4D52868(&qword_1EDDFCCB0, v24, MEMORY[0x1E69A9768]);
        sub_1C440FF54(v25);
        v26 = sub_1C4417BC8();
        (v2)(v26);
        if (v18)
        {
          v31 = sub_1C445EB30();
          (v2)(v31);
          v2 = v3;
          goto LABEL_12;
        }

        sub_1C440C144();
      }

      v27 = sub_1C442DA34(v21);
      v28(v27);
      sub_1C4418AE4();
      if (v30)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v29;
LABEL_12:
      sub_1C4432F00();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

void sub_1C4D50668()
{
  sub_1C43FEAE0();
  if (v1 && (sub_1C456902C(&qword_1EC0BDE58, &qword_1C4F322A0), v4 = sub_1C4406320(), *(v0 + 16)))
  {
    v28 = v0;
    while (*(v0 + 16))
    {
      sub_1C4441344();
      sub_1C4F02AF8();
      sub_1C440CC68();
      switch(v2)
      {
        case 1:
        case 4:
          sub_1C4426BAC();
          break;
        case 2:
          sub_1C44160DC();
          sub_1C4408B0C();
          break;
        case 3:
          sub_1C44040F0();
          sub_1C44367C4();
          break;
        case 6:
          sub_1C4415E04();
          break;
        case 7:
          sub_1C440E008();
          break;
        case 8:
          sub_1C44160DC();
          sub_1C4418620();
          break;
        case 9:
          sub_1C4450198();
          break;
        case 11:
          sub_1C44040F0();
          sub_1C441D4CC();
          break;
        case 12:
          sub_1C441C654();
          break;
        default:
          break;
      }

      sub_1C4F01298();

      sub_1C4F02B68();
      sub_1C442E740();
      v6 = ~v5;
      v8 = v7 & ~v5;
      sub_1C446C19C();
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE900000000000079;
          v14 = 0x6144664F656D6974;
          switch(*(*(v4 + 48) + v8))
          {
            case 1:
              v14 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
              break;
            case 2:
              sub_1C441D044();
              sub_1C4408B0C();
              break;
            case 3:
              v14 = sub_1C4410D74();
              break;
            case 4:
              v15 = sub_1C43FBFBC();
              v14 = sub_1C4433F44(v15);
              break;
            case 5:
              v14 = sub_1C440215C();
              break;
            case 6:
              v14 = sub_1C440D0A4();
              goto LABEL_29;
            case 7:
              sub_1C440E008();
              break;
            case 8:
              v14 = sub_1C441F4F8();
LABEL_29:
              v13 = 0xED00000000000079;
              break;
            case 9:
              v14 = sub_1C43FFDEC();
              break;
            case 0xA:
              v14 = sub_1C4415F60();
              break;
            case 0xB:
              v14 = sub_1C43FF0EC();
              break;
            case 0xC:
              v14 = sub_1C440584C();
              break;
            default:
              break;
          }

          v16 = 0x6144664F656D6974;
          v17 = 0xE900000000000079;
          switch(v2)
          {
            case 1:
              sub_1C440F310();
              v16 = v18 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
              break;
            case 2:
              sub_1C440DEDC();
              v16 = v21 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
              v17 = 0xEF796144664F656DLL;
              break;
            case 3:
              sub_1C44040F0();
              v17 = v22 - 14;
              sub_1C4409A64();
              break;
            case 4:
              sub_1C440F310();
              v16 = v20 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
              v17 = 0xEA00000000006B65;
              break;
            case 5:
              v17 = 0xE300000000000000;
              v16 = 6909804;
              break;
            case 6:
              sub_1C4404BF8();
              v23 = 0x6E6F697461;
              goto LABEL_43;
            case 7:
              sub_1C44148EC();
              v17 = 0xEF687361486F6547;
              break;
            case 8:
              sub_1C440DEDC();
              v16 = v24 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
              v23 = 0x687361486FLL;
LABEL_43:
              v17 = v23 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 9:
              sub_1C4413E94();
              v17 = 0xEC00000068736148;
              break;
            case 10:
              v17 = 0xE400000000000000;
              v16 = 1768319351;
              break;
            case 11:
              sub_1C44040F0();
              v17 = v19 - 20;
              sub_1C4423A90();
              break;
            case 12:
              sub_1C440EF3C();
              v17 = 0xEB00000000657461;
              break;
            default:
              break;
          }

          if (v14 == v16 && v13 == v17)
          {
            break;
          }

          sub_1C44604E8(v14, v9, v16);
          sub_1C441B610();

          if (v3)
          {
            goto LABEL_53;
          }

          v8 = (v8 + 1) & v6;
          sub_1C446C19C();
          if ((v11 & v12) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:
        *(v4 + 56 + 8 * v10) = v11 | v12;
        *(*(v4 + 48) + v8) = v2;
        sub_1C4410784();
        if (v27)
        {
          goto LABEL_56;
        }

        *(v4 + 16) = v26;
      }

LABEL_53:
      v0 = v28;
    }

    __break(1u);
LABEL_56:
    __break(1u);
  }

  else
  {
  }
}

void sub_1C4D50A90(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    goto LABEL_155;
  }

  sub_1C456902C(&qword_1EC0BDE08, &qword_1C4F32250);
  v2 = sub_1C4406320();
  v3 = v2;
  v68 = *(v1 + 16);
  if (!v68)
  {
    goto LABEL_155;
  }

  v4 = 0;
  v5 = v2 + 56;
  v66 = v1;
  v67 = v1 + 32;
  while (v4 < *(v1 + 16))
  {
    v6 = v67 + 16 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    sub_1C4F02AF8();
    v69 = v4 + 1;
    switch(v8)
    {
      case 1:
        MEMORY[0x1C69417F0](12);
        sub_1C440CC68();
        switch(v7)
        {
          case 1:
          case 4:
            goto LABEL_13;
          case 2:
            goto LABEL_17;
          case 3:
            goto LABEL_18;
          case 6:
            goto LABEL_20;
          case 7:
            goto LABEL_19;
          case 8:
            goto LABEL_21;
          case 9:
            goto LABEL_16;
          case 11:
            goto LABEL_14;
          case 12:
            goto LABEL_15;
          default:
            goto LABEL_22;
        }

        goto LABEL_22;
      case 2:
        v10 = 13;
        goto LABEL_11;
      case 3:
        v10 = 14;
LABEL_11:
        MEMORY[0x1C69417F0](v10);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4851148(__src, v7);
        break;
      case 4:
        switch(v7)
        {
          case 1:
            v9 = 1;
            break;
          case 2:
            v9 = 2;
            break;
          case 3:
            v9 = 3;
            break;
          case 4:
            v9 = 4;
            break;
          case 5:
            v9 = 5;
            break;
          case 6:
            v9 = 6;
            break;
          case 7:
            v9 = 7;
            break;
          case 8:
            v9 = 8;
            break;
          case 9:
            v9 = 9;
            break;
          case 10:
            v9 = 10;
            break;
          default:
            v9 = 0;
            break;
        }

        MEMORY[0x1C69417F0](v9);
        break;
      default:
        MEMORY[0x1C69417F0](11);
        sub_1C440CC68();
        switch(v7)
        {
          case 1:
          case 4:
LABEL_13:
            sub_1C4426BAC();
            break;
          case 2:
LABEL_17:
            sub_1C44160DC();
            sub_1C4408B0C();
            break;
          case 3:
LABEL_18:
            sub_1C44040F0();
            sub_1C44367C4();
            break;
          case 6:
LABEL_20:
            sub_1C4415E04();
            break;
          case 7:
LABEL_19:
            sub_1C440E008();
            break;
          case 8:
LABEL_21:
            sub_1C44160DC();
            sub_1C4418620();
            break;
          case 9:
LABEL_16:
            sub_1C4450198();
            break;
          case 11:
LABEL_14:
            sub_1C44040F0();
            sub_1C441D4CC();
            break;
          case 12:
LABEL_15:
            sub_1C441C654();
            break;
          default:
            break;
        }

LABEL_22:
        sub_1C4F01298();

        break;
    }

    v11 = __src;
    v12 = sub_1C4F02B68();
    v13 = -1 << *(v3 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = *(v5 + 8 * (v14 >> 6));
    v17 = 1 << v14;
    if (((1 << v14) & v16) == 0)
    {
LABEL_149:
      *(v5 + 8 * v15) = v16 | v17;
      v50 = *(v3 + 48) + 16 * v14;
      *v50 = v7;
      *(v50 + 8) = v8;
      sub_1C4410784();
      if (!v52)
      {
        *(v3 + 16) = v51;
        goto LABEL_151;
      }

      goto LABEL_157;
    }

    v18 = ~v13;
    v19 = v8 == 4;
    v20 = v7 == 10 && v8 == 4;
    v21 = v7 == 9 && v8 == 4;
    v64 = v21;
    v65 = v20;
    v22 = v7 == 8 && v8 == 4;
    v23 = v7 == 7 && v8 == 4;
    v62 = v23;
    v63 = v22;
    v24 = v7 == 6 && v8 == 4;
    v25 = v7 == 5 && v8 == 4;
    v60 = v25;
    v61 = v24;
    v26 = v7 == 4 && v8 == 4;
    v27 = v7 == 3 && v8 == 4;
    v58 = v27;
    v59 = v26;
    v28 = v7 == 2 && v8 == 4;
    v29 = v7 == 1 && v8 == 4;
    v56 = v29;
    v57 = v28;
    if (v7)
    {
      v19 = 0;
    }

    v55 = v19;
    while (2)
    {
      v30 = *(v3 + 48) + 16 * v14;
      v31 = *v30;
      switch(*(v30 + 8))
      {
        case 1:
          if (v8 != 1)
          {
            goto LABEL_148;
          }

          sub_1C440CC68();
          v32 = 0x6144664F656D6974;
          switch(v31)
          {
            case 1:
              v32 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
              break;
            case 2:
              sub_1C441D044();
              sub_1C4408B0C();
              break;
            case 3:
              v32 = sub_1C4410D74();
              break;
            case 4:
              v37 = sub_1C43FBFBC();
              v32 = sub_1C4433F44(v37);
              break;
            case 5:
              v32 = sub_1C440215C();
              break;
            case 6:
              v32 = sub_1C440D0A4();
              goto LABEL_115;
            case 7:
              sub_1C440E008();
              break;
            case 8:
              v32 = sub_1C441F4F8();
LABEL_115:
              v11 = v11 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 9:
              v32 = sub_1C43FFDEC();
              break;
            case 10:
              v32 = sub_1C4415F60();
              break;
            case 11:
              v32 = sub_1C43FF0EC();
              break;
            case 12:
              v32 = sub_1C440584C();
              break;
            default:
              break;
          }

          v38 = 0x6144664F656D6974;
          v39 = 0xE900000000000079;
          switch(v7)
          {
            case 1:
              goto LABEL_130;
            case 2:
              goto LABEL_135;
            case 3:
              goto LABEL_136;
            case 4:
              goto LABEL_132;
            case 5:
              goto LABEL_138;
            case 6:
              goto LABEL_139;
            case 7:
              goto LABEL_137;
            case 8:
              goto LABEL_141;
            case 9:
              goto LABEL_134;
            case 10:
              goto LABEL_140;
            case 11:
              goto LABEL_131;
            case 12:
              goto LABEL_133;
            default:
              goto LABEL_143;
          }

          goto LABEL_143;
        case 2:
          if (v8 != 2)
          {
            goto LABEL_148;
          }

          v33 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4839AB4(v33, v7);
          v11 = v34;
          sub_1C45A24C0(v31, 2);
          if ((v11 & 1) == 0)
          {
            goto LABEL_148;
          }

          v53 = v7;
          v54 = 2;
          goto LABEL_154;
        case 3:
          if (v8 != 3)
          {
            goto LABEL_148;
          }

          v35 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4839AB4(v35, v7);
          v11 = v36;
          sub_1C45A24C0(v31, 3);
          if ((v11 & 1) == 0)
          {
            goto LABEL_148;
          }

          v53 = v7;
          v54 = 3;
LABEL_154:
          sub_1C45A24C0(v53, v54);
          goto LABEL_151;
        case 4:
          switch(v31)
          {
            case 1:
              if (v56)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 2:
              if (v57)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 3:
              if (v58)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 4:
              if (v59)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 5:
              if (v60)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 6:
              if (v61)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 7:
              if (v62)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 8:
              if (v63)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 9:
              if (v64)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 10:
              if (v65)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            default:
              if (v55)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
          }

        default:
          if (v8)
          {
            goto LABEL_148;
          }

          sub_1C440CC68();
          v32 = 0x6144664F656D6974;
          switch(v31)
          {
            case 1:
              v32 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
              break;
            case 2:
              sub_1C441D044();
              sub_1C4408B0C();
              break;
            case 3:
              v32 = sub_1C4410D74();
              break;
            case 4:
              v40 = sub_1C43FBFBC();
              v32 = sub_1C4433F44(v40);
              break;
            case 5:
              v32 = sub_1C440215C();
              break;
            case 6:
              v32 = sub_1C440D0A4();
              goto LABEL_128;
            case 7:
              sub_1C440E008();
              break;
            case 8:
              v32 = sub_1C441F4F8();
LABEL_128:
              v11 = v11 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 9:
              v32 = sub_1C43FFDEC();
              break;
            case 10:
              v32 = sub_1C4415F60();
              break;
            case 11:
              v32 = sub_1C43FF0EC();
              break;
            case 12:
              v32 = sub_1C440584C();
              break;
            default:
              break;
          }

          v38 = 0x6144664F656D6974;
          v39 = 0xE900000000000079;
          switch(v7)
          {
            case 1:
LABEL_130:
              sub_1C440F310();
              v38 = v41 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
              break;
            case 2:
LABEL_135:
              sub_1C440DEDC();
              v38 = v44 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
              v39 = 0xEF796144664F656DLL;
              break;
            case 3:
LABEL_136:
              sub_1C44040F0();
              v39 = v45 - 14;
              sub_1C4409A64();
              break;
            case 4:
LABEL_132:
              sub_1C440F310();
              v38 = v43 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
              v39 = 0xEA00000000006B65;
              break;
            case 5:
LABEL_138:
              v39 = 0xE300000000000000;
              v38 = 6909804;
              break;
            case 6:
LABEL_139:
              sub_1C4404BF8();
              v46 = 0x6E6F697461;
              goto LABEL_142;
            case 7:
LABEL_137:
              sub_1C44148EC();
              v39 = 0xEF687361486F6547;
              break;
            case 8:
LABEL_141:
              sub_1C440DEDC();
              v38 = v47 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
              v46 = 0x687361486FLL;
LABEL_142:
              v39 = v46 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 9:
LABEL_134:
              sub_1C4413E94();
              v39 = 0xEC00000068736148;
              break;
            case 10:
LABEL_140:
              v39 = 0xE400000000000000;
              v38 = 1768319351;
              break;
            case 11:
LABEL_131:
              sub_1C44040F0();
              v39 = v42 - 20;
              sub_1C4423A90();
              break;
            case 12:
LABEL_133:
              sub_1C440EF3C();
              v39 = 0xEB00000000657461;
              break;
            default:
              break;
          }

LABEL_143:
          if (v32 != v38 || v11 != v39)
          {
            v49 = sub_1C4F02938();

            if (v49)
            {
              goto LABEL_151;
            }

LABEL_148:
            v14 = (v14 + 1) & v18;
            v15 = v14 >> 6;
            v16 = *(v5 + 8 * (v14 >> 6));
            v17 = 1 << v14;
            if ((v16 & (1 << v14)) == 0)
            {
              goto LABEL_149;
            }

            continue;
          }

LABEL_151:
          v4 = v69;
          v1 = v66;
          if (v69 == v68)
          {
LABEL_155:

            return;
          }

          break;
      }

      break;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
}

void sub_1C4D51344()
{
  sub_1C43FEAE0();
  if (v1 && (sub_1C456902C(&qword_1EC0BDE50, &unk_1C4F4B340), v4 = sub_1C4406320(), *(v0 + 16)))
  {
    v20 = v0;
    while (*(v0 + 16))
    {
      sub_1C4441344();
      sub_1C4F02AF8();
      switch(v2)
      {
        case 5:
          sub_1C441DD90();
          break;
        case 6:
          sub_1C441C654();
          break;
        default:
          break;
      }

      sub_1C4F01298();

      sub_1C4F02B68();
      sub_1C442E740();
      v6 = ~v5;
      v8 = v7 & ~v5;
      sub_1C44693F8();
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE800000000000000;
          v14 = 0x4449656C646E7562;
          switch(*(*(v4 + 48) + v8))
          {
            case 1:
              v14 = 0xD000000000000011;
              v13 = 0x80000001C4F86740;
              break;
            case 2:
              v14 = 0x456E6F6973736573;
              v13 = 0xEC000000746E6576;
              break;
            case 3:
              v14 = 0xD000000000000016;
              v13 = 0x80000001C4F85600;
              break;
            case 4:
              v14 = 0xD000000000000016;
              v13 = 0x80000001C4F86760;
              break;
            case 5:
              sub_1C441DD90();
              break;
            case 6:
              v13 = 26433;
              sub_1C441C654();
              break;
            default:
              break;
          }

          v15 = 0xE800000000000000;
          v16 = 0x4449656C646E7562;
          switch(v2)
          {
            case 1:
              v16 = 0xD000000000000011;
              v15 = 0x80000001C4F86740;
              break;
            case 2:
              v16 = 0x456E6F6973736573;
              v15 = 0xEC000000746E6576;
              break;
            case 3:
              v16 = 0xD000000000000016;
              v15 = 0x80000001C4F85600;
              break;
            case 4:
              v16 = 0xD000000000000016;
              v15 = 0x80000001C4F86760;
              break;
            case 5:
              v16 = 0x7463617265746E69;
              v15 = 0xEF657079546E6F69;
              break;
            case 6:
              v16 = 0x646576726573626FLL;
              v15 = 0xEB00000000656741;
              break;
            default:
              break;
          }

          if (v14 == v16 && v13 == v15)
          {
            break;
          }

          sub_1C44604E8(v14, v9, v16);
          sub_1C441B610();

          if (v3)
          {
            goto LABEL_32;
          }

          v8 = (v8 + 1) & v6;
          sub_1C44693F8();
          if ((v11 & v12) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v4 + 56 + 8 * v10) = v11 | v12;
        *(*(v4 + 48) + v8) = v2;
        sub_1C4410784();
        if (v19)
        {
          goto LABEL_35;
        }

        *(v4 + 16) = v18;
      }

LABEL_32:
      v0 = v20;
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
  }
}

void sub_1C4D51718()
{
  sub_1C43FEAE0();
  if (v1 && (sub_1C456902C(&qword_1EC0C68E0, &qword_1C4F6FA98), v4 = sub_1C4406320(), *(v0 + 16)))
  {
    v20 = v0;
    while (*(v0 + 16))
    {
      sub_1C4441344();
      sub_1C4F02AF8();
      switch(v2)
      {
        case 1:
          sub_1C447FB34();
          break;
        case 4:
          sub_1C4441670();
          break;
        default:
          break;
      }

      sub_1C4F01298();

      sub_1C4F02B68();
      sub_1C442E740();
      v6 = ~v5;
      v8 = v7 & ~v5;
      sub_1C443488C();
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE800000000000000;
          v14 = 0x6572617774666F73;
          switch(*(*(v4 + 48) + v8))
          {
            case 1:
              sub_1C447FB34();
              break;
            case 2:
              v13 = 0xE500000000000000;
              v14 = 0x6563616C70;
              break;
            case 3:
              v13 = 0xE600000000000000;
              v14 = 0x6E6F73726570;
              break;
            case 4:
              sub_1C4441670();
              break;
            case 5:
              v14 = 0xD000000000000010;
              v13 = 0x80000001C4F866A0;
              break;
            case 6:
              v14 = 0xD000000000000016;
              v13 = 0x80000001C4F866C0;
              break;
            default:
              break;
          }

          v15 = 0xE800000000000000;
          v16 = 0x6572617774666F73;
          switch(v2)
          {
            case 1:
              v16 = 0x746F6F7465756C62;
              v15 = 0xEF65636976654468;
              break;
            case 2:
              v15 = 0xE500000000000000;
              v16 = 0x6563616C70;
              break;
            case 3:
              v15 = 0xE600000000000000;
              v16 = 0x6E6F73726570;
              break;
            case 4:
              v16 = 0x416574756D6D6F63;
              v15 = 0xEF79746976697463;
              break;
            case 5:
              v16 = 0xD000000000000010;
              v15 = 0x80000001C4F866A0;
              break;
            case 6:
              v16 = 0xD000000000000016;
              v15 = 0x80000001C4F866C0;
              break;
            default:
              break;
          }

          if (v14 == v16 && v13 == v15)
          {
            break;
          }

          sub_1C44604E8(v14, v9, v16);
          sub_1C441B610();

          if (v3)
          {
            goto LABEL_32;
          }

          v8 = (v8 + 1) & v6;
          sub_1C443488C();
          if ((v11 & v12) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v4 + 56 + 8 * v10) = v11 | v12;
        *(*(v4 + 48) + v8) = v2;
        sub_1C4410784();
        if (v19)
        {
          goto LABEL_35;
        }

        *(v4 + 16) = v18;
      }

LABEL_32:
      v0 = v20;
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
  }
}

void sub_1C4D51ABC()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  sub_1C4EFF0C8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4412A1C(v6, v7, v8, v9, v10, v11, v12, v13, v32);
  if (v0 && (sub_1C456902C(&qword_1EC0BDDE8, "(M\n"), sub_1C4406320(), sub_1C4435698(), v14))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v16)
      {
        break;
      }

      v17 = sub_1C44082FC(v15);
      v1(v17);
      v18 = *(v2 + 40);
      sub_1C441F15C();
      v20 = sub_1C4D52868(&qword_1EDDFE820, v19, MEMORY[0x1E69A9820]);
      sub_1C442C170(v20);
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10();
        if (v22)
        {
          break;
        }

        v23 = sub_1C4401470();
        v1(v23);
        sub_1C441F15C();
        v25 = sub_1C4D52868(&qword_1EDDFCC98, v24, MEMORY[0x1E69A9830]);
        sub_1C440FF54(v25);
        v26 = sub_1C4417BC8();
        (v2)(v26);
        if (v18)
        {
          v31 = sub_1C445EB30();
          (v2)(v31);
          v2 = v3;
          goto LABEL_12;
        }

        sub_1C440C144();
      }

      v27 = sub_1C442DA34(v21);
      v28(v27);
      sub_1C4418AE4();
      if (v30)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v29;
LABEL_12:
      sub_1C4432F00();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

void sub_1C4D51C80()
{
  sub_1C43FEAE0();
  if (v1 && (sub_1C456902C(&qword_1EC0C68D8, &qword_1C4F6FA90), v2 = sub_1C4406320(), v3 = v2, (v4 = *(v0 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v0 + 16))
    {
      v7 = *(v0 + 32 + 8 * v5++);
      sub_1C4F02AF8();
      MEMORY[0x1C69417F0](v7);
      v8 = sub_1C4F02B68();
      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v6 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        if (*(*(v3 + 48) + 8 * v10) == v7)
        {
          goto LABEL_11;
        }

        v8 = v10 + 1;
      }

      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      sub_1C4410784();
      if (v15)
      {
        goto LABEL_14;
      }

      *(v3 + 16) = v14;
LABEL_11:
      if (v5 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void sub_1C4D51DB8()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  sub_1C4EFF8A8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4412A1C(v6, v7, v8, v9, v10, v11, v12, v13, v32);
  if (v0 && (sub_1C456902C(&qword_1EC0BDDF0, &qword_1C4F32238), sub_1C4406320(), sub_1C4435698(), v14))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v16)
      {
        break;
      }

      v17 = sub_1C44082FC(v15);
      v1(v17);
      v18 = *(v2 + 40);
      sub_1C441BEEC();
      v20 = sub_1C4D52868(&qword_1EDDFE808, v19, MEMORY[0x1E69A99F8]);
      sub_1C442C170(v20);
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10();
        if (v22)
        {
          break;
        }

        v23 = sub_1C4401470();
        v1(v23);
        sub_1C441BEEC();
        v25 = sub_1C4D52868(&unk_1EDDFCC80, v24, MEMORY[0x1E69A9A08]);
        sub_1C440FF54(v25);
        v26 = sub_1C4417BC8();
        (v2)(v26);
        if (v18)
        {
          v31 = sub_1C445EB30();
          (v2)(v31);
          v2 = v3;
          goto LABEL_12;
        }

        sub_1C440C144();
      }

      v27 = sub_1C442DA34(v21);
      v28(v27);
      sub_1C4418AE4();
      if (v30)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v29;
LABEL_12:
      sub_1C4432F00();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

void sub_1C4D51F7C()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  sub_1C4EF9F68();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4412A1C(v6, v7, v8, v9, v10, v11, v12, v13, v32);
  if (v0 && (sub_1C456902C(&qword_1EC0BDFB0, &qword_1C4F323A8), sub_1C4406320(), sub_1C4435698(), v14))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v16)
      {
        break;
      }

      v17 = sub_1C44082FC(v15);
      v1(v17);
      v18 = *(v2 + 40);
      sub_1C441E93C();
      v20 = sub_1C4D52868(&unk_1EDDFA3E8, v19, MEMORY[0x1E6969AD8]);
      sub_1C442C170(v20);
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10();
        if (v22)
        {
          break;
        }

        v23 = sub_1C4401470();
        v1(v23);
        sub_1C441E93C();
        v25 = sub_1C4D52868(&qword_1EDDFA3E0, v24, MEMORY[0x1E6969AE0]);
        sub_1C440FF54(v25);
        v26 = sub_1C4417BC8();
        (v2)(v26);
        if (v18)
        {
          v31 = sub_1C445EB30();
          (v2)(v31);
          v2 = v3;
          goto LABEL_12;
        }

        sub_1C440C144();
      }

      v27 = sub_1C442DA34(v21);
      v28(v27);
      sub_1C4418AE4();
      if (v30)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v29;
LABEL_12:
      sub_1C4432F00();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

void sub_1C4D52140(uint64_t a1)
{
  if (sub_1C4428DA0(a1))
  {
    sub_1C456902C(&qword_1EC0BDE60, &qword_1C4F322A8);
    v2 = sub_1C4406320();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v19 = sub_1C4428DA0(a1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_1C4431590(v3, v18 == 0, a1);
      v5 = v18 ? MEMORY[0x1C6940F90](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_1C4F01ED8();
      sub_1C442E740();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = *(v4 + 8 * v12);
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        sub_1C4447C04();
        v15 = *(*(v2 + 48) + 8 * v11);
        v16 = sub_1C4F01EE8();

        if (v16)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      *(v4 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v6;
      sub_1C4410784();
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1C4D522D0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1C456902C(&qword_1EC0C68E8, &unk_1C4F6FAA0), v2 = sub_1C4406320(), (v20 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v18 = v1;
    v19 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v19 + v3);
      sub_1C4F02AF8();
      if (v4)
      {
        v5 = 0x617247746E657665;
      }

      else
      {
        v5 = 0x7247656C62617473;
      }

      if (v4)
      {
        v6 = 0xEA00000000006870;
      }

      else
      {
        v6 = 0xEB00000000687061;
      }

      sub_1C4F01298();

      v7 = sub_1C4F02B68() & ~(-1 << *(v2 + 32));
      sub_1C441B19C();
      if ((v10 & v9) != 0)
      {
        v12 = ~v11;
        while (1)
        {
          v13 = *(*(v2 + 48) + v7) ? 0x617247746E657665 : 0x7247656C62617473;
          v14 = *(*(v2 + 48) + v7) ? 0xEA00000000006870 : 0xEB00000000687061;
          if (v13 == v5 && v14 == v6)
          {
            break;
          }

          sub_1C4F02938();
          sub_1C441B610();

          if (v4)
          {
            goto LABEL_28;
          }

          v7 = (v7 + 1) & v12;
          sub_1C441B19C();
          if ((v9 & v10) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        *(v2 + 56 + 8 * v8) = v9 | v10;
        *(*(v2 + 48) + v7) = v4;
        sub_1C4410784();
        if (v17)
        {
          goto LABEL_31;
        }

        *(v2 + 16) = v16;
      }

LABEL_28:
      ++v3;
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_1C4D524E0()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  sub_1C4EFDAB8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4412A1C(v6, v7, v8, v9, v10, v11, v12, v13, v32);
  if (v0 && (sub_1C456902C(&qword_1EC0BDFB8, &qword_1C4F323B0), sub_1C4406320(), sub_1C4435698(), v14))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v16)
      {
        break;
      }

      v17 = sub_1C44082FC(v15);
      v1(v17);
      v18 = *(v2 + 40);
      sub_1C441518C();
      v20 = sub_1C4D52868(&qword_1EDDEFFD0, v19, MEMORY[0x1E69A9488]);
      sub_1C442C170(v20);
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10();
        if (v22)
        {
          break;
        }

        v23 = sub_1C4401470();
        v1(v23);
        sub_1C441518C();
        v25 = sub_1C4D52868(&unk_1EDDEFFC0, v24, MEMORY[0x1E69A9490]);
        sub_1C440FF54(v25);
        v26 = sub_1C4417BC8();
        (v2)(v26);
        if (v18)
        {
          v31 = sub_1C445EB30();
          (v2)(v31);
          v2 = v3;
          goto LABEL_12;
        }

        sub_1C440C144();
      }

      v27 = sub_1C442DA34(v21);
      v28(v27);
      sub_1C4418AE4();
      if (v30)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v29;
LABEL_12:
      sub_1C4432F00();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

void sub_1C4D526A4()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  sub_1C4EFEFB8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4412A1C(v6, v7, v8, v9, v10, v11, v12, v13, v32);
  if (v0 && (sub_1C456902C(&qword_1EC0BDE68, &qword_1C4F322B0), sub_1C4406320(), sub_1C4435698(), v14))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v16)
      {
        break;
      }

      v17 = sub_1C44082FC(v15);
      v1(v17);
      v18 = *(v2 + 40);
      sub_1C4405518();
      v20 = sub_1C4D52868(&qword_1EDDEFF90, v19, MEMORY[0x1E69A97D8]);
      sub_1C442C170(v20);
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10();
        if (v22)
        {
          break;
        }

        v23 = sub_1C4401470();
        v1(v23);
        sub_1C4405518();
        v25 = sub_1C4D52868(&qword_1EDDEFF88, v24, MEMORY[0x1E69A97E0]);
        sub_1C440FF54(v25);
        v26 = sub_1C4417BC8();
        (v2)(v26);
        if (v18)
        {
          v31 = sub_1C445EB30();
          (v2)(v31);
          v2 = v3;
          goto LABEL_12;
        }

        sub_1C440C144();
      }

      v27 = sub_1C442DA34(v21);
      v28(v27);
      sub_1C4418AE4();
      if (v30)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v29;
LABEL_12:
      sub_1C4432F00();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C4D52868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WalletOrderKeyValueStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WalletOrderKeyValueStore.init(config:)(a1);
  return v2;
}

uint64_t WalletOrderKeyValueStore.fetchTransactionDetails(for:)()
{
  result = sub_1C448E2AC();
  if (!result)
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void *WalletOrderKeyValueStore.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v7);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v8 = KeyValueStore.init(config:domain:)(v7, 0xD000000000000016, 0x80000001C4FC7800);
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v8;
    sub_1C4467948(a1);
    *(v3 + 16) = v9;
  }

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletOrderKeyValueStore.promoteStore()()
{
  v0._object = 0x80000001C4FC7800;
  v0._countAndFlagsBits = 0xD000000000000016;
  KeyValueStore.copyAllKeyValues(to:clearCurrentDomain:clearNewDomain:)(v0, 1, 1);
}

uint64_t WalletOrderKeyValueStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1C4D52BA4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_1C4EFEEF8();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v24 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v24 - v12;
  v13 = *(a1 + 16);
  v14 = (a1 + 32);
  v30 = (v15 + 8);
  v25 = v8;
  v26 = v5;
  if (v13)
  {
    do
    {
      v29 = v13;
      v16 = v14[4];
      sub_1C4409678(v14, v14[3]);
      v28 = v16;
      sub_1C4EFF7C8();
      sub_1C4EFEBF8();
      sub_1C44FDE5C(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
      sub_1C4F01578();
      sub_1C4F01578();
      if (v34 == v32 && v35 == v33)
      {
        v18 = 1;
      }

      else
      {
        v18 = sub_1C4F02938();
      }

      v19 = *v30;
      (*v30)(v36, v3);
      v19(v31, v3);
      if (v18)
      {
        sub_1C4409678(v14, v14[3]);
        sub_1C4EFF7D8();
        sub_1C4EFCA18();
      }

      v20 = v25;
      sub_1C4EFF7C8();
      v21 = v26;
      sub_1C4EFE558();
      sub_1C4F01578();
      sub_1C4F01578();
      if (v34 == v32 && v35 == v33)
      {

        v19(v21, v3);
        v19(v20, v3);
      }

      else
      {
        v23 = sub_1C4F02938();

        v19(v21, v3);
        v19(v20, v3);
        if ((v23 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_1C4409678(v14, v14[3]);
      sub_1C4EFF7D8();
      sub_1C4EFC9F8();
LABEL_18:
      v14 += 5;
      v13 = v29 - 1;
    }

    while (v29 != 1);
  }
}

void sub_1C4D52F58(uint64_t a1, uint64_t a2)
{
  v17[7] = a2;
  v3 = sub_1C4EFEEF8();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = *(a1 + 16);
  v10 = (a1 + 32);
  for (i = (v11 + 8); v9; --v9)
  {
    sub_1C4409678(v10, v10[3]);
    sub_1C4EFF7C8();
    sub_1C4EFE558();
    sub_1C44FDE5C(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v17[4] == v17[2] && v17[5] == v17[3])
    {

      v16 = *i;
      (*i)(v5, v3);
      v16(v8, v3);
    }

    else
    {
      v14 = sub_1C4F02938();

      v15 = *i;
      (*i)(v5, v3);
      v15(v8, v3);
      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1C4409678(v10, v10[3]);
    sub_1C4EFF7D8();
    sub_1C4EFC9F8();
LABEL_10:
    v10 += 5;
  }
}

void *sub_1C4D531BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 16);
  result = (a1 + 32);
  v10 = v8 + 1;
  do
  {
    if (!--v10)
    {
      break;
    }

    v11 = result + 5;
    sub_1C4D53D48(result, a2, a3, a4);
    result = v11;
  }

  while (!v4);
  return result;
}

void *sub_1C4D53224(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = (a1 + 32);
  v6 = v4 + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 5;
    sub_1C4D54920(result, a2);
    result = v7;
  }

  while (!v2);
  return result;
}

uint64_t WalletOrderMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for WalletOrderMatcher(0);
  *(a4 + *(v8 + 28)) = 1056964608;
  sub_1C4EFCEF8();
  sub_1C440053C();
  sub_1C4485774(a1, a4);
  sub_1C43FD90C();
  result = sub_1C4485774(a2, a4 + v9);
  *(a4 + *(v8 + 24)) = v7;
  return result;
}

uint64_t WalletOrderMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WalletOrderMatcher(0);
  sub_1C43FD90C();
  return sub_1C44719E4(v1 + v3, a1);
}

uint64_t WalletOrderMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WalletOrderMatcher(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WalletOrderMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalletOrderMatcher(0) + 32);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

BOOL sub_1C4D53414()
{
  sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  sub_1C4EFC828();
  v0 = sub_1C4F013E8();

  return (v0 & 1) == 0;
}

uint64_t sub_1C4D53494(void *a1, uint64_t *a2)
{
  v27 = a2;
  v25 = sub_1C4EFC808();
  v21 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v22 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C456902C(&qword_1EC0B8A38, &qword_1C4F32310);
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v24 = &v19 - v4;
  v20 = sub_1C4EFCAA8();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  sub_1C4EFCA98();
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7D8();
  sub_1C4EFCA78();
  v11 = v20;
  (*(v5 + 16))(v7, v10, v20);
  sub_1C456902C(&qword_1EC0C6948, "8d\a");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0D130;
  sub_1C442E860(a1, v28);
  sub_1C4509A40();
  sub_1C4420C3C(v28, &qword_1EC0C0F38, &qword_1C4F41A90);
  v28[0] = v12;
  sub_1C44FDE5C(&qword_1EC0C2318, MEMORY[0x1E699C748], MEMORY[0x1E699C758]);
  sub_1C456902C(&qword_1EC0C6920, ">d\a");
  sub_1C44FDEA4();
  sub_1C4F020C8();
  v13 = MEMORY[0x1E699C7B8];
  sub_1C44FDE5C(&qword_1EC0C6950, MEMORY[0x1E699C7B8], MEMORY[0x1E699C7D0]);
  sub_1C44FDE5C(&qword_1EC0C6958, v13, MEMORY[0x1E699C7C0]);
  sub_1C44FDE5C(&qword_1EC0C6960, v13, MEMORY[0x1E699C7C8]);
  v14 = v24;
  sub_1C4EFC818();
  v15 = v27;
  sub_1C45896CC();
  v16 = *(*v15 + 16);
  sub_1C458A24C();
  (*(v5 + 8))(v10, v11);
  v17 = *v15;
  *(v17 + 16) = v16 + 1;
  return (*(v23 + 32))(v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16, v14, v26);
}

uint64_t sub_1C4D538F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v43 = a3;
  v4 = sub_1C4EFC808();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0B8A20, &unk_1C4F0DE40);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v31 - v7;
  v8 = sub_1C456902C(&qword_1EC0C6900, ">d\a");
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_1C4EFC898();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  sub_1C4500964();
  v19 = v18;
  sub_1C4EFC888();
  v41 = 0;
  v42 = 0xE000000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1C4D531BC(v19, v17, &v41, &v39);
  v34 = v3;
  v20 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v20 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    goto LABEL_7;
  }

  v21 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v21 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
LABEL_7:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFC8E8();
    v22 = sub_1C4EFC8F8();
    sub_1C440BAA8(v10, 0, 1, v22);
    sub_1C4EFC848();
  }

  v23 = *(v12 + 16);
  v32 = v11;
  v23(v14, v17, v11);
  sub_1C4505A9C(v38, v19);

  sub_1C4509A40();
  sub_1C4420C3C(v38, &qword_1EC0C0F38, &qword_1C4F41A90);
  v24 = MEMORY[0x1E699C770];
  sub_1C44FDE5C(&qword_1EC0C6908, MEMORY[0x1E699C770], MEMORY[0x1E699C788]);
  sub_1C44FDE5C(&qword_1EC0C6910, v24, MEMORY[0x1E699C778]);
  sub_1C44FDE5C(&qword_1EC0C6918, v24, MEMORY[0x1E699C780]);
  v31 = v17;
  v25 = v35;
  v26 = v32;
  sub_1C4EFC818();
  v27 = v43;
  sub_1C4589730();
  v28 = *(*v27 + 16);
  sub_1C458A2A8();
  v29 = *v27;
  *(v29 + 16) = v28 + 1;
  (*(v36 + 32))(v29 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28, v25, v37);

  return (*(v12 + 8))(v31, v26);
}

uint64_t sub_1C4D53D48(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v69 = a3;
  v70 = a4;
  v72 = a2;
  v60 = sub_1C4EF9F88();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v55 - v7;
  v61 = sub_1C4EF9CD8();
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v55 - v10;
  v65 = sub_1C4EF9648();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4F01188();
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EFEEF8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7F8();
  sub_1C4EFE3E8();
  sub_1C44FDE5C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
  v23 = sub_1C4F010B8();
  v24 = *(v15 + 8);
  v24(v19, v14);
  if (v23)
  {
    v24(v22, v14);
    sub_1C4409678(a1, a1[3]);
    sub_1C4EFF7D8();
    return sub_1C4EFC878();
  }

  else
  {
    sub_1C4EFE9F8();
    v26 = sub_1C4F010B8();
    v24(v19, v14);
    if (v26)
    {
      v24(v22, v14);
      sub_1C4409678(a1, a1[3]);
      sub_1C4EFF7D8();
      return sub_1C4EFC858();
    }

    else
    {
      sub_1C4EFEC78();
      v27 = sub_1C4F010B8();
      v24(v19, v14);
      if (v27)
      {
        v24(v22, v14);
        sub_1C4409678(a1, a1[3]);
        sub_1C4EFF7C8();
        v28 = v71;
        sub_1C4EFEE08();
        v29 = sub_1C44DBB50(v19, v28);
        v24(v28, v14);
        v24(v19, v14);
        if (v29)
        {
          sub_1C4409678(a1, a1[3]);
          v30 = sub_1C4EFF7D8();
          v31 = v69;
          *v69 = v30;
          v31[1] = v32;
        }

        sub_1C4409678(a1, a1[3]);
        sub_1C4EFF7C8();
        sub_1C4EFEC18();
        v33 = sub_1C44DBB50(v19, v28);
        v24(v28, v14);
        result = (v24)(v19, v14);
        if (v33)
        {
          sub_1C4409678(a1, a1[3]);
          v34 = sub_1C4EFF7D8();
          v35 = v70;
          *v70 = v34;
          v35[1] = v36;
        }
      }

      else
      {
        sub_1C4EFECF8();
        v37 = sub_1C4F010B8();
        v24(v19, v14);
        if (v37)
        {
          v24(v22, v14);
          sub_1C4409678(a1, a1[3]);
          sub_1C4EFF7C8();
          v38 = v71;
          sub_1C4EFE698();
          v39 = sub_1C44DBB50(v19, v38);
          v24(v38, v14);
          result = (v24)(v19, v14);
          if (v39)
          {
            sub_1C4409678(a1, a1[3]);
            sub_1C4EFF7D8();
            v40 = v66;
            sub_1C4F01178();
            v41 = sub_1C4F01148();
            v43 = v42;

            result = (*(v67 + 8))(v40, v68);
            if (v43 >> 60 != 15)
            {
              sub_1C4EF9348();
              swift_allocObject();
              sub_1C4EF9338();
              sub_1C44FDE5C(&qword_1EC0BAA18, MEMORY[0x1E6968278], MEMORY[0x1E6968298]);
              v44 = v64;
              v45 = v65;
              v46 = v73;
              sub_1C4EF9328();
              if (v46)
              {

                sub_1C441DFEC(v41, v43);

                sub_1C440BAA8(v44, 1, 1, v45);
                return sub_1C4420C3C(v44, &unk_1EC0BAD50, &unk_1C4F168E0);
              }

              else
              {

                sub_1C440BAA8(v44, 0, 1, v45);
                v49 = v62;
                v48 = v63;
                (*(v63 + 32))(v62, v44, v45);
                v50 = v57;
                sub_1C4EF9F58();
                v51 = v59;
                sub_1C4EF9F08();
                (*(v58 + 8))(v50, v60);
                v52 = v61;
                if (sub_1C44157D4(v51, 1, v61) == 1)
                {
                  (*(v48 + 8))(v49, v45);
                  sub_1C441DFEC(v41, v43);
                  return sub_1C4420C3C(v51, &unk_1EC0B84E0, qword_1C4F0D2D0);
                }

                else
                {
                  v54 = v55;
                  v53 = v56;
                  (*(v56 + 32))(v55, v51, v52);
                  sub_1C4EF9AD8();
                  sub_1C4EFC868();
                  sub_1C441DFEC(v41, v43);
                  (*(v53 + 8))(v54, v52);
                  return (*(v63 + 8))(v62, v45);
                }
              }
            }
          }
        }

        else
        {
          sub_1C4EFE558();
          v47 = sub_1C4F010B8();
          v24(v19, v14);
          result = (v24)(v22, v14);
          if (v47)
          {
            sub_1C4409678(a1, a1[3]);
            sub_1C4EFF7D8();
            return sub_1C4EFC838();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4D547A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1C4EFC998();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4500964();
  v9 = v8;
  sub_1C4EFC988();
  sub_1C4D53224(v9, v7);

  sub_1C4589794();
  v10 = *(*a3 + 16);
  sub_1C458A304();
  v11 = *a3;
  *(v11 + 16) = v10 + 1;
  (*(v5 + 16))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, v4);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C4D54920(void *a1, uint64_t a2)
{
  v108 = a2;
  v3 = sub_1C456902C(&qword_1EC0C68F8, ">d\a");
  MEMORY[0x1EEE9AC00](v3 - 8);
  v104 = &v88 - v4;
  v105 = sub_1C4EFC948();
  v101 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v100 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v88 - v7;
  v97 = sub_1C4EF9F88();
  v94 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v96 = &v88 - v10;
  v98 = sub_1C4EF9CD8();
  v95 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v90 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v88 - v13;
  v103 = sub_1C4EF9648();
  v92 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v91 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4F01188();
  v106 = *(v15 - 8);
  v107 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C4EFEEF8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v88 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v112 = sub_1C4409678(a1, v26);
  v113 = v25;
  v114 = v26;
  v27 = v21;
  sub_1C4EFF7F8();
  sub_1C4EFECF8();
  v28 = sub_1C44DBB50(v24, v21);
  v29 = *(v19 + 8);
  v29(v27, v18);
  v29(v24, v18);
  v111 = v19 + 8;
  if (v28)
  {
    sub_1C4409678(a1, a1[3]);
    sub_1C4EFF7C8();
    sub_1C4EFEEE8();
    v30 = sub_1C44DBB50(v24, v27);
    v29(v27, v18);
    v89 = v18;
    v29(v24, v18);
    if (v30)
    {
      v31 = a1[3];
      v88 = a1;
      sub_1C4409678(a1, v31);
      sub_1C4EFF7D8();
      sub_1C4F01178();
      v32 = sub_1C4F01148();
      v34 = v33;

      (*(v106 + 8))(v17, v107);
      if (v34 >> 60 == 15)
      {
        a1 = v88;
      }

      else
      {
        sub_1C4EF9348();
        swift_allocObject();
        sub_1C4EF9338();
        sub_1C44FDE5C(&qword_1EC0BAA18, MEMORY[0x1E6968278], MEMORY[0x1E6968298]);
        v35 = v102;
        v36 = v103;
        v37 = v110;
        sub_1C4EF9328();
        if (v37)
        {

          sub_1C441DFEC(v32, v34);

          sub_1C440BAA8(v35, 1, 1, v36);
          sub_1C4420C3C(v35, &unk_1EC0BAD50, &unk_1C4F168E0);
        }

        else
        {
          v106 = v32;
          v107 = v34;
          v110 = 0;

          sub_1C440BAA8(v35, 0, 1, v36);
          v38 = v92;
          v39 = v91;
          (*(v92 + 32))(v91, v35, v36);
          v40 = v93;
          sub_1C4EF9F58();
          v41 = v36;
          v42 = v96;
          sub_1C4EF9F08();
          v43 = v40;
          v44 = v42;
          (*(v94 + 8))(v43, v97);
          v45 = v42;
          v46 = v98;
          if (sub_1C44157D4(v45, 1, v98) == 1)
          {
            (*(v38 + 8))(v39, v41);
            sub_1C441DFEC(v106, v107);
            sub_1C4420C3C(v44, &unk_1EC0B84E0, qword_1C4F0D2D0);
          }

          else
          {
            v47 = v90;
            (*(v95 + 32))(v90, v44, v46);
            sub_1C4EF9AD8();
            sub_1C4EFC968();
            sub_1C441DFEC(v106, v107);
            (*(v95 + 8))(v47, v46);
            (*(v38 + 8))(v39, v103);
          }
        }

        a1 = v88;
      }
    }

    v18 = v89;
  }

  sub_1C4EFF7F8();
  sub_1C4EFEE58();
  v48 = sub_1C44DBB50(v24, v27);
  v29(v27, v18);
  v29(v24, v18);
  v109 = v29;
  if ((v48 & 1) == 0)
  {
    goto LABEL_80;
  }

  sub_1C4409678(a1, a1[3]);
  result = sub_1C4EFF7D8();
  v51 = v50;
  v52 = HIBYTE(v50) & 0xF;
  v53 = result & 0xFFFFFFFFFFFFLL;
  if ((v51 & 0x2000000000000000) != 0)
  {
    v54 = v52;
  }

  else
  {
    v54 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v54)
  {

    goto LABEL_80;
  }

  if ((v51 & 0x1000000000000000) == 0)
  {
    if ((v51 & 0x2000000000000000) != 0)
    {
      v115[0] = result;
      v115[1] = v51 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v52)
        {
          if (--v52)
          {
            v68 = 0;
            v69 = v115 + 1;
            while (1)
            {
              v70 = *v69 - 48;
              if (v70 > 9)
              {
                break;
              }

              v71 = 10 * v68;
              if ((v68 * 10) >> 64 != (10 * v68) >> 63)
              {
                break;
              }

              v68 = v71 + v70;
              if (__OFADD__(v71, v70))
              {
                break;
              }

              ++v69;
              if (!--v52)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_90:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v52)
        {
          v75 = 0;
          v76 = v115;
          while (1)
          {
            v77 = *v76 - 48;
            if (v77 > 9)
            {
              break;
            }

            v78 = 10 * v75;
            if ((v75 * 10) >> 64 != (10 * v75) >> 63)
            {
              break;
            }

            v75 = v78 + v77;
            if (__OFADD__(v78, v77))
            {
              break;
            }

            ++v76;
            if (!--v52)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }

      if (v52)
      {
        if (--v52)
        {
          v60 = 0;
          v61 = v115 + 1;
          while (1)
          {
            v62 = *v61 - 48;
            if (v62 > 9)
            {
              break;
            }

            v63 = 10 * v60;
            if ((v60 * 10) >> 64 != (10 * v60) >> 63)
            {
              break;
            }

            v60 = v63 - v62;
            if (__OFSUB__(v63, v62))
            {
              break;
            }

            ++v61;
            if (!--v52)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v51 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C4F022F8();
      }

      v55 = *result;
      if (v55 == 43)
      {
        if (v53 >= 1)
        {
          v52 = v53 - 1;
          if (v53 != 1)
          {
            v64 = 0;
            if (result)
            {
              v65 = (result + 1);
              while (1)
              {
                v66 = *v65 - 48;
                if (v66 > 9)
                {
                  goto LABEL_75;
                }

                v67 = 10 * v64;
                if ((v64 * 10) >> 64 != (10 * v64) >> 63)
                {
                  goto LABEL_75;
                }

                v64 = v67 + v66;
                if (__OFADD__(v67, v66))
                {
                  goto LABEL_75;
                }

                ++v65;
                if (!--v52)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_67;
          }

          goto LABEL_75;
        }

        goto LABEL_89;
      }

      if (v55 != 45)
      {
        if (v53)
        {
          v72 = 0;
          if (result)
          {
            while (1)
            {
              v73 = *result - 48;
              if (v73 > 9)
              {
                goto LABEL_75;
              }

              v74 = 10 * v72;
              if ((v72 * 10) >> 64 != (10 * v72) >> 63)
              {
                goto LABEL_75;
              }

              v72 = v74 + v73;
              if (__OFADD__(v74, v73))
              {
                goto LABEL_75;
              }

              ++result;
              if (!--v53)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

LABEL_75:
        LOBYTE(v52) = 1;
LABEL_76:
        v116 = v52;
        v79 = v52;

        if ((v79 & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_80;
      }

      if (v53 >= 1)
      {
        v52 = v53 - 1;
        if (v53 != 1)
        {
          v56 = 0;
          if (result)
          {
            v57 = (result + 1);
            while (1)
            {
              v58 = *v57 - 48;
              if (v58 > 9)
              {
                goto LABEL_75;
              }

              v59 = 10 * v56;
              if ((v56 * 10) >> 64 != (10 * v56) >> 63)
              {
                goto LABEL_75;
              }

              v56 = v59 - v58;
              if (__OFSUB__(v59, v58))
              {
                goto LABEL_75;
              }

              ++v57;
              if (!--v52)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_67:
          LOBYTE(v52) = 0;
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v116 = 0;
  sub_1C4AA1330();
  v87 = v86;

  if ((v87 & 1) == 0)
  {
LABEL_77:
    v80 = v104;
    sub_1C4EFC938();
    v81 = v105;
    if (sub_1C44157D4(v80, 1, v105) == 1)
    {
      sub_1C4420C3C(v80, &qword_1EC0C68F8, ">d\a");
    }

    else
    {
      v82 = v101;
      v83 = v99;
      (*(v101 + 32))(v99, v80, v81);
      (*(v82 + 16))(v100, v83, v81);
      sub_1C4EFC978();
      (*(v82 + 8))(v83, v81);
    }
  }

LABEL_80:
  sub_1C4EFF7F8();
  sub_1C4EFE598();
  v84 = sub_1C44DBB50(v24, v27);
  v85 = v109;
  v109(v27, v18);
  result = v85(v24, v18);
  if (v84)
  {
    sub_1C4409678(a1, a1[3]);
    sub_1C4EFF7D8();
    return sub_1C4EFC958();
  }

  return result;
}

uint64_t sub_1C4D55618(uint64_t a1, void *a2)
{
  sub_1C43FBE94();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4409678(v2, v2[3]);
  sub_1C43FD258();
  sub_1C4EFF7B8();
  sub_1C4409678(a2, a2[3]);
  sub_1C43FD258();
  sub_1C4EFF7B8();
  sub_1C43FE990();
  v8 = sub_1C4EFF878();
  v9 = *(v5 + 8);
  v10 = sub_1C440BB4C();
  v9(v10);
  v11 = sub_1C44158DC();
  v9(v11);
  return v8 & 1;
}

uint64_t sub_1C4D5575C(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v22[0] = v22 - v3;
  v4 = type metadata accessor for GraphTriple(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  while (1)
  {
    if (v15 == v14)
    {
      return 0;
    }

    sub_1C44719E4(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7);
    v16 = &v7[*(v4 + 32)];
    v17 = *v16 == 0xD000000000000016 && 0x80000001C4FC7900 == *(v16 + 1);
    if (v17 || (sub_1C4F02938() & 1) != 0)
    {
      break;
    }

    sub_1C44DBDB4(v7, type metadata accessor for GraphTriple);
    ++v14;
  }

  sub_1C4485774(v7, v10);
  v18 = sub_1C4485774(v10, v13);
  MEMORY[0x1EEE9AC00](v18);
  v22[-2] = v13;
  v19 = v22[0];
  sub_1C4BABDA0(sub_1C4D58F08, &v22[-4], a1);
  if (sub_1C44157D4(v19, 1, v4) == 1)
  {
    sub_1C4420C3C(v19, &unk_1EC0BC900, byte_1C4F142D0);
    v20 = 0;
  }

  else
  {
    v20 = *(v19 + *(v4 + 32));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBDB4(v19, type metadata accessor for GraphTriple);
  }

  sub_1C44DBDB4(v13, type metadata accessor for GraphTriple);
  return v20;
}

uint64_t sub_1C4D55A80(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v22[0] = v22 - v3;
  v4 = type metadata accessor for ConstructionGraphTriple(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  while (1)
  {
    if (v15 == v14)
    {
      return 0;
    }

    sub_1C44719E4(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7);
    v16 = &v7[*(v4 + 32)];
    v17 = *v16 == 0xD000000000000016 && 0x80000001C4FC7900 == *(v16 + 1);
    if (v17 || (sub_1C4F02938() & 1) != 0)
    {
      break;
    }

    sub_1C44DBDB4(v7, type metadata accessor for ConstructionGraphTriple);
    ++v14;
  }

  sub_1C4485774(v7, v10);
  v18 = sub_1C4485774(v10, v13);
  MEMORY[0x1EEE9AC00](v18);
  v22[-2] = v13;
  v19 = v22[0];
  sub_1C4BABF60();
  if (sub_1C44157D4(v19, 1, v4) == 1)
  {
    sub_1C4420C3C(v19, &unk_1EC0BCAE0, byte_1C4F142A0);
    v20 = 0;
  }

  else
  {
    v20 = *(v19 + *(v4 + 32));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBDB4(v19, type metadata accessor for ConstructionGraphTriple);
  }

  sub_1C44DBDB4(v13, type metadata accessor for ConstructionGraphTriple);
  return v20;
}

uint64_t sub_1C4D55DA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440A89C();
  v10 = a3(0);
  if (sub_1C4EFF878())
  {
    v11 = *(v10 + 28);
    sub_1C4EFE558();
    v12 = sub_1C44DBB50(a1 + v11, v3);
    (*(v8 + 8))(v3, v6);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1C4D55EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v161 = a2;
  v164 = a1;
  v158 = a3;
  v4 = sub_1C4EFF0C8();
  v5 = *(v4 - 8);
  v162 = v4;
  v163 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v153 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v148 = &v141 - v8;
  v157 = sub_1C4EF9CD8();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v151 = (&v141 - v11);
  v160 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v160);
  v150 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v149 = (&v141 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v159 = (&v141 - v16);
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v152 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v141 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v154 = &v141 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v141 - v24;
  v26 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v141 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v141 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v141 - v36;
  v38 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v141 - v42;
  v44 = v171;
  result = sub_1C44F4038();
  if (v44)
  {
    return result;
  }

  v145 = v31;
  v141 = v28;
  v144 = v40;
  v142 = 0;
  v143 = v3;
  v171 = v43;
  v146 = v25;
  v46 = v164;
  sub_1C44D0BD8(v164, v37);
  if (sub_1C44157D4(v37, 1, v38) == 1)
  {
    sub_1C4420C3C(v37, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v47 = sub_1C4F00978();
    sub_1C442B738(v47, qword_1EDE2DE10);
    v48 = sub_1C4F00968();
    v49 = sub_1C4F01CD8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C43F8000, v48, v49, "WalletOrder Matcher: skipping first entityTriple is empty", v50, 2u);
      MEMORY[0x1C6942830](v50, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v51 = 0;
    return swift_willThrow();
  }

  v52 = v171;
  sub_1C4485774(v37, v171);
  v53 = v161;
  if (!v161)
  {
    v58 = v146;
    v59 = v162;
    sub_1C440BAA8(v146, 1, 1, v162);
    v60 = v154;
    sub_1C4EFF008();
    sub_1C4420C3C(v58, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v60, 0, 1, v59);
    sub_1C44DDDBC(v60, v58);
    v61 = v152;
    sub_1C446C964(v58, v152, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v62 = sub_1C44157D4(v61, 1, v59);
    v63 = v163;
    if (v62 != 1)
    {
      v64 = v153;
      (*(v163 + 32))(v153, v61, v59);
      v65 = v158;
      sub_1C4EFCEF8();
      v66 = type metadata accessor for EntityMatch(0);
      v67 = *(v63 + 16);
      v67(v65 + v66[5], v52, v59);
      v67(v65 + v66[6], v64, v59);
      v68 = v155;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v70 = v69;
      (*(v156 + 8))(v68, v157);
      (*(v63 + 8))(v64, v59);
      sub_1C4420C3C(v58, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C44DBDB4(v52, type metadata accessor for EntityTriple);
      result = type metadata accessor for WalletOrderMatcher(0);
      v71 = *(v143 + *(result + 24));
      *(v65 + v66[7]) = 1056964608;
      *(v65 + v66[8]) = v70;
      *(v65 + v66[9]) = v71;
      *(v65 + v66[10]) = 0;
      return result;
    }

    goto LABEL_88;
  }

  sub_1C44D0BD8(v161, v34);
  v54 = sub_1C44157D4(v34, 1, v38);
  v55 = v146;
  v56 = v162;
  if (v54 == 1)
  {
    sub_1C4420C3C(v34, &qword_1EC0BA590, &qword_1C4F1F430);
    v57 = 1;
  }

  else
  {
    (*(v163 + 16))(v146, v34, v162);
    sub_1C44DBDB4(v34, type metadata accessor for EntityTriple);
    v57 = 0;
  }

  v72 = v159;
  sub_1C440BAA8(v55, v57, 1, v56);
  sub_1C44719E4(v52 + *(v38 + 36), v72);
  v73 = v160;
  if (qword_1EDDFD1F0 != -1)
  {
    goto LABEL_84;
  }

LABEL_15:
  v74 = sub_1C442B738(v73, &qword_1EDDFD1F8);
  v75 = v72[1];
  v76 = *v72 == *v74 && v75 == v74[1];
  v153 = *v72;
  v152 = v75;
  if (!v76 && (sub_1C4F02938() & 1) == 0)
  {
    if (qword_1EDDFD1A0 != -1)
    {
      swift_once();
    }

    v77 = sub_1C442B738(v73, &qword_1EDDFD1A8);
    v78 = v153 == *v77 && v152 == v77[1];
    if (!v78 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  v79 = v145;
  sub_1C44D0BD8(v46, v145);
  if (sub_1C44157D4(v79, 1, v38) == 1)
  {
    v80 = v79;
    v81 = v55;
    sub_1C4420C3C(v80, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v82 = sub_1C4F00978();
    sub_1C442B738(v82, qword_1EDE2DE10);
    v83 = sub_1C4F00968();
    v84 = sub_1C4F01CD8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1C43F8000, v83, v84, "WalletOrder Matcher: skipping entityTriples are empty", v85, 2u);
      MEMORY[0x1C6942830](v85, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v86 = 0;
    swift_willThrow();
    sub_1C4420C3C(v81, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C44DBDB4(v52, type metadata accessor for EntityTriple);
    return sub_1C44DBDB4(v72, type metadata accessor for Source);
  }

  sub_1C4485774(v79, v144);
  v87 = v141;
  sub_1C44D0BD8(v53, v141);
  if (sub_1C44157D4(v87, 1, v38) == 1)
  {
    sub_1C4420C3C(v87, &qword_1EC0BA590, &qword_1C4F1F430);
LABEL_67:
    v167 = 0;
    v165 = 0u;
    v166 = 0u;
LABEL_68:
    v108 = v55;
    sub_1C4420C3C(&v165, &qword_1EC0C68F0, "<d\a");
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v109 = sub_1C4F00978();
    sub_1C442B738(v109, qword_1EDE2DE10);
    v110 = sub_1C4F00968();
    v111 = sub_1C4F01CB8();
    v112 = os_log_type_enabled(v110, v111);
    v113 = v144;
    if (v112)
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_1C43F8000, v110, v111, "WalletOrder Matcher: Graph or Construction Triple not seen", v114, 2u);
      MEMORY[0x1C6942830](v114, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v115 = 0;
    swift_willThrow();
    sub_1C44DBDB4(v113, type metadata accessor for EntityTriple);
    sub_1C4420C3C(v108, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C44DBDB4(v52, type metadata accessor for EntityTriple);
    return sub_1C44DBDB4(v72, type metadata accessor for Source);
  }

  sub_1C456902C(&qword_1EC0B87F0, &unk_1C4F0DBE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_67;
  }

  if (!*(&v166 + 1))
  {
    goto LABEL_68;
  }

  v88 = v55;
  sub_1C441D670(&v165, v168);
  v89 = v169;
  v90 = v170;
  sub_1C4409678(v168, v169);
  (*(*(v90 + 8) + 16))(&v165, v89);
  v91 = v165;
  if (v165 < 1)
  {
    sub_1C44DBDB4(v144, type metadata accessor for EntityTriple);
    v46 = v164;
    v55 = v88;
    goto LABEL_76;
  }

  v92 = 0;
  v46 = v164;
  v55 = v88;
  v73 = v151;
  do
  {
    v93 = __OFADD__(v92, v91 & 1);
    v92 += v91 & 1;
    if (v93)
    {
      __break(1u);
LABEL_84:
      swift_once();
      goto LABEL_15;
    }

    v100 = v91 > 1;
    v91 >>= 1;
  }

  while (v100);
  if (v92 != 1)
  {
    sub_1C44DBDB4(v144, type metadata accessor for EntityTriple);
    goto LABEL_76;
  }

  v94 = v169;
  v95 = v170;
  sub_1C4409678(v168, v169);
  (*(*(v95 + 8) + 16))(&v165, v94);
  v96 = v165;
  v61 = 1;
  while (1)
  {
    if (qword_1EDDFA6A8 != -1)
    {
      swift_once();
    }

    if (qword_1EDE2DCF0 < v61)
    {
      sub_1C44DBDB4(v144, type metadata accessor for EntityTriple);
      v55 = v146;
      v72 = v159;
      v52 = v171;
      v53 = v161;
      v56 = v162;
      v46 = v164;
LABEL_76:
      sub_1C440962C(v168);
LABEL_77:
      v116 = v55;
      v117 = v143;
      sub_1C44F36C8(v46, v53, &qword_1EC0BA590, &qword_1C4F1F430, sub_1C44F40EC, sub_1C44D0BD8, type metadata accessor for EntityTriple, type metadata accessor for EntityTriple, sub_1C44FE288, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
      v119 = v118;
      v171 = type metadata accessor for WalletOrderMatcher(0);
      v120 = *(v117 + *(v171 + 7));
      if (v119 <= v120)
      {
        v121 = v154;
        sub_1C4EFF008();
        sub_1C4420C3C(v116, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v121, 0, 1, v56);
        sub_1C44DDDBC(v121, v116);
        v119 = v120;
      }

      v61 = v147;
      sub_1C446C964(v116, v147, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v122 = sub_1C44157D4(v61, 1, v56);
      v123 = v56;
      v124 = v158;
      v125 = v148;
      if (v122 != 1)
      {
        v126 = v163;
        (*(v163 + 32))(v148, v61, v123);
        sub_1C4EFCEF8();
        v127 = type metadata accessor for EntityMatch(0);
        v128 = *(v126 + 16);
        v128(v124 + v127[5], v52, v123);
        v128(v124 + v127[6], v125, v123);
        v129 = v155;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v131 = v130;
        (*(v156 + 8))(v129, v157);
        (*(v126 + 8))(v125, v123);
        sub_1C4420C3C(v146, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C44DBDB4(v52, type metadata accessor for EntityTriple);
        result = sub_1C44DBDB4(v72, type metadata accessor for Source);
        v132 = *(v143 + *(v171 + 6));
        *(v124 + v127[7]) = v119;
        *(v124 + v127[8]) = v131;
        *(v124 + v127[9]) = v132;
        *(v124 + v127[10]) = 0;
        return result;
      }

      while (1)
      {
LABEL_88:
        sub_1C4420C3C(v61, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4F024A8();
        __break(1u);
      }
    }

    sub_1C449E530(v61, v73);
    if (sub_1C44157D4(v73, 1, v160) == 1)
    {
      sub_1C4420C3C(v73, &unk_1EC0C0760, &qword_1C4F170D0);
      v93 = __OFADD__(v61++, 1);
      if (v93)
      {
        goto LABEL_86;
      }

      goto LABEL_66;
    }

    v97 = v73;
    v98 = v150;
    sub_1C4485774(v97, v150);
    v99 = v61 - 1;
    if (__OFSUB__(v61, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v93 = __OFADD__(v61++, 1);
    if (v93)
    {
      goto LABEL_87;
    }

    v100 = v99 > 0x40;
    if (v99 >= 0x40)
    {
      v101 = 0;
    }

    else
    {
      v101 = 1 << v99;
    }

    if (v100)
    {
      v101 = 0;
    }

    if ((v101 & v96) < 1)
    {
      sub_1C44DBDB4(v98, type metadata accessor for Source);
      goto LABEL_66;
    }

    v102 = v98;
    v103 = v149;
    sub_1C4485774(v102, v149);
    if (*v103 == v153 && v103[1] == v152)
    {
      break;
    }

    v105 = sub_1C4F02938();
    v106 = v103;
    v107 = v105;
    sub_1C44DBDB4(v106, type metadata accessor for Source);
    if (v107)
    {
      goto LABEL_82;
    }

LABEL_66:
    v73 = v151;
  }

  sub_1C44DBDB4(v103, type metadata accessor for Source);
LABEL_82:
  v133 = v158;
  sub_1C4EFCEF8();
  v134 = type metadata accessor for EntityMatch(0);
  v135 = v144;
  (*(v163 + 16))(v133 + v134[5], v144, v162);
  sub_1C4409678(v168, v169);
  sub_1C4EFF7E8();
  v136 = v155;
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v138 = v137;
  (*(v156 + 8))(v136, v157);
  sub_1C44DBDB4(v135, type metadata accessor for EntityTriple);
  sub_1C4420C3C(v146, &unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C44DBDB4(v171, type metadata accessor for EntityTriple);
  sub_1C44DBDB4(v159, type metadata accessor for Source);
  v139 = *(v143 + *(type metadata accessor for WalletOrderMatcher(0) + 24));
  *(v133 + v134[7]) = 0;
  *(v133 + v134[8]) = v138;
  *(v133 + v134[9]) = v139;
  *(v133 + v134[10]) = 0;
  return sub_1C440962C(v168);
}

void sub_1C4D57374(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X5>, void (*a7)(void)@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v200 = a8;
  v207 = a7;
  v211 = a6;
  v216 = a5;
  v218 = a2;
  v227 = a1;
  v210 = a9;
  v217 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v214 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD230();
  sub_1C43FD2C8(v25);
  v209 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v208 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  sub_1C43FCE30(v29 - v28);
  v30 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v30);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  v215 = v32;
  v33 = sub_1C43FBE44();
  v219 = type metadata accessor for Source(v33);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v220 = v37;
  v212 = a4;
  v213 = a3;
  v38 = sub_1C43FD024();
  v40 = sub_1C456902C(v38, v39);
  v41 = sub_1C43FBD18(v40);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  sub_1C43FCE30(v43);
  v44 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v45 = sub_1C43FBD18(v44);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v193 - v49;
  v51 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v52 = sub_1C43FBD18(v51);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBD08();
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v193 - v54;
  v56 = type metadata accessor for EntityTriple(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBD08();
  v60 = v58 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v193 - v62;
  sub_1C44F4038();
  if (!v17)
  {
    v197 = v19;
    v195 = v18;
    v196 = v60;
    v199 = v63;
    v198 = v16;
    v64 = v220;
    sub_1C44D0BD8(v227, v55);
    v65 = sub_1C4401860();
    sub_1C440175C(v65, v66, v56);
    if (!v108)
    {
      v194 = 0;
      sub_1C44032D8();
      v73 = v199;
      sub_1C4485774(v55, v199);
      if (v218)
      {
        sub_1C4415B50();
        v216();
        v74 = v211(0);
        v75 = sub_1C4401860();
        sub_1C440175C(v75, v76, v74);
        v77 = v217;
        if (v108)
        {
          v102 = v213;
          sub_1C4420C3C(v55, v213, v212);
          v101 = 1;
          v100 = v50;
        }

        else
        {
          v100 = v50;
          (*(v214 + 16))(v50, v55, v217);
          sub_1C44DBDB4(v55, v207);
          v101 = 0;
          v102 = v213;
        }

        v193 = v100;
        sub_1C440BAA8(v100, v101, 1, v77);
        sub_1C43FD90C();
        v104 = v64;
        sub_1C44719E4(v73 + v103, v64);
        if (qword_1EDDFD1F0 != -1)
        {
          sub_1C441BA74();
          swift_once();
        }

        v105 = sub_1C442B738(v219, &qword_1EDDFD1F8);
        v107 = *v64;
        v106 = v64[1];
        v108 = *v64 == *v105 && v106 == v105[1];
        if (v108)
        {
          goto LABEL_28;
        }

        sub_1C43FE5F8();
        if (sub_1C4F02938())
        {
          goto LABEL_28;
        }

        if (qword_1EDDFD1A0 != -1)
        {
          sub_1C441BA88();
          swift_once();
        }

        v109 = sub_1C442B738(v219, &qword_1EDDFD1A8);
        v110 = v107 == *v109 && v106 == v109[1];
        if (v110 || (sub_1C43FE5F8(), (sub_1C4F02938() & 1) != 0))
        {
LABEL_28:
          v111 = v197;
          sub_1C44D0BD8(v227, v197);
          sub_1C440175C(v111, 1, v56);
          if (v108)
          {
            sub_1C4420C3C(v111, &qword_1EC0BA590, &qword_1C4F1F430);
            if (qword_1EDDFD028 == -1)
            {
LABEL_31:
              v112 = sub_1C4F00978();
              sub_1C442B738(v112, qword_1EDE2DE10);
              v113 = sub_1C4F00968();
              v114 = sub_1C4F01CD8();
              v115 = sub_1C43FCEA4(v114);
              v116 = v199;
              if (v115)
              {
                *swift_slowAlloc() = 0;
                sub_1C44011B0(&dword_1C43F8000, v117, v118, "WalletOrder Matcher: skipping entityTriples are empty");
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              sub_1C46828B4();
              swift_allocError();
              *v119 = 0;
              swift_willThrow();
              sub_1C4420C3C(v193, &unk_1EC0BA0E0, &qword_1C4F105A0);
              sub_1C4420A30();
              v121 = v116;
LABEL_41:
              sub_1C44DBDB4(v121, v120);
              sub_1C441AB50();
              sub_1C44DBDB4(v104, v135);
              return;
            }

LABEL_83:
            sub_1C43FE9B4(&qword_1EDDFD028);
            goto LABEL_31;
          }

          v211 = v107;
          sub_1C44032D8();
          v122 = v111;
          v123 = v196;
          sub_1C4485774(v122, v196);
          sub_1C4415B50();
          (v216)(v218);
          v124 = sub_1C4401860();
          sub_1C440175C(v124, v125, v74);
          if (v126)
          {
            sub_1C4420C3C(v107, v102, v212);
            if (qword_1EDDFD028 != -1)
            {
              sub_1C43FE9B4(&qword_1EDDFD028);
            }

            v127 = sub_1C4F00978();
            sub_1C442B738(v127, qword_1EDE2DE10);
            v128 = sub_1C4F00968();
            v129 = sub_1C4F01CB8();
            v130 = sub_1C43FCEA4(v129);
            v131 = v199;
            if (v130)
            {
              *swift_slowAlloc() = 0;
              sub_1C44011B0(&dword_1C43F8000, v132, v133, "WalletOrder Matcher: Graph or Construction Triple not seen");
              v123 = v196;
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
            }

            sub_1C46828B4();
            swift_allocError();
            *v134 = 0;
            swift_willThrow();
            sub_1C44DBDB4(v123, type metadata accessor for EntityTriple);
            sub_1C4420C3C(v193, &unk_1EC0BA0E0, &qword_1C4F105A0);
            v121 = v131;
            v120 = type metadata accessor for EntityTriple;
            goto LABEL_41;
          }

          v222 = v74;
          v223 = sub_1C44FDE5C(v200, a10, a11);
          v136 = sub_1C4422F90(&v221);
          v77 = v217;
          sub_1C4485774(v107, v136);
          sub_1C441D670(&v221, &v224);
          v137 = *(sub_1C4409678(&v224, v225) + *(v74 + 36));
          if (v137 >= 1)
          {
            v138 = 0;
            do
            {
              v139 = __OFADD__(v138, v137 & 1);
              v138 += v137 & 1;
              if (v139)
              {
                __break(1u);
                goto LABEL_79;
              }

              v140 = v137 > 1;
              v137 = v137 >> 1;
            }

            while (v140);
            if (v138 != 1)
            {
              goto LABEL_69;
            }

            v142 = v225;
            v141 = v226;
            sub_1C4409678(&v224, v225);
            (*(*(v141 + 8) + 16))(&v221, v142);
            v143 = v221;
            v104 = &dword_1EDE2D000;
            v144 = 1;
            while (1)
            {
              while (1)
              {
                v145 = v215;
                if (qword_1EDDFA6A8 != -1)
                {
                  swift_once();
                }

                if (qword_1EDE2DCF0 < v144)
                {
                  v77 = v217;
                  v102 = v213;
                  goto LABEL_69;
                }

                sub_1C449E530(v144, v145);
                v146 = sub_1C4401860();
                sub_1C440175C(v146, v147, v219);
                if (!v108)
                {
                  break;
                }

                sub_1C4420C3C(v145, &unk_1EC0C0760, &qword_1C4F170D0);
                v139 = __OFADD__(v144++, 1);
                if (v139)
                {
                  goto LABEL_81;
                }
              }

              v148 = v145;
              v149 = v206;
              sub_1C4485774(v148, v206);
              if (__OFSUB__(v144, 1))
              {
                break;
              }

              v139 = __OFADD__(v144++, 1);
              if (v139)
              {
                goto LABEL_82;
              }

              sub_1C4405EEC();
              if (!v108 & v151)
              {
                v150 = 0;
              }

              if ((v150 & v143) < 1)
              {
                sub_1C44DBDB4(v149, type metadata accessor for Source);
              }

              else
              {
                v152 = v149;
                v153 = v203;
                sub_1C4485774(v152, v203);
                if (*v153 == v211 && *(v153 + 1) == v106)
                {
                  sub_1C44DBDB4(v153, type metadata accessor for Source);
LABEL_77:
                  sub_1C445087C();
                  sub_1C4EFCEF8();
                  v183 = type metadata accessor for EntityMatch(0);
                  v184 = v196;
                  (*(v214 + 16))(v106 + v183[5], v196, v217);
                  sub_1C4409678(&v224, v225);
                  v185 = sub_1C4EFF7E8();
                  sub_1C4460754(v185);
                  sub_1C4EF9AD8();
                  v187 = v186;
                  v188 = sub_1C43FCC24();
                  v189(v188);
                  sub_1C44DBDB4(v184, type metadata accessor for EntityTriple);
                  sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
                  sub_1C44DBDB4(v199, type metadata accessor for EntityTriple);
                  sub_1C441AB50();
                  sub_1C44DBDB4(v64, v190);
                  type metadata accessor for WalletOrderMatcher(0);
                  sub_1C442F80C();
                  *(v106 + v183[7]) = 0;
                  *(v106 + v183[8]) = v187;
                  *(v106 + v183[9]) = v191;
                  *(v106 + v183[10]) = 0;
                  sub_1C440962C(&v224);
                  return;
                }

                v155 = sub_1C4F02938();
                sub_1C441AB50();
                sub_1C44DBDB4(v157, v156);
                if (v155)
                {
                  goto LABEL_77;
                }
              }
            }

            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

LABEL_69:
          sub_1C44DBDB4(v196, type metadata accessor for EntityTriple);
          sub_1C440962C(&v224);
        }

        v158 = v198;
        sub_1C44F36C8(v227, v218, v102, v212, a13, a14, a15, v207, a16, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
        v160 = v159;
        v227 = type metadata accessor for WalletOrderMatcher(0);
        v161 = *(v158 + *(v227 + 28));
        if (v160 <= v161)
        {
          sub_1C441615C();
          sub_1C4EFF008();
          sub_1C4420C3C(v193, &unk_1EC0BA0E0, &qword_1C4F105A0);
          sub_1C43FBD94();
          sub_1C440BAA8(v162, v163, v164, v77);
          v165 = sub_1C43FBC98();
          sub_1C44DDDBC(v165, v166);
          v160 = v161;
        }

        v167 = v193;
        v168 = v201;
        sub_1C446C964(v193, v201, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440175C(v168, 1, v77);
        v85 = v210;
        v169 = v214;
        v170 = v202;
        if (!v108)
        {
          (*(v214 + 32))(v202, v168, v77);
          sub_1C4EFCEF8();
          v171 = v77;
          v172 = type metadata accessor for EntityMatch(0);
          v173 = *(v169 + 16);
          v174 = v199;
          v173(v85 + v172[5], v199, v171);
          v175 = (v173)(v85 + v172[6], v170, v171);
          sub_1C4460754(v175);
          sub_1C4EF9AD8();
          v177 = v176;
          v178 = sub_1C43FCC24();
          v179(v178);
          (*(v169 + 8))(v170, v171);
          sub_1C4420C3C(v167, &unk_1EC0BA0E0, &qword_1C4F105A0);
          sub_1C4420A30();
          sub_1C44DBDB4(v174, v180);
          sub_1C441AB50();
          sub_1C44DBDB4(v220, v181);
          sub_1C442F80C();
          *(v85 + v172[7]) = v160;
          *(v85 + v172[8]) = v177;
          *(v85 + v172[9]) = v182;
          v99 = v172[10];
          goto LABEL_74;
        }

        sub_1C4420C3C(v168, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      else
      {
        v78 = v50;
        v79 = v217;
        sub_1C440BAA8(v50, 1, 1, v217);
        sub_1C4415B50();
        sub_1C4EFF008();
        sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C43FBD94();
        sub_1C440BAA8(v80, v81, v82, v79);
        v83 = sub_1C43FFE24();
        sub_1C44DDDBC(v83, v84);
        v85 = v204;
        sub_1C446C964(v50, v204, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v86 = sub_1C4401860();
        sub_1C440175C(v86, v87, v79);
        if (!v108)
        {
          v88 = v214;
          v89 = v205;
          (*(v214 + 32))(v205, v85, v79);
          sub_1C4415B50();
          sub_1C4EFCEF8();
          v90 = type metadata accessor for EntityMatch(0);
          v91 = *(v88 + 16);
          v91(v85 + v90[5], v73, v79);
          v92 = (v91)(v85 + v90[6], v89, v79);
          sub_1C4460754(v92);
          sub_1C4EF9AD8();
          v94 = v93;
          v95 = sub_1C43FCC24();
          v96(v95);
          (*(v88 + 8))(v89, v79);
          sub_1C4420C3C(v78, &unk_1EC0BA0E0, &qword_1C4F105A0);
          sub_1C4420A30();
          sub_1C44DBDB4(v73, v97);
          type metadata accessor for WalletOrderMatcher(0);
          sub_1C442F80C();
          *(v85 + v90[7]) = 1056964608;
          *(v85 + v90[8]) = v94;
          *(v85 + v90[9]) = v98;
          v99 = v90[10];
LABEL_74:
          *(v85 + v99) = 0;
          return;
        }

        sub_1C4420C3C(v85, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      sub_1C4F024A8();
      __break(1u);
      return;
    }

    sub_1C4420C3C(v55, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
LABEL_79:
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v67 = sub_1C4F00978();
    sub_1C442B738(v67, qword_1EDE2DE10);
    v68 = sub_1C4F00968();
    v69 = sub_1C4F01CD8();
    if (sub_1C43FCEA4(v69))
    {
      *swift_slowAlloc() = 0;
      sub_1C44011B0(&dword_1C43F8000, v70, v71, "WalletOrder Matcher: skipping first entityTriple is empty");
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C46828B4();
    swift_allocError();
    *v72 = 0;
    swift_willThrow();
  }
}