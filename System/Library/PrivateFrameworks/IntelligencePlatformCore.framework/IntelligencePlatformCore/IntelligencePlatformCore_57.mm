uint64_t InternalXPC.Server.behaviorUnderstandingInjectTag(forPersonID:tagType:confidence:completion:)(Swift::Double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void))
{
  v45 = a6;
  v9 = type metadata accessor for EntityTaggingInjectedTags(0);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v11 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Configuration(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C440DED0();
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v17 = sub_1C442B738(v11, qword_1EDDEBB90);
  sub_1C440D164(v17, v48);
  sub_1C4460108(v17, v14, &unk_1EC0B9610, &unk_1C4F0F2E0);
  result = sub_1C440175C(v14, 1, v15);
  if (v19)
  {
    __break(1u);
  }

  else
  {
    sub_1C440AD08();
    v20 = sub_1C443DF7C();
    sub_1C496C7A8(v20, v21);
    sub_1C442CCA0();
    v22 = sub_1C43FE5F8();
    sub_1C496C838(v22, v23);
    v24._countAndFlagsBits = sub_1C43FD018();
    v25._countAndFlagsBits = a4;
    v25._object = a5;
    EntityTaggingInjectedTags.injectTag(mdID:tagType:confidence:)(v24, v25, a1);
    if (v26)
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88(&qword_1EDDFECB0);
      }

      v27 = sub_1C4F00978();
      sub_1C442B738(v27, qword_1EDDFECB8);
      v28 = sub_1C43FCFC0();
      v29 = sub_1C4F00968();
      v30 = sub_1C4F01CD8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = sub_1C43FD084();
        v32 = sub_1C43FFD34();
        v46 = v26;
        v47[0] = v32;
        *v31 = 136315138;
        v33 = v26;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v34 = sub_1C4F01198();
        v36 = sub_1C441D828(v34, v35, v47);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_1C43F8000, v29, v30, "InternalXPC: Behavior Understanding tag injection: failed: %s", v31, 0xCu);
        sub_1C440962C(v32);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      swift_getErrorValue();
      v37 = sub_1C495CCE0(v47[2], v47[3]);
      v39 = v38;
      v40 = sub_1C496C8E4();
      v41 = sub_1C43FFB2C(&type metadata for BehaviorUnderstandingXPCError, v40);
      *v42 = v37;
      *(v42 + 8) = v39;
      *(v42 + 16) = 3;
      (v45)(0, v41);
    }

    else
    {
      v43 = sub_1C4416AEC();
      v45(v43);
    }

    sub_1C441333C();
    sub_1C4419A54();
    return sub_1C4453F54();
  }

  return result;
}

void sub_1C496C3A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();

  [a3 setDateFormat_];
}

unint64_t sub_1C496C458()
{
  result = qword_1EC0BFD58;
  if (!qword_1EC0BFD58)
  {
    sub_1C4572308(&qword_1EC0BFD60, &qword_1C4F3D9F8);
    sub_1C496C4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFD58);
  }

  return result;
}

unint64_t sub_1C496C4DC()
{
  result = qword_1EC0BFD68;
  if (!qword_1EC0BFD68)
  {
    sub_1C4572308(&qword_1EC0B9398, &qword_1C4F0EEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFD68);
  }

  return result;
}

uint64_t sub_1C496C608(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1C45A24C0(a1, a2);
  }

  return a1;
}

unint64_t sub_1C496C61C()
{
  result = qword_1EC0BFD78;
  if (!qword_1EC0BFD78)
  {
    sub_1C4572308(&qword_1EC0BFD70, &qword_1C4F3DA00);
    sub_1C496C6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFD78);
  }

  return result;
}

unint64_t sub_1C496C6A0()
{
  result = qword_1EC0BFD80;
  if (!qword_1EC0BFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFD80);
  }

  return result;
}

unint64_t sub_1C496C6F4()
{
  result = qword_1EC0BFDB0;
  if (!qword_1EC0BFDB0)
  {
    sub_1C4572308(&qword_1EC0BFDA8, &qword_1C4F3DA38);
    sub_1C496CC38(&qword_1EC0C2C10, type metadata accessor for PhotosPersonObservation, &protocol conformance descriptor for PhotosPersonObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDB0);
  }

  return result;
}

uint64_t sub_1C496C7A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C496C838(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

unint64_t sub_1C496C890()
{
  result = qword_1EC0BFDB8;
  if (!qword_1EC0BFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDB8);
  }

  return result;
}

unint64_t sub_1C496C8E4()
{
  result = qword_1EC0BFDC0;
  if (!qword_1EC0BFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDC0);
  }

  return result;
}

uint64_t sub_1C496C938(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1C496C954(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *_s39BehaviorUnderstandingEvaluationXPCErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C496CA5C()
{
  result = qword_1EC0BFDC8;
  if (!qword_1EC0BFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDC8);
  }

  return result;
}

unint64_t sub_1C496CAB4()
{
  result = qword_1EC0BFDD8;
  if (!qword_1EC0BFDD8)
  {
    sub_1C4572308(&qword_1EC0B9440, &unk_1C4F0EFD0);
    sub_1C496CC38(&unk_1EDDEFFE0, MEMORY[0x1E69A91A8], MEMORY[0x1E69A91B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDD8);
  }

  return result;
}

unint64_t sub_1C496CB68()
{
  result = qword_1EC0BFDE0;
  if (!qword_1EC0BFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFDE0);
  }

  return result;
}

unint64_t sub_1C496CBBC()
{
  result = qword_1EDDFA560;
  if (!qword_1EDDFA560)
  {
    sub_1C4572308(&qword_1EC0B8EB8, &unk_1C4F0E920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA560);
  }

  return result;
}

uint64_t sub_1C496CC38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C496CC80()
{
  result = qword_1EDDDBBF0;
  if (!qword_1EDDDBBF0)
  {
    sub_1C4572308(&qword_1EC0BFDF0, &qword_1C4F3DD00);
    sub_1C496CD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBBF0);
  }

  return result;
}

unint64_t sub_1C496CD04()
{
  result = qword_1EDDDBB90;
  if (!qword_1EDDDBB90)
  {
    sub_1C4572308(&qword_1EC0B9AD8, &unk_1C4F14290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBB90);
  }

  return result;
}

void *sub_1C496CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C441AE30();
  v17 = type metadata accessor for BehaviorDatabase(0);
  v18 = &off_1F43E5250;
  v16[0] = v6;
  type metadata accessor for BehaviorSampleGenerator();
  v11 = swift_allocObject();
  sub_1C4418280(v16, v17);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  (*(v13 + 16))(v7);
  v14 = sub_1C496CECC(*v7, v5, a3, v11, a4, a5);
  sub_1C440962C(v16);
  return v14;
}

void *sub_1C496CECC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_1C441AE30();
  a4[13] = v11(0);
  a4[14] = a6;
  a4[10] = v6;
  a4[7] = type metadata accessor for BehaviorDatabase(0);
  a4[8] = &off_1F43E5250;
  a4[2] = 0xD000000000000029;
  a4[3] = 0x80000001C4F8E5F0;
  a4[4] = v7;
  type metadata accessor for WeightedProbabilitySampleGenerator();
  a4[9] = swift_allocObject();
  a4[15] = a3;
  return a4;
}

unint64_t sub_1C496CF70()
{
  result = qword_1EC0BFE00;
  if (!qword_1EC0BFE00)
  {
    sub_1C4572308(&qword_1EC0B90A8, &qword_1C4F0EBD0);
    sub_1C496CFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE00);
  }

  return result;
}

unint64_t sub_1C496CFF4()
{
  result = qword_1EC0BFE08;
  if (!qword_1EC0BFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE08);
  }

  return result;
}

uint64_t sub_1C496D048()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C496D910;
  v5 = sub_1C4414C5C();

  return v6(v5, v2, v3);
}

uint64_t sub_1C496D0F8()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C4707B70;
  v7 = sub_1C4414C5C();

  return v8(v7, v2, v3, v4, v5);
}

unint64_t sub_1C496D1C4()
{
  result = qword_1EC0BFE18;
  if (!qword_1EC0BFE18)
  {
    sub_1C4572308(&qword_1EC0B90D8, &qword_1C4F0EBF0);
    sub_1C448EFBC(&qword_1EDDFA5C8, &qword_1EC0B90E8, &qword_1C4F3DCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE18);
  }

  return result;
}

unint64_t sub_1C496D268()
{
  result = qword_1EDDDBD68;
  if (!qword_1EDDDBD68)
  {
    sub_1C4572308(&qword_1EC0B9120, &qword_1C4F3DD40);
    sub_1C446E5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD68);
  }

  return result;
}

unint64_t sub_1C496D2EC()
{
  result = qword_1EDDF05C8;
  if (!qword_1EDDF05C8)
  {
    sub_1C4572308(&qword_1EC0B9178, &qword_1C4F11B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF05C8);
  }

  return result;
}

unint64_t sub_1C496D368()
{
  result = qword_1EDDDBBE8;
  if (!qword_1EDDDBBE8)
  {
    sub_1C4572308(&qword_1EC0B9180, &unk_1C4F0EC80);
    sub_1C496D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBBE8);
  }

  return result;
}

unint64_t sub_1C496D3EC()
{
  result = qword_1EDDDBB68;
  if (!qword_1EDDDBB68)
  {
    sub_1C4572308(&qword_1EC0B9188, &unk_1C4F3DD60);
    sub_1C496D470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBB68);
  }

  return result;
}

unint64_t sub_1C496D470()
{
  result = qword_1EDDEACE8;
  if (!qword_1EDDEACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEACE8);
  }

  return result;
}

unint64_t sub_1C496D4C4()
{
  result = qword_1EDDF0630;
  if (!qword_1EDDF0630)
  {
    sub_1C4572308(&qword_1EC0B9228, &unk_1C4F3DD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0630);
  }

  return result;
}

unint64_t sub_1C496D540()
{
  result = qword_1EC0BFE38;
  if (!qword_1EC0BFE38)
  {
    sub_1C4572308(&qword_1EC0BFE30, &qword_1C4F3DD80);
    sub_1C448EFBC(&qword_1EC0BFE40, &unk_1EC0B84E0, qword_1C4F0D2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE38);
  }

  return result;
}

unint64_t sub_1C496D600()
{
  result = qword_1EDDF0698;
  if (!qword_1EDDF0698)
  {
    sub_1C4572308(&qword_1EC0B9238, &qword_1C4F3DD90);
    sub_1C496D684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0698);
  }

  return result;
}

unint64_t sub_1C496D684()
{
  result = qword_1EDDF7B78;
  if (!qword_1EDDF7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7B78);
  }

  return result;
}

unint64_t sub_1C496D6D8()
{
  result = qword_1EDDFA570;
  if (!qword_1EDDFA570)
  {
    sub_1C4572308(&qword_1EC0B9208, &qword_1C4F0ED20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA570);
  }

  return result;
}

unint64_t sub_1C496D754()
{
  result = qword_1EC0BFE58;
  if (!qword_1EC0BFE58)
  {
    sub_1C4572308(&qword_1EC0B9410, &qword_1C4F3DDA0);
    sub_1C496D804(&qword_1EC0BFE60, &qword_1EC0B9428, &unk_1C4F0EFB0, sub_1C496D888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE58);
  }

  return result;
}

uint64_t sub_1C496D804(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C496D888()
{
  result = qword_1EDDF06E0;
  if (!qword_1EDDF06E0)
  {
    sub_1C4572308(&qword_1EC0C6370, &qword_1C4F0E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06E0);
  }

  return result;
}

uint64_t sub_1C496D918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0C0008, &qword_1C4F3E0E0);
  if (*(a1 + *(v6 + 28)) != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected have isStarting set to true";
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD70, MEMORY[0x1E6969548]);
  if (sub_1C4F01068())
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected to have a timestamp earlier than secondEvent";
LABEL_11:
    _os_log_impl(&dword_1C43F8000, v10, v11, v13, v12, 2u);
    MEMORY[0x1C6942830](v12, -1, -1);
LABEL_12:

    v15 = sub_1C456902C(&qword_1EC0BFFF8, &qword_1C4F3E0C8);

    return sub_1C440BAA8(a3, 1, 1, v15);
  }

  v17 = *(*(v8 - 8) + 16);
  v17(a3, a1, v8);
  v18 = sub_1C456902C(&qword_1EC0BFFF8, &qword_1C4F3E0C8);
  v17(a3 + *(v18 + 28), a2, v8);
  v19 = (a1 + *(v7 + 32));
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = *(v19 + 2);
  v23 = a3 + *(v18 + 32);
  *v23 = v20;
  *(v23 + 8) = v21;
  *(v23 + 16) = v22;
  sub_1C440BAA8(a3, 0, 1, v18);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C496DC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0B8E10, &qword_1C4F3E090);
  if (*(a1 + *(v6 + 28)) != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected have isStarting set to true";
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD70, MEMORY[0x1E6969548]);
  if (sub_1C4F01068())
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected to have a timestamp earlier than secondEvent";
LABEL_11:
    _os_log_impl(&dword_1C43F8000, v10, v11, v13, v12, 2u);
    MEMORY[0x1C6942830](v12, -1, -1);
LABEL_12:

    v15 = sub_1C456902C(&qword_1EC0BFFA0, &unk_1C4F3E078);

    return sub_1C440BAA8(a3, 1, 1, v15);
  }

  v17 = *(*(v8 - 8) + 16);
  v17(a3, a1, v8);
  v18 = sub_1C456902C(&qword_1EC0BFFA0, &unk_1C4F3E078);
  v17(a3 + *(v18 + 28), a2, v8);
  v19 = (a1 + *(v7 + 32));
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = *(v19 + 2);
  v23 = a3 + *(v18 + 32);
  *v23 = v20;
  *(v23 + 8) = v21;
  *(v23 + 16) = v22;
  sub_1C440BAA8(a3, 0, 1, v18);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C496DEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0BFF48, &qword_1C4F3E028);
  if (*(a1 + *(v6 + 28)) != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected have isStarting set to true";
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD70, MEMORY[0x1E6969548]);
  if (sub_1C4F01068())
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "firstEvent is expected to have a timestamp earlier than secondEvent";
LABEL_11:
    _os_log_impl(&dword_1C43F8000, v10, v11, v13, v12, 2u);
    MEMORY[0x1C6942830](v12, -1, -1);
LABEL_12:

    v15 = sub_1C456902C(&qword_1EC0BFF40, &qword_1C4F3E018);

    return sub_1C440BAA8(a3, 1, 1, v15);
  }

  v17 = *(*(v8 - 8) + 16);
  v17(a3, a1, v8);
  v18 = sub_1C456902C(&qword_1EC0BFF40, &qword_1C4F3E018);
  v17(a3 + *(v18 + 28), a2, v8);
  v19 = (a1 + *(v7 + 32));
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = (a3 + *(v18 + 32));
  *v23 = v20;
  v23[1] = v21;
  v23[2] = v22;
  sub_1C440BAA8(a3, 0, 1, v18);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

IntelligencePlatformCore::ContextDataSources_optional __swiftcall ContextDataSources.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C4F025D8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ContextDataSources.rawValue.getter()
{
  result = 6909804;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x74656C6C6177;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000026;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 7368801;
      break;
    case 8:
      result = 0x704165746F6D6572;
      break;
    case 9:
      result = 0x746361736E617274;
      break;
    case 0xA:
      result = 0xD000000000000013;
      break;
    case 0xB:
      result = 0x6353736F746F6870;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C496E3D8@<X0>(unint64_t *a1@<X8>)
{
  result = ContextDataSources.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C496E410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4FAAA10 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C626164616572 && a2 == 0xEF65746144646E45;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C496E5C8(char a1)
{
  result = 0x7461447472617473;
  switch(a1)
  {
    case 1:
      result = 0x65746144646E65;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x656C626164616572;
      break;
    case 4:
      result = 0x746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C496E678(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v13[0] = a2[2];
  v13[1] = v4;
  type metadata accessor for SessionCodableDataComplyingWrapper.CodingKeys(255, v13[0], v3, v4);
  sub_1C44184B0();
  swift_getWitnessTable();
  v5 = sub_1C4F02808();
  sub_1C43FCE64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4F02BF8();
  v17 = 0;
  v11 = v13[2];
  sub_1C4F027B8();
  if (v11)
  {
    return (*(v7 + 8))(v10, v5);
  }

  sub_1C4435168();
  sub_1C4F027B8();
  v16[0] = 2;
  sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD80, MEMORY[0x1E6969538]);
  sub_1C4F027E8();
  v15 = 3;
  sub_1C4F027E8();
  v14 = 4;
  sub_1C4F027E8();
  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C496E8D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a5;
  sub_1C43FCE64();
  v47 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v53 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9CD8();
  sub_1C43FCE64();
  v58 = v12;
  v59 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v52 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = v45 - v16;
  type metadata accessor for SessionCodableDataComplyingWrapper.CodingKeys(255, a2, a3, a4);
  sub_1C44184B0();
  swift_getWitnessTable();
  sub_1C4422368();
  v54 = sub_1C4F02708();
  sub_1C43FCE64();
  v50 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v45 - v19;
  v49 = a3;
  v61 = type metadata accessor for SessionCodableDataComplyingWrapper(0, a2, a3, a4);
  sub_1C43FCE64();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v60 = (v45 - v24);
  v25 = a1[3];
  v57 = a1;
  sub_1C4409678(a1, v25);
  v55 = v20;
  sub_1C4422368();
  v26 = v56;
  sub_1C4F02BC8();
  if (v26)
  {
    return sub_1C440962C(v57);
  }

  v46 = v22;
  v28 = v51;
  v27 = v52;
  v29 = v50;
  v56 = a2;
  v30 = v53;
  v65 = 0;
  v31 = sub_1C4F02698();
  v32 = v60;
  *v60 = v31;
  sub_1C4435168();
  v33 = sub_1C4F02698();
  v35 = v58;
  v34 = v59;
  v32[1] = v33;
  v64[0] = 2;
  v45[1] = sub_1C4498DE4(&unk_1EDDFCD60, MEMORY[0x1E6969558]);
  sub_1C4F026C8();
  v36 = v28;
  v37 = *(v34 + 32);
  v37(v32 + v61[12], v36, v35);
  v63 = 3;
  sub_1C4F026C8();
  v37(v60 + v61[13], v27, v35);
  v62 = 4;
  v38 = v30;
  v39 = v56;
  v40 = v54;
  sub_1C4F026C8();
  (*(v29 + 8))(v55, v40);
  v42 = v60;
  v41 = v61;
  (*(v47 + 32))(v60 + v61[14], v38, v39);
  v43 = v46;
  (*(v46 + 16))(v48, v42, v41);
  sub_1C440962C(v57);
  return (*(v43 + 8))(v42, v41);
}

uint64_t sub_1C496EE80()
{
  sub_1C4F02AF8();
  sub_1C450EB8C(v2, *v0);
  return sub_1C4F02B68();
}

uint64_t sub_1C496EEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C496E410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C496EF38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C455F160();
  *a1 = result;
  return result;
}

uint64_t sub_1C496EF6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C496EFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C496F050(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = sub_1C456902C(&qword_1EC0BFE98, qword_1C4F42410);
  v1[5] = swift_task_alloc();
  v2 = sub_1C456902C(&qword_1EC0B8B48, &qword_1C4F3DFA0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1C4F01188();
  v1[9] = swift_task_alloc();
  v3 = sub_1C4EF9398();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  sub_1C4EF9378();
  v1[13] = swift_task_alloc();
  v4 = sub_1C4EFA018();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BFEA0, &qword_1C4F3DFA8);
  v1[17] = swift_task_alloc();
  type metadata accessor for LOISessionDataAsyncSequence(0);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C496F2CC, 0, 0);
}

uint64_t sub_1C496F2CC()
{
  sub_1C43FBCD4();
  sub_1C4430DD4();
  *(v0 + 152) = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 160) = v1;
  *v1 = v2;
  sub_1C442EBD8(v1);

  return sub_1C4A00F40();
}

uint64_t sub_1C496F364()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C496F448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = v18[4];
  v20 = sub_1C440EF74();
  v22 = sub_1C44157D4(v20, v21, v19);
  v23 = v18[19];
  if (v22 == 1)
  {
    sub_1C441B430();
    sub_1C4414C78(v24);
    v25 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v26 = sub_1C441E458();
    sub_1C448F148(v26, sel_setDateFormat_);

    v27 = [objc_opt_self() localTimeZone];
    sub_1C443EF28();

    sub_1C4EF9FF8();
    v28 = sub_1C43FC54C();
    v30 = v29(v28);
    sub_1C448F148(v30, sel_setTimeZone_);

    v31 = sub_1C4EF93D8();
    sub_1C44099C4(v31);
    sub_1C4EF93C8();
    sub_1C447E2E8();
    sub_1C4EF9388();
    *v19 = v25;
    v32 = sub_1C442A44C();
    v33(v32);
    v63 = v25;
    sub_1C4EF93A8();
    v34 = objc_autoreleasePoolPush();
    v18[2] = v23;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0BFEA8, &qword_1C4F3DFB0);
    sub_1C497AE44();
    sub_1C44365AC();
    v35 = sub_1C4EF93B8();
    v37 = v36;
    v64 = v18[16];
    v65 = v18[13];
    v66 = v18[12];
    v67 = v18[8];
    v68 = v18[5];

    objc_autoreleasePoolPop(v34);
    sub_1C4F01178();
    sub_1C4F01158();

    sub_1C4411F20();
    sub_1C4434000(v35, v37);

    sub_1C43FDA40();
    sub_1C4409BA4();

    return v56(v53, v54, v55, v56, v57, v58, v59, v60, v63, v64, v65, v66, v67, v68, a15, a16, a17, a18);
  }

  else
  {
    sub_1C440A9B8();
    sub_1C44CDA7C();
    v38 = sub_1C4EF9AD8();
    v40 = sub_1C4461FD4(v38, v39);
    sub_1C44602A0(v40);
    sub_1C440F834();
    v42 = *(v41 + 32);
    v43 = sub_1C4405DA0();
    v42(v43);
    v44 = sub_1C440E450();
    v42(v44);
    sub_1C4422B34();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v18[19];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458E4D4();
      v46 = v61;
    }

    sub_1C441CB28();
    if (v48)
    {
      sub_1C4413364(v47);
      sub_1C458E4D4();
      v46 = v62;
    }

    sub_1C441FD60();
    sub_1C44CDA7C();
    v18[19] = v46;
    swift_task_alloc();
    sub_1C43FBE70();
    v18[20] = v49;
    *v49 = v50;
    sub_1C442EBD8(v49);
    sub_1C4409BA4();

    return sub_1C4A00F40();
  }
}

uint64_t sub_1C496F874(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1C456902C(&unk_1EC0BCCF0, qword_1C4F2A740);
  v1[7] = swift_task_alloc();
  v2 = sub_1C456902C(&qword_1EC0B8B50, &unk_1C4F0DF80);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_1C4F01188();
  v1[11] = swift_task_alloc();
  v3 = sub_1C4EF9398();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  sub_1C4EF9378();
  v1[15] = swift_task_alloc();
  v4 = sub_1C4EFA018();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BFEC0, &qword_1C4F3DFB8);
  v1[19] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0BFEC8, &qword_1C4F3DFC0);
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BCD40, &qword_1C4F2A7C8);
  v1[23] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BFED0, &qword_1C4F3DFC8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C496FB9C, 0, 0);
}

