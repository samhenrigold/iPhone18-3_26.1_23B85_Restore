unint64_t sub_1D8A01038()
{
  result = qword_1ECA66F58;
  if (!qword_1ECA66F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F58);
  }

  return result;
}

unint64_t sub_1D8A0108C()
{
  result = qword_1ECA66F60;
  if (!qword_1ECA66F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F60);
  }

  return result;
}

unint64_t sub_1D8A010E0()
{
  result = qword_1ECA66F68;
  if (!qword_1ECA66F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F68);
  }

  return result;
}

unint64_t sub_1D8A01134()
{
  result = qword_1ECA66F70;
  if (!qword_1ECA66F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F70);
  }

  return result;
}

unint64_t sub_1D8A01188()
{
  result = qword_1ECA66F80;
  if (!qword_1ECA66F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F80);
  }

  return result;
}

uint64_t sub_1D8A011DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s22VisualIntelligenceCore0A16LookupClassifierV6ResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = type metadata accessor for VisualLookupClassifier.Result(0);
  if (!_s22VisualIntelligenceCore22GenericParseDataResultV2eeoiySbAC_ACtFZ_0(a1 + v4[5], a2 + v4[5]))
  {
    goto LABEL_21;
  }

  v5 = v4[6];
  v6 = *(a2 + v5);
  if (*(a1 + v5))
  {
    if (!v6)
    {
      goto LABEL_21;
    }

    sub_1D881F764(0, &qword_1EE0E36A0, 0x1E69E58C0);
    v7 = v6;
    v8 = sub_1D8B16400();

    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v6)
  {
    goto LABEL_21;
  }

  if ((sub_1D88E71FC(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0)
  {
    goto LABEL_21;
  }

  v9 = v4[8];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_21:
    LOBYTE(v17) = 0;
    return v17 & 1;
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = sub_1D88E59B0(v10, v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((_s22VisualIntelligenceCore0A16LookupClassifierV6ResultV11SearchStateO2eeoiySbAG_AGtFZ_0(a1 + v4[9], a2 + v4[9]) & 1) == 0)
  {
    goto LABEL_21;
  }

  v13 = v4[10];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if ((v15 & 1) == 0)
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      goto LABEL_21;
    }

LABEL_23:
    LOBYTE(v17) = *(a1 + v4[11]) ^ *(a2 + v4[11]) ^ 1;
    return v17 & 1;
  }

  if (v17)
  {
    goto LABEL_23;
  }

  return v17 & 1;
}

unint64_t sub_1D8A01398()
{
  result = qword_1ECA66FC8;
  if (!qword_1ECA66FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66FC8);
  }

  return result;
}

uint64_t sub_1D8A013EC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA637A0, &unk_1D8B20CF0);
    sub_1D8A011DC(a2, type metadata accessor for VisualIntelligenceLookupResult, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A01488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A014F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8A01550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A015B8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66FE8, &unk_1D8B31628);
    sub_1D8A011DC(a2, MEMORY[0x1E69E0420], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A01658()
{
  result = qword_1ECA67048;
  if (!qword_1ECA67048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67048);
  }

  return result;
}

void sub_1D8A017C8(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GenericParseDataResult(319);
    if (v2 <= 0x3F)
    {
      sub_1D89B61C0(319, qword_1EE0E6B30, &qword_1ECA66FD8, &qword_1D8B31620);
      if (v3 <= 0x3F)
      {
        sub_1D8A018FC(319);
        if (v4 <= 0x3F)
        {
          sub_1D89B61C0(319, &qword_1EE0E39F8, &qword_1ECA637A0, &unk_1D8B20CF0);
          if (v5 <= 0x3F)
          {
            type metadata accessor for VisualLookupClassifier.Result.SearchState(319);
            if (v6 <= 0x3F)
            {
              sub_1D8A01954();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D8A018FC(uint64_t a1)
{
  if (!qword_1EE0E3A08)
  {
    sub_1D8B13CF0();
    v1 = sub_1D8B15DB0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E3A08);
    }
  }
}

void sub_1D8A01954()
{
  if (!qword_1EE0E3858)
  {
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3858);
    }
  }
}

uint64_t sub_1D8A019A4(uint64_t a1)
{
  result = sub_1D8B138B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D8A01A74()
{
  result = qword_1ECA67070;
  if (!qword_1ECA67070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67070);
  }

  return result;
}

unint64_t sub_1D8A01ACC()
{
  result = qword_1ECA67078;
  if (!qword_1ECA67078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67078);
  }

  return result;
}

unint64_t sub_1D8A01B24()
{
  result = qword_1ECA67080;
  if (!qword_1ECA67080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67080);
  }

  return result;
}

unint64_t sub_1D8A01B7C()
{
  result = qword_1ECA67088;
  if (!qword_1ECA67088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67088);
  }

  return result;
}

unint64_t sub_1D8A01BD4()
{
  result = qword_1ECA67090;
  if (!qword_1ECA67090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67090);
  }

  return result;
}

unint64_t sub_1D8A01C2C()
{
  result = qword_1ECA67098;
  if (!qword_1ECA67098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67098);
  }

  return result;
}

unint64_t sub_1D8A01C84()
{
  result = qword_1ECA670A0;
  if (!qword_1ECA670A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670A0);
  }

  return result;
}

unint64_t sub_1D8A01CDC()
{
  result = qword_1ECA670A8;
  if (!qword_1ECA670A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670A8);
  }

  return result;
}

unint64_t sub_1D8A01D34()
{
  result = qword_1ECA670B0;
  if (!qword_1ECA670B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670B0);
  }

  return result;
}

unint64_t sub_1D8A01D8C()
{
  result = qword_1ECA670B8;
  if (!qword_1ECA670B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670B8);
  }

  return result;
}

unint64_t sub_1D8A01DE4()
{
  result = qword_1ECA670C0;
  if (!qword_1ECA670C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670C0);
  }

  return result;
}

unint64_t sub_1D8A01E3C()
{
  result = qword_1ECA670C8;
  if (!qword_1ECA670C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670C8);
  }

  return result;
}

unint64_t sub_1D8A01E94()
{
  result = qword_1ECA670D0;
  if (!qword_1ECA670D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670D0);
  }

  return result;
}

unint64_t sub_1D8A01EEC()
{
  result = qword_1ECA670D8;
  if (!qword_1ECA670D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670D8);
  }

  return result;
}

unint64_t sub_1D8A01F44()
{
  result = qword_1ECA670E0;
  if (!qword_1ECA670E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670E0);
  }

  return result;
}

unint64_t sub_1D8A01F9C()
{
  result = qword_1ECA670E8;
  if (!qword_1ECA670E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670E8);
  }

  return result;
}

unint64_t sub_1D8A01FF4()
{
  result = qword_1ECA670F0;
  if (!qword_1ECA670F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670F0);
  }

  return result;
}

uint64_t sub_1D8A02048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6372616553746F6ELL && a2 == 0xED0000656C626168;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6261686372616573 && a2 == 0xEA0000000000656CLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8A021BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446573726170 && a2 == 0xE900000000000061 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6948686372616573 && a2 == 0xED000079726F7473 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6552686372616573 && a2 == 0xED000073746C7573 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7453686372616573 && a2 == 0xEB00000000657461 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D8B46BB0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B43730 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D8A024A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A02504(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D89FDFA8(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      }

      goto LABEL_10;
    }

LABEL_8:
    sub_1D87A1598(*(v0 + 56), *(v0 + 64));

    goto LABEL_10;
  }

  if (!*(v0 + 96))
  {

    goto LABEL_10;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1D8A02648(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D89FDFA8(a1, v4, v5, v1 + 32);
}

unint64_t sub_1D8A026F8()
{
  result = qword_1ECA67118;
  if (!qword_1ECA67118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67118);
  }

  return result;
}

uint64_t sub_1D8A0276C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D89FF090(a1, v4, v5, v1 + 32);
}

unint64_t sub_1D8A0281C()
{
  result = qword_1ECA67188;
  if (!qword_1ECA67188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67188);
  }

  return result;
}

uint64_t E5InferenceProvider.__allocating_init(modelURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  v4 = sub_1D8B13000();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  type metadata accessor for E5Bundle(0);
  swift_storeEnumTagMultiPayload();
  return v2;
}

uint64_t E5InferenceProvider.init(modelURL:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  v4 = sub_1D8B13000();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  type metadata accessor for E5Bundle(0);
  swift_storeEnumTagMultiPayload();
  return v1;
}

uint64_t sub_1D8A029C0()
{
  v1[11] = v0;
  v1[12] = type metadata accessor for E5Bundle(0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v2 = sub_1D8B13000();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A02AE8, 0, 0);
}

uint64_t sub_1D8A02AE8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v2 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8A02E94(*(v0 + 112));
    sub_1D8A02EF0();
    swift_allocError();
    *v4 = xmmword_1D8B32180;
    swift_willThrow();
    goto LABEL_7;
  }

  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 120));
  *(v0 + 80) = 0;
  if (e5rt_execution_stream_create())
  {
    result = e5rt_get_last_error_message();
    if (!result)
    {
      __break(1u);
      return result;
    }

    goto LABEL_5;
  }

  v13 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A0, &qword_1D8B321A8);
  sub_1D8B12FA0();
  if (*(v0 + 64))
  {
    if (e5rt_get_last_error_message())
    {
LABEL_5:
      v7 = *(v0 + 128);
      v6 = *(v0 + 136);
      v8 = *(v0 + 120);
      v9 = sub_1D8B15AD0();
      v11 = v10;
      sub_1D8A02EF0();
      swift_allocError();
      *v12 = v9;
      v12[1] = v11;
      swift_willThrow();
      (*(v7 + 8))(v6, v8);
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v13)
  {
    v15 = *(v0 + 72);
    if (v15)
    {
      v16 = *(v0 + 104);
      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
      *v16 = v13;
      v16[1] = v15;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1D8A02FD4(v16, v2 + v3);
      swift_endAccess();

      v14 = *(v0 + 8);
      goto LABEL_8;
    }
  }

  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 120);
  sub_1D8A02EF0();
  swift_allocError();
  *v20 = 0;
  v20[1] = 0;
  swift_willThrow();
  (*(v18 + 8))(v17, v19);
LABEL_7:

  v14 = *(v0 + 8);
LABEL_8:

  return v14();
}

uint64_t sub_1D8A02E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for E5Bundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A02E94(uint64_t a1)
{
  v2 = type metadata accessor for E5Bundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8A02EF0()
{
  result = qword_1ECA67198;
  if (!qword_1ECA67198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67198);
  }

  return result;
}

uint64_t sub_1D8A02F44@<X0>(uint64_t a2@<X8>)
{
  result = e5rt_execution_stream_operation_create_precompiled_compute_operation();
  *(a2 + 8) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_1D8A02FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for E5Bundle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A030F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t *))
{
  v7 = type metadata accessor for E5Bundle(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v3 + v10, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1D8A03284(a1, a2, *(v9 + 1), a3);
  }

  sub_1D8A02E94(v9);
  sub_1D8A02EF0();
  swift_allocError();
  *v12 = xmmword_1D8B190D0;
  return swift_willThrow();
}

uint64_t sub_1D8A03284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v7 = sub_1D8B15A10();
  LODWORD(a4) = a4(a3, v7 + 32, &v15);

  v8 = v15;
  v16 = v15;
  if (!a4)
  {
    if (v15)
    {
      v13 = sub_1D8A04838(v15);
      if (!v4)
      {
        v15 = v13;
        sub_1D8A049DC(v8, v13, 1);
        v8 = sub_1D8A0466C(v8);
        e5rt_buffer_object_release();
        if (!v16)
        {
          return v8;
        }

        goto LABEL_9;
      }
    }

    else
    {
      sub_1D8A02EF0();
      swift_allocError();
      *v14 = xmmword_1D8B254C0;
      swift_willThrow();
    }

    if (!v16)
    {
      return v8;
    }

LABEL_9:
    e5rt_io_port_release();
    return v8;
  }

  result = e5rt_get_last_error_message();
  if (result)
  {
    v10 = sub_1D8B15AD0();
    v8 = v11;
    sub_1D8A02EF0();
    swift_allocError();
    *v12 = v10;
    v12[1] = v8;
    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A03438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for E5Bundle(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v3 + v10, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1D8A03568(a1, a2, a3, *(v9 + 1));
  }

  sub_1D8A02E94(v9);
  sub_1D8A02EF0();
  swift_allocError();
  *v12 = xmmword_1D8B190D0;
  return swift_willThrow();
}

uint64_t sub_1D8A03568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D8B15A10();
  v4 = e5rt_execution_stream_operation_retain_input_port();

  result = 0;
  if (v4)
  {
    result = e5rt_get_last_error_message();
    if (result)
    {
      v6 = sub_1D8B15AD0();
      v8 = v7;
      sub_1D8A02EF0();
      swift_allocError();
      *v9 = v6;
      v9[1] = v8;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D8A03674()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for E5Bundle(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A03708, 0, 0);
}

uint64_t sub_1D8A03708()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[7];
  if (EnumCaseMultiPayload != 1)
  {
    sub_1D8A02E94(v5);
    v15 = 0;
    v17 = 1;
    goto LABEL_6;
  }

  v6 = *v5;
  if (!e5rt_execution_stream_encode_operation())
  {
    v21 = swift_task_alloc();
    v0[8] = v21;
    *(v21 + 16) = v6;
    last_error_message = swift_task_alloc();
    v0[9] = last_error_message;
    *last_error_message = v0;
    last_error_message[1] = sub_1D8A038F0;
    v12 = sub_1D8A03F34;
    v10 = 0x292874696D627573;
    v14 = MEMORY[0x1E69E7CA8] + 8;
    v8 = 0;
    v9 = 0;
    v11 = 0xE800000000000000;
    v13 = v21;

    return MEMORY[0x1EEE6DE38](last_error_message, v8, v9, v10, v11, v12, v13, v14);
  }

  last_error_message = e5rt_get_last_error_message();
  if (!last_error_message)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE38](last_error_message, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = sub_1D8B15AD0();
  v17 = v16;
LABEL_6:
  sub_1D8A02EF0();
  swift_allocError();
  *v18 = v15;
  v18[1] = v17;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D8A038F0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D8A03A70;
  }

  else
  {

    v2 = sub_1D8A03A0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A03A0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A03A70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t E5InferenceProvider.deinit()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for E5Bundle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v0 + v4, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v3;
    v7[0] = v3[1];
    v7[1] = v5;
    e5rt_execution_stream_operation_release();
    e5rt_execution_stream_release();
  }

  else
  {
    sub_1D8A02E94(v3);
  }

  sub_1D8A02E94(v0 + v4);
  return v0;
}

uint64_t E5InferenceProvider.__deallocating_deinit()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for E5Bundle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v0 + v4, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v3;
    v7[0] = v3[1];
    v7[1] = v5;
    e5rt_execution_stream_operation_release();
    e5rt_execution_stream_release();
  }

  else
  {
    sub_1D8A02E94(v3);
  }

  sub_1D8A02E94(v0 + v4);
  return swift_deallocClassInstance();
}

void sub_1D8A03D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A8, &qword_1D8B322B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-v6];
  (*(v5 + 16))(&v16[-v6], a1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1D8A0454C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8A045E4;
  aBlock[3] = &block_descriptor_9;
  v10 = _Block_copy(aBlock);

  LODWORD(a2) = e5rt_execution_stream_submit_async();
  _Block_release(v10);
  if (a2)
  {
    if (e5rt_get_last_error_message())
    {
      v11 = sub_1D8B15AD0();
      v13 = v12;
      sub_1D8A02EF0();
      v14 = swift_allocError();
      *v15 = v11;
      v15[1] = v13;
      swift_willThrow();
      aBlock[0] = v14;
      sub_1D8B15E10();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D8A03F64(uint64_t a1)
{
  result = type metadata accessor for E5Bundle(319);
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

uint64_t dispatch thunk of E5InferenceProvider.preheat()()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D886553C;

  return v4();
}

uint64_t dispatch thunk of E5InferenceProvider.infer()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D8864FBC;

  return v4();
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore7E5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8A04300(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A04358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void sub_1D8A043B8(uint64_t a1)
{
  sub_1D8B13000();
  if (v1 <= 0x3F)
  {
    sub_1D8A0442C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8A0442C()
{
  if (!qword_1EE0E3688)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0E3688);
    }
  }
}

uint64_t sub_1D8A04488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (e5rt_execution_stream_reset())
  {
    result = e5rt_get_last_error_message();
    if (result)
    {
      v5 = sub_1D8B15AD0();
      v7 = v6;
      sub_1D8A02EF0();
      swift_allocError();
      *v8 = v5;
      v8[1] = v7;
      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A8, &qword_1D8B322B0);
      return sub_1D8B15E10();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A8, &qword_1D8B322B0);
    return sub_1D8B15E20();
  }

  return result;
}

uint64_t sub_1D8A0454C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A8, &qword_1D8B322B0);
  v7 = *(v3 + 16);

  return sub_1D8A04488(a1, a2, a3, v7);
}