uint64_t sub_1C496FB9C()
{
  sub_1C4404D98();
  sub_1C448840C();
  sub_1C440CCA4();
  sub_1C44DDE2C();
  v1 = sub_1C4404C28();
  v2(v1);
  v3 = sub_1C4401CBC(&qword_1EC0BFED8, &qword_1EC0BFEC8, &qword_1C4F3DFC0, MEMORY[0x1E69E8878]);
  sub_1C447CDD0(v3);
  sub_1C4422368();
  sub_1C4420C3C(v4, v5, v6);
  *(v0 + 200) = MEMORY[0x1E69E7CC0];
  v7 = sub_1C4402120();
  sub_1C456902C(v7, v8);
  sub_1C445FDB8(&qword_1EC0BFEE8);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 208) = v9;
  *v9 = v10;
  v11 = sub_1C443514C(v9);

  return MEMORY[0x1EEE6D8C8](v11);
}

uint64_t sub_1C496FCE8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C496FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C447F160();
  sub_1C4441100();
  sub_1C4405CEC();
  if (v23)
  {
    v24 = v21[25];
    sub_1C440BDF8();
    v77 = v25;
    v78 = v26;
    sub_1C4420C3C(v27, &qword_1EC0BFED0, &qword_1C4F3DFC8);
    v28 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v29 = sub_1C441E458();
    sub_1C441804C(v29, sel_setDateFormat_);

    v30 = [objc_opt_self() localTimeZone];
    sub_1C44EB888();

    sub_1C4EF9FF8();
    v31 = sub_1C441C348();
    v33 = v32(v31);
    sub_1C441804C(v33, sel_setTimeZone_);

    v34 = sub_1C4EF93D8();
    sub_1C44099C4(v34);
    sub_1C4EF93C8();
    sub_1C4471CC8();
    sub_1C4EF9388();
    *v22 = v28;
    v35 = sub_1C4424CF8();
    v36(v35);
    v37 = v28;
    sub_1C4EF93A8();
    v38 = objc_autoreleasePoolPush();
    v21[4] = v24;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0BFEF0, &unk_1C4F3DFE0);
    v39 = sub_1C497AEF4();
    sub_1C4428EA4(v39);
    if (v20)
    {

      objc_autoreleasePoolPop(v38);

      sub_1C4414608();
      v79 = v21[7];

      sub_1C43FC560();
      sub_1C4416034();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, v77, v79, a17, a18, a19, a20);
    }

    else
    {
      sub_1C441AF54();
      objc_autoreleasePoolPop(v38);
      sub_1C4F01178();
      sub_1C4404DC8();
      sub_1C4F01158();

      sub_1C4411F20();
      v65 = sub_1C4404DC8();
      sub_1C4434000(v65, v66);

      sub_1C43FDA40();
      sub_1C4416034();

      return v70(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, v77, v78, a17, a18, a19, a20);
    }
  }

  else
  {
    sub_1C4460858();
    sub_1C440A9B8();
    sub_1C44CDA7C();
    sub_1C4EF9AD8();
    sub_1C44409E0(v49);
    sub_1C44602A0(v50);
    sub_1C440F834();
    v52 = *(v51 + 32);
    v53 = sub_1C4405DA0();
    v52(v53);
    v54 = sub_1C440E450();
    v52(v54);
    sub_1C4422B34();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v21[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458E498();
      v56 = v75;
    }

    sub_1C441CB28();
    if (v58)
    {
      sub_1C4413364(v57);
      sub_1C458E498();
      v56 = v76;
    }

    sub_1C441FD60();
    sub_1C44CDA7C();
    v21[25] = v56;
    v59 = sub_1C4402120();
    sub_1C456902C(v59, v60);
    sub_1C445FDB8(&qword_1EC0BFEE8);
    swift_task_alloc();
    sub_1C43FBE70();
    v21[26] = v61;
    *v61 = v62;
    sub_1C443514C(v61);
    sub_1C4416034();

    return MEMORY[0x1EEE6D8C8](v63);
  }
}

uint64_t sub_1C4970258()
{
  sub_1C43FBCD4();
  v0[2] = v0[27];
  v0[28] = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C49702E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  sub_1C4424740();
  v13 = sub_1C4F028C8();
  if (v13)
  {
    v25 = v13;
  }

  else
  {
    v14 = *(v12 + 216);
    v25 = sub_1C43FFB2C(*(v12 + 224), MEMORY[0x1E69E7288]);
    *v15 = v14;
  }

  sub_1C4420C3C(*(v12 + 192), &qword_1EC0BFED0, &qword_1C4F3DFC8);

  sub_1C4414608();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_1C49703F8(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v2[15] = sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
  v2[16] = swift_task_alloc();
  v3 = sub_1C456902C(&qword_1EC0B8B58, &qword_1C4F3DFF0);
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  sub_1C4F01188();
  v2[20] = swift_task_alloc();
  v4 = sub_1C4EF9398();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  sub_1C4EF9378();
  v2[24] = swift_task_alloc();
  v5 = sub_1C4EFA018();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2[28] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v2[29] = v6;
  v2[30] = *(v6 - 8);
  v2[31] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B97C0, &qword_1C4F0F800);
  v2[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C49706DC, 0, 0);
}

uint64_t sub_1C49706DC()
{
  sub_1C43FBCD4();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = *(v0[13] + 16);
  v0[34] = v0[14];
  v0[35] = v1;
  v0[33] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4970754()
{
  sub_1C4404D98();
  v4 = v0[34];
  if (v4 >= v0[33])
  {
    sub_1C43FCF64();
    sub_1C440BAA8(v16, v17, v18, v19);
    v7 = v0[34];
  }

  else
  {
    if (v4 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }

    v6 = v0[28];
    v5 = v0[29];
    sub_1C442E860(v0[13] + 40 * v4 + 32, (v0 + 2));
    v7 = v4 + 1;
    sub_1C4409678(v0 + 2, v0[5]);
    v8 = sub_1C43FD2BC();
    v9(v8);
    v10 = sub_1C44157D4(v6, 1, v5);
    v11 = v0[32];
    if (v10 == 1)
    {
      sub_1C4420C3C(v0[28], &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C440EF74();
      sub_1C4401E28();
    }

    else
    {
      v20 = v0[30];
      v21 = v0[15];
      (*(v20 + 32))(v0[31], v0[28], v0[29]);
      v22 = *(v20 + 16);
      v23 = sub_1C4402120();
      (v22)(v23);
      sub_1C442BBB8();
      v22();
      sub_1C442E860((v0 + 2), (v0 + 7));
      sub_1C4A8556C(v0 + 7, v11 + *(v21 + 32));
      v24 = sub_1C4402B58();
      v25(v24);
      sub_1C43FBD94();
      v15 = v21;
    }

    sub_1C440BAA8(v12, v13, v14, v15);
    sub_1C440962C(v0 + 2);
  }

  v0[36] = v7;
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4970D60(uint64_t a1)
{
  v1[26] = a1;
  v1[27] = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
  v1[28] = swift_task_alloc();
  v2 = sub_1C456902C(&qword_1EC0B8B70, &unk_1C4F0DFA0);
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  sub_1C4F01188();
  v1[32] = swift_task_alloc();
  v3 = sub_1C4EF9398();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  sub_1C4EF9378();
  v1[36] = swift_task_alloc();
  v4 = sub_1C4EFA018();
  v1[37] = v4;
  v1[38] = *(v4 - 8);
  v1[39] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BF8E0, &qword_1C4F3E000);
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for InferredActivitySegment(0);
  v1[42] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BFF20, &qword_1C4F3E008);
  v1[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4971018, 0, 0);
}

uint64_t sub_1C4971018()
{
  sub_1C43FBCD4();
  sub_1C4937120(*(v0 + 208), v0 + 16);
  *(v0 + 352) = MEMORY[0x1E69E7CC0];
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4971084()
{
  sub_1C43FBCD4();
  if (v0[3])
  {
    swift_task_alloc();
    sub_1C43FBE70();
    v0[45] = v1;
    *v1 = v2;
    v1[1] = sub_1C4971180;

    return sub_1C493541C();
  }

  else
  {
    sub_1C43FCF64();
    sub_1C440BAA8(v4, v5, v6, v7);
    sub_1C4420C3C(v0[40], &qword_1EC0BF8E0, &qword_1C4F3E000);
    sub_1C43FCF64();
    sub_1C440BAA8(v8, v9, v10, v11);
    v12 = sub_1C43FCE74();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1C4971180()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4971264()
{
  sub_1C4404D98();
  v1 = v0[40];
  v2 = v0[41];
  sub_1C4410EC0();
  if (v3)
  {
    sub_1C4420C3C(v1, &qword_1EC0BF8E0, &qword_1C4F3E000);
    v11 = 1;
  }

  else
  {
    v5 = v0[42];
    v4 = v0[43];
    v6 = v0[27];
    sub_1C497B524();
    v7 = sub_1C4EF9CD8();
    sub_1C43FBCE0();
    v9 = *(v8 + 16);
    v10 = sub_1C43FBEF8();
    v9(v10);
    (v9)(v4 + *(v6 + 28), v5 + *(v2 + 20), v7);
    sub_1C497B524();
    v11 = 0;
  }

  sub_1C440BAA8(v0[43], v11, 1, v0[27]);
  v12 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C49717BC(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1C456902C(&qword_1EC0BFF40, &qword_1C4F3E018);
  v1[7] = swift_task_alloc();
  v2 = sub_1C456902C(&qword_1EC0B8B78, &qword_1C4F3E020);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_1C4F01188();
  v1[11] = swift_task_alloc();
  v3 = sub_1C4EF9398();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  sub_1C4EF9378();
  v1[15] = swift_task_alloc();
  v4 = sub_1C4EFA018();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = sub_1C456902C(&qword_1EC0BFF48, &qword_1C4F3E028);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BFF50, &unk_1C4F3E030);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BDBC0, &qword_1C4F3E9C0);
  v1[30] = swift_task_alloc();
  v1[31] = type metadata accessor for GamingActivityEvent(0);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BFF58, &unk_1C4F3E040);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0BDBB8, &unk_1C4F311D0);
  v1[37] = v5;
  v1[38] = *(v5 - 8);
  v1[39] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BF940, &qword_1C4F3E050);
  v1[40] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BF948, &qword_1C4F3B470);
  v1[41] = swift_task_alloc();
  v1[42] = sub_1C456902C(&qword_1EC0BFF60, &qword_1C4F3E058);
  v1[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4971C80, 0, 0);
}

uint64_t sub_1C4971C80()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 152);
  sub_1C44DDE2C();
  sub_1C43FD2BC();
  sub_1C44DDE2C();
  sub_1C4422368();
  v6();
  sub_1C4409E0C(&qword_1EC0BFF68, &qword_1EC0BDBB8, &unk_1C4F311D0);
  sub_1C4F019A8();
  sub_1C4420C3C(v4, &qword_1EC0BF940, &qword_1C4F3E050);
  sub_1C4420C3C(v3, &qword_1EC0BF948, &qword_1C4F3B470);
  *(v0 + 384) = *(v2 + 44);
  v7 = sub_1C440EF74();
  sub_1C440BAA8(v7, v8, 1, v5);
  *(v0 + 388) = *(sub_1C456902C(&qword_1EC0BFF70, &qword_1C4F3E060) + 28);
  sub_1C43FCF64();
  sub_1C440BAA8(v9, v10, v11, v5);
  v12 = *(v2 + 48);
  *(v0 + 392) = v12;
  *(v1 + v12) = 1;
  *(v0 + 352) = MEMORY[0x1E69E7CC0];
  sub_1C43FCE74();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C4971DFC()
{
  sub_1C43FCF70();
  v1 = *(v0 + 392);
  v2 = *(v0 + 344);
  sub_1C43FCF64();
  sub_1C440BAA8(v3, v4, v5, v6);
  *(v2 + v1) = 1;
  v7 = sub_1C4402120();
  sub_1C456902C(v7, v8);
  sub_1C44006D4(&qword_1EC0BFF98);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 360) = v9;
  *v9 = v10;
  v9[1] = sub_1C4971EE4;
  sub_1C44050B4();

  return MEMORY[0x1EEE6D8C8](v11);
}

uint64_t sub_1C4971EE4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 368) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4971FE0()
{
  sub_1C4404B08();
  v2 = v0[30];
  v1 = v0[31];
  if (sub_1C44157D4(v2, 1, v1) == 1)
  {
    sub_1C4420C3C(v0[35], &qword_1EC0BFF58, &unk_1C4F3E040);
    sub_1C4420C3C(v2, &qword_1EC0BDBC0, &qword_1C4F3E9C0);
    sub_1C440EF74();
    sub_1C4401E28();
    sub_1C440BAA8(v3, v4, v5, v6);
LABEL_29:
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v95, v96, v97);
  }

  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[19];
  sub_1C497B524();
  sub_1C4430DD4();
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v10 + 16))(v8, v7);
  *(v8 + *(v9 + 28)) = *(v7 + *(v1 + 20));
  v11 = (v8 + *(v9 + 32));
  v12 = (v7 + *(v1 + 24));
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4453FA8(v7, type metadata accessor for GamingActivityEvent);
  *v11 = v14;
  v11[1] = v13;
  v11[2] = v15;
  sub_1C43FF010();
  sub_1C440BAA8(v16, v17, v18, v19);
  sub_1C4404C28();
  sub_1C44DDE2C();
  sub_1C4410EC0();
  if (v20)
  {
    v21 = v0[28];
    v22 = &qword_1EC0BFF50;
    v23 = &unk_1C4F3E030;
    goto LABEL_6;
  }

  v24 = v0[19];
  sub_1C44CDA7C();
  sub_1C44DDE2C();
  v25 = sub_1C440EF74();
  v27 = sub_1C44157D4(v25, v26, v24);
  sub_1C442B8EC();
  sub_1C4420C3C(v28, v29, v30);
  if (v27 == 1)
  {
    if (*(v0[23] + *(v0[19] + 28)))
    {
      v31 = sub_1C43FBEF8();
      sub_1C4420C3C(v31, v32, &unk_1C4F3E030);
      sub_1C4402B58();
      sub_1C44CDA7C();
      sub_1C43FF010();
      sub_1C440BAA8(v33, v34, v35, v36);
      sub_1C440EFD0();
LABEL_17:
      sub_1C43FF010();
      goto LABEL_18;
    }

    v22 = &qword_1EC0BFF48;
    v23 = &qword_1C4F3E028;
    v21 = v0[23];
LABEL_6:
    sub_1C4420C3C(v21, v22, v23);
    goto LABEL_19;
  }

  sub_1C4429060();
  sub_1C4405CEC();
  if (!v20)
  {
    v48 = v0[22];
    v49 = v0[19];
    sub_1C44CDA7C();
    if (*(v48 + *(v49 + 28)))
    {
      sub_1C4422368();
      sub_1C4420C3C(v50, v51, v52);
      sub_1C4461CDC();
      sub_1C4425D24();
      sub_1C4422368();
      sub_1C4420C3C(v53, v54, v55);
      sub_1C442F6CC();
    }

    else
    {
      sub_1C4422368();
      sub_1C4420C3C(v56, v57, v58);
      v59 = sub_1C4404BCC();
      sub_1C4420C3C(v59, v60, &unk_1C4F3E030);
      sub_1C440CCA4();
      sub_1C44CDA7C();
      v61 = sub_1C4425D24();
      sub_1C4420C3C(v61, &qword_1EC0BFF50, &unk_1C4F3E030);
    }

    goto LABEL_17;
  }

  v37 = v0[19];
  sub_1C442B8EC();
  sub_1C4420C3C(v38, v39, v40);
  sub_1C442B8EC();
  sub_1C4420C3C(v41, v42, v43);
  sub_1C44CDA7C();
  sub_1C43FBD94();
  v47 = v37;
LABEL_18:
  sub_1C440BAA8(v44, v45, v46, v47);
LABEL_19:
  sub_1C4429060();
  sub_1C4405CEC();
  if (!v20)
  {
    sub_1C44CDA7C();
    sub_1C44DDE2C();
    sub_1C4405CEC();
    if (!v20)
    {
      v74 = v0[33];
      v75 = v0[29];
      v77 = v0[20];
      v76 = v0[21];
      sub_1C4422368();
      sub_1C44CDA7C();
      v78 = sub_1C43FD2BC();
      sub_1C496DEF0(v78, v79, v80);
      sub_1C447CC14(v77);
      sub_1C447CC14(v76);
      sub_1C4420C3C(v75, &qword_1EC0BFF50, &unk_1C4F3E030);
      sub_1C443F680();
      sub_1C4453FA8(v74, v81);
      goto LABEL_24;
    }

    sub_1C4420C3C(v0[21], &qword_1EC0BFF48, &qword_1C4F3E028);
  }

  v62 = v0[33];
  v63 = v0[6];
  sub_1C4422368();
  sub_1C4420C3C(v64, v65, v66);
  sub_1C443F680();
  sub_1C4453FA8(v62, v67);
  sub_1C4422368();
  sub_1C4420C3C(v68, v69, v70);
  sub_1C43FCF64();
  sub_1C440BAA8(v71, v72, v73, v63);
LABEL_24:
  v82 = v0[34];
  sub_1C4410EC0();
  if (!v20)
  {
    sub_1C4422368();
    sub_1C4420C3C(v88, v89, v90);
    sub_1C4404BCC();
    sub_1C44CDA7C();
    sub_1C43FF010();
    sub_1C440BAA8(v91, v92, v93, v94);
    sub_1C4423BEC();
    goto LABEL_29;
  }

  sub_1C4420C3C(v82, &qword_1EC0BFF58, &unk_1C4F3E040);
  v83 = sub_1C4402120();
  sub_1C456902C(v83, v84);
  sub_1C44006D4(&qword_1EC0BFF98);
  swift_task_alloc();
  sub_1C43FBE70();
  v0[45] = v85;
  *v85 = v86;
  v85[1] = sub_1C4971EE4;
  sub_1C44050B4();

  return MEMORY[0x1EEE6D8C8](v87);
}

uint64_t sub_1C49726D8()
{
  sub_1C43FBCD4();
  sub_1C4420C3C(*(v0 + 280), &qword_1EC0BFF58, &unk_1C4F3E040);
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4972744()
{
  sub_1C43FBCD4();
  v0[3] = v0[46];
  v0[47] = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C49727D0()
{
  *(v0 + 32) = *(v0 + 368);
  if (sub_1C4F028C8())
  {
  }

  else
  {
    v1 = *(v0 + 368);
    sub_1C43FFB2C(*(v0 + 376), MEMORY[0x1E69E7288]);
    *v2 = v1;
  }

  sub_1C4420C3C(*(v0 + 344), &qword_1EC0BFF60, &qword_1C4F3E058);

  sub_1C44B8F9C();

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C49729CC()
{
  sub_1C4405CEC();
  if (v3)
  {
    sub_1C440BDF8();
    v44 = v4;
    sub_1C4420C3C(v5, &qword_1EC0BFF60, &qword_1C4F3E058);
    v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v7 = sub_1C441E458();
    sub_1C441804C(v7, sel_setDateFormat_);

    v8 = [objc_opt_self() localTimeZone];
    sub_1C44EB888();

    sub_1C4EF9FF8();
    v9 = sub_1C441C348();
    v11 = v10(v9);
    sub_1C441804C(v11, sel_setTimeZone_);

    v12 = sub_1C4EF93D8();
    sub_1C44099C4(v12);
    sub_1C4EF93C8();
    sub_1C4471CC8();
    sub_1C4EF9388();
    *v1 = v6;
    v13 = sub_1C4424CF8();
    v14(v13);
    v15 = v6;
    sub_1C4EF93A8();
    v16 = objc_autoreleasePoolPush();
    sub_1C443DF88();
    sub_1C456902C(&qword_1EC0BFF78, &qword_1C4F3E068);
    sub_1C497B104();
    sub_1C44365AC();
    sub_1C4EF93B8();
    if (v44)
    {

      objc_autoreleasePoolPop(v2);

      sub_1C4462420(v0[43]);

      sub_1C43FBDA0();
      sub_1C4441954();

      __asm { BRAA            X1, X16 }
    }

    sub_1C444AD04(v0[18]);
    objc_autoreleasePoolPop(v2);
    sub_1C4F01178();
    sub_1C4404044();
    sub_1C4F01158();

    sub_1C4411F20();
    v37 = sub_1C4404044();
    sub_1C4434000(v37, v38);

    sub_1C44BBE34();
    sub_1C4441954();

    __asm { BRAA            X3, X16 }
  }

  sub_1C4460858();
  sub_1C440A9B8();
  sub_1C44CDA7C();
  sub_1C4EF9AD8();
  sub_1C44409E0(v19);
  sub_1C44602A0(v20);
  sub_1C440F834();
  v22 = *(v21 + 32);
  v23 = sub_1C4405DA0();
  v22(v23);
  v24 = sub_1C440E450();
  v22(v24);
  sub_1C4451334();
  v26 = v25[1];
  v27 = v25[2];
  *v28 = *v25;
  v28[1] = v26;
  v28[2] = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v0[44];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C441BA3C();
    sub_1C458E3E4();
    v30 = v41;
  }

  sub_1C441CB28();
  if (v32)
  {
    sub_1C4413364(v31);
    sub_1C458E3E4();
    v30 = v42;
  }

  sub_1C441FD60();
  sub_1C44CDA7C();
  v0[44] = v30;
  sub_1C43FCE74();
  sub_1C4441954();

  return MEMORY[0x1EEE6DFA0](v33, v34, v35);
}

uint64_t sub_1C4972F84(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1C456902C(&qword_1EC0BFFA0, &unk_1C4F3E078);
  v1[7] = swift_task_alloc();
  v2 = sub_1C456902C(&qword_1EC0B8B80, &unk_1C4F0DFB0);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_1C4F01188();
  v1[11] = swift_task_alloc();
  v3 = sub_1C4EF9398();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  sub_1C4EF9378();
  v1[15] = swift_task_alloc();
  v4 = sub_1C4EFA018();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BFFA8, &qword_1C4F3E088);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = sub_1C456902C(&qword_1EC0B8E10, &qword_1C4F3E090);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BFFB0, &unk_1C4F3E098);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0B8E08, &unk_1C4F0E440);
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B8E18, &qword_1C4F0E460);
  v1[39] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B8E48, &unk_1C4F0E6D0);
  v1[40] = swift_task_alloc();
  v1[41] = sub_1C456902C(&qword_1EC0BFFB8, &qword_1C4F3E0A8);
  v1[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C49733F8, 0, 0);
}

uint64_t sub_1C49733F8()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 208);
  sub_1C44DDE2C();
  sub_1C43FD2BC();
  sub_1C44DDE2C();
  sub_1C4422368();
  v6();
  sub_1C4409E0C(&qword_1EC0BFFC0, &qword_1EC0B8E08, &unk_1C4F0E440);
  sub_1C4F019A8();
  sub_1C4420C3C(v4, &qword_1EC0B8E18, &qword_1C4F0E460);
  sub_1C4420C3C(v3, &qword_1EC0B8E48, &unk_1C4F0E6D0);
  *(v0 + 376) = *(v2 + 44);
  v7 = sub_1C440EF74();
  sub_1C440BAA8(v7, v8, 1, v5);
  *(v0 + 380) = *(sub_1C456902C(&qword_1EC0BFFC8, &qword_1C4F3E0B0) + 28);
  sub_1C43FCF64();
  sub_1C440BAA8(v9, v10, v11, v5);
  v12 = *(v2 + 48);
  *(v0 + 384) = v12;
  *(v1 + v12) = 1;
  *(v0 + 344) = MEMORY[0x1E69E7CC0];
  sub_1C43FCE74();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C4973574()
{
  sub_1C43FCF70();
  v1 = *(v0 + 384);
  v2 = *(v0 + 336);
  sub_1C43FCF64();
  sub_1C440BAA8(v3, v4, v5, v6);
  *(v2 + v1) = 1;
  v7 = sub_1C4402120();
  sub_1C456902C(v7, v8);
  sub_1C44006D4(&qword_1EC0BFFF0);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 352) = v9;
  *v9 = v10;
  v9[1] = sub_1C497365C;
  sub_1C44050B4();

  return MEMORY[0x1EEE6D8C8](v11);
}

uint64_t sub_1C497365C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 360) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4973758()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v3 = v0[25];
  if (sub_1C4401818(v3) == 1)
  {
    sub_1C4420C3C(v0[34], &qword_1EC0BFFB0, &unk_1C4F3E098);
    sub_1C4420C3C(v3, &qword_1EC0BFFA8, &qword_1C4F3E088);
    sub_1C440EF74();
    sub_1C4401E28();
    sub_1C440BAA8(v4, v5, v6, v7);
LABEL_29:
    sub_1C43FEAF8();
    sub_1C43FEA3C();

    return MEMORY[0x1EEE6DFA0](v90, v91, v92);
  }

  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[24];
  sub_1C43FD2BC();
  v12 = v11;
  sub_1C44CDA7C();
  sub_1C44BBC6C();
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v13 + 16))(v10, v9);
  sub_1C44167B0();
  sub_1C4420C3C(v9, &qword_1EC0B8E10, &qword_1C4F3E090);
  *v8 = v2;
  *(v8 + 8) = v1;
  *(v8 + 16) = v12;
  sub_1C43FF010();
  sub_1C440BAA8(v14, v15, v16, v17);
  sub_1C4404C28();
  sub_1C44DDE2C();
  sub_1C4410EC0();
  if (v18)
  {
    v19 = v0[23];
    v20 = &qword_1EC0BFFA8;
    v21 = &qword_1C4F3E088;
    goto LABEL_6;
  }

  v22 = v0[22];
  sub_1C44CDA7C();
  sub_1C442BBB8();
  sub_1C44DDE2C();
  v23 = sub_1C4401818(v22);
  sub_1C442B8EC();
  sub_1C4420C3C(v24, v25, v26);
  if (v23 == 1)
  {
    if (*(v0[30] + *(v0[26] + 28)))
    {
      v27 = sub_1C43FBEF8();
      sub_1C4420C3C(v27, v28, &qword_1C4F3E088);
      sub_1C4402B58();
      sub_1C44CDA7C();
      sub_1C43FF010();
      sub_1C440BAA8(v29, v30, v31, v32);
      sub_1C440EFD0();
LABEL_17:
      sub_1C43FF010();
      goto LABEL_18;
    }

    v20 = &qword_1EC0B8E10;
    v21 = &qword_1C4F3E090;
    v19 = v0[30];
LABEL_6:
    sub_1C4420C3C(v19, v20, v21);
    goto LABEL_19;
  }

  sub_1C44DDE2C();
  sub_1C4410EC0();
  if (!v18)
  {
    v44 = v0[29];
    v45 = v0[26];
    sub_1C44CDA7C();
    if (*(v44 + *(v45 + 28)))
    {
      sub_1C4422368();
      sub_1C4420C3C(v46, v47, v48);
      sub_1C4461CDC();
      sub_1C4425D24();
      sub_1C4422368();
      sub_1C4420C3C(v49, v50, v51);
      sub_1C442F6CC();
    }

    else
    {
      sub_1C4422368();
      sub_1C4420C3C(v52, v53, v54);
      v55 = sub_1C4404BCC();
      sub_1C4420C3C(v55, v56, &qword_1C4F3E088);
      sub_1C440CCA4();
      sub_1C44CDA7C();
      v57 = sub_1C4425D24();
      sub_1C4420C3C(v57, &qword_1EC0BFFA8, &qword_1C4F3E088);
    }

    goto LABEL_17;
  }

  v33 = v0[26];
  sub_1C442B8EC();
  sub_1C4420C3C(v34, v35, v36);
  sub_1C442B8EC();
  sub_1C4420C3C(v37, v38, v39);
  sub_1C44CDA7C();
  sub_1C43FBD94();
  v43 = v33;
LABEL_18:
  sub_1C440BAA8(v40, v41, v42, v43);
LABEL_19:
  sub_1C4429060();
  sub_1C4405CEC();
  if (!v18)
  {
    sub_1C443E374();
    sub_1C44CDA7C();
    sub_1C44DDE2C();
    sub_1C4405CEC();
    if (!v18)
    {
      v69 = v0[32];
      v71 = v0[27];
      v70 = v0[28];
      v72 = v0[24];
      sub_1C44CDA7C();
      v73 = sub_1C43FBEF8();
      sub_1C496DC04(v73, v74, v75);
      sub_1C447CC14(v71);
      sub_1C447CC14(v70);
      sub_1C4420C3C(v72, &qword_1EC0BFFA8, &qword_1C4F3E088);
      sub_1C447CC14(v69);
      goto LABEL_24;
    }

    sub_1C4420C3C(v0[28], &qword_1EC0B8E10, &qword_1C4F3E090);
  }

  v58 = v0[32];
  v59 = v0[6];
  sub_1C4422368();
  sub_1C4420C3C(v60, v61, v62);
  sub_1C4420C3C(v58, &qword_1EC0B8E10, &qword_1C4F3E090);
  sub_1C4422368();
  sub_1C4420C3C(v63, v64, v65);
  sub_1C43FCF64();
  sub_1C440BAA8(v66, v67, v68, v59);
LABEL_24:
  v76 = v0[33];
  sub_1C4410EC0();
  if (!v18)
  {
    sub_1C4422368();
    sub_1C4420C3C(v83, v84, v85);
    sub_1C4404BCC();
    sub_1C44CDA7C();
    sub_1C43FF010();
    sub_1C440BAA8(v86, v87, v88, v89);
    sub_1C4423BEC();
    goto LABEL_29;
  }

  sub_1C4420C3C(v76, &qword_1EC0BFFB0, &unk_1C4F3E098);
  v77 = sub_1C4402120();
  sub_1C456902C(v77, v78);
  sub_1C44006D4(&qword_1EC0BFFF0);
  swift_task_alloc();
  sub_1C43FBE70();
  v0[44] = v79;
  *v79 = v80;
  v79[1] = sub_1C497365C;
  sub_1C44050B4();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6D8C8](v81);
}

uint64_t sub_1C4973DD8()
{
  sub_1C43FBCD4();
  sub_1C4420C3C(*(v0 + 272), &qword_1EC0BFFB0, &unk_1C4F3E098);
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4973E44()
{
  sub_1C43FBCD4();
  v0[3] = v0[45];
  v0[46] = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4973ED0()
{
  *(v0 + 32) = *(v0 + 360);
  if (sub_1C4F028C8())
  {
  }

  else
  {
    v1 = *(v0 + 360);
    sub_1C43FFB2C(*(v0 + 368), MEMORY[0x1E69E7288]);
    *v2 = v1;
  }

  sub_1C4420C3C(*(v0 + 336), &qword_1EC0BFFB8, &qword_1C4F3E0A8);

  sub_1C44B8F9C();

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C49740C8()
{
  sub_1C4405CEC();
  if (v3)
  {
    sub_1C440BDF8();
    v43 = v4;
    sub_1C4420C3C(v5, &qword_1EC0BFFB8, &qword_1C4F3E0A8);
    v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v7 = sub_1C441E458();
    sub_1C441804C(v7, sel_setDateFormat_);

    v8 = [objc_opt_self() localTimeZone];
    sub_1C44EB888();

    sub_1C4EF9FF8();
    v9 = sub_1C441C348();
    v11 = v10(v9);
    sub_1C441804C(v11, sel_setTimeZone_);

    v12 = sub_1C4EF93D8();
    sub_1C44099C4(v12);
    sub_1C4EF93C8();
    sub_1C4471CC8();
    sub_1C4EF9388();
    *v1 = v6;
    v13 = sub_1C4424CF8();
    v14(v13);
    v15 = v6;
    sub_1C4EF93A8();
    v16 = objc_autoreleasePoolPush();
    sub_1C443DF88();
    sub_1C456902C(&qword_1EC0BFFD0, &qword_1C4F3E0B8);
    sub_1C497B1B4();
    sub_1C44365AC();
    sub_1C4EF93B8();
    if (v43)
    {

      objc_autoreleasePoolPop(v2);

      sub_1C4462420(v0[42]);

      sub_1C43FBDA0();
      sub_1C4441954();

      __asm { BRAA            X1, X16 }
    }

    sub_1C444AD04(v0[18]);
    objc_autoreleasePoolPop(v2);
    sub_1C4F01178();
    sub_1C4404044();
    sub_1C4F01158();

    sub_1C4411F20();
    v36 = sub_1C4404044();
    sub_1C4434000(v36, v37);

    sub_1C44BBE34();
    sub_1C4441954();

    __asm { BRAA            X3, X16 }
  }

  sub_1C4460858();
  sub_1C440A9B8();
  sub_1C44CDA7C();
  sub_1C4EF9AD8();
  sub_1C44409E0(v19);
  sub_1C44602A0(v20);
  sub_1C440F834();
  v22 = *(v21 + 32);
  v23 = sub_1C4405DA0();
  v22(v23);
  v24 = sub_1C440E450();
  v22(v24);
  sub_1C4451334();
  v26 = *(v25 + 8);
  *v27 = *v25;
  *(v27 + 8) = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v0[43];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C441BA3C();
    sub_1C458E3A8();
    v29 = v40;
  }

  sub_1C441CB28();
  if (v31)
  {
    sub_1C4413364(v30);
    sub_1C458E3A8();
    v29 = v41;
  }

  sub_1C441FD60();
  sub_1C44CDA7C();
  v0[43] = v29;
  sub_1C43FCE74();
  sub_1C4441954();

  return MEMORY[0x1EEE6DFA0](v32, v33, v34);
}

uint64_t sub_1C4974678(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = sub_1C456902C(&qword_1EC0BFFF8, &qword_1C4F3E0C8);
  v1[5] = swift_task_alloc();
  v2 = sub_1C456902C(&qword_1EC0B8B88, &qword_1C4F3E0D0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1C4F01188();
  v1[9] = swift_task_alloc();
  v3 = sub_1C4EF9398();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  sub_1C4EF9378();
  v1[13] = swift_task_alloc();
  v4 = sub_1C4EFA018();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0C0000, &qword_1C4F3E0D8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = sub_1C456902C(&qword_1EC0C0008, &qword_1C4F3E0E0);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0C0010, &qword_1C4F3E0E8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = sub_1C456902C(&qword_1EC0C0018, &qword_1C4F3E0F0);
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4974A14, 0, 0);
}

uint64_t sub_1C4974A14()
{
  sub_1C43FEAEC();
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 24);
  *(v0 + 304) = *(v2 + 44);
  sub_1C43FF010();
  sub_1C440BAA8(v4, v5, v6, v7);
  *(v0 + 308) = *(sub_1C456902C(&qword_1EC0C0020, &qword_1C4F3E0F8) + 28);
  sub_1C43FF010();
  sub_1C440BAA8(v8, v9, v10, v11);
  *v1 = v3;
  v12 = *(v2 + 48);
  *(v0 + 312) = v12;
  *(v1 + v12) = 1;
  *(v0 + 288) = MEMORY[0x1E69E7CC0];
  v13 = v3;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C4974AF8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  sub_1C43FCF64();
  sub_1C440BAA8(v3, v4, v5, v6);
  *(v2 + v1) = 1;
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 296) = v7;
  *v7 = v8;
  v9 = sub_1C44223A4(v7);

  return sub_1C4ADDF04(v9);
}

uint64_t sub_1C4974B8C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4974C70()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v3 = v0[23];
  if (sub_1C4401818(v3) == 1)
  {
    sub_1C4420C3C(v0[32], &qword_1EC0C0010, &qword_1C4F3E0E8);
    sub_1C4420C3C(v3, &qword_1EC0C0000, &qword_1C4F3E0D8);
    sub_1C440EF74();
    sub_1C4401E28();
    sub_1C440BAA8(v4, v5, v6, v7);
LABEL_29:
    sub_1C43FEAF8();
    sub_1C43FEA3C();

    return MEMORY[0x1EEE6DFA0](v89, v90, v91);
  }

  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[22];
  sub_1C43FD2BC();
  v12 = v11;
  sub_1C44CDA7C();
  sub_1C44BBC6C();
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v13 + 16))(v10, v9);
  sub_1C44167B0();
  sub_1C4420C3C(v9, &qword_1EC0C0008, &qword_1C4F3E0E0);
  *v8 = v2;
  *(v8 + 8) = v1;
  *(v8 + 16) = v12;
  sub_1C43FF010();
  sub_1C440BAA8(v14, v15, v16, v17);
  sub_1C4404C28();
  sub_1C44DDE2C();
  sub_1C4410EC0();
  if (v18)
  {
    v19 = v0[21];
    v20 = &qword_1EC0C0000;
    v21 = &qword_1C4F3E0D8;
    goto LABEL_6;
  }

  v22 = v0[20];
  sub_1C44CDA7C();
  sub_1C442BBB8();
  sub_1C44DDE2C();
  v23 = sub_1C4401818(v22);
  sub_1C442B8EC();
  sub_1C4420C3C(v24, v25, v26);
  if (v23 == 1)
  {
    if (*(v0[28] + *(v0[24] + 28)))
    {
      v27 = sub_1C43FBEF8();
      sub_1C4420C3C(v27, v28, &qword_1C4F3E0D8);
      sub_1C4402B58();
      sub_1C44CDA7C();
      sub_1C43FF010();
      sub_1C440BAA8(v29, v30, v31, v32);
      sub_1C440EFD0();
LABEL_17:
      sub_1C43FF010();
      goto LABEL_18;
    }

    v20 = &qword_1EC0C0008;
    v21 = &qword_1C4F3E0E0;
    v19 = v0[28];
LABEL_6:
    sub_1C4420C3C(v19, v20, v21);
    goto LABEL_19;
  }

  sub_1C44DDE2C();
  sub_1C4410EC0();
  if (!v18)
  {
    v44 = v0[27];
    v45 = v0[24];
    sub_1C44CDA7C();
    if (*(v44 + *(v45 + 28)))
    {
      sub_1C4422368();
      sub_1C4420C3C(v46, v47, v48);
      sub_1C4461CDC();
      sub_1C4425D24();
      sub_1C4422368();
      sub_1C4420C3C(v49, v50, v51);
      sub_1C442F6CC();
    }

    else
    {
      sub_1C4422368();
      sub_1C4420C3C(v52, v53, v54);
      v55 = sub_1C4404BCC();
      sub_1C4420C3C(v55, v56, &qword_1C4F3E0D8);
      sub_1C440CCA4();
      sub_1C44CDA7C();
      v57 = sub_1C4425D24();
      sub_1C4420C3C(v57, &qword_1EC0C0000, &qword_1C4F3E0D8);
    }

    goto LABEL_17;
  }

  v33 = v0[24];
  sub_1C442B8EC();
  sub_1C4420C3C(v34, v35, v36);
  sub_1C442B8EC();
  sub_1C4420C3C(v37, v38, v39);
  sub_1C44CDA7C();
  sub_1C43FBD94();
  v43 = v33;
LABEL_18:
  sub_1C440BAA8(v40, v41, v42, v43);
LABEL_19:
  sub_1C4429060();
  sub_1C4405CEC();
  if (!v18)
  {
    sub_1C443E374();
    sub_1C44CDA7C();
    sub_1C44DDE2C();
    sub_1C4405CEC();
    if (!v18)
    {
      v69 = v0[30];
      v71 = v0[25];
      v70 = v0[26];
      v72 = v0[22];
      sub_1C44CDA7C();
      v73 = sub_1C43FBEF8();
      sub_1C496D918(v73, v74, v75);
      sub_1C447CC14(v71);
      sub_1C447CC14(v70);
      sub_1C4420C3C(v72, &qword_1EC0C0000, &qword_1C4F3E0D8);
      sub_1C447CC14(v69);
      goto LABEL_24;
    }

    sub_1C4420C3C(v0[26], &qword_1EC0C0008, &qword_1C4F3E0E0);
  }

  v58 = v0[30];
  v59 = v0[4];
  sub_1C4422368();
  sub_1C4420C3C(v60, v61, v62);
  sub_1C4420C3C(v58, &qword_1EC0C0008, &qword_1C4F3E0E0);
  sub_1C4422368();
  sub_1C4420C3C(v63, v64, v65);
  sub_1C43FCF64();
  sub_1C440BAA8(v66, v67, v68, v59);
LABEL_24:
  v76 = v0[31];
  sub_1C4410EC0();
  if (!v18)
  {
    sub_1C4422368();
    sub_1C4420C3C(v82, v83, v84);
    sub_1C4404BCC();
    sub_1C44CDA7C();
    sub_1C43FF010();
    sub_1C440BAA8(v85, v86, v87, v88);
    sub_1C4423BEC();
    goto LABEL_29;
  }

  sub_1C4420C3C(v76, &qword_1EC0C0010, &qword_1C4F3E0E8);
  swift_task_alloc();
  sub_1C43FBE70();
  v0[37] = v77;
  *v77 = v78;
  sub_1C44223A4(v77);
  sub_1C43FEA3C();

  return sub_1C4ADDF04(v79);
}

uint64_t sub_1C497529C()
{
  v2 = *(v0 + 32);
  v3 = sub_1C440EF74();
  if (sub_1C44157D4(v3, v4, v2) == 1)
  {
    sub_1C441B430();
    sub_1C4420C3C(v5, &qword_1EC0C0018, &qword_1C4F3E0F0);
    v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v7 = sub_1C441E458();
    sub_1C448F148(v7, sel_setDateFormat_);

    v8 = [objc_opt_self() localTimeZone];
    sub_1C443EF28();

    sub_1C4EF9FF8();
    v9 = sub_1C43FC54C();
    v11 = v10(v9);
    sub_1C448F148(v11, sel_setTimeZone_);

    v12 = sub_1C4EF93D8();
    sub_1C44099C4(v12);
    sub_1C4EF93C8();
    sub_1C447E2E8();
    sub_1C4EF9388();
    *v2 = v6;
    v13 = sub_1C442A44C();
    v14(v13);
    v15 = v6;
    sub_1C447F534();
    v16 = objc_autoreleasePoolPush();
    sub_1C443DF88();
    sub_1C456902C(&qword_1EC0C0028, &qword_1C4F3E100);
    sub_1C497B264();
    sub_1C44365AC();
    v17 = sub_1C4EF93B8();
    v19 = v18;

    objc_autoreleasePoolPop(v1);
    sub_1C4F01178();
    sub_1C4F01158();

    sub_1C4411F20();
    sub_1C4434000(v17, v19);

    sub_1C43FDA40();
    sub_1C4458730();

    __asm { BRAA            X3, X16 }
  }

  sub_1C440A9B8();
  sub_1C44CDA7C();
  v20 = sub_1C4EF9AD8();
  v22 = sub_1C4461FD4(v20, v21);
  sub_1C44602A0(v22);
  sub_1C440F834();
  v24 = *(v23 + 32);
  v25 = sub_1C4405DA0();
  v24(v25);
  v26 = sub_1C440E450();
  v24(v26);
  sub_1C4451334();
  v28 = *v27;
  v30 = *(v27 + 1);
  v29 = *(v27 + 2);
  *v31 = v28;
  *(v31 + 8) = v30;
  *(v31 + 16) = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v0 + 288);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C441BA3C();
    sub_1C458E36C();
    v33 = v42;
  }

  sub_1C441CB28();
  if (v35)
  {
    sub_1C4413364(v34);
    sub_1C458E36C();
    v33 = v43;
  }

  sub_1C441FD60();
  sub_1C44CDA7C();
  *(v0 + 288) = v33;
  sub_1C43FCE74();
  sub_1C4458730();

  return MEMORY[0x1EEE6DFA0](v36, v37, v38);
}

uint64_t sub_1C49757E8(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
  v1[5] = swift_task_alloc();
  v2 = sub_1C456902C(&qword_1EC0B8B90, &qword_1C4F0DFC0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1C4F01188();
  v1[9] = swift_task_alloc();
  v3 = sub_1C4EF9398();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  sub_1C4EF9378();
  v1[13] = swift_task_alloc();
  v4 = sub_1C4EFA018();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0C0048, &qword_1C4F3E108);
  v1[17] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BFE70, &unk_1C4F3DDF0);
  v1[18] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0C0050, &qword_1C4F3E110);
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4975AA8, 0, 0);
}

uint64_t sub_1C4975AA8()
{
  sub_1C43FBCD4();
  sub_1C44DDE2C();
  sub_1C43FBC98();
  sub_1C497B524();
  *(v0 + 160) = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 168) = v1;
  *v1 = v2;
  sub_1C442F244(v1);

  return sub_1C4A89784();
}

uint64_t sub_1C4975B5C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4976074(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1C456902C(&qword_1EC0C0070, &unk_1C4F3E120);
  v1[7] = swift_task_alloc();
  v2 = sub_1C456902C(&qword_1EC0B8B98, &qword_1C4F0DFC8);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_1C4F01188();
  v1[11] = swift_task_alloc();
  v3 = sub_1C4EF9398();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  sub_1C4EF9378();
  v1[15] = swift_task_alloc();
  v4 = sub_1C4EFA018();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0C0078, &qword_1C4F3E130);
  v1[19] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0C0080, &qword_1C4F3E138);
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BFE68, &unk_1C4F6E0B0);
  v1[23] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0C0088, &qword_1C4F3E140);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C497639C, 0, 0);
}

uint64_t sub_1C497639C()
{
  sub_1C4404D98();
  sub_1C448840C();
  sub_1C440CCA4();
  sub_1C44DDE2C();
  v1 = sub_1C4404C28();
  v2(v1);
  v3 = sub_1C4409E0C(&qword_1EC0C0090, &qword_1EC0C0080, &qword_1C4F3E138);
  sub_1C447CDD0(v3);
  sub_1C4422368();
  sub_1C4420C3C(v4, v5, v6);
  *(v0 + 200) = MEMORY[0x1E69E7CC0];
  v7 = sub_1C4402120();
  sub_1C456902C(v7, v8);
  sub_1C44006D4(&qword_1EC0C00A0);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 208) = v9;
  *v9 = v10;
  v11 = sub_1C443514C(v9);

  return MEMORY[0x1EEE6D8C8](v11);
}