double sub_1D8A045E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);

  return result;
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D8A0466C(uint64_t a1)
{
  if (e5rt_io_port_retain_tensor_desc())
  {
    result = e5rt_get_last_error_message();
    if (result)
    {
      v2 = sub_1D8B15AD0();
      v4 = v3;
      sub_1D8A02EF0();
      swift_allocError();
      *v5 = v2;
      v5[1] = v4;
      swift_willThrow();
      return v2;
    }

    __break(1u);
  }

  else
  {
    if (!e5rt_tensor_desc_get_shape())
    {
      v2 = MEMORY[0x1E69E7CC0];
      e5rt_tensor_desc_release();
      return v2;
    }

    result = e5rt_get_last_error_message();
    if (result)
    {
      v2 = sub_1D8B15AD0();
      v7 = v6;
      sub_1D8A02EF0();
      swift_allocError();
      *v8 = v2;
      v8[1] = v7;
      swift_willThrow();
      e5rt_tensor_desc_release();
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A04838(uint64_t a1)
{
  if (!e5rt_io_port_retain_tensor_desc())
  {
    if (e5rt_tensor_desc_alloc_buffer_object())
    {
      if (e5rt_get_last_error_message())
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    v2 = 0;
    if (!e5rt_buffer_object_get_iosurface())
    {
      sub_1D8A02EF0();
      swift_allocError();
      *v9 = xmmword_1D8B32190;
      goto LABEL_10;
    }

    result = e5rt_get_last_error_message();
    if (!result)
    {
      goto LABEL_14;
    }

LABEL_9:
    v2 = sub_1D8B15AD0();
    v7 = v6;
    sub_1D8A02EF0();
    swift_allocError();
    *v8 = v2;
    v8[1] = v7;
LABEL_10:
    swift_willThrow();
    e5rt_tensor_desc_release();
    return v2;
  }

  result = e5rt_get_last_error_message();
  if (result)
  {
    v2 = sub_1D8B15AD0();
    v4 = v3;
    sub_1D8A02EF0();
    swift_allocError();
    *v5 = v2;
    v5[1] = v4;
    swift_willThrow();
    return v2;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1D8A049DC(uint64_t a1, uint64_t a2, char a3)
{
  if (e5rt_io_port_is_tensor())
  {
    result = e5rt_get_last_error_message();
    if (result)
    {
LABEL_3:
      v5 = sub_1D8B15AD0();
      v7 = v6;
      sub_1D8A02EF0();
      swift_allocError();
      *v8 = v5;
      v8[1] = v7;
      return swift_willThrow();
    }

    __break(1u);
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
LABEL_9:
    if (e5rt_io_port_is_tensor())
    {
      if (e5rt_get_last_error_message())
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    if (e5rt_surface_object_create_from_iosurface())
    {
      if (!e5rt_get_last_error_message())
      {
        __break(1u);
        if (e5rt_io_port_bind_buffer_object())
        {
          result = e5rt_get_last_error_message();
          if (!result)
          {
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          v9 = sub_1D8B15AD0();
          v11 = v10;
          sub_1D8A02EF0();
          swift_allocError();
          *v12 = v9;
          v12[1] = v11;
          swift_willThrow();
        }

        return e5rt_buffer_object_release();
      }
    }

    else
    {
      if (!e5rt_io_port_bind_surface_object())
      {
        return e5rt_surface_object_release();
      }

      result = e5rt_get_last_error_message();
      if (!result)
      {
LABEL_24:
        __break(1u);
        return result;
      }
    }

    v13 = sub_1D8B15AD0();
    v15 = v14;
    sub_1D8A02EF0();
    swift_allocError();
    *v16 = v13;
    v16[1] = v15;
    swift_willThrow();
    return e5rt_surface_object_release();
  }

  result = e5rt_io_port_bind_buffer_object();
  if (result)
  {
    if (e5rt_get_last_error_message())
    {
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t GroundingMD6_1Descriptor.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  v4 = sub_1D8B13000();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroundingMD6_1Descriptor.__allocating_init()()
{
  v0 = swift_allocObject();
  GroundingMD6_1Descriptor.init()();
  return v0;
}

void GroundingMD6_1Descriptor.init()()
{
  v1 = sub_1D8B13000();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_retinaSize) = 640;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_scoreThreshold) = 1036831949;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_iouThreshold) = 1051931443;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_maxBoxes) = 8400;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  *(v0 + 16) = v6;
  v7 = v6;
  v8 = sub_1D8B15940();
  v9 = sub_1D8B15940();
  v10 = [v7 URLForResource:v8 withExtension:v9];

  if (v10)
  {
    sub_1D8B12FB0();

    (*(v2 + 32))(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL, v4, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D8A04EE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(v0 + 16);
  v11 = sub_1D8B15940();
  v12 = sub_1D8B15940();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    sub_1D8B12FB0();

    v14 = sub_1D8B13000();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = sub_1D8B13000();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1D88E057C(v7, v9);
  sub_1D888B4E8(v9, v4);
  sub_1D8B13000();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v4, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_1D8B13010();
    sub_1D888F158(v9);
    (*(v15 + 8))(v4, v14);
    return v17;
  }

  return result;
}

uint64_t GroundingMD6_1Descriptor.deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  v2 = sub_1D8B13000();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GroundingMD6_1Descriptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  v2 = sub_1D8B13000();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1D8A05270()
{
  result = qword_1ECA671B0;
  if (!qword_1ECA671B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA671B0);
  }

  return result;
}

unint64_t sub_1D8A052C8()
{
  result = qword_1ECA671B8;
  if (!qword_1ECA671B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA671B8);
  }

  return result;
}

unint64_t sub_1D8A05324()
{
  result = qword_1ECA671C0;
  if (!qword_1ECA671C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA671C0);
  }

  return result;
}

uint64_t sub_1D8A05380@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  v5 = sub_1D8B13000();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for GroundingMD6_1Descriptor(uint64_t a1)
{
  result = qword_1ECA671C8;
  if (!qword_1ECA671C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8A05568(uint64_t a1)
{
  result = sub_1D8B13000();
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

void sub_1D8A0568C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D87F4C1C(0, v2, 0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
    v5 = a1 + ((*(*(v4 - 1) + 80) + 32) & ~*(*(v4 - 1) + 80));
    v30 = *(*(v4 - 1) + 72);
    while (1)
    {
      v6 = (v5 + v4[10]);
      v33 = v6[1];
      v34 = v6[2];
      v35 = *v6;
      v36 = v6[3];
      v7 = *(v5 + v4[11]);
      if (*(v7 + 16))
      {
        visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v7 + 32));
        if (v37 == 181)
        {
          goto LABEL_19;
        }

        v8 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
        v10 = v9;
      }

      else
      {
        v10 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
      }

      v11 = *a2;
      if (!*(*a2 + 16))
      {
        break;
      }

      v12 = sub_1D87EF838(v8, v10);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        __break(1u);
        break;
      }

      v15 = *(*(v11 + 56) + 8 * v12);
      if (*(v7 + 16))
      {
        visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v7 + 32));
        if (v37 == 181)
        {
          goto LABEL_20;
        }

        v16 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
      }

      else
      {
        v17 = 0xE700000000000000;
        v16 = 0x6E776F6E6B6E75;
      }

      v37 = v16;
      v38 = v17;
      v32 = v15;
      MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98, &qword_1D8B267F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D8B1AB90;
      v19 = v4;
      v20 = *(v5 + v4[9]);
      *(v18 + 56) = MEMORY[0x1E69E6448];
      *(v18 + 64) = MEMORY[0x1E69E64A8];
      *(v18 + 32) = v20;
      v21 = sub_1D8B159A0();
      MEMORY[0x1DA71EFA0](v21);

      v23 = *(v39 + 16);
      v22 = *(v39 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D87F4C1C((v22 > 1), v23 + 1, 1);
      }

      v24 = vbslq_s8(vcgtq_f64(v35, v33), v33, v35);
      v25 = vbslq_s8(vcgtq_f64(v24, v34), v34, v24);
      v26 = vbslq_s8(vcgtq_f64(v25, v36), v36, v25);
      v27 = vbslq_s8(vcgeq_f64(v33, v35), v33, v35);
      v28 = vbslq_s8(vcgeq_f64(v34, v27), v34, v27);
      *(v39 + 16) = v23 + 1;
      v29 = v39 + 96 * v23;
      *(v29 + 32) = v26;
      *(v29 + 48) = vsubq_f64(vbslq_s8(vcgeq_f64(v36, v28), v36, v28), v26);
      *(v29 + 64) = 0x3F689374BC6A7EFALL;
      *(v29 + 72) = v32;
      *(v29 + 80) = v37;
      *(v29 + 88) = v38;
      *(v29 + 96) = 0;
      *(v29 + 104) = 0;
      *(v29 + 112) = 0;
      *(v29 + 120) = 1;
      v5 += v30;
      --v2;
      v4 = v19;
      if (!v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t sub_1D8A059EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D8B16470();
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v12 - v8;
  v10 = *(v2 + *(a1 + 44));
  if (*(v10 + 16))
  {
    v12[1] = *(v10 + 32);
    swift_getAssociatedConformanceWitness();
    sub_1D8B15C50();
    v11 = *(AssociatedTypeWitness - 8);
    result = (*(v11 + 48))(v9, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v11 + 32))(a2, v9, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t GroundingResult.label.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  if (!*(*(v1 + *(v5 + 44)) + 16))
  {
    return 0x6E776F6E6B6E75;
  }

  sub_1D8A059EC(v5, &v10 - v6);
  swift_getAssociatedConformanceWitness();
  v8 = sub_1D8B16B50();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_1D8A05CB0()
{
  v0 = sub_1D88F8978();
  v7 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 32;
    do
    {
      v3 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.categories.getter();
      sub_1D88F38F4(v3);
      v2 += 8;
      --v1;
    }

    while (v1);

    v4 = v7;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1D87C3B2C(v4);

  return v5;
}

uint64_t GroundingResult.taxonomyPredictionSample.getter(uint64_t a1)
{
  v9[5] = *(v1 + *(a1 + 44));
  v2 = *(a1 + 24);
  v9[2] = *(a1 + 16);
  v9[3] = v2;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671E0, &qword_1D8B32380);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1D879FE70(&qword_1ECA671E8, &qword_1ECA671E0, &qword_1D8B32380);
  v7 = sub_1D87DFC48(sub_1D8A0E978, v9, v3, TupleTypeMetadata2, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);

  return v7;
}

void sub_1D8A05E6C(uint64_t a1, unint64_t *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v33 = v7;
  v34 = v3;
  while (v6)
  {
LABEL_11:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = v12[1];
    v36 = *v12;
    v37 = 0;

    while (1)
    {
      MEMORY[0x1DA721350](&v37, 8);
      if (0x20000000000001 * v37 >= 0x1FFFFFFFFFF801)
      {
        break;
      }

      v37 = 0;
    }

    v14 = (v37 * 0x20000000000001uLL) >> 64;
    do
    {
      v37 = 0;
      MEMORY[0x1DA721350](&v37, 8);
    }

    while (0x20000000000001 * v37 < 0x1FFFFFFFFFF801);
    v15 = (v37 * 0x20000000000001uLL) >> 64;
    do
    {
      v37 = 0;
      MEMORY[0x1DA721350](&v37, 8);
    }

    while (0x20000000000001 * v37 < 0x1FFFFFFFFFF801);
    GenericRGB = CGColorCreateGenericRGB(vcvtd_n_f64_u64(v14, 0x35uLL) + 0.0, vcvtd_n_f64_u64(v15, 0x35uLL) + 0.0, vcvtd_n_f64_u64((v37 * 0x20000000000001uLL) >> 64, 0x35uLL) + 0.0, 1.0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *a2;
    v18 = v37;
    v19 = a2;
    *a2 = 0x8000000000000000;
    v20 = sub_1D87EF838(v36, v13);
    v22 = *(v18 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_30;
    }

    v26 = v21;
    if (*(v18 + 24) < v25)
    {
      sub_1D8975860(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1D87EF838(v36, v13);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_32;
      }

LABEL_23:
      v28 = v37;
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v32 = v20;
    sub_1D896B89C();
    v20 = v32;
    v28 = v37;
    if (v26)
    {
LABEL_4:
      v9 = v28[7];
      v10 = *(v9 + 8 * v20);
      *(v9 + 8 * v20) = GenericRGB;

      goto LABEL_5;
    }

LABEL_24:
    v28[(v20 >> 6) + 8] |= 1 << v20;
    v29 = (v28[6] + 16 * v20);
    *v29 = v36;
    v29[1] = v13;
    *(v28[7] + 8 * v20) = GenericRGB;
    v30 = v28[2];
    v24 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v24)
    {
      goto LABEL_31;
    }

    v28[2] = v31;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v19;
    *v19 = v28;

    v7 = v33;
    v3 = v34;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_1D8B16C30();
  __break(1u);
}

uint64_t sub_1D8A06150(void *a1, uint64_t a2, float a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673B8, &qword_1D8B32E50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A0FE64();
  sub_1D8B16DD0();
  v12 = 0;
  sub_1D8B16AD0();
  if (!v3)
  {
    v11 = 1;
    sub_1D8B16AC0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D8A062D8()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x646E496C6562616CLL;
  }
}

void sub_1D8A0631C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E496C6562616CLL && a2 == 0xEA00000000007865;
  if (v6 || (sub_1D8B16BA0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D8A06408(uint64_t a1)
{
  v2 = sub_1D8A0FE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A06444(uint64_t a1)
{
  v2 = sub_1D8A0FE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D8A06480(uint64_t a1@<X8>, void *a2@<X0>)
{
  v5 = sub_1D8A0FCB0(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
  }
}

uint64_t sub_1D8A064D0()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  sub_1D8B16D60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A06588(uint64_t a1)
{
  v2 = *v1;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v2);
  sub_1D8B16D60();
  return sub_1D8B16D80();
}

uint64_t GroundingResult.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 GroundingResult.corners.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 40);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

double GroundingResult.rotationAngle.getter@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 52));
  *a2 = result;
  return result;
}

void GroundingResult.modifyWithPrediction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v20[0] = *(a1 + 16);
  v20[1] = v11;
  v12 = *(a1 + 64);
  v20[2] = *(a1 + 48);
  v20[3] = v12;
  v13 = *(a1 + 80);
  (*(v14 + 16))(v10, v4);
  v15 = *(v4 + *(a2 + 36));
  v16 = *(v4 + *(a2 + 44));
  v17 = *(v4 + *(a2 + 48));
  v19 = *(v4 + *(a2 + 52));
  sub_1D8A0682C(v10, v20, v16, v17, &v19, *(v4 + *(a2 + 60)), *(a2 + 16), *(a2 + 24), a3, v15, v13);
}

__n128 sub_1D8A0682C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>)
{
  v21 = *a5;
  v22 = sub_1D8B13240();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v24 = type metadata accessor for GroundingResult(0, a7, a8, v23);
  *(a9 + v24[9]) = a10;
  v25 = a9 + v24[10];
  v26 = *(a2 + 16);
  *v25 = *a2;
  *(v25 + 16) = v26;
  result = *(a2 + 32);
  v28 = *(a2 + 48);
  *(v25 + 32) = result;
  *(v25 + 48) = v28;
  *(a9 + v24[11]) = a3;
  *(a9 + v24[12]) = a4;
  *(a9 + v24[13]) = v21;
  *(a9 + v24[14]) = a11;
  *(a9 + v24[15]) = a6;
  return result;
}

void GroundingResult.modifyWithRotation(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  (*(v12 + 16))(v10, v4);
  v13 = *(a2 + 40);
  v14 = *(v4 + *(a2 + 36));
  v15 = *(v4 + v13 + 16);
  v33[0] = *(v4 + v13);
  v33[1] = v15;
  v16 = *(v4 + v13 + 48);
  v33[2] = *(v4 + v13 + 32);
  v33[3] = v16;
  v31 = *(v4 + *(a2 + 52));
  v32 = v11;
  sub_1D8A5A9D8(&v32, &v31, v30);
  v17 = *(v4 + *(a2 + 44));
  v18 = *(v4 + *(a2 + 48));
  *&v33[0] = v11;
  v19 = *(v4 + *(a2 + 56));
  v32 = *(v4 + *(a2 + 60));
  v21 = *(a2 + 24);
  v27 = *(a2 + 16);
  v20 = v27;
  v28 = v21;
  v29 = v11;
  v22 = sub_1D8B15DB0();

  WitnessTable = swift_getWitnessTable();
  v25 = sub_1D87DFC48(sub_1D8A0E998, v26, v22, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v24);

  sub_1D8A0682C(v10, v30, v17, v18, v33, v25, v20, v21, a3, v14, v19);
}

uint64_t GroundingResult.description.getter(uint64_t a1)
{
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD000000000000010, 0x80000001D8B47190);
  swift_getMetatypeMetadata();
  v3 = sub_1D8B159E0();
  MEMORY[0x1DA71EFA0](v3);

  MEMORY[0x1DA71EFA0](0x203A6469283ELL, 0xE600000000000000);
  sub_1D8B13240();
  sub_1D8A12344(&qword_1EE0E9890, MEMORY[0x1E69695E0]);
  v4 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v4);

  MEMORY[0x1DA71EFA0](0x6469666E6F63202CLL, 0xEE00203A65636E65);
  sub_1D8B16030();
  MEMORY[0x1DA71EFA0](0x72656E726F63202CLL, 0xEB00000000203A73);
  v5 = Corners.description.getter();
  MEMORY[0x1DA71EFA0](v5);

  MEMORY[0x1DA71EFA0](0xD000000000000010, 0x80000001D8B471B0);
  v6 = MEMORY[0x1DA71F1E0](*(v1 + *(a1 + 44)), &type metadata for LabelConfidencePair);
  MEMORY[0x1DA71EFA0](v6);

  MEMORY[0x1DA71EFA0](0x646465626D65202CLL, 0xEE003C203A676E69);
  v7 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v7);

  MEMORY[0x1DA71EFA0](0xD00000000000001BLL, 0x80000001D8B471D0);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_1D8B16020();
  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D8A06E7C@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1D8B16470();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v14 - v8;
  v10 = *(a1 + 2);
  v14[1] = *a1;
  swift_getAssociatedConformanceWitness();
  sub_1D8B15C50();
  v11 = *(AssociatedTypeWitness - 8);
  result = (*(v11 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = *(swift_getTupleTypeMetadata2() + 48);
    result = (*(v11 + 32))(a4, v9, AssociatedTypeWitness);
    *(a4 + v13) = v10;
  }

  return result;
}

uint64_t static GroundingResult.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for GroundingResult(0, a3, a4, v8);
  if (*(a1 + *(v9 + 36)) != *(a2 + *(v9 + 36)))
  {
    return 0;
  }

  v10 = v9;
  v11 = (a1 + *(v9 + 40));
  v12 = v11[3];
  v23[2] = v11[2];
  v23[3] = v12;
  v13 = v11[1];
  v23[0] = *v11;
  v23[1] = v13;
  v14 = (a2 + *(v9 + 40));
  v15 = v14[1];
  v22[0] = *v14;
  v22[1] = v15;
  v16 = v14[3];
  v22[2] = v14[2];
  v22[3] = v16;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v23, v22) || (sub_1D88E3154(*(a1 + v10[11]), *(a2 + v10[11])) & 1) == 0 || (sub_1D8A0716C(*(a1 + v10[12]), *(a2 + v10[12])) & 1) == 0 || *(a1 + v10[13]) != *(a2 + v10[13]) || *(a1 + v10[14]) != *(a2 + v10[14]))
  {
    return 0;
  }

  v17 = v10[15];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69530](v18, v19, v10, WitnessTable);
}

uint64_t sub_1D8A0716C(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A071C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61537365726F6373 && a2 == 0xEC000000656C706DLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D8B47270 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D8A074B4(unsigned __int8 a1)
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](a1);
  return sub_1D8B16D80();
}

unint64_t sub_1D8A074FC(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x6D617473656D6974;
  if (a1 != 6)
  {
    v2 = 0xD000000000000024;
  }

  v3 = 0x6E69646465626D65;
  if (a1 != 4)
  {
    v3 = 0x6E6F697461746F72;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x7372656E726F63;
  if (a1 != 2)
  {
    v4 = 0x61537365726F6373;
  }

  if (a1)
  {
    v1 = 0x6E656469666E6F63;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8A07640(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8A0748C(v3, *v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A07694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A071C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A076C4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D8A0FE5C();
  *a2 = result;
  return result;
}

uint64_t sub_1D8A076F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D8A07744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GroundingResult.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v20 = a2;
  type metadata accessor for GroundingResult.CodingKeys(255, v8, *(a2 + 24), a4);
  swift_getWitnessTable();
  v9 = sub_1D8B16B10();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8B16DD0();
  LOBYTE(v23) = 0;
  sub_1D8B13240();
  sub_1D8A12344(&qword_1ECA637D8, MEMORY[0x1E69695B0]);
  v13 = v21;
  sub_1D8B16AE0();
  if (!v13)
  {
    v14 = v20;
    v28 = 1;
    sub_1D8B16AC0();
    v15 = (v5 + v14[10]);
    v16 = v15[1];
    v23 = *v15;
    v24 = v16;
    v17 = v15[3];
    v25 = v15[2];
    v26 = v17;
    v27 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    *&v23 = *(v5 + v14[11]);
    v27 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671E0, &qword_1D8B32380);
    sub_1D8A0EA80(&qword_1ECA671F0, sub_1D8A0EA2C, MEMORY[0x1E69E6300]);
    sub_1D8B16AE0();
    *&v23 = *(v5 + v14[12]);
    v27 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67200, &qword_1D8B32388);
    sub_1D8A0EB4C(&qword_1ECA67208, MEMORY[0x1E69E7600], MEMORY[0x1E69E6BF0]);
    sub_1D8B16AE0();
    *&v23 = *(v5 + v14[13]);
    v27 = 5;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v23) = 6;
    sub_1D8B16AB0();
    *&v23 = *(v5 + v14[15]);
    v27 = 7;
    sub_1D8B15DB0();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1D8B16AE0();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t GroundingResult.hash(into:)(uint64_t a1, int *a2)
{
  sub_1D8B13240();
  sub_1D8A12344(&qword_1EE0E98A0, MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  sub_1D8B16D60();
  v5 = (v2 + a2[10]);
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[7];
  sub_1D8818B80(*v5, v5[1]);
  sub_1D8818B80(v6, v7);
  sub_1D8818B80(v8, v9);
  sub_1D8818B80(v10, v11);
  sub_1D87D0390(a1, *(v2 + a2[11]));
  v12 = *(v2 + a2[12]);
  v13 = *(v12 + 16);
  MEMORY[0x1DA720210](v13);
  if (v13)
  {
    v14 = v12 + 32;
    do
    {
      v14 += 2;
      sub_1D8B16D50();
      --v13;
    }

    while (v13);
  }

  v15 = *(v2 + a2[13]);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1DA720250](*&v15);
  v16 = *(v2 + a2[14]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1DA720250](*&v16);
  v17 = *(v2 + a2[15]);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69520](a1, v17, a2, WitnessTable);
}

uint64_t GroundingResult.hashValue.getter(int *a1)
{
  sub_1D8B16D20();
  GroundingResult.hash(into:)(v3, a1);
  return sub_1D8B16D80();
}

void GroundingResult.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = sub_1D8B13240();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroundingResult.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v37 = sub_1D8B16A30();
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v30 - v10;
  v13 = type metadata accessor for GroundingResult(0, a2, a3, v12);
  v30 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v11;
  v16 = v38;
  sub_1D8B16DB0();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = v15;
    v18 = v13;
    v19 = v32;
    LOBYTE(v41) = 0;
    sub_1D8A12344(&unk_1ECA689C0, MEMORY[0x1E69695D0]);
    v20 = v33;
    sub_1D8B16A10();
    v21 = *(v19 + 32);
    v22 = v17;
    v21(v17, v35, v20);
    LOBYTE(v41) = 1;
    sub_1D8B169F0();
    v23 = v18;
    *&v22[v18[9]] = v24;
    v46 = 2;
    sub_1D881BC34();
    sub_1D8B16A10();
    v25 = &v22[v18[10]];
    v26 = v42;
    *v25 = v41;
    *(v25 + 1) = v26;
    v27 = v44;
    *(v25 + 2) = v43;
    *(v25 + 3) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671E0, &qword_1D8B32380);
    v45 = 3;
    sub_1D8A0EA80(&qword_1ECA67210, sub_1D8A0EAF8, MEMORY[0x1E69E6330]);
    sub_1D8B16A10();
    *&v22[v18[11]] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67200, &qword_1D8B32388);
    v45 = 4;
    sub_1D8A0EB4C(&qword_1ECA67220, MEMORY[0x1E69E7628], MEMORY[0x1E69E6C10]);
    sub_1D8B16A10();
    *&v22[v18[12]] = v40;
    v45 = 5;
    sub_1D88913B8();
    sub_1D8B16A10();
    *&v22[v18[13]] = v40;
    LOBYTE(v40) = 6;
    sub_1D8B169E0();
    *&v22[v18[14]] = v28;
    sub_1D8B15DB0();
    v45 = 7;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1D8B16A10();
    (*(v34 + 8))(v36, v37);
    *&v22[v18[15]] = v40;
    v29 = v30;
    (*(v30 + 16))(v31, v22, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v29 + 8))(v22, v23);
  }
}