uint64_t sub_1C49764D4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49765D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C447F160();
  sub_1C4441100();
  sub_1C4405CEC();
  if (v23)
  {
    v24 = v21[25];
    sub_1C440BDF8();
    v77 = v25;
    v78 = v26;
    sub_1C4420C3C(v27, &qword_1EC0C0088, &qword_1C4F3E140);
    v28 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v29 = sub_1C441E458();
    sub_1C441804C(v29, sel_setDateFormat_);

    v30 = [objc_opt_self() localTimeZone];
    sub_1C44EB888();

    sub_1C4EF9FF8();
    v31 = sub_1C441C348();
    v33 = v32(v31);
    sub_1C441804C(v33, sel_setTimeZone_);

    v34 = sub_1C4EF93D8();
    sub_1C44099C4(v34);
    sub_1C4EF93C8();
    sub_1C4471CC8();
    sub_1C4EF9388();
    *v22 = v28;
    v35 = sub_1C4424CF8();
    v36(v35);
    v37 = v28;
    sub_1C4EF93A8();
    v38 = objc_autoreleasePoolPush();
    v21[4] = v24;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0C00A8, &qword_1C4F3E150);
    v39 = sub_1C497B3C4();
    sub_1C4428EA4(v39);
    if (v20)
    {

      objc_autoreleasePoolPop(v38);

      sub_1C4414608();
      v79 = v21[7];

      sub_1C43FC560();
      sub_1C4416034();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, v77, v79, a17, a18, a19, a20);
    }

    else
    {
      sub_1C441AF54();
      objc_autoreleasePoolPop(v38);
      sub_1C4F01178();
      sub_1C4404DC8();
      sub_1C4F01158();

      sub_1C4411F20();
      v65 = sub_1C4404DC8();
      sub_1C4434000(v65, v66);

      sub_1C43FDA40();
      sub_1C4416034();

      return v70(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, v77, v78, a17, a18, a19, a20);
    }
  }

  else
  {
    sub_1C4460858();
    sub_1C440A9B8();
    sub_1C44CDA7C();
    sub_1C4EF9AD8();
    sub_1C44409E0(v49);
    sub_1C44602A0(v50);
    sub_1C440F834();
    v52 = *(v51 + 32);
    v53 = sub_1C4405DA0();
    v52(v53);
    v54 = sub_1C440E450();
    v52(v54);
    sub_1C4422B34();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v21[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458E2F4();
      v56 = v75;
    }

    sub_1C441CB28();
    if (v58)
    {
      sub_1C4413364(v57);
      sub_1C458E2F4();
      v56 = v76;
    }

    sub_1C441FD60();
    sub_1C44CDA7C();
    v21[25] = v56;
    v59 = sub_1C4402120();
    sub_1C456902C(v59, v60);
    sub_1C44006D4(&qword_1EC0C00A0);
    swift_task_alloc();
    sub_1C43FBE70();
    v21[26] = v61;
    *v61 = v62;
    sub_1C443514C(v61);
    sub_1C4416034();

    return MEMORY[0x1EEE6D8C8](v63);
  }
}

uint64_t sub_1C4976A44()
{
  sub_1C43FBCD4();
  v0[2] = v0[27];
  v0[28] = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4976AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  sub_1C4424740();
  v13 = sub_1C4F028C8();
  if (v13)
  {
    v25 = v13;
  }

  else
  {
    v14 = *(v12 + 216);
    v25 = sub_1C43FFB2C(*(v12 + 224), MEMORY[0x1E69E7288]);
    *v15 = v14;
  }

  sub_1C4420C3C(*(v12 + 192), &qword_1EC0C0088, &qword_1C4F3E140);

  sub_1C4414608();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_1C4976BE4(uint64_t a1)
{
  v1[13] = a1;
  v1[14] = sub_1C456902C(&qword_1EC0C00C0, qword_1C4F4DC50);
  v1[15] = swift_task_alloc();
  v2 = sub_1C456902C(&qword_1EC0B8BA0, &qword_1C4F0DFD0);
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  sub_1C4F01188();
  v1[19] = swift_task_alloc();
  v3 = sub_1C4EF9398();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  sub_1C4EF9378();
  v1[23] = swift_task_alloc();
  v4 = sub_1C4EFA018();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0C00C8, &qword_1C4F3E158);
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4976E34, 0, 0);
}

uint64_t sub_1C4976E34()
{
  sub_1C43FCF70();
  sub_1C44DDE2C();
  sub_1C4AB4ED4(v0 + 16);
  sub_1C442BBB8();
  sub_1C4420C3C(v1, v2, v3);
  *(v0 + 224) = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 232) = v4;
  *v4 = v5;
  sub_1C441D298(v4);

  return sub_1C4AB5060();
}

uint64_t sub_1C4976EF0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4976FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = v18[14];
  v20 = sub_1C440EF74();
  v22 = sub_1C44157D4(v20, v21, v19);
  v23 = v18[28];
  if (v22 == 1)
  {
    v24 = v18[22];
    sub_1C4420C3C((v18 + 2), &qword_1EC0C00D0, &qword_1C4F3E160);
    v25 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v26 = sub_1C441E458();
    sub_1C448F148(v26, sel_setDateFormat_);

    v27 = [objc_opt_self() localTimeZone];
    sub_1C443EF28();

    sub_1C4EF9FF8();
    v28 = sub_1C43FC54C();
    v30 = v29(v28);
    sub_1C448F148(v30, sel_setTimeZone_);

    v31 = sub_1C4EF93D8();
    sub_1C44099C4(v31);
    sub_1C4EF93C8();
    sub_1C447E2E8();
    sub_1C4EF9388();
    *v24 = v25;
    v32 = sub_1C442A44C();
    v33(v32);
    v34 = v25;
    sub_1C447F534();
    v35 = objc_autoreleasePoolPush();
    v18[12] = v23;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0C00D8, &qword_1C4F3E168);
    v36 = sub_1C497B474();
    sub_1C44803A0(v36);
    v72 = v18[23];
    v73 = v18[22];
    v74 = v18[18];
    v75 = v18[15];

    if (v24)
    {
      objc_autoreleasePoolPop(v35);

      sub_1C43FC560();
      sub_1C4409BA4();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, v72, v73, v74, v75, a15, a16, a17, a18);
    }

    else
    {
      objc_autoreleasePoolPop(v35);
      sub_1C4F01178();
      sub_1C4404044();
      sub_1C4F01158();

      sub_1C4411F20();
      v60 = sub_1C4404044();
      sub_1C4434000(v60, v61);

      sub_1C43FDA40();
      sub_1C4409BA4();

      return v65(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, v72, v73, v74, v75, a15, a16, a17, a18);
    }
  }

  else
  {
    sub_1C440A9B8();
    sub_1C44CDA7C();
    v46 = sub_1C4EF9AD8();
    v48 = sub_1C4461FD4(v46, v47);
    sub_1C44602A0(v48);
    sub_1C440F834();
    v50 = *(v49 + 32);
    v51 = sub_1C4405DA0();
    v50(v51);
    v52 = sub_1C440E450();
    v50(v52);
    sub_1C4422B34();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v18[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441BA3C();
      sub_1C458E2B8();
      v54 = v70;
    }

    sub_1C441CB28();
    if (v56)
    {
      sub_1C4413364(v55);
      sub_1C458E2B8();
      v54 = v71;
    }

    sub_1C441FD60();
    sub_1C44CDA7C();
    v18[28] = v54;
    swift_task_alloc();
    sub_1C43FBE70();
    v18[29] = v57;
    *v57 = v58;
    sub_1C441D298(v57);
    sub_1C4409BA4();

    return sub_1C4AB5060();
  }
}

uint64_t InternalXPC.Server.contextData(forSource:start:end:)()
{
  sub_1C43FBCD4();
  v1[116] = v0;
  v1[115] = v2;
  v1[114] = v3;
  v1[113] = v4;
  v1[112] = v5;
  v6 = sub_1C456902C(&qword_1EC0BFE68, &unk_1C4F6E0B0);
  sub_1C43FBD18(v6);
  v1[117] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0BFE70, &unk_1C4F3DDF0);
  sub_1C43FBD18(v7);
  v1[118] = sub_1C43FBE7C();
  v8 = sub_1C456902C(&qword_1EC0B8E18, &qword_1C4F0E460);
  sub_1C43FBD18(v8);
  v1[119] = sub_1C43FBE7C();
  v9 = sub_1C456902C(&qword_1EC0B8E48, &unk_1C4F0E6D0);
  sub_1C43FBD18(v9);
  v1[120] = sub_1C43FBE7C();
  v10 = sub_1C456902C(&qword_1EC0BF948, &qword_1C4F3B470);
  sub_1C43FBD18(v10);
  v1[121] = sub_1C43FBE7C();
  v11 = type metadata accessor for Configuration(0);
  v1[122] = v11;
  sub_1C43FBD18(v11);
  v1[123] = sub_1C43FE604();
  v1[124] = swift_task_alloc();
  v12 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[125] = v12;
  sub_1C43FBD18(v12);
  v1[126] = sub_1C43FE604();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v13 = sub_1C456902C(&qword_1EC0BCD40, &qword_1C4F2A7C8);
  sub_1C43FBD18(v13);
  v1[129] = sub_1C43FBE7C();
  v14 = type metadata accessor for LOISessionDataAsyncSequence(0);
  sub_1C43FBD18(v14);
  v1[130] = sub_1C43FBE7C();
  v15 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v1[131] = v15;
  sub_1C43FBD18(v15);
  v1[132] = sub_1C43FE604();
  v1[133] = swift_task_alloc();
  v16 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[134] = v16;
  sub_1C43FBD18(v16);
  v1[135] = sub_1C43FE604();
  v1[136] = swift_task_alloc();
  v17 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1C49783E0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  v5[138] = v1;

  if (!v1)
  {
    v5[139] = v0;
    v5[140] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C49785E8()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  v5[143] = v1;

  if (!v1)
  {
    v5[144] = v0;
    v5[145] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4978810()
{
  sub_1C43FEAEC();
  sub_1C445BDA0();
  sub_1C43FBDAC();
  *v5 = v4;
  *v5 = *v2;
  v4[150] = v1;

  if (!v1)
  {
    v4[151] = v0;
    v4[152] = v3;
  }

  sub_1C442FEC0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4978A3C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  v5[154] = v1;

  if (!v1)
  {
    v5[155] = v0;
    v5[156] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4978C44()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  v5[158] = v1;

  if (!v1)
  {
    v5[159] = v0;
    v5[160] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4978E4C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  v5[162] = v1;

  if (!v1)
  {
    v5[163] = v0;
    v5[164] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4979064()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  v5[166] = v1;

  if (!v1)
  {
    v5[167] = v0;
    v5[168] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C497927C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  v5[171] = v1;

  if (!v1)
  {
    v5[172] = v0;
    v5[173] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4979484()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  v5[176] = v1;

  if (!v1)
  {
    v5[177] = v0;
    v5[178] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C49796AC()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  v5[181] = v1;

  if (!v1)
  {
    v5[182] = v0;
    v5[183] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C49798D0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C4417428();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  v5[187] = v1;

  if (!v1)
  {
    v5[188] = v0;
    v5[189] = v3;
  }

  sub_1C442FEC0();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4979AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);
  sub_1C4414C78(*(v18 + 1040));
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C4979BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  sub_1C4495D0C();
  sub_1C45C8228();
  swift_deallocClassInstance();
  sub_1C4420C3C(v19, &qword_1EC0BCD40, &qword_1C4F2A7C8);
  sub_1C4420C3C(v18, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C4979D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);

  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C4979E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);
  sub_1C49370F0(v18 + 200);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C4979F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);
  sub_1C49370F0(v18 + 16);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C4979FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);
  sub_1C4420C3C(*(v18 + 968), &qword_1EC0BF948, &qword_1C4F3B470);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);
  sub_1C4420C3C(*(v18 + 960), &qword_1EC0B8E48, &unk_1C4F0E6D0);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);

  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  sub_1C44C1250();
  sub_1C4A8B130();
  swift_deallocClassInstance();
  sub_1C4420C3C(v19, &qword_1EC0BFE70, &unk_1C4F3DDF0);
  sub_1C4420C3C(v18, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);
  v20 = *(v18 + 936);

  sub_1C4420C3C(v20, &qword_1EC0BFE68, &unk_1C4F6E0B0);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1C4433C40();
  sub_1C444FD14();
  v19 = *(v18 + 1088);

  sub_1C4420C3C(v18 + 696, &qword_1EC0BFE78, &unk_1C4F4DCA0);
  sub_1C4420C3C(v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4419A6C();

  sub_1C4433540();
  sub_1C4409BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C497A6FC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v8 = sub_1C4EF9CD8();
  v5[3] = v8;
  v5[4] = *(v8 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = _Block_copy(a4);
  sub_1C4F01138();
  v5[8] = v9;
  sub_1C4EF9C78();
  sub_1C4EF9C78();
  a5;
  v10 = swift_task_alloc();
  v5[9] = v10;
  *v10 = v5;
  v10[1] = sub_1C497A87C;

  return InternalXPC.Server.contextData(forSource:start:end:)();
}

uint64_t sub_1C497A87C()
{
  sub_1C4404D98();
  v3 = v0;
  sub_1C445BDA0();
  v4 = v2;
  sub_1C43FBDAC();
  *v5 = v2;
  v6 = v2[2];
  v7 = *v1;
  *v5 = *v1;

  v8 = v2[6];
  v9 = v2[3];
  v10 = *(v2[4] + 8);
  v10(v2[5], v9);
  v10(v8, v9);
  if (v3)
  {
    v11 = sub_1C4EF9798();

    v12 = v11;
  }

  else
  {
    v13 = sub_1C4F01108();

    v12 = v13;
  }

  v14 = v4[7];
  v15 = sub_1C4402B58();
  v16(v15);

  _Block_release(v14);

  v17 = *(v7 + 8);

  return v17();
}

id sub_1C497AAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
  v12[4] = &off_1F43F72C0;
  v12[0] = a1;
  v11[3] = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
  v11[4] = &off_1F43F7318;
  v11[0] = a2;
  sub_1C442E860(v12, a4 + 16);
  sub_1C442E860(v11, a4 + 56);
  v8 = objc_allocWithZone(MEMORY[0x1E69B88E0]);
  result = [v8 init];
  if (result)
  {
    v10 = result;
    sub_1C440962C(v12);
    sub_1C440962C(v11);
    *(a4 + 96) = v10;
    *(a4 + 104) = a3;
    return a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C497AB88()
{
  result = qword_1EC0BFE80;
  if (!qword_1EC0BFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFE80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RouteData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextDataSources(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C497AD84()
{
  sub_1C43FEAEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;
  sub_1C442B8EC();

  return v2();
}

unint64_t sub_1C497AE44()
{
  result = qword_1EC0BFEB0;
  if (!qword_1EC0BFEB0)
  {
    sub_1C4572308(&qword_1EC0BFEA8, &qword_1C4F3DFB0);
    sub_1C4401CBC(&qword_1EC0BFEB8, &qword_1EC0B8B48, &qword_1C4F3DFA0, &unk_1C4F3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFEB0);
  }

  return result;
}

unint64_t sub_1C497AEF4()
{
  result = qword_1EC0BFEF8;
  if (!qword_1EC0BFEF8)
  {
    sub_1C4572308(&qword_1EC0BFEF0, &unk_1C4F3DFE0);
    sub_1C4401CBC(&qword_1EC0BFF00, &qword_1EC0B8B50, &unk_1C4F0DF80, &unk_1C4F3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFEF8);
  }

  return result;
}

unint64_t sub_1C497AFA4()
{
  result = qword_1EC0BFF10;
  if (!qword_1EC0BFF10)
  {
    sub_1C4572308(&qword_1EC0BFF08, &qword_1C4F3DFF8);
    sub_1C4401CBC(&qword_1EC0BFF18, &qword_1EC0B8B58, &qword_1C4F3DFF0, &unk_1C4F3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFF10);
  }

  return result;
}

unint64_t sub_1C497B054()
{
  result = qword_1EC0BFF30;
  if (!qword_1EC0BFF30)
  {
    sub_1C4572308(&qword_1EC0BFF28, &qword_1C4F3E010);
    sub_1C4401CBC(&qword_1EC0BFF38, &qword_1EC0B8B70, &unk_1C4F0DFA0, &unk_1C4F3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFF30);
  }

  return result;
}

unint64_t sub_1C497B104()
{
  result = qword_1EC0BFF80;
  if (!qword_1EC0BFF80)
  {
    sub_1C4572308(&qword_1EC0BFF78, &qword_1C4F3E068);
    sub_1C4401CBC(&qword_1EC0BFF88, &qword_1EC0B8B78, &qword_1C4F3E020, &unk_1C4F3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFF80);
  }

  return result;
}

unint64_t sub_1C497B1B4()
{
  result = qword_1EC0BFFD8;
  if (!qword_1EC0BFFD8)
  {
    sub_1C4572308(&qword_1EC0BFFD0, &qword_1C4F3E0B8);
    sub_1C4401CBC(&qword_1EC0BFFE0, &qword_1EC0B8B80, &unk_1C4F0DFB0, &unk_1C4F3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFFD8);
  }

  return result;
}

unint64_t sub_1C497B264()
{
  result = qword_1EC0C0030;
  if (!qword_1EC0C0030)
  {
    sub_1C4572308(&qword_1EC0C0028, &qword_1C4F3E100);
    sub_1C4401CBC(&qword_1EC0C0038, &qword_1EC0B8B88, &qword_1C4F3E0D0, &unk_1C4F3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0030);
  }

  return result;
}

unint64_t sub_1C497B314()
{
  result = qword_1EC0C0060;
  if (!qword_1EC0C0060)
  {
    sub_1C4572308(&qword_1EC0C0058, &qword_1C4F3E118);
    sub_1C4401CBC(&qword_1EC0C0068, &qword_1EC0B8B90, &qword_1C4F0DFC0, &unk_1C4F3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0060);
  }

  return result;
}

unint64_t sub_1C497B3C4()
{
  result = qword_1EC0C00B0;
  if (!qword_1EC0C00B0)
  {
    sub_1C4572308(&qword_1EC0C00A8, &qword_1C4F3E150);
    sub_1C4401CBC(&qword_1EC0C00B8, &qword_1EC0B8B98, &qword_1C4F0DFC8, &unk_1C4F3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C00B0);
  }

  return result;
}

unint64_t sub_1C497B474()
{
  result = qword_1EC0C00E0;
  if (!qword_1EC0C00E0)
  {
    sub_1C4572308(&qword_1EC0C00D8, &qword_1C4F3E168);
    sub_1C4401CBC(qword_1EC0C00E8, &qword_1EC0B8BA0, &qword_1C4F0DFD0, &unk_1C4F3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C00E0);
  }

  return result;
}

uint64_t sub_1C497B524()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C497B57C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C497B614(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v7 + 80);
  v14 = *(*(v6 - 8) + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v17 = v14 + v13;
  v18 = v14 + v15;
  if (a2 <= v12)
  {
LABEL_25:
    v26 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
    if (v8 >= v11)
    {
      v9 = v6;
    }

    else
    {
      v26 = (v18 + ((v17 + v26) & ~v13)) & ~v15;
      v8 = v11;
    }

    return sub_1C44157D4(v26, v8, v9);
  }

  v19 = ((v18 + ((v17 + ((v13 + 16) & ~v13)) & ~v13)) & ~v15) + v16;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v12 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v22 < 2)
    {
LABEL_24:
      if (v12)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_24;
  }

LABEL_14:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    switch(v24)
    {
      case 2:
        v25 = *a1;
        break;
      case 3:
        v25 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v25 = *a1;
        break;
      default:
        v25 = *a1;
        break;
    }
  }

  else
  {
    v25 = 0;
  }

  return v12 + (v25 | v23) + 1;
}

void sub_1C497B864(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v9 + 80);
  v16 = *(*(v8 - 8) + 64);
  v17 = *(v12 + 80);
  v18 = ((v16 + v17 + ((v16 + v15 + ((v15 + 16) & ~v15)) & ~v15)) & ~v17) + *(v12 + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v24))
    {
      v20 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v20 = v25;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 >= a2)
  {
    v23 = ~v15;
    switch(v20)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          v27 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & v23;
          if (v10 >= v13)
          {
            v28 = a2;
            v11 = v8;
          }

          else
          {
            v27 = (v16 + v17 + ((v16 + v15 + v27) & v23)) & ~v17;
            v28 = a2;
            v10 = v13;
          }

          sub_1C440BAA8(v27, v28, v10, v11);
        }

        break;
    }
  }

  else
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v26 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v18 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        a1[v18] = v22;
        break;
      case 2:
        *&a1[v18] = v22;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v18] = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1C497BB70(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t InternalXPC.Server.ECRBenchmarkError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02248();

  MEMORY[0x1C6940010](v1, v2);
  return 0xD000000000000015;
}

uint64_t InternalXPC.Server.vectorSearchBenchmark(with:)(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_1C4F00908();
  v2[24] = v3;
  sub_1C43FCF7C(v3);
  v2[25] = v4;
  v2[26] = sub_1C43FBE7C();
  v5 = sub_1C4F008B8();
  v2[27] = v5;
  sub_1C43FCF7C(v5);
  v2[28] = v6;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = sub_1C4F008F8();
  v2[32] = v7;
  sub_1C43FCF7C(v7);
  v2[33] = v8;
  v2[34] = sub_1C43FBE7C();
  v9 = sub_1C4EFF348();
  v2[35] = v9;
  sub_1C43FCF7C(v9);
  v2[36] = v10;
  v2[37] = sub_1C43FBE7C();
  v11 = sub_1C4F01188();
  v2[38] = v11;
  sub_1C43FCF7C(v11);
  v2[39] = v12;
  v2[40] = sub_1C43FBE7C();
  v2[41] = type metadata accessor for VectorBenchmarkConfig(0);
  v2[42] = sub_1C43FBE7C();
  v13 = sub_1C4EF98F8();
  v2[43] = v13;
  sub_1C43FCF7C(v13);
  v2[44] = v14;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C497BFDC, 0, 0);
}

uint64_t sub_1C497BFDC()
{
  if (qword_1EDDFA678 != -1)
  {
LABEL_67:
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "InternalXPC: vectorSearchBenchmark", v4, 2u);
    sub_1C43FBE2C();
  }

  v5 = v0[46];
  v6 = v0[43];
  v7 = v0[44];

  sub_1C4EF9838();
  sub_1C4EF98A8();
  v8 = sub_1C4EF9858();
  v10 = v9;
  v13 = *(v7 + 8);
  v12 = v7 + 8;
  v11 = v13;
  v14 = sub_1C43FD2BC();
  (v13)(v14);
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 temporaryDirectory];
  sub_1C4EF98C8();

  v186 = v8;
  v187 = v10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](1954051118, 0xE400000000000000);
  sub_1C4EF9888();

  v13(v5, v6);
  v17 = sub_1C4EF98E8();
  v19 = v18;
  v20 = sub_1C43FD2BC();
  (v13)(v20);
  sub_1C4414C9C();
  v21 = sub_1C4F01108();
  v22 = [v15 fileExistsAtPath_];

  if (v22)
  {
    sub_1C4414C9C();
    v23 = sub_1C4F01108();
    v0[21] = 0;
    v24 = [v15 removeItemAtPath:v23 error:v0 + 21];

    v25 = v0[21];
    if (!v24)
    {
      v46 = v0[48];
      v47 = v0[43];
      v48 = v25;

      sub_1C4EF97A8();

      swift_willThrow();
      v44 = v46;
      v45 = v47;
      goto LABEL_13;
    }

    v26 = v25;
  }

  sub_1C4414C9C();
  v27 = sub_1C4F01108();
  sub_1C4B3C50C();
  sub_1C497FB50(v27, v28, v29, 0, v15);

  sub_1C497FBD4();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = sub_1C4414C9C();
  v32 = sub_1C497D440(v30, v31);
  if (!v32)
  {
    v40 = v0[48];
    v41 = v17;
    v42 = v0[43];

    sub_1C497FC18();
    swift_allocError();
    *v43 = v41;
    v43[1] = v19;
    swift_willThrow();

    v44 = v40;
    v45 = v42;
LABEL_13:
    v11(v44, v45);

    v52 = v0[1];

    return v52();
  }

  v33 = v32;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v34 = sub_1C4F00968();
  v35 = sub_1C4F01CF8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    *v36 = 136315138;
    v37 = sub_1C4414C9C();
    *(v36 + 4) = sub_1C441D828(v37, v38, v39);
    _os_log_impl(&dword_1C43F8000, v34, v35, "InternalXPC - vectorSearchBenchmark Output path: %s", v36, 0xCu);
    sub_1C440962C(v186);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  sub_1C4EF9938();
  v50 = v49;
  sub_1C4EF9348();
  swift_allocObject();
  v51 = sub_1C4EF9338();
  sub_1C497FD88(&qword_1EC0C0200, type metadata accessor for VectorBenchmarkConfig, &protocol conformance descriptor for VectorBenchmarkConfig);
  v174 = v50;
  sub_1C4EF9328();
  v163 = v51;
  v181 = v33;
  v160 = v17;
  v169 = v15;
  v164 = v19;
  v166 = v11;
  v168 = v12;
  v54 = v0[41];
  v55 = v0[42];
  v56 = v0[39];
  v57 = v0[40];
  v183 = v0[38];
  sub_1C440E464();
  sub_1C4F02248();
  v0[12] = v186;
  v0[13] = v187;
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FAAA50);
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x626174202020200ALL, 0xEC000000203A656CLL);
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x74656D202020200ALL, 0xED0000203A636972);
  sub_1C4EFFC98();
  sub_1C4F02438();
  MEMORY[0x1C6940010](0x646F6D202020200ALL, 0xEB00000000203A65);
  sub_1C4EFCEB8();
  sub_1C441337C();
  sub_1C497FD88(v58, v59, MEMORY[0x1E69A92A8]);
  v60 = sub_1C4F02858();
  MEMORY[0x1C6940010](v60);

  MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FAAA70);
  v61 = (v55 + *(v54 + 40));
  v62 = v61[1];
  if (v62)
  {
    v63 = *v61;
  }

  else
  {
    v63 = 7104878;
  }

  if (v62)
  {
    v64 = v61[1];
  }

  else
  {
    v64 = 0xE300000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v63, v64);

  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4FAAA90);
  v65 = (v55 + *(v54 + 44));
  v66 = v65[1];
  if (v66)
  {
    v67 = *v65;
  }

  else
  {
    v67 = 7104878;
  }

  if (v66)
  {
    v68 = v65[1];
  }

  else
  {
    v68 = 0xE300000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v67, v68);

  v69 = sub_1C4400714();
  MEMORY[0x1C6940010](v69);
  v70 = v0[13];
  sub_1C4F01178();
  v71 = sub_1C4F01148();
  v73 = v72;
  result = (*(v56 + 8))(v57, v183);
  if (v73 >> 60 == 15)
  {
    goto LABEL_73;
  }

  v74 = sub_1C4EF9A38();
  sub_1C441DFEC(v71, v73);
  [v33 writeData_];

  sub_1C4EF9838();
  type metadata accessor for ViewDatabaseArtifact();
  swift_allocObject();
  sub_1C4BC40B8();
  v158 = v75;
  v159 = v70;
  v76 = v0[42];
  v77 = v0[33];
  v78 = v0[28];
  v79 = v0[25];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF328();
  v80 = 0;
  v175 = v76;
  v177 = (v78 + 16);
  v81 = (v78 + 8);
  v172 = (v79 + 88);
  v178 = *(v76 + 40);
  v179 = *(v178 + 16);
  HIDWORD(v171) = *MEMORY[0x1E69E93E8];
  v162 = (v79 + 8);
  v173 = v78 + 8;
  for (i = (v77 + 8); ; (*i)(v137, v138))
  {
    if (v80 == v179)
    {
      v143 = v0[48];
      v145 = v0[42];
      v144 = v0[43];
      v147 = v0[36];
      v146 = v0[37];
      v148 = v0[35];

      [v181 closeFile];

      sub_1C44251D0(v149, v150, v151, v152, v153, v154, v155, v156, v158, v159, v160, v162, v163, v164, v166, v168, 0x80000001C4FAAAD0, v169, v171, v172, 0x80000001C4FAAAF0, v173, v174);

      (*(v147 + 8))(v146, v148);
      v167(v143, v144);
      sub_1C497FC6C(v145);

      v157 = v0[1];

      return v157(v161, v165);
    }

    if (v80 >= *(v178 + 16))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F008E8();
    sub_1C4F008D8();
    sub_1C4F00898();
    v82 = sub_1C4F008D8();
    v83 = sub_1C4F01E28();
    if (sub_1C4F01F28())
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      v85 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v82, v83, v85, "Vector Search Benchmark", "", v84, 2u);
      sub_1C43FBE2C();
    }

    v87 = v0[30];
    v86 = v0[31];
    v88 = v0[27];

    (*v177)(v87, v86, v88);
    sub_1C4F00948();
    swift_allocObject();
    sub_1C4F00938();
    v184 = sub_1C4EFF338();
    v89 = sub_1C4F008D8();
    sub_1C4F00928();
    v90 = sub_1C4F01E18();
    if (sub_1C4F01F28())
    {
      v91 = v0[26];
      v92 = v0[24];

      sub_1C4F00958();

      v93 = (*v172)(v91, v92);
      v94 = "[Error] Interval already ended";
      if (v93 != HIDWORD(v171))
      {
        (*v162)(v0[26], v0[24]);
        v94 = "";
      }

      v95 = swift_slowAlloc();
      *v95 = 0;
      v96 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v89, v90, v96, "Vector Search Benchmark", v94, v95, 2u);
      sub_1C43FBE2C();
    }

    v97 = v0[29];
    v98 = v0[27];

    v99 = *v81;
    (*v81)(v97, v98);
    v100 = *(v175 + 32);
    v182 = v80;
    v180 = v99;
    if (v100)
    {
      break;
    }

    sub_1C440E464();
    sub_1C4F02248();

    v0[18] = v80;
    v116 = sub_1C4F02858();
    MEMORY[0x1C6940010](v116);

    MEMORY[0x1C6940010](0x7972657571206874, 0xE90000000000000ALL);
    v117 = v184;
    v118 = *(v184 + 16);
    if (v118)
    {
      sub_1C442BC88(MEMORY[0x1E69E7CC0]);
      v119 = 0;
      v108 = v185;
      v120 = v184 + 40;
      while (v119 < *(v117 + 16))
      {
        sub_1C441CB38();
        sub_1C4F02248();
        v0[14] = 0;
        v0[15] = 0;
        sub_1C441E478();
        sub_1C4409E30();
        if (!v0[5])
        {
          goto LABEL_71;
        }

        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        v121 = MEMORY[0x1E69E7068];
        sub_1C4F02438();
        sub_1C440962C(v0 + 2);
        sub_1C443517C();
        sub_1C4F01A98();

        v122 = v0[14];
        v123 = v0[15];
        sub_1C4414CA8();
        if (v114)
        {
          sub_1C442FED0(v124);
          v108 = v185;
        }

        ++v119;
        *(v108 + 16) = v121;
        v125 = v108 + 16 * v117;
        *(v125 + 32) = v122;
        *(v125 + 40) = v123;
        v120 += 16;
        v117 = v184;
        if (v118 == v119)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_66;
    }

    v108 = MEMORY[0x1E69E7CC0];
LABEL_60:
    v0[19] = v108;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4400714();
    v132 = sub_1C4F01048();
    v126 = v133;

    MEMORY[0x1C6940010](v132, v126);

    v134 = sub_1C4400714();
    MEMORY[0x1C6940010](v134);
    sub_1C4F01178();
    sub_1C441BA54();
    v135 = sub_1C4433550();
    result = v136(v135);
    if (v126 >> 60 == 15)
    {
      goto LABEL_72;
    }

LABEL_61:
    v80 = v182 + 1;
    v137 = v0[34];
    v139 = v0[31];
    v138 = v0[32];
    v140 = v0[27];

    v141 = sub_1C4EF9A38();
    sub_1C441DFEC(v108, v126);
    [v181 writeData_];

    v142 = v140;
    v81 = v173;
    v180(v139, v142);
  }

  sub_1C440E464();
  sub_1C4F02248();

  if (v80 >= *(v100 + 16))
  {
    goto LABEL_69;
  }

  v101 = v100 + 16 * v80;
  v102 = *(v101 + 32);
  v103 = *(v101 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v102, v103);

  v104 = sub_1C4400714();
  MEMORY[0x1C6940010](v104);
  v105 = v184;
  v106 = *(v184 + 16);
  if (v106)
  {
    sub_1C442BC88(MEMORY[0x1E69E7CC0]);
    v107 = 0;
    v108 = v185;
    v109 = v184 + 40;
    while (v107 < *(v105 + 16))
    {
      sub_1C441CB38();
      sub_1C4F02248();
      v0[16] = 0;
      v0[17] = 0;
      sub_1C441E478();
      sub_1C4409E30();
      if (!v0[10])
      {
        goto LABEL_70;
      }

      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      v110 = MEMORY[0x1E69E7068];
      sub_1C4F02438();
      sub_1C440962C(v0 + 7);
      sub_1C443517C();
      sub_1C4F01A98();

      v112 = v0[16];
      v111 = v0[17];
      sub_1C4414CA8();
      if (v114)
      {
        sub_1C442FED0(v113);
        v108 = v185;
      }

      ++v107;
      *(v108 + 16) = v110;
      v115 = v108 + 16 * v105;
      *(v115 + 32) = v112;
      *(v115 + 40) = v111;
      v109 += 16;
      v105 = v184;
      if (v106 == v107)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v108 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v0[20] = v108;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4400714();
  v126 = sub_1C4F01048();
  v128 = v127;

  MEMORY[0x1C6940010](v126, v128);

  v129 = sub_1C4400714();
  MEMORY[0x1C6940010](v129);
  sub_1C4F01178();
  sub_1C441BA54();
  v130 = sub_1C4433550();
  result = v131(v130);
  if (v126 >> 60 != 15)
  {
    goto LABEL_61;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

id sub_1C497D440(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F01108();

  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingAtPath_];

  return v3;
}

unint64_t sub_1C497D52C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C497D580(char a1)
{
  result = 25188;
  switch(a1)
  {
    case 1:
      result = 0x656C626174;
      break;
    case 2:
      result = 0x7364726F77;
      break;
    case 3:
      result = 0x73656972657571;
      break;
    case 4:
      result = 1701080941;
      break;
    case 5:
      result = 0x63697274656DLL;
      break;
    case 6:
      result = 0x6C437265746C6966;
      break;
    case 7:
      result = 0x756C6F436E696F6ALL;
      break;
    case 8:
      result = 0x6D756C6F4379656BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C497D66C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1C4F01138();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1C497D73C;

  return InternalXPC.Server.vectorSearchBenchmark(with:)(v5, v7);
}

uint64_t sub_1C497D73C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v4)
  {
    v8 = sub_1C4EF9798();

    v9 = 0;
    v10 = v8;
  }

  else
  {
    v9 = sub_1C4F01108();

    v8 = 0;
    v10 = v9;
  }

  v11 = *(v5 + 24);
  v11[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

unint64_t sub_1C497D910@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C497D52C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C497D940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C497D580(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C497D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C497D578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C497D9B0(uint64_t a1)
{
  v2 = sub_1C497FD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C497D9EC(uint64_t a1)
{
  v2 = sub_1C497FD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VectorBenchmarkConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a2;
  v165 = *MEMORY[0x1E69E9840];
  sub_1C4EFFC98();
  sub_1C43FCDF8();
  v159 = v4;
  v160 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v156 = v6 - v5;
  sub_1C4EFCEB8();
  sub_1C43FCDF8();
  v157 = v8;
  v158 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C456902C(&qword_1EC0C0210, &unk_1C4F3E328);
  sub_1C43FCDF8();
  v161 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v140 - v15;
  v17 = type metadata accessor for VectorBenchmarkConfig(0);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = (v19 - v18);
  sub_1C4409678(a1, a1[3]);
  sub_1C497FD34();
  v21 = v162;
  sub_1C4F02BC8();
  if (v21)
  {
    return sub_1C440962C(a1);
  }

  v153 = v11;
  v154 = v20;
  v162 = a1;
  LOBYTE(__src) = 0;
  v22 = sub_1C4F02678();
  v23 = v12;
  v26 = v25;
  v27 = v154;
  *v154 = v22;
  v27[1] = v25;
  LOBYTE(__src) = 1;
  v28 = sub_1C4F02678();
  v149 = v17;
  v27[2] = v28;
  v27[3] = v29;
  LOBYTE(__src) = 2;
  v30 = sub_1C4F026F8();
  v146 = 0;
  if (v30)
  {
    sub_1C456902C(&qword_1EC0B9498, &qword_1C4F0F020);
    LOBYTE(v163) = 2;
    sub_1C45A3198();
    sub_1C4F026C8();
    v151 = 0;
    v31 = __src;
  }

  else
  {
    v31 = 0;
  }

  v154[4] = v31;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  LOBYTE(v163) = 3;
  sub_1C443D054(&qword_1EDDFEA58, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6330]);
  sub_1C440AD20();
  sub_1C4F026C8();
  v151 = 0;
  v142 = v26;
  v141 = v31;
  v144 = v16;
  v143 = v23;
  v32 = __src;
  v33 = *(__src + 16);
  v34 = MEMORY[0x1E69E7CC0];
  v150 = __src;
  if (v33)
  {
    v35 = MEMORY[0x1E69E7CC0];
    *&__src = MEMORY[0x1E69E7CC0];
    sub_1C459E8A8(0, v33, 0);
    v36 = 0;
    v37 = __src;
    v38 = v32 + 40;
    while (1)
    {
      if (v36 >= *(v150 + 16))
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v39 = sub_1C4EF99C8();
      if (v40 >> 60 == 15)
      {
        break;
      }

      v41 = v39;
      v42 = v40;

      *&__src = v37;
      v32 = *(v37 + 2);
      v43 = *(v37 + 3);
      v44 = v32 + 1;
      if (v32 >= v43 >> 1)
      {
        sub_1C459E8A8((v43 > 1), v32 + 1, 1);
        v44 = v32 + 1;
        v37 = __src;
      }

      ++v36;
      *(v37 + 2) = v44;
      v45 = &v37[16 * v32];
      *(v45 + 4) = v41;
      *(v45 + 5) = v42;
      v38 += 16;
      if (v33 == v36)
      {
        v148 = v37;
        v34 = v35;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_92:
    sub_1C440E464();
    v137 = v136;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4FAAB50);
    v163 = v32;
    v138 = sub_1C4F02858();
    MEMORY[0x1C6940010](v138);

    MEMORY[0x1C6940010](0xD000000000000022, 0x80000001C4FAAB70);
    v163 = *(v137 + 16);
    v139 = sub_1C4F02858();
    MEMORY[0x1C6940010](v139);

    result = sub_1C4F024A8();
    __break(1u);
    return result;
  }

  v44 = *(MEMORY[0x1E69E7CC0] + 16);
  v148 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  if (v44)
  {
LABEL_16:
    v152 = v44;
    v163 = v34;
    sub_1C459E868(0, v44, 0);
    v47 = 0;
    v46 = v163;
    v48 = v148;
    v49 = (v148 + 40);
    while (2)
    {
      if (v47 < *(v48 + 2))
      {
        ++v47;
        v50 = *(v49 - 8);
        v51 = *v49;
        switch(*v49 >> 62)
        {
          case 1:
            v147 = v47;
            v66 = v50 >> 32;
            if (v50 >> 32 < v50)
            {
              goto LABEL_87;
            }

            v67 = sub_1C43FD2BC();
            sub_1C44344B8(v67, v68);
            v69 = sub_1C4EF9538();
            if (v69)
            {
              v70 = sub_1C4EF9568();
              if (__OFSUB__(v50, v70))
              {
                goto LABEL_90;
              }

              v71 = v50;
              v69 += v50 - v70;
            }

            else
            {
              v71 = v50;
            }

            v79 = sub_1C4EF9558();
            if (!v69)
            {
              goto LABEL_44;
            }

            v80 = v66 - v71;
            if (v79 < v66 - v71)
            {
              v80 = v79;
            }

            if ((v80 + 3) > 6)
            {
              v145 = v69;
              v86 = v80 / 4;
              v84 = 4 * (v80 / 4);
              if (v80 <= 3)
              {
                v54 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
                v54 = swift_allocObject();
                v87 = j__malloc_size(v54);
                v54[2] = v86;
                v54[3] = 2 * ((v87 - 32) / 4);
              }

              v47 = v147;
              v88 = v54 + 4;
              v89 = v145;
LABEL_53:
              memcpy(v88, v89, v84);
              v90 = sub_1C43FD2BC();
              sub_1C4434000(v90, v91);
LABEL_54:
              v48 = v148;
            }

            else
            {
LABEL_44:
              v81 = sub_1C43FD2BC();
              sub_1C4434000(v81, v82);
              v54 = MEMORY[0x1E69E7CC0];
              v47 = v147;
              v48 = v148;
            }

LABEL_55:
            v163 = v46;
            v93 = *(v46 + 16);
            v92 = *(v46 + 24);
            v94 = v152;
            if (v93 >= v92 >> 1)
            {
              sub_1C459E868(v92 > 1, v93 + 1, 1);
              v94 = v152;
              v48 = v148;
              v46 = v163;
            }

            *(v46 + 16) = v93 + 1;
            *(v46 + 8 * v93 + 32) = v54;
            v49 += 16;
            if (v94 == v47)
            {
              goto LABEL_58;
            }

            continue;
          case 2:
            v56 = v47;
            v57 = *(v50 + 16);
            v58 = *(v50 + 24);
            v59 = sub_1C43FD2BC();
            sub_1C44344B8(v59, v60);
            v61 = sub_1C4EF9538();
            if (v61)
            {
              v62 = v61;
              v63 = sub_1C4EF9568();
              if (__OFSUB__(v57, v63))
              {
                goto LABEL_89;
              }

              v147 = (v57 - v63 + v62);
            }

            else
            {
              v147 = 0;
            }

            v72 = v58 - v57;
            if (__OFSUB__(v58, v57))
            {
              goto LABEL_88;
            }

            v73 = sub_1C4EF9558();
            v47 = v56;
            if (!v147 || (v73 >= v72 ? (v74 = v72) : (v74 = v73), (v74 + 3) <= 6))
            {
              v75 = sub_1C43FD2BC();
              sub_1C4434000(v75, v76);
              v54 = MEMORY[0x1E69E7CC0];
              goto LABEL_54;
            }

            v83 = v74 / 4;
            v84 = 4 * (v74 / 4);
            if (v74 <= 3)
            {
              v54 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
              v54 = swift_allocObject();
              v85 = j__malloc_size(v54);
              v54[2] = v83;
              v54[3] = 2 * ((v85 - 32) / 4);
            }

            v47 = v56;
            v88 = v54 + 4;
            v89 = v147;
            goto LABEL_53;
          case 3:
            v64 = sub_1C43FD2BC();
            sub_1C4434000(v64, v65);
            v54 = MEMORY[0x1E69E7CC0];
            goto LABEL_55;
          default:
            v52 = v47;
            *&__src = *(v49 - 8);
            WORD4(__src) = v51;
            BYTE10(__src) = BYTE2(v51);
            BYTE11(__src) = BYTE3(v51);
            BYTE12(__src) = BYTE4(v51);
            v53 = (v51 >> 50) & 0x3F;
            BYTE13(__src) = BYTE5(v51);
            if (v53)
            {
              sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
              v54 = swift_allocObject();
              v55 = j__malloc_size(v54);
              v54[2] = v53;
              v54[3] = 2 * ((v55 - 32) / 4);
              v48 = v148;
              memcpy(v54 + 4, &__src, 4 * v53);
            }

            else
            {
              v54 = MEMORY[0x1E69E7CC0];
            }

            v77 = sub_1C43FD2BC();
            sub_1C4434000(v77, v78);
            v47 = v52;
            goto LABEL_55;
        }
      }

      break;
    }

    __break(1u);
    goto LABEL_82;
  }

LABEL_58:
  v95 = v154;
  v154[5] = v46;
  LOBYTE(__src) = 4;
  sub_1C441337C();
  sub_1C497FD88(v96, v97, MEMORY[0x1E69A92A0]);
  v98 = v153;
  v99 = v158;
  v100 = v143;
  v48 = v144;
  v101 = v151;
  sub_1C4F026C8();
  if (!v101)
  {
    v152 = v46;
    v49 = v149;
    (*(v157 + 32))(v95 + *(v149 + 32), v98, v99);
    LOBYTE(__src) = 5;
    sub_1C497FD88(&qword_1EC0C0228, MEMORY[0x1E69A9B68], MEMORY[0x1E69A9B70]);
    v102 = v156;
    v103 = v160;
    sub_1C4F026C8();
    v151 = 0;
    v46 = v100;
    (*(v159 + 32))(v95 + *(v49 + 36), v102, v103);
    if (sub_1C43FC570())
    {
      sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
      LOBYTE(v163) = 6;
      sub_1C4419ACC();
      sub_1C443D054(v107, &qword_1EC0C2BD0, &qword_1C4F0FF50, v108);
      v109 = sub_1C440AD20();
      sub_1C4405DB0(v109, v110, v111, v112, v113);
      v151 = 0;
      v114 = __src;
    }

    else
    {
      v114 = 0uLL;
    }

    *(v154 + *(v49 + 40)) = v114;
    if (sub_1C43FC570())
    {
      sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
      LOBYTE(v163) = 7;
      sub_1C4419ACC();
      sub_1C443D054(v115, &qword_1EC0C2BD0, &qword_1C4F0FF50, v116);
      v117 = sub_1C440AD20();
      sub_1C4405DB0(v117, v118, v119, v120, v121);
      v151 = 0;
      v122 = __src;
    }

    else
    {
      v122 = 0uLL;
    }

    *(v154 + *(v49 + 44)) = v122;
    v123 = sub_1C43FC570();
    v124 = 0uLL;
    if ((v123 & 1) == 0)
    {
LABEL_83:
      v132 = v161;
      v133 = v162;
      v134 = v155;
      *(v154 + *(v49 + 48)) = v124;
      if (!v141 || (v32 = *(v141 + 16), v32 == *(v152 + 16)))
      {
        (*(v132 + 8))(v48, v46);

        v135 = v154;
        sub_1C497FDD0(v154, v134);
        sub_1C440962C(v133);
        return sub_1C497FC6C(v135);
      }

      goto LABEL_92;
    }

    sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    LOBYTE(v163) = 8;
    sub_1C4419ACC();
    sub_1C443D054(v125, &qword_1EC0C2BD0, &qword_1C4F0FF50, v126);
    v127 = sub_1C440AD20();
    sub_1C4405DB0(v127, v128, v129, v130, v131);
    v151 = 0;
LABEL_82:
    v124 = __src;
    goto LABEL_83;
  }

  v151 = v101;
  (*(v161 + 8))(v48, v100);

  sub_1C442CCDC();
  v104 = v146;
  sub_1C440962C(v162);

  v105 = v154;
  if (!v104)
  {
  }

  v106 = v149;
  if (v100)
  {
    result = (*(v157 + 8))(v105 + *(v149 + 32), v158);
  }

  if (v95)
  {
    result = (*(v159 + 8))(v105 + *(v106 + 36), v160);
    if (!v98)
    {
      goto LABEL_67;
    }

LABEL_70:

    if (!v48)
    {
      return result;
    }
  }

  if (v98)
  {
    goto LABEL_70;
  }

LABEL_67:
  if (!v48)
  {
    return result;
  }
}

uint64_t type metadata accessor for VectorBenchmarkConfig(uint64_t a1)
{
  result = qword_1EC0C0238;
  if (!qword_1EC0C0238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C497EB90()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C43FF2B4(v1, v2, v3, v4);
  v5 = sub_1C44182F4();
  sub_1C4411F38(v5);
  sub_1C43FDA58(v6 / 8);
  return v0;
}

uint64_t sub_1C497EDBC()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
  v1 = sub_1C44182F4();
  sub_1C4411F38(v1);
  sub_1C43FDA58(v2 / 4);
  return v0;
}

uint64_t sub_1C497F814()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1C456902C(&qword_1EC0C0390, &qword_1C4F3E738);
  v2 = sub_1C442E04C(v1);
  sub_1C4411F38(v2);
  sub_1C43FDA58(v3 / 48);
  return v0;
}

uint64_t sub_1C497F8CC()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1C456902C(&qword_1EC0B8AC0, &qword_1C4F0DEF0);
  v2 = sub_1C442E04C(v1);
  sub_1C4411F38(v2);
  sub_1C43FDA58(v3 / 56);
  return v0;
}

uint64_t sub_1C497F95C()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v3 = sub_1C44182F4();
  sub_1C4411F38(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

id sub_1C497FB50(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1C4EF9A38();
  sub_1C4434000(a2, a3);
  v11 = [a5 createFileAtPath:a1 contents:v10 attributes:a4];

  return v11;
}

unint64_t sub_1C497FBD4()
{
  result = qword_1EC0C01F0;
  if (!qword_1EC0C01F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C01F0);
  }

  return result;
}

unint64_t sub_1C497FC18()
{
  result = qword_1EC0C01F8;
  if (!qword_1EC0C01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C01F8);
  }

  return result;
}

uint64_t sub_1C497FC6C(uint64_t a1)
{
  v2 = type metadata accessor for VectorBenchmarkConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1C497FCC8(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

unint64_t sub_1C497FD34()
{
  result = qword_1EC0C0218;
  if (!qword_1EC0C0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0218);
  }

  return result;
}

uint64_t sub_1C497FD88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C497FDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VectorBenchmarkConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C497FE6C(uint64_t a1)
{
  sub_1C497FFA8(319, &qword_1EDDFEA50, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C497FFA8(319, &qword_1EC0C0248, &qword_1EC0B8A90, &unk_1C4F0DEC0, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C4EFCEB8();
      if (v3 <= 0x3F)
      {
        sub_1C4EFFC98();
        if (v4 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C497FFA8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C4572308(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VectorBenchmarkConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C49800EC()
{
  result = qword_1EC0C0250;
  if (!qword_1EC0C0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0250);
  }

  return result;
}

unint64_t sub_1C4980144()
{
  result = qword_1EC0C0258;
  if (!qword_1EC0C0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0258);
  }

  return result;
}

unint64_t sub_1C498019C()
{
  result = qword_1EC0C0260;
  if (!qword_1EC0C0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0260);
  }

  return result;
}

uint64_t sub_1C49801F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C44A7DA0;

  return sub_1C497D66C(v2, v3, v4);
}

uint64_t InternalXPC.Server.resolveEntity(with:enableSessionLogging:configName:encodedConfig:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  *(v6 + 72) = a6;
  *(v6 + 80) = ObjectType;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 176) = a2;
  *(v6 + 40) = a1;
  *(v6 + 48) = a3;
  sub_1C456902C(&unk_1EC0BBFC0, &qword_1C4F22E18);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v6 + 104) = swift_task_alloc();
  v14 = sub_1C4EFF7A8();
  *(v6 + 112) = v14;
  *(v6 + 120) = *(v14 - 8);
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4980424, 0, 0);
}

uint64_t sub_1C4980424()
{
  sub_1C498099C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 128));
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_1C442B738(*(v0 + 96), qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4466EEC(v2, v1);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDFF2A0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C44E7FAC();
    *(v0 + 136) = v5;
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = v5;
    v10 = *(v0 + 88);
    sub_1C4467948(*(v0 + 104));
    sub_1C4EFFB58();
    v11 = *(v9 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
    (*(v7 + 16))(v10, v6, v8);
    sub_1C440BAA8(v10, 0, 1, v8);
    v12 = v11;
    *(v0 + 144) = sub_1C4EFFB48();
    v15 = (*MEMORY[0x1E69A9B08] + MEMORY[0x1E69A9B08]);
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_1C498070C;
    v14 = *(v0 + 40);

    return v15(v14);
  }

  return result;
}

uint64_t sub_1C498070C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v4 + 160) = v1;

  if (v1)
  {
    v7 = sub_1C49808E8;
  }

  else
  {
    *(v4 + 168) = a1;
    v7 = sub_1C498082C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C498082C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[21];

  return v4(v5);
}