uint64_t sub_1D8A084A8(uint64_t a1, int *a2)
{
  sub_1D8B16D20();
  GroundingResult.hash(into:)(v4, a2);
  return sub_1D8B16D80();
}

void sub_1D8A08524(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673D8, &qword_1D8B32E80);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v64 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v64 - v10;
  sub_1D87A0E38(a2, v7, &qword_1ECA673D8, &qword_1D8B32E80);
  v12 = *v7;
  sub_1D881F6FC(v7 + *(v5 + 56), v11, &qword_1ECA67750, &unk_1D8B1E0C0);
  v13 = *(v9 + 52);
  v14 = v12;
  v65 = v11;
  v15 = *&v11[v13];
  v16 = *(v15 + 16);

  v67 = v16;
  if (!v16)
  {
LABEL_34:
    sub_1D87A14E4(v65, &qword_1ECA67750, &unk_1D8B1E0C0);

    return;
  }

  v17 = 0;
  v18 = (v15 + 40);
  v66 = v15;
  while (v17 < *(v15 + 16))
  {
    v20 = *v18;
    visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v18 - 1));
    v21 = v68;
    if (v68 == 181)
    {
      goto LABEL_40;
    }

    v22 = *a1;
    if (!*(*a1 + 16) || (v23 = sub_1D881F7DC(), (v24 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *a1;
      v42 = v68;
      v43 = sub_1D881F7DC();
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v37 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v37)
      {
        goto LABEL_36;
      }

      v48 = v44;
      if (v42[3] >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_22;
        }

        v60 = v15;
        v61 = v14;
        v62 = v43;
        sub_1D896B4B0();
        v43 = v62;
        v14 = v61;
        v15 = v60;
        v50 = v68;
        if (v48)
        {
          goto LABEL_3;
        }

LABEL_23:
        v50[(v43 >> 6) + 8] |= 1 << v43;
        *(v50[6] + v43) = v21;
        v51 = v50[7] + 16 * v43;
        *v51 = v20;
        *(v51 + 4) = v20;
        *(v51 + 8) = v14;
        v52 = v50[2];
        v37 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v37)
        {
          goto LABEL_37;
        }

        v50[2] = v53;
      }

      else
      {
        sub_1D89751D8(v47, isUniquelyReferenced_nonNull_native);
        v43 = sub_1D881F7DC();
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_41;
        }

LABEL_22:
        v50 = v68;
        if ((v48 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_3:
        v19 = v50[7] + 16 * v43;
        *v19 = v20;
        *(v19 + 4) = v20;
        *(v19 + 8) = v14;
      }

      *a1 = v50;
      goto LABEL_5;
    }

    v25 = v22[7] + 16 * v23;
    v27 = *v25;
    v26 = *(v25 + 4);
    v28 = *(v25 + 8);
    v29 = v14;
    if (v26 < v20)
    {
      v30 = v20;
    }

    else
    {
      v14 = v28;
      v30 = v26;
    }

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *a1;
    v32 = v68;
    v33 = sub_1D881F7DC();
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_38;
    }

    v39 = v34;
    if (v32[3] >= v38)
    {
      if ((v31 & 1) == 0)
      {
        v63 = v33;
        sub_1D896B4B0();
        v33 = v63;
      }
    }

    else
    {
      sub_1D89751D8(v38, v31);
      v33 = sub_1D881F7DC();
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_41;
      }
    }

    v54 = v20 + v27;
    v55 = v68;
    if (v39)
    {
      v56 = v68[7] + 16 * v33;
      *v56 = v54;
      *(v56 + 4) = v30;
      *(v56 + 8) = v14;
    }

    else
    {
      v68[(v33 >> 6) + 8] |= 1 << v33;
      *(v55[6] + v33) = v21;
      v57 = v55[7] + 16 * v33;
      *v57 = v54;
      *(v57 + 4) = v30;
      *(v57 + 8) = v14;
      v58 = v55[2];
      v37 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v37)
      {
        goto LABEL_39;
      }

      v55[2] = v59;
    }

    *a1 = v55;
    v14 = v29;
    v15 = v66;
LABEL_5:
    ++v17;
    v18 += 4;
    if (v67 == v17)
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
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_1D8B16C30();
  __break(1u);
}