uint64_t sub_1C49808E8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_1C498099C(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v92 = a5;
  v95 = a1;
  v96 = a4;
  v91 = a3;
  v6 = sub_1C4EFF4C8();
  v94 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4F01188();
  v90 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0BBFC0, &qword_1C4F22E18);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - v16;
  v18 = sub_1C4EFF7A8();
  v97 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = MEMORY[0x1EEE9AC00](v19);
  if (a2)
  {
    v23 = &v88 - v20;
    v24 = v95;
    sub_1C4EFF798();
    if (sub_1C44157D4(v17, 1, v18) == 1)
    {
      sub_1C4981C2C(v17);
      if (qword_1EDDFA678 != -1)
      {
        swift_once();
      }

      v25 = sub_1C4F00978();
      sub_1C442B738(v25, qword_1EDE2DCD8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v26 = sub_1C4F00968();
      v27 = sub_1C4F01CD8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v98 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1C441D828(v24, a2, &v98);
        _os_log_impl(&dword_1C43F8000, v26, v27, "Failed to load EntityResolutionConfig with config name: %s", v28, 0xCu);
        sub_1C440962C(v29);
        MEMORY[0x1C6942830](v29, -1, -1);
        MEMORY[0x1C6942830](v28, -1, -1);
      }

      v30 = sub_1C4EFF588();
      sub_1C4981C94(&qword_1EC0BBF30, MEMORY[0x1E69A9940], MEMORY[0x1E69A9948]);
      swift_allocError();
      (*(*(v30 - 8) + 104))(v31, *MEMORY[0x1E69A9930], v30);
      swift_willThrow();
    }

    else
    {
      v44 = *(v97 + 32);
      v44(v23, v17, v18);
      if (qword_1EDDFA678 != -1)
      {
        swift_once();
      }

      v45 = sub_1C4F00978();
      sub_1C442B738(v45, qword_1EDE2DCD8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v46 = sub_1C4F00968();
      v47 = sub_1C4F01CB8();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v50 = v24;
        v51 = v49;
        v98 = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_1C441D828(v50, a2, &v98);
        _os_log_impl(&dword_1C43F8000, v46, v47, "Using EntityResolutionConfig with config name: %s", v48, 0xCu);
        sub_1C440962C(v51);
        MEMORY[0x1C6942830](v51, -1, -1);
        MEMORY[0x1C6942830](v48, -1, -1);
      }

      v44(v92, v23, v18);
    }
  }

  else
  {
    v33 = v90;
    v32 = v91;
    v95 = v8;
    v34 = v94;
    v35 = v6;
    v36 = v18;
    if (v96)
    {
      sub_1C4F01178();
      v37 = sub_1C4F01148();
      v39 = v38;
      v33[1](v11, v9);
      if (v39 >> 60 == 15)
      {
        v40 = sub_1C4EFF588();
        sub_1C4981C94(&qword_1EC0BBF30, MEMORY[0x1E69A9940], MEMORY[0x1E69A9948]);
        v41 = swift_allocError();
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69A9930], v40);
        swift_willThrow();
        v43 = v32;
      }

      else
      {
        if (qword_1EDDFA678 != -1)
        {
          swift_once();
        }

        v69 = sub_1C4F00978();
        sub_1C442B738(v69, qword_1EDE2DCD8);
        v70 = v96;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v71 = sub_1C4F00968();
        v72 = sub_1C4F01CC8();

        v43 = v32;
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v98 = v74;
          *v73 = 136315138;
          *(v73 + 4) = sub_1C441D828(v43, v70, &v98);
          _os_log_impl(&dword_1C43F8000, v71, v72, "Using config from file:\n%s", v73, 0xCu);
          sub_1C440962C(v74);
          MEMORY[0x1C6942830](v74, -1, -1);
          MEMORY[0x1C6942830](v73, -1, -1);
        }

        v75 = v93;
        sub_1C4EF9348();
        swift_allocObject();
        sub_1C4EF9338();
        sub_1C4981C94(&qword_1EC0C04E0, MEMORY[0x1E69A99C8], MEMORY[0x1E69A99D0]);
        sub_1C4EF9328();
        if (!v75)
        {

          sub_1C441DFEC(v37, v39);
          return;
        }

        sub_1C441DFEC(v37, v39);
        v41 = v75;
      }

      v76 = v96;
      if (qword_1EDDFA678 != -1)
      {
        swift_once();
      }

      v77 = sub_1C4F00978();
      sub_1C442B738(v77, qword_1EDE2DCD8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v78 = v41;
      v79 = sub_1C4F00968();
      v80 = sub_1C4F01CD8();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v98 = v82;
        *v81 = 136315394;
        *(v81 + 4) = sub_1C441D828(v43, v76, &v98);
        *(v81 + 12) = 2080;
        swift_getErrorValue();
        v83 = sub_1C4F02A38();
        v85 = sub_1C441D828(v83, v84, &v98);

        *(v81 + 14) = v85;
        _os_log_impl(&dword_1C43F8000, v79, v80, "Failed to decode config from \n%s\n with error:\n %s", v81, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v82, -1, -1);
        MEMORY[0x1C6942830](v81, -1, -1);
      }

      v86 = sub_1C4EFF588();
      sub_1C4981C94(&qword_1EC0BBF30, MEMORY[0x1E69A9940], MEMORY[0x1E69A9948]);
      swift_allocError();
      (*(*(v86 - 8) + 104))(v87, *MEMORY[0x1E69A9930], v86);
      swift_willThrow();
    }

    else
    {
      v96 = v21;
      v52 = *(v94 + 104);
      v53 = v95;
      LODWORD(v91) = *MEMORY[0x1E69A9918];
      v54 = v35;
      v90 = v52;
      (v52)(v95, v22);
      sub_1C4EFF4B8();
      v55 = *(v34 + 8);
      v94 = v34 + 8;
      v89 = v55;
      v55(v53, v54);
      sub_1C4EFF798();

      if (sub_1C44157D4(v14, 1, v36) == 1)
      {
        sub_1C4981C2C(v14);
        sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v56 = *(v97 + 32);
        v97 += 32;
        v56(v96, v14, v36);
        if (qword_1EDDFA678 != -1)
        {
          swift_once();
        }

        v57 = sub_1C4F00978();
        sub_1C442B738(v57, qword_1EDE2DCD8);
        v58 = sub_1C4F00968();
        v59 = sub_1C4F01CB8();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = v54;
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v98 = v62;
          *v61 = 136315138;
          v63 = v95;
          (v90)(v95, v91, v60);
          v64 = sub_1C4EFF4B8();
          v91 = v36;
          v65 = v56;
          v67 = v66;
          v89(v63, v60);
          v68 = sub_1C441D828(v64, v67, &v98);
          v56 = v65;
          v36 = v91;

          *(v61 + 4) = v68;
          _os_log_impl(&dword_1C43F8000, v58, v59, "Using config with name: %s.", v61, 0xCu);
          sub_1C440962C(v62);
          MEMORY[0x1C6942830](v62, -1, -1);
          MEMORY[0x1C6942830](v61, -1, -1);
        }

        v56(v92, v96, v36);
      }
    }
  }
}

uint64_t sub_1C498174C(void *a1, char a2, uint64_t a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  if (a3)
  {
    a3 = sub_1C4F01138();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v6[5] = v13;
  if (a4)
  {
    a4 = sub_1C4F01138();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v6[6] = v15;
  v16 = a1;
  a6;
  v17 = swift_task_alloc();
  v6[7] = v17;
  *v17 = v6;
  v17[1] = sub_1C4981884;

  return InternalXPC.Server.resolveEntity(with:enableSessionLogging:configName:encodedConfig:)(v16, a2 & 1, a3, v13, a4, v15);
}

uint64_t sub_1C4981884(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;
  sub_1C43FBDAC();
  *v9 = v8;

  v10 = *(v5 + 32);

  if (v3)
  {
    v11 = sub_1C4EF9798();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1C4981A68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C4981B40;

  return sub_1C498174C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1C4981B40()
{
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C4981C2C(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BBFC0, &qword_1C4F22E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4981C94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4981CDC()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C49FE76C();
}

uint64_t sub_1C4981D60()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  v6 = sub_1C4419AE4(v4);

  return sub_1C4815630(v6);
}

uint64_t sub_1C4981DE4()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      v7 = sub_1C4404460();
      sub_1C442E068(v7);
      sub_1C4433568();
    }

    else
    {
      sub_1C440D598();
    }

    return MEMORY[0x1EEE6DFA0](sub_1C4985D48, v9, v8);
  }

  else
  {
    sub_1C43FBDA0();

    return v10();
  }
}

uint64_t sub_1C4981F20()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  v6 = sub_1C4419AE4(v4);

  return sub_1C4B72774(v6);
}

uint64_t sub_1C4981FA4()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4419AE4(v1);

  return sub_1C4ADDF04(v3);
}

uint64_t sub_1C4982028()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  sub_1C4419AE4(v4);

  return sub_1C49CAE60();
}

uint64_t sub_1C49820AC()
{
  sub_1C43FBCD4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1C456902C(&qword_1EC0BF8E0, &qword_1C4F3E000);
  sub_1C43FBD18(v3);
  v1[4] = sub_1C43FBE7C();
  v4 = type metadata accessor for InferredActivitySegment(0);
  v1[5] = v4;
  sub_1C43FBD18(v4);
  v1[6] = sub_1C43FBE7C();
  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4982154()
{
  sub_1C43FBCD4();
  if (*(v0[3] + 8))
  {
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_1C4982288;

    return sub_1C493541C();
  }

  else
  {
    sub_1C440BAA8(v0[4], 1, 1, v0[5]);
    sub_1C4420C3C(v0[4], &qword_1EC0BF8E0, &qword_1C4F3E000);
    v3 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    sub_1C440BAA8(v0[2], 1, 1, v3);

    sub_1C43FBDA0();

    return v4();
  }
}

uint64_t sub_1C4982288()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C498236C()
{
  v1 = v0[4];
  v2 = v0[5];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    sub_1C4420C3C(v1, &qword_1EC0BF8E0, &qword_1C4F3E000);
    v3 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    v4 = 1;
  }

  else
  {
    v5 = v0[6];
    v6 = v0[2];
    sub_1C44EE5CC(v1, v5, type metadata accessor for InferredActivitySegment);
    v7 = sub_1C4EF9CD8();
    sub_1C43FBCE0();
    v9 = *(v8 + 16);
    v9(v6, v5, v7);
    v10 = *(v2 + 20);
    v3 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    v9(v6 + *(v3 + 28), v5 + v10, v7);
    sub_1C44EE5CC(v5, v6 + *(v3 + 32), type metadata accessor for InferredActivitySegment);
    v4 = 0;
  }

  sub_1C440BAA8(v0[2], v4, 1, v3);

  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C498250C()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  sub_1C4419AE4(v4);

  return sub_1C47E1C48();
}

uint64_t sub_1C4982590()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4581B3C();
}

uint64_t sub_1C4982614()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4A48144();
}

uint64_t sub_1C4982698()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4A43460();
}

uint64_t sub_1C498271C()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4A00F40();
}

uint64_t sub_1C49827A0()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  sub_1C4419AE4(v4);

  return sub_1C46AEBAC();
}

uint64_t sub_1C4982824()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4A89784();
}

uint64_t sub_1C49828A8()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  sub_1C4419AE4(v4);

  return sub_1C4B731A4();
}

uint64_t sub_1C498292C()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      v7 = sub_1C4404460();
      sub_1C442E068(v7);
      sub_1C4433568();
    }

    else
    {
      sub_1C440D598();
    }

    return MEMORY[0x1EEE6DFA0](sub_1C4982A68, v9, v8);
  }

  else
  {
    sub_1C43FBDA0();

    return v10();
  }
}

uint64_t sub_1C4982A68()
{
  sub_1C43FBCD4();
  *(v0 + 16) = *(v0 + 48);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4982AF0()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4A862A4();
}

uint64_t sub_1C4982B74()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4AB5060();
}

uint64_t sub_1C4982BF8()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C49FD16C();
}

uint64_t sub_1C4982C7C()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C493541C();
}