uint64_t GroundingProcessor.NonMaximumSuppressionPolicy.description.getter()
{
  v1 = 0x6177417373616C63;
  v2 = 0x676E696E6E7572;
  if (*v0 != 2)
  {
    v2 = 0x746369727473;
  }

  if (*v0)
  {
    v1 = 1701736302;
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

uint64_t sub_1D8A089E8(uint64_t a1)
{
  v2 = sub_1D8A0ED08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A08A24(uint64_t a1)
{
  v2 = sub_1D8A0ED08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A08A60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A10318(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A08A88(uint64_t a1)
{
  v2 = sub_1D8A0EBB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A08AC4(uint64_t a1)
{
  v2 = sub_1D8A0EBB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A08B00(uint64_t a1)
{
  v2 = sub_1D8A0ECB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A08B3C(uint64_t a1)
{
  v2 = sub_1D8A0ECB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A08B78(uint64_t a1)
{
  v2 = sub_1D8A0EC60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A08BB4(uint64_t a1)
{
  v2 = sub_1D8A0EC60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A08BF0(uint64_t a1)
{
  v2 = sub_1D8A0EC0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A08C2C(uint64_t a1)
{
  v2 = sub_1D8A0EC0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroundingProcessor.NonMaximumSuppressionPolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67228, &qword_1D8B32390);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67230, &qword_1D8B32398);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67238, &qword_1D8B323A0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67240, &qword_1D8B323A8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67248, &qword_1D8B323B0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A0EBB8();
  sub_1D8B16DD0();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D8A0EC60();
      v18 = v27;
      sub_1D8B16A40();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D8A0EC0C();
      v18 = v30;
      sub_1D8B16A40();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D8A0ECB4();
    v18 = v24;
    sub_1D8B16A40();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D8A0ED08();
  sub_1D8B16A40();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t GroundingProcessor.NonMaximumSuppressionPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t GroundingProcessor.NonMaximumSuppressionPolicy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67278, &qword_1D8B323B8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67280, &qword_1D8B323C0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67288, &qword_1D8B323C8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67290, &qword_1D8B323D0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67298, &unk_1D8B323D8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8A0EBB8();
  v15 = v46;
  sub_1D8B16DB0();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1D8B16A20();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D881F7BC();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D8B16770();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v28 = &type metadata for GroundingProcessor.NonMaximumSuppressionPolicy;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D8A0ECB4();
        v32 = v35;
        sub_1D8B16950();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D8A0ED08();
        v25 = v35;
        sub_1D8B16950();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D8A0EC60();
      v31 = v35;
      sub_1D8B16950();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1D8A0EC0C();
      v33 = v35;
      sub_1D8B16950();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1D8A097BC(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D8B151E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-v9];
  v23 = *a1;
  v22 = *(a1 + 8);
  v11 = a1[2];
  v12 = *(a1 + 24);
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_signposter;
  if (qword_1EE0E4280 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_1EE0E4288);
  v15 = *(v5 + 16);
  v15(v10, v14, v4);
  v15((v2 + v13), v10, v4);
  v15(v8, v10, v4);
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15140();
  (*(v5 + 8))(v10, v4);
  v16 = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_descriptor;
  type metadata accessor for GroundingMD6_1Descriptor(0);
  swift_allocObject();
  GroundingMD6_1Descriptor.init()();
  *(v2 + v16) = v17;
  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_featuresSurface) = 0;
  v18 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage;
  *v18 = 0;
  *(v18 + 8) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_taxonomySize) = 181;
  v19 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_configuration;
  *v19 = v23;
  *(v19 + 8) = v22;
  *(v19 + 16) = v11;
  *(v19 + 24) = v12;
  return v2;
}

uint64_t GroundingProcessor.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage));
  sub_1D8A09AD0((v1 + 8));
  os_unfair_lock_unlock(v1);
  sub_1D8A123F0(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_signposter, type metadata accessor for LoggingSignposter);

  sub_1D87A14E4(v1 + 8, &qword_1ECA672B0, &qword_1D8B323E8);
  return v0;
}

uint64_t *sub_1D8A09AD0(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 56);
    while (v3 < *(v1 + 16))
    {
      result = *v4;
      if (*v4)
      {
        result = MEMORY[0x1DA721330](result, -1, -1);
      }

      ++v3;
      v4 += 6;
      if (v2 == v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t GroundingProcessor.__deallocating_deinit()
{
  GroundingProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8A09BAC(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v2[39] = type metadata accessor for E5Bundle(0);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v3 = sub_1D8B13000();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  type metadata accessor for LoggingSignposter(0);
  v2[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A09D80, 0, 0);
}

uint64_t sub_1D8A09D80()
{
  v1 = v0[52];
  v2 = v0[38];
  sub_1D8A12388(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_signposter, v1, type metadata accessor for LoggingSignposter);
  type metadata accessor for LoggingSignposter.AutoInterval();
  inited = swift_initStackObject();
  v0[53] = inited;
  v4 = 1;
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.GroundingProcessor.prepare", 40, 2u, 1, 0, (inited + 16));
  sub_1D8A123F0(v1, type metadata accessor for LoggingSignposter);
  v5 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_descriptor);
  v0[54] = v5;
  v6 = *(v5 + 16);
  v7 = sub_1D8B15940();
  v8 = sub_1D8B15940();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_1D8B12FB0();

    v4 = 0;
  }

  v11 = v0[50];
  v10 = v0[51];
  v12 = v0[49];
  v13 = v0[46];
  v14 = v0[47];
  (*(v14 + 56))(v11, v4, 1, v13);
  sub_1D881F6FC(v11, v10, &qword_1ECA630C0, &qword_1D8B24530);
  sub_1D87A0E38(v10, v12, &qword_1ECA630C0, &qword_1D8B24530);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_15:
    __break(1u);
  }

  v0[55] = sub_1D8B13010();
  v0[56] = v15;
  v16 = v0[49];
  v17 = v0[46];
  v18 = (v0[47] + 8);
  v20 = v0[38];
  sub_1D87A14E4(v0[51], &qword_1ECA630C0, &qword_1D8B24530);
  (*v18)(v16, v17);
  v21 = *(v20 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_configuration + 16);
  v0[57] = v21;
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage;
  v0[58] = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_featuresSurface;
  v0[59] = v22;
  v23 = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  v0[60] = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  if (v21)
  {
    v24 = v0[46];
    v25 = v0[47];
    v26 = *(v25 + 16);
    v0[61] = v26;
    v0[62] = 0;
    v27 = v0[48];
    v26(v27, v0[54] + v23, v24);
    type metadata accessor for E5InferenceProvider(0);
    v28 = swift_allocObject();
    v29 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
    v0[63] = v28;
    v0[64] = v29;
    (*(v25 + 32))(v28 + v29, v27, v24);
    swift_storeEnumTagMultiPayload();
    v30 = swift_task_alloc();
    v0[65] = v30;
    *v30 = v0;
    v30[1] = sub_1D8A0A310;

    return sub_1D8A029C0();
  }

  else
  {
    v31 = v0[53];
    sub_1D87A1598(v0[55], v0[56]);
    swift_setDeallocating();
    v33 = v31[5];
    v32 = v31[6];
    __swift_project_boxed_opaque_existential_1(v31 + 2, v33);
    (*(v32 + 8))(v33, v32);
    __swift_destroy_boxed_opaque_existential_1(v31 + 2);

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_1D8A0A310()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1D8A0B320;
  }

  else
  {
    v2 = sub_1D8A0A450;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void *sub_1D8A0A450()
{
  v3 = *(*(v0 + 304) + *(v0 + 464));
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  if (v3)
  {
    v6 = *(v0 + 360);
    swift_beginAccess();
    sub_1D8A12388(v5 + v4, v6, type metadata accessor for E5Bundle);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *(v0 + 440);
      v23 = *(v0 + 448);
      v25 = *(v0 + 360);
      v26 = v3;
      sub_1D8A123F0(v25, type metadata accessor for E5Bundle);
      sub_1D8A02EF0();
      swift_allocError();
      *v27 = xmmword_1D8B190D0;
      swift_willThrow();

LABEL_46:
      v12 = v24;
LABEL_47:
      v13 = v23;
      goto LABEL_48;
    }

    v7 = *(v0 + 528);
    v8 = *(*(v0 + 360) + 8);
    v9 = v3;
    sub_1D8A03568(v9, 0x6165665F74786574, 0xEA00000000007374, v8);
    if (v7)
    {
      v11 = *(v0 + 440);
      v10 = *(v0 + 448);

      v12 = v11;
      v13 = v10;
LABEL_48:
      sub_1D87A1598(v12, v13);

      v57 = *(v120 + 8);
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  v14 = *(v0 + 352);
  swift_beginAccess();
  sub_1D8A12388(v5 + v4, v14, type metadata accessor for E5Bundle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = *(v0 + 440);
    v23 = *(v0 + 448);
    v28 = *(v0 + 352);
LABEL_44:
    sub_1D8A123F0(v28, type metadata accessor for E5Bundle);
    sub_1D8A02EF0();
    swift_allocError();
    *v56 = xmmword_1D8B190D0;
    swift_willThrow();
LABEL_45:

    goto LABEL_46;
  }

  v15 = *(v0 + 528);
  v16 = sub_1D8A03064(0x6165665F74786574, 0xEA00000000007374, *(*(v0 + 352) + 8));
  if (v15)
  {
    v55 = *(v0 + 440);
    v54 = *(v0 + 448);

    v12 = v55;
    v13 = v54;
    goto LABEL_48;
  }

  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = (v16 + 32);
    v20 = 1;
    do
    {
      v21 = *v19++;
      v22 = v20 * v21;
      if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
      {
        goto LABEL_64;
      }

      v20 = v22;
      --v18;
    }

    while (v18);
  }

  else
  {
    v22 = 1;
  }

  v29 = *(v0 + 448);
  v30 = v17;

  v31 = v29 >> 62;
  v32 = v30;
  IOSurfaceLock(v32, 0, 0);
  if (v31 <= 1)
  {
    if (!v31)
    {
      v33 = *(v0 + 448);
      *(v0 + 536) = *(v0 + 440);
      *(v0 + 544) = v33;
      *(v0 + 546) = BYTE2(v33);
      *(v0 + 547) = BYTE3(v33);
      *(v0 + 548) = BYTE4(v33);
      *(v0 + 549) = BYTE5(v33);
      if ((v22 & 0x8000000000000000) != 0)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      if (v22 >> 61)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v34 = v0 + 536;
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  if (v31 != 2)
  {
LABEL_34:
    v34 = v0 + 550;
    *(v0 + 556) = 0;
    *(v0 + 550) = 0;
    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v22 >> 61)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    goto LABEL_36;
  }

  v35 = *(*(v0 + 440) + 16);
  v36 = sub_1D8B12D00();
  if (!v36)
  {
    sub_1D8B12D10();
LABEL_94:
    __break(1u);
LABEL_95:
    result = sub_1D8B12D10();
    goto LABEL_96;
  }

  v37 = v36;
  v38 = sub_1D8B12D20();
  if (__OFSUB__(v35, v38))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v34 = v35 - v38 + v37;
  sub_1D8B12D10();
  if (!v34)
  {
    goto LABEL_94;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  if (!(v22 >> 61))
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_27:
  if (*(v0 + 440) >> 32 < *(v0 + 440))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v39 = sub_1D8B12D00();
  if (!v39)
  {
    goto LABEL_95;
  }

  v40 = v39;
  v41 = *(v0 + 440);
  v42 = sub_1D8B12D20();
  if (__OFSUB__(v41, v42))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v34 = v41 - v42 + v40;
  result = sub_1D8B12D10();
  if (!v34)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    return result;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_92;
  }

  if (v22 >> 61)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_36:
  *(v0 + 160) = v34;
  *(v0 + 168) = 1;
  *(v0 + 176) = v22;
  *(v0 + 184) = 4 * v22;
  BaseAddress = IOSurfaceGetBaseAddress(v32);

  *(v0 + 192) = BaseAddress;
  *(v0 + 200) = 1;
  *(v0 + 208) = v22;
  *(v0 + 216) = 2 * v22;
  if (vImageConvert_PlanarFtoPlanar16F((v0 + 160), (v0 + 192), 0))
  {
    v46 = *(v0 + 440);
    v45 = *(v0 + 448);
    sub_1D8A1049C();
    swift_allocError();
    *v47 = 1;
    *(v47 + 8) = 1;
    swift_willThrow();
    IOSurfaceUnlock(v32, 0, 0);

LABEL_38:
    v12 = v46;
    v13 = v45;
    goto LABEL_48;
  }

  v48 = *(v0 + 464);
  v49 = *(v0 + 304);
  v50 = *(v49 + v48);
  *(v49 + v48) = v32;
  v9 = v32;

  IOSurfaceUnlock(v9, 0, 0);
LABEL_40:

  v51 = *(v0 + 504);
  v52 = *(v0 + 512);
  v53 = *(v0 + 344);
  swift_beginAccess();
  sub_1D8A12388(v51 + v52, v53, type metadata accessor for E5Bundle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = *(v0 + 440);
    v23 = *(v0 + 448);
    v28 = *(v0 + 344);
    goto LABEL_44;
  }

  sub_1D8A03224(2020565602, 0xE400000000000000, *(*(v0 + 344) + 8));
  v1 = v58;
  v60 = *(v0 + 504);
  v59 = *(v0 + 512);
  v61 = *(v0 + 336);

  sub_1D8A12388(v60 + v59, v61, type metadata accessor for E5Bundle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    v24 = *(v0 + 440);
    v23 = *(v0 + 448);
    sub_1D8A123F0(*(v0 + 336), type metadata accessor for E5Bundle);
    sub_1D8A02EF0();
    swift_allocError();
    *v63 = xmmword_1D8B190D0;
    swift_willThrow();

    goto LABEL_45;
  }

  v64 = sub_1D8A03224(0x65726F6373, 0xE500000000000000, *(*(v0 + 336) + 8));
  v2 = v65;
  sub_1D8A12388(*(v0 + 504) + *(v0 + 512), *(v0 + 328), type metadata accessor for E5Bundle);
  v66 = swift_getEnumCaseMultiPayload();
  if (v66 != 1)
  {
    v46 = *(v0 + 440);
    v45 = *(v0 + 448);
    v67 = *(v0 + 328);

    sub_1D8A123F0(v67, type metadata accessor for E5Bundle);
    sub_1D8A02EF0();
    swift_allocError();
    *v68 = xmmword_1D8B190D0;
    swift_willThrow();

    goto LABEL_38;
  }

  sub_1D8A03224(0x6E69646465626D65, 0xE900000000000067, *(*(v0 + 328) + 8));
  v117 = v69;

  v70 = *(v64 + 16);
  if (!v70)
  {
    goto LABEL_65;
  }

  v71 = (v64 + 32);
  v72 = 1;
  do
  {
    v73 = *v71++;
    v74 = (v72 * v73) >> 64;
    v72 *= v73;
    if (v74 != v72 >> 63)
    {
      __break(1u);
      goto LABEL_84;
    }

    --v70;
  }

  while (v70);
  if ((v72 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v72 = 1;
  }

  result = malloc(4 * v72);
  if (!result)
  {
    goto LABEL_97;
  }

  v75 = result;
  v76 = *(v120 + 296);

  v77 = *(v76 + 72);
  if (v77 < 2)
  {
LABEL_72:
    v24 = *(v120 + 440);
    v23 = *(v120 + 448);
    sub_1D8A1049C();
    swift_allocError();
    *v86 = 2;
    *(v86 + 8) = 1;
    swift_willThrow();

    goto LABEL_45;
  }

  v78 = *(v120 + 296);
  v79 = v77;
  sub_1D87A0E38(v78, v120 + 16, &qword_1ECA64960, &qword_1D8B25E70);
  IOSurface = CVPixelBufferGetIOSurface(v79);
  if (!IOSurface)
  {
    v85 = *(v120 + 296);

    sub_1D87A14E4(v85, &qword_1ECA64960, &qword_1D8B25E70);
    goto LABEL_72;
  }

  v116 = v79;
  v81 = *(v120 + 504);
  v82 = *(v120 + 512);
  v83 = *(v120 + 320);
  v84 = IOSurface;
  sub_1D8A12388(v81 + v82, v83, type metadata accessor for E5Bundle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v87 = *(v120 + 440);
    v23 = *(v120 + 448);
    v88 = *(v120 + 296);
    sub_1D8A123F0(*(v120 + 320), type metadata accessor for E5Bundle);
    sub_1D8A02EF0();
    swift_allocError();
    *v89 = xmmword_1D8B190D0;
    swift_willThrow();

    sub_1D87A14E4(v88, &qword_1ECA64960, &qword_1D8B25E70);

    v12 = v87;
    goto LABEL_47;
  }

  sub_1D8A03568(v84, 0x7475706E69, 0xE500000000000000, *(*(v120 + 320) + 8));
  v90 = *(v120 + 472);
  v91 = *(v120 + 304);

  v92 = v91 + v90;
  os_unfair_lock_lock((v91 + v90));
  v93 = *(v91 + v90 + 8);
  v94 = v1;
  v119 = v2;
  v118 = v117;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v92 + 8) = v93;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v114 = *(v120 + 304) + *(v120 + 472);
    v93 = sub_1D87C95FC(0, *(v93 + 2) + 1, 1, v93);
    *(v114 + 8) = v93;
  }

  v97 = *(v93 + 2);
  v96 = *(v93 + 3);
  if (v97 >= v96 >> 1)
  {
    v115 = *(v120 + 304) + *(v120 + 472);
    v93 = sub_1D87C95FC((v96 > 1), v97 + 1, 1, v93);
    *(v115 + 8) = v93;
  }

  v98 = *(v120 + 504);
  v99 = *(v120 + 472);
  v100 = *(v120 + 456);
  v102 = *(v120 + 296);
  v101 = *(v120 + 304);
  v103 = *(v120 + 496) + 1;
  *(v93 + 2) = v97 + 1;
  v104 = &v93[48 * v97];
  *(v104 + 4) = v94;
  *(v104 + 5) = v119;
  *(v104 + 6) = v118;
  *(v104 + 7) = v75;
  *(v104 + 8) = v72;
  *(v104 + 9) = v98;
  os_unfair_lock_unlock((v101 + v99));

  sub_1D87A14E4(v102, &qword_1ECA64960, &qword_1D8B25E70);

  if (v103 == v100)
  {
    v105 = *(v120 + 424);
    sub_1D87A1598(*(v120 + 440), *(v120 + 448));
    swift_setDeallocating();
    v107 = v105[5];
    v106 = v105[6];
    __swift_project_boxed_opaque_existential_1(v105 + 2, v107);
    (*(v106 + 8))(v107, v106);
    __swift_destroy_boxed_opaque_existential_1(v105 + 2);

    v57 = *(v120 + 8);
LABEL_49:

    return v57();
  }

  else
  {
    ++*(v120 + 496);
    v109 = *(v120 + 376);
    v108 = *(v120 + 384);
    v110 = *(v120 + 368);
    (*(v120 + 488))(v108, *(v120 + 432) + *(v120 + 480), v110);
    type metadata accessor for E5InferenceProvider(0);
    v111 = swift_allocObject();
    v112 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
    *(v120 + 504) = v111;
    *(v120 + 512) = v112;
    (*(v109 + 32))(v111 + v112, v108, v110);
    swift_storeEnumTagMultiPayload();
    v113 = swift_task_alloc();
    *(v120 + 520) = v113;
    *v113 = v120;
    v113[1] = sub_1D8A0A310;

    return sub_1D8A029C0();
  }
}

uint64_t sub_1D8A0B320()
{
  v1 = v0[55];
  v2 = v0[56];

  sub_1D87A1598(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8A0B470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[29] = a8;
  v9[30] = v8;
  v9[27] = a6;
  v9[28] = a7;
  v9[25] = a3;
  v9[26] = a4;
  v9[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  v9[31] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v9[32] = v10;
  v9[33] = *(v10 - 8);
  v9[34] = swift_task_alloc();
  v9[35] = swift_task_alloc();
  v9[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A0B598, 0, 0);
}

uint64_t sub_1D8A0B598()
{
  v1 = v0[30];
  v2 = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage;
  v0[37] = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage;
  v3 = v1 + v2;
  os_unfair_lock_lock((v1 + v2));
  v4 = *(v3 + 8);
  if (v4[2])
  {
    v5 = v4[4];
    v0[38] = v5;
    v6 = v4[5];
    v0[39] = v6;
    v7 = v4[6];
    v0[40] = v7;
    v0[41] = v4[7];
    v0[42] = v4[8];
    v0[43] = v4[9];
    v8 = v5;
    v9 = v6;
    v10 = v7;

    sub_1D88645E0(0, 1);
    os_unfair_lock_unlock(v3);
    if (v8)
    {
      v0[44] = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_signposter;
      v11 = v8;
      v12 = v9;
      v13 = v10;

      LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("Grounding.inference", 19, 2u, 0, 0, v0 + 9);
      v14 = swift_task_alloc();
      v0[45] = v14;
      *v14 = v0;
      v14[1] = sub_1D8A0B7BC;

      return sub_1D8A03674();
    }
  }

  else
  {
    os_unfair_lock_unlock(v3);
  }

  sub_1D8A1049C();
  swift_allocError();
  *v16 = 0;
  *(v16 + 8) = 1;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D8A0B7BC()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1D8A0C370;
  }

  else
  {
    v2 = sub_1D8A0B8D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

VisualIntelligenceCore::visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy sub_1D8A0B8D0()
{
  v133 = v0;
  v1 = v0;
  v2 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[12];
  v7 = v0[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  (*(v7 + 8))(v6, v7);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("Grounding.postprocessing", 24, 2u, 0, 0, v0 + 14);
  v8 = sub_1D8A0CB70(v5, v4, v3);
  if (v2)
  {
    v9 = v0[30] + v0[37];
    __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
    os_unfair_lock_lock(v9);
    v14 = *(v9 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 8) = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

  v10 = v8;
  v11 = v0[38];
  LOBYTE(v130[0]) = *(v1[30] + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_configuration + 24);
  v1[22] = sub_1D8A10548();
  v1[23] = &off_1F5433018;
  v1[19] = v11;
  v12 = v11;
  sub_1D8A1065C(v130, v1 + 19, v10);
  v33 = v1[40];
  v34 = v13;

  __swift_destroy_boxed_opaque_existential_1(v1 + 19);
  v35 = sub_1D8A11088(v34, v33);

  v36 = v35[2];
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v116 = v1[33];
    v130[0] = MEMORY[0x1E69E7CC0];
    v14 = v130;
    sub_1D87F49CC(0, v36, 0);
    v38 = 0;
    v39 = v130[0];
    v40 = v35 + 11;
    v118 = v36;
    v121 = v35;
    while (v38 < v35[2])
    {
      v127 = v1[41];
      v14 = v39;
      v41 = v1[36];
      v42 = v1[29];
      v43 = v1[30];
      v44 = v1[27];
      v124 = v1[28];
      v45 = v1[25];
      v46 = *(v40 - 4);
      v47 = *(v40 - 1);
      v48 = *v40;
      v49 = *(v40 - 3);
      v50 = *(v40 - 2);
      v1[2] = *(v40 - 7);
      *(v1 + 3) = v49;
      *(v1 + 5) = v50;
      *(v1 + 14) = v46;
      v1[8] = v47;

      v51 = v41;
      v39 = v14;
      sub_1D8A0C540(v1 + 2, v48, v44, v45, v43, v127, v124, v51, v42);

      v130[0] = v14;
      v53 = *(v14 + 2);
      v52 = *(v14 + 3);
      if (v53 >= v52 >> 1)
      {
        v14 = v130;
        sub_1D87F49CC((v52 > 1), v53 + 1, 1);
        v39 = v130[0];
      }

      v54 = v1[36];
      ++v38;
      *(v39 + 16) = v53 + 1;
      sub_1D881F6FC(v54, v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v53, &qword_1ECA67750, &unk_1D8B1E0C0);
      v40 += 8;
      v35 = v121;
      if (v118 == v38)
      {

        v37 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_19:
  sub_1D8A111E8(v39);
  v56 = v55;
  v57 = *(v55 + 16);
  v128 = v39;
  v129 = v1;
  if (v57)
  {
    v58 = v1[33];
    v130[0] = v37;
    sub_1D87F43E0(0, v57, 0);
    v59 = v130[0];
    v60 = v56 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v61 = *(v58 + 72);
    do
    {
      v62 = v1[35];
      sub_1D87A0E38(v60, v62, &qword_1ECA67750, &unk_1D8B1E0C0);
      v63 = swift_allocBox();
      sub_1D881F6FC(v62, v64, &qword_1ECA67750, &unk_1D8B1E0C0);
      v130[0] = v59;
      v66 = *(v59 + 16);
      v65 = *(v59 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1D87F43E0((v65 > 1), v66 + 1, 1);
        v59 = v130[0];
      }

      *(v59 + 16) = v66 + 1;
      *(v59 + 8 * v66 + 32) = v63;
      v60 += v61;
      --v57;
      v1 = v129;
    }

    while (v57);
    v117 = v59;

    v39 = v128;
  }

  else
  {

    v117 = MEMORY[0x1E69E7CC0];
  }

  v68 = v1[28];
  v67 = v1[29];
  v69 = v1[17];
  v70 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v69);
  (*(v70 + 8))(v69, v70);
  (*(v67 + 40))(v130, v68, v67);
  v71 = v131;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if ((sub_1D8B0AAA4() & 1) == 0)
  {
    if ((v71 & 1) == 0 || (v90 = type metadata accessor for InternalSettings(), v91 = sub_1D8B15940(), LOBYTE(v90) = [v90 BOOLForKey:v91 defaultValue:0], v91, (v90 & 1) == 0))
    {
LABEL_42:

      v92 = v1[26];
      v93 = v1[24];
      v94 = v1[30] + v1[37];
      v95 = type metadata accessor for CVProcessorTaskDescriptor(0);
      sub_1D8A12388(v92 + *(v95 + 20), v93, type metadata accessor for DetectionRequest);
      *(v93 + *(type metadata accessor for DetectionResult(0) + 20)) = v117;
      __swift_destroy_boxed_opaque_existential_1(v1 + 14);
      __swift_destroy_boxed_opaque_existential_1(v1 + 9);
      os_unfair_lock_lock(v94);
      v96 = *(v94 + 8);
      v97 = swift_isUniquelyReferenced_nonNull_native();
      *(v94 + 8) = v96;
      if ((v97 & 1) == 0)
      {
        v113 = v1[30] + v1[37];
        v96 = sub_1D87C95FC(0, *(v96 + 2) + 1, 1, v96);
        *(v113 + 8) = v96;
      }

      v99 = *(v96 + 2);
      v98 = *(v96 + 3);
      v100 = v99 + 1;
      if (v99 >= v98 >> 1)
      {
        v114 = v1[30] + v1[37];
        v115 = sub_1D87C95FC((v98 > 1), v99 + 1, 1, v96);
        v100 = v99 + 1;
        v96 = v115;
        *(v114 + 8) = v115;
      }

      v102 = v1[42];
      v101 = v1[43];
      v104 = v1[40];
      v103 = v1[41];
      v105 = v1;
      v106 = v1[39];
      v107 = v105[38];
      v120 = v105[37];
      v108 = v105[30];
      *(v96 + 2) = v100;
      v109 = &v96[48 * v99];
      *(v109 + 4) = v107;
      *(v109 + 5) = v106;
      *(v109 + 6) = v104;
      *(v109 + 7) = v103;
      *(v109 + 8) = v102;
      *(v109 + 9) = v101;
      sub_1D8A121E0(v107, v106, v104, v103, v102, v101);
      os_unfair_lock_unlock((v108 + v120));

      sub_1D8A104F0(v107, v106, v104, v103, v102, v101);

      v31 = v105[1];
      goto LABEL_8;
    }
  }

  v72 = *(v39 + 16);
  v73 = MEMORY[0x1E69E7CC0];
  if (!v72)
  {
LABEL_39:
    v84 = v1[31];
    v85 = sub_1D87C4264(v73);

    v130[0] = MEMORY[0x1E69E7CC8];
    sub_1D8A05E6C(v85, v130);

    sub_1D8A0568C(v39, v130);
    v87 = v86;

    v88 = sub_1D8B15EA0();
    (*(*(v88 - 8) + 56))(v84, 1, 1, v88);
    v89 = swift_allocObject();
    v89[2] = 0;
    v89[3] = 0;
    v89[4] = v87;
    sub_1D8891CA0(0, 0, v84, &unk_1D8B32E70, v89);

    goto LABEL_42;
  }

  v74 = v1[33];
  v122 = v1[32];
  v130[0] = MEMORY[0x1E69E7CC0];
  v14 = v130;
  sub_1D87F3F54(0, v72, 0);
  v75 = 0;
  v73 = v130[0];
  v125 = v74;
  v119 = v39 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v76 = v72;
  while (v75 < *(v39 + 16))
  {
    v14 = v1[34];
    sub_1D87A0E38(v119 + *(v125 + 72) * v75, v14, &qword_1ECA67750, &unk_1D8B1E0C0);
    v77 = *&v14[*(v122 + 44)];
    if (*(v77 + 16))
    {
      result = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v77 + 32)).value;
      if (v132 == 181)
      {
        __break(1u);
        return result;
      }

      v14 = &v132;
      v78 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
      v80 = v79;
    }

    else
    {
      v80 = 0xE700000000000000;
      v78 = 0x6E776F6E6B6E75;
    }

    sub_1D87A14E4(v1[34], &qword_1ECA67750, &unk_1D8B1E0C0);
    v130[0] = v73;
    v82 = *(v73 + 16);
    v81 = *(v73 + 24);
    if (v82 >= v81 >> 1)
    {
      v14 = v130;
      sub_1D87F3F54((v81 > 1), v82 + 1, 1);
      v73 = v130[0];
    }

    ++v75;
    *(v73 + 16) = v82 + 1;
    v83 = v73 + 16 * v82;
    *(v83 + 32) = v78;
    *(v83 + 40) = v80;
    v39 = v128;
    v1 = v129;
    if (v76 == v75)
    {
      goto LABEL_39;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v110 = v1[30] + v1[37];
  v14 = sub_1D87C95FC(0, *(v14 + 2) + 1, 1, v14);
  *(v110 + 8) = v14;
LABEL_5:
  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    v111 = v1[30] + v1[37];
    v112 = sub_1D87C95FC((v16 > 1), v17 + 1, 1, v14);
    v18 = v17 + 1;
    v14 = v112;
    *(v111 + 8) = v112;
  }

  v20 = v1[42];
  v19 = v1[43];
  v22 = v1[40];
  v21 = v1[41];
  v23 = v1;
  v26 = v1 + 38;
  v25 = v1[38];
  v24 = v26[1];
  v123 = v23[37];
  v27 = v23[30];
  *(v14 + 2) = v18;
  v28 = &v14[48 * v17];
  *(v28 + 4) = v25;
  *(v28 + 5) = v24;
  *(v28 + 6) = v22;
  *(v28 + 7) = v21;
  *(v28 + 8) = v20;
  *(v28 + 9) = v19;
  v126 = v25;
  v29 = v24;
  v30 = v22;

  os_unfair_lock_unlock((v27 + v123));

  sub_1D8A104F0(v25, v24, v22, v21, v20, v19);

  v31 = v23[1];
LABEL_8:

  return v31();
}

uint64_t sub_1D8A0C370()
{
  v1 = v0[30] + v0[37];
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 8) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = v0[30] + v0[37];
    v2 = sub_1D87C95FC(0, *(v2 + 2) + 1, 1, v2);
    *(v18 + 8) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v19 = v0[30] + v0[37];
    v2 = sub_1D87C95FC((v4 > 1), v5 + 1, 1, v2);
    *(v19 + 8) = v2;
  }

  v6 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v20 = v0[37];
  v21 = v0[42];
  v11 = v0[30];
  *(v2 + 2) = v5 + 1;
  v12 = &v2[48 * v5];
  *(v12 + 4) = v10;
  *(v12 + 5) = v9;
  *(v12 + 6) = v8;
  *(v12 + 7) = v7;
  *(v12 + 8) = v21;
  *(v12 + 9) = v6;
  v13 = v10;
  v14 = v9;
  v15 = v8;

  os_unfair_lock_unlock((v11 + v20));

  sub_1D8A104F0(v10, v9, v8, v7, v21, v6);

  v16 = v0[1];

  return v16();
}

int *sub_1D8A0C540@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v48 = a2;
  v52 = *MEMORY[0x1E69E9840];
  v45 = sub_1D8B13240();
  v16 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13230();
  type metadata accessor for CVCoordinator(0);
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v22 = a1[4];
  v46 = a4;
  v47 = a7;
  v44 = a9;
  sub_1D8A30194(a3, a9, v51, v19, v20, v21, v22);
  if (!a6)
  {
LABEL_17:
    __break(1u);
  }

  v23 = *(a5 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_taxonomySize);
  v24 = *a1 * v23;
  if ((*a1 * v23) >> 64 != v24 >> 63)
  {
    goto LABEL_15;
  }

  __C = 0.0;
  __I = 0;
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = (a6 + 4 * v24);
  v26 = MEMORY[0x1E69E7CC0];
  do
  {
    vDSP_maxvi(v25, 1, &__C, &__I, v23);
    v27 = __C;
    if (__C < 0.1)
    {
      break;
    }

    v28 = __I;
    if ((__I & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1D87C9A80(0, *(v26 + 2) + 1, 1, v26);
    }

    v30 = *(v26 + 2);
    v29 = *(v26 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v26 = sub_1D87C9A80((v29 > 1), v30 + 1, 1, v26);
    }

    *(v26 + 2) = v31;
    v32 = &v26[16 * v30];
    *(v32 + 4) = v28;
    *(v32 + 10) = v27;
    v25[v28] = 0.0;
  }

  while (v30 <= 3 && v31 < v23);
  v33 = *(a1 + 10);
  v34 = v48;

  v35 = v47;
  v36 = v44;
  CameraSourceFrame.rotationAngle.getter(v44, &__I);
  v37 = __I;
  v38 = CameraSourceFrame.timestamp.getter(v35, v36);
  (*(v16 + 32))(a8, v18, v45);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  *(a8 + result[9]) = v33;
  v40 = (a8 + result[10]);
  v41 = v51[1];
  *v40 = v51[0];
  v40[1] = v41;
  v42 = v51[3];
  v40[2] = v51[2];
  v40[3] = v42;
  *(a8 + result[11]) = v26;
  *(a8 + result[12]) = v34;
  *(a8 + result[13]) = v37;
  *(a8 + result[14]) = v38;
  *(a8 + result[15]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1D8A0C880()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  *(v0 + 216) = v2;
  if (v2)
  {
    *(v0 + 224) = 0;
    v3 = *(v1 + 48);
    *(v0 + 16) = *(v1 + 32);
    *(v0 + 32) = v3;
    v4 = *(v1 + 64);
    v5 = *(v1 + 80);
    v6 = *(v1 + 96);
    *(v0 + 89) = *(v1 + 105);
    *(v0 + 64) = v5;
    *(v0 + 80) = v6;
    *(v0 + 48) = v4;
    sub_1D88E0F34(v0 + 16, v0 + 112);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v7 = qword_1ECA675B0;
    *(v0 + 232) = qword_1ECA675B0;
    v8 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v8;
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 185) = *(v0 + 89);
    v9 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v9;

    return MEMORY[0x1EEE6DFA0](sub_1D8A0C9A8, v7, 0);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D8A0C9A8()
{
  sub_1D8A3B420((v0 + 112), 0x6E69646E756F7267, 0xE900000000000067);

  return MEMORY[0x1EEE6DFA0](sub_1D8A0CA2C, 0, 0);
}

uint64_t sub_1D8A0CA2C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224) + 1;
  sub_1D88E0F90(v0 + 16);
  if (v2 == v1)
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 224);
    *(v0 + 224) = v5 + 1;
    v6 = (*(v0 + 208) + 96 * v5);
    v7 = v6[9];
    *(v0 + 16) = v6[8];
    *(v0 + 32) = v7;
    v9 = v6[11];
    v8 = v6[12];
    v10 = v6[10];
    *(v0 + 89) = *(v6 + 201);
    *(v0 + 64) = v9;
    *(v0 + 80) = v8;
    *(v0 + 48) = v10;
    sub_1D88E0F34(v0 + 16, v0 + 112);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECA675B0;
    *(v0 + 232) = qword_1ECA675B0;
    v12 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v12;
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 185) = *(v0 + 89);
    v13 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v13;

    return MEMORY[0x1EEE6DFA0](sub_1D8A0C9A8, v11, 0);
  }
}

uint64_t sub_1D8A0CB70(__IOSurface *a1, void *a2, vImagePixelCount a3)
{
  v31 = *MEMORY[0x1E69E9840];
  IOSurfaceLock(a1, 1u, 0);
  BaseAddress = IOSurfaceGetBaseAddress(a1);
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  src.data = BaseAddress;
  src.height = 1;
  src.width = a3;
  src.rowBytes = [(__IOSurface *)a1 bytesPerRow];
  v8 = [(__IOSurface *)a1 bytesPerRow];
  if (v8 + 0x4000000000000000 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  dest.data = a2;
  dest.height = 1;
  dest.width = a3;
  dest.rowBytes = 2 * v8;
  v9 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  if (!v9)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_taxonomySize;
    while (1)
    {
      v15 = v12;
      while (1)
      {
        v16 = *(v3 + v14);
        if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        if (!a2)
        {
          goto LABEL_26;
        }

        __C = 0.0;
        __I = 0;
        if (v16 < 0)
        {
          goto LABEL_22;
        }

        vDSP_maxvi(a2 + v15 * v16, 1, &__C, &__I, v16);
        v17 = __C;
        if (__C > 0.1)
        {
          break;
        }

        if (++v15 == 8400)
        {
          goto LABEL_19;
        }
      }

      v18 = __I;
      if ((__I & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1D87C971C(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = v13;
      v20 = *(v13 + 2);
      v21 = v19;
      v22 = *(v19 + 3);
      v23 = v20 + 1;
      if (v20 >= v22 >> 1)
      {
        v25 = sub_1D87C971C((v22 > 1), v20 + 1, 1, v21);
        v23 = v20 + 1;
        v21 = v25;
      }

      *(v21 + 2) = v23;
      v24 = &v21[24 * v20];
      v13 = v21;
      *(v24 + 4) = v15;
      *(v24 + 10) = v17;
      *(v24 + 6) = v18;
      v12 = v15 + 1;
      if (v15 >= 8399)
      {
LABEL_19:
        v3 = sub_1D87BA178(v13);

        IOSurfaceUnlock(a1, 1u, 0);
        return v3;
      }
    }
  }

  v10 = v9;
  sub_1D8A1049C();
  swift_allocError();
  *v11 = v10;
  *(v11 + 8) = 0;
  swift_willThrow();
  IOSurfaceUnlock(a1, 1u, 0);
  return v3;
}

uint64_t sub_1D8A0CE20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D89394A0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D8A0CED4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D89394B4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = *(v9 + 40);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

_BYTE *sub_1D8A0CF88@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (*result)
  {
    v3 = 0uLL;
    v4 = 2;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    strcpy(v8, "ARGB");
    v9 = vdupq_n_s64(0x280uLL);
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v13 = 0;
    v14 = 1;
    v15 = 0;
    GenericRGB = CGColorCreateGenericRGB(0.447058824, 0.447058824, 0.447058824, 1.0);
    result = sub_1D88C5438(v8, v17);
    v3 = v17[0];
    v5 = v17[1];
    v6 = v17[2];
    v7 = v17[3];
    v4 = v18;
  }

  *a2 = v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v4;
  return result;
}

uint64_t sub_1D8A0D050(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D886553C;

  return sub_1D8A09BAC(a1);
}

uint64_t sub_1D8A0D0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D8864FBC;

  return sub_1D8A0B470(a1, v15, a3, a4, v16, a6, a7, a8);
}

unint64_t sub_1D8A0D1C8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if ((result & 0x8000000000000000) != 0 || *(*v2 + 16) <= result)
  {
    v4 = 1;
    v6 = 0uLL;
  }

  else
  {
    v4 = 0;
    v5 = *v2 + 32 * result;
    v3 = *(v5 + 32);
    v6 = *(v5 + 48);
  }

  *a2 = v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

void sub_1D8A0D204(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  if (a1 < 0)
  {
    v31 = 1;
    v30 = 0uLL;
    goto LABEL_16;
  }

  if (a1 >= IOSurfaceGetAllocSize(v2) / 8)
  {
    v31 = 1;
    v30 = 0uLL;
    v4 = 0uLL;
    goto LABEL_16;
  }

  v6 = (IOSurfaceGetBaseAddress(v2) + 8 * a1);
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D87F4140(0, 4, 0);
  v7 = v35;
  _H8 = *v6;
  v10 = *(v35 + 16);
  v9 = *(v35 + 24);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    sub_1D87F4140((v9 > 1), v10 + 1, 1);
    v7 = v35;
    v9 = *(v35 + 24);
    v11 = v9 >> 1;
  }

  __asm { FCVT            D0, H8 }

  *(v7 + 16) = v12;
  *(v7 + 8 * v10 + 32) = _D0;
  _H8 = v6[1];
  v19 = v10 + 2;
  if (v11 <= v12)
  {
    sub_1D87F4140((v9 > 1), v19, 1);
    v7 = v35;
  }

  __asm { FCVT            D0, H8 }

  *(v7 + 16) = v19;
  *(v7 + 8 * v12 + 32) = _D0;
  _H8 = v6[2];
  v23 = *(v7 + 16);
  v22 = *(v7 + 24);
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    sub_1D87F4140((v22 > 1), v23 + 1, 1);
  }

  __asm { FCVT            D0, H8 }

  v26 = v35;
  *(v35 + 16) = v24;
  *(v35 + 8 * v23 + 32) = _D0;
  _H8 = v6[3];
  v28 = *(v35 + 24);
  if (v24 >= v28 >> 1)
  {
    sub_1D87F4140((v28 > 1), v23 + 2, 1);
    v26 = v35;
  }

  __asm { FCVT            D0, H8 }

  *(v26 + 16) = v23 + 2;
  *(v26 + 8 * v24 + 32) = _D0;
  if (v23)
  {
    if (v23 != 1)
    {
      v33 = *(v26 + 48);
      v34 = *(v26 + 32);

      v30 = v33;
      v31 = 0;
      __asm { FMOV            V0.2D, #-0.5 }

      v4 = vaddq_f64(v34, vmulq_f64(v33, _Q0));
LABEL_16:
      *a2 = v4;
      *(a2 + 16) = v30;
      *(a2 + 32) = v31;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1D8A0D40C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8A0D204(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t (*sub_1D8A0D454(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1D8B13240();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D8A0E030(v4, v9);
  return sub_1D8A0D56C;
}

void sub_1D8A0D56C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_1D8A0D5E4()
{
  v0 = sub_1D893EC3C(&unk_1F5428850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E60, &unk_1D8B30D68);
  result = swift_arrayDestroy();
  off_1ECA671D8 = v0;
  return result;
}

void sub_1D8A0D640(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D3F8(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  v4 = sub_1D8B16B30();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 72;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[56 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 8) >= v11)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 4);
          v16 = *(v13 + 40);
          v17 = *(v13 + 56);
          v18 = *(v13 - 24);
          *(v13 + 1) = *(v13 - 40);
          *(v13 + 2) = v18;
          *(v13 + 3) = *(v13 - 8);
          *(v13 + 8) = *(v13 + 1);
          *(v13 - 5) = v14;
          *(v13 - 8) = v11;
          *(v13 - 3) = v15;
          *(v13 - 1) = v16;
          *v13 = v17;
          v13 -= 56;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 56;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673F0, &qword_1D8B32E98);
      v7 = sub_1D8B15D60();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = (v7 + 32);
    v20[1] = v6;
    sub_1D8A0D7C8(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D8A0D7C8(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1D885CC68(v7);
    }

    v93 = v7 + 16;
    v94 = *(v7 + 2);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = &v7[16 * v94];
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        sub_1D8A0DDCC((*a3 + 56 * *v95), (*a3 + 56 * *v97), *a3 + 56 * v98, v102);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v98 < v96)
        {
          goto LABEL_114;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_115;
        }

        *v95 = v96;
        *(v95 + 1) = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_116;
        }

        v94 = *v93 - 1;
        memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v100 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 56 * v6 + 8);
      v10 = *a3 + 56 * v8;
      v11 = *(v10 + 8);
      v12 = v8 + 2;
      v13 = (v10 + 120);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 14;
        v16 = v14 >= v15;
        ++v12;
        v14 = v15;
        if ((((v11 < v9) ^ v16) & 1) == 0)
        {
          v6 = v12 - 1;
          if (v11 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 56 * v6 - 16;
        v18 = 56 * v8 + 40;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v31 + v18);
            v22 = *(v31 + v18 - 40);
            v23 = v31 + v17;
            v24 = *(v21 - 8);
            v25 = *(v21 - 3);
            v26 = *(v21 - 1);
            v27 = *v21;
            v28 = *(v23 - 24);
            v29 = *(v23 - 8);
            v30 = *(v23 + 8);
            *(v21 - 40) = *(v23 - 40);
            *(v21 + 1) = v30;
            *(v21 - 8) = v29;
            *(v21 - 24) = v28;
            *(v23 - 40) = v22;
            *(v23 - 32) = v24;
            *(v23 - 24) = v25;
            *(v23 - 16) = v26;
            *v23 = v27;
          }

          ++v20;
          v17 -= 56;
          v18 += 56;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D87C7C5C(0, *(v7 + 2) + 1, 1, v7);
    }

    v46 = *(v7 + 2);
    v45 = *(v7 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v7 = sub_1D87C7C5C((v45 > 1), v46 + 1, 1, v7);
    }

    *(v7 + 2) = v47;
    v48 = v7 + 32;
    v49 = &v7[16 * v46 + 32];
    *v49 = v8;
    *(v49 + 1) = v6;
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v7 + 4);
          v52 = *(v7 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_104;
          }

          v67 = &v7[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_106;
          }

          v73 = &v48[16 * v50];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_111;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_112;
        }

        v77 = &v7[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_72:
        if (v72)
        {
          goto LABEL_108;
        }

        v80 = &v48[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_110;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = &v48[16 * v50 - 16];
        v89 = *v88;
        v90 = &v48[16 * v50];
        v91 = *(v90 + 1);
        sub_1D8A0DDCC((*a3 + 56 * *v88), (*a3 + 56 * *v90), *a3 + 56 * v91, v102);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v91 < v89)
        {
          goto LABEL_99;
        }

        if (v50 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *(v7 + 2);
        if (v50 >= v92)
        {
          goto LABEL_101;
        }

        v47 = v92 - 1;
        memmove(&v48[16 * v50], v90 + 16, 16 * (v92 - 1 - v50));
        *(v7 + 2) = v92 - 1;
        if (v92 <= 2)
        {
          goto LABEL_3;
        }
      }

      v55 = &v48[16 * v47];
      v56 = *(v55 - 8);
      v57 = *(v55 - 7);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_102;
      }

      v60 = *(v55 - 6);
      v59 = *(v55 - 5);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_103;
      }

      v62 = &v7[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_105;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_107;
      }

      if (v66 >= v58)
      {
        v84 = &v48[16 * v50];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v100;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 56 * v6 - 56;
  v34 = v8 - v6;
LABEL_30:
  v35 = *(v32 + 56 * v6 + 8);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (*(v37 + 8) >= v35)
    {
LABEL_29:
      ++v6;
      v33 += 56;
      --v34;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *(v37 + 72);
    v39 = *(v37 + 16);
    v41 = *(v37 + 48);
    v40 = *(v37 + 56);
    *(v37 + 56) = *v37;
    v42 = *(v37 + 80);
    v43 = *(v37 + 96);
    *(v37 + 72) = v39;
    *(v37 + 88) = *(v37 + 32);
    *(v37 + 104) = v41;
    *v37 = v40;
    *(v37 + 8) = v35;
    *(v37 + 16) = v38;
    *(v37 + 24) = v42;
    *(v37 + 40) = v43;
    v37 -= 56;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1D8A0DDCC(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[14 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[14 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 14;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 14;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 14;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[14 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[14 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v5 -= 56;
    do
    {
      v18 = (v5 + 56);
      if (*(v6 - 12) < *(v12 - 12))
      {
        v23 = v6 - 14;
        if (v18 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 10);
          v26 = *(v6 - 6);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v25;
          *(v5 + 32) = v26;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 14, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v12 - 14;
      if (v18 != v12)
      {
        v20 = *v19;
        v21 = *(v12 - 10);
        v22 = *(v12 - 6);
        *(v5 + 48) = *(v12 - 1);
        *(v5 + 16) = v21;
        *(v5 + 32) = v22;
        *v5 = v20;
      }

      v5 -= 56;
      v12 -= 14;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_31:
  v27 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v28 = (v27 >> 4) + (v27 >> 63);
  if (v6 != v4 || v6 >= &v4[14 * v28])
  {
    memmove(v6, v4, 56 * v28);
  }

  return 1;
}

void (*sub_1D8A0E030(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1D8B13240();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1D8A0E4B4(v6);
  v6[12] = sub_1D8A0E204(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1D8A0E16C;
}

void sub_1D8A0E16C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1D8A0E204(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D8B13240();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D87EF764(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D896B610();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D8975470(v20, a3 & 1);
    v15 = sub_1D87EF764(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_1D8A0E3B4;
}

void sub_1D8A0E3B4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    if ((*a1)[7])
    {
      *(*(*v1[2] + 56) + 8 * v1[6]) = v2;
    }

    else
    {
      (*(v1[4] + 16))(v1[5], v1[1], v1[3]);
      sub_1D8979B38();
    }
  }

  else if ((*a1)[7])
  {
    v3 = v1[6];
    v4 = *v1[2];
    (*(v1[4] + 8))(*(v4 + 48) + *(v1[4] + 72) * v3, v1[3]);
    sub_1D8AF2DB0(v3, v4);
  }

  v5 = v1[5];

  free(v5);

  free(v1);
}

uint64_t (*sub_1D8A0E4B4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D8A0E4DC;
}

uint64_t sub_1D8A0E4E8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D8B16BA0() & 1;
  }
}

uint64_t sub_1D8A0E540(uint64_t a1, uint64_t *a2)
{
  v37 = a2;
  v3 = sub_1D8B13240();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0) - 8;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - v11;
  v36 = *(a1 + 16);
  if (v36)
  {
    v13 = 0;
    v34 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v35 = a1 + v34;
    v41 = v4 + 16;
    v14 = *(v10 + 72);
    v31 = v4;
    v32 = v14;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = (v4 + 8);
    v33 = v9;
    v43 = &v30 - v11;
    while (1)
    {
      sub_1D87A0E38(v35 + v14 * v13, v12, &qword_1ECA67750, &unk_1D8B1E0C0);
      v15 = *v37;
      if (*(*v37 + 16))
      {
        v38 = v13;
        sub_1D8A12344(&qword_1EE0E98A0, MEMORY[0x1E69695B8]);

        v16 = sub_1D8B15790();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          v20 = *(v31 + 72);
          v21 = *(v31 + 16);
          while (1)
          {
            v22 = v42;
            v21(v42, *(v15 + 48) + v20 * v18, v3);
            sub_1D8A12344(&qword_1EE0E9898, MEMORY[0x1E69695C8]);
            v23 = sub_1D8B158C0();
            (*v40)(v22, v3);
            if (v23)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v12 = v43;
          sub_1D87A14E4(v43, &qword_1ECA67750, &unk_1D8B1E0C0);
          v14 = v32;
          v9 = v33;
          v13 = v38;
          goto LABEL_4;
        }

LABEL_10:

        v14 = v32;
        v9 = v33;
        v12 = v43;
        v13 = v38;
      }

      sub_1D881F6FC(v12, v9, &qword_1ECA67750, &unk_1D8B1E0C0);
      v24 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v24;
      v44 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F49CC(0, *(v24 + 16) + 1, 1);
        v26 = v44;
      }

      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D87F49CC((v27 > 1), v28 + 1, 1);
        v26 = v44;
      }

      *(v26 + 16) = v28 + 1;
      v39 = v26;
      sub_1D881F6FC(v9, v26 + v34 + v28 * v14, &qword_1ECA67750, &unk_1D8B1E0C0);
LABEL_4:
      if (++v13 == v36)
      {
        return v39;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D8A0E998(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v6 = type metadata accessor for GroundingResult(0, v4, v5, a2);
  GroundingResult.modifyWithRotation(_:)(&v7, v6, a1);
}

unint64_t sub_1D8A0EA2C()
{
  result = qword_1ECA671F8;
  if (!qword_1ECA671F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA671F8);
  }

  return result;
}

uint64_t sub_1D8A0EA80(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA671E0, &qword_1D8B32380);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A0EAF8()
{
  result = qword_1ECA67218;
  if (!qword_1ECA67218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67218);
  }

  return result;
}

uint64_t sub_1D8A0EB4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA67200, &qword_1D8B32388);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A0EBB8()
{
  result = qword_1ECA67250;
  if (!qword_1ECA67250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67250);
  }

  return result;
}

unint64_t sub_1D8A0EC0C()
{
  result = qword_1ECA67258;
  if (!qword_1ECA67258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67258);
  }

  return result;
}

unint64_t sub_1D8A0EC60()
{
  result = qword_1ECA67260;
  if (!qword_1ECA67260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67260);
  }

  return result;
}

unint64_t sub_1D8A0ECB4()
{
  result = qword_1ECA67268;
  if (!qword_1ECA67268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67268);
  }

  return result;
}

unint64_t sub_1D8A0ED08()
{
  result = qword_1ECA67270;
  if (!qword_1ECA67270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67270);
  }

  return result;
}

uint64_t sub_1D8A0ED5C(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

unint64_t sub_1D8A0EE50()
{
  result = qword_1ECA672B8;
  if (!qword_1ECA672B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA672B8);
  }

  return result;
}

void sub_1D8A0EED4(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    sub_1D8A0F02C(319, &unk_1EE0E3998, &type metadata for LabelConfidencePair, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D8A0F02C(319, &qword_1EE0E3680, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6BE8]);
      if (v3 <= 0x3F)
      {
        sub_1D8B15DB0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8A0F02C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for GroundingProcessor(uint64_t a1)
{
  result = qword_1EE0E61B0;
  if (!qword_1EE0E61B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8A0F0D0(uint64_t a1)
{
  result = type metadata accessor for LoggingSignposter(319);
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

uint64_t sub_1D8A0F1E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D8A0F230(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LabelConfidencePair(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LabelConfidencePair(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

unint64_t sub_1D8A0F350()
{
  result = qword_1ECA67358;
  if (!qword_1ECA67358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67358);
  }

  return result;
}

unint64_t sub_1D8A0F3C4()
{
  result = qword_1ECA67360;
  if (!qword_1ECA67360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67360);
  }

  return result;
}

unint64_t sub_1D8A0F41C()
{
  result = qword_1ECA67368;
  if (!qword_1ECA67368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67368);
  }

  return result;
}

unint64_t sub_1D8A0F474()
{
  result = qword_1ECA67370;
  if (!qword_1ECA67370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67370);
  }

  return result;
}

unint64_t sub_1D8A0F4CC()
{
  result = qword_1ECA67378;
  if (!qword_1ECA67378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67378);
  }

  return result;
}

unint64_t sub_1D8A0F524()
{
  result = qword_1ECA67380;
  if (!qword_1ECA67380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67380);
  }

  return result;
}

unint64_t sub_1D8A0F57C()
{
  result = qword_1ECA67388;
  if (!qword_1ECA67388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67388);
  }

  return result;
}

unint64_t sub_1D8A0F5D4()
{
  result = qword_1ECA67390;
  if (!qword_1ECA67390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67390);
  }

  return result;
}

unint64_t sub_1D8A0F62C()
{
  result = qword_1ECA67398;
  if (!qword_1ECA67398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67398);
  }

  return result;
}

unint64_t sub_1D8A0F684()
{
  result = qword_1ECA673A0;
  if (!qword_1ECA673A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673A0);
  }

  return result;
}

unint64_t sub_1D8A0F6DC()
{
  result = qword_1ECA673A8;
  if (!qword_1ECA673A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673A8);
  }

  return result;
}

unint64_t sub_1D8A0F734()
{
  result = qword_1ECA673B0;
  if (!qword_1ECA673B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673B0);
  }

  return result;
}

uint64_t sub_1D8A0F7C0(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20, &qword_1D8B32EA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for DetectionRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
    goto LABEL_22;
  }

  do
  {
    v38 = v13;
    v39 = v5;
    v40 = v4;
    v37 = &v35;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v16 = &v35 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v16, v14);
    *&v41 = 0;
    v17 = 0;
    v13 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v5 = v19 & *(a1 + 56);
    v20 = (v18 + 63) >> 6;
    while (v5)
    {
      v21 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_12:
      v4 = v21 | (v17 << 6);
      sub_1D8A12388(*(a1 + 48) + *(v6 + 72) * v4, v10, type metadata accessor for DetectionRequest);
      v14 = *v10;
      sub_1D8A123F0(v10, type metadata accessor for DetectionRequest);
      if (!v14)
      {
        *&v16[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        v24 = __OFADD__(v41, 1);
        *&v41 = v41 + 1;
        if (v24)
        {
          __break(1u);
LABEL_16:
          v25 = sub_1D88BE398(v16, v38, v41, a1);
          v5 = v39;
          v4 = v40;
          goto LABEL_17;
        }
      }
    }

    v22 = v17;
    while (1)
    {
      v17 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v17 >= v20)
      {
        goto LABEL_16;
      }

      v23 = *(v13 + 8 * v17);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v5 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v34 = swift_slowAlloc();
  v25 = sub_1D88C08D8(v34, v13, a1, sub_1D8A0B460, 0);
  MEMORY[0x1DA721330](v34, -1, -1);
LABEL_17:
  sub_1D89C5BD8(v25, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D87A14E4(v4, &unk_1ECA68B20, &qword_1D8B32EA0);
    return 0;
  }

  else
  {
    v27 = v36;
    sub_1D8A12450(v4, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0, &qword_1D8B1E8A0);
    v28 = (type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
    v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
    v30 = swift_allocObject();
    v41 = xmmword_1D8B1AB90;
    *(v30 + 16) = xmmword_1D8B1AB90;
    v31 = (v30 + v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63240, &qword_1D8B1E800);
    v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v41;
    sub_1D8A12388(v27, v33 + v32, type metadata accessor for DetectionRequest);
    sub_1D8A12388(v27, v31 + v28[7], type metadata accessor for DetectionRequest);
    *v31 = v33;
    sub_1D8A123F0(v27, type metadata accessor for DetectionRequest);
    return v30;
  }
}

float sub_1D8A0FCB0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673C8, &unk_1D8B32E58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A0FE64();
  sub_1D8B16DB0();
  v11 = 0;
  sub_1D8B16A00();
  v10 = 1;
  sub_1D8B169F0();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1D8A0FE64()
{
  result = qword_1ECA673C0;
  if (!qword_1ECA673C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673C0);
  }

  return result;
}

uint64_t sub_1D8A0FEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    goto LABEL_11;
  }

  v8 = sub_1D8B16BA0();
  if (v8)
  {
    goto LABEL_11;
  }

  if (qword_1ECA62260 != -1)
  {
    v8 = swift_once();
  }

  v9 = off_1ECA671D8;
  if (*(off_1ECA671D8 + 2) && (v8 = sub_1D87EF838(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(v9[7] + 8 * v8);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v20 = a3;
  v21 = a4;
  MEMORY[0x1EEE9AC00](v8);
  v19 = &v20;
  v12 = sub_1D8AD0444(sub_1D8A10480, v18, v11);

  if (v12)
  {
LABEL_11:
    v14 = 1;
  }

  else
  {
    if (v9[2] && (v13 = sub_1D87EF838(a3, a4), (v16 & 1) != 0))
    {
      v17 = *(v9[7] + 8 * v13);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v20 = a1;
    v21 = a2;
    MEMORY[0x1EEE9AC00](v13);
    v19 = &v20;
    v14 = sub_1D8AD0444(sub_1D8A1264C, v18, v17);
  }

  return v14 & 1;
}

void sub_1D8A100A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  Corners.bounds.getter();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Corners.bounds.getter();
  v31.origin.x = v8;
  v31.origin.y = v9;
  v11 = v10;
  v13 = v12;
  v29.origin.x = v1;
  v29.origin.y = v3;
  v29.size.width = v5;
  v29.size.height = v7;
  v31.size.width = v11;
  v31.size.height = v13;
  v30 = CGRectIntersection(v29, v31);
  CGRectIsNull(v30);
  LOBYTE(v14) = sub_1D889E348();
  v15 = v14;
  v17 = v16;
  LOBYTE(v18) = sub_1D889E348();
  if (v15 == v18 && v17 == v19)
  {
  }

  else
  {
    v20 = sub_1D8B16BA0();

    if ((v20 & 1) == 0)
    {
      LOBYTE(v21) = sub_1D889E348();
      v22 = v21;
      v24 = v23;
      LOBYTE(v25) = sub_1D889E348();
      LOBYTE(v22) = sub_1D8A0FEB8(v22, v24, v25, v26);

      if ((v22 & 1) == 0)
      {
        v27 = sub_1D8A05CB0();
        v28 = sub_1D8A05CB0();
        sub_1D8AC14BC(v28, v27);
      }
    }
  }
}

uint64_t sub_1D8A10318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6177417373616C63 && a2 == 0xEA00000000006572;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746369727473 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D8A1049C()
{
  result = qword_1ECA673D0;
  if (!qword_1ECA673D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673D0);
  }

  return result;
}

double sub_1D8A104F0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1D8A10548()
{
  result = qword_1EE0E3698;
  if (!qword_1EE0E3698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0E3698);
  }

  return result;
}

BOOL sub_1D8A10594(uint64_t a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v21.origin.y = a5;
  v21.origin.x = a4;
  v11 = *(a2 + 16);
  v19.origin.x = *(a2 + 24);
  v19.origin.y = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v19.size.width = v12;
  v19.size.height = v13;
  v21.size.width = a6;
  v21.size.height = a7;
  v20 = CGRectIntersection(v19, v21);
  width = v20.size.width;
  height = v20.size.height;
  if (CGRectIsNull(v20))
  {
    return 0;
  }

  v16 = width * height / (a6 * a7 + v12 * v13 - width * height);
  if (v16 <= 0.35)
  {
    return 0;
  }

  return a3 || v11 == a1;
}

void sub_1D8A1065C(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v140 = *a1;
  v132 = MEMORY[0x1E69E7CC0];
  sub_1D87C1470(a2, &v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673E8, &qword_1D8B32E90);
  sub_1D8A10548();
  if (swift_dynamicCast())
  {
    IOSurfaceLock(buffer, 1u, 0);
  }

  if ((v140 - 1) <= 1u)
  {
    v103 = *(a3 + 16);
    if (v103)
    {
      v4 = a3 + 32;
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      v102 = v4;
      while (1)
      {
        v7 = (v4 + 24 * v5);
        v8 = *v7;
        v9 = v7[2];
        rawValue = *(v7 + 2);
        v10 = a2[3];
        v11 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v10);
        v104 = v8;
        (*(v11 + 16))(v133, v8, v10, v11);
        if (v136)
        {
          break;
        }

        v111 = *&v133[1];
        v112 = *v133;
        v12 = v6;
        v117 = v134;
        r1 = v135;
        if (v140 != 1)
        {
          v13 = v132;
          v14 = *(v132 + 2);
          if (v14)
          {
            v15 = 0;
            v108 = v134 * v135;
            v16 = v132 + 80;
            v101 = v132 + 80;
            v17 = v6;
LABEL_10:
            v18 = &v16[56 * v15];
            v19 = v15;
            while (v19 < *(v13 + 2))
            {
              v20 = *(v18 - 6);
              v21 = *(v18 - 5);
              v22 = *(v18 - 4);
              v23 = *(v18 - 3);
              v24 = *(v18 - 2);
              v25 = *(v18 - 2);
              v26 = *v18;
              v141.origin.y = v111;
              v141.origin.x = v112;
              v141.size.width = v117;
              v141.size.height = r1;
              v143.origin.x = v21;
              v143.origin.y = v22;
              v143.size.width = v23;
              v143.size.height = v24;
              v142 = CGRectIntersection(v141, v143);
              width = v142.size.width;
              height = v142.size.height;
              if (!CGRectIsNull(v142))
              {
                v29 = width * height / (v108 + v23 * v24 - width * height);
                if (v29 > 0.35)
                {
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v122 = v17;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1D87F4BCC(0, *(v17 + 16) + 1, 1);
                    v17 = v122;
                  }

                  v32 = *(v17 + 16);
                  v31 = *(v17 + 24);
                  v33 = v32 + 1;
                  if (v32 >= v31 >> 1)
                  {
                    sub_1D87F4BCC((v31 > 1), v32 + 1, 1);
                    v33 = v32 + 1;
                    v17 = v122;
                  }

                  v15 = v19 + 1;
                  *(v17 + 16) = v33;
                  v34 = v17 + (v32 << 6);
                  *(v34 + 32) = v19;
                  *(v34 + 40) = v20;
                  *(v34 + 48) = v21;
                  *(v34 + 56) = v22;
                  *(v34 + 64) = v23;
                  *(v34 + 72) = v24;
                  *(v34 + 80) = v25;
                  *(v34 + 88) = v26;
                  v16 = v101;
                  v6 = MEMORY[0x1E69E7CC0];
                  if (v14 - 1 != v19)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_23;
                }
              }

              ++v19;
              v18 += 7;
              if (v14 == v19)
              {
                v6 = MEMORY[0x1E69E7CC0];
                goto LABEL_23;
              }
            }

            goto LABEL_91;
          }

          v17 = v6;
LABEL_23:
          v12 = sub_1D87BA2C8(v17);
        }

        v35 = *(v12 + 16);
        if (v35)
        {
          v109 = v5;
          v36 = 0;
          v37 = v6;
LABEL_26:
          v38 = *(v12 + 16);
          v39 = v12 + 84 + (v36 << 6);
          v40 = v36;
          while (v40 < v38)
          {
            v41 = *(v39 - 52);
            v42 = *(v39 - 20);
            v123 = *(v39 - 36);
            v124 = v42;
            v122 = v41;
            v43 = *(v39 - 4);
            v121 = *(v39 + 8);
            buffer = *v39;
            v36 = v40 + 1;
            if (v43 < v9)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1D87F4B9C(0, *(v37 + 16) + 1, 1);
              }

              v45 = *(v37 + 16);
              v44 = *(v37 + 24);
              if (v45 >= v44 >> 1)
              {
                sub_1D87F4B9C((v44 > 1), v45 + 1, 1);
              }

              *(v37 + 16) = v45 + 1;
              v46 = v37 + (v45 << 6);
              v47 = v122;
              v48 = v124;
              *(v46 + 48) = v123;
              *(v46 + 64) = v48;
              *(v46 + 32) = v47;
              *(v46 + 80) = v43;
              *(v46 + 92) = v121;
              *(v46 + 84) = buffer;
              if (v35 - 1 != v40)
              {
                goto LABEL_26;
              }

LABEL_36:

              v5 = v109;
              v6 = MEMORY[0x1E69E7CC0];
              if (*(v37 + 16))
              {
                goto LABEL_39;
              }

              goto LABEL_48;
            }

            v39 += 64;
            ++v40;
            if (v35 == v36)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_90;
        }

        v37 = v6;
LABEL_39:
        visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(rawValue);
        if (v122 == 181)
        {
          goto LABEL_82;
        }

        v49 = v132;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1D87C995C(0, *(v49 + 2) + 1, 1, v49);
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = sub_1D87C995C((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        v52 = &v49[56 * v51];
        *(v52 + 4) = v104;
        *(v52 + 5) = v112;
        *(v52 + 6) = v111;
        *(v52 + 7) = v117;
        *(v52 + 8) = r1;
        *(v52 + 18) = v9;
        *(v52 + 10) = rawValue;
        v132 = v49;
        v53 = *(v37 + 16);
        if (v53)
        {
          v54 = (v53 << 6) - 32;
          while (v53 <= *(v37 + 16))
          {
            --v53;
            sub_1D8A0CE20(*(v37 + v54), &v122);
            v54 -= 64;
            if (!v53)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_81;
        }

LABEL_48:
        ++v5;

        v4 = v102;
        if (v5 == v103)
        {
          goto LABEL_86;
        }
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    goto LABEL_86;
  }

  v55 = *(a3 + 16);
  v56 = MEMORY[0x1E69E7CC0];
  if (v55)
  {
    *&v122 = MEMORY[0x1E69E7CC0];
    sub_1D87F4B7C(0, v55, 0);
    v56 = v122;
    v57 = (a3 + 48);
    while (1)
    {
      v58 = *(v57 - 2);
      v59 = *(v57 - 2);
      v60 = *v57;
      v61 = a2[3];
      v62 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v61);
      (*(v62 + 16))(&v137, v58, v61, v62);
      if (v139)
      {
        break;
      }

      v63 = v137;
      v64 = v138;
      *&v122 = v56;
      v66 = *(v56 + 16);
      v65 = *(v56 + 24);
      if (v66 >= v65 >> 1)
      {
        r1b = v138;
        v118 = v137;
        sub_1D87F4B7C((v65 > 1), v66 + 1, 1);
        v64 = r1b;
        v63 = v118;
        v56 = v122;
      }

      *(v56 + 16) = v66 + 1;
      v67 = v56 + 56 * v66;
      *(v67 + 32) = v58;
      v57 += 3;
      *(v67 + 40) = v59;
      *(v67 + 48) = v60;
      *(v67 + 56) = v63;
      *(v67 + 72) = v64;
      if (!--v55)
      {
        goto LABEL_56;
      }
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_56:
  *&v122 = v56;

  sub_1D8A0D640(&v122);
  if (!v107)
  {

    v68 = 0;
    buffer = v122;
    v69 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      if (*(buffer + 2))
      {
        v71 = *(buffer + 4);
        v119 = *(buffer + 10);
        v72 = *(buffer + 6);
        v73 = *(buffer + 8);
        r1a = *(buffer + 7);
        v75 = *(buffer + 9);
        v74 = *(buffer + 10);
        sub_1D88646C4(0, 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_1D87C995C(0, *(v70 + 2) + 1, 1, v70);
        }

        v77 = *(v70 + 2);
        v76 = *(v70 + 3);
        if (v77 >= v76 >> 1)
        {
          v70 = sub_1D87C995C((v76 > 1), v77 + 1, 1, v70);
        }

        v78 = 0;
        *(v70 + 2) = v77 + 1;
        v79 = &v70[56 * v77];
        *(v79 + 4) = v71;
        *(v79 + 5) = r1a;
        *(v79 + 6) = v73;
        *(v79 + 7) = v75;
        *(v79 + 8) = v74;
        *(v79 + 18) = v119;
        *(v79 + 10) = v72;
        v132 = v70;
        v80 = v68 + 1;
        v81 = *(buffer + 2);
        v82 = buffer + 80;
        v110 = v80;
LABEL_64:
        v83 = &v82[56 * v78];
        while (v81 != v78)
        {
          if (v78 >= *(buffer + 2))
          {
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

          v84 = *(v83 - 6);
          v85 = *(v83 - 10);
          v86 = *(v83 - 4);
          v87 = *(v83 - 3);
          v88 = *(v83 - 2);
          v89 = *(v83 - 1);
          v90 = *v83;
          ++v78;
          v125 = v71;
          v126 = v119;
          v127 = v72;
          v128 = r1a;
          v129 = v73;
          v130 = v75;
          v131 = v74;
          v83 += 56;
          if (sub_1D8A10594(v86, &v125, v140, v87, v88, v89, v90))
          {
            v91 = swift_isUniquelyReferenced_nonNull_native();
            *&v122 = v69;
            if ((v91 & 1) == 0)
            {
              sub_1D87F4B5C(0, *(v69 + 16) + 1, 1);
              v69 = v122;
            }

            v93 = *(v69 + 16);
            v92 = *(v69 + 24);
            v94 = v93 + 1;
            if (v93 >= v92 >> 1)
            {
              v96 = v93 + 1;
              rawValuea = v93;
              sub_1D87F4B5C((v92 > 1), v93 + 1, 1);
              v94 = v96;
              v93 = rawValuea;
              v69 = v122;
            }

            *(v69 + 16) = v94;
            v95 = v69 + (v93 << 6);
            *(v95 + 32) = v78 - 1;
            *(v95 + 40) = v84;
            *(v95 + 48) = v85;
            *(v95 + 56) = v86;
            *(v95 + 64) = v87;
            *(v95 + 72) = v88;
            *(v95 + 80) = v89;
            *(v95 + 88) = v90;
            v82 = buffer + 80;
            goto LABEL_64;
          }
        }

        v97 = *(v69 + 16);
        if (v97)
        {
          v98 = (v69 + (v97 << 6) - 32);
          while (v97 <= *(v69 + 16))
          {
            --v97;
            v99 = *v98;
            v98 -= 8;
            sub_1D8A0CED4(v99, &v122);
            if (!v97)
            {
              goto LABEL_77;
            }
          }

          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:

          sub_1D8A1049C();
          swift_allocError();
          *v100 = 3;
          *(v100 + 8) = 1;
          swift_willThrow();
          sub_1D87C1470(a2, &v122);
          if (swift_dynamicCast())
          {
            IOSurfaceUnlock(buffer, 1u, 0);
          }

LABEL_88:

          return;
        }

LABEL_77:

        v68 = v110;
        v69 = MEMORY[0x1E69E7CC0];
        if (v110 != 100)
        {
          continue;
        }
      }

      break;
    }

LABEL_86:
    sub_1D87C1470(a2, &v122);

    if (swift_dynamicCast())
    {
      IOSurfaceUnlock(buffer, 1u, 0);

      return;
    }

    goto LABEL_88;
  }

LABEL_94:

  __break(1u);
}

void *sub_1D8A11088(uint64_t a1, IOSurfaceRef buffer)
{
  BaseAddress = IOSurfaceGetBaseAddress(buffer);
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = BaseAddress;
  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1D87F4BFC(0, v4, 0);
  v5 = v18;
  v8 = (a1 + 80);
  while (1)
  {
    v9 = *(v8 - 6);
    if ((v9 - 0x20000000000000) >> 54 != 1023)
    {
      break;
    }

    v16 = *(v8 - 3);
    v17 = *(v8 - 5);
    v10 = *(v8 - 2);
    v11 = *v8;
    v12 = sub_1D8B15D60();
    *(v12 + 16) = 512;
    result = (v12 + 32);
    if ((v12 + 32) != &v6[1024 * v9])
    {
      result = memmove(result, &v6[1024 * v9], 0x400uLL);
    }

    *(v12 + 16) = 512;
    v14 = *(v18 + 16);
    v13 = *(v18 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_1D87F4BFC((v13 > 1), v14 + 1, 1);
    }

    *(v18 + 16) = v14 + 1;
    v15 = v18 + (v14 << 6);
    *(v15 + 32) = v9;
    v8 += 7;
    *(v15 + 40) = v17;
    *(v15 + 56) = v16;
    *(v15 + 72) = v10;
    *(v15 + 80) = v11;
    *(v15 + 88) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_1D8A111E8(uint64_t a1)
{
  v185 = 0;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673D8, &qword_1D8B32E80);
  v156[0] = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v159 = (v156 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673E0, &qword_1D8B32E88);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v165 = v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v164 = v156 - v6;
  v181 = sub_1D8B13240();
  v7 = *(v181 - 8);
  v8 = MEMORY[0x1EEE9AC00](v181);
  v163 = v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v173 = v156 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v172 = v156 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v177 = v156 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v175 = v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v171 = v156 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v156 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v184 = (v156 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v32 = v156 - v28;
  v189 = MEMORY[0x1E69E7CD0];
  v188 = MEMORY[0x1E69E7CC8];
  v33 = *(a1 + 16);
  v174 = v27;
  v160 = v29;
  v162 = v33;
  v156[1] = a1;
  if (v33)
  {
    v170 = v30;
    v34 = 0;
    v179 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v161 = a1 + v179;
    v35 = *(v29 + 72);
    v176 = (v7 + 16);
    v169 = (v7 + 8);
    v158 = v31;
    v157 = v7;
    v178 = v23;
    v180 = v156 - v28;
    v183 = v35;
    do
    {
      v167 = v34;
      sub_1D87A0E38(v161 + v35 * v34, v32, &qword_1ECA67750, &unk_1D8B1E0C0);
      if (qword_1ECA62260 != -1)
      {
        swift_once();
      }

      v37 = off_1ECA671D8;
      v38 = *&v32[*(v15 + 44)];
      if (*(v38 + 16))
      {
        visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v38 + 32));
        if (LOBYTE(v186[0]) == 181)
        {
          goto LABEL_123;
        }

        v39 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
        v41 = v40;
        if (v37[2])
        {
LABEL_11:
          v42 = sub_1D87EF838(v39, v41);
          v44 = v43;

          if (v44)
          {
            v45 = *(v37[7] + 8 * v42);

            v46 = v161;
            v47 = v162;
            v182 = MEMORY[0x1E69E7CC0];
            v48 = v158;
            do
            {
              v50 = v184;
              sub_1D87A0E38(v46, v184, &qword_1ECA67750, &unk_1D8B1E0C0);
              v51 = *(v50 + *(v15 + 44));
              if (*(v51 + 16))
              {
                visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v51 + 32));
                if (LOBYTE(v186[0]) == 181)
                {
                  goto LABEL_122;
                }

                v52 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
                v54 = v53;
              }

              else
              {
                v54 = 0xE700000000000000;
                v52 = 0x6E776F6E6B6E75;
              }

              v186[0] = v52;
              v186[1] = v54;
              MEMORY[0x1EEE9AC00](v52);
              v156[-2] = v186;
              v55 = v185;
              v56 = sub_1D8AD0444(sub_1D8A1264C, &v156[-4], v45);
              v185 = v55;

              if (v56)
              {
                sub_1D881F6FC(v184, v48, &qword_1ECA67750, &unk_1D8B1E0C0);
                v57 = v182;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v59 = v57;
                v187 = v57;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1D87F49CC(0, *(v57 + 16) + 1, 1);
                  v59 = v187;
                }

                v61 = *(v59 + 16);
                v60 = *(v59 + 24);
                if (v61 >= v60 >> 1)
                {
                  sub_1D87F49CC((v60 > 1), v61 + 1, 1);
                  v59 = v187;
                }

                *(v59 + 16) = v61 + 1;
                v182 = v59;
                v49 = v183;
                sub_1D881F6FC(v48, v59 + v179 + v61 * v183, &qword_1ECA67750, &unk_1D8B1E0C0);
              }

              else
              {
                sub_1D87A14E4(v184, &qword_1ECA67750, &unk_1D8B1E0C0);
                v49 = v183;
              }

              v46 += v49;
              --v47;
            }

            while (v47);

            v62 = *(v182 + 16);
            if (v62)
            {
              v63 = &v180[*(v15 + 40)];
              v64 = *v63;
              v65 = v63[1];
              v66 = v63[2];
              v67 = v63[3];
              v68 = v63[4];
              v69 = v63[5];
              v70 = v63[6];
              v71 = v63[7];
              v72 = v182 + v179;
              if (v66 >= *v63)
              {
                v73 = *v63;
              }

              else
              {
                v73 = v63[2];
              }

              if (v68 < v73)
              {
                v73 = v63[4];
              }

              if (v70 >= v73)
              {
                v74 = v73;
              }

              else
              {
                v74 = v63[6];
              }

              if (v67 >= v65)
              {
                v75 = v63[1];
              }

              else
              {
                v75 = v63[3];
              }

              if (v69 < v75)
              {
                v75 = v63[5];
              }

              if (v71 >= v75)
              {
                v76 = v75;
              }

              else
              {
                v76 = v63[7];
              }

              if (v64 <= v66)
              {
                v64 = v63[2];
              }

              if (v64 <= v68)
              {
                v64 = v63[4];
              }

              if (v64 <= v70)
              {
                v64 = v63[6];
              }

              if (v65 <= v67)
              {
                v65 = v63[3];
              }

              if (v65 <= v69)
              {
                v65 = v63[5];
              }

              if (v65 <= v71)
              {
                v65 = v63[7];
              }

              v77 = v64 - v74;
              v78 = v65 - v76;
              v79 = (v64 - v74) * (v65 - v76);
              v80 = v178;
              v81 = v183;
              do
              {
                sub_1D87A0E38(v72, v80, &qword_1ECA67750, &unk_1D8B1E0C0);
                v86 = (v80 + *(v15 + 40));
                v87 = *v86;
                v88 = v86[1];
                v89 = v86[2];
                v90 = v86[3];
                v91 = v86[4];
                v92 = v86[5];
                v93 = v86[6];
                v94 = v86[7];
                if (v89 >= *v86)
                {
                  v95 = *v86;
                }

                else
                {
                  v95 = v86[2];
                }

                if (v91 < v95)
                {
                  v95 = v86[4];
                }

                if (v93 < v95)
                {
                  v95 = v86[6];
                }

                if (v90 >= v88)
                {
                  v96 = v86[1];
                }

                else
                {
                  v96 = v86[3];
                }

                if (v92 < v96)
                {
                  v96 = v86[5];
                }

                if (v94 < v96)
                {
                  v96 = v86[7];
                }

                if (v87 <= v89)
                {
                  v87 = v86[2];
                }

                if (v87 <= v91)
                {
                  v87 = v86[4];
                }

                if (v87 <= v93)
                {
                  v87 = v86[6];
                }

                if (v88 <= v90)
                {
                  v88 = v86[3];
                }

                if (v88 <= v92)
                {
                  v88 = v86[5];
                }

                if (v88 <= v94)
                {
                  v88 = v86[7];
                }

                v97 = v87 - v95;
                v98 = v88 - v96;
                v190.origin.x = v74;
                v190.origin.y = v76;
                v190.size.width = v77;
                v190.size.height = v78;
                v191 = CGRectIntersection(v190, *&v95);
                if (v191.size.width * v191.size.height / v79 > 0.8)
                {
                  if (qword_1EE0E4280 != -1)
                  {
                    swift_once();
                  }

                  v99 = sub_1D8B151E0();
                  __swift_project_value_buffer(v99, qword_1EE0E4288);
                  v100 = v171;
                  sub_1D87A0E38(v180, v171, &qword_1ECA67750, &unk_1D8B1E0C0);
                  v101 = v170;
                  sub_1D87A0E38(v80, v170, &qword_1ECA67750, &unk_1D8B1E0C0);
                  v102 = sub_1D8B151C0();
                  v103 = sub_1D8B161F0();
                  if (os_log_type_enabled(v102, v103))
                  {
                    v104 = swift_slowAlloc();
                    v168 = swift_slowAlloc();
                    v186[0] = v168;
                    *v104 = 136315394;
                    LOBYTE(v105) = sub_1D889E348();
                    v106 = v105;
                    v108 = v107;
                    sub_1D87A14E4(v100, &qword_1ECA67750, &unk_1D8B1E0C0);
                    v109 = sub_1D89AC714(v106, v108, v186);

                    *(v104 + 4) = v109;
                    *(v104 + 12) = 2080;
                    LOBYTE(v110) = sub_1D889E348();
                    v111 = v110;
                    v113 = v112;
                    sub_1D87A14E4(v101, &qword_1ECA67750, &unk_1D8B1E0C0);
                    v114 = sub_1D89AC714(v111, v113, v186);

                    *(v104 + 14) = v114;
                    _os_log_impl(&dword_1D8783000, v102, v103, "Rejecting a %s because it intersects with %s.", v104, 0x16u);
                    v115 = v168;
                    swift_arrayDestroy();
                    MEMORY[0x1DA721330](v115, -1, -1);
                    v116 = v104;
                    v15 = v174;
                    MEMORY[0x1DA721330](v116, -1, -1);
                  }

                  else
                  {

                    sub_1D87A14E4(v101, &qword_1ECA67750, &unk_1D8B1E0C0);
                    sub_1D87A14E4(v100, &qword_1ECA67750, &unk_1D8B1E0C0);
                  }

                  v117 = v188;
                  v118 = v178;
                  if (!*(v188 + 16) || (, sub_1D87EF764(v118), v120 = v119, , (v120 & 1) == 0))
                  {
                    v121 = swift_isUniquelyReferenced_nonNull_native();
                    v186[0] = v117;
                    sub_1D8B06118(MEMORY[0x1E69E7CC0], v118, v121);
                    v188 = v186[0];
                  }

                  v122 = *v176;
                  (*v176)(v177, v118, v181);
                  v124 = sub_1D8A0D454(v186);
                  if (*v123)
                  {
                    v125 = v123;
                    sub_1D87A0E38(v180, v175, &qword_1ECA67750, &unk_1D8B1E0C0);
                    v126 = *v125;
                    v127 = swift_isUniquelyReferenced_nonNull_native();
                    *v125 = v126;
                    if ((v127 & 1) == 0)
                    {
                      v126 = sub_1D87C8C58(0, v126[2] + 1, 1, v126);
                      *v125 = v126;
                    }

                    v129 = v126[2];
                    v128 = v126[3];
                    if (v129 >= v128 >> 1)
                    {
                      v126 = sub_1D87C8C58((v128 > 1), v129 + 1, 1, v126);
                      *v125 = v126;
                    }

                    v126[2] = v129 + 1;
                    sub_1D881F6FC(v175, v126 + v179 + v129 * v183, &qword_1ECA67750, &unk_1D8B1E0C0);
                    (v124)(v186, 0);
                    v15 = v174;
                  }

                  else
                  {
                    (v124)(v186, 0);
                  }

                  v82 = *v169;
                  v83 = v181;
                  (*v169)(v177, v181);
                  v84 = v173;
                  v122(v173, v180, v83);
                  v85 = v172;
                  sub_1D87FC15C(v172, v84);
                  v82(v85, v83);
                  v80 = v178;
                  v81 = v183;
                }

                sub_1D87A14E4(v80, &qword_1ECA67750, &unk_1D8B1E0C0);
                v72 += v81;
                --v62;
              }

              while (v62);
            }

            v7 = v157;
          }

          v32 = v180;
          goto LABEL_5;
        }
      }

      else
      {
        v41 = 0xE700000000000000;
        v39 = 0x6E776F6E6B6E75;
        if (*(off_1ECA671D8 + 2))
        {
          goto LABEL_11;
        }
      }

LABEL_5:
      v36 = v167 + 1;
      sub_1D87A14E4(v32, &qword_1ECA67750, &unk_1D8B1E0C0);
      v34 = v36;
      v35 = v183;
    }

    while (v36 != v162);
  }

  v131 = sub_1D8A0E540(v130, &v189);

  v132 = *(v131 + 16);
  v133 = (v156[0] + 56);
  v134 = (v156[0] + 48);
  v135 = (v7 + 16);
  v136 = (v7 + 8);

  v137 = 0;
  v184 = v131;
  v185 = v131;
  if (!v132)
  {
    goto LABEL_105;
  }

LABEL_102:
  v138 = v166;
  if ((v137 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v137 < *(v131 + 16))
  {
    v139 = v131 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v137;
    v140 = *(v166 + 48);
    v141 = v159;
    *v159 = v137;
    sub_1D87A0E38(v139, v141 + v140, &qword_1ECA67750, &unk_1D8B1E0C0);
    v142 = v141;
    v143 = v165;
    sub_1D881F6FC(v142, v165, &qword_1ECA673D8, &qword_1D8B32E80);
    v144 = 0;
    ++v137;
    while (1)
    {
      (*v133)(v143, v144, 1, v138);
      v145 = v164;
      sub_1D881F6FC(v143, v164, &qword_1ECA673E0, &qword_1D8B32E88);
      if ((*v134)(v145, 1, v138) == 1)
      {
        break;
      }

      v146 = *v145;
      v147 = *(v138 + 48);
      v148 = v163;
      (*v135)(v163, &v145[v147], v181);
      sub_1D87A14E4(&v145[v147], &qword_1ECA67750, &unk_1D8B1E0C0);
      v149 = v188;
      if (*(v188 + 16) && (v150 = sub_1D87EF764(v148), (v151 & 1) != 0))
      {
        v152 = *(*(v149 + 56) + 8 * v150);
        v153 = *v136;
        v183 = v152;

        v153(v148, v181);
        v154 = v184;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v146 & 0x8000000000000000) != 0)
          {
            goto LABEL_117;
          }
        }

        else
        {
          v154 = sub_1D893948C(v154);
          if ((v146 & 0x8000000000000000) != 0)
          {
LABEL_117:
            __break(1u);
            break;
          }
        }

        if (v146 >= v154[2])
        {
          goto LABEL_121;
        }

        v155 = (*(v160 + 80) + 32) & ~*(v160 + 80);
        v184 = v154;
        *(v154 + v155 + *(v160 + 72) * v146 + *(v174 + 60)) = v183;
      }

      else
      {
        (*v136)(v148, v181);
      }

      v131 = v185;
      if (v137 != v132)
      {
        goto LABEL_102;
      }

LABEL_105:
      v144 = 1;
      v137 = v132;
      v138 = v166;
      v143 = v165;
    }

    return;
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
}

double sub_1D8A121E0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return result;
}

uint64_t sub_1D8A12238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D8A0C860(a1, v4, v5, v6);
}

uint64_t sub_1D8A122EC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D8B16BA0() & 1;
  }
}

uint64_t sub_1D8A12344(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D8B13240();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A12388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A123F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8A12450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A124B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A124D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

unint64_t sub_1D8A12540()
{
  result = qword_1ECA673F8;
  if (!qword_1ECA673F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673F8);
  }

  return result;
}

unint64_t sub_1D8A12598()
{
  result = qword_1ECA67400;
  if (!qword_1ECA67400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67400);
  }

  return result;
}

unint64_t sub_1D8A125F0()
{
  result = qword_1ECA67408;
  if (!qword_1ECA67408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67408);
  }

  return result;
}

uint64_t visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.systemImage.getter()
{
  result = 0x656E616C70726961;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
    case 3:
    case 4:
    case 0x8C:
    case 0x8D:
      v2 = 0x6472617A696CLL;
      goto LABEL_86;
    case 5:
      return 0x6C6C69662E7674;
    case 6:
    case 0x4D:
    case 0x79:
    case 0x7F:
    case 0x85:
    case 0x8B:
    case 0xA1:
      return 0x72612E6F746F6870;
    case 7:
      return 0x676E697265657473;
    case 8:
      return 0x6C6C69662E676162;
    case 9:
    case 0x10:
    case 0x1B:
    case 0x96:
      return 0xD000000000000013;
    case 0xA:
      return 0x65646F63726162;
    case 0xB:
    case 0x18:
    case 0x8E:
      return 0x61772E7265746177;
    case 0xC:
      return 0x2E7061632E746168;
    case 0xD:
      return 0x62756F642E646562;
    case 0xE:
    case 0x15:
    case 0x26:
    case 0x31:
    case 0x40:
    case 0x5B:
    case 0x61:
    case 0x83:
    case 0x95:
    case 0x97:
    case 0x9D:
    case 0xA3:
    case 0xA9:
    case 0xB3:
      v2 = 0x747269687374;
      goto LABEL_86;
    case 0xF:
      return 0x656C6379636962;
    case 0x11:
    case 0x12:
    case 0x13:
      v3 = 1685219682;
      goto LABEL_88;
    case 0x14:
      return 0x72616F6270696C63;
    case 0x16:
    case 0x7C:
      return 0xD000000000000010;
    case 0x17:
      return 0x74616F626C696173;
    case 0x19:
      v3 = 1802465122;
      goto LABEL_88;
    case 0x1A:
      v9 = 1802465122;
      return v9 | 0x6761702E00000000;
    case 0x1C:
      v3 = 1918989427;
      goto LABEL_88;
    case 0x1D:
    case 0x28:
    case 0x2B:
    case 0x4C:
    case 0x54:
    case 0x70:
    case 0x7E:
    case 0x8F:
    case 0x90:
    case 0x91:
    case 0x92:
    case 0x98:
    case 0xA4:
      return 0xD000000000000010;
    case 0x1E:
    case 0x99:
    case 0x9C:
    case 0xA5:
      return 0x676E69646C697562;
    case 0x1F:
      return 0xD000000000000010;
    case 0x20:
      v8 = 0x656E69626163;
      return v8 & 0xFFFFFFFFFFFFLL | 0x2E74000000000000;
    case 0x21:
      return 0x7261646E656C6163;
    case 0x22:
    case 0x23:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0xB2:
      v5 = 28516;
      goto LABEL_12;
    case 0x24:
    case 0xAA:
      return 0x6C6C69662E726163;
    case 0x25:
    case 0x6C:
    case 0x75:
      return 0x64726163756E656DLL;
    case 0x27:
      return 0x61632E656C707061;
    case 0x29:
    case 0x34:
      return 0x61622E7472616863;
    case 0x2A:
      return 0x6163746964657263;
    case 0x2C:
      v3 = 1952542563;
      goto LABEL_88;
    case 0x2D:
      return 0xD000000000000016;
    case 0x2E:
    case 0x78:
      return 0xD000000000000010;
    case 0x2F:
    case 0x35:
    case 0x82:
    case 0x87:
      return 0x696E6B2E6B726F66;
    case 0x30:
    case 0x5C:
    case 0x60:
    case 0x67:
    case 0x68:
    case 0x9A:
      return 0xD000000000000011;
    case 0x32:
      return 0x6261742E706D616CLL;
    case 0x33:
    case 0x84:
      return 0xD000000000000012;
    case 0x36:
    case 0x37:
    case 0x63:
    case 0x64:
    case 0x65:
    case 0x6D:
    case 0x6E:
    case 0x6F:
      v4 = 0x697270776170;
      goto LABEL_9;
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x46:
    case 0x47:
    case 0xB1:
      v6 = 779379043;
      return v6 | 0x6C6C696600000000;
    case 0x3F:
      return 0x6C69636E6570;
    case 0x41:
      v5 = 30061;
LABEL_12:
      v6 = v5 | 0x2E670000;
      return v6 | 0x6C6C696600000000;
    case 0x42:
      return 0x74656C6C6177;
    case 0x43:
      return 0xD000000000000015;
    case 0x44:
      return 0x65706F6C65766E65;
    case 0x45:
      return 0x7373616C67657965;
    case 0x48:
    case 0x49:
    case 0x50:
    case 0x51:
    case 0x52:
    case 0x69:
    case 0x6A:
    case 0x6B:
      v3 = 1752394086;
      goto LABEL_88;
    case 0x4A:
    case 0x73:
    case 0x80:
    case 0x86:
      v3 = 1717658988;
      goto LABEL_88;
    case 0x4B:
    case 0x74:
      return 0x657061707377656ELL;
    case 0x4E:
      return 0xD000000000000010;
    case 0x4F:
      return 0xD000000000000010;
    case 0x53:
    case 0x55:
    case 0x56:
    case 0x57:
    case 0x58:
      v2 = 0x6E6F73726570;
      goto LABEL_86;
    case 0x5D:
      return 0x656C6B72617073;
    case 0x5E:
      v2 = 0x726568736177;
      goto LABEL_86;
    case 0x5F:
      return 0x6C7562746867696CLL;
    case 0x62:
      return 0x656E697A6167616DLL;
    case 0x66:
      v6 = 779116909;
      return v6 | 0x6C6C696600000000;
    case 0x71:
      return 0x637963726F746F6DLL;
    case 0x72:
    case 0xAC:
    case 0xAE:
      return 0x6E6961746E756F6DLL;
    case 0x76:
    case 0x7A:
      return 0xD000000000000017;
    case 0x77:
      v7 = 1918985576;
      goto LABEL_51;
    case 0x7B:
      return 0x686775616CLL;
    case 0x7D:
      return 0x6F746F6870;
    case 0x81:
    case 0x89:
    case 0xAD:
      v2 = 0x746F72726163;
      goto LABEL_86;
    case 0x88:
      return 0x6C6C69662E676174;
    case 0x8A:
      v8 = 0x706965636572;
      return v8 & 0xFFFFFFFFFFFFLL | 0x2E74000000000000;
    case 0x93:
      return 0x69662E7269616863;
    case 0x94:
      v3 = 1701800051;
      goto LABEL_88;
    case 0x9E:
    case 0xA7:
      return 0xD000000000000014;
    case 0x9F:
      return 0x63706F746B736564;
    case 0xA0:
      v9 = 1954047348;
      return v9 | 0x6761702E00000000;
    case 0xA2:
      v2 = 0x74656B636974;
LABEL_86:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
      break;
    case 0xA6:
      result = 0x6165627964646574;
      break;
    case 0xA8:
      v3 = 1701147252;
LABEL_88:
      result = v3 | 0x6C69662E00000000;
      break;
    case 0xAB:
      v7 = 1851878512;
LABEL_51:
      result = v7 | 0x69662E7400000000;
      break;
    case 0xB0:
      result = 1768319351;
      break;
    case 0xB4:
      result = 0x6E612E6863746177;
      break;
    default:
      v4 = 0x656D75636F64;
LABEL_9:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
      break;
  }

  return result;
}