unint64_t sub_1C4982D00(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C4982D4C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7974697669746361;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = sub_1C443FD50();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4982DF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4982D00(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C4982E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4982D4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C4982E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4982D00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4982E84(uint64_t a1)
{
  v2 = sub_1C4985A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4982EC0(uint64_t a1)
{
  v2 = sub_1C4985A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4982EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  a23 = v27;
  a24 = v28;
  v29 = v24;
  v31 = v30;
  v32 = sub_1C456902C(&qword_1EC0C0630, &qword_1C4F3ED38);
  sub_1C43FCDF8();
  v34 = v33;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C4401780();
  sub_1C4409678(v31, v31[3]);
  sub_1C4985A08();
  sub_1C4F02BF8();
  a14 = 0;
  sub_1C4F02798();
  if (!v25)
  {
    v36 = type metadata accessor for ActivityEventWithLocations(0);
    v37 = v29 + *(v36 + 24);
    v38 = *(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) + 32);
    a13 = 1;
    type metadata accessor for ActivityEventContent(0);
    v39 = sub_1C4985A5C(&qword_1EC0C0640, type metadata accessor for ActivityEventContent, &protocol conformance descriptor for ActivityEventContent);
    sub_1C44161A0(v37 + v38, &a13, v40, v41, v39);
    v42 = *(v36 + 28);
    a12 = 3;
    type metadata accessor for SourceIdPrefix(0);
    sub_1C44033F8();
    v45 = sub_1C4985A5C(v43, v44, &protocol conformance descriptor for SourceIdPrefix);
    sub_1C44161A0(v29 + v42, &a12, v46, v47, v45);
  }

  (*(v34 + 8))(v26, v32);
  sub_1C43FBC80();
}

unint64_t sub_1C49830F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C4983140(char a1)
{
  if (!a1)
  {
    return 0x7461447472617473;
  }

  if (a1 == 1)
  {
    return 0x65746144646E65;
  }

  return 0x746E65746E6F63;
}

unint64_t sub_1C49831D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C49830F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C4983208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4983140(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C498323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C49830F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4983270(uint64_t a1)
{
  v2 = sub_1C4985A5C(&qword_1EC0C04F8, sub_1C4983678, &unk_1C4F3ECE8);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49832DC(uint64_t a1)
{
  v2 = sub_1C4985A5C(&qword_1EC0C04F8, sub_1C4983678, &unk_1C4F3ECE8);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SessionDataComplying<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v43 = v24;
  v27 = v26;
  v28 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v42 - v30;
  v32 = sub_1C456902C(&qword_1EC0C04E8, &unk_1C4F3E998);
  sub_1C43FCDF8();
  v34 = v33;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C4401780();
  sub_1C4409678(v27, v27[3]);
  sub_1C4983678(0, v36, v37, v38);
  sub_1C4985A5C(&qword_1EC0C04F8, sub_1C4983678, &unk_1C4F3ECE8);
  sub_1C4F02BF8();
  sub_1C4EF9E08();
  sub_1C4EF9E48();
  sub_1C441E498();
  v42 = v23;
  sub_1C4EF9B08();
  sub_1C4420C3C(v31, &unk_1EC0B7610, &unk_1C4F17610);
  v39 = v43;
  sub_1C4F02798();
  if (v39)
  {
    (*(v34 + 8))(v25, v32);
  }

  else
  {
    v43 = v34;

    sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
    sub_1C4EF9E08();
    sub_1C441E498();
    sub_1C4EF9B08();
    sub_1C4420C3C(v31, &unk_1EC0B7610, &unk_1C4F17610);
    sub_1C442FEF4();
    sub_1C4F02798();

    type metadata accessor for ActivityEventWithLocations(0);
    sub_1C4985A5C(&qword_1EC0C0500, type metadata accessor for ActivityEventWithLocations, &unk_1C4F3ECC0);
    sub_1C442FEF4();
    sub_1C4F027E8();
    v40 = sub_1C43FE5EC();
    v41(v40, v32);
  }

  sub_1C43FBC80();
}

void sub_1C4983678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EC0C04F0)
  {
    v4 = _s10CodingKeysOMa_0(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC0C04F0);
    }
  }
}

unint64_t sub_1C49836D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C4983724(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
      result = sub_1C443FD50();
      break;
    case 2:
      result = 0x6E656469666E6F63;
      break;
    case 3:
      result = 0x737265626D656DLL;
      break;
    case 4:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4983808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C49836D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C4983838@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4983724(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C498386C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C49836D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4983894(uint64_t a1)
{
  v2 = sub_1C4983DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49838D0(uint64_t a1)
{
  v2 = sub_1C4983DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActivityEventContent.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v23 = v3;
  type metadata accessor for SourceIdPrefix(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C456902C(&qword_1EC0C0508, &unk_1C4F3E9A8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v24 = type metadata accessor for ActivityEventContent(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  *(v12 + 24) = 0u;
  v25 = v12;
  v26 = v12 + 24;
  *(v12 + 40) = 0u;
  sub_1C4409678(v2, v2[3]);
  sub_1C4983DD4();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C4983E28();
    sub_1C4410EE4();
    sub_1C4F026C8();
    *v25 = v27;
    LOBYTE(v27) = 1;
    sub_1C44033F8();
    sub_1C4985A5C(v13, v14, &protocol conformance descriptor for SourceIdPrefix);
    sub_1C4410EE4();
    sub_1C4F026C8();
    sub_1C44EE5CC(v7, v25 + *(v24 + 32), type metadata accessor for SourceIdPrefix);
    LOBYTE(v27) = 2;
    sub_1C4410EE4();
    *(v25 + 8) = sub_1C4F02638();
    *(v25 + 16) = v15 & 1;
    sub_1C456902C(&qword_1EC0C0528, &qword_1C4F3E9B8);
    sub_1C498441C(&qword_1EC0C0530, sub_1C4983E7C, MEMORY[0x1E69E6330]);
    sub_1C4410EE4();
    sub_1C4F02658();
    v16 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      v16 = v27;
    }

    *(v25 + 56) = v16;
    sub_1C4819C7C();
    sub_1C4410EE4();
    sub_1C4F02658();
    if (v28)
    {
      v29 = &type metadata for GamingActivityContent;
    }

    else
    {
      LOBYTE(v27) = 4;
      sub_1C4410EE4();
      v17 = sub_1C4F02618();
      if (!v18)
      {
        v21 = sub_1C43FEED0();
        v22(v21);
        goto LABEL_15;
      }

      v29 = MEMORY[0x1E69E6158];
      v27 = v17;
      v28 = v18;
    }

    v19 = sub_1C43FEED0();
    v20(v19);
    sub_1C4815D50(&v27, v26);
LABEL_15:
    sub_1C4983ED0(v25, v23);
    sub_1C440962C(v2);
    sub_1C49844E8(v25, type metadata accessor for ActivityEventContent);
    goto LABEL_4;
  }

  sub_1C440962C(v2);
  sub_1C4420C3C(v26, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_4:
  sub_1C43FBC80();
}

unint64_t sub_1C4983DD4()
{
  result = qword_1EC0C0510;
  if (!qword_1EC0C0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0510);
  }

  return result;
}

unint64_t sub_1C4983E28()
{
  result = qword_1EC0C0518;
  if (!qword_1EC0C0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0518);
  }

  return result;
}

unint64_t sub_1C4983E7C()
{
  result = qword_1EC0C0538;
  if (!qword_1EC0C0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0538);
  }

  return result;
}

uint64_t sub_1C4983ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityEventContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ActivityEventContent.encode(to:)()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0BDBC0, &qword_1C4F3E9C0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v27 - v8;
  v9 = type metadata accessor for GamingActivityEvent(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C456902C(&qword_1EC0C0540, &qword_1C4F3E9C8);
  sub_1C43FCDF8();
  v16 = v15;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4401780();
  sub_1C4409678(v5, v5[3]);
  sub_1C4983DD4();
  sub_1C4F02BF8();
  LOBYTE(v30[0]) = *v3;
  v29 = 0;
  sub_1C49843C8();
  sub_1C4F027E8();
  if (!v1)
  {
    v27 = v13;
    v18 = v28;
    v19 = v9;
    LOBYTE(v30[0]) = 2;
    sub_1C442FEF4();
    sub_1C4F02758();
    v30[0] = *(v3 + 56);
    v29 = 3;
    sub_1C456902C(&qword_1EC0C0528, &qword_1C4F3E9B8);
    sub_1C498441C(&qword_1EC0C0550, sub_1C4984494, MEMORY[0x1E69E6300]);
    sub_1C442FEF4();
    sub_1C4F02778();
    sub_1C4460050(v3 + 24, v30, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    if (v31)
    {
      v22 = v18;
      v23 = swift_dynamicCast();
      sub_1C440BAA8(v18, v23 ^ 1u, 1, v19);
      if (sub_1C44157D4(v18, 1, v19) != 1)
      {
        v24 = v27;
        sub_1C44EE5CC(v18, v27, type metadata accessor for GamingActivityEvent);
        LOBYTE(v30[0]) = 4;
        sub_1C4985A5C(&qword_1EC0C0560, type metadata accessor for GamingActivityEvent, &unk_1C4F31154);
        sub_1C442FEF4();
        sub_1C4F027E8();
        sub_1C49844E8(v24, type metadata accessor for GamingActivityEvent);
LABEL_5:
        v20 = sub_1C43FE5EC();
        v21(v20, v14);
        goto LABEL_6;
      }
    }

    else
    {
      sub_1C4420C3C(v30, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      v22 = v18;
      sub_1C440BAA8(v18, 1, 1, v19);
    }

    sub_1C4420C3C(v22, &qword_1EC0BDBC0, &qword_1C4F3E9C0);
    sub_1C4460050(v3 + 24, v30, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    if (v31)
    {
      if (swift_dynamicCast())
      {
        LOBYTE(v30[0]) = 4;
        sub_1C442FEF4();
        sub_1C4F02798();
        v25 = sub_1C43FE5EC();
        v26(v25, v14);

        goto LABEL_6;
      }
    }

    else
    {
      sub_1C4420C3C(v30, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    goto LABEL_5;
  }

  (*(v16 + 8))(v2, v14);
LABEL_6:
  sub_1C43FBC80();
}

unint64_t sub_1C49843C8()
{
  result = qword_1EC0C0548;
  if (!qword_1EC0C0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0548);
  }

  return result;
}

uint64_t sub_1C498441C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C0528, &qword_1C4F3E9B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4984494()
{
  result = qword_1EC0C0558;
  if (!qword_1EC0C0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0558);
  }

  return result;
}

uint64_t sub_1C49844E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t InternalXPC.Server.generateActivityCentricLifeEvents(fromStart:toEnd:)()
{
  sub_1C43FBCD4();
  v0[39] = v1;
  v0[40] = v2;
  v3 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
  v0[41] = v3;
  sub_1C43FBD18(v3);
  v0[42] = sub_1C43FBE7C();
  v4 = sub_1C456902C(&qword_1EC0C0568, &unk_1C4F3E9D8);
  sub_1C43FBD18(v4);
  v0[43] = sub_1C43FBE7C();
  v5 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v0[44] = v5;
  sub_1C43FBD18(v5);
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v0[47] = v6;
  sub_1C43FBD18(v6);
  v0[48] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[49] = v7;
  sub_1C43FBD18(v7);
  v0[50] = sub_1C43FBE7C();
  v8 = sub_1C4EF9378();
  sub_1C43FBD18(v8);
  v0[51] = sub_1C43FBE7C();
  v9 = sub_1C4F00978();
  v0[52] = v9;
  v0[53] = *(v9 - 8);
  v0[54] = sub_1C43FBE7C();
  v10 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C498473C(uint64_t a1)
{
  sub_1C4F00148();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "InternalXPC: Life Events generateActivityCentricLifeEvents", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v5 = sub_1C4402B58();
  v6(v5);
  sub_1C4EF93D8();
  swift_allocObject();
  v1[55] = sub_1C4EF93C8();
  sub_1C4EF9368();
  sub_1C4EF9388();
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v7 = v1[50];
  v8 = sub_1C442B738(v1[49], qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460050(v8, v7, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v9 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v7, 1, v9);
  if (result == 1)
  {
    goto LABEL_11;
  }

  v11 = v1[50];
  type metadata accessor for LifeEventProvider();
  sub_1C49CA620(v11);
  v12 = sub_1C4EF9CD8();
  sub_1C4985A5C(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  result = sub_1C4F01088();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v23 = v1[48];
  v24 = v1[47];
  v13 = v1[45];
  v14 = v1[46];
  v15 = v1[44];
  v16 = v1[40];
  v17 = *(v12 - 8);
  v18 = v17[2];
  v18(v14, v1[39], v12);
  v18(v14 + *(v15 + 48), v16, v12);
  sub_1C4460050(v14, v13, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v19 = *(v15 + 48);
  v20 = v17[4];
  v20(v23, v13, v12);
  v21 = v17[1];
  v21(v13 + v19, v12);
  sub_1C44CD9E0(v14, v13, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v20(v23 + *(v24 + 36), v13 + *(v15 + 48), v12);
  v21(v13, v12);
  sub_1C49CA8D0(v23, v1 + 13);
  sub_1C4420C3C(v1[48], &qword_1EC0B84B8, &unk_1C4F0D4F0);

  memcpy(v1 + 2, v1 + 13, 0x58uLL);
  sub_1C4985564((v1 + 2), (v1 + 24));
  v1[56] = MEMORY[0x1E69E7CC0];
  v22 = swift_task_alloc();
  v1[57] = v22;
  *v22 = v1;
  sub_1C4432548(v22);

  return sub_1C49CAE60();
}

uint64_t sub_1C4984C60()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 464) = v0;

  if (v0)
  {
    v5 = sub_1C4985000;
  }

  else
  {
    v5 = sub_1C4984D64;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4984D64()
{
  v1 = v0[41];
  if (sub_1C44157D4(v0[43], 1, v1) == 1)
  {

    sub_1C49855C0((v0 + 24));
    sub_1C49855C0((v0 + 2));
    v2 = v0[56];
    sub_1C44050C4();

    v3 = v0[1];

    return v3(v2);
  }

  v5 = v0[42];
  v6 = sub_1C4402B58();
  sub_1C44CD9E0(v6, v7, v8, v9);
  v10 = *(v1 + 32);
  v11 = v5 + *(type metadata accessor for ActivityEventWithLocations(0) + 24) + v10;
  v12 = *(v11 + *(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) + 32));
  if (v12 != 128 && sub_1C465B984(v12, &unk_1F43DA488))
  {
    v13 = v0[58];
    sub_1C4985614();
    v14 = sub_1C4EF93B8();
    if (!v13)
    {
      v17 = v14;
      v18 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v0[56];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458E510();
        v20 = v23;
      }

      v21 = *(v20 + 16);
      if (v21 >= *(v20 + 24) >> 1)
      {
        sub_1C458E510();
        v20 = v24;
      }

      sub_1C4420C3C(v0[42], &qword_1EC0B8D40, &unk_1C4F0F040);
      *(v20 + 16) = v21 + 1;
      v22 = v20 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v18;
      v0[56] = v20;
      goto LABEL_10;
    }
  }

  sub_1C4420C3C(v0[42], &qword_1EC0B8D40, &unk_1C4F0F040);
LABEL_10:
  v16 = swift_task_alloc();
  v0[57] = v16;
  *v16 = v0;
  sub_1C4432548(v16);

  return sub_1C49CAE60();
}

uint64_t sub_1C4985000()
{
  sub_1C43FBCD4();
  *(v0 + 304) = *(v0 + 464);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();

  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C4985090()
{
  sub_1C44050C4();

  sub_1C49855C0(v0 + 192);
  sub_1C49855C0(v0 + 16);

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C49851F4(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_1C4EF9CD8();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_1C4EF9C78();
  sub_1C4EF9C78();
  v8 = a4;
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_1C4985348;

  return InternalXPC.Server.generateActivityCentricLifeEvents(fromStart:toEnd:)();
}

uint64_t sub_1C4985348(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  sub_1C43FBDAC();
  *v6 = v5;
  v7 = v4[2];
  v8 = *v2;
  *v6 = *v2;

  v9 = v4[6];
  v10 = v4[3];
  v11 = *(v4[4] + 8);
  v11(v4[5], v10);
  v11(v9, v10);
  if (v3)
  {
    v12 = sub_1C4EF9798();

    v13 = v12;
  }

  else
  {
    v14 = sub_1C4F01658();

    v13 = v14;
  }

  v15 = v5[7];
  v16 = sub_1C4402B58();
  v17(v16);

  _Block_release(v15);

  v18 = v8[1];

  return v18();
}

unint64_t sub_1C4985614()
{
  result = qword_1EC0C0578;
  if (!qword_1EC0C0578)
  {
    sub_1C4572308(&qword_1EC0B8D40, &unk_1C4F0F040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0578);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C498575C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4985874()
{
  result = qword_1EC0C0608;
  if (!qword_1EC0C0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0608);
  }

  return result;
}

unint64_t sub_1C49858CC()
{
  result = qword_1EC0C0610;
  if (!qword_1EC0C0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0610);
  }

  return result;
}

unint64_t sub_1C4985924()
{
  result = qword_1EC0C0618;
  if (!qword_1EC0C0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0618);
  }

  return result;
}

unint64_t sub_1C4985A08()
{
  result = qword_1EC0C0638;
  if (!qword_1EC0C0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0638);
  }

  return result;
}

uint64_t sub_1C4985A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4985AA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;
  v2 = sub_1C4402B58();

  return v3(v2);
}

_BYTE *_s10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4985C40()
{
  result = qword_1EC0C0650;
  if (!qword_1EC0C0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0650);
  }

  return result;
}

unint64_t sub_1C4985C98()
{
  result = qword_1EC0C0658;
  if (!qword_1EC0C0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0658);
  }

  return result;
}

unint64_t sub_1C4985CF0()
{
  result = qword_1EC0C0660;
  if (!qword_1EC0C0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0660);
  }

  return result;
}

uint64_t sub_1C4985D4C(void *a1)
{
  v3 = *a1;
  v32 = sub_1C456902C(&qword_1EC0C0710, &qword_1C4F3F008);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v27 - v4;
  v5 = sub_1C4EFC038();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v8 = sub_1C44FAF1C(&qword_1EC0C0718, MEMORY[0x1E69A0008], MEMORY[0x1E69A0018]);
  v9 = sub_1C4F01BA8();
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v11 = v9;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1C459D930();
  v10 = v39;
  result = sub_1C4F01B98();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v28 = v5;
    v29 = v1;
    v13 = 0;
    v31 = v11;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v15 = v7;
      v16 = v8;
      v17 = v3;
      v18 = v16;
      v19 = sub_1C4F01BE8();
      sub_1C446C964(v20, v33, &qword_1EC0C0710, &qword_1C4F3F008);
      v19(&v36, 0);
      v21 = sub_1C4EFB248();
      v23 = v22;
      v25 = v24;
      sub_1C4EFB238();
      sub_1C47781D8(v21, v23, v25);
      if (v35)
      {
        sub_1C441D670(&v34, &v36);
      }

      else
      {
        v37 = MEMORY[0x1E69E6158];
        v38 = MEMORY[0x1E69A0138];
        *&v36 = 1280070990;
        *(&v36 + 1) = 0xE400000000000000;
      }

      sub_1C4420C3C(v33, &qword_1EC0C0710, &qword_1C4F3F008);
      v39 = v10;
      v26 = *(v10 + 16);
      if (v26 >= *(v10 + 24) >> 1)
      {
        sub_1C459D930();
        v10 = v39;
      }

      *(v10 + 16) = v26 + 1;
      sub_1C441D670(&v36, v10 + 40 * v26 + 32);
      v7 = v15;
      v3 = v17;
      v8 = v18;
      result = sub_1C4F01BB8();
      ++v13;
      if (v14 == v31)
      {
        (*(v30 + 8))(v15, v28);
        return v10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C49860D4()
{
  sub_1C43FEAEC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v0[92] = swift_getObjectType();
  v0[91] = v2;
  v0[90] = v4;
  v0[89] = v6;
  v7 = _s10ViewConfigVMa(0);
  v0[93] = v7;
  sub_1C43FBD18(v7);
  v0[94] = sub_1C43FBE7C();
  v8 = sub_1C4F01188();
  sub_1C43FBD18(v8);
  v0[95] = sub_1C43FBE7C();
  v9 = sub_1C4EF9378();
  sub_1C43FBD18(v9);
  v0[96] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C49861F0()
{
  v121 = v0;
  v120[9] = *MEMORY[0x1E69E9840];
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  v1 = 0;
  v2 = sub_1C4415590();
  v3 = *(v0 + 712);
  v4 = *(v2 + 16);
  swift_retain_n();
  v5 = sub_1C495434C(v3);
  LOWORD(v7) = v6;
  v8 = *(v0 + 720);
  v9 = swift_task_alloc();
  v9[2] = sub_1C4BAEE80;
  v9[3] = 0;
  v9[4] = v4;
  v10 = sub_1C49A5758(sub_1C498DB0C, v9);

  sub_1C4EF93D8();
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9368();
  sub_1C4EF9388();
  v109 = v8;
  if (!v8 || [*(v0 + 720) integerValue] != -1)
  {
    if (qword_1EDDFF2A0 != -1)
    {
      goto LABEL_67;
    }

    goto LABEL_6;
  }

  v107 = 0;
  v12 = v10;
  while (1)
  {
    sub_1C4415864();
    v1 = 0;
    v15 = sub_1C4D1179C();
    v18 = *(v15 + 16);
    v108 = v15;
    if (!v18)
    {
      break;
    }

    v19 = 0;
    v99 = (v0 + 544);
    v100 = (v0 + 584);
    v102 = *(v0 + 720);
    v103 = (v0 + 696);
    v104 = v18 - 1;
    v105 = v0 + 688;
    v20 = (v15 + 48);
    v10 = MEMORY[0x1E69E7CC0];
    v101 = v4;
    v110 = v12;
    v98 = v7;
    v106 = v5;
    while (v19 < v18)
    {
      v22 = *(v20 - 2);
      v21 = *(v20 - 1);
      v113 = v20;
      v23 = *v20;
      v24 = *(v12 + 16);
      swift_bridgeObjectRetain_n();
      v118 = v10;
      v116 = v19;
      if (v24 && (v25 = sub_1C445FAA8(v21, v23), (v26 & 1) != 0))
      {
        v27 = (*(v12 + 56) + 16 * v25);
        v115 = *v27;
        v117 = v27[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v117 = 0xE400000000000000;
        v115 = 1701736270;
      }

      v28 = swift_task_alloc();
      v28[2] = v22;
      v28[3] = v21;
      v28[4] = v23;
      v29 = swift_task_alloc();
      v29[2] = sub_1C4449808;
      v29[3] = v28;
      v29[4] = v4;
      sub_1C4449610(sub_1C4449770, v29, v30, v31, v32, v33, v34, v35);

      memcpy((v0 + 432), v120, 0x48uLL);
      *v105 = MEMORY[0x1E69E7CC8];
      v36 = swift_task_alloc();
      v36[2] = v22;
      v36[3] = v21;
      v119 = v21;
      v36[4] = v23;
      v36[5] = v105;
      v37 = swift_task_alloc();
      v37[2] = sub_1C498DB2C;
      v37[3] = v36;
      v37[4] = v4;
      sub_1C446C37C(sub_1C4449770, v37);

      v38 = *v105;
      if (*(*v105 + 16))
      {
        v39 = objc_autoreleasePoolPush();
        v40 = objc_opt_self();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C456902C(&qword_1EC0C34A0, &qword_1C4F3EFE8);
        v41 = sub_1C4F00EC8();

        *v103 = 0;
        v38 = [v40 dataWithJSONObject:v41 options:3 error:v103];

        v42 = *v103;
        v12 = v110;
        if (v38)
        {
          sub_1C4EF9A68();

          sub_1C4F01178();
          sub_1C4404C28();
          v43 = sub_1C4F01158();
          if (v44)
          {
            v38 = v44;
            v114 = v43;
            v45 = sub_1C4404C28();
            sub_1C4434000(v45, v46);
          }

          else
          {
            v50 = sub_1C4404C28();
            sub_1C4434000(v50, v51);
            sub_1C43FF2D0();
            v114 = v52;
          }
        }

        else
        {
          v48 = v42;
          v38 = sub_1C4EF97A8();

          swift_willThrow();
          sub_1C43FF2D0();
          v114 = v49;
        }

        objc_autoreleasePoolPop(v39);
      }

      else
      {
        sub_1C43FF2D0();
        v114 = v47;
        v12 = v110;
      }

      v53 = objc_autoreleasePoolPush();
      sub_1C443A738(v119, v23, v54, v55, v56, v57, v58, v59);
      sub_1C44FAF1C(&qword_1EDDEAEA0, _s10ViewConfigVMa, &unk_1C4F6239C);
      sub_1C4404F74();
      sub_1C4EF93B8();
      v111 = v38;
      v60 = *(v0 + 760);
      sub_1C4417450();
      sub_1C4454000(v61, v62);
      sub_1C4F01178();
      sub_1C43FBC98();
      v63 = sub_1C4F01158();
      if (v64)
      {
        v60 = v64;
        v112 = v63;
        v65 = sub_1C43FBC98();
        sub_1C4434000(v65, v66);
      }

      else
      {
        v67 = sub_1C43FBC98();
        sub_1C4434000(v67, v68);
        sub_1C43FF2D0();
        v112 = v69;
      }

      objc_autoreleasePoolPop(v53);
      if (*(v0 + 496) >> 60 == 15)
      {
        v70 = 0;
        v1 = 0;
      }

      else
      {
        if (*(v0 + 481))
        {
          sub_1C44F92C4();
        }

        else
        {
          sub_1C4463B90();
        }

        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v72 = *(AssociatedTypeWitness - 8);
        v73 = sub_1C43FBE7C();
        v74 = sub_1C4414C9C();
        sub_1C44344B8(v74, v75);
        sub_1C4414C9C();
        sub_1C4BA9CC8();
        swift_getAssociatedConformanceWitness();
        v70 = sub_1C4F00FB8();
        v1 = v76;
        (*(v72 + 8))(v73, AssociatedTypeWitness);
        v77 = sub_1C4414C9C();
        sub_1C441DFEC(v77, v78);

        v4 = v101;
        v12 = v110;
        v10 = v118;
      }

      if (!v1)
      {
        v70 = 0;
        v1 = 0xE000000000000000;
      }

      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F3B920;
      *(inited + 32) = 1701667150;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v119;
      *(inited + 56) = v23;
      v80 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 80) = 0x61486769666E6F43;
      *(inited + 88) = 0xEA00000000006873;
      *(inited + 96) = v115;
      *(inited + 104) = v117;
      *(inited + 120) = v80;
      *(inited + 128) = 0x745374736574614CLL;
      *(inited + 136) = 0xEB00000000657461;
      *(inited + 144) = v70;
      *(inited + 152) = v1;
      *(inited + 168) = v80;
      *(inited + 176) = 0x64656C62616E45;
      *(inited + 184) = 0xE700000000000000;
      *(inited + 192) = sub_1C4CC2358(*(v0 + 440));
      *(inited + 200) = v81;
      *(inited + 216) = v80;
      strcpy((inited + 224), "ErrorMessage");
      *(inited + 237) = 0;
      *(inited + 238) = -5120;
      v82 = *(v0 + 456);
      if (*(v0 + 464))
      {
        v83 = *(v0 + 464);
      }

      else
      {
        v82 = 0;
        v83 = 0xE000000000000000;
      }

      *(inited + 240) = v82;
      *(inited + 248) = v83;
      *(inited + 264) = v80;
      strcpy((inited + 272), "AttemptCount");
      *(inited + 285) = 0;
      *(inited + 286) = -5120;
      *(v0 + 704) = *(v0 + 448);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      *(inited + 288) = sub_1C4F02858();
      *(inited + 296) = v84;
      *(inited + 312) = v80;
      *(inited + 320) = 0x6B72616D6B6F6F42;
      *(inited + 328) = 0xE900000000000073;
      *(inited + 336) = v114;
      *(inited + 344) = v111;
      *(inited + 360) = v80;
      *(inited + 368) = 0x6769666E6F43;
      *(inited + 408) = v80;
      *(inited + 376) = 0xE600000000000000;
      *(inited + 384) = v112;
      *(inited + 392) = v60;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4414C9C();
      v7 = sub_1C4F00F28();
      if (!v109 || (v85 = [v102 integerValue], v85 == -1))
      {

        goto LABEL_55;
      }

      if (v107)
      {
        v86 = v85;

        v1 = 0;
        sub_1C4C81AA0(v119, v23, 0);

        sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
        sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
        v88 = swift_dynamicCast();
        if (v88)
        {
          if (*(v0 + 568))
          {
            sub_1C441D670(v99, v0 + 504);
            v90 = sub_1C4989D48((v0 + 504), v86, 0);
            v92 = v91;

            *(v0 + 648) = MEMORY[0x1E69E6158];
            *(v0 + 624) = v90;
            *(v0 + 632) = v92;
            sub_1C44482AC((v0 + 624), (v0 + 656));
            swift_isUniquelyReferenced_nonNull_native();
            v120[0] = v7;
            sub_1C46601FC();
            v7 = v120[0];
            sub_1C440962C((v0 + 504));
            goto LABEL_55;
          }
        }

        else
        {
          *(v0 + 576) = 0;
          *v99 = 0u;
          *(v0 + 560) = 0u;
        }

        v87 = v0 + 544;
      }

      else
      {

        *(v0 + 616) = 0;
        *v100 = 0u;
        *(v0 + 600) = 0u;
        sub_1C4420C3C(v100, &unk_1EC0C06E0, &qword_1C4F3EFF0);
        v87 = v0 + 544;
        *v99 = 0u;
        *(v0 + 560) = 0u;
        *(v0 + 576) = 0;
      }

      sub_1C4420C3C(v87, &unk_1EC0C06B0, &qword_1C4F5FBA0);
LABEL_55:
      v5 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C441E4B8();
        sub_1C458E540();
        v10 = v93;
      }

      v89 = *(v10 + 16);
      if (v89 >= *(v10 + 24) >> 1)
      {
        sub_1C458E540();
        v10 = v94;
      }

      sub_1C444AF3C(v0 + 432);
      *(v10 + 16) = v89 + 1;
      *(v10 + 8 * v89 + 32) = v7;

      if (v104 == v116)
      {

        sub_1C4463890(v106, v98);
        goto LABEL_63;
      }

      v18 = *(v108 + 16);
      v20 = v113 + 3;
      v19 = v116 + 1;
    }

    __break(1u);
LABEL_67:
    sub_1C43FD998(&qword_1EDDFF2A0);
LABEL_6:
    v11 = sub_1C44E7FAC();
    v12 = v10;
    if (v1)
    {

      v13 = sub_1C4415864();
      sub_1C4463890(v13, v14);

      sub_1C43FBDA0();

      return v16();
    }

    v107 = v11;
  }

  v95 = sub_1C4415864();
  sub_1C4463890(v95, v96);
  v10 = MEMORY[0x1E69E7CC0];
LABEL_63:

  sub_1C43FBCF0();

  return v97(v10);
}

uint64_t sub_1C49871A0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{

  swift_unownedRetain();
  return sub_1C4988F50(a3, 0, a1, a2, a6, a1, a2);
}

uint64_t sub_1C4987200(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v142 = a6;
  v141 = a5;
  v143 = sub_1C4EF9CD8();
  v144 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v146 = (&v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v145 = &v139 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v147 = (&v139 - v14);
  v15 = *(a1 + 8);
  sub_1C4409528(*(a1 + 8));
  v149 = a4;
  v16 = sub_1C4663244();

  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v17 = v16;
  }

  v150 = v17;
  v140 = sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  v18 = swift_allocObject();
  v139 = xmmword_1C4F0D480;
  *(v18 + 16) = xmmword_1C4F0D480;
  *(v18 + 32) = 0xD000000000000010;
  *(v18 + 40) = 0x80000001C4F87A00;
  v19 = *(a1 + 24);
  v20 = MEMORY[0x1E69E6158];
  *(v18 + 48) = *(a1 + 16);
  *(v18 + 56) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = 0xD000000000000016;
  *(v18 + 88) = 0x80000001C4FAAF10;
  v21 = MEMORY[0x1E69E63B0];
  *(v18 + 96) = *(a1 + 40);
  *(v18 + 120) = v21;
  *(v18 + 128) = 0x656C756465686373;
  *(v18 + 136) = 0xE800000000000000;
  *(v18 + 144) = sub_1C4424B10(*(a3 + 32));
  *(v18 + 152) = v22;
  *(v18 + 168) = v20;
  strcpy((v18 + 176), "runByTimestamp");
  *(v18 + 191) = -18;
  v23 = a2[4];
  *(v18 + 216) = v21;
  *(v18 + 192) = v23;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = sub_1C4F00F28();
  switch(v15)
  {
    case 1:
      v148 = v15;
      _s20KnowledgeGraphSourceCMa();
      sub_1C4CDE560(a2[5], a2[6]);
      sub_1C4EF9AC8();
      sub_1C4EF9AC8();
      sub_1C4EF9AC8();
      *&v152 = 0;
      *(&v152 + 1) = 0xE000000000000000;
      sub_1C4F01A28();
      MEMORY[0x1C6940010](32, 0xE100000000000000);
      sub_1C44FAF1C(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v27 = v143;
      v28 = sub_1C4F02858();
      MEMORY[0x1C6940010](v28);

      *(&v153 + 1) = MEMORY[0x1E69E6158];
      sub_1C44482AC(&v152, &v155);
      swift_isUniquelyReferenced_nonNull_native();
      v154 = v24;
      sub_1C46601FC();
      v29 = v154;
      *&v152 = 0;
      *(&v152 + 1) = 0xE000000000000000;
      sub_1C4F01A28();
      MEMORY[0x1C6940010](32, 0xE100000000000000);
      v30 = sub_1C4F02858();
      MEMORY[0x1C6940010](v30);

      *(&v153 + 1) = MEMORY[0x1E69E6158];
      sub_1C44482AC(&v152, &v155);
      swift_isUniquelyReferenced_nonNull_native();
      v154 = v29;
      sub_1C46601FC();
      v31 = v154;
      *&v152 = 0;
      *(&v152 + 1) = 0xE000000000000000;
      sub_1C4F01A28();
      MEMORY[0x1C6940010](32, 0xE100000000000000);
      v32 = v146;
      v33 = sub_1C4F02858();
      MEMORY[0x1C6940010](v33);

      *(&v153 + 1) = MEMORY[0x1E69E6158];
      sub_1C44482AC(&v152, &v155);
      swift_isUniquelyReferenced_nonNull_native();
      v154 = v31;
      sub_1C46601FC();
      v24 = v154;
      v34 = *(v144 + 8);
      v34(v32, v27);
      v34(v145, v27);
      v34(v147, v27);
      goto LABEL_17;
    case 3:
      v35 = *(a1 + 32);
      v148 = v15;
      if (v35)
      {
        v36 = MEMORY[0x1E69E6158];
        if (v35 == 1)
        {

          v37 = v150;
          v38 = v151;
          goto LABEL_28;
        }

        v38 = v151;
      }

      else
      {
        v38 = v151;
        v36 = MEMORY[0x1E69E6158];
      }

      v47 = sub_1C4F02938();

      v37 = v150;
      if ((v47 & 1) == 0)
      {
        v54 = a2[5];
        v55 = a2[6];
        sub_1C444C58C(a2, &v152);
        v56 = sub_1C4440600(v54, v55);
        if (v38)
        {

          *(&v153 + 1) = v36;
          *&v152 = 1701736270;
          *(&v152 + 1) = 0xE400000000000000;
          sub_1C44482AC(&v152, &v155);
          swift_isUniquelyReferenced_nonNull_native();
          v154 = v24;
          sub_1C46601FC();
          v57 = v154;
          *(&v153 + 1) = v36;
          *&v152 = 1701736270;
          *(&v152 + 1) = 0xE400000000000000;
          sub_1C44482AC(&v152, &v155);
          swift_isUniquelyReferenced_nonNull_native();
          v154 = v57;
          sub_1C46601FC();
          v58 = v154;
          *(&v153 + 1) = v36;
          *&v152 = 1701736270;
          *(&v152 + 1) = 0xE400000000000000;
          sub_1C44482AC(&v152, &v155);
          swift_isUniquelyReferenced_nonNull_native();
          v154 = v58;
          sub_1C46601FC();
          goto LABEL_60;
        }

        v82 = v56;
        v151 = "sourceUpdatedTimestamp";
        *&v152 = 0;
        *(&v152 + 1) = 0xE000000000000000;
        sub_1C4F01A28();
        MEMORY[0x1C6940010](32, 0xE100000000000000);
        v83 = v147;
        sub_1C4EF9AC8();
        v84 = sub_1C44FAF1C(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v85 = v143;
        v145 = v84;
        v86 = sub_1C4F02858();
        MEMORY[0x1C6940010](v86);

        v87 = v144 + 8;
        v146 = *(v144 + 8);
        (v146)(v83, v85);
        *(&v153 + 1) = v36;
        sub_1C44482AC(&v152, &v155);
        swift_isUniquelyReferenced_nonNull_native();
        v154 = v24;
        sub_1C46601FC();
        v88 = v154;
        if (!v82)
        {
          *(&v153 + 1) = v36;
          *&v152 = 7104878;
          *(&v152 + 1) = 0xE300000000000000;
          sub_1C44482AC(&v152, &v155);
          swift_isUniquelyReferenced_nonNull_native();
          v154 = v88;
          sub_1C46601FC();
          goto LABEL_60;
        }

        objc_opt_self();
        v89 = swift_dynamicCastObjCClass();
        if (v89)
        {
          v90 = v89;
          v151 = 0;
          swift_unknownObjectRetain();
          if ([v90 value])
          {
            v144 = v87;
            objc_opt_self();
            v91 = swift_dynamicCastObjCClass();
            if (v91)
            {
              v92 = v91;
              swift_unknownObjectRelease();
              [v92 iterationStartTime];
              v142 = v82;
              sub_1C4EF9AC8();
              v93 = v36;
              v94 = swift_allocObject();
              *(v94 + 16) = v139;
              *(v94 + 32) = 0x64496D6165727473;
              *(v94 + 40) = 0xE800000000000000;
              v95 = [v92 streamId];
              v96 = sub_1C4F01138();
              v98 = v97;

              *(v94 + 48) = v96;
              *(v94 + 56) = v98;
              *(v94 + 72) = v93;
              *(v94 + 80) = 0x4E746E656D676573;
              *(v94 + 88) = 0xEB00000000656D61;
              v99 = [v92 segmentName];
              v100 = sub_1C4F01138();
              v102 = v101;

              *(v94 + 96) = v100;
              *(v94 + 104) = v102;
              v37 = v150;
              *(v94 + 120) = v93;
              strcpy((v94 + 128), "iterationStart");
              *(v94 + 143) = -18;
              *&v152 = 0;
              *(&v152 + 1) = 0xE000000000000000;
              [v92 iterationStartTime];
              sub_1C4F01A28();
              MEMORY[0x1C6940010](32, 0xE100000000000000);
              v103 = v143;
              v104 = sub_1C4F02858();
              MEMORY[0x1C6940010](v104);

              v105 = *(&v152 + 1);
              *(v94 + 144) = v152;
              *(v94 + 152) = v105;
              *(v94 + 168) = v93;
              *(v94 + 176) = 0x74657366666FLL;
              *(v94 + 184) = 0xE600000000000000;
              v106 = [v92 offset];
              *(v94 + 216) = MEMORY[0x1E69E6530];
              *(v94 + 192) = v106;
              v107 = sub_1C4F00F28();
              *(&v153 + 1) = sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
              *&v152 = v107;
              sub_1C44482AC(&v152, &v155);
              swift_isUniquelyReferenced_nonNull_native();
              v154 = v88;
              sub_1C46601FC();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v24 = v154;
              (v146)(v147, v103);
              goto LABEL_61;
            }

            swift_unknownObjectRelease();
          }

          sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
          v128 = swift_allocObject();
          *(v128 + 16) = xmmword_1C4F0CE60;
          *(v128 + 32) = 0x6D61657274737075;
          *(v128 + 40) = 0xE900000000000073;
          v129 = [v90 upstreams];
          v130 = sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
          v131 = sub_1C4F01678();

          v132 = MEMORY[0x1C6940380](v131, v130);
          v134 = v133;

          *(v128 + 48) = v132;
          *(v128 + 56) = v134;
          *(v128 + 64) = 0x65756C6176;
          *(v128 + 72) = 0xE500000000000000;
          *&v152 = [v90 value];
          sub_1C456902C(&unk_1EC0C5D70, &unk_1C4F3F010);
          *(v128 + 80) = sub_1C4F01198();
          *(v128 + 88) = v135;
          v136 = sub_1C4F00F28();
          *(&v153 + 1) = sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
          *&v152 = v136;
          sub_1C44482AC(&v152, &v155);
          swift_isUniquelyReferenced_nonNull_native();
          v154 = v88;
          sub_1C46601FC();
          swift_unknownObjectRelease_n();
          goto LABEL_76;
        }

        *(&v153 + 1) = v36;
        *&v152 = 0xD000000000000020;
        *(&v152 + 1) = 0x80000001C4FAAF50;
        sub_1C44482AC(&v152, &v155);
        swift_isUniquelyReferenced_nonNull_native();
        v154 = v88;
        sub_1C46601FC();
LABEL_59:
        swift_unknownObjectRelease();
        goto LABEL_60;
      }

LABEL_28:
      if (a2[6] >> 60 == 15)
      {
        v48 = 0;
        v49 = 0;
LABEL_32:
        v53 = 1;
LABEL_33:
        *(&v153 + 1) = v36;
        *&v152 = 7104878;
        *(&v152 + 1) = 0xE300000000000000;
        sub_1C44482AC(&v152, &v155);
        swift_isUniquelyReferenced_nonNull_native();
        v154 = v24;
        sub_1C46601FC();
        sub_1C44503F8(v53, v48, v49);
        goto LABEL_60;
      }

      sub_1C444C58C(a2, &v152);
      v50 = sub_1C44633C0();
      if (v38)
      {

        v48 = 0;
        v49 = 0;
        goto LABEL_32;
      }

      v53 = v50;
      v48 = v51;
      v49 = v52;
      if (!v50)
      {
        goto LABEL_33;
      }

      objc_opt_self();
      v62 = swift_dynamicCastObjCClass();
      if (v62)
      {
        v63 = v62;
        v146 = v48;
        v151 = 0;
        v145 = v53;
        swift_unknownObjectRetain();
        if ([v63 value])
        {
          objc_opt_self();
          v64 = swift_dynamicCastObjCClass();
          if (v64)
          {
            v65 = v64;
            [v64 iterationStartTime];
            sub_1C4EF9AC8();
            v66 = swift_allocObject();
            *(v66 + 16) = v139;
            *(v66 + 32) = 0x64496D6165727473;
            *(v66 + 40) = 0xE800000000000000;
            v67 = [v65 streamId];
            v68 = sub_1C4F01138();
            v142 = v49;
            v69 = v36;
            v70 = v68;
            v72 = v71;

            *(v66 + 48) = v70;
            *(v66 + 56) = v72;
            *(v66 + 72) = v69;
            *(v66 + 80) = 0x4E746E656D676573;
            *(v66 + 88) = 0xEB00000000656D61;
            v73 = [v65 segmentName];
            v74 = sub_1C4F01138();
            v76 = v75;

            *(v66 + 96) = v74;
            *(v66 + 104) = v76;
            *(v66 + 120) = v69;
            strcpy((v66 + 128), "iterationStart");
            *(v66 + 143) = -18;
            *&v152 = 0;
            *(&v152 + 1) = 0xE000000000000000;
            v37 = v150;
            [v65 iterationStartTime];
            sub_1C4F01A28();
            MEMORY[0x1C6940010](32, 0xE100000000000000);
            sub_1C44FAF1C(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
            v77 = v143;
            v78 = sub_1C4F02858();
            MEMORY[0x1C6940010](v78);

            v79 = *(&v152 + 1);
            *(v66 + 144) = v152;
            *(v66 + 152) = v79;
            *(v66 + 168) = v69;
            *(v66 + 176) = 0x74657366666FLL;
            *(v66 + 184) = 0xE600000000000000;
            v80 = [v65 offset];
            *(v66 + 216) = MEMORY[0x1E69E6530];
            *(v66 + 192) = v80;
            v81 = sub_1C4F00F28();
            *(&v153 + 1) = sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
            *&v152 = v81;
            sub_1C44482AC(&v152, &v155);
            swift_isUniquelyReferenced_nonNull_native();
            v154 = v24;
            sub_1C46601FC();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease_n();
            sub_1C441DFEC(v146, v142);
            v24 = v154;
            (*(v144 + 8))(v147, v77);
            goto LABEL_61;
          }

          swift_unknownObjectRelease();
        }

        sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_1C4F0CE60;
        *(v119 + 32) = 0x6D61657274737075;
        *(v119 + 40) = 0xE900000000000073;
        v120 = [v63 upstreams];
        v121 = sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
        v122 = sub_1C4F01678();

        v123 = MEMORY[0x1C6940380](v122, v121);
        v125 = v124;

        *(v119 + 48) = v123;
        *(v119 + 56) = v125;
        *(v119 + 64) = 0x65756C6176;
        *(v119 + 72) = 0xE500000000000000;
        *&v152 = [v63 value];
        sub_1C456902C(&unk_1EC0C5D70, &unk_1C4F3F010);
        *(v119 + 80) = sub_1C4F01198();
        *(v119 + 88) = v126;
        v127 = sub_1C4F00F28();
        *(&v153 + 1) = sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
        *&v152 = v127;
        sub_1C44482AC(&v152, &v155);
        swift_isUniquelyReferenced_nonNull_native();
        v154 = v24;
        sub_1C46601FC();
        swift_unknownObjectRelease();
        sub_1C441DFEC(v146, v49);
        swift_unknownObjectRelease();
LABEL_76:
        v24 = v154;
        goto LABEL_61;
      }

      *(&v153 + 1) = v36;
      *&v152 = 0xD000000000000020;
      *(&v152 + 1) = 0x80000001C4FAAF50;
      sub_1C44482AC(&v152, &v155);
      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v154 = v24;
      sub_1C46601FC();
      swift_unknownObjectRelease();
      sub_1C441DFEC(v48, v49);
      goto LABEL_59;
    case 4:
      v26 = v151;
      sub_1C4BACEC4();
      if (v26)
      {
      }

      sub_1C4449828();
      v37 = v150;
      v59 = a2[6];
      v148 = v15;
      if (v59 >> 60 == 15)
      {
        goto LABEL_37;
      }

      v151 = 0;
      if (v157[49])
      {
        sub_1C44F92C4();
      }

      else
      {
        sub_1C4463B90();
      }

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v147 = &v139;
      v109 = *(AssociatedTypeWitness - 8);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v111 = &v139 - v110;
      sub_1C444C58C(a2, &v152);
      v112 = v151;
      sub_1C4BA9CC8();
      if (v112)
      {

        sub_1C444053C(a2);
LABEL_55:
        v37 = v150;
        v113 = sub_1C445FAA8(0x6B72616D6B6F6F62, 0xE800000000000000);
        if (v114)
        {
          v115 = v113;
          swift_isUniquelyReferenced_nonNull_native();
          v154 = v24;
          sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
          sub_1C4F02458();
          v24 = v154;

          sub_1C44482AC((*(v24 + 56) + 32 * v115), &v152);
          sub_1C4F02478();
        }

        else
        {
          v153 = 0u;
          v152 = 0u;
        }

        sub_1C4420C3C(&v152, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        sub_1C444AF3C(v157);
        goto LABEL_61;
      }

      swift_getAssociatedConformanceWitness();
      v60 = sub_1C4F00FB8();
      v61 = v118;
      (*(v109 + 8))(v111, AssociatedTypeWitness);
      sub_1C444053C(a2);
      if (!v61)
      {
        goto LABEL_55;
      }

      v37 = v150;
      if (v61 == 1)
      {
LABEL_37:
        v60 = 0;
        v61 = 0xE000000000000000;
      }

      *(&v156 + 1) = MEMORY[0x1E69E6158];
      *&v155 = v60;
      *(&v155 + 1) = v61;
      sub_1C44482AC(&v155, &v152);
      swift_isUniquelyReferenced_nonNull_native();
      v154 = v24;
      sub_1C46601FC();
      sub_1C444AF3C(v157);
LABEL_60:
      v24 = v154;
LABEL_61:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E540();
        v37 = v137;
      }

      v116 = *(v37 + 16);
      if (v116 >= *(v37 + 24) >> 1)
      {
        sub_1C458E540();
        v37 = v138;
      }

      *(v37 + 16) = v116 + 1;
      *(v37 + 8 * v116 + 32) = v24;
      sub_1C4409528(v148);
      v117 = v149;
      swift_isUniquelyReferenced_nonNull_native();
      *&v152 = *v117;
      sub_1C46626D4();
      *v117 = v152;

    case 5:
      v148 = v15;
      _s14KeyValueSourceCMa();
      v40 = sub_1C4CDD394(a2[5], a2[6]);
      if (v41)
      {
        goto LABEL_15;
      }

      v42 = 0x756C61567473616CLL;
      v43 = 0xE900000000000065;
      goto LABEL_21;
    case 6:
      v148 = v15;
      _s26GlobalKnowledgeGraphSourceCMa();
      v40 = sub_1C4CD9044(a2[5], a2[6]);
      if (v41)
      {
LABEL_15:
        *(&v153 + 1) = MEMORY[0x1E69E6158];
        *&v152 = v40;
        *(&v152 + 1) = v41;
        sub_1C44482AC(&v152, &v155);
        swift_isUniquelyReferenced_nonNull_native();
        v154 = v24;
LABEL_16:
        sub_1C46601FC();
        v24 = v154;
LABEL_17:
        v37 = v150;
      }

      else
      {
        v42 = 0x5664497465737361;
        v43 = 0xEE006E6F69737265;
LABEL_21:
        v44 = sub_1C445FAA8(v42, v43);
        if (v45)
        {
          v46 = v44;
          swift_isUniquelyReferenced_nonNull_native();
          v154 = v24;
          sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
          sub_1C4F02458();
          v24 = v154;

          sub_1C44482AC((*(v24 + 56) + 32 * v46), &v155);
          sub_1C4F02478();
        }

        else
        {
          v155 = 0u;
          v156 = 0u;
        }

        v37 = v150;
        sub_1C4420C3C(&v155, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      }

      goto LABEL_61;
    case 7:
      v148 = v15;
      _s18NotificationSourceCMa();
      v39 = sub_1C4CE37C4(a2[5], a2[6]);
      *(&v153 + 1) = v21;
      *&v152 = v39;
      sub_1C44482AC(&v152, &v155);
      swift_isUniquelyReferenced_nonNull_native();
      v154 = v24;
      goto LABEL_16;
    default:
  }
}