void sub_1D8A12E08(uint64_t a1)
{
  v2 = type metadata accessor for TextDetectorResult(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v21 = *(v11 + 2);
    if (v21)
    {
      v30 = MEMORY[0x1E69E7CC0];
      sub_1D87F3F54(0, v21, 0);
      v22 = v30;
      v23 = (v11 + 48);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v30 = v22;
        v26 = *(v22 + 16);
        v27 = *(v22 + 24);

        if (v26 >= v27 >> 1)
        {
          sub_1D87F3F54((v27 > 1), v26 + 1, 1);
          v22 = v30;
        }

        *(v22 + 16) = v26 + 1;
        v28 = v22 + 16 * v26;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        v23 += 5;
        --v21;
      }

      while (v21);
    }

    return;
  }

  v8 = *(v3 + 44);
  v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v4 + 72);
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D8A13924(v9, v6, type metadata accessor for TextDetectorResult);
    v12 = *&v6[v8];

    sub_1D8A226E8(v6, type metadata accessor for TextDetectorResult);
    v13 = *(v12 + 16);
    v14 = *(v11 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= *(v11 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      v11 = sub_1D87C8390(isUniquelyReferenced_nonNull_native, v17, 1, v11);
      if (*(v12 + 16))
      {
LABEL_14:
        if ((*(v11 + 3) >> 1) - *(v11 + 2) < v13)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v18 = *(v11 + 2);
          v19 = __OFADD__(v18, v13);
          v20 = v18 + v13;
          if (v19)
          {
            goto LABEL_29;
          }

          *(v11 + 2) = v20;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_27;
    }

LABEL_4:
    v9 += v10;
    if (!--v7)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

unint64_t AFMError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1D8B145A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AFMError(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A13924(v1, v8, type metadata accessor for AFMError);
  if ((*(v3 + 48))(v8, 2, v2))
  {
    return 0xD000000000000016;
  }

  (*(v3 + 32))(v5, v8, v2);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0x20617461444D4641, 0xE800000000000000);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](0xD000000000000011, 0x80000001D8B47530);
  v10 = v11[0];
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t AFMResult.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AFMResult.id.setter(uint64_t a1)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AFMResult.confidence.setter(float a1)
{
  result = type metadata accessor for AFMResult(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

__n128 AFMResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AFMResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 AFMResult.corners.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AFMResult(0) + 24);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v6;
  return result;
}

uint64_t AFMResult.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for AFMResult(0) + 28));

  return v1;
}

void AFMResult.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AFMResult(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

double AFMResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AFMResult(0) + 32));
  *a1 = result;
  return result;
}

uint64_t AFMResult.rotationAngle.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for AFMResult(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t AFMResult.timestamp.setter(double a1)
{
  result = type metadata accessor for AFMResult(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t AFMResult.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AFMResult(0) + 40);
  v4 = sub_1D8B145A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AFMResult.data.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AFMResult(0) + 40);
  v4 = sub_1D8B145A0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1D8A13924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AFMResult.originator.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AFMResult(0) + 44);

  return sub_1D8A139D0(a1, v3);
}

uint64_t sub_1D8A139D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionRequest.Originator(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A13AC4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1635017060;
  if (v1 != 6)
  {
    v3 = 0x74616E696769726FLL;
  }

  v4 = 0x6E6F697461746F72;
  if (v1 != 4)
  {
    v4 = 0x6D617473656D6974;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7372656E726F63;
  if (v1 != 2)
  {
    v5 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    v2 = 0x6E656469666E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8A13BC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A23B5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A13BEC(uint64_t a1)
{
  v2 = sub_1D8A2264C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A13C28(uint64_t a1)
{
  v2 = sub_1D8A2264C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AFMResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67410, &qword_1D8B33040);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A2264C();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  sub_1D8B13240();
  sub_1D8A226A0(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for AFMResult(0);
    v20 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = 3;
    sub_1D8B16A90();
    *&v16 = *(v3 + *(v9 + 32));
    v15 = 4;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 5;
    sub_1D8B16AB0();
    LOBYTE(v16) = 6;
    sub_1D8B145A0();
    sub_1D8A226A0(&qword_1ECA651E0, MEMORY[0x1E69C9C10], MEMORY[0x1E69C9C18]);
    sub_1D8B16AE0();
    LOBYTE(v16) = 7;
    type metadata accessor for DetectionRequest.Originator(0);
    sub_1D8A226A0(&qword_1ECA67420, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

void AFMResult.hash(into:)(__int128 *a1)
{
  sub_1D8B13240();
  sub_1D8A226A0(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v3 = type metadata accessor for AFMResult(0);
  sub_1D8B16D60();
  v4 = (v1 + v3[6]);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  sub_1D8818B80(*v4, v4[1]);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D8B15A60();
  v11 = *(v1 + v3[8]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1DA720250](*&v11);
  v12 = *(v1 + v3[9]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1DA720250](*&v12);
  sub_1D8B145A0();
  sub_1D8A226A0(&qword_1EE0E9840, MEMORY[0x1E69C9C10], MEMORY[0x1E69C9C20]);
  sub_1D8B157A0();
  DetectionRequest.Originator.hash(into:)(a1);
}

uint64_t AFMResult.hashValue.getter()
{
  sub_1D8B16D20();
  AFMResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t AFMResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D8B145A0();
  v35 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13240();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67428, &qword_1D8B33048);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v33 - v9;
  v11 = type metadata accessor for AFMResult(0);
  v13 = *(MEMORY[0x1EEE9AC00](v11) + 44);
  *(&v33 + v13 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)) = MEMORY[0x1E69E7CD0];
  v43 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v13;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A2264C();
  v40 = v10;
  v14 = v42;
  sub_1D8B16DB0();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = type metadata accessor for DetectionRequest.Originator;
    v32 = &v43[v44];
  }

  else
  {
    v42 = v6;
    v15 = v36;
    LOBYTE(v46) = 0;
    sub_1D8A226A0(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v16 = v37;
    sub_1D8B16A10();
    v18 = v7;
    v19 = *(v15 + 32);
    v20 = v43;
    v37 = v18;
    v19(v43, v16, v18);
    LOBYTE(v46) = 1;
    sub_1D8B169F0();
    *(v20 + v11[5]) = v21;
    v51 = 2;
    sub_1D881BC34();
    sub_1D8B16A10();
    v22 = (v20 + v11[6]);
    v23 = v47;
    *v22 = v46;
    v22[1] = v23;
    v24 = v49;
    v22[2] = v48;
    v22[3] = v24;
    LOBYTE(v45) = 3;
    v25 = sub_1D8B169C0();
    v26 = v35;
    v27 = (v20 + v11[7]);
    *v27 = v25;
    v27[1] = v28;
    v50 = 4;
    sub_1D88913B8();
    sub_1D8B16A10();
    *(v20 + v11[8]) = v45;
    LOBYTE(v45) = 5;
    sub_1D8B169E0();
    *(v20 + v11[9]) = v29;
    LOBYTE(v45) = 6;
    sub_1D8A226A0(&qword_1ECA65298, MEMORY[0x1E69C9C10], MEMORY[0x1E69C9C28]);
    sub_1D8B16A10();
    (*(v26 + 32))(v20 + v11[10], v42, v39);
    LOBYTE(v45) = 7;
    sub_1D8A226A0(&unk_1ECA676C0, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    v30 = v34;
    sub_1D8B16A10();
    (*(v38 + 8))(v40, v41);
    sub_1D8A139D0(v30, v20 + v44);
    sub_1D8A13924(v20, v33, type metadata accessor for AFMResult);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = type metadata accessor for AFMResult;
    v32 = v20;
  }

  return sub_1D8A226E8(v32, v31);
}

uint64_t sub_1D8A14968(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_1D8A149D8()
{
  sub_1D8B16D20();
  AFMResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A14A1C(uint64_t a1)
{
  sub_1D8B16D20();
  AFMResult.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A14A88@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>, double a3@<D0>)
{
  v51 = a3;
  v49 = a2;
  v4 = sub_1D8B145A0();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B13240();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A13924(a1, v12, type metadata accessor for DetectionRequest.Originator);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v14 + 32))(v16, v12, v13);
    v54 = v14;
    v17 = *(v14 + 16);
    v50 = v13;
    v17(v9, v16, v13);
    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v60.size.width = 0.0;
    v60.size.height = 0.0;
    MinX = CGRectGetMinX(v60);
    v61.origin.x = 0.0;
    v61.origin.y = 0.0;
    v61.size.width = 0.0;
    v61.size.height = 0.0;
    MinY = CGRectGetMinY(v61);
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.width = 0.0;
    v62.size.height = 0.0;
    MaxX = CGRectGetMaxX(v62);
    v63.origin.x = 0.0;
    v63.origin.y = 0.0;
    v63.size.width = 0.0;
    v63.size.height = 0.0;
    v21 = CGRectGetMinY(v63);
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    v64.size.width = 0.0;
    v64.size.height = 0.0;
    v22 = CGRectGetMinX(v64);
    v65.origin.x = 0.0;
    v65.origin.y = 0.0;
    v65.size.width = 0.0;
    v65.size.height = 0.0;
    MaxY = CGRectGetMaxY(v65);
    v66.origin.x = 0.0;
    v66.origin.y = 0.0;
    v66.size.width = 0.0;
    v66.size.height = 0.0;
    v24 = CGRectGetMaxX(v66);
    v67.origin.x = 0.0;
    v67.origin.y = 0.0;
    v67.size.width = 0.0;
    v67.size.height = 0.0;
    v25 = CGRectGetMaxY(v67);
    v26 = v52;
    v27 = v53;
    v28 = *(v53 + 16);
    v29 = v56;
    v28(&v9[v7[10]], v56, v52);
    sub_1D8A13924(a1, &v9[v7[11]], type metadata accessor for DetectionRequest.Originator);
    *&v9[v7[5]] = -1082130432;
    v30 = &v9[v7[6]];
    *v30 = MinX;
    v30[1] = MinY;
    v30[2] = MaxX;
    v30[3] = v21;
    v30[4] = v22;
    v30[5] = MaxY;
    v30[6] = v24;
    v30[7] = v25;
    v31 = &v9[v7[7]];
    *v31 = 0x7974706D65;
    *(v31 + 1) = 0xE500000000000000;
    *&v9[v7[8]] = 0;
    *&v9[v7[9]] = v51;
    v32 = v59;
    v33 = v29;
    v34 = v28;
    v28(v59, v33, v26);
    v35 = (*(v27 + 88))(v32, v26);
    v36 = v27;
    if (v35 == *MEMORY[0x1E69C9BF8])
    {
      (*(v54 + 8))(v16, v50);
      (*(v27 + 8))(v59, v26);
      v37 = swift_allocBox();
      result = sub_1D8A24170(v9, v38, type metadata accessor for AFMResult);
      *v49 = v37 | 0xA000000000000000;
    }

    else
    {
      v40 = v50;
      v41 = v59;
      if (v35 == *MEMORY[0x1E69C9C00])
      {
        (*(v54 + 8))(v16, v50);
        v42 = swift_allocBox();
        sub_1D8A24170(v9, v43, type metadata accessor for AFMResult);
        *v49 = v42 | 0x9000000000000000;
        return (*(v36 + 8))(v41, v26);
      }

      else if (v35 == *MEMORY[0x1E69C9C08])
      {
        (*(v36 + 8))(v59, v26);
        type metadata accessor for AFMError(0);
        sub_1D8A226A0(&qword_1ECA67430, type metadata accessor for AFMError, &protocol conformance descriptor for AFMError);
        swift_allocError();
        v45 = v44;
        v34(v44, v56, v26);
        (*(v36 + 56))(v45, 0, 2, v26);
        swift_willThrow();
        sub_1D8A226E8(v9, type metadata accessor for AFMResult);
        return (*(v54 + 8))(v16, v40);
      }

      else
      {
        type metadata accessor for AFMError(0);
        sub_1D8A226A0(&qword_1ECA67430, type metadata accessor for AFMError, &protocol conformance descriptor for AFMError);
        v55 = swift_allocError();
        v47 = v46;
        v34(v46, v56, v26);
        (*(v36 + 56))(v47, 0, 2, v26);
        swift_willThrow();
        sub_1D8A226E8(v9, type metadata accessor for AFMResult);
        (*(v54 + 8))(v16, v40);
        return (*(v36 + 8))(v41, v26);
      }
    }
  }

  else
  {
    sub_1D8A226E8(v12, type metadata accessor for DetectionRequest.Originator);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1D8B16720();

    v57 = 0xD000000000000017;
    v58 = 0x80000001D8B476F0;
    v48 = DetectionRequest.Originator.description.getter();
    MEMORY[0x1DA71EFA0](v48);

    result = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

void sub_1D8A1526C(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v63 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B14110();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674D8, &qword_1D8B33518);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v60 - v9;
  v10 = sub_1D8B14130();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8B140E0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674E0, &qword_1D8B33520);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v64 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v60 - v20;
  v21 = type metadata accessor for DetectionRequest.Annotation(0);
  v72 = *(v21 - 8);
  v73 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v60 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v60 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v70 = &v60 - v31;
  v32 = *(v1 + *(type metadata accessor for DetectionRequest(0) + 24));
  v33 = 1 << *(v32 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v32 + 56);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  if (v35)
  {
    while (1)
    {
      v38 = v37;
LABEL_8:
      sub_1D8A13924(*(v32 + 48) + *(v72 + 72) * (__clz(__rbit64(v35)) | (v38 << 6)), v30, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8A24170(v30, v27, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8A13924(v27, v24, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        break;
      }

      v35 &= v35 - 1;
      sub_1D8A226E8(v24, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8A226E8(v27, type metadata accessor for DetectionRequest.Annotation);
      v37 = v38;
      if (!v35)
      {
        goto LABEL_5;
      }
    }

    v42 = v70;
    sub_1D8A24170(v27, v70, type metadata accessor for DetectionRequest.Annotation);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v43 = *v42;
      if (v43 == 1)
      {
        sub_1D8B13630();
        v45 = v75;
        v44 = v76;
        v46 = __swift_project_boxed_opaque_existential_1(v74, v75);
        MEMORY[0x1EEE9AC00](v46);
        v48 = &v60 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v48);
        MEMORY[0x1DA71D5B0](v48, v45, *(v44 + 16));
        v50 = v67;
        sub_1D8B14120();
        __swift_destroy_boxed_opaque_existential_1(v74);
        v51 = 0;
        v53 = v65;
        v52 = v66;
        v54 = v68;
        v55 = v69;
      }

      else
      {
        v51 = 1;
        v53 = v65;
        v52 = v66;
        v54 = v68;
        v55 = v69;
        v50 = v67;
      }

      v56 = v64;
      v57 = *(v53 + 56);
      v57(v50, v51, 1, v52);
      sub_1D87A0E38(v50, v56, &qword_1ECA674E0, &qword_1D8B33520);
      if ((*(v53 + 48))(v56, 1, v52) != 1)
      {
        (*(v53 + 32))(v54, v56, v52);
        v58 = sub_1D8B140F0();
        (*(*(v58 - 8) + 56))(v55, 1, 1, v58);
        (*(v53 + 16))(v17, v54, v52);
        v57(v17, 0, 1, v52);
        sub_1D87A0E38(v55, v61, &qword_1ECA674D8, &qword_1D8B33518);
        sub_1D8B13230();
        v59 = [objc_opt_self() processInfo];
        [v59 processIdentifier];

        sub_1D8B14100();
        v40 = v71;
        sub_1D8B14360();
        sub_1D87A14E4(v69, &qword_1ECA674D8, &qword_1D8B33518);
        (*(v53 + 8))(v68, v52);
        sub_1D87A14E4(v67, &qword_1ECA674E0, &qword_1D8B33520);
        v39 = 0;
        goto LABEL_13;
      }

      sub_1D87A14E4(v50, &qword_1ECA674E0, &qword_1D8B33520);
      sub_1D87A14E4(v56, &qword_1ECA674E0, &qword_1D8B33520);
    }

    else
    {
      sub_1D8A226E8(v42, type metadata accessor for DetectionRequest.Annotation);
    }

LABEL_12:
    v39 = 1;
    v40 = v71;
LABEL_13:
    v41 = sub_1D8B14370();
    (*(*(v41 - 8) + 56))(v40, v39, 1, v41);
    return;
  }

LABEL_5:
  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      goto LABEL_12;
    }

    v35 = *(v32 + 56 + 8 * v38);
    ++v37;
    if (v35)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}