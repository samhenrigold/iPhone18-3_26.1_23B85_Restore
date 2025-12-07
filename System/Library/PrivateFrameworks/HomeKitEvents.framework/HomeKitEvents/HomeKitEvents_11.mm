uint64_t _s13HomeKitEvents06EnergyB0O20LoadDailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 4);
  v47[2] = *(a1 + 3);
  v47[3] = v6;
  v48[0] = *(a1 + 5);
  *(v48 + 9) = *(a1 + 89);
  v7 = *(a1 + 2);
  v47[0] = *(a1 + 1);
  v47[1] = v7;
  v8 = *(a1 + 8);
  v43[0] = *(a1 + 7);
  v43[1] = v8;
  v9 = *(a1 + 9);
  v10 = *(a1 + 10);
  v11 = *(a1 + 11);
  *(v44 + 9) = *(a1 + 185);
  v43[3] = v10;
  v44[0] = v11;
  v43[2] = v9;
  v12 = *(a1 + 13);
  v13 = *(a1 + 14);
  v14 = *(a1 + 15);
  *(v40 + 9) = *(a1 + 249);
  v39[1] = v13;
  v40[0] = v14;
  v39[0] = v12;
  v15 = *(a1 + 17);
  v16 = *(a1 + 18);
  v17 = *(a1 + 19);
  *&v36[9] = *(a1 + 313);
  v35[1] = v16;
  *v36 = v17;
  v35[0] = v15;
  v18 = *(a1 + 329);
  *(v46 + 9) = *(a2 + 185);
  v20 = *a2;
  v19 = a2[1];
  v21 = *(a2 + 2);
  v49[0] = *(a2 + 1);
  v49[1] = v21;
  v22 = *(a2 + 3);
  v23 = *(a2 + 4);
  v24 = *(a2 + 5);
  *&v50[9] = *(a2 + 89);
  v49[3] = v23;
  *v50 = v24;
  v49[2] = v22;
  v25 = *(a2 + 8);
  v45[0] = *(a2 + 7);
  v45[1] = v25;
  v26 = *(a2 + 9);
  v27 = *(a2 + 11);
  v45[3] = *(a2 + 10);
  v46[0] = v27;
  v45[2] = v26;
  v28 = *(a2 + 13);
  v29 = *(a2 + 14);
  v30 = *(a2 + 15);
  *(v42 + 9) = *(a2 + 249);
  v41[1] = v29;
  v42[0] = v30;
  v41[0] = v28;
  v31 = *(a2 + 17);
  v32 = *(a2 + 18);
  v33 = *(a2 + 19);
  *&v38[9] = *(a2 + 313);
  v37[1] = v32;
  *v38 = v33;
  v37[0] = v31;
  if (__PAIR128__(v4, v5) == __PAIR128__(v19, v20))
  {
    v34 = *(a2 + 329);
    if (sub_254226694(v47, v49) & 1) != 0 && (sub_254226694(v43, v45) & 1) != 0 && (sub_2542265D0(v39, v41) & 1) != 0 && (sub_2542265D0(v35, v37))
    {
      return v18 ^ v34 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_254229BBC(uint64_t a1, uint64_t a2)
{
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  (*(*(DailyDigestEventV5StateVMa - 8) + 16))(a2, a1, DailyDigestEventV5StateVMa);
  return a2;
}

uint64_t sub_254229C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_254229C88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254229CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C80, &qword_254253CE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254229D50(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    goto LABEL_19;
  }

  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  v5 = DailyDigestEventV5StateVMa[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = 0xE400000000000000;
      v9 = 1667331688;
      if (v7)
      {
        goto LABEL_5;
      }

LABEL_9:
      v10 = 0xE500000000000000;
      if (v9 != 0x726568746FLL)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v9 = 0x6369727463656C65;
    v8 = 0xEF656C6369686556;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0xE500000000000000;
    v9 = 0x726568746FLL;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (v7 == 1)
  {
    v10 = 0xE400000000000000;
    if (v9 != 1667331688)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0xEF656C6369686556;
    if (v9 != 0x6369727463656C65)
    {
      goto LABEL_16;
    }
  }

LABEL_14:
  if (v8 == v10)
  {

    goto LABEL_17;
  }

LABEL_16:
  v11 = sub_25424EAB8();

  if ((v11 & 1) == 0)
  {
LABEL_19:
    DailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0 = 0;
    return DailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0 & 1;
  }

LABEL_17:
  memcpy(__dst, (a1 + DailyDigestEventV5StateVMa[6]), 0x14AuLL);
  memcpy(v14, (a2 + DailyDigestEventV5StateVMa[6]), 0x14AuLL);
  if ((_s13HomeKitEvents06EnergyB0O20LoadDailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0(__dst, v14) & 1) == 0)
  {
    goto LABEL_19;
  }

  memcpy(__dst, (a1 + DailyDigestEventV5StateVMa[7]), 0x14AuLL);
  memcpy(v14, (a2 + DailyDigestEventV5StateVMa[7]), 0x14AuLL);
  DailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0 = _s13HomeKitEvents06EnergyB0O20LoadDailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0(__dst, v14);
  return DailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0 & 1;
}

uint64_t _s13HomeKitEvents06EnergyB0O20LoadDailyDigestEventV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EventBase(0);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_254262248[*(a1 + *(v4 + 24))] != qword_254262248[*(a2 + *(v4 + 24))])
  {
    return 0;
  }

  v5 = type metadata accessor for EnergyKit.EventBase(0);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v5 + 28);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);

  return sub_254229D50(a1 + v16, a2 + v16);
}

uint64_t sub_25422A050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25422A098()
{
  result = qword_27F5BC070;
  if (!qword_27F5BC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC070);
  }

  return result;
}

unint64_t sub_25422A0F0()
{
  result = qword_27F5BC080;
  if (!qword_27F5BC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC080);
  }

  return result;
}

uint64_t sub_25422A144(void *a1)
{
  a1[1] = sub_25422A050(&qword_27F5BA358, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &protocol conformance descriptor for EnergyKit.LoadDailyDigestEvent);
  a1[2] = sub_25422A050(&qword_27F5BA318, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &protocol conformance descriptor for EnergyKit.LoadDailyDigestEvent);
  result = sub_25422A050(&qword_27F5BC088, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &protocol conformance descriptor for EnergyKit.LoadDailyDigestEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25422A238(uint64_t a1)
{
  *(a1 + 8) = sub_25422A050(&qword_27F5BC0A0, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &protocol conformance descriptor for EnergyKit.LoadDailyDigestEvent);
  result = sub_25422A050(&qword_27F5BC0A8, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261D7C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25422A2E4(uint64_t a1)
{
  result = type metadata accessor for EnergyKit.EventBase(319);
  if (v2 <= 0x3F)
  {
    result = _s20LoadDailyDigestEventV5StateVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25422A370(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 330))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 329);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25422A3C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 330) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 330) = 0;
    }

    if (a2)
    {
      *(result + 329) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25422A4A8(uint64_t a1)
{
  result = sub_25424D8B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25422A574()
{
  result = qword_27F5BC0D8;
  if (!qword_27F5BC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC0D8);
  }

  return result;
}

unint64_t sub_25422A5CC()
{
  result = qword_27F5BC0E0;
  if (!qword_27F5BC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC0E0);
  }

  return result;
}

unint64_t sub_25422A624()
{
  result = qword_27F5BC0E8;
  if (!qword_27F5BC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC0E8);
  }

  return result;
}

unint64_t sub_25422A678(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25422A6C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25422A710()
{
  result = qword_27F5BC0F8;
  if (!qword_27F5BC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC0F8);
  }

  return result;
}

unint64_t sub_25422A764()
{
  result = qword_27F5BC100;
  if (!qword_27F5BC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC100);
  }

  return result;
}

unint64_t sub_25422A7B8()
{
  result = qword_27F5BC110;
  if (!qword_27F5BC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC110);
  }

  return result;
}

unint64_t sub_25422A820()
{
  result = qword_27F5BC118;
  if (!qword_27F5BC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC118);
  }

  return result;
}

unint64_t sub_25422A878()
{
  result = qword_27F5BC120;
  if (!qword_27F5BC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC120);
  }

  return result;
}

unint64_t sub_25422A8D0()
{
  result = qword_27F5BC128;
  if (!qword_27F5BC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC128);
  }

  return result;
}

uint64_t HMVCommands.UnpackedEvent.data.getter()
{
  v1 = *(v0 + 8);
  sub_254140660(v1, *(v0 + 16));
  return v1;
}

uint64_t static HMVCommands.dumpLocalDatabase()()
{
  v0[58] = type metadata accessor for FakeEvent(0);
  v0[59] = swift_task_alloc();
  v1 = sub_25424D8B8();
  v0[60] = v1;
  v0[61] = *(v1 - 8);
  v0[62] = swift_task_alloc();
  v0[63] = type metadata accessor for SomeEvent(0);
  v0[64] = swift_task_alloc();
  v0[65] = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  v0[66] = swift_task_alloc();
  v0[67] = swift_task_alloc();
  v0[68] = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  v0[69] = swift_task_alloc();
  v0[70] = swift_task_alloc();
  v0[71] = type metadata accessor for EnergyKit.LoadEvent(0);
  v0[72] = swift_task_alloc();
  v0[73] = swift_task_alloc();
  v0[74] = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  v0[75] = swift_task_alloc();
  v0[76] = swift_task_alloc();
  v0[77] = type metadata accessor for ThermostatAutomationFailureEvent(0);
  v0[78] = swift_task_alloc();
  v0[79] = swift_task_alloc();
  v0[80] = type metadata accessor for ThermostatAutomationEvent(0);
  v0[81] = swift_task_alloc();
  v0[82] = swift_task_alloc();
  v0[83] = type metadata accessor for HomeActivityStateEvent(0);
  v0[84] = swift_task_alloc();
  v0[85] = swift_task_alloc();
  v0[86] = type metadata accessor for WindowEvent(0);
  v0[87] = swift_task_alloc();
  v0[88] = swift_task_alloc();
  v0[89] = type metadata accessor for SmokeDetectorEvent(0);
  v0[90] = swift_task_alloc();
  v0[91] = swift_task_alloc();
  v0[92] = type metadata accessor for SecuritySystemEvent(0);
  v0[93] = swift_task_alloc();
  v0[94] = swift_task_alloc();
  v0[95] = type metadata accessor for GarageDoorEvent(0);
  v0[96] = swift_task_alloc();
  v0[97] = swift_task_alloc();
  v0[98] = type metadata accessor for DoorEvent(0);
  v0[99] = swift_task_alloc();
  v0[100] = swift_task_alloc();
  v0[101] = type metadata accessor for ContactSensorEvent(0);
  v0[102] = swift_task_alloc();
  v0[103] = swift_task_alloc();
  v0[104] = type metadata accessor for LockEvent(0);
  v0[105] = swift_task_alloc();
  v0[106] = swift_task_alloc();
  v0[107] = type metadata accessor for EventRecord.DecodedEvent(0);
  v0[108] = swift_task_alloc();
  v0[109] = swift_task_alloc();
  v0[110] = swift_task_alloc();
  v0[111] = swift_task_alloc();
  v0[112] = swift_task_alloc();
  v0[113] = swift_task_alloc();
  v0[114] = swift_task_alloc();
  v0[115] = swift_task_alloc();
  v0[116] = type metadata accessor for EventRecord(0);
  v0[117] = swift_task_alloc();
  v0[118] = swift_task_alloc();
  v2 = sub_25424D948();
  v0[119] = v2;
  v0[120] = *(v2 - 8);
  v0[121] = swift_task_alloc();
  v0[122] = swift_task_alloc();
  v0[123] = swift_task_alloc();
  v0[124] = swift_task_alloc();
  v0[125] = swift_task_alloc();
  v0[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC130, &qword_254262288);
  v0[127] = swift_task_alloc();
  v0[128] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[129] = v3;
  *v3 = v0;
  v3[1] = sub_25422AFC0;

  return sub_254130824(sub_25422DEA8, 0);
}

uint64_t sub_25422AFC0(uint64_t a1)
{
  v3 = *v2;
  v3[130] = a1;
  v3[131] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25422B3C4, 0, 0);
  }
}

uint64_t sub_25422B3C4()
{
  v186 = (v0 + 264);
  v1 = *(v0 + 1040);
  v2 = *(v0 + 960);
  v189 = *(v0 + 928);
  v3 = *(v0 + 488);
  v209 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC138, &qword_254262290);
  sub_25424DBA8();
  v4 = 0;
  v5 = v1 + 64;
  v6 = -1;
  v197 = v1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 64);
  v9 = (63 - v7) >> 6;
  v208 = (v2 + 16);
  v203 = v2;
  v204 = (v2 + 8);
  v205 = (v2 + 32);
  v187 = (v3 + 8);
  v188 = (v3 + 16);
  v10 = &qword_27F5BC140;
  v199 = v1 + 64;
  v200 = *(v0 + 1048);
  v198 = v9;
  while (1)
  {
    if (!v8)
    {
      if (v9 <= v4 + 1)
      {
        v13 = v4 + 1;
      }

      else
      {
        v13 = v9;
      }

      isUniquelyReferenced_nonNull_native = v13 - 1;
      while (1)
      {
        v12 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v12 >= v9)
        {
          v35 = *(v0 + 1016);
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC140, &qword_254262298);
          (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
          v206 = 0;
          v207 = isUniquelyReferenced_nonNull_native;
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v12);
        ++v4;
        if (v8)
        {
          v207 = v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_106:
      __break(1u);
      v182 = *(v0 + 1000);
      v183 = *(v0 + 952);
      v184 = *(v0 + 944);

      sub_254134D04(v1, v10);
      sub_254134D04(v202, v196);
      sub_25422E740(v184, type metadata accessor for EventRecord);
      (isUniquelyReferenced_nonNull_native)(v182, v183);

      v185 = *(v0 + 8);

      return v185();
    }

    v207 = v4;
    v12 = v4;
LABEL_16:
    v15 = *(v0 + 1016);
    v16 = *(v0 + 1008);
    v17 = *(v0 + 952);
    v206 = (v8 - 1) & v8;
    v18 = __clz(__rbit64(v8)) | (v12 << 6);
    (*(v203 + 16))(v16, *(v197 + 48) + *(v203 + 72) * v18, v17);
    v19 = (*(v197 + 56) + 24 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC140, &qword_254262298);
    v24 = (v15 + *(v23 + 48));
    (*(v203 + 32))(v15, v16, v17);
    *v24 = v20;
    v24[1] = v21;
    v24[2] = v22;
    (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
    sub_254140660(v21, v22);
LABEL_17:
    v25 = *(v0 + 1024);
    sub_25422DF70(*(v0 + 1016), v25);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC140, &qword_254262298);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
    {
      break;
    }

    v27 = (*(v0 + 1024) + *(v26 + 48));
    v29 = *v27;
    v28 = v27[1];
    v30 = v27[2];
    (*v205)(*(v0 + 1000));
    EventRecord.DataType.init(rawValue:)(v29);
    v10 = *v208;
    if (v210 == 15)
    {
LABEL_52:
      *(v0 + 176) = 0;
      *(v0 + 144) = 0u;
      *(v0 + 160) = 0u;
    }

    else
    {
      (v10)(*(v0 + 992), *(v0 + 1000), *(v0 + 952));
      sub_25424D168();
      swift_allocObject();
      sub_254140660(v28, v30);
      sub_25424D158();
      v196 = v210;
      v202 = v28;
      switch(v210)
      {
        case 1u:
          sub_25422E8DC(&qword_27F5BB2C8, type metadata accessor for ContactSensorEvent, &protocol conformance descriptor for ContactSensorEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v51 = *(v0 + 912);
          v52 = *(v0 + 824);

          sub_25422E7A0(v52, v51, type metadata accessor for ContactSensorEvent);
          type metadata accessor for SomeAccessoryEvent(0);
          goto LABEL_49;
        case 2u:
          sub_25422E8DC(&qword_27F5BB2D0, type metadata accessor for DoorEvent, &protocol conformance descriptor for DoorEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v47 = *(v0 + 912);
          v48 = *(v0 + 800);

          sub_25422E7A0(v48, v47, type metadata accessor for DoorEvent);
          type metadata accessor for SomeAccessoryEvent(0);
          goto LABEL_49;
        case 3u:
          sub_25422E8DC(qword_27F5BB2D8, type metadata accessor for GarageDoorEvent, &protocol conformance descriptor for GarageDoorEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v49 = *(v0 + 912);
          v50 = *(v0 + 776);

          sub_25422E7A0(v50, v49, type metadata accessor for GarageDoorEvent);
          type metadata accessor for SomeAccessoryEvent(0);
          goto LABEL_49;
        case 4u:
          sub_25422E8DC(&qword_27F5BA128, type metadata accessor for SecuritySystemEvent, &protocol conformance descriptor for SecuritySystemEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v41 = *(v0 + 912);
          v42 = *(v0 + 752);

          sub_25422E7A0(v42, v41, type metadata accessor for SecuritySystemEvent);
          type metadata accessor for SomeAccessoryEvent(0);
          goto LABEL_49;
        case 5u:
          sub_25422E8DC(&qword_27F5BACE8, type metadata accessor for SmokeDetectorEvent, &protocol conformance descriptor for SmokeDetectorEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v53 = *(v0 + 912);
          v54 = *(v0 + 728);

          sub_25422E7A0(v54, v53, type metadata accessor for SmokeDetectorEvent);
          type metadata accessor for SomeAccessoryEvent(0);
          goto LABEL_49;
        case 6u:
          sub_25422E8DC(&qword_27F5BB1A8, type metadata accessor for WindowEvent, &protocol conformance descriptor for WindowEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v57 = *(v0 + 912);
          v58 = *(v0 + 704);

          sub_25422E7A0(v58, v57, type metadata accessor for WindowEvent);
          type metadata accessor for SomeAccessoryEvent(0);
          goto LABEL_49;
        case 7u:
          sub_25422E8DC(&qword_27F5BA258, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;

          goto LABEL_64;
        case 8u:
          sub_25422E8DC(&qword_27F5B9C78, type metadata accessor for HomeActivityStateEvent, &protocol conformance descriptor for HomeActivityStateEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v86 = *(v0 + 912);
          v87 = *(v0 + 680);

          sub_25422E7A0(v87, v86, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_63;
        case 9u:
          sub_25422E8DC(&qword_27F5B8B48, type metadata accessor for EnergyKit.LoadEvent, &protocol conformance descriptor for EnergyKit.LoadEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v45 = *(v0 + 912);
          v46 = *(v0 + 584);

          sub_25422E7A0(v46, v45, type metadata accessor for EnergyKit.LoadEvent);
          type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
          goto LABEL_49;
        case 0xAu:
          sub_25422E8DC(&qword_27F5BA360, type metadata accessor for EnergyKit.LoadSessionEvent, &protocol conformance descriptor for EnergyKit.LoadSessionEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v59 = *(v0 + 912);
          v60 = *(v0 + 560);

          sub_25422E7A0(v60, v59, type metadata accessor for EnergyKit.LoadSessionEvent);
          type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
          goto LABEL_49;
        case 0xBu:
          sub_25422E8DC(&qword_27F5BA358, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &protocol conformance descriptor for EnergyKit.LoadDailyDigestEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v39 = *(v0 + 912);
          v40 = *(v0 + 536);

          sub_25422E7A0(v40, v39, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
          type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
          goto LABEL_49;
        case 0xCu:
          sub_25422E8DC(&qword_27F5B9830, type metadata accessor for ThermostatAutomationEvent, &protocol conformance descriptor for ThermostatAutomationEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v43 = *(v0 + 912);
          v44 = *(v0 + 656);

          sub_25422E7A0(v44, v43, type metadata accessor for ThermostatAutomationEvent);
          type metadata accessor for SomeAccessoryEvent(0);
          goto LABEL_49;
        case 0xDu:
          sub_25422E8DC(&qword_27F5BA858, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v55 = *(v0 + 912);
          v56 = *(v0 + 608);

          sub_25422E7A0(v56, v55, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          type metadata accessor for SomeAccessoryEvent(0);
          goto LABEL_49;
        case 0xEu:
          sub_25422E8DC(&qword_27F5BAB90, type metadata accessor for ThermostatAutomationFailureEvent, &protocol conformance descriptor for ThermostatAutomationFailureEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
            goto LABEL_51;
          }

          v201 = v10;
          v32 = v30;
          v37 = *(v0 + 912);
          v38 = *(v0 + 632);

          sub_25422E7A0(v38, v37, type metadata accessor for ThermostatAutomationFailureEvent);
          type metadata accessor for SomeAccessoryEvent(0);
          goto LABEL_49;
        default:
          sub_25422E8DC(&qword_27F5B8E98, type metadata accessor for LockEvent, &protocol conformance descriptor for LockEvent);
          v31 = v200;
          sub_25424D138();
          if (v200)
          {
LABEL_51:
            v61 = *(v0 + 992);
            v62 = *(v0 + 952);

            v28 = v202;
            sub_254134D04(v202, v30);
            (*v204)(v61, v62);
            v200 = 0;
            goto LABEL_52;
          }

          v201 = v10;
          v32 = v30;
          v33 = *(v0 + 912);
          v34 = *(v0 + 848);

          sub_25422E7A0(v34, v33, type metadata accessor for LockEvent);
          type metadata accessor for SomeAccessoryEvent(0);
LABEL_49:
          swift_storeEnumTagMultiPayload();
LABEL_63:
          swift_storeEnumTagMultiPayload();
LABEL_64:
          v88 = *(v0 + 992);
          v89 = *(v0 + 984);
          v90 = *(v0 + 952);
          v91 = *(v0 + 920);
          v92 = *(v0 + 912);
          v93 = *(v0 + 904);
          swift_storeEnumTagMultiPayload();
          sub_25422E7A0(v92, v91, type metadata accessor for EventRecord.DecodedEvent);
          (v201)(v89, v88, v90);
          sub_25422E6DC(v91, v93);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v95 = *(v0 + 904);
          if (EnumCaseMultiPayload == 1)
          {
            *(v0 + 208) = *(v0 + 464);
            *(v0 + 216) = sub_25422E8DC(&qword_27F5BA250, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
            sub_25422E7A0(v95, boxed_opaque_existential_1, type metadata accessor for FakeEvent);
          }

          else
          {
            v97 = *(v0 + 512);
            sub_25422E7A0(*(v0 + 904), v97, type metadata accessor for SomeEvent);
            sub_2541DA834((v0 + 424));
            v99 = *(v0 + 448);
            v98 = *(v0 + 456);
            v100 = __swift_project_boxed_opaque_existential_1((v0 + 424), v99);
            *(v0 + 208) = v99;
            *(v0 + 216) = *(v98 + 8);
            v101 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
            (*(*(v99 - 8) + 16))(v101, v100, v99);
            sub_25422E740(v97, type metadata accessor for SomeEvent);
            __swift_destroy_boxed_opaque_existential_1((v0 + 424));
          }

          v102 = *(v0 + 920);
          v103 = *(v0 + 896);
          v104 = *(v0 + 208);
          v105 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 184), v104);
          (*(v105 + 40))(v104, v105);
          sub_25422E6DC(v102, v103);
          v106 = swift_getEnumCaseMultiPayload();
          v107 = *(v0 + 896);
          if (v106 == 1)
          {
            *(v0 + 248) = *(v0 + 464);
            *(v0 + 256) = sub_25422E8DC(&qword_27F5BA250, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
            v108 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
            sub_25422E7A0(v107, v108, type metadata accessor for FakeEvent);
          }

          else
          {
            v109 = *(v0 + 512);
            sub_25422E7A0(*(v0 + 896), v109, type metadata accessor for SomeEvent);
            sub_2541DA834((v0 + 384));
            v111 = *(v0 + 408);
            v110 = *(v0 + 416);
            v112 = __swift_project_boxed_opaque_existential_1((v0 + 384), v111);
            *(v0 + 248) = v111;
            *(v0 + 256) = *(v110 + 8);
            v113 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
            (*(*(v111 - 8) + 16))(v113, v112, v111);
            sub_25422E740(v109, type metadata accessor for SomeEvent);
            __swift_destroy_boxed_opaque_existential_1((v0 + 384));
          }

          v114 = *(v0 + 920);
          v115 = *(v0 + 888);
          v116 = *(v0 + 248);
          v117 = *(v0 + 256);
          __swift_project_boxed_opaque_existential_1((v0 + 224), v116);
          (*(v117 + 32))(v116, v117);
          sub_25422E6DC(v114, v115);
          v118 = swift_getEnumCaseMultiPayload();
          v119 = *(v0 + 888);
          v190 = v29;
          if (v118 == 1)
          {
            v120 = *(v0 + 472);
            sub_25422E7A0(v119, v120, type metadata accessor for FakeEvent);
            v121 = v32;
            sub_254140660(v202, v32);
            v192 = FakeEvent.tags.getter();
            sub_25422E740(v120, type metadata accessor for FakeEvent);
          }

          else
          {
            v122 = *(v0 + 512);
            sub_25422E7A0(v119, v122, type metadata accessor for SomeEvent);
            v121 = v32;
            sub_254140660(v202, v32);
            sub_2541DA834((v0 + 344));
            v123 = *(v0 + 368);
            v124 = *(v0 + 376);
            __swift_project_boxed_opaque_existential_1((v0 + 344), v123);
            v192 = (*(v124 + 48))(v123, v124);
            sub_25422E740(v122, type metadata accessor for SomeEvent);
            __swift_destroy_boxed_opaque_existential_1((v0 + 344));
          }

          v191 = *(v0 + 984);
          v125 = *(v0 + 976);
          v126 = *(v0 + 952);
          v194 = *(v0 + 992);
          v195 = *(v0 + 944);
          v127 = *(v0 + 936);
          v193 = *(v0 + 920);
          v128 = *(v0 + 496);
          v129 = *(v0 + 480);
          (v201)(v127);
          (v201)(v127 + v189[5], v125, v126);
          (*v188)(v127 + v189[6], v128, v129);
          *(v127 + v189[7]) = v210;
          v130 = (v127 + v189[8]);
          *v130 = v202;
          v130[1] = v121;
          *(v127 + v189[9]) = v192;
          type metadata accessor for Configuration();
          v131 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
          v196 = v121;
          sub_254134D04(v202, v121);
          (*v187)(v128, v129);
          v132 = *v204;
          (*v204)(v125, v126);
          v132(v191, v126);
          sub_25422E740(v193, type metadata accessor for EventRecord.DecodedEvent);
          v132(v194, v126);
          *(v127 + v189[10]) = v131;
          __swift_destroy_boxed_opaque_existential_1((v0 + 224));
          __swift_destroy_boxed_opaque_existential_1((v0 + 184));
          sub_25422E7A0(v127, v195, type metadata accessor for EventRecord);
          v133 = *(v195 + v189[7]);
          v134 = (v195 + v189[8]);
          v135 = *v134;
          v136 = v134[1];
          swift_allocObject();
          sub_254140660(v135, v136);
          sub_25424D158();
          switch(v133)
          {
            case 1:
              sub_25422E8DC(&qword_27F5BB2C8, type metadata accessor for ContactSensorEvent, &protocol conformance descriptor for ContactSensorEvent);
              sub_25424D138();
              v30 = v121;
              v153 = *(v0 + 872);
              v154 = *(v0 + 816);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v154, v153, type metadata accessor for ContactSensorEvent);
              type metadata accessor for SomeAccessoryEvent(0);
              goto LABEL_89;
            case 2:
              sub_25422E8DC(&qword_27F5BB2D0, type metadata accessor for DoorEvent, &protocol conformance descriptor for DoorEvent);
              sub_25424D138();
              v30 = v121;
              v149 = *(v0 + 872);
              v150 = *(v0 + 792);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v150, v149, type metadata accessor for DoorEvent);
              type metadata accessor for SomeAccessoryEvent(0);
              goto LABEL_89;
            case 3:
              sub_25422E8DC(qword_27F5BB2D8, type metadata accessor for GarageDoorEvent, &protocol conformance descriptor for GarageDoorEvent);
              sub_25424D138();
              v30 = v121;
              v151 = *(v0 + 872);
              v152 = *(v0 + 768);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v152, v151, type metadata accessor for GarageDoorEvent);
              type metadata accessor for SomeAccessoryEvent(0);
              goto LABEL_89;
            case 4:
              sub_25422E8DC(&qword_27F5BA128, type metadata accessor for SecuritySystemEvent, &protocol conformance descriptor for SecuritySystemEvent);
              sub_25424D138();
              v30 = v121;
              v143 = *(v0 + 872);
              v144 = *(v0 + 744);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v144, v143, type metadata accessor for SecuritySystemEvent);
              type metadata accessor for SomeAccessoryEvent(0);
              goto LABEL_89;
            case 5:
              sub_25422E8DC(&qword_27F5BACE8, type metadata accessor for SmokeDetectorEvent, &protocol conformance descriptor for SmokeDetectorEvent);
              sub_25424D138();
              v30 = v121;
              v155 = *(v0 + 872);
              v156 = *(v0 + 720);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v156, v155, type metadata accessor for SmokeDetectorEvent);
              type metadata accessor for SomeAccessoryEvent(0);
              goto LABEL_89;
            case 6:
              sub_25422E8DC(&qword_27F5BB1A8, type metadata accessor for WindowEvent, &protocol conformance descriptor for WindowEvent);
              sub_25424D138();
              v30 = v121;
              v159 = *(v0 + 872);
              v160 = *(v0 + 696);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v160, v159, type metadata accessor for WindowEvent);
              type metadata accessor for SomeAccessoryEvent(0);
              goto LABEL_89;
            case 7:
              sub_25422E8DC(&qword_27F5BA258, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
              sub_25424D138();
              v30 = v121;
              sub_254134D04(v135, v136);

              goto LABEL_92;
            case 8:
              sub_25422E8DC(&qword_27F5B9C78, type metadata accessor for HomeActivityStateEvent, &protocol conformance descriptor for HomeActivityStateEvent);
              sub_25424D138();
              v30 = v121;
              v163 = *(v0 + 872);
              v164 = *(v0 + 672);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v164, v163, type metadata accessor for HomeActivityStateEvent);
              goto LABEL_91;
            case 9:
              sub_25422E8DC(&qword_27F5B8B48, type metadata accessor for EnergyKit.LoadEvent, &protocol conformance descriptor for EnergyKit.LoadEvent);
              sub_25424D138();
              v30 = v121;
              v147 = *(v0 + 872);
              v148 = *(v0 + 576);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v148, v147, type metadata accessor for EnergyKit.LoadEvent);
              type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
              goto LABEL_89;
            case 10:
              sub_25422E8DC(&qword_27F5BA360, type metadata accessor for EnergyKit.LoadSessionEvent, &protocol conformance descriptor for EnergyKit.LoadSessionEvent);
              sub_25424D138();
              v30 = v121;
              v161 = *(v0 + 872);
              v162 = *(v0 + 552);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v162, v161, type metadata accessor for EnergyKit.LoadSessionEvent);
              type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
              goto LABEL_89;
            case 11:
              sub_25422E8DC(&qword_27F5BA358, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &protocol conformance descriptor for EnergyKit.LoadDailyDigestEvent);
              sub_25424D138();
              v30 = v121;
              v141 = *(v0 + 872);
              v142 = *(v0 + 528);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v142, v141, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
              type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
              goto LABEL_89;
            case 12:
              sub_25422E8DC(&qword_27F5B9830, type metadata accessor for ThermostatAutomationEvent, &protocol conformance descriptor for ThermostatAutomationEvent);
              sub_25424D138();
              v30 = v121;
              v145 = *(v0 + 872);
              v146 = *(v0 + 648);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v146, v145, type metadata accessor for ThermostatAutomationEvent);
              type metadata accessor for SomeAccessoryEvent(0);
              goto LABEL_89;
            case 13:
              sub_25422E8DC(&qword_27F5BA858, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent);
              sub_25424D138();
              v30 = v121;
              v157 = *(v0 + 872);
              v158 = *(v0 + 600);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v158, v157, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
              type metadata accessor for SomeAccessoryEvent(0);
              goto LABEL_89;
            case 14:
              sub_25422E8DC(&qword_27F5BAB90, type metadata accessor for ThermostatAutomationFailureEvent, &protocol conformance descriptor for ThermostatAutomationFailureEvent);
              sub_25424D138();
              v30 = v121;
              v139 = *(v0 + 872);
              v140 = *(v0 + 624);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v140, v139, type metadata accessor for ThermostatAutomationFailureEvent);
              type metadata accessor for SomeAccessoryEvent(0);
              goto LABEL_89;
            default:
              sub_25422E8DC(&qword_27F5B8E98, type metadata accessor for LockEvent, &protocol conformance descriptor for LockEvent);
              sub_25424D138();
              v30 = v121;
              v137 = *(v0 + 872);
              v138 = *(v0 + 840);
              sub_254134D04(v135, v136);

              sub_25422E7A0(v138, v137, type metadata accessor for LockEvent);
              type metadata accessor for SomeAccessoryEvent(0);
LABEL_89:
              swift_storeEnumTagMultiPayload();
LABEL_91:
              swift_storeEnumTagMultiPayload();
LABEL_92:
              v165 = *(v0 + 880);
              v166 = *(v0 + 872);
              v167 = *(v0 + 864);
              swift_storeEnumTagMultiPayload();
              sub_25422E7A0(v166, v165, type metadata accessor for EventRecord.DecodedEvent);
              sub_25422E6DC(v165, v167);
              v168 = swift_getEnumCaseMultiPayload();
              v169 = *(v0 + 944);
              v170 = *(v0 + 880);
              v171 = *(v0 + 864);
              if (v168 == 1)
              {
                *(v0 + 288) = *(v0 + 464);
                *(v0 + 296) = sub_25422E8DC(&qword_27F5BA250, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
                v172 = v0 + 264;
                v173 = __swift_allocate_boxed_opaque_existential_1(v186);
                sub_25422E7A0(v171, v173, type metadata accessor for FakeEvent);
                sub_25422E740(v170, type metadata accessor for EventRecord.DecodedEvent);
                sub_25422E740(v169, type metadata accessor for EventRecord);
              }

              else
              {
                v174 = *(v0 + 512);
                sub_25422E7A0(*(v0 + 864), v174, type metadata accessor for SomeEvent);
                sub_2541DA834((v0 + 304));
                v175 = *(v0 + 328);
                v176 = *(v0 + 336);
                v177 = __swift_project_boxed_opaque_existential_1((v0 + 304), v175);
                *(v0 + 288) = v175;
                *(v0 + 296) = *(v176 + 8);
                v172 = v0 + 264;
                v178 = __swift_allocate_boxed_opaque_existential_1(v186);
                (*(*(v175 - 8) + 16))(v178, v177, v175);
                sub_25422E740(v174, type metadata accessor for SomeEvent);
                sub_25422E740(v170, type metadata accessor for EventRecord.DecodedEvent);
                sub_25422E740(v169, type metadata accessor for EventRecord);
                __swift_destroy_boxed_opaque_existential_1((v0 + 304));
              }

              v10 = v201;
              v28 = v202;
              v200 = 0;
              v179 = *(v172 + 16);
              *(v0 + 144) = *v172;
              *(v0 + 160) = v179;
              *(v0 + 176) = *(v172 + 32);
              v29 = v190;
              break;
          }

          break;
      }
    }

    v1 = *(v0 + 968);
    (v10)(v1, *(v0 + 1000), *(v0 + 952));
    sub_25422DFE0(v0 + 144, v0 + 16);
    *(v0 + 56) = v29;
    *(v0 + 64) = v28;
    *(v0 + 72) = v30;
    v63 = *(v0 + 32);
    *(v0 + 80) = *(v0 + 16);
    *(v0 + 96) = v63;
    v64 = *(v0 + 64);
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 128) = v64;
    sub_254140660(v28, v30);
    v65 = v209;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v210 = v209;
    v66 = sub_2542209D4(v1);
    v68 = v209[2];
    v69 = (v67 & 1) == 0;
    v70 = __OFADD__(v68, v69);
    v71 = v68 + v69;
    if (v70)
    {
      goto LABEL_106;
    }

    v72 = v67;
    if (v209[3] >= v71)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v180 = v66;
        sub_254223518();
        v66 = v180;
        v65 = v209;
      }
    }

    else
    {
      v73 = *(v0 + 968);
      sub_25422222C(v71, isUniquelyReferenced_nonNull_native);
      v65 = v209;
      v66 = sub_2542209D4(v73);
      if ((v72 & 1) != (v74 & 1))
      {

        return sub_25424EB38();
      }
    }

    v75 = *(v0 + 1000);
    v76 = *(v0 + 968);
    v1 = *(v0 + 952);
    if (v72)
    {
      sub_25422E66C(v0 + 80, v65[7] + (v66 << 6));
      sub_254134D04(v28, v30);
      v11 = *v204;
      (*v204)(v76, v1);
      sub_25422E604(v0 + 144);
      v11(v75, v1);
    }

    else
    {
      v65[(v66 >> 6) + 8] |= 1 << v66;
      v77 = v66;
      (v10)(v65[6] + *(v203 + 72) * v66, v76, v1);
      v78 = (v65[7] + (v77 << 6));
      v80 = *(v0 + 112);
      v79 = *(v0 + 128);
      v81 = *(v0 + 96);
      *v78 = *(v0 + 80);
      v78[1] = v81;
      v78[2] = v80;
      v78[3] = v79;
      sub_254134D04(v28, v30);
      v82 = *(v203 + 8);
      v82(v76, v1);
      sub_25422E604(v0 + 144);
      result = (v82)(v75, v1);
      v84 = v65[2];
      v70 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v70)
      {
        __break(1u);
        return result;
      }

      v65[2] = v85;
    }

    v209 = v65;
    v9 = v198;
    v5 = v199;
    v8 = v206;
    v4 = v207;
    v10 = &qword_27F5BC140;
  }

  v181 = *(v0 + 8);

  return v181(v209);
}

void sub_25422DEA8(void *a1, uint64_t a2)
{
  v4[4] = sub_25422E8BC;
  v4[5] = a2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_25422E518;
  v4[3] = &block_descriptor_21;
  v3 = _Block_copy(v4);

  [a1 hmvutilDumpLocalDatabaseWithReply_];
  _Block_release(v3);
}

uint64_t sub_25422DF70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC130, &qword_254262288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25422DFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC148, &qword_2542622A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25422E050(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  result = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - v12;
  if (a2)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a3;
    v16[5] = sub_25422E980;
    v16[6] = v14;
    v17 = a2;

    v18 = &unk_254262358;
    v19 = v13;
    v20 = v16;
LABEL_19:
    sub_25419CC1C(0, 0, v19, v18, v20);
  }

  else
  {
    v46 = &v46 - v12;
    v47 = a3;
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC158, &qword_254262350);
      result = sub_25424E878();
      v21 = 0;
      v22 = *(a1 + 64);
      v48 = a1 + 64;
      v49 = v7;
      v23 = 1 << *(a1 + 32);
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v25 = v24 & v22;
      v26 = (v23 + 63) >> 6;
      v54 = v9;
      v55 = result;
      v51 = result + 64;
      v52 = v7 + 16;
      v50 = (v7 + 32);
      if ((v24 & v22) != 0)
      {
        while (1)
        {
          v27 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
LABEL_13:
          v30 = v27 | (v21 << 6);
          v31 = *(v7 + 72) * v30;
          v32 = v6;
          result = (*(v7 + 16))(v54, *(a1 + 48) + v31, v6);
          v33 = *(*(a1 + 56) + 8 * v30);
          v34 = *(v33 + 16);
          if (!v34)
          {
            break;
          }

          sub_25414076C(v33 + 32, v60);

          result = swift_dynamicCast();
          if (v34 == 1)
          {
            goto LABEL_22;
          }

          v53 = v59;
          sub_25414076C(v33 + 64, v58);

          swift_dynamicCast();
          v35 = v55;
          v36 = v56;
          v37 = v57;
          *(v51 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
          result = (*v50)(v35[6] + v31, v54, v32);
          v38 = (v35[7] + 24 * v30);
          *v38 = v53;
          v38[1] = v36;
          v38[2] = v37;
          v39 = v35[2];
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_23;
          }

          *(v55 + 16) = v41;
          v6 = v32;
          v7 = v49;
          if (!v25)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v28 = v21;
        while (1)
        {
          v21 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v21 >= v26)
          {
            v42 = swift_allocObject();
            *(v42 + 16) = v55;
            v43 = sub_25424E128();
            v44 = v46;
            (*(*(v43 - 8) + 56))(v46, 1, 1, v43);
            v45 = swift_allocObject();
            v45[2] = 0;
            v45[3] = 0;
            v45[4] = v47;
            v45[5] = sub_25422E978;
            v45[6] = v42;

            v18 = &unk_254252D00;
            v19 = v44;
            v20 = v45;
            goto LABEL_19;
          }

          v29 = *(v48 + 8 * v21);
          ++v28;
          if (v29)
          {
            v27 = __clz(__rbit64(v29));
            v25 = (v29 - 1) & v29;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25422E518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_25424D948();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC150, &qword_254262348);
    sub_25422E8DC(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v4 = sub_25424DB78();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_25422E604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC148, &qword_2542622A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25422E66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC010, &qword_254261BB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25422E6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventRecord.DecodedEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25422E740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25422E7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25422E808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25422E85C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25422E8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25422E924(uint64_t a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8828, &qword_254252CE8);
  return sub_25424E088();
}

void EncryptionKeyRecord.init(from:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25424D8B8();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_25424D948();
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25424E558() == 0x6974707972636E45 && v13 == 0xED000079654B6E6FLL)
  {
  }

  else
  {
    v14 = sub_25424EAB8();

    if ((v14 & 1) == 0)
    {
      v26 = type metadata accessor for EncryptionKeyRecord(0);
      *&v53[0] = 0;
      *(&v53[0] + 1) = 0xE000000000000000;
      sub_25424E688();

      *&v53[0] = 0xD00000000000001FLL;
      *(&v53[0] + 1) = 0x8000000254250D10;
      v32 = sub_25424E558();
      MEMORY[0x259C05CA0](v32);

      v25 = *(&v53[0] + 1);
      v24 = *&v53[0];
      goto LABEL_10;
    }
  }

  v46 = a2;
  v49 = v12;
  v15 = [a1 recordID];
  v16 = [v15 recordName];

  sub_25424DCB8();
  sub_25424D8C8();

  v17 = v54;
  if ((*(v54 + 48))(v9, 1, v10) == 1)
  {
    sub_254132E5C(v9, &unk_27F5B8E50, &qword_254254390);
    v18 = type metadata accessor for EncryptionKeyRecord(0);
    *&v53[0] = 0;
    *(&v53[0] + 1) = 0xE000000000000000;
    sub_25424E688();

    *&v53[0] = 0xD00000000000002FLL;
    *(&v53[0] + 1) = 0x8000000254250D30;
    v19 = [a1 recordID];
    v20 = [v19 recordName];

    v21 = sub_25424DCB8();
    v23 = v22;

    MEMORY[0x259C05CA0](v21, v23);

    v25 = *(&v53[0] + 1);
    v24 = *&v53[0];
    v26 = v18 | 0x8000000000000000;
LABEL_10:
    sub_2541BB760();
    swift_allocError();
    *v33 = v26;
    v33[1] = v24;
    v33[2] = v25;
    swift_willThrow();

    return;
  }

  v27 = *(v17 + 32);
  v28 = v49;
  v27(v49, v9, v10);
  v29 = [a1 encryptedValues];
  v30 = v50;
  v31 = sub_25422F160(1, v29);
  if (v30)
  {
    swift_unknownObjectRelease();

    (*(v17 + 8))(v28, v10);
  }

  else if (v31 == 1)
  {
    swift_unknownObjectRetain();
    sub_25422F3D0(0, v29, v53);
    swift_unknownObjectRelease();
    v39 = v53[0];
    sub_25423106C(*&v53[0], *(&v53[0] + 1), &v51);
    if (v52)
    {
      sub_25412DC4C(&v51, v53);
      swift_unknownObjectRetain();
      sub_25422F668(2, v29, v6);
      sub_254134D04(v39, *(&v39 + 1));
      swift_unknownObjectRelease_n();

      v43 = v46;
      v27(v46, v49, v10);
      v44 = type metadata accessor for EncryptionKeyRecord(0);
      sub_25412DC4C(v53, &v43[*(v44 + 20)]);
      (*(v47 + 32))(&v43[*(v44 + 24)], v6, v48);
    }

    else
    {
      sub_254132E5C(&v51, &qword_27F5BC160, &qword_254262368);
      v40 = type metadata accessor for EncryptionKeyRecord(0);
      *&v53[0] = 0;
      *(&v53[0] + 1) = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0x666F2065756C6156, 0xE900000000000020);
      LOBYTE(v51) = 0;
      sub_25424E7D8();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251B70);
      v41 = v53[0];
      sub_2541BB760();
      swift_allocError();
      *v42 = v40 | 0x8000000000000000;
      *(v42 + 8) = v41;
      swift_willThrow();
      sub_254134D04(v39, *(&v39 + 1));
      swift_unknownObjectRelease();

      (*(v54 + 8))(v49, v10);
    }
  }

  else
  {
    v34 = v31;
    v35 = type metadata accessor for EncryptionKeyRecord(0);
    *&v53[0] = 0;
    *(&v53[0] + 1) = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0x6E6F2065756C6156, 0xEF20646C65696620);
    LOBYTE(v51) = 1;
    sub_25424E7D8();
    MEMORY[0x259C05CA0](0x6E6B6E7520736920, 0xED0000203A6E776FLL);
    *&v51 = v34;
    v36 = sub_25424EA58();
    MEMORY[0x259C05CA0](v36);

    v37 = v53[0];
    sub_2541BB760();
    swift_allocError();
    *v38 = v35 | 0x2000000000000000;
    *(v38 + 8) = v37;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v54 + 8))(v28, v10);
  }
}

uint64_t sub_25422F160(char a1, void *a2)
{
  v3 = a1;
  v4 = sub_25424DCA8();

  v5 = [a2 objectForKeyedSubscript_];

  if (v5)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v13;
    }

    else
    {
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v10 = *&aData_5[8 * v3];
      v11 = type metadata accessor for EncryptionKeyRecord(0);
      MEMORY[0x259C05CA0](v10, 0xE400000000000000);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v12 = v11 | 0x6000000000000000;
      v12[1] = 0;
      v12[2] = 0xE000000000000000;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    v7 = *&aData_5[8 * v3];
    v8 = type metadata accessor for EncryptionKeyRecord(0);
    MEMORY[0x259C05CA0](v7, 0xE400000000000000);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v9 = v8 | 0x4000000000000000;
    v9[1] = 0xD000000000000014;
    v9[2] = 0x8000000254251B90;
    return swift_willThrow();
  }
}

uint64_t sub_25422F3D0@<X0>(char a1@<W0>, void *a2@<X1>, __int128 *a3@<X8>)
{
  v5 = a1;
  v6 = sub_25424DCA8();

  v7 = [a2 objectForKeyedSubscript_];

  if (v7)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      result = swift_unknownObjectRelease();
      *a3 = v15;
    }

    else
    {
      sub_254134CF0(0, 0xF000000000000000);
      *&v17 = 0;
      *(&v17 + 1) = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v12 = *&aData_5[8 * v5];
      v13 = type metadata accessor for EncryptionKeyRecord(0);
      MEMORY[0x259C05CA0](v12, 0xE400000000000000);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v14 = v13 | 0x6000000000000000;
      *(v14 + 8) = v17;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    *&v16 = 0xD000000000000014;
    *(&v16 + 1) = 0x8000000254251B90;
    v9 = *&aData_5[8 * v5];
    v10 = type metadata accessor for EncryptionKeyRecord(0);
    MEMORY[0x259C05CA0](v9, 0xE400000000000000);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v11 = v10 | 0x4000000000000000;
    *(v11 + 8) = v16;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25422F668@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  v9 = a1;
  v10 = sub_25424DCA8();

  v11 = [a2 objectForKeyedSubscript_];

  if (v11)
  {
    v26 = v11;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    v12 = sub_25424D8B8();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v8, 0, 1, v12);
      return (*(v13 + 32))(a3, v8, v12);
    }

    else
    {
      (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
      sub_254132E5C(v8, &unk_27F5BA1B0, qword_2542544A0);
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v20 = *&aData_5[8 * v9];
      v21 = type metadata accessor for EncryptionKeyRecord(0);
      MEMORY[0x259C05CA0](v20, 0xE400000000000000);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      v25[1] = v11;
      sub_25424EA98();
      v22 = v26;
      v23 = v27;
      sub_2541BB760();
      swift_allocError();
      *v24 = v21 | 0x6000000000000000;
      v24[1] = v22;
      v24[2] = v23;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_25424E688();

    v26 = 0xD000000000000014;
    v27 = 0x8000000254251B90;
    v15 = *&aData_5[8 * v9];
    v16 = type metadata accessor for EncryptionKeyRecord(0);
    MEMORY[0x259C05CA0](v15, 0xE400000000000000);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    v17 = v26;
    v18 = v27;
    sub_2541BB760();
    swift_allocError();
    *v19 = v16 | 0x4000000000000000;
    v19[1] = v17;
    v19[2] = v18;
    return swift_willThrow();
  }
}

uint64_t sub_25422F9F4(char a1, void *a2)
{
  v3 = a1;
  v4 = sub_25424DCA8();

  v5 = [a2 objectForKeyedSubscript_];

  if (v5)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v13;
    }

    else
    {
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v10 = *&aData_6[8 * v3];
      v11 = type metadata accessor for EventRecord(0);
      MEMORY[0x259C05CA0](v10, 0xE400000000000000);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v12 = v11 | 0x6000000000000000;
      v12[1] = 0;
      v12[2] = 0xE000000000000000;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    v7 = *&aData_6[8 * v3];
    v8 = type metadata accessor for EventRecord(0);
    MEMORY[0x259C05CA0](v7, 0xE400000000000000);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v9 = v8 | 0x4000000000000000;
    v9[1] = 0xD000000000000014;
    v9[2] = 0x8000000254251B90;
    return swift_willThrow();
  }
}

uint64_t sub_25422FC64@<X0>(char a1@<W0>, void *a2@<X1>, __int128 *a3@<X8>)
{
  v5 = a1;
  v6 = sub_25424DCA8();

  v7 = [a2 objectForKeyedSubscript_];

  if (v7)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      result = swift_unknownObjectRelease();
      *a3 = v15;
    }

    else
    {
      sub_254134CF0(0, 0xF000000000000000);
      *&v17 = 0;
      *(&v17 + 1) = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v12 = *&aData_6[8 * v5];
      v13 = type metadata accessor for EventRecord(0);
      MEMORY[0x259C05CA0](v12, 0xE400000000000000);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v14 = v13 | 0x6000000000000000;
      *(v14 + 8) = v17;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    *&v16 = 0xD000000000000014;
    *(&v16 + 1) = 0x8000000254251B90;
    v9 = *&aData_6[8 * v5];
    v10 = type metadata accessor for EventRecord(0);
    MEMORY[0x259C05CA0](v9, 0xE400000000000000);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v11 = v10 | 0x4000000000000000;
    *(v11 + 8) = v16;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25422FEFC(unsigned __int8 a1, void *a2)
{
  v4 = sub_25424DCA8();

  v5 = [a2 objectForKeyedSubscript_];

  if (v5)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v30;
    }

    else
    {
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v19 = 0xE600000000000000;
      v20 = 0xE500000000000000;
      v21 = 0x7472617473;
      v22 = 0xE300000000000000;
      v23 = 6581861;
      if (a1 != 4)
      {
        v23 = 1936154996;
        v22 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v21 = v23;
        v20 = v22;
      }

      v24 = 0xE800000000000000;
      v25 = 0x617461646174656DLL;
      if (a1 != 1)
      {
        v25 = 1701869940;
        v24 = 0xE400000000000000;
      }

      if (a1)
      {
        v19 = v24;
      }

      else
      {
        v25 = 0x73746E657665;
      }

      if (a1 <= 2u)
      {
        v26 = v25;
      }

      else
      {
        v26 = v21;
      }

      if (a1 <= 2u)
      {
        v27 = v19;
      }

      else
      {
        v27 = v20;
      }

      v28 = type metadata accessor for DigestRecord(0);
      MEMORY[0x259C05CA0](v26, v27);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v29 = v28 | 0x6000000000000000;
      v29[1] = 0;
      v29[2] = 0xE000000000000000;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    v7 = a1;
    v8 = 0xE600000000000000;
    v9 = 0xE500000000000000;
    v10 = 0x7472617473;
    v11 = 0xE300000000000000;
    v12 = 6581861;
    if (a1 != 4)
    {
      v12 = 1936154996;
      v11 = 0xE400000000000000;
    }

    if (a1 != 3)
    {
      v10 = v12;
      v9 = v11;
    }

    v13 = 0xE800000000000000;
    v14 = 0x617461646174656DLL;
    if (a1 != 1)
    {
      v14 = 1701869940;
      v13 = 0xE400000000000000;
    }

    if (a1)
    {
      v8 = v13;
    }

    else
    {
      v14 = 0x73746E657665;
    }

    if (a1 <= 2u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v10;
    }

    if (v7 <= 2)
    {
      v16 = v8;
    }

    else
    {
      v16 = v9;
    }

    v17 = type metadata accessor for DigestRecord(0);
    MEMORY[0x259C05CA0](v15, v16);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v18 = v17 | 0x4000000000000000;
    v18[1] = 0xD000000000000014;
    v18[2] = 0x8000000254251B90;
    return swift_willThrow();
  }
}

uint64_t sub_254230304@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, __int128 *a3@<X8>)
{
  v6 = sub_25424DCA8();

  v7 = [a2 objectForKeyedSubscript_];

  if (v7)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      result = swift_unknownObjectRelease();
      *a3 = v32;
    }

    else
    {
      sub_254134CF0(0, 0xF000000000000000);
      *&v34 = 0;
      *(&v34 + 1) = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v21 = 0xE600000000000000;
      v22 = 0xE500000000000000;
      v23 = 0x7472617473;
      v24 = 0xE300000000000000;
      v25 = 6581861;
      if (a1 != 4)
      {
        v25 = 1936154996;
        v24 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v23 = v25;
        v22 = v24;
      }

      v26 = 0xE800000000000000;
      v27 = 0x617461646174656DLL;
      if (a1 != 1)
      {
        v27 = 1701869940;
        v26 = 0xE400000000000000;
      }

      if (a1)
      {
        v21 = v26;
      }

      else
      {
        v27 = 0x73746E657665;
      }

      if (a1 <= 2u)
      {
        v28 = v27;
      }

      else
      {
        v28 = v23;
      }

      if (a1 <= 2u)
      {
        v29 = v21;
      }

      else
      {
        v29 = v22;
      }

      v30 = type metadata accessor for DigestRecord(0);
      MEMORY[0x259C05CA0](v28, v29);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v31 = v30 | 0x6000000000000000;
      *(v31 + 8) = v34;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    *&v33 = 0xD000000000000014;
    *(&v33 + 1) = 0x8000000254251B90;
    v9 = a1;
    v10 = 0xE600000000000000;
    v11 = 0xE500000000000000;
    v12 = 0x7472617473;
    v13 = 0xE300000000000000;
    v14 = 6581861;
    if (a1 != 4)
    {
      v14 = 1936154996;
      v13 = 0xE400000000000000;
    }

    if (a1 != 3)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0xE800000000000000;
    v16 = 0x617461646174656DLL;
    if (a1 != 1)
    {
      v16 = 1701869940;
      v15 = 0xE400000000000000;
    }

    if (a1)
    {
      v10 = v15;
    }

    else
    {
      v16 = 0x73746E657665;
    }

    if (a1 <= 2u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    if (v9 <= 2)
    {
      v18 = v10;
    }

    else
    {
      v18 = v11;
    }

    v19 = type metadata accessor for DigestRecord(0);
    MEMORY[0x259C05CA0](v17, v18);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v20 = v19 | 0x4000000000000000;
    *(v20 + 8) = v33;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25423072C(unsigned __int8 a1, void *a2)
{
  v4 = sub_25424DCA8();

  v5 = [a2 objectForKeyedSubscript_];

  if (v5)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v7 = 0xE600000000000000;
      v8 = 0xE500000000000000;
      v9 = 0x7472617473;
      v10 = 0xE300000000000000;
      v11 = 6581861;
      if (a1 != 4)
      {
        v11 = 1936154996;
        v10 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v9 = v11;
        v8 = v10;
      }

      v12 = 0xE800000000000000;
      v13 = 0x617461646174656DLL;
      if (a1 != 1)
      {
        v13 = 1701869940;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v7 = v12;
      }

      else
      {
        v13 = 0x73746E657665;
      }

      if (a1 <= 2u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v9;
      }

      if (a1 <= 2u)
      {
        v15 = v7;
      }

      else
      {
        v15 = v8;
      }

      v16 = type metadata accessor for DigestRecord(0);
      MEMORY[0x259C05CA0](v14, v15);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v17 = v16 | 0x6000000000000000;
      v17[1] = 0;
      v17[2] = 0xE000000000000000;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    v18 = a1;
    v19 = 0xE600000000000000;
    v20 = 0xE500000000000000;
    v21 = 0x7472617473;
    v22 = 0xE300000000000000;
    v23 = 6581861;
    if (a1 != 4)
    {
      v23 = 1936154996;
      v22 = 0xE400000000000000;
    }

    if (a1 != 3)
    {
      v21 = v23;
      v20 = v22;
    }

    v24 = 0xE800000000000000;
    v25 = 0x617461646174656DLL;
    if (a1 != 1)
    {
      v25 = 1701869940;
      v24 = 0xE400000000000000;
    }

    if (a1)
    {
      v19 = v24;
    }

    else
    {
      v25 = 0x73746E657665;
    }

    if (a1 <= 2u)
    {
      v26 = v25;
    }

    else
    {
      v26 = v21;
    }

    if (v18 <= 2)
    {
      v27 = v19;
    }

    else
    {
      v27 = v20;
    }

    v28 = type metadata accessor for DigestRecord(0);
    MEMORY[0x259C05CA0](v26, v27);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v29 = v28 | 0x4000000000000000;
    v29[1] = 0xD000000000000014;
    v29[2] = 0x8000000254251B90;
    return swift_willThrow();
  }

  return result;
}

uint64_t type metadata accessor for EncryptionKeyRecord(uint64_t a1)
{
  result = qword_27F5BC178;
  if (!qword_27F5BC178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254230B64()
{
  sub_25424EBD8();
  MEMORY[0x259C06AD0](1);
  return sub_25424EC28();
}

uint64_t sub_254230BD0(uint64_t a1)
{
  sub_25424EBD8();
  MEMORY[0x259C06AD0](1);
  return sub_25424EC28();
}

uint64_t EncryptionKeyRecord.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EncryptionKeyRecord.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EncryptionKeyRecord(0) + 20);

  return sub_254140708(v3, a1);
}

uint64_t EncryptionKeyRecord.effectiveDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EncryptionKeyRecord(0) + 24);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EncryptionKeyRecord.init(identifier:key:effectiveDate:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25424D948();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for EncryptionKeyRecord(0);
  sub_25412DC4C(a2, a4 + *(v9 + 20));
  v10 = *(v9 + 24);
  v11 = sub_25424D8B8();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t EncryptionKeyRecord.keyType.getter()
{
  v1 = type metadata accessor for EncryptionKeyRecord(0);
  sub_254140708(v0 + *(v1 + 20), v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  v3 = v5[4];
  __swift_destroy_boxed_opaque_existential_1(v5);
  return (*(v3 + 32))(DynamicType, v3);
}

uint64_t sub_254230EC4(char *a1, char *a2)
{
  if (*&aData_5[8 * *a1] == *&aData_5[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25424EAB8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_254230F2C()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254230F88(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_254230FC8(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

unint64_t sub_254231020@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25423166C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25423106C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LubyRackoffEncryptionKey(0);
  result = MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

  v11 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_27F5B8418 != -1)
  {
    result = swift_once();
  }

  if (v11 == qword_27F5BC830)
  {
    sub_254140660(a1, a2);
    LubyRackoffEncryptionKey.init(data:)(a1, a2);
    *(a3 + 24) = v6;
    *(a3 + 32) = sub_2541FA580();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_2541DF3BC(v9, boxed_opaque_existential_1);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

CKRecord __swiftcall EncryptionKeyRecord.toCKRecord(zoneID:)(CKRecordZoneID zoneID)
{
  v2 = v1;
  sub_254148D7C(0, &qword_27F5BA418, 0x277CBC5D0);
  sub_25424D8D8();
  v4 = zoneID.super.isa;
  v5 = sub_25424E3C8();
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  v6 = v5;
  v7 = sub_25424E548();
  [v7 encryptedValues];
  swift_getObjectType();
  v8 = type metadata accessor for EncryptionKeyRecord(0);
  v9 = (v2 + *(v8 + 20));
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v17 = MEMORY[0x277CC9318];
  v18 = MEMORY[0x277CBBBE0];
  sub_25424D308();
  sub_25424E528();
  sub_254140708(v9, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  DynamicType = swift_getDynamicType();
  v11 = v18;
  __swift_destroy_boxed_opaque_existential_1(v16);
  (*(v11 + 32))(DynamicType, v11);
  v17 = MEMORY[0x277D84A28];
  v18 = MEMORY[0x277CBBEF0];
  v16[0] = 1;
  sub_25424E528();
  v12 = *(v8 + 24);
  v13 = sub_25424D8B8();
  v17 = v13;
  v18 = MEMORY[0x277CBBBE8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v2 + v12, v13);
  sub_25424E528();

  swift_unknownObjectRelease();
  return v7;
}

unint64_t sub_254231478()
{
  result = qword_27F5BC168;
  if (!qword_27F5BC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC168);
  }

  return result;
}

uint64_t sub_2542314F4(uint64_t a1)
{
  result = sub_25424D948();
  if (v2 <= 0x3F)
  {
    result = sub_254231590();
    if (v3 <= 0x3F)
    {
      result = sub_25424D8B8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_254231590()
{
  result = qword_27F5BC188;
  if (!qword_27F5BC188)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F5BC188);
  }

  return result;
}

unint64_t sub_254231618()
{
  result = qword_27F5BC190;
  if (!qword_27F5BC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC190);
  }

  return result;
}

unint64_t sub_25423166C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_254231700(uint64_t a1)
{
  sub_25424D8B8();
  if (v1 <= 0x3F)
  {
    sub_25424D948();
    if (v2 <= 0x3F)
    {
      sub_2542317B8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2542317B8(uint64_t a1)
{
  if (!qword_27F5B9068)
  {
    sub_25424D948();
    v1 = sub_25424E598();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5B9068);
    }
  }
}

uint64_t sub_254231878(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBase(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254231924@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v54 - v4;
  v5 = sub_25424E848();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryEventBase(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC208, &qword_254262788);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessoryEventBaseLegacy(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v67);
  v21 = v68;
  sub_254233D5C(v67, v13);
  if (v21)
  {

    (*(v15 + 56))(v13, 1, 1, v14);
    sub_254132E5C(v13, &qword_27F5BC208, &qword_254262788);
    sub_254140708(a1, v67);
    sub_254232240(v67, v10);
    v68 = 0;
    sub_254234794(v10, v20, type metadata accessor for AccessoryEventBase);
LABEL_17:
    sub_254234794(v20, v62, type metadata accessor for AccessoryEventBaseLegacy);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v68 = 0;
  v59 = v8;
  (*(v15 + 56))(v13, 0, 1, v14);
  sub_254234794(v13, v17, type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_25424EC58();
  v23 = v63;
  sub_25424E838();
  v24 = v60;
  v25 = v23;
  v26 = v61;
  result = (*(v60 + 48))(v25, 1, v61);
  if (result != 1)
  {
    (*(v24 + 32))(v7, v63, v26);
    v28 = *(v22 + 16);
    v57 = v14;
    v58 = a1;
    if (v28 && (v29 = sub_2542208F8(v7), (v30 & 1) != 0))
    {
      sub_25414076C(*(v22 + 56) + 32 * v29, v67);
      (*(v24 + 8))(v7, v26);

      v31 = swift_dynamicCast();
      v32 = v64[0];
      if (!v31)
      {
        v32 = 15;
      }

      v61 = v32;
      if (v31)
      {
        v33 = v65;
      }

      else
      {
        v33 = 0;
      }

      v63 = v33;
      if (v31)
      {
        v34 = v66;
      }

      else
      {
        v34 = 0;
      }

      v60 = v34;
    }

    else
    {

      (*(v24 + 8))(v7, v26);
      v63 = 0;
      v60 = 0;
      v61 = 15;
    }

    v35 = sub_25424D8B8();
    (*(*(v35 - 8) + 16))(v20, v17, v35);
    v36 = type metadata accessor for EventBaseLegacy(0);
    v37 = *(v36 + 20);
    v38 = type metadata accessor for EventBase(0);
    v39 = v38[5];
    v40 = sub_25424D948();
    v41 = *(*(v40 - 8) + 16);
    v41(&v20[v39], &v17[v37], v40);
    v56 = v17[*(v36 + 24)];
    v42 = v57;
    v43 = v59;
    v41(&v20[v59[5]], &v17[v57[5]], v40);
    v44 = v42[7];
    v45 = &v17[v42[6]];
    v46 = *(v45 + 1);
    v55 = *v45;
    v41(&v20[v43[7]], &v17[v44], v40);
    v47 = &v17[v42[8]];
    v49 = *v47;
    v48 = *(v47 + 1);
    sub_254149770(&v17[v42[9]], &v20[v43[9]]);

    sub_2542346E0(v17, type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout);
    v20[v38[6]] = v56;
    v50 = &v20[v38[7]];
    v51 = v63;
    *v50 = v61;
    v50[1] = v51;
    v50[2] = v60;
    v52 = &v20[v43[6]];
    *v52 = v55;
    *(v52 + 1) = v46;
    v53 = &v20[v43[8]];
    *v53 = v49;
    *(v53 + 1) = v48;
    a1 = v58;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_254231F94(void *a1)
{
  v28 = a1;
  v2 = type metadata accessor for AccessoryEventBase(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254234678(v1, v5, type metadata accessor for AccessoryEventBase);
  v10 = sub_25424D8B8();
  (*(*(v10 - 8) + 16))(v9, v5, v10);
  v11 = type metadata accessor for EventBase(0);
  v27 = *(v11 + 20);
  v12 = type metadata accessor for EventBaseLegacy(0);
  v26 = v12[5];
  v13 = sub_25424D948();
  v14 = *(*(v13 - 8) + 16);
  v14(&v9[v26], &v5[v27], v13);
  v9[v12[6]] = v5[*(v11 + 24)];
  v15 = &v9[v12[7]];
  *v15 = 15;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  v14(&v9[v7[7]], &v5[v3[7]], v13);
  v16 = &v5[v3[8]];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = &v9[v7[8]];
  *v19 = v17;
  *(v19 + 1) = v18;
  v14(&v9[v7[9]], &v5[v3[9]], v13);
  v20 = &v5[v3[10]];
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = &v9[v7[10]];
  *v23 = v21;
  *(v23 + 1) = v22;
  sub_254149770(&v5[v3[11]], &v9[v7[11]]);

  sub_2542346E0(v5, type metadata accessor for AccessoryEventBase);
  sub_254233A88(v28);
  return sub_2542346E0(v9, type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout);
}

uint64_t sub_254232240@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44[-v6];
  v8 = sub_25424E848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_254140708(a1, v54);
  sub_254232CDC(v54, v14);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = 0;
  v50 = a2;
  v16 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = sub_25424EC58();
  sub_25424E838();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (*(v17 + 16) && (v18 = sub_2542208F8(v11), (v19 & 1) != 0))
    {
      sub_25414076C(*(v17 + 56) + 32 * v18, v54);
      (*(v9 + 8))(v11, v8);

      v20 = swift_dynamicCast();
      v21 = v51[0];
      if (!v20)
      {
        v21 = 15;
      }

      v47 = v21;
      if (v20)
      {
        v22 = v52;
      }

      else
      {
        v22 = 0;
      }

      v48 = v22;
      if (v20)
      {
        v23 = v53;
      }

      else
      {
        v23 = 0;
      }

      v46 = v23;
    }

    else
    {

      (*(v9 + 8))(v11, v8);
      v46 = 0;
      v47 = 15;
      v48 = 0;
    }

    v24 = v50;
    v25 = sub_25424D8B8();
    (*(*(v25 - 8) + 16))(v24, v14, v25);
    v26 = v12[5];
    v50 = type metadata accessor for EventBase(0);
    v27 = *(v50 + 20);
    v28 = sub_25424D948();
    v29 = *(*(v28 - 8) + 16);
    v29(v24 + v27, &v14[v26], v28);
    v30 = v12[7];
    v45 = v14[v12[6]];
    v31 = type metadata accessor for AccessoryEventBase(0);
    v29(v24 + v31[5], &v14[v30], v28);
    v32 = &v14[v12[8]];
    v33 = *v32;
    v34 = v32[1];
    v29(v24 + v31[7], &v14[v12[9]], v28);
    v35 = v12[11];
    v36 = &v14[v12[10]];
    v38 = *v36;
    v37 = v36[1];
    sub_254149770(&v14[v35], v24 + v31[9]);

    sub_2542346E0(v14, type metadata accessor for AccessoryEventBase.DocumentLayout);
    v39 = v50;
    *(v24 + *(v50 + 24)) = v45;
    v40 = (v24 + *(v39 + 28));
    v41 = v48;
    *v40 = v47;
    v40[1] = v41;
    v40[2] = v46;
    v42 = (v24 + v31[6]);
    *v42 = v33;
    v42[1] = v34;
    v43 = (v24 + v31[8]);
    *v43 = v38;
    v43[1] = v37;
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  return result;
}

uint64_t sub_2542326B4(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_25424D8B8();
  sub_2542335F8(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v9 = type metadata accessor for EventBase(0);
  sub_2542335F8(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254262A98[*(v1 + *(v9 + 24))]);
  v10 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v10 + 36), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_25424EBF8();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_25424EBF8();
  sub_25424DC28();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25423298C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC1E8, &unk_254262770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254234604();
  sub_25424EC78();
  v11[31] = 0;
  sub_25424D8B8();
  sub_2542335F8(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25424EA18();
  if (!v2)
  {
    v9 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
    v11[30] = 1;
    sub_25424D948();
    sub_2542335F8(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_25424EA18();
    v11[29] = *(v3 + *(v9 + 24));
    v11[28] = 2;
    sub_2541406B4();
    sub_25424EA18();
    v11[27] = 3;
    sub_25424EA18();
    v11[26] = 4;
    sub_25424E9D8();
    v11[25] = 5;
    sub_25424EA18();
    v11[24] = 6;
    sub_25424E9D8();
    v11[15] = 7;
    sub_25424E9C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_254232CDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = v36 - v4;
  v44 = sub_25424D948();
  v46 = *(v44 - 8);
  v5 = MEMORY[0x28223BE20](v44);
  v40 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = v36 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v36 - v9;
  v11 = sub_25424D8B8();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v45 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC1D8, &qword_254262768);
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v14 = v36 - v13;
  v15 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  MEMORY[0x28223BE20](v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254234604();
  v47 = v14;
  v18 = v49;
  sub_25424EC68();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = a1;
  v19 = v46;
  v20 = v44;
  v58 = 0;
  sub_2542335F8(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_25424E978();
  v21 = *(v42 + 32);
  v37 = v17;
  v21(v17, v45, v11);
  v57 = 1;
  v22 = sub_2542335F8(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_25424E978();
  v36[1] = v22;
  v23 = v15;
  v24 = *(v15 + 20);
  v25 = *(v19 + 32);
  v26 = v37;
  v25(&v37[v24], v10, v20);
  v55 = 2;
  sub_2541407C8();
  v45 = 0;
  sub_25424E978();
  *(v26 + v23[6]) = v56;
  v54 = 3;
  v27 = v41;
  sub_25424E978();
  v25((v26 + v23[7]), v27, v20);
  v53 = 4;
  v28 = sub_25424E938();
  v29 = (v26 + v23[8]);
  *v29 = v28;
  v29[1] = v30;
  v52 = 5;
  sub_25424E978();
  v25((v26 + v23[9]), v40, v20);
  v51 = 6;
  v31 = sub_25424E938();
  v32 = (v26 + v23[10]);
  *v32 = v31;
  v32[1] = v33;
  v50 = 7;
  v34 = v39;
  sub_25424E928();
  (*(v43 + 8))(v47, v48);
  sub_25414A348(v34, v26 + v23[11]);
  sub_254234678(v26, v38, type metadata accessor for AccessoryEventBase.DocumentLayout);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_2542346E0(v26, type metadata accessor for AccessoryEventBase.DocumentLayout);
}

uint64_t sub_2542335F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_254233668@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_254235210(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2542336CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254235210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254233700(uint64_t a1)
{
  v2 = sub_254234604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423373C(uint64_t a1)
{
  v2 = sub_254234604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2542337C0(void *a1, int *a2)
{
  v4 = v2;
  v25 = a1;
  v5 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25424D8B8();
  (*(*(v9 - 8) + 16))(v8, v2, v9);
  v10 = type metadata accessor for EventBase(0);
  v24 = *(v10 + 20);
  v11 = v6[7];
  v12 = sub_25424D948();
  v13 = *(*(v12 - 8) + 16);
  v13(&v8[v11], v4 + v24, v12);
  LODWORD(v24) = *(v4 + *(v10 + 24));
  v13(&v8[v6[9]], v4 + a2[5], v12);
  v14 = (v4 + a2[6]);
  v15 = *v14;
  v16 = v14[1];
  v13(&v8[v6[11]], v4 + a2[7], v12);
  v17 = a2[9];
  v18 = (v4 + a2[8]);
  v19 = *v18;
  v20 = v18[1];
  sub_254149770(v4 + v17, &v8[v6[13]]);
  v8[v6[8]] = v24;
  v21 = &v8[v6[10]];
  *v21 = v15;
  *(v21 + 1) = v16;
  v22 = &v8[v6[12]];
  *v22 = v19;
  *(v22 + 1) = v20;

  sub_25423298C(v25);
  return sub_2542346E0(v8, type metadata accessor for AccessoryEventBase.DocumentLayout);
}

uint64_t sub_2542339E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_25424EBD8();
  a3(v5);
  return sub_25424EC28();
}

uint64_t sub_254233A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_25424EBD8();
  a4(v6);
  return sub_25424EC28();
}

uint64_t sub_254233A88(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC1F0, &qword_254262780);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254234740();
  sub_25424EC78();
  v14 = 0;
  type metadata accessor for EventBaseLegacy(0);
  sub_2542335F8(&qword_27F5BC200, type metadata accessor for EventBaseLegacy, &unk_254257110);
  sub_25424EA18();
  if (!v1)
  {
    type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout(0);
    v13 = 1;
    sub_25424D948();
    sub_2542335F8(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_25424EA18();
    v12 = 2;
    sub_25424E9D8();
    v11 = 3;
    sub_25424EA18();
    v10 = 4;
    sub_25424E9D8();
    v9 = 5;
    sub_25424E9C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_254233D5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v36 - v4;
  v42 = sub_25424D948();
  v40 = *(v42 - 8);
  v5 = MEMORY[0x28223BE20](v42);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = type metadata accessor for EventBaseLegacy(0);
  MEMORY[0x28223BE20](v10);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC210, &unk_254262790);
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v36 - v12;
  v14 = type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_254234740();
  v45 = v13;
  v18 = v46;
  sub_25424EC68();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v36 = v7;
  v37 = v14;
  v19 = v41;
  v20 = v42;
  v46 = v16;
  v53 = 0;
  sub_2542335F8(&qword_27F5BC218, type metadata accessor for EventBaseLegacy, &unk_254257138);
  v21 = v43;
  sub_25424E978();
  v22 = v46;
  sub_254234794(v21, v46, type metadata accessor for EventBaseLegacy);
  v52 = 1;
  v23 = sub_2542335F8(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_25424E978();
  v24 = v19;
  v43 = v23;
  v25 = v22;
  v26 = *(v40 + 32);
  v26(v25 + v37[5], v9, v20);
  v51 = 2;
  v27 = sub_25424E938();
  v28 = (v25 + v37[6]);
  *v28 = v27;
  v28[1] = v29;
  v50 = 3;
  v30 = v36;
  sub_25424E978();
  v26(v25 + v37[7], v30, v20);
  v49 = 4;
  v31 = sub_25424E938();
  v32 = (v25 + v37[8]);
  *v32 = v31;
  v32[1] = v33;
  v48 = 5;
  v34 = v39;
  sub_25424E928();
  (*(v24 + 8))(v45, v44);
  sub_25414A348(v34, v25 + v37[9]);
  sub_254234678(v25, v38, type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_2542346E0(v25, type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout);
}

unint64_t sub_254234428()
{
  v1 = *v0;
  v2 = 1702060386;
  v3 = 0xD000000000000013;
  v4 = 0x726F737365636361;
  if (v1 != 4)
  {
    v4 = 0x6E65644972657375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6564496D6F6F72;
  if (v1 != 1)
  {
    v5 = 0x656D614E6D6F6F72;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_254234504@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25423525C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25423452C(uint64_t a1)
{
  v2 = sub_254234740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254234568(uint64_t a1)
{
  v2 = sub_254234740();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_254234604()
{
  result = qword_27F5BC1E0;
  if (!qword_27F5BC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC1E0);
  }

  return result;
}

uint64_t sub_254234678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2542346E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_254234740()
{
  result = qword_27F5BC1F8;
  if (!qword_27F5BC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC1F8);
  }

  return result;
}

uint64_t sub_254234794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9D28, &qword_254257B00);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for EventBase(0);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_254262A98[*(a1 + *(v14 + 24))] != qword_254262A98[*(a2 + *(v14 + 24))])
  {
    return 0;
  }

  v15 = type metadata accessor for AccessoryEventBase(0);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v16 = v15[6];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if ((v17 != *v19 || v18 != v19[1]) && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v20 = v15[8];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v24 = v15[9];
  v25 = *(v11 + 48);
  sub_254149770(a1 + v24, v13);
  sub_254149770(a2 + v24, &v13[v25]);
  v26 = *(v5 + 48);
  if (v26(v13, 1, v4) == 1)
  {
    if (v26(&v13[v25], 1, v4) == 1)
    {
      sub_254132E5C(v13, &unk_27F5B8E50, &qword_254254390);
      return 1;
    }

    goto LABEL_17;
  }

  sub_254149770(v13, v10);
  if (v26(&v13[v25], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_17:
    sub_254132E5C(v13, &qword_27F5B9D28, &qword_254257B00);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v25], v4);
  sub_2542335F8(&qword_27F5B9090, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v28 = sub_25424DC98();
  v29 = *(v5 + 8);
  v29(v7, v4);
  v29(v10, v4);
  sub_254132E5C(v13, &unk_27F5B8E50, &qword_254254390);
  return (v28 & 1) != 0;
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = sub_25424D948();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(v10 + 56);
    v13 = a1;
LABEL_5:

    return v12(v13, a2, a2, v11);
  }

  result = sub_25424D948();
  v15 = *(result - 8);
  if (*(v15 + 84) == a3)
  {
    v11 = result;
    v12 = *(v15 + 56);
    v13 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[9];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

void sub_254234F44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v4 <= 0x3F)
  {
    sub_25424D948();
    if (v5 <= 0x3F)
    {
      sub_2542317B8(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_254235004()
{
  result = qword_27F5BC230;
  if (!qword_27F5BC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC230);
  }

  return result;
}

unint64_t sub_25423505C()
{
  result = qword_27F5BC238;
  if (!qword_27F5BC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC238);
  }

  return result;
}

unint64_t sub_2542350B4()
{
  result = qword_27F5BC240;
  if (!qword_27F5BC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC240);
  }

  return result;
}

unint64_t sub_25423510C()
{
  result = qword_27F5BC248;
  if (!qword_27F5BC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC248);
  }

  return result;
}

unint64_t sub_254235164()
{
  result = qword_27F5BC250;
  if (!qword_27F5BC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC250);
  }

  return result;
}

unint64_t sub_2542351BC()
{
  result = qword_27F5BC258;
  if (!qword_27F5BC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC258);
  }

  return result;
}

unint64_t sub_254235210(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25423525C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564496D6F6F72 && a2 == 0xEE00726569666974 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000254251BF0 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED0000656D614E79 || (sub_25424EAB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974)
  {

    return 5;
  }

  else
  {
    v6 = sub_25424EAB8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t *sub_254235480@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2542355D8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v2, 0xD000000000000013, 0x8000000254252090, isUniquelyReferenced_nonNull_native);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v5, 0x6365524B436D7573, 0xEF657A695364726FLL, v6);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v7, 0x6575514B436D756ELL, 0xEC00000073656972, v8);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v9, 0xD000000000000015, 0x8000000254251CC0, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v11, 0xD000000000000010, 0x8000000254251CE0, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v13, 0xD000000000000015, 0x80000002542520B0, v14);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v15, 0xD00000000000001ALL, 0x80000002542520D0, v16);
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v17, 0xD00000000000001ELL, 0x80000002542520F0, v18);
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v19, 0xD00000000000001ELL, 0x8000000254252110, v20);
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v21, 0xD00000000000002ELL, 0x8000000254252130, v22);
  v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_2541AE7C0(v23, 0xD000000000000013, 0x8000000254252160, v24);
  if ((*(v1 + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime + 8) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime + 8) & 1) == 0)
  {
    v27 = (*(v1 + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime) - *(v1 + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime)) * 1000.0;
    v26 = &selRef_initWithArray_;
    if (COERCE__INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v27 > -9.22337204e18)
    {
      if (v27 < 9.22337204e18)
      {
        v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v29 = swift_isUniquelyReferenced_nonNull_native();
        sub_2541AE7C0(v28, 0xD000000000000018, 0x8000000254252280, v29);
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  v26 = &selRef_initWithArray_;
LABEL_8:
  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v30, 0x7079547972657571, 0xE900000000000065, v31);
  v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v32, 0x74696D696CLL, 0xE500000000000000, v33);
  if (*(v1 + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_scope))
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v35, 0x65706F6373, 0xE500000000000000, v36);
  v37 = [objc_opt_self() processInfo];
  v38 = [v37 name];

  if (v38)
  {
    sub_25424DCB8();
  }

  v39 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v40 = sub_25424DCA8();

  v41 = [v39 initWithString_];

  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v41, 0x4E737365636F7270, 0xEB00000000656D61, v42);
  sub_25424D868();
  v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v45 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v44, 0xD000000000000010, 0x8000000254252180, v45);
  sub_25424D7C8();
  v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v47, 0xD000000000000011, 0x80000002542521A0, v48);
  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v50 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v49, 0xD000000000000012, 0x80000002542521C0, v50);
  v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v51, 0xD000000000000015, 0x8000000254251EC0, v52);
  v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v54 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v53, 0xD000000000000018, 0x8000000254251E60, v54);
  v55 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v56 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v55, 0xD00000000000001CLL, 0x8000000254251EA0, v56);
  v57 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v58 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v57, 0xD00000000000001FLL, 0x8000000254251E80, v58);
  v59 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v60 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v59, 0xD000000000000010, 0x8000000254251EE0, v60);
  v61 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v62 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v61, 0xD00000000000001CLL, 0x80000002542521E0, v62);
  v63 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v64 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v63, 0xD00000000000001BLL, 0x8000000254252200, v64);
  v65 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v66 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v65, 0xD00000000000001FLL, 0x8000000254252220, v66);
  v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v68 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v67, 0xD00000000000001FLL, 0x8000000254252240, v68);
  v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v70 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v69, 0xD00000000000001FLL, 0x8000000254252260, v70);
  v71 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v72 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v71, 0x6E61437972657571, 0xEE0064656C6C6563, v72);
  v73 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v74 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v73, 0x6375537972657571, 0xEE00646564656563, v74);
  v75 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v76 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v75, 0xD000000000000011, 0x8000000254251C50, v76);
  return v3;
}

id sub_254236388()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryLogEvent(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for QueryLogEvent(uint64_t a1)
{
  result = qword_27F5BC340;
  if (!qword_27F5BC340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2542364C4(uint64_t a1)
{
  result = sub_25424D8B8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_2542365DC()
{
  result = qword_27F5BC350;
  if (!qword_27F5BC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC350);
  }

  return result;
}

unint64_t sub_254236630()
{
  result = qword_27F5BC358;
  if (!qword_27F5BC358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5BC358);
  }

  return result;
}

uint64_t Constants.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C756E2F7665642FLL;
  v3 = 1684893549;
  v4 = 0xD000000000000032;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73746E657645;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

HomeKitEvents::Constants_optional __swiftcall Constants.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25424E8E8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_254236790()
{
  result = qword_27F5BC360[0];
  if (!qword_27F5BC360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BC360);
  }

  return result;
}

uint64_t sub_2542367E4()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2542368CC(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_2542369A0(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

void sub_254236A90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006CLL;
  v4 = 0x6C756E2F7665642FLL;
  v5 = 0xE400000000000000;
  v6 = 1684893549;
  v7 = 0x800000025424FC90;
  v8 = 0xD000000000000032;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001BLL;
    v7 = 0x800000025424FCD0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73746E657645;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_254236B44(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254236BBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_254236D30(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_254236F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v14 = &v16 - v13;
  (*(v7 + 16))(v10, v3, v6);
  sub_25424E208();
  return sub_254237AC8(v14, *(v3 + *(a1 + 36)), v6, v11, a2);
}

uint64_t sub_2542370CC(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2542370EC, 0, 0);
}

uint64_t sub_2542370EC(uint64_t a1)
{
  sub_25424E1E8();
  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  *v2 = v1;
  v2[1] = sub_2542371CC;
  v3 = *(v1 + 64);

  return sub_254237C20(v3);
}

uint64_t sub_2542371CC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;

    return MEMORY[0x2822009F8](sub_254237328, 0, 0);
  }
}

uint64_t sub_254237328()
{
  if (v0[11] >> 60 == 15)
  {
    v1 = v0[8];
    if (*(v0[9] + *(v1 + 36)) == 1)
    {
      sub_2541CF73C();
      v1 = v0[8];
    }

    v0[13] = *(v1 + 24);
    v0[14] = *(v1 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_25423749C;

    return MEMORY[0x282200308](v0 + 6, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v5 = v0[12];
    v6 = v0[1];

    return v6(v5);
  }
}

uint64_t sub_25423749C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_254237A4C;
  }

  else
  {
    v2 = sub_2542375B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2542375B0()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[17] = v1;
  v0[18] = v2;
  if (v2 >> 60 == 15)
  {
    v3 = v0[1];

    return v3();
  }

  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    if (v1 == v1 >> 32)
    {
LABEL_15:
      sub_254134CF0(v1, v2);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v10 = swift_task_alloc();
      v0[15] = v10;
      *v10 = v0;
      v10[1] = sub_25423749C;

      return MEMORY[0x282200308](v0 + 6, AssociatedTypeWitness, AssociatedConformanceWitness);
    }
  }

  else if ((v2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  sub_2541D0104(v1, v2);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_2542377CC;
  v7 = v0[8];

  return sub_254237C20(v7);
}

uint64_t sub_2542377CC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v5[20] = v2;

  if (v2)
  {
    v6 = sub_254237A64;
  }

  else
  {
    v5[21] = a2;
    v6 = sub_2542378FC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2542378FC()
{
  v1 = v0[21];
  sub_254134CF0(v0[17], v0[18]);
  if (v1 >> 60 == 15)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_25423749C;

    return MEMORY[0x282200308](v0 + 6, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v5 = v0[3];
    v6 = v0[21];
    v7 = v0[1];

    return v7(v5, v6);
  }
}

uint64_t sub_254237A64()
{
  sub_254134CF0(v0[17], v0[18]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_254237AC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for AsyncJSONArrayObjectSequence.AsyncIterator(0, a3, a4, a4);
  v9 = a5 + v8[10];
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 2;
  v10 = MEMORY[0x277D84F90];
  v11 = (a5 + v8[11]);
  v11[1] = 0;
  v11[2] = 0;
  *v11 = v10;
  v12 = a5 + v8[12];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a5 + v8[13]) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  *(a5 + v8[9]) = a2;
  return result;
}

uint64_t sub_254237BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_254236F74(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_254237C20(uint64_t a1)
{
  v2[59] = a1;
  v2[60] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9388, &qword_254254808);
  v2[61] = v3;
  v2[62] = *(v3 - 8);
  v2[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254237D18, 0, 0);
}

uint64_t sub_254237D18()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v2 + 52);
  *(v0 + 552) = v3;
  v4 = *(v1 + v3);
  v5 = *(v2 + 44);
  *(v0 + 556) = v5;
  v6 = (v1 + v5);
  v7 = v6[2];
  *(v0 + 512) = v7;
  if (v4 < 0 || v7 < v4)
  {
    __break(1u);
  }

  v8 = v6[1];
  *(v0 + 400) = *v6;
  *(v0 + 408) = v8;
  *(v0 + 416) = v7;
  *(v0 + 424) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9390, &qword_254254810);
  sub_254238F94();
  sub_25424E1F8();
  sub_25424D388();
  *(v0 + 528) = v4;
  *(v0 + 520) = 0;

  return MEMORY[0x2822009F8](sub_254237E44, 0, 0);
}

uint64_t sub_254237E44(uint64_t a1)
{
  while (1)
  {
    if ((*(v1 + 57) & 1) == 0)
    {
      v13 = *(v1 + 56);
      *(v1 + 56) = 256;
      if ((v13 & 0xE0) == 0xC0)
      {
        v14 = 0;
        v15 = 1;
      }

      else if ((v13 & 0xF0) == 0xE0)
      {
        v14 = 0;
        v15 = 2;
      }

      else
      {
        if ((v13 & 0xF8) != 0xF0)
        {
          if (v13 < 0)
          {
            goto LABEL_147;
          }

          v78 = 0;
          v14 = 1;
          goto LABEL_30;
        }

        v14 = 0;
        v15 = 3;
      }

      v78 = v15;
LABEL_30:
      *(v1 + 592) = v13;
      *(v1 + 593) = 0;
      *(v1 + 595) = 0;
      if ((v14 & 1) != 0 || !*(v1 + 32))
      {
        goto LABEL_146;
      }

      v16 = 0;
      while (1)
      {
        v17 = *(v1 + 40);
        v18 = *(v1 + 16);
        if (v17 >= *(v18 + 16))
        {
          goto LABEL_146;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_176;
        }

        v19 = (v18 + 16 * v17 + 40);
        while (1)
        {
          if (v17 >= *(v18 + 16))
          {
            goto LABEL_167;
          }

          v21 = *(v19 - 1);
          v20 = *v19;
          v22 = *(v1 + 48);
          v23 = *v19 >> 62;
          if (v23 > 1)
          {
            break;
          }

          if (v23)
          {
            if (__OFSUB__(HIDWORD(v21), v21))
            {
              goto LABEL_171;
            }

            v26 = HIDWORD(v21) - v21;
            goto LABEL_49;
          }

          if (v22 < BYTE6(v20))
          {
            goto LABEL_50;
          }

LABEL_37:
          sub_254134D04(v21, v20);
          *(v1 + 40) = ++v17;
          *(v1 + 48) = 0;
          v19 += 2;
          if (v17 >= *(*(v1 + 16) + 16))
          {
            goto LABEL_146;
          }
        }

        if (v23 != 2)
        {
          if (v22 < 0)
          {
            goto LABEL_195;
          }

          goto LABEL_37;
        }

        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        v26 = v24 - v25;
        if (__OFSUB__(v24, v25))
        {
          goto LABEL_172;
        }

LABEL_49:
        sub_254140660(*(v19 - 1), *v19);
        if (v22 >= v26)
        {
          goto LABEL_37;
        }

LABEL_50:
        if (v23 == 2)
        {
          v27 = *(v21 + 16);
          v28 = v27 + v22;
          if (!__OFADD__(v27, v22))
          {
            v29 = *(v21 + 24);
            goto LABEL_57;
          }

          goto LABEL_179;
        }

        if (v23 != 1)
        {
          v27 = 0;
          v29 = BYTE6(v20);
          v28 = v22;
          goto LABEL_57;
        }

        v27 = v21;
        v28 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_178;
        }

        v29 = v21 >> 32;
LABEL_57:
        if (v28 < v27 || v29 < v28)
        {
          goto LABEL_195;
        }

        if (v23 == 2)
        {
          if (v28 >= *(v21 + 16))
          {
            if (v28 >= *(v21 + 24))
            {
              goto LABEL_183;
            }

            v30 = sub_25424D268();
            if (v30)
            {
              v33 = v30;
              v36 = sub_25424D298();
              v35 = v28 - v36;
              if (!__OFSUB__(v28, v36))
              {
                goto LABEL_71;
              }

              goto LABEL_185;
            }

            goto LABEL_197;
          }

          goto LABEL_181;
        }

        if (v23 == 1)
        {
          if (v28 >= v21 && v28 < v21 >> 32)
          {
            v30 = sub_25424D268();
            if (v30)
            {
              v33 = v30;
              v34 = sub_25424D298();
              v35 = v28 - v34;
              if (!__OFSUB__(v28, v34))
              {
LABEL_71:
                v37 = *(v33 + v35);
                goto LABEL_74;
              }

LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
              goto LABEL_186;
            }

LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

        if (v28 >= BYTE6(v20))
        {
          goto LABEL_180;
        }

        *(v1 + 574) = v21;
        *(v1 + 582) = v20;
        *(v1 + 584) = BYTE2(v20);
        *(v1 + 585) = BYTE3(v20);
        *(v1 + 586) = BYTE4(v20);
        *(v1 + 587) = BYTE5(v20);
        v37 = *(v1 + 574 + v28);
LABEL_74:
        sub_254134D04(v21, v20);
        *(v1 + 48) = v22 + 1;
        if ((v37 & 0xC0) != 0x80)
        {
          *(v1 + 56) = v37;
          *(v1 + 57) = 0;
          goto LABEL_146;
        }

        ++v16;
        *(v1 + 592 + v16) = v37;
        if (v16 >= v78 || !*(v1 + 32))
        {
LABEL_146:
          v62 = sub_25424DD68();
          v64 = sub_254183160(v62, v63);

          if ((v64 & 0x100000000) == 0)
          {
            goto LABEL_147;
          }

LABEL_151:
          v72 = *(v1 + 64);
          v71 = *(v1 + 72);
          if (sub_25424DD98() >= 1)
          {
            v73 = HIBYTE(v71) & 0xF;
            if ((v71 & 0x2000000000000000) == 0)
            {
              v73 = v72 & 0xFFFFFFFFFFFFLL;
            }

            if (v73)
            {
              v30 = sub_2541832B0(v72, v71);
              if (v31)
              {
                goto LABEL_156;
              }

              __break(1u);
LABEL_197:
              __break(1u);
              goto LABEL_198;
            }

LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
            goto LABEL_182;
          }

          v75 = sub_254238E00;
LABEL_158:
          v30 = v75;
          v31 = 0;
          v32 = 0;

          return MEMORY[0x2822009F8](v30, v31, v32);
        }
      }
    }

    if (!*(v1 + 32))
    {
      goto LABEL_151;
    }

    v2 = *(v1 + 40);
    v3 = *(v1 + 16);
    if (v2 >= *(v3 + 16))
    {
      goto LABEL_151;
    }

    if (v2 < 0)
    {
      goto LABEL_175;
    }

    v4 = (v3 + 16 * v2 + 40);
    while (1)
    {
      if (v2 >= *(v3 + 16))
      {
        goto LABEL_166;
      }

      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v1 + 48);
      v8 = *v4 >> 62;
      if (v8 <= 1)
      {
        break;
      }

      if (v8 == 2)
      {
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        v11 = v9 - v10;
        if (__OFSUB__(v9, v10))
        {
          goto LABEL_170;
        }

        goto LABEL_19;
      }

      if (v7 < 0)
      {
        v12 = 0;
        goto LABEL_83;
      }

LABEL_7:
      sub_254134D04(v6, v5);
      *(v1 + 40) = ++v2;
      *(v1 + 48) = 0;
      v4 += 2;
      if (v2 >= *(*(v1 + 16) + 16))
      {
        goto LABEL_151;
      }
    }

    if (!v8)
    {
      if (v7 < BYTE6(v5))
      {
        goto LABEL_20;
      }

      goto LABEL_7;
    }

    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_169;
    }

    v11 = HIDWORD(v6) - v6;
LABEL_19:
    sub_254140660(*(v4 - 1), *v4);
    if (v7 >= v11)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (v8)
    {
      v12 = v8 == 2 ? *(v6 + 16) : v6;
    }

    else
    {
      v12 = 0;
    }

LABEL_83:
    sub_2541347C8(v12, v7, v6, v5);
    v38 = sub_25424D4C8();
    v30 = sub_254134D04(v6, v5);
    v39 = v7 + 1;
    *(v1 + 48) = v7 + 1;
    if (v38 < 0)
    {
      break;
    }

LABEL_147:
    v65 = *(v1 + 72);
    *(v1 + 456) = *(v1 + 64);
    *(v1 + 464) = v65;
    sub_25424DD58();
    v66 = *(v1 + 456);
    v67 = *(v1 + 464);
    *(v1 + 64) = v66;
    *(v1 + 72) = v67;
    if (sub_25424DD98() >= 2)
    {
      v76 = HIBYTE(v67) & 0xF;
      if ((v67 & 0x2000000000000000) == 0)
      {
        v76 = v66 & 0xFFFFFFFFFFFFLL;
      }

      if (!v76)
      {
        goto LABEL_194;
      }

      v30 = sub_2541832B0(v66, v67);
      if (v31)
      {
LABEL_156:
        v74 = v30;
        *(v1 + 536) = v31;
        sub_2541832F8(1);
        *(v1 + 544) = v74;
        v75 = sub_2542387F0;
        goto LABEL_158;
      }

      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }
  }

  if ((v38 & 0xFFFFFFE0) != 0xFFFFFFC0)
  {
    if ((v38 & 0xFFFFFFF0) == 0xFFFFFFE0)
    {
      v40 = 2;
      goto LABEL_90;
    }

    if ((v38 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v40 = 3;
      goto LABEL_90;
    }

    goto LABEL_147;
  }

  v40 = 1;
LABEL_90:
  v79 = v40;
  v41 = 0;
  *(v1 + 588) = v38;
  *(v1 + 589) = 0;
  *(v1 + 591) = 0;
  while (2)
  {
    v42 = *(v1 + 16);
    if (v2 >= *(v42 + 16))
    {
      goto LABEL_150;
    }

    v43 = v42 + 16 * v2;
    v45 = *(v43 + 32);
    v44 = *(v43 + 40);
    v46 = v44 >> 62;
    if ((v44 >> 62) > 1)
    {
      if (v46 == 2)
      {
        v48 = *(v45 + 16);
        v47 = *(v45 + 24);
        v49 = v47 - v48;
        if (__OFSUB__(v47, v48))
        {
          goto LABEL_173;
        }

        goto LABEL_102;
      }

      if (v39 < 0)
      {
        goto LABEL_199;
      }
    }

    else
    {
      if (!v46)
      {
        if (v39 < BYTE6(v44))
        {
          goto LABEL_103;
        }

        goto LABEL_108;
      }

      if (__OFSUB__(HIDWORD(v45), v45))
      {
        goto LABEL_174;
      }

      v49 = HIDWORD(v45) - v45;
LABEL_102:
      v30 = sub_254140660(*(v43 + 32), *(v43 + 40));
      if (v39 < v49)
      {
LABEL_103:
        if (v46 == 2)
        {
          goto LABEL_121;
        }

        goto LABEL_104;
      }
    }

LABEL_108:
    v30 = sub_254134D04(v45, v44);
    *(v1 + 40) = ++v2;
    *(v1 + 48) = 0;
    if (v2 >= *(*(v1 + 16) + 16))
    {
      goto LABEL_150;
    }

    v53 = (v43 + 56);
    while (2)
    {
      if (v2 >= *(v42 + 16))
      {
        goto LABEL_168;
      }

      v45 = *(v53 - 1);
      v44 = *v53;
      v46 = *v53 >> 62;
      if (v46 <= 1)
      {
        if (v46)
        {
          if (__OFSUB__(HIDWORD(v45), v45))
          {
            goto LABEL_174;
          }

          v54 = HIDWORD(v45) - v45;
          goto LABEL_119;
        }

        if (BYTE6(v44))
        {
          goto LABEL_120;
        }

LABEL_111:
        v30 = sub_254134D04(v45, v44);
        *(v1 + 40) = ++v2;
        *(v1 + 48) = 0;
        v53 += 2;
        if (v2 >= *(*(v1 + 16) + 16))
        {
          goto LABEL_150;
        }

        continue;
      }

      break;
    }

    if (v46 != 2)
    {
      goto LABEL_111;
    }

    v56 = *(v45 + 16);
    v55 = *(v45 + 24);
    v54 = v55 - v56;
    if (__OFSUB__(v55, v56))
    {
      goto LABEL_173;
    }

LABEL_119:
    v30 = sub_254140660(*(v53 - 1), *v53);
    if (v54 <= 0)
    {
      goto LABEL_111;
    }

LABEL_120:
    v39 = 0;
    if (v46 == 2)
    {
LABEL_121:
      v50 = *(v45 + 16);
      v51 = v50 + v39;
      if (!__OFADD__(v50, v39))
      {
        v52 = *(v45 + 24);
        goto LABEL_124;
      }

LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
    }

LABEL_104:
    if (v46 != 1)
    {
      v50 = 0;
      v52 = BYTE6(v44);
      v51 = v39;
      goto LABEL_124;
    }

    v50 = v45;
    v51 = v45 + v39;
    if (__OFADD__(v45, v39))
    {
      goto LABEL_187;
    }

    v52 = v45 >> 32;
LABEL_124:
    if (v51 < v50 || v52 < v51)
    {
      goto LABEL_199;
    }

    if (v46 == 2)
    {
      if (v51 < *(v45 + 16))
      {
        goto LABEL_188;
      }

      if (v51 >= *(v45 + 24))
      {
        goto LABEL_192;
      }

      v30 = sub_25424D268();
      if (!v30)
      {
        goto LABEL_201;
      }

      v57 = v30;
      v60 = sub_25424D298();
      v59 = v51 - v60;
      if (__OFSUB__(v51, v60))
      {
        goto LABEL_193;
      }

LABEL_138:
      v61 = *(v57 + v59);
LABEL_141:
      v30 = sub_254134D04(v45, v44);
      *(v1 + 48) = ++v39;
      if ((v61 & 0xC0) == 0x80)
      {
        ++v41;
        *(v1 + 588 + v41) = v61;
        if (v41 == v79)
        {
          goto LABEL_150;
        }

        continue;
      }

      *(v1 + 56) = v61;
      *(v1 + 57) = 0;
LABEL_150:
      v68 = sub_25424DD68();
      v70 = sub_254183160(v68, v69);

      if ((v70 & 0x100000000) != 0)
      {
        goto LABEL_151;
      }

      goto LABEL_147;
    }

    break;
  }

  if (v46 != 1)
  {
    if (v51 >= BYTE6(v44))
    {
      goto LABEL_189;
    }

    *(v1 + 560) = v45;
    *(v1 + 568) = v44;
    *(v1 + 570) = BYTE2(v44);
    *(v1 + 571) = BYTE3(v44);
    *(v1 + 572) = BYTE4(v44);
    *(v1 + 573) = BYTE5(v44);
    v61 = *(v1 + 560 + v51);
    goto LABEL_141;
  }

  if (v51 < v45 || v51 >= v45 >> 32)
  {
    goto LABEL_190;
  }

  v30 = sub_25424D268();
  if (v30)
  {
    v57 = v30;
    v58 = sub_25424D298();
    v59 = v51 - v58;
    if (__OFSUB__(v51, v58))
    {
      goto LABEL_191;
    }

    goto LABEL_138;
  }

LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_2542387F0(uint64_t a1)
{
  v2 = *(v1 + 520);
  sub_25424E1E8();
  if (v2)
  {
    (*(*(v1 + 496) + 8))(*(v1 + 504), *(v1 + 488));

    v3 = *(v1 + 32);
    *(v1 + 144) = *(v1 + 16);
    *(v1 + 160) = v3;
    v4 = *(v1 + 64);
    *(v1 + 176) = *(v1 + 48);
    *(v1 + 192) = v4;
    sub_254238FF8(v1 + 144);
LABEL_3:

    v5 = *(v1 + 8);

    return v5();
  }

  v7 = *(v1 + 544) == 12435439 && *(v1 + 536) == 0xA300000000000000;
  if (v7 || (v8 = sub_25424EAB8(), v9 = *(v1 + 536), (v8 & 1) != 0))
  {
    v10 = *(v1 + 528);
    v11 = *(v1 + 512);
    v12 = *(v1 + 32);
    *(v1 + 336) = *(v1 + 16);
    *(v1 + 352) = v12;
    v13 = *(v1 + 64);
    *(v1 + 368) = *(v1 + 48);
    *(v1 + 384) = v13;
    sub_254238FF8(v1 + 336);

    v14 = v11 - v10;
    if (!__OFSUB__(v11, v10))
    {
      v16 = *(v1 + 496);
      v15 = *(v1 + 504);
      v17 = *(v1 + 488);
      if (v14 > 3)
      {
        sub_254182650();
        swift_allocError();
        *v21 = 0xD000000000000016;
        v21[1] = 0x8000000254250740;
        swift_willThrow();
        (*(v16 + 8))(v15, v17);
        goto LABEL_3;
      }

      (*(v16 + 8))(*(v1 + 504), *(v1 + 488));
      v18 = 0;
      v19 = 0xF000000000000000;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_54;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
LABEL_54:
    v22 = sub_25424DDF8();
    goto LABEL_22;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v22 = *(v1 + 544) & 0xFFFFFFFFFFFFLL;
  }

LABEL_22:
  v23 = *(v1 + 528);
  v24 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
    __break(1u);
    goto LABEL_56;
  }

  v25 = *(v1 + 544);
  v26 = *(v1 + 536);
  v28 = *(v1 + 472);
  v27 = *(v1 + 480);
  *(v27 + *(v1 + 552)) = v24;
  v29 = v27 + *(v28 + 40);
  sub_25420C7A4(v25, v26);
  v30 = *v29;
  if (*(v29 + 16))
  {
    if (*(v29 + 16) == 1)
    {
      v32 = *(v1 + 496);
      v31 = *(v1 + 504);
      v33 = *(v1 + 488);
      v34 = *(v29 + 8);

      v35 = *(v1 + 32);
      *(v1 + 272) = *(v1 + 16);
      *(v1 + 288) = v35;
      v36 = *(v1 + 64);
      *(v1 + 304) = *(v1 + 48);
      *(v1 + 320) = v36;
      sub_254238FF8(v1 + 272);
      sub_25424E688();

      MEMORY[0x259C05CA0](v30, v34);
      sub_254183380(v30, v34, 1);
      sub_254182650();
      swift_allocError();
      *v37 = 0xD000000000000016;
      v37[1] = 0x8000000254250720;
      swift_willThrow();
      (*(v32 + 8))(v31, v33);
      goto LABEL_3;
    }

    goto LABEL_30;
  }

  swift_beginAccess();
  if (*(*(v30 + 16) + 16) >= 2uLL)
  {
    v38 = *(v1 + 472);
    v39 = *(v1 + 480);

    v40 = v39 + *(v38 + 48);
    if (*(v40 + 8))
    {
      *v40 = *(v1 + 528);
      *(v40 + 8) = 0;
    }

    goto LABEL_31;
  }

  v41 = *(v1 + 480) + *(*(v1 + 472) + 48);
  if ((*(v41 + 8) & 1) == 0)
  {
    v42 = *v41;
    v43 = *(v1 + 544);
    v44 = *(v1 + 536);
    v45 = *(v1 + 32);
    *(v1 + 208) = *(v1 + 16);
    *(v1 + 224) = v45;
    v46 = *(v1 + 64);
    *(v1 + 240) = *(v1 + 48);
    *(v1 + 256) = v46;
    sub_254238FF8(v1 + 208);
    *v41 = 0;
    *(v41 + 8) = 1;
    if (v43 == 44 && v44 == 0xE100000000000000)
    {

      v47 = *(v1 + 528);
    }

    else
    {
      v48 = *(v1 + 528);
      v49 = sub_25424EAB8();

      if (v49)
      {
        v47 = v48;
      }

      else
      {
        v47 = v24;
      }
    }

    v50 = *(v1 + 552);
    v51 = *(v1 + 480);
    v52 = sub_2541D0258(v47);
    v54 = v52;
    v55 = v53;
    *(v51 + v50) = 0;
    v56 = v53 >> 62;
    if ((v53 >> 62) > 1)
    {
      if (v56 == 2)
      {
        v58 = sub_2541347C8(*(v52 + 16), v42, v52, v53);
        v57 = *(v54 + 16);
        v59 = *(v54 + 24);
        goto LABEL_50;
      }
    }

    else if (v56)
    {
      v57 = v52;
      v58 = sub_2541347C8(v52, v42, v52, v53);
      v59 = v54 >> 32;
      goto LABEL_50;
    }

    v58 = sub_2541347C8(0, v42, v52, v53);
    if (v56 > 1)
    {
      v59 = 0;
      v57 = 0;
    }

    else if (v56)
    {
      v57 = v54;
      v59 = v54 >> 32;
    }

    else
    {
      v57 = 0;
      v59 = BYTE6(v55);
    }

LABEL_50:
    if (v59 >= v58 && v59 >= v57)
    {
      v61 = *(v1 + 496);
      v60 = *(v1 + 504);
      v62 = *(v1 + 488);
      v18 = sub_25424D4B8();
      v19 = v63;
      sub_254134D04(v54, v55);
      (*(v61 + 8))(v60, v62);
LABEL_14:

      v20 = *(v1 + 8);

      return v20(v18, v19);
    }

LABEL_56:
    __break(1u);
  }

LABEL_30:

LABEL_31:
  *(v1 + 528) = v24;
  *(v1 + 520) = 0;

  return MEMORY[0x2822009F8](sub_254237E44, 0, 0);
}

uint64_t sub_254238E00()
{
  (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v2;
  sub_254238FF8(v0 + 80);

  v3 = *(v0 + 8);

  return v3(0, 0xF000000000000000);
}

uint64_t sub_254238EC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25413439C;

  return sub_2542370CC(a2);
}

unint64_t sub_254238F94()
{
  result = qword_27F5B9398;
  if (!qword_27F5B9398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9390, &qword_254254810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9398);
  }

  return result;
}

uint64_t sub_254238FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B93A0, &qword_254254818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_254239068(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_25414810C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_254239124(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *(((a1 + v9) & 0xFFFFFFFFFFFFFFF8) + 32);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_2542392B4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((((v9 & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if ((((v9 & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if ((((v9 & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
      v19[5] = 0;
      v19[6] = 0;
    }

    else
    {
      v20 = (a2 - 1);
    }

    v19[4] = v20;
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

uint64_t sub_254239494@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SomeAccessoryEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25423F514(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        a1[3] = type metadata accessor for SmokeDetectorEvent(0);
        v8 = sub_254240A44(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
        v9 = type metadata accessor for SmokeDetectorEvent;
      }

      else
      {
        a1[3] = type metadata accessor for ThermostatAutomationEvent(0);
        v8 = sub_254240A44(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
        v9 = type metadata accessor for ThermostatAutomationEvent;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      a1[3] = type metadata accessor for ThermostatAutomationFailureEvent(0);
      v8 = sub_254240A44(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
      v9 = type metadata accessor for ThermostatAutomationFailureEvent;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      a1[3] = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
      v8 = sub_254240A44(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
      v9 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
    }

    else
    {
      a1[3] = type metadata accessor for WindowEvent(0);
      v8 = sub_254240A44(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
      v9 = type metadata accessor for WindowEvent;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      a1[3] = type metadata accessor for DoorEvent(0);
      v8 = sub_254240A44(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
      v9 = type metadata accessor for DoorEvent;
    }

    else
    {
      a1[3] = type metadata accessor for ContactSensorEvent(0);
      v8 = sub_254240A44(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
      v9 = type metadata accessor for ContactSensorEvent;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    a1[3] = type metadata accessor for GarageDoorEvent(0);
    v8 = sub_254240A44(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
    v9 = type metadata accessor for GarageDoorEvent;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    a1[3] = type metadata accessor for LockEvent(0);
    v8 = sub_254240A44(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
    v9 = type metadata accessor for LockEvent;
  }

  else
  {
    a1[3] = type metadata accessor for SecuritySystemEvent(0);
    v8 = sub_254240A44(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
    v9 = type metadata accessor for SecuritySystemEvent;
  }

  v10 = v9;
  a1[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_25423A0B4(v6, boxed_opaque_existential_1, v10);
}

uint64_t SomeAccessoryEvent.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v32 = type metadata accessor for WindowEvent(0);
  MEMORY[0x28223BE20](v32);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ThermostatAutomationFailureEvent(0);
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ThermostatAutomationEvent(0);
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SmokeDetectorEvent(0);
  MEMORY[0x28223BE20](v40);
  v39 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SecuritySystemEvent(0);
  MEMORY[0x28223BE20](v42);
  v41 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LockEvent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GarageDoorEvent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DoorEvent(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ContactSensorEvent(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SomeAccessoryEvent(0);
  MEMORY[0x28223BE20](v43);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_254140708(a1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91F8, &unk_25425D2D0);
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v20, v22, type metadata accessor for ContactSensorEvent);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_25423A0B4(v22, v44, type metadata accessor for SomeAccessoryEvent);
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (swift_dynamicCast())
  {
    sub_25423A0B4(v17, v22, type metadata accessor for DoorEvent);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    sub_25423A0B4(v14, v22, type metadata accessor for GarageDoorEvent);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    sub_25423A0B4(v11, v22, type metadata accessor for LockEvent);
    goto LABEL_21;
  }

  v23 = v41;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v23, v22, type metadata accessor for SecuritySystemEvent);
    goto LABEL_21;
  }

  v24 = v39;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v24, v22, type metadata accessor for SmokeDetectorEvent);
    goto LABEL_21;
  }

  v25 = v37;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v25, v22, type metadata accessor for ThermostatAutomationEvent);
    goto LABEL_21;
  }

  v26 = v35;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v26, v22, type metadata accessor for ThermostatAutomationFailureEvent);
    goto LABEL_21;
  }

  v27 = v33;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v27, v22, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
    goto LABEL_21;
  }

  v28 = v31;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v28, v22, type metadata accessor for WindowEvent);
    goto LABEL_21;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000019, 0x8000000254250CF0);
  v46 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC468, &qword_254262DC8);
  v30 = sub_25424DD08();
  MEMORY[0x259C05CA0](v30);

  MEMORY[0x259C05CA0](8250, 0xE200000000000000);
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  sub_25424EA98();
  result = sub_25424E858();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SomeAccessoryEvent(uint64_t a1)
{
  result = qword_27F5BC580;
  if (!qword_27F5BC580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25423A0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SomeAccessoryEvent.anyAccessoryEvent.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_254239494(v7);
  v2 = v8;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
  a1[3] = v2;
  a1[4] = *(v3 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

unint64_t sub_25423A1B8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    if (a1 != 8)
    {
      v5 = 0x776F646E6977;
    }

    if (a1 == 7)
    {
      v5 = 0xD00000000000001BLL;
    }

    v6 = 0x746544656B6F6D73;
    if (a1 != 5)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x53746361746E6F63;
    v2 = 0x6F44656761726167;
    v3 = 1801678700;
    if (a1 != 3)
    {
      v3 = 0x7974697275636573;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1919905636;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25423A31C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_254240624(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25423A350(uint64_t a1)
{
  v2 = sub_25423F4C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A38C(uint64_t a1)
{
  v2 = sub_25423F4C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A3C8(uint64_t a1)
{
  v2 = sub_25423F86C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A404(uint64_t a1)
{
  v2 = sub_25423F86C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A440(uint64_t a1)
{
  v2 = sub_25423F818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A47C(uint64_t a1)
{
  v2 = sub_25423F818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A4B8(uint64_t a1)
{
  v2 = sub_25423F7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A4F4(uint64_t a1)
{
  v2 = sub_25423F7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A530(uint64_t a1)
{
  v2 = sub_25423F770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A56C(uint64_t a1)
{
  v2 = sub_25423F770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A5A8(uint64_t a1)
{
  v2 = sub_25423F71C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A5E4(uint64_t a1)
{
  v2 = sub_25423F71C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A620(uint64_t a1)
{
  v2 = sub_25423F6C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A65C(uint64_t a1)
{
  v2 = sub_25423F6C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A698(uint64_t a1)
{
  v2 = sub_25423F674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A6D4(uint64_t a1)
{
  v2 = sub_25423F674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A710(uint64_t a1)
{
  v2 = sub_25423F620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A74C(uint64_t a1)
{
  v2 = sub_25423F620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A788(uint64_t a1)
{
  v2 = sub_25423F5CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A7C4(uint64_t a1)
{
  v2 = sub_25423F5CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A800(uint64_t a1)
{
  v2 = sub_25423F578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A83C(uint64_t a1)
{
  v2 = sub_25423F578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SomeAccessoryEvent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC470, &qword_254262DD0);
  v106 = *(v2 - 8);
  v107 = v2;
  MEMORY[0x28223BE20](v2);
  v105 = &v61 - v3;
  v103 = type metadata accessor for WindowEvent(0);
  MEMORY[0x28223BE20](v103);
  v104 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC478, &qword_254262DD8);
  v101 = *(v5 - 8);
  v102 = v5;
  MEMORY[0x28223BE20](v5);
  v100 = &v61 - v6;
  v98 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  MEMORY[0x28223BE20](v98);
  v99 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC480, &qword_254262DE0);
  v96 = *(v8 - 8);
  v97 = v8;
  MEMORY[0x28223BE20](v8);
  v95 = &v61 - v9;
  v93 = type metadata accessor for ThermostatAutomationFailureEvent(0);
  MEMORY[0x28223BE20](v93);
  v94 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC488, &qword_254262DE8);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v61 - v11;
  v88 = type metadata accessor for ThermostatAutomationEvent(0);
  MEMORY[0x28223BE20](v88);
  v89 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC490, &qword_254262DF0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v61 - v13;
  v82 = type metadata accessor for SmokeDetectorEvent(0);
  MEMORY[0x28223BE20](v82);
  v84 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC498, &qword_254262DF8);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v61 - v15;
  v78 = type metadata accessor for SecuritySystemEvent(0);
  MEMORY[0x28223BE20](v78);
  v79 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC4A0, &qword_254262E00);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v61 - v17;
  v73 = type metadata accessor for LockEvent(0);
  MEMORY[0x28223BE20](v73);
  v74 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC4A8, &qword_254262E08);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v61 - v19;
  v68 = type metadata accessor for GarageDoorEvent(0);
  MEMORY[0x28223BE20](v68);
  v69 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC4B0, &qword_254262E10);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v61 - v21;
  v63 = type metadata accessor for DoorEvent(0);
  MEMORY[0x28223BE20](v63);
  v64 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC4B8, &qword_254262E18);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v24 = &v61 - v23;
  v25 = type metadata accessor for ContactSensorEvent(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SomeAccessoryEvent(0);
  MEMORY[0x28223BE20](v28);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC4C0, &unk_254262E20);
  v110 = *(v31 - 8);
  v111 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v61 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25423F4C0();
  v109 = v33;
  sub_25424EC78();
  sub_25423F514(v108, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v35 = v84;
        sub_25423A0B4(v30, v84, type metadata accessor for SmokeDetectorEvent);
        v117 = 5;
        sub_25423F6C8();
        v47 = v85;
        v37 = v111;
        v38 = v109;
        sub_25424E9A8();
        sub_254240A44(&qword_27F5BACF0, type metadata accessor for SmokeDetectorEvent, &protocol conformance descriptor for SmokeDetectorEvent);
        v48 = v87;
        sub_25424EA18();
        (*(v86 + 8))(v47, v48);
        v40 = type metadata accessor for SmokeDetectorEvent;
      }

      else
      {
        v35 = v89;
        sub_25423A0B4(v30, v89, type metadata accessor for ThermostatAutomationEvent);
        v118 = 6;
        sub_25423F674();
        v59 = v90;
        v37 = v111;
        v38 = v109;
        sub_25424E9A8();
        sub_254240A44(&qword_27F5B9838, type metadata accessor for ThermostatAutomationEvent, &protocol conformance descriptor for ThermostatAutomationEvent);
        v60 = v92;
        sub_25424EA18();
        (*(v91 + 8))(v59, v60);
        v40 = type metadata accessor for ThermostatAutomationEvent;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v35 = v94;
      sub_25423A0B4(v30, v94, type metadata accessor for ThermostatAutomationFailureEvent);
      v119 = 7;
      sub_25423F620();
      v51 = v95;
      v37 = v111;
      v38 = v109;
      sub_25424E9A8();
      sub_254240A44(&qword_27F5BAB98, type metadata accessor for ThermostatAutomationFailureEvent, &protocol conformance descriptor for ThermostatAutomationFailureEvent);
      v52 = v97;
      sub_25424EA18();
      (*(v96 + 8))(v51, v52);
      v40 = type metadata accessor for ThermostatAutomationFailureEvent;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v35 = v99;
      sub_25423A0B4(v30, v99, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
      v120 = 8;
      sub_25423F5CC();
      v41 = v100;
      v37 = v111;
      v38 = v109;
      sub_25424E9A8();
      sub_254240A44(&qword_27F5BA860, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent);
      v42 = v102;
      sub_25424EA18();
      (*(v101 + 8))(v41, v42);
      v40 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
    }

    else
    {
      v35 = v104;
      sub_25423A0B4(v30, v104, type metadata accessor for WindowEvent);
      v121 = 9;
      sub_25423F578();
      v55 = v105;
      v37 = v111;
      v38 = v109;
      sub_25424E9A8();
      sub_254240A44(&qword_27F5BB1B0, type metadata accessor for WindowEvent, &protocol conformance descriptor for WindowEvent);
      v56 = v107;
      sub_25424EA18();
      (*(v106 + 8))(v55, v56);
      v40 = type metadata accessor for WindowEvent;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_25423A0B4(v30, v27, type metadata accessor for ContactSensorEvent);
      v112 = 0;
      sub_25423F86C();
      v43 = v111;
      v44 = v109;
      sub_25424E9A8();
      sub_254240A44(&qword_27F5BBDF0, type metadata accessor for ContactSensorEvent, &protocol conformance descriptor for ContactSensorEvent);
      v45 = v62;
      sub_25424EA18();
      (*(v61 + 8))(v24, v45);
      sub_2542409E4(v27, type metadata accessor for ContactSensorEvent);
      return (*(v110 + 8))(v44, v43);
    }

    v35 = v64;
    sub_25423A0B4(v30, v64, type metadata accessor for DoorEvent);
    v113 = 1;
    sub_25423F818();
    v57 = v65;
    v37 = v111;
    v38 = v109;
    sub_25424E9A8();
    sub_254240A44(&qword_27F5BBD68, type metadata accessor for DoorEvent, &protocol conformance descriptor for DoorEvent);
    v58 = v67;
    sub_25424EA18();
    (*(v66 + 8))(v57, v58);
    v40 = type metadata accessor for DoorEvent;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v35 = v69;
    sub_25423A0B4(v30, v69, type metadata accessor for GarageDoorEvent);
    v114 = 2;
    sub_25423F7C4();
    v49 = v70;
    v37 = v111;
    v38 = v109;
    sub_25424E9A8();
    sub_254240A44(&qword_27F5BBBE0, type metadata accessor for GarageDoorEvent, &protocol conformance descriptor for GarageDoorEvent);
    v50 = v72;
    sub_25424EA18();
    (*(v71 + 8))(v49, v50);
    v40 = type metadata accessor for GarageDoorEvent;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v35 = v74;
    sub_25423A0B4(v30, v74, type metadata accessor for LockEvent);
    v115 = 3;
    sub_25423F770();
    v36 = v75;
    v37 = v111;
    v38 = v109;
    sub_25424E9A8();
    sub_254240A44(&qword_27F5B8EA0, type metadata accessor for LockEvent, &protocol conformance descriptor for LockEvent);
    v39 = v77;
    sub_25424EA18();
    (*(v76 + 8))(v36, v39);
    v40 = type metadata accessor for LockEvent;
  }

  else
  {
    v35 = v79;
    sub_25423A0B4(v30, v79, type metadata accessor for SecuritySystemEvent);
    v116 = 4;
    sub_25423F71C();
    v53 = v80;
    v37 = v111;
    v38 = v109;
    sub_25424E9A8();
    sub_254240A44(&qword_27F5BA130, type metadata accessor for SecuritySystemEvent, &protocol conformance descriptor for SecuritySystemEvent);
    v54 = v83;
    sub_25424EA18();
    (*(v81 + 8))(v53, v54);
    v40 = type metadata accessor for SecuritySystemEvent;
  }

  sub_2542409E4(v35, v40);
  return (*(v110 + 8))(v38, v37);
}

uint64_t SomeAccessoryEvent.hash(into:)(uint64_t a1)
{
  v83 = a1;
  v78 = type metadata accessor for WindowEvent(0);
  MEMORY[0x28223BE20](v78);
  v77 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v73 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ThermostatAutomationFailureEvent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ThermostatAutomationEvent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for SmokeDetectorEvent(0);
  MEMORY[0x28223BE20](v76);
  v75 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SecuritySystemEvent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LockEvent(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for GarageDoorEvent(0);
  MEMORY[0x28223BE20](v69);
  v74 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DoorEvent(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D948();
  v80 = *(v19 - 8);
  v81 = v19;
  MEMORY[0x28223BE20](v19);
  v79 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v68 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v68 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v68 - v31;
  v70 = type metadata accessor for ContactSensorEvent(0);
  MEMORY[0x28223BE20](v70);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SomeAccessoryEvent(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25423F514(v82, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v47 = v83;
      v48 = v81;
      if (EnumCaseMultiPayload != 5)
      {
        v14 = v71;
        sub_25423A0B4(v37, v71, type metadata accessor for ThermostatAutomationEvent);
        MEMORY[0x259C06AA0](6);
        ThermostatAutomationEvent.hash(into:)(v47);
        v40 = type metadata accessor for ThermostatAutomationEvent;
        goto LABEL_24;
      }

      v11 = v75;
      sub_25423A0B4(v37, v75, type metadata accessor for SmokeDetectorEvent);
      MEMORY[0x259C06AA0](5);
      sub_25424D8B8();
      sub_254240A44(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_25424DC28();
      v49 = type metadata accessor for EventBase(0);
      sub_254240A44(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_25424DC28();
      MEMORY[0x259C06AA0](qword_254263C40[v11[*(v49 + 24)]]);
      v50 = type metadata accessor for AccessoryEventBase(0);
      sub_25424DC28();
      sub_25424DD88();
      sub_25424DC28();
      sub_25424DD88();
      sub_254149770(&v11[*(v50 + 36)], v27);
      v51 = v80;
      if ((*(v80 + 48))(v27, 1, v48) == 1)
      {
        sub_25424EBF8();
      }

      else
      {
        v66 = v79;
        (*(v51 + 32))(v79, v27, v48);
        sub_25424EBF8();
        sub_25424DC28();
        (*(v51 + 8))(v66, v48);
      }

      MEMORY[0x259C06AA0](v11[*(v76 + 20)]);
      v56 = type metadata accessor for SmokeDetectorEvent;
    }

    else
    {
      v41 = v83;
      v42 = v81;
      if (EnumCaseMultiPayload == 7)
      {
        v14 = v72;
        sub_25423A0B4(v37, v72, type metadata accessor for ThermostatAutomationFailureEvent);
        MEMORY[0x259C06AA0](7);
        ThermostatAutomationFailureEvent.hash(into:)(v41);
        v40 = type metadata accessor for ThermostatAutomationFailureEvent;
        goto LABEL_24;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v14 = v73;
        sub_25423A0B4(v37, v73, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
        MEMORY[0x259C06AA0](8);
        ThermostatReducedEnergyAutomationEvent.hash(into:)(v41);
        v40 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        goto LABEL_24;
      }

      v11 = v77;
      sub_25423A0B4(v37, v77, type metadata accessor for WindowEvent);
      MEMORY[0x259C06AA0](9);
      sub_25424D8B8();
      sub_254240A44(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_25424DC28();
      v57 = type metadata accessor for EventBase(0);
      sub_254240A44(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_25424DC28();
      MEMORY[0x259C06AA0](qword_254263C40[v11[*(v57 + 24)]]);
      v58 = type metadata accessor for AccessoryEventBase(0);
      sub_25424DC28();
      sub_25424DD88();
      sub_25424DC28();
      sub_25424DD88();
      sub_254149770(&v11[*(v58 + 36)], v24);
      v59 = v80;
      if ((*(v80 + 48))(v24, 1, v42) == 1)
      {
        sub_25424EBF8();
      }

      else
      {
        v64 = v79;
        (*(v59 + 32))(v79, v24, v42);
        sub_25424EBF8();
        sub_25424DC28();
        (*(v59 + 8))(v64, v42);
      }

      MEMORY[0x259C06AA0](v11[*(v78 + 20)]);
      v56 = type metadata accessor for WindowEvent;
    }

LABEL_33:
    v61 = v56;
    v62 = v11;
    return sub_2542409E4(v62, v61);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = v74;
      sub_25423A0B4(v37, v74, type metadata accessor for GarageDoorEvent);
      MEMORY[0x259C06AA0](2);
      sub_25424D8B8();
      sub_254240A44(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_25424DC28();
      v52 = type metadata accessor for EventBase(0);
      sub_254240A44(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v53 = v81;
      sub_25424DC28();
      MEMORY[0x259C06AA0](qword_254263C40[v11[*(v52 + 24)]]);
      v54 = type metadata accessor for AccessoryEventBase(0);
      sub_25424DC28();
      sub_25424DD88();
      sub_25424DC28();
      sub_25424DD88();
      sub_254149770(&v11[*(v54 + 36)], v30);
      v55 = v80;
      if ((*(v80 + 48))(v30, 1, v53) == 1)
      {
        sub_25424EBF8();
      }

      else
      {
        v63 = v79;
        (*(v55 + 32))(v79, v30, v53);
        sub_25424EBF8();
        sub_25424DC28();
        (*(v55 + 8))(v63, v53);
      }

      MEMORY[0x259C06AA0](v11[*(v69 + 20)]);
      v56 = type metadata accessor for GarageDoorEvent;
    }

    else
    {
      v39 = v83;
      if (EnumCaseMultiPayload == 3)
      {
        sub_25423A0B4(v37, v14, type metadata accessor for LockEvent);
        MEMORY[0x259C06AA0](3);
        LockEvent.hash(into:)(v39);
        v40 = type metadata accessor for LockEvent;
LABEL_24:
        v61 = v40;
        v62 = v14;
        return sub_2542409E4(v62, v61);
      }

      sub_25423A0B4(v37, v11, type metadata accessor for SecuritySystemEvent);
      MEMORY[0x259C06AA0](4);
      SecuritySystemEvent.hash(into:)(v39);
      v56 = type metadata accessor for SecuritySystemEvent;
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    sub_25423A0B4(v37, v18, type metadata accessor for DoorEvent);
    v60 = v83;
    MEMORY[0x259C06AA0](1);
    DoorEvent.hash(into:)(v60);
    v61 = type metadata accessor for DoorEvent;
    v62 = v18;
  }

  else
  {
    sub_25423A0B4(v37, v34, type metadata accessor for ContactSensorEvent);
    MEMORY[0x259C06AA0](0);
    sub_25424D8B8();
    sub_254240A44(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_25424DC28();
    v43 = type metadata accessor for EventBase(0);
    sub_254240A44(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v44 = v81;
    sub_25424DC28();
    MEMORY[0x259C06AA0](qword_254263C40[v34[*(v43 + 24)]]);
    v45 = type metadata accessor for AccessoryEventBase(0);
    sub_25424DC28();
    sub_25424DD88();
    sub_25424DC28();
    sub_25424DD88();
    sub_254149770(&v34[*(v45 + 36)], v32);
    v46 = v80;
    if ((*(v80 + 48))(v32, 1, v44) == 1)
    {
      sub_25424EBF8();
    }

    else
    {
      v65 = v79;
      (*(v46 + 32))(v79, v32, v44);
      sub_25424EBF8();
      sub_25424DC28();
      (*(v46 + 8))(v65, v44);
    }

    MEMORY[0x259C06AA0](v34[*(v70 + 20)]);
    v61 = type metadata accessor for ContactSensorEvent;
    v62 = v34;
  }

  return sub_2542409E4(v62, v61);
}

uint64_t SomeAccessoryEvent.hashValue.getter()
{
  sub_25424EBD8();
  SomeAccessoryEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t SomeAccessoryEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC520, &qword_254262E30);
  v134 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v139 = &v103 - v3;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC528, &qword_254262E38);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v140 = &v103 - v4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC530, &qword_254262E40);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v136 = &v103 - v5;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC538, &qword_254262E48);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v146 = &v103 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC540, &qword_254262E50);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v138 = &v103 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC548, &qword_254262E58);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v137 = &v103 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC550, &qword_254262E60);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v135 = &v103 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC558, &qword_254262E68);
  v120 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v145 = &v103 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC560, &qword_254262E70);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v144 = &v103 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC568, &qword_254262E78);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v142 = &v103 - v12;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC570, &unk_254262E80);
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v14 = &v103 - v13;
  v147 = type metadata accessor for SomeAccessoryEvent(0);
  v15 = MEMORY[0x28223BE20](v147);
  v114 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v113 = &v103 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v103 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v111 = &v103 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v110 = &v103 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v109 = &v103 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v103 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v103 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v103 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v103 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v103 - v39;
  v41 = a1[3];
  v150 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_25423F4C0();
  v149 = v14;
  v42 = v151;
  sub_25424EC68();
  if (v42)
  {
    return __swift_destroy_boxed_opaque_existential_1(v150);
  }

  v104 = v35;
  v105 = v32;
  v107 = v29;
  v106 = v38;
  v43 = v142;
  v45 = v144;
  v44 = v145;
  v46 = v146;
  v151 = 0;
  v108 = v40;
  v48 = v147;
  v47 = v148;
  v49 = v143;
  v50 = v149;
  v51 = sub_25424E988();
  v52 = (2 * *(v51 + 16)) | 1;
  v152 = v51;
  v153 = v51 + 32;
  v154 = 0;
  v155 = v52;
  v53 = sub_25413B20C();
  if (v53 == 10 || v154 != v155 >> 1)
  {
    v59 = v50;
    v60 = sub_25424E6F8();
    swift_allocError();
    v62 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
    *v62 = v48;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D84160], v60);
    swift_willThrow();
    (*(v141 + 8))(v59, v49);
LABEL_37:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v150);
  }

  if (v53 > 4u)
  {
    if (v53 <= 6u)
    {
      if (v53 == 5)
      {
        v156 = 5;
        sub_25423F6C8();
        v75 = v138;
        v65 = v50;
        v76 = v151;
        sub_25424E8F8();
        v63 = v108;
        if (!v76)
        {
          type metadata accessor for SmokeDetectorEvent(0);
          sub_254240A44(&qword_27F5BACE8, type metadata accessor for SmokeDetectorEvent, &protocol conformance descriptor for SmokeDetectorEvent);
          v77 = v110;
          v78 = v126;
          sub_25424E978();
          (*(v125 + 8))(v75, v78);
          (*(v141 + 8))(v50, v49);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v74 = v77;
          v73 = v150;
          v47 = v148;
          goto LABEL_43;
        }

        goto LABEL_33;
      }

      v156 = 6;
      sub_25423F674();
      v96 = v46;
      v70 = v50;
      v97 = v151;
      sub_25424E8F8();
      v63 = v108;
      if (v97)
      {
        goto LABEL_35;
      }

      type metadata accessor for ThermostatAutomationEvent(0);
      sub_254240A44(&qword_27F5B9830, type metadata accessor for ThermostatAutomationEvent, &protocol conformance descriptor for ThermostatAutomationEvent);
      v98 = v111;
      v99 = v128;
      sub_25424E978();
      v102 = v98;
      (*(v127 + 8))(v96, v99);
      (*(v141 + 8))(v149, v49);
      swift_unknownObjectRelease();
      goto LABEL_41;
    }

    if (v53 != 7)
    {
      v63 = v108;
      if (v53 == 8)
      {
        v156 = 8;
        sub_25423F5CC();
        v64 = v140;
        v65 = v50;
        v66 = v151;
        sub_25424E8F8();
        if (!v66)
        {
          type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          sub_254240A44(&qword_27F5BA858, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent);
          v67 = v113;
          v68 = v133;
          sub_25424E978();
          v102 = v67;
          (*(v132 + 8))(v64, v68);
          (*(v141 + 8))(v65, v49);
          swift_unknownObjectRelease();
LABEL_41:
          swift_storeEnumTagMultiPayload();
          v74 = v102;
          goto LABEL_42;
        }
      }

      else
      {
        v156 = 9;
        sub_25423F578();
        v90 = v139;
        v65 = v50;
        v91 = v151;
        sub_25424E8F8();
        if (!v91)
        {
          type metadata accessor for WindowEvent(0);
          sub_254240A44(&qword_27F5BB1A8, type metadata accessor for WindowEvent, &protocol conformance descriptor for WindowEvent);
          v92 = v114;
          v93 = v131;
          sub_25424E978();
          (*(v134 + 8))(v90, v93);
          (*(v141 + 8))(v149, v49);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v74 = v92;
LABEL_42:
          v73 = v150;
          goto LABEL_43;
        }
      }

LABEL_33:
      (*(v141 + 8))(v65, v49);
      goto LABEL_37;
    }

    v156 = 7;
    sub_25423F620();
    v83 = v136;
    v70 = v50;
    v84 = v151;
    sub_25424E8F8();
    v63 = v108;
    if (v84)
    {
      goto LABEL_35;
    }

    type metadata accessor for ThermostatAutomationFailureEvent(0);
    sub_254240A44(&qword_27F5BAB90, type metadata accessor for ThermostatAutomationFailureEvent, &protocol conformance descriptor for ThermostatAutomationFailureEvent);
    v85 = v112;
    v86 = v130;
    sub_25424E978();
    v102 = v85;
    (*(v129 + 8))(v83, v86);
    (*(v141 + 8))(v149, v49);
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  if (v53 > 1u)
  {
    v54 = v151;
    if (v53 != 2)
    {
      if (v53 == 3)
      {
        v156 = 3;
        sub_25423F770();
        v55 = v135;
        v56 = v50;
        sub_25424E8F8();
        if (!v54)
        {
          type metadata accessor for LockEvent(0);
          sub_254240A44(&qword_27F5B8E98, type metadata accessor for LockEvent, &protocol conformance descriptor for LockEvent);
          v57 = v122;
          sub_25424E978();
          v58 = v141;
          (*(v121 + 8))(v55, v57);
          (*(v58 + 8))(v56, v49);
          swift_unknownObjectRelease();
          v101 = v107;
LABEL_39:
          swift_storeEnumTagMultiPayload();
          v74 = v101;
          goto LABEL_40;
        }
      }

      else
      {
        v156 = 4;
        sub_25423F71C();
        v87 = v137;
        v56 = v50;
        sub_25424E8F8();
        if (!v54)
        {
          type metadata accessor for SecuritySystemEvent(0);
          sub_254240A44(&qword_27F5BA128, type metadata accessor for SecuritySystemEvent, &protocol conformance descriptor for SecuritySystemEvent);
          v88 = v109;
          v89 = v124;
          sub_25424E978();
          v101 = v88;
          (*(v123 + 8))(v87, v89);
          (*(v141 + 8))(v56, v49);
          swift_unknownObjectRelease();
          goto LABEL_39;
        }
      }

      (*(v141 + 8))(v56, v49);
      goto LABEL_37;
    }

    v156 = 2;
    sub_25423F7C4();
    v79 = v44;
    v70 = v50;
    sub_25424E8F8();
    if (!v54)
    {
      type metadata accessor for GarageDoorEvent(0);
      sub_254240A44(qword_27F5BB2D8, type metadata accessor for GarageDoorEvent, &protocol conformance descriptor for GarageDoorEvent);
      v80 = v105;
      v81 = v119;
      sub_25424E978();
      v82 = v141;
      (*(v120 + 8))(v79, v81);
      (*(v82 + 8))(v70, v49);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v74 = v80;
LABEL_40:
      v73 = v150;
      v63 = v108;
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  v69 = v151;
  if (v53)
  {
    v156 = 1;
    sub_25423F818();
    v65 = v50;
    sub_25424E8F8();
    if (!v69)
    {
      type metadata accessor for DoorEvent(0);
      sub_254240A44(&qword_27F5BB2D0, type metadata accessor for DoorEvent, &protocol conformance descriptor for DoorEvent);
      v94 = v104;
      v95 = v118;
      sub_25424E978();
      v101 = v94;
      (*(v117 + 8))(v45, v95);
      (*(v141 + 8))(v65, v49);
      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v156 = 0;
  sub_25423F86C();
  v70 = v50;
  sub_25424E8F8();
  v63 = v108;
  if (v69)
  {
LABEL_35:
    (*(v141 + 8))(v70, v49);
    goto LABEL_37;
  }

  type metadata accessor for ContactSensorEvent(0);
  sub_254240A44(&qword_27F5BB2C8, type metadata accessor for ContactSensorEvent, &protocol conformance descriptor for ContactSensorEvent);
  v71 = v106;
  v72 = v116;
  sub_25424E978();
  (*(v115 + 8))(v43, v72);
  (*(v141 + 8))(v149, v49);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v73 = v150;
  v74 = v71;
LABEL_43:
  sub_25423A0B4(v74, v63, type metadata accessor for SomeAccessoryEvent);
  sub_25423A0B4(v63, v47, type metadata accessor for SomeAccessoryEvent);
  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_25423E3C4()
{
  sub_25424EBD8();
  SomeAccessoryEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_25423E408(uint64_t a1)
{
  sub_25424EBD8();
  SomeAccessoryEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t _s13HomeKitEvents18SomeAccessoryEventO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v132 = a1;
  v117 = type metadata accessor for WindowEvent(0);
  MEMORY[0x28223BE20](v117);
  v127 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  MEMORY[0x28223BE20](v116);
  v126 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ThermostatAutomationFailureEvent(0);
  MEMORY[0x28223BE20](v115);
  v124 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ThermostatAutomationEvent(0);
  MEMORY[0x28223BE20](v114);
  v125 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for SmokeDetectorEvent(0);
  MEMORY[0x28223BE20](v113);
  v123 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SecuritySystemEvent(0);
  MEMORY[0x28223BE20](v112);
  v122 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for LockEvent(0);
  MEMORY[0x28223BE20](v111);
  v121 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for GarageDoorEvent(0);
  MEMORY[0x28223BE20](v110);
  v120 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DoorEvent(0);
  MEMORY[0x28223BE20](v109);
  v119 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for ContactSensorEvent(0);
  MEMORY[0x28223BE20](v108);
  v118 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SomeAccessoryEvent(0);
  v14 = MEMORY[0x28223BE20](v13);
  v130 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v129 = &v108 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v128 = &v108 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v131 = &v108 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v108 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v108 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v108 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v108 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v108 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v108 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BC698, &unk_254263C30);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v42 = &v108 - v41;
  v43 = *(v40 + 56);
  sub_25423F514(v132, &v108 - v41);
  sub_25423F514(a2, &v42[v43]);
  v44 = v42;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v57 = EnumCaseMultiPayload == 5;
      v46 = v42;
      v58 = v42;
      if (v57)
      {
        sub_25423F514(v42, v24);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v59 = v123;
          sub_25423A0B4(&v42[v43], v123, type metadata accessor for SmokeDetectorEvent);
          if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v24, v59))
          {
            v60 = *(v113 + 20);
            v61 = v24[v60];
            v62 = *(v59 + v60);
            sub_2542409E4(v59, type metadata accessor for SmokeDetectorEvent);
            if (v61 == v62)
            {
              v51 = type metadata accessor for SmokeDetectorEvent;
              v52 = v24;
              goto LABEL_95;
            }
          }

          else
          {
            sub_2542409E4(v59, type metadata accessor for SmokeDetectorEvent);
          }

          v104 = type metadata accessor for SmokeDetectorEvent;
          v105 = v24;
LABEL_82:
          sub_2542409E4(v105, v104);
          v106 = v46;
LABEL_83:
          sub_2542409E4(v106, type metadata accessor for SomeAccessoryEvent);
          return 0;
        }

        v95 = type metadata accessor for SmokeDetectorEvent;
        v96 = v24;
LABEL_62:
        sub_2542409E4(v96, v95);
        goto LABEL_63;
      }

      v53 = v131;
      sub_25423F514(v58, v131);
      v85 = swift_getEnumCaseMultiPayload();
      if (v85 == 6)
      {
        v86 = v125;
        sub_25423A0B4(v44 + v43, v125, type metadata accessor for ThermostatAutomationEvent);
        if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v53, v86) && (v87 = *(v114 + 20), v88 = v53 + v87, v89 = v86 + v87, (_s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(v53 + v87, v86 + v87) & 1) != 0))
        {
          v90 = *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20);
          v91 = *(v88 + v90 + 8);
          v135 = *(v88 + v90);
          v136 = v91;
          v92 = v89 + v90;
          v93 = *v92;
          LOBYTE(v92) = *(v92 + 8);
          v133 = v93;
          v134 = v92;
          v94 = _s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(&v135, &v133);
          sub_2542409E4(v86, type metadata accessor for ThermostatAutomationEvent);
          if (v94)
          {
            v56 = type metadata accessor for ThermostatAutomationEvent;
            goto LABEL_94;
          }
        }

        else
        {
          sub_2542409E4(v86, type metadata accessor for ThermostatAutomationEvent);
        }

        v103 = type metadata accessor for ThermostatAutomationEvent;
        goto LABEL_81;
      }

      v97 = type metadata accessor for ThermostatAutomationEvent;
      goto LABEL_61;
    }

    v46 = v42;
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v53 = v129;
        sub_25423F514(v44, v129);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v54 = v126;
          sub_25423A0B4(v44 + v43, v126, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v53, v54))
          {
            v55 = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV5StateV2eeoiySbAE_AEtFZ_0(v53 + *(v116 + 20), v54 + *(v116 + 20));
            sub_2542409E4(v54, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            if (v55)
            {
              v56 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
LABEL_94:
              v51 = v56;
              v52 = v53;
              goto LABEL_95;
            }
          }

          else
          {
            sub_2542409E4(v54, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          }

          v103 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          goto LABEL_81;
        }

        v97 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
      }

      else
      {
        v53 = v130;
        sub_25423F514(v44, v130);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v77 = v127;
          sub_25423A0B4(v44 + v43, v127, type metadata accessor for WindowEvent);
          if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v53, v77))
          {
            v78 = *(v117 + 20);
            v79 = *(v53 + v78);
            v80 = *(v77 + v78);
            sub_2542409E4(v77, type metadata accessor for WindowEvent);
            if (v79 == v80)
            {
              v56 = type metadata accessor for WindowEvent;
              goto LABEL_94;
            }
          }

          else
          {
            sub_2542409E4(v77, type metadata accessor for WindowEvent);
          }

          v103 = type metadata accessor for WindowEvent;
LABEL_81:
          v104 = v103;
          v105 = v53;
          goto LABEL_82;
        }

        v97 = type metadata accessor for WindowEvent;
      }

LABEL_61:
      v95 = v97;
      v96 = v53;
      goto LABEL_62;
    }

    v53 = v128;
    sub_25423F514(v44, v128);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v97 = type metadata accessor for ThermostatAutomationFailureEvent;
      goto LABEL_61;
    }

    v67 = v44 + v43;
    v68 = v124;
    sub_25423A0B4(v67, v124, type metadata accessor for ThermostatAutomationFailureEvent);
    if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v53, v68))
    {
      v69 = *(v115 + 20);
      v70 = *(v53 + v69);
      v71 = *(v68 + v69);
      sub_2542409E4(v68, type metadata accessor for ThermostatAutomationFailureEvent);
      if (v70 == 4)
      {
        if (v71 == 4)
        {
LABEL_93:
          v56 = type metadata accessor for ThermostatAutomationFailureEvent;
          goto LABEL_94;
        }
      }

      else if (v71 != 4 && v70 == v71)
      {
        goto LABEL_93;
      }
    }

    else
    {
      sub_2542409E4(v68, type metadata accessor for ThermostatAutomationFailureEvent);
    }

    v103 = type metadata accessor for ThermostatAutomationFailureEvent;
    goto LABEL_81;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v46 = v42;
      sub_25423F514(v42, v33);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v63 = v120;
        sub_25423A0B4(&v42[v43], v120, type metadata accessor for GarageDoorEvent);
        if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v33, v63))
        {
          v64 = *(v110 + 20);
          v65 = v33[v64];
          v66 = *(v63 + v64);
          sub_2542409E4(v63, type metadata accessor for GarageDoorEvent);
          if (v65 == v66)
          {
            v51 = type metadata accessor for GarageDoorEvent;
            v52 = v33;
            goto LABEL_95;
          }
        }

        else
        {
          sub_2542409E4(v63, type metadata accessor for GarageDoorEvent);
        }

        v104 = type metadata accessor for GarageDoorEvent;
        v105 = v33;
        goto LABEL_82;
      }

      v95 = type metadata accessor for GarageDoorEvent;
      v96 = v33;
    }

    else
    {
      v46 = v42;
      if (EnumCaseMultiPayload != 3)
      {
        sub_25423F514(v42, v27);
        v72 = swift_getEnumCaseMultiPayload();
        if (v72 == 4)
        {
          v73 = v122;
          sub_25423A0B4(&v42[v43], v122, type metadata accessor for SecuritySystemEvent);
          if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v27, v73))
          {
            v74 = *(v112 + 20);
            v75 = v27[v74];
            v76 = *(v73 + v74);
            sub_2542409E4(v73, type metadata accessor for SecuritySystemEvent);
            if (qword_254263C78[v75] == qword_254263C78[v76])
            {
              v51 = type metadata accessor for SecuritySystemEvent;
              v52 = v27;
              goto LABEL_95;
            }
          }

          else
          {
            sub_2542409E4(v73, type metadata accessor for SecuritySystemEvent);
          }

          v104 = type metadata accessor for SecuritySystemEvent;
          v105 = v27;
          goto LABEL_82;
        }

        v95 = type metadata accessor for SecuritySystemEvent;
        v96 = v27;
        goto LABEL_62;
      }

      sub_25423F514(v42, v30);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v47 = v121;
        sub_25423A0B4(&v42[v43], v121, type metadata accessor for LockEvent);
        if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v30, v47))
        {
          v48 = *(v111 + 20);
          v49 = v30[v48];
          v50 = *(v47 + v48);
          sub_2542409E4(v47, type metadata accessor for LockEvent);
          if (v49 == v50)
          {
            v51 = type metadata accessor for LockEvent;
            v52 = v30;
LABEL_95:
            sub_2542409E4(v52, v51);
            v102 = v46;
            goto LABEL_96;
          }
        }

        else
        {
          sub_2542409E4(v47, type metadata accessor for LockEvent);
        }

        v104 = type metadata accessor for LockEvent;
        v105 = v30;
        goto LABEL_82;
      }

      v95 = type metadata accessor for LockEvent;
      v96 = v30;
    }

    goto LABEL_62;
  }

  if (EnumCaseMultiPayload)
  {
    v46 = v42;
    sub_25423F514(v42, v36);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v81 = v119;
      sub_25423A0B4(v44 + v43, v119, type metadata accessor for DoorEvent);
      if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v36, v81))
      {
        v82 = *(v109 + 20);
        v83 = v36[v82];
        v84 = *(v81 + v82);
        sub_2542409E4(v81, type metadata accessor for DoorEvent);
        if (v83 == v84)
        {
          v51 = type metadata accessor for DoorEvent;
          v52 = v36;
          goto LABEL_95;
        }
      }

      else
      {
        sub_2542409E4(v81, type metadata accessor for DoorEvent);
      }

      v104 = type metadata accessor for DoorEvent;
      v105 = v36;
      goto LABEL_82;
    }

    v95 = type metadata accessor for DoorEvent;
    v96 = v36;
    goto LABEL_62;
  }

  sub_25423F514(v42, v38);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2542409E4(v38, type metadata accessor for ContactSensorEvent);
    v46 = v42;
LABEL_63:
    sub_25424097C(v46);
    return 0;
  }

  v98 = v118;
  sub_25423A0B4(v44 + v43, v118, type metadata accessor for ContactSensorEvent);
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v38, v98))
  {
    sub_2542409E4(v98, type metadata accessor for ContactSensorEvent);
    goto LABEL_90;
  }

  v99 = *(v108 + 20);
  v100 = v38[v99];
  v101 = *(v98 + v99);
  sub_2542409E4(v98, type metadata accessor for ContactSensorEvent);
  if (v100 != v101)
  {
LABEL_90:
    sub_2542409E4(v38, type metadata accessor for ContactSensorEvent);
    v106 = v44;
    goto LABEL_83;
  }

  sub_2542409E4(v38, type metadata accessor for ContactSensorEvent);
  v102 = v44;
LABEL_96:
  sub_2542409E4(v102, type metadata accessor for SomeAccessoryEvent);
  return 1;
}

unint64_t sub_25423F4C0()
{
  result = qword_27F5BC4C8;
  if (!qword_27F5BC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4C8);
  }

  return result;
}

uint64_t sub_25423F514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SomeAccessoryEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25423F578()
{
  result = qword_27F5BC4D0;
  if (!qword_27F5BC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4D0);
  }

  return result;
}

unint64_t sub_25423F5CC()
{
  result = qword_27F5BC4D8;
  if (!qword_27F5BC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4D8);
  }

  return result;
}

unint64_t sub_25423F620()
{
  result = qword_27F5BC4E0;
  if (!qword_27F5BC4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4E0);
  }

  return result;
}

unint64_t sub_25423F674()
{
  result = qword_27F5BC4E8;
  if (!qword_27F5BC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4E8);
  }

  return result;
}

unint64_t sub_25423F6C8()
{
  result = qword_27F5BC4F0;
  if (!qword_27F5BC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4F0);
  }

  return result;
}

unint64_t sub_25423F71C()
{
  result = qword_27F5BC4F8;
  if (!qword_27F5BC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4F8);
  }

  return result;
}

unint64_t sub_25423F770()
{
  result = qword_27F5BC500;
  if (!qword_27F5BC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC500);
  }

  return result;
}

unint64_t sub_25423F7C4()
{
  result = qword_27F5BC508;
  if (!qword_27F5BC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC508);
  }

  return result;
}

unint64_t sub_25423F818()
{
  result = qword_27F5BC510;
  if (!qword_27F5BC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC510);
  }

  return result;
}

unint64_t sub_25423F86C()
{
  result = qword_27F5BC518;
  if (!qword_27F5BC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC518);
  }

  return result;
}

uint64_t sub_25423F908(uint64_t a1)
{
  result = type metadata accessor for ContactSensorEvent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DoorEvent(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for GarageDoorEvent(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for LockEvent(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for SecuritySystemEvent(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for SmokeDetectorEvent(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ThermostatAutomationEvent(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for ThermostatAutomationFailureEvent(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for ThermostatReducedEnergyAutomationEvent(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for WindowEvent(319);
                    if (v11 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
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

  return result;
}

unint64_t sub_25423FAD0()
{
  result = qword_27F5BC590;
  if (!qword_27F5BC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC590);
  }

  return result;
}

unint64_t sub_25423FB28()
{
  result = qword_27F5BC598;
  if (!qword_27F5BC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC598);
  }

  return result;
}

unint64_t sub_25423FB80()
{
  result = qword_27F5BC5A0;
  if (!qword_27F5BC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5A0);
  }

  return result;
}

unint64_t sub_25423FBD8()
{
  result = qword_27F5BC5A8;
  if (!qword_27F5BC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5A8);
  }

  return result;
}

unint64_t sub_25423FC30()
{
  result = qword_27F5BC5B0;
  if (!qword_27F5BC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5B0);
  }

  return result;
}

unint64_t sub_25423FC88()
{
  result = qword_27F5BC5B8;
  if (!qword_27F5BC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5B8);
  }

  return result;
}

unint64_t sub_25423FCE0()
{
  result = qword_27F5BC5C0;
  if (!qword_27F5BC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5C0);
  }

  return result;
}

unint64_t sub_25423FD38()
{
  result = qword_27F5BC5C8;
  if (!qword_27F5BC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5C8);
  }

  return result;
}

unint64_t sub_25423FD90()
{
  result = qword_27F5BC5D0;
  if (!qword_27F5BC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5D0);
  }

  return result;
}

unint64_t sub_25423FDE8()
{
  result = qword_27F5BC5D8;
  if (!qword_27F5BC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5D8);
  }

  return result;
}

unint64_t sub_25423FE40()
{
  result = qword_27F5BC5E0;
  if (!qword_27F5BC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5E0);
  }

  return result;
}

unint64_t sub_25423FE98()
{
  result = qword_27F5BC5E8;
  if (!qword_27F5BC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5E8);
  }

  return result;
}

unint64_t sub_25423FEF0()
{
  result = qword_27F5BC5F0;
  if (!qword_27F5BC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5F0);
  }

  return result;
}

unint64_t sub_25423FF48()
{
  result = qword_27F5BC5F8;
  if (!qword_27F5BC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5F8);
  }

  return result;
}

unint64_t sub_25423FFA0()
{
  result = qword_27F5BC600;
  if (!qword_27F5BC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC600);
  }

  return result;
}

unint64_t sub_25423FFF8()
{
  result = qword_27F5BC608;
  if (!qword_27F5BC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC608);
  }

  return result;
}

unint64_t sub_254240050()
{
  result = qword_27F5BC610;
  if (!qword_27F5BC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC610);
  }

  return result;
}

unint64_t sub_2542400A8()
{
  result = qword_27F5BC618;
  if (!qword_27F5BC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC618);
  }

  return result;
}

unint64_t sub_254240100()
{
  result = qword_27F5BC620;
  if (!qword_27F5BC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC620);
  }

  return result;
}

unint64_t sub_254240158()
{
  result = qword_27F5BC628;
  if (!qword_27F5BC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC628);
  }

  return result;
}

unint64_t sub_2542401B0()
{
  result = qword_27F5BC630;
  if (!qword_27F5BC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC630);
  }

  return result;
}

unint64_t sub_254240208()
{
  result = qword_27F5BC638;
  if (!qword_27F5BC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC638);
  }

  return result;
}

unint64_t sub_254240260()
{
  result = qword_27F5BC640;
  if (!qword_27F5BC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC640);
  }

  return result;
}

unint64_t sub_2542402B8()
{
  result = qword_27F5BC648;
  if (!qword_27F5BC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC648);
  }

  return result;
}

unint64_t sub_254240310()
{
  result = qword_27F5BC650;
  if (!qword_27F5BC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC650);
  }

  return result;
}

unint64_t sub_254240368()
{
  result = qword_27F5BC658;
  if (!qword_27F5BC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC658);
  }

  return result;
}

unint64_t sub_2542403C0()
{
  result = qword_27F5BC660;
  if (!qword_27F5BC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC660);
  }

  return result;
}

unint64_t sub_254240418()
{
  result = qword_27F5BC668;
  if (!qword_27F5BC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC668);
  }

  return result;
}

unint64_t sub_254240470()
{
  result = qword_27F5BC670;
  if (!qword_27F5BC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC670);
  }

  return result;
}

unint64_t sub_2542404C8()
{
  result = qword_27F5BC678;
  if (!qword_27F5BC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC678);
  }

  return result;
}

unint64_t sub_254240520()
{
  result = qword_27F5BC680;
  if (!qword_27F5BC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC680);
  }

  return result;
}

unint64_t sub_254240578()
{
  result = qword_27F5BC688;
  if (!qword_27F5BC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC688);
  }

  return result;
}

unint64_t sub_2542405D0()
{
  result = qword_27F5BC690;
  if (!qword_27F5BC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC690);
  }

  return result;
}

uint64_t sub_254240624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746361746E6F63 && a2 == 0xED0000726F736E65;
  if (v4 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1919905636 && a2 == 0xE400000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F44656761726167 && a2 == 0xEA0000000000726FLL || (sub_25424EAB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1801678700 && a2 == 0xE400000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974697275636573 && a2 == 0xEE006D6574737953 || (sub_25424EAB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746544656B6F6D73 && a2 == 0xED0000726F746365 || (sub_25424EAB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002542522F0 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000254252310 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000254252330 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x776F646E6977 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_25424EAB8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_25424097C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BC698, &unk_254263C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2542409E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254240A44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254240A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for AsyncDecompressionStream.AsyncIterator(0, a2, a3, a5);
  v8 = (a4 + v7[9]);
  v9 = MEMORY[0x277D84F90];
  v8[1] = 0;
  v8[2] = 0;
  *v8 = v9;
  *(a4 + v7[10]) = 1;
  v10 = a4 + v7[11];
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a4 + v7[12]) = xmmword_254252DB0;
  *(a4 + v7[13]) = xmmword_254252DB0;
  *(a4 + v7[14]) = xmmword_254252DB0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 32);

  return v12(a4, a1, AssociatedTypeWitness);
}

uint64_t sub_254240B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v12 = &v15 - v11;
  (*(v5 + 16))(v8, v2, v4);
  sub_25424E208();
  return sub_254240A8C(v12, v4, v9, a2, v13);
}

uint64_t sub_254240CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_254240B7C(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_254240D28(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_254240D48, 0, 0);
}

uint64_t sub_254240D48(uint64_t a1)
{
  v59 = v1;
  sub_25424E1E8();
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
  v4 = *(v3 + 56);
  *(v1 + 96) = v4;
  v5 = *(v2 + v4 + 8);
  if (v5 >> 60 != 15)
  {
LABEL_77:
    v51 = *(v2 + v4);
    sub_254140660(v51, v5);
    v53 = (v2 + *(type metadata accessor for AsyncDecompressionStream.AsyncIterator(0, *(v3 + 16), *(v3 + 24), v52) + 56));
    v54 = *v53;
    v55 = v53[1];
    *v53 = xmmword_254252DB0;
    sub_254134CF0(v54, v55);
    v56 = *(v1 + 8);

    return v56(v51, v5);
  }

  LOBYTE(v6) = 1;
  while (1)
  {
    v7 = *(v1 + 64);
    v8 = *(v7 + 40);
    *(v1 + 100) = v8;
    if (*(v2 + v8) == 1)
    {
      break;
    }

    if (sub_254241E90(v7))
    {
      v9 = *(v1 + 64);
      v10 = (*(v1 + 72) + *(v9 + 36));
      v11 = v10[2];
      v12 = sub_254241FA0(v9);
      if ((v12 & 0x100000000) == 0)
      {
        v13 = (v12 & 0xFFFFFFF) + 4;
        if (v11 >= v13)
        {
          v14 = *v10;
          v15 = v10[1];
          *(v1 + 16) = xmmword_254252DC0;
          v58[0] = 0;
          sub_2541CF898((v12 & 0xFFFFFFF) + 4, v14, v15, v11, (v1 + 16), v58, v13);
          v17 = *(v1 + 16);
          v16 = *(v1 + 24);
          sub_254140660(v17, v16);
          sub_254134D04(v17, v16);
          sub_254140660(v17, v16);
          v18 = sub_2541BE53C(v17, v16, (v1 + 32));
          v21 = v18;
          v22 = v19;
          v23 = v20;
          if ((v20 & 0x2000000000000000) != 0)
          {
            v26 = v19 >> 62;
            if ((v19 >> 62) > 1)
            {
              if (v26 != 2)
              {
                goto LABEL_90;
              }

              v29 = *(v18 + 16);
              v18 = v29 + 4;
              if (__OFADD__(v29, 4))
              {
                goto LABEL_81;
              }

              v27 = *(v21 + 24);
              if (v18 < v29)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v27 = v18 >> 32;
              if (v26)
              {
                v28 = v18;
              }

              else
              {
                v27 = BYTE6(v19);
                v28 = 0;
              }

              if (v26)
              {
                v18 = v18 + 4;
              }

              else
              {
                v18 = 4;
              }

              if (v18 < v28)
              {
                goto LABEL_90;
              }
            }

            if (v27 < v18)
            {
              goto LABEL_90;
            }

            if (v26)
            {
              if (v26 == 2)
              {
                v30 = *(v21 + 16);
                v19 = *(v21 + 24);
              }

              else
              {
                v30 = v21;
                v19 = v21 >> 32;
              }
            }

            else
            {
              v30 = 0;
              v19 = BYTE6(v19);
            }

            if (v19 < v18 || v19 < v30)
            {
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
              return MEMORY[0x282200308](v18, v19, v20);
            }

            v24 = sub_25424D4B8();
          }

          else
          {
            sub_254243844(v18, v19, v20, sub_254140660);
            v24 = v22;
            v25 = v23;
          }

          v31 = v25 >> 62;
          if ((v25 >> 62) > 1)
          {
            if (v31 != 2)
            {
              sub_254134D04(v24, v25);
LABEL_45:
              v37 = *(v1 + 64);
              v36 = *(v1 + 72);
              sub_254243844(v21, v22, v23, sub_254134D04);
              sub_254134D04(v17, v16);
              goto LABEL_73;
            }

            v6 = *(v24 + 16);
            v33 = *(v24 + 24);
            v18 = sub_254134D04(v24, v25);
          }

          else
          {
            if (!v31)
            {
              v32 = v25;
              v18 = sub_254134D04(v24, v25);
              if ((v32 & 0xFF000000000000) == 0)
              {
                goto LABEL_45;
              }

              goto LABEL_41;
            }

            v34 = v24;
            v18 = sub_254134D04(v24, v25);
            v6 = v34;
            v33 = v34 >> 32;
          }

          v35 = v6 == v33;
          LOBYTE(v6) = 1;
          if (v35)
          {
            goto LABEL_45;
          }

LABEL_41:
          if ((v23 & 0x2000000000000000) == 0)
          {
            if ((v21 & 1) == 0)
            {
              LOBYTE(v6) = 1;
              goto LABEL_72;
            }

LABEL_63:
            sub_2542423E4(v21, v22, v23, *(v1 + 64));
            v6 = *(v1 + 64);
            v43 = *(v1 + 72);
            sub_254243844(v21, v22, v23, sub_254134D04);
            sub_254134D04(v17, v16);
            sub_254242364(v43, v13, *(v6 + 16), *(v6 + 24));
            LOBYTE(v6) = 1;
            goto LABEL_8;
          }

          v6 = v22 >> 62;
          if ((v22 >> 62) > 1)
          {
            if (v6 != 2)
            {
              goto LABEL_91;
            }

            v40 = *(v21 + 16);
            v39 = *(v21 + 24);
            v38 = v39 - v40;
            if (__OFSUB__(v39, v40))
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (!v6)
            {
              v38 = BYTE6(v22);
LABEL_56:
              if (v38 < 4)
              {
                goto LABEL_91;
              }

              v41 = sub_2542435B8(v21, v22);
              v18 = sub_254243844(v21, v22, v23, sub_254134D04);
              if (!(v41 >> 28))
              {
                if (v6)
                {
                  if (v6 == 1)
                  {
                    v42 = v21;
                    v18 = v21 + 4;
                    v19 = v21 >> 32;
                    if (v21 >> 32 < v18)
                    {
                      goto LABEL_88;
                    }
                  }

                  else
                  {
                    LOBYTE(v6) = 1;
                    v42 = *(v21 + 16);
                    v18 = v42 + 4;
                    if (__OFADD__(v42, 4))
                    {
                      goto LABEL_86;
                    }

                    if (v18 < v42)
                    {
                      goto LABEL_89;
                    }

                    v19 = *(v21 + 24);
                    if (v19 < v18)
                    {
                      goto LABEL_89;
                    }
                  }
                }

                else
                {
                  LOBYTE(v6) = 1;
                  if ((v22 & 0xFC000000000000) == 0)
                  {
                    goto LABEL_87;
                  }

                  v42 = 0;
                  v19 = BYTE6(v22);
                  v18 = 4;
                }

                if (v19 < v42 || v19 < v18)
                {
                  goto LABEL_83;
                }

                v44 = sub_25424D4B8();
                v46 = v45;
                sub_254243844(v21, v22, v23, sub_254134D04);
                v22 = v44;
                v23 = v46;
LABEL_72:
                v37 = *(v1 + 64);
                v36 = *(v1 + 72);
                v47 = v36 + *(v1 + 96);
                sub_254134D04(v17, v16);
                sub_254134CF0(*v47, *(v47 + 8));
                *v47 = v22;
                *(v47 + 8) = v23;
LABEL_73:
                sub_254242364(v36, v13, *(v37 + 16), *(v37 + 24));
                goto LABEL_8;
              }

              if (v41 >> 28 != 1)
              {
                goto LABEL_82;
              }

              goto LABEL_63;
            }

            if (__OFSUB__(HIDWORD(v21), v21))
            {
              goto LABEL_84;
            }

            v38 = HIDWORD(v21) - v21;
          }

          v18 = sub_254243844(v21, v22, v23, sub_254140660);
          goto LABEL_56;
        }
      }
    }

    *(*(v1 + 72) + *(v1 + 100)) = v6;
LABEL_8:
    v4 = *(v1 + 96);
    v2 = *(v1 + 72);
    v5 = *(v2 + v4 + 8);
    if (v5 >> 60 != 15)
    {
      v3 = *(v1 + 64);
      goto LABEL_77;
    }
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = swift_task_alloc();
  *(v1 + 80) = v50;
  *v50 = v1;
  v50[1] = sub_254241448;
  v18 = v1 + 48;
  v19 = AssociatedTypeWitness;
  v20 = AssociatedConformanceWitness;

  return MEMORY[0x282200308](v18, v19, v20);
}

uint64_t sub_254241448()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_254241E78;
  }

  else
  {
    v2 = sub_25424155C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25424155C()
{
  v86 = v0;
  v1 = v0 + 48;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (v3 >> 60 != 15)
  {
    v14 = *(v0 + 72);
    v15 = *(*(v0 + 64) + 36);
    v16 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v16 != 2 || *(v2 + 16) == *(v2 + 24))
      {
        goto LABEL_23;
      }
    }

    else if (v16)
    {
      if (v2 == v2 >> 32)
      {
LABEL_23:
        sub_254134CF0(*(v0 + 48), *(v0 + 56));
LABEL_29:
        v82 = v1;
        v83 = (v1 - 16);
        *&v84 = v1 - 32;
        *(*(v0 + 72) + *(v0 + 100)) = 0;
        v32 = *(v0 + 88);
        v33 = *(v0 + 64);
        while (1)
        {
          v34 = sub_254241E90(v33);
          v18 = v32;
          if (v32)
          {
            goto LABEL_6;
          }

          if (v34)
          {
            v35 = *(v0 + 64);
            v3 = *(v0 + 72);
            v36 = (v3 + *(v35 + 36));
            v37 = v36[2];
            v38 = sub_254241FA0(v35);
            if ((v38 & 0x100000000) == 0)
            {
              v39 = (v38 & 0xFFFFFFF) + 4;
              if (v37 >= v39)
              {
                break;
              }
            }
          }

          *(*(v0 + 72) + *(v0 + 100)) = 1;
LABEL_35:
          v4 = *(v0 + 72);
          v40 = (v4 + *(v0 + 96));
          v6 = v40[1];
          if (v6 >> 60 != 15)
          {
            v7 = *v40;
            goto LABEL_103;
          }

          v32 = 0;
          v33 = *(v0 + 64);
          v41 = *(v33 + 40);
          *(v0 + 100) = v41;
          if (*(v4 + v41) == 1)
          {
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v81 = swift_task_alloc();
            *(v0 + 80) = v81;
            *v81 = v0;
            v81[1] = sub_254241448;
            isUniquelyReferenced_nonNull_native = v82;
            v20 = AssociatedTypeWitness;
            v21 = AssociatedConformanceWitness;

            return MEMORY[0x282200308](isUniquelyReferenced_nonNull_native, v20, v21);
          }
        }

        v42 = *v36;
        v43 = v36[1];
        *(v0 + 16) = xmmword_254252DC0;
        v85[0] = 0;
        sub_2541CF898((v38 & 0xFFFFFFF) + 4, v42, v43, v37, v84, v85, v39);
        v44 = *(v0 + 16);
        v22 = *(v0 + 24);
        sub_254140660(v44, v22);
        sub_254134D04(v44, v22);
        sub_254140660(v44, v22);
        isUniquelyReferenced_nonNull_native = sub_2541BE53C(v44, v22, v83);
        v17 = isUniquelyReferenced_nonNull_native;
        v16 = v20;
        v45 = v21;
        if ((v21 & 0x2000000000000000) != 0)
        {
          v48 = v20 >> 62;
          if ((v20 >> 62) > 1)
          {
            if (v48 != 2)
            {
              goto LABEL_124;
            }

            v51 = *(isUniquelyReferenced_nonNull_native + 16);
            isUniquelyReferenced_nonNull_native = v51 + 4;
            if (__OFADD__(v51, 4))
            {
              goto LABEL_113;
            }

            v49 = *(v17 + 24);
            if (isUniquelyReferenced_nonNull_native < v51)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v49 = isUniquelyReferenced_nonNull_native >> 32;
            if (v48)
            {
              v50 = isUniquelyReferenced_nonNull_native;
            }

            else
            {
              v49 = BYTE6(v20);
              v50 = 0;
            }

            if (v48)
            {
              isUniquelyReferenced_nonNull_native = isUniquelyReferenced_nonNull_native + 4;
            }

            else
            {
              isUniquelyReferenced_nonNull_native = 4;
            }

            if (isUniquelyReferenced_nonNull_native < v50)
            {
              goto LABEL_124;
            }
          }

          if (v49 < isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_124;
          }

          if (v48)
          {
            if (v48 == 2)
            {
              v53 = *(v17 + 16);
              v52 = *(v17 + 24);
            }

            else
            {
              v53 = v17;
              v52 = v17 >> 32;
            }
          }

          else
          {
            v53 = 0;
            v52 = BYTE6(v20);
          }

          if (v52 < isUniquelyReferenced_nonNull_native || v52 < v53)
          {
            __break(1u);
            goto LABEL_111;
          }

          v46 = sub_25424D4B8();
        }

        else
        {
          sub_254243844(isUniquelyReferenced_nonNull_native, v20, v21, sub_254140660);
          v46 = v16;
          v47 = v45;
        }

        v54 = v47 >> 62;
        if ((v47 >> 62) > 1)
        {
          if (v54 != 2)
          {
            sub_254134D04(v46, v47);
LABEL_73:
            v59 = *(v0 + 64);
            v60 = *(v0 + 72);
            sub_254243844(v17, v16, v45, sub_254134D04);
            sub_254134D04(v44, v22);
            goto LABEL_101;
          }

          v56 = *(v46 + 16);
          v57 = *(v46 + 24);
          isUniquelyReferenced_nonNull_native = sub_254134D04(v46, v47);
          if (v56 == v57)
          {
            goto LABEL_73;
          }
        }

        else if (v54)
        {
          v58 = v46;
          isUniquelyReferenced_nonNull_native = sub_254134D04(v46, v47);
          if (v58 == v58 >> 32)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v55 = v47;
          isUniquelyReferenced_nonNull_native = sub_254134D04(v46, v47);
          if ((v55 & 0xFF000000000000) == 0)
          {
            goto LABEL_73;
          }
        }

        if ((v45 & 0x2000000000000000) == 0)
        {
          if ((v17 & 1) == 0)
          {
            goto LABEL_100;
          }

LABEL_91:
          sub_2542423E4(v17, v16, v45, *(v0 + 64));
          v68 = *(v0 + 64);
          v67 = *(v0 + 72);
          sub_254243844(v17, v16, v45, sub_254134D04);
          sub_254134D04(v44, v22);
          sub_254242364(v67, v39, *(v68 + 16), *(v68 + 24));
          goto LABEL_35;
        }

        v61 = v16 >> 62;
        if ((v16 >> 62) > 1)
        {
          if (v61 != 2)
          {
            goto LABEL_125;
          }

          v64 = *(v17 + 16);
          v63 = *(v17 + 24);
          v62 = v63 - v64;
          if (__OFSUB__(v63, v64))
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (!v61)
          {
            v62 = BYTE6(v16);
LABEL_84:
            if (v62 < 4)
            {
              goto LABEL_125;
            }

            v65 = sub_2542435B8(v17, v16);
            isUniquelyReferenced_nonNull_native = sub_254243844(v17, v16, v45, sub_254134D04);
            if (!(v65 >> 28))
            {
              if (v61)
              {
                if (v61 == 1)
                {
                  v66 = v17;
                  isUniquelyReferenced_nonNull_native = v17 + 4;
                  v20 = v17 >> 32;
                  if (v17 >> 32 < isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_120;
                  }
                }

                else
                {
                  v66 = *(v17 + 16);
                  isUniquelyReferenced_nonNull_native = v66 + 4;
                  if (__OFADD__(v66, 4))
                  {
                    goto LABEL_121;
                  }

                  if (isUniquelyReferenced_nonNull_native < v66)
                  {
                    goto LABEL_123;
                  }

                  v20 = *(v17 + 24);
                  if (v20 < isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_123;
                  }
                }
              }

              else
              {
                if ((v16 & 0xFC000000000000) == 0)
                {
                  goto LABEL_122;
                }

                v66 = 0;
                v20 = BYTE6(v16);
                isUniquelyReferenced_nonNull_native = 4;
              }

              if (v20 < v66 || v20 < isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_117;
              }

              v69 = sub_25424D4B8();
              v71 = v70;
              sub_254243844(v17, v16, v45, sub_254134D04);
              v16 = v69;
              v45 = v71;
LABEL_100:
              v59 = *(v0 + 64);
              v60 = *(v0 + 72);
              v72 = v60 + *(v0 + 96);
              sub_254134D04(v44, v22);
              sub_254134CF0(*v72, *(v72 + 8));
              *v72 = v16;
              *(v72 + 8) = v45;
LABEL_101:
              sub_254242364(v60, v39, *(v59 + 16), *(v59 + 24));
              goto LABEL_35;
            }

            if (v65 >> 28 != 1)
            {
              goto LABEL_116;
            }

            goto LABEL_91;
          }

          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_118;
          }

          v62 = HIDWORD(v17) - v17;
        }

        isUniquelyReferenced_nonNull_native = sub_254243844(v17, v16, v45, sub_254140660);
        goto LABEL_84;
      }
    }

    else if ((v3 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v84 = *(v0 + 48);
    v17 = v14 + v15;
    v18 = *(v14 + v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0 + 48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_111:
      isUniquelyReferenced_nonNull_native = sub_2541B09E0(0, *(v18 + 16) + 1, 1, v18);
      v18 = isUniquelyReferenced_nonNull_native;
    }

    v24 = *(v18 + 16);
    v23 = *(v18 + 24);
    v25 = v84;
    if (v24 >= v23 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_2541B09E0((v23 > 1), v24 + 1, 1, v18);
      v25 = v84;
      v18 = isUniquelyReferenced_nonNull_native;
    }

    *(v18 + 16) = v24 + 1;
    *(v18 + 16 * v24 + 32) = v25;
    *v17 = v18;
    if (v16 == 2)
    {
      v27 = *(v25 + 16);
      v28 = *(v25 + 24);
      v29 = __OFSUB__(v28, v27);
      v26 = v28 - v27;
      if (v29)
      {
        goto LABEL_115;
      }

      v1 = v22;
    }

    else
    {
      v1 = v22;
      if (v16 == 1)
      {
        LODWORD(v26) = DWORD1(v25) - v25;
        if (__OFSUB__(DWORD1(v25), v25))
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          return MEMORY[0x282200308](isUniquelyReferenced_nonNull_native, v20, v21);
        }

        v26 = v26;
      }

      else
      {
        v26 = BYTE6(v3);
      }
    }

    v30 = *(v17 + 16);
    v29 = __OFADD__(v30, v26);
    v31 = v30 + v26;
    if (!v29)
    {
      *(v17 + 16) = v31;
      goto LABEL_29;
    }

    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v4 = *(v0 + 72);
  v5 = (v4 + *(v0 + 96));
  v7 = *v5;
  v6 = v5[1];
  if (v6 >> 60 != 15)
  {
LABEL_103:
    v73 = *(v0 + 64);
    sub_254140660(v7, v6);
    v75 = (v4 + *(type metadata accessor for AsyncDecompressionStream.AsyncIterator(0, *(v73 + 16), *(v73 + 24), v74) + 56));
    v76 = *v75;
    v77 = v75[1];
    *v75 = xmmword_254252DB0;
    sub_254134CF0(v76, v77);
LABEL_104:
    v78 = *(v0 + 8);

    return v78(v7, v6);
  }

  v8 = *(v0 + 64);
  v9 = v4 + v8[12];
  sub_254134CF0(*v9, *(v9 + 8));
  *v9 = v7;
  *(v9 + 8) = v6;
  v10 = v4 + v8[13];
  sub_254134CF0(*v10, *(v10 + 8));
  *v10 = v7;
  *(v10 + 8) = v6;
  if (*(v4 + v8[11] + 4) == 1 && !*(*(v0 + 72) + *(*(v0 + 64) + 36) + 16))
  {
    goto LABEL_104;
  }

  sub_254182650();
  swift_allocError();
  *v11 = 0xD000000000000021;
  v11[1] = 0x8000000254252360;
  swift_willThrow();
LABEL_6:
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_254241E90(uint64_t a1)
{
  v3 = v1 + *(a1 + 52);
  if (*(v3 + 8) >> 60 != 15)
  {
    goto LABEL_7;
  }

  v4 = *(v1 + *(a1 + 36) + 16);
  if (v4 >= sub_2541A5C64())
  {
    v6 = sub_2541A5C64();
    v7 = sub_2541D0258(v6);
    v9 = v8;
    sub_254140660(v7, v8);
    v10 = sub_2541A5440(v7, v9, v18);
    if (v2)
    {
      v11 = v18[0];
      v12 = v18[1];
      sub_254182650();
      swift_allocError();
      *v13 = v11;
      v13[1] = v12;
      sub_254134D04(v7, v9);
      return v5 & 1;
    }

    v14 = sub_2541B1BA0(v10);
    v16 = v15;
    sub_254134D04(v7, v9);
    sub_254134CF0(*v3, *(v3 + 8));
    *v3 = v14;
    *(v3 + 8) = v16;
LABEL_7:
    v5 = 1;
    return v5 & 1;
  }

  v5 = 0;
  return v5 & 1;
}

unint64_t sub_254241FA0(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = v1 + *(a1 + 44);
  if (*(v2 + 4) != 1)
  {
    v6 = 0;
    v5 = *v2;
    goto LABEL_5;
  }

  v3 = (v1 + *(a1 + 36));
  v4 = v3[2];
  if (v4 < 4)
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_5;
  }

  v8 = *v3;
  v9 = v3[1];
  v34 = xmmword_254252DC0;
  v33 = 0;
  sub_2541CF898(4, v8, v9, v4, &v34, &v33, 4);
  v11 = *(&v34 + 1);
  v10 = v34;
  sub_254140660(v34, *(&v34 + 1));
  result = sub_254134D04(v10, v11);
  v12 = v11 >> 62;
  v32 = v2;
  if ((v11 >> 62) > 1)
  {
    goto LABEL_11;
  }

  if (v12)
  {
    goto LABEL_15;
  }

  if ((v11 & 0xFC000000000000) == 0)
  {
    __break(1u);
LABEL_11:
    if (v12 != 2)
    {
      __break(1u);
      return result;
    }

    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (v15)
    {
      goto LABEL_57;
    }

    if (v16 >= 4)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v10), v10))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    if (HIDWORD(v10) - v10 < 4)
    {
      goto LABEL_59;
    }

LABEL_17:
    sub_254140660(v10, v11);
  }

  v17 = 0;
  v5 = 0;
  v18 = v10;
  do
  {
    v20 = v5;
    if (v12)
    {
      v22 = v10 >> 32;
      v21 = v10;
      v23 = v18;
      if (v12 != 1)
      {
        v21 = *(v10 + 16);
        v23 = v21 + v17;
        if (__OFADD__(v21, v17))
        {
          goto LABEL_50;
        }

        v22 = *(v10 + 24);
      }
    }

    else
    {
      v22 = BYTE6(v11);
      v21 = 0;
      v23 = v17;
    }

    if (v23 < v21 || v22 < v23)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v12 == 2)
    {
      if (v23 < *(v10 + 16))
      {
        goto LABEL_51;
      }

      if (v23 >= *(v10 + 24))
      {
        goto LABEL_54;
      }

      v29 = sub_25424D268();
      if (!v29)
      {
        goto LABEL_61;
      }

      v26 = v29;
      v30 = sub_25424D298();
      v28 = v23 - v30;
      if (__OFSUB__(v23, v30))
      {
        goto LABEL_56;
      }

      goto LABEL_19;
    }

    if (v12 == 1)
    {
      if (v23 < v10 || v23 >= v10 >> 32)
      {
        goto LABEL_53;
      }

      v25 = sub_25424D268();
      if (!v25)
      {
        goto LABEL_60;
      }

      v26 = v25;
      v27 = sub_25424D298();
      v28 = v23 - v27;
      if (__OFSUB__(v23, v27))
      {
        goto LABEL_55;
      }

LABEL_19:
      v19 = *(v26 + v28);
      goto LABEL_20;
    }

    if (v23 >= BYTE6(v11))
    {
      goto LABEL_52;
    }

    *&v34 = v10;
    WORD4(v34) = v11;
    BYTE10(v34) = BYTE2(v11);
    BYTE11(v34) = BYTE3(v11);
    BYTE12(v34) = BYTE4(v11);
    BYTE13(v34) = BYTE5(v11);
    v19 = *(&v34 + v23);
LABEL_20:
    ++v17;
    v5 = v19 | (v20 << 8);
    ++v18;
  }

  while (v17 != 4);
  sub_254134D04(v10, v11);
  if (v20 << 8 >> 29)
  {
    sub_254182650();
    swift_allocError();
    *v31 = 0xD00000000000001CLL;
    v31[1] = 0x80000002542523C0;
    swift_willThrow();
    return sub_254134D04(v10, v11);
  }

  else
  {
    sub_254134D04(v10, v11);
    v6 = 0;
    *v32 = v5;
    *(v32 + 4) = 0;
LABEL_5:
    LOBYTE(v34) = v6;
    return v5 | (v6 << 32);
  }
}

uint64_t sub_254242364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AsyncDecompressionStream.AsyncIterator(0, a3, a4, a4);
  v7 = a1 + v6[11];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = (a1 + v6[9]);
  result = sub_2541D0338(a2, v8);
  if (!v8[2])
  {
    *(a1 + v6[10]) = 1;
  }

  return result;
}

uint64_t sub_2542423E4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = result;
  if ((a3 & 0x2000000000000000) == 0)
  {
    if (result)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_53;
    }

    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_14;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = HIDWORD(result) - result;
LABEL_13:
  result = sub_254243844(result, a2, a3, sub_254140660);
LABEL_14:
  if (v10 >= 4)
  {
    v13 = sub_2542435B8(v8, a2);
    result = sub_254243844(v8, a2, a3, sub_254134D04);
    if (!(v13 >> 28))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v13 >> 28 != 1)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_17:
    v14 = v4 + *(a4 + 48);
    if (*(v14 + 8) >> 60 == 15)
    {
      v15 = compression_decode_scratch_buffer_size(COMPRESSION_LZFSE);
      v16 = sub_2541B1BA0(v15);
      v18 = v17;
      sub_254134CF0(*v14, *(v14 + 8));
      *v14 = v16;
      *(v14 + 8) = v18;
    }

    v42 = 0;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v19 = sub_254243844(v8, a2, a3, sub_254140660);
      v20 = a2;
      v21 = a3;
LABEL_34:
      MEMORY[0x28223BE20](v19);
      v36[1] = *(a4 + 16);
      v37 = v4;
      v38 = &v42;
      v39 = v8;
      v40 = a2;
      v41 = a3;
      sub_2541EFC24(sub_254243858, v36, v20, v21);
      result = sub_254134D04(v20, v21);
      if (v42 < 1)
      {
        sub_254182650();
        swift_allocError();
        *v31 = 0xD000000000000020;
        v31[1] = 0x8000000254252390;
        return swift_willThrow();
      }

      v26 = (v4 + *(a4 + 52));
      v27 = v26[1];
      if (v27 >> 60 == 15)
      {
        goto LABEL_51;
      }

      v28 = *v26;
      v29 = v27 >> 62;
      if ((v27 >> 62) > 1)
      {
        v30 = 0;
        if (v29 == 2)
        {
          v30 = *(v28 + 16);
        }
      }

      else if (v29)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }

      result = sub_2541347C8(v30, v42, v28, v27);
      if (result >= v30)
      {
        if (v26[1] >> 60 != 15)
        {
          v32 = sub_25424D4B8();
          v34 = v33;
          v35 = v4 + *(a4 + 56);
          result = sub_254134CF0(*v35, *(v35 + 8));
          *v35 = v32;
          *(v35 + 8) = v34;
          return result;
        }

        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_47;
    }

    v22 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v22 == 2)
      {
        result = sub_2541347C8(*(v8 + 16), 4, v8, a2);
        v23 = *(v8 + 16);
        v24 = *(v8 + 24);
LABEL_31:
        if (v24 < result || v24 < v23)
        {
          goto LABEL_48;
        }

        v19 = sub_25424D4B8();
        v20 = v19;
        v21 = v25;
        goto LABEL_34;
      }
    }

    else if (v22)
    {
      v23 = v8;
      result = sub_2541347C8(v8, 4, v8, a2);
      v24 = v8 >> 32;
      goto LABEL_31;
    }

    result = sub_2541347C8(0, 4, v8, a2);
    if (v22 > 1)
    {
      v24 = 0;
      v23 = 0;
    }

    else if (v22)
    {
      v23 = v8;
      v24 = v8 >> 32;
    }

    else
    {
      v23 = 0;
      v24 = BYTE6(a2);
    }

    goto LABEL_31;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_2542427A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = MEMORY[0x28223BE20](result);
    v12[2] = v6;
    v12[3] = v5;
    v12[4] = a3;
    v12[5] = v7;
    v12[6] = v4;
    v12[7] = v4;
    v12[8] = v8;
    v12[9] = v9;
    v12[10] = v10;
    v12[11] = v11;
    result = type metadata accessor for AsyncDecompressionStream.AsyncIterator(0, v6, v5, v7);
    if (*(a3 + *(result + 52) + 8) >> 60 != 15)
    {
      return sub_2541EF7E4(sub_25424388C, v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_25424285C(uint64_t *result, uint64_t a2, uint64_t a3, size_t *a4, uint8_t *a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (result)
  {
    v14 = result;
    result = type metadata accessor for AsyncDecompressionStream.AsyncIterator(0, a11, a12, a4);
    v19 = (a3 + *(result + 12));
    if (v19[1] >> 60 != 15)
    {
      sub_254243844(a8, a9, a10, sub_254140660);
      return sub_254242B4C(v19, a4, v14, v14, a2, a5, a6, a7, a8, a9, a10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25424294C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25413439C;

  return sub_254240D28(a2);
}

uint64_t AsyncSequence<>.hmvDecompressed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3, a1);
  a3[3] = type metadata accessor for AsyncDecompressionStream(0, a1, a2, v10);
  a3[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(v7 + 32))(boxed_opaque_existential_1, v9, a1);
}

uint64_t *sub_254242B4C(uint64_t *result, size_t *a2, uint8_t *a3, size_t a4, uint64_t a5, uint8_t *a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11)
{
  v12 = a10;
  v13 = a9;
  v71 = *MEMORY[0x277D85DE8];
  v14 = *result;
  v15 = result[1];
  v69 = result;
  v16 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    v62 = a5;
    src_buffer = a6;
    v64 = a8;
    v65 = a7;
    if (v16)
    {
      goto LABEL_25;
    }

    v61 = HIWORD(v15);
    sub_254243844(a9, a10, a11, sub_254140660);
    result = sub_254134D04(v14, v15);
    *&scratch_buffer = v14;
    WORD4(scratch_buffer) = v15;
    BYTE10(scratch_buffer) = BYTE2(v15);
    BYTE11(scratch_buffer) = BYTE3(v15);
    BYTE12(scratch_buffer) = BYTE4(v15);
    if (a4)
    {
      v14 = v62 - a4;
    }

    else
    {
      v14 = 0;
    }

    BYTE13(scratch_buffer) = BYTE5(v15);
    if (v65)
    {
      v15 = v64 - v65;
    }

    else
    {
      v15 = 0;
    }

    LODWORD(v16) = v61;
    BYTE14(scratch_buffer) = v61;
    if ((a11 & 0x2000000000000000) == 0)
    {
      v17 = src_buffer;
      v13 = a9;
      if ((a9 & 1) == 0)
      {
        __break(1u);
        goto LABEL_12;
      }

LABEL_75:
      *a2 = compression_decode_buffer(a3, v14, v17, v15, &scratch_buffer, COMPRESSION_LZFSE);
      v50 = scratch_buffer;
      v51 = DWORD2(scratch_buffer) | ((WORD6(scratch_buffer) | (BYTE14(scratch_buffer) << 16)) << 32);
      sub_254243844(v13, a10, a11, sub_254134D04);
      result = sub_254243844(v13, a10, a11, sub_254134D04);
      *v69 = v50;
      v69[1] = v51;
      return result;
    }

    v13 = a9;
    v30 = a10 >> 62;
    if ((a10 >> 62) > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_128;
      }

      v46 = *(a9 + 16);
      v45 = *(a9 + 24);
      v31 = v45 - v46;
      if (__OFSUB__(v45, v46))
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      result = sub_254243844(a9, a10, a11, sub_254140660);
    }

    else if (v30)
    {
      if (__OFSUB__(HIDWORD(a9), a9))
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v31 = HIDWORD(a9) - a9;
      result = sub_254243844(a9, a10, a11, sub_254140660);
    }

    else
    {
      v31 = BYTE6(a10);
    }

    if (v31 >= 4)
    {
      v49 = sub_2542435B8(a9, a10);
      sub_254243844(a9, a10, a11, sub_254134D04);
      if (!(v49 >> 28))
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v17 = src_buffer;
      if (v49 >> 28 != 1)
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      goto LABEL_75;
    }

LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

LABEL_12:
  if (v16 != 2)
  {
    if (a4)
    {
      v26 = a5 - a4;
    }

    else
    {
      v26 = 0;
    }

    if (a7)
    {
      v27 = a8 - a7;
    }

    else
    {
      v27 = 0;
    }

    *(&scratch_buffer + 7) = 0;
    *&scratch_buffer = 0;
    if ((a11 & 0x2000000000000000) == 0)
    {
      if ((v13 & 1) == 0)
      {
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v28 = a6;
      sub_254243844(v13, a10, a11, sub_254140660);
      v29 = v28;
LABEL_82:
      *a2 = compression_decode_buffer(a3, v26, v29, v27, &scratch_buffer, COMPRESSION_LZFSE);
      sub_254243844(v13, a10, a11, sub_254134D04);
      return sub_254243844(v13, a10, a11, sub_254134D04);
    }

    v32 = a10 >> 62;
    if ((a10 >> 62) > 1)
    {
      if (v32 != 2)
      {
        goto LABEL_129;
      }

      v48 = *(v13 + 16);
      v47 = *(v13 + 24);
      v34 = v47 - v48;
      if (__OFSUB__(v47, v48))
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v33 = a6;
    }

    else
    {
      if (!v32)
      {
        v33 = a6;
        v34 = BYTE6(a10);
        goto LABEL_79;
      }

      if (__OFSUB__(HIDWORD(v13), v13))
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      v33 = a6;
      v34 = HIDWORD(v13) - v13;
    }

    result = sub_254243844(v13, a10, a11, sub_254140660);
LABEL_79:
    if (v34 >= 4)
    {
      sub_254243844(v13, a10, a11, sub_254140660);
      v52 = sub_2542435B8(v13, a10);
      sub_254243844(v13, a10, a11, sub_254134D04);
      if (!(v52 >> 28))
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v29 = v33;
      if (v52 >> 28 != 1)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      goto LABEL_82;
    }

LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v18 = a5;
  v64 = a8;
  v65 = a7;
  src_buffer = a6;
  sub_254243844(v13, a10, a11, sub_254140660);

  sub_254134D04(v14, v15);
  *&scratch_buffer = v14;
  *(&scratch_buffer + 1) = v15 & 0x3FFFFFFFFFFFFFFFLL;
  *v69 = xmmword_254252DC0;
  sub_254134D04(0, 0xC000000000000000);
  sub_25424D428();
  v15 = *(&scratch_buffer + 1);
  v12 = scratch_buffer;
  v19 = *(scratch_buffer + 16);
  v20 = *(scratch_buffer + 24);
  v21 = sub_25424D268();
  if (!v21)
  {
    result = sub_254243844(v13, a10, a11, sub_254134D04);
    __break(1u);
    goto LABEL_126;
  }

  v14 = v21;
  v22 = sub_25424D298();
  if (__OFSUB__(v19, v22))
  {
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (__OFSUB__(v20, v19))
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v62 = v19 - v22;
  result = sub_25424D288();
  if (a4)
  {
    a4 = v18 - a4;
  }

  else
  {
    a4 = 0;
  }

  if (v65)
  {
    v23 = v64 - v65;
  }

  else
  {
    v23 = 0;
  }

  if ((a11 & 0x2000000000000000) != 0)
  {
    v35 = a10 >> 62;
    if ((a10 >> 62) > 1)
    {
      if (v35 != 2)
      {
        goto LABEL_130;
      }

      v54 = *(v13 + 16);
      v53 = *(v13 + 24);
      v36 = v53 - v54;
      if (__OFSUB__(v53, v54))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v55 = v13;
    }

    else
    {
      if (!v35)
      {
        v36 = BYTE6(a10);
        goto LABEL_89;
      }

      v55 = v13;
      if (__OFSUB__(HIDWORD(v13), v13))
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v36 = HIDWORD(v13) - v13;
    }

    result = sub_254243844(v55, a10, a11, sub_254140660);
LABEL_89:
    if (v36 >= 4)
    {
      v56 = sub_2542435B8(v13, a10);
      sub_254243844(v13, a10, a11, sub_254134D04);
      if (!(v56 >> 28))
      {
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v12 = scratch_buffer;
      if (v56 >> 28 != 1)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

LABEL_92:
      *a2 = compression_decode_buffer(a3, a4, src_buffer, v23, (v14 + v62), COMPRESSION_LZFSE);
      sub_254243844(v13, a10, a11, sub_254134D04);
      result = sub_254243844(v13, a10, a11, sub_254134D04);
      *v69 = v12;
      v69[1] = v15 | 0x8000000000000000;
      return result;
    }

LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v13)
  {
    goto LABEL_92;
  }

  __break(1u);
LABEL_25:
  v24 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  sub_254243844(v13, v12, a11, sub_254140660);
  sub_254140660(v14, v15);
  sub_254134D04(v14, v15);
  *v69 = xmmword_254252DC0;
  sub_254134D04(0, 0xC000000000000000);
  v66 = v12;
  sub_254243844(v13, v12, a11, sub_254140660);
  v25 = v14 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v25 < v14)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    if (sub_25424D268() && __OFSUB__(v14, sub_25424D298()))
    {
      goto LABEL_116;
    }

    sub_25424D2B8();
    swift_allocObject();
    v37 = sub_25424D248();

    v24 = v37;
  }

  if (v25 < v14)
  {
    goto LABEL_104;
  }

  result = sub_25424D268();
  if (!result)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v38 = result;
  v39 = sub_25424D298();
  v40 = v14 - v39;
  if (__OFSUB__(v14, v39))
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  result = sub_25424D288();
  if (a4)
  {
    v41 = v62 - a4;
  }

  else
  {
    v41 = 0;
  }

  if (v65)
  {
    v42 = v64 - v65;
  }

  else
  {
    v42 = 0;
  }

  if ((a11 & 0x2000000000000000) == 0)
  {
    if (v13)
    {
LABEL_102:
      *a2 = compression_decode_buffer(a3, v41, src_buffer, v42, v38 + v40, COMPRESSION_LZFSE);

      sub_254243844(v13, v66, a11, sub_254134D04);
      sub_254243844(v13, v66, a11, sub_254134D04);
      result = sub_254243844(v13, v66, a11, sub_254134D04);
      *v69 = v14;
      v69[1] = v24 | 0x4000000000000000;
      return result;
    }

    __break(1u);
  }

  v43 = v66 >> 62;
  if ((v66 >> 62) > 1)
  {
    if (v43 != 2)
    {
      goto LABEL_131;
    }

    v58 = *(v13 + 16);
    v57 = *(v13 + 24);
    v44 = v57 - v58;
    if (__OFSUB__(v57, v58))
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
    }

    v59 = v13;
  }

  else
  {
    if (!v43)
    {
      v44 = BYTE6(v66);
      goto LABEL_99;
    }

    v59 = v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_124;
    }

    v44 = HIDWORD(v13) - v13;
  }

  result = sub_254243844(v59, v66, a11, sub_254140660);
LABEL_99:
  if (v44 >= 4)
  {
    v60 = sub_2542435B8(v13, v66);
    sub_254243844(v13, v66, a11, sub_254134D04);
    if (v60 >> 28)
    {
      if (v60 >> 28 == 1)
      {
        goto LABEL_102;
      }

      goto LABEL_115;
    }

    goto LABEL_113;
  }

LABEL_131:
  __break(1u);
  return result;
}

unint64_t sub_2542435B8(unint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  v34 = *MEMORY[0x277D85DE8];
  v25 = HIDWORD(result);
  v26 = BYTE6(a2);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    goto LABEL_51;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_48;
    }

    v5 = v5;
  }

LABEL_10:
  if (v5 >= 4)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    v27 = result >> 32;
    v23 = result >> 16;
    v24 = result >> 8;
    for (i = result; ; ++i)
    {
      if (v4)
      {
        v13 = v27;
        v14 = v3;
        v15 = i;
        if (v4 != 1)
        {
          v14 = *(v3 + 16);
          v15 = v14 + v9;
          if (__OFADD__(v14, v9))
          {
            goto LABEL_41;
          }

          v13 = *(v3 + 24);
        }
      }

      else
      {
        v13 = v26;
        v14 = 0;
        v15 = v9;
      }

      if (v15 < v14 || v13 < v15)
      {
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
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      if (v4 == 2)
      {
        if (v15 < *(v3 + 16))
        {
          goto LABEL_42;
        }

        if (v15 >= *(v3 + 24))
        {
          goto LABEL_45;
        }

        v21 = sub_25424D268();
        if (!v21)
        {
          goto LABEL_50;
        }

        v18 = v21;
        v22 = sub_25424D298();
        v20 = v15 - v22;
        if (__OFSUB__(v15, v22))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v15 >= v26)
          {
            goto LABEL_43;
          }

          v28[0] = v3;
          v28[1] = v24;
          v28[2] = v23;
          v28[3] = BYTE3(v3);
          v28[4] = v25;
          v28[5] = BYTE5(v3);
          v28[6] = BYTE6(v3);
          v28[7] = HIBYTE(v3);
          v29 = a2;
          v30 = BYTE2(a2);
          v31 = BYTE3(a2);
          v32 = BYTE4(a2);
          v33 = BYTE5(a2);
          v12 = v28[v15];
          goto LABEL_13;
        }

        if (v15 < v3 || v15 >= v27)
        {
          goto LABEL_44;
        }

        v17 = sub_25424D268();
        if (!v17)
        {
          goto LABEL_49;
        }

        v18 = v17;
        v19 = sub_25424D298();
        v20 = v15 - v19;
        if (__OFSUB__(v15, v19))
        {
          goto LABEL_46;
        }
      }

      v12 = *(v18 + v20);
LABEL_13:
      ++v9;
      v10 = v12 | (v10 << 8);
      if (v9 == 4)
      {
        return v10;
      }
    }
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_254243844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if ((a3 & 0x2000000000000000) == 0)
  {
    a1 = a2;
    a2 = a3;
  }

  return a4(a1, a2);
}

void sub_2542438C8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_254243D54(319, &unk_27F5BC7A0, &type metadata for AsyncCompressionStreamBlock.Header);
    if (v2 <= 0x3F)
    {
      sub_254243D54(319, &qword_27F5BB538, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2542439B8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_254243B58(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v9 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
          v19[2] = 0;
        }

        else
        {
          v20 = (a2 - 1);
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((((v9 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v9 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

void sub_254243D54(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25424E598();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t static EventDigestQuery.fetchOldestStartDate(database:homeIdentifier:targetCloudKitZone:queryIdentifier:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 48) = *a2;
  *(v6 + 64) = *(a2 + 16);
  *(v6 + 104) = *a4;
  return MEMORY[0x2822009F8](sub_254243DDC, 0, 0);
}

uint64_t sub_254243DDC()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v5 = [objc_opt_self() predicateWithValue_];
  v6 = sub_25424E538();
  *(v0 + 72) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_254254370;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_25424DCA8();
  v10 = [v8 initWithKey:v9 ascending:1];

  *(v7 + 32) = v10;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v11 = sub_25424DF88();

  [v6 setSortDescriptors_];

  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v1;
  *(v12 + 32) = v6;
  *(v12 + 40) = v3;
  *(v12 + 48) = &unk_286633400;
  *(v12 + 56) = v2;
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_254152A84;
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = *(v0 + 16);

  return sub_25414D344(v17, &unk_2542588F0, v12, v16, v14, v15);
}

uint64_t EventDigestQuery.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventDigestQuery.Configuration(0) + 32);
  v4 = sub_25424D218();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventDigestQuery.fetchAll()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB230, &unk_254263DF0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  v5 = sub_25424D8B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25424D898();
  v11 = v0;
  v12 = v8;
  type metadata accessor for DigestRecord(0);
  (*(v2 + 104))(v4, *MEMORY[0x277D858A0], v1);
  sub_25424E278();
  return (*(v6 + 8))(v8, v5);
}

uint64_t EventDigestQuery.init(homeIdentifier:dateInterval:resultsLimit:scope:queryIdentifier:qualityOfService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned __int8 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a7;
  v60 = a6;
  v64 = a4;
  v57 = a3;
  v61 = a2;
  v55 = a8;
  v53 = type metadata accessor for EventDigestQuery.Configuration(0);
  MEMORY[0x28223BE20](v53);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25424D218();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v63 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v62 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v59 = &v47 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v47 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v47 - v27;
  v47 = *a5;
  if (qword_27F5B8420 != -1)
  {
    swift_once();
  }

  v58 = qword_27F5BA548;
  v51 = v19;
  v29 = *(v19 + 16);
  v52 = a1;
  v29(v28, a1, v18);
  v54 = v13;
  v30 = *(v13 + 16);
  v30(v17, v61, v12);
  v29(v26, v60, v18);
  v49 = v28;
  v29(v59, v28, v18);
  v50 = v17;
  v48 = v12;
  v30(v63, v17, v12);
  result = (v29)(v62, v26, v18);
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  if ((v64 & 1) != 0 || v57 >= 1)
  {
    sub_25424BDBC(v70, &v65);
    if (v66)
    {
      sub_2541AF138(&v65, &v67);
      v32 = v58;
    }

    else
    {
      v68 = &type metadata for Configuration.DefaultFeaturesDataSource;
      v69 = &off_2866378F0;
      v33 = v58;
      v34 = sub_2541BE050();
      LOBYTE(v67) = v34 & 1;
      v35 = vdupq_n_s64(v34);
      *v35.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v35, xmmword_2542588C0), vshlq_u64(v35, xmmword_2542588B0))), 0x1000100010001);
      *(&v67 + 1) = vuzp1_s8(*v35.i8, *v35.i8).u32[0];
      if (v66)
      {
        sub_254132E5C(&v65, &qword_27F5BC7B0, &qword_2542588D8);
      }
    }

    v60 = v26;
    if (qword_27F5B8468 != -1)
    {
      swift_once();
    }

    v47 |= 0x8000000000000000;
    v36 = off_27F5BAFB0;
    v37 = v51;
    v38 = *(v51 + 8);
    v38();
    v39 = v54;
    v40 = *(v54 + 8);
    v41 = v48;
    v40(v61, v48);
    (v38)(v52, v18);
    sub_254132E5C(v70, &qword_27F5BC7B0, &qword_2542588D8);
    (v38)(v60, v18);
    v40(v50, v41);
    (v38)(v49, v18);
    v42 = v36[2];
    sub_2541AF138(&v67, v11);
    v43 = v58;
    *(v11 + 5) = v42;
    *(v11 + 6) = v43;
    *(v11 + 7) = v47;
    *(v11 + 8) = 0;
    v44 = v53;
    v45 = *(v37 + 32);
    v45(&v11[*(v53 + 28)], v59, v18);
    (*(v39 + 32))(&v11[v44[8]], v63, v41);
    *&v11[v44[9]] = 0;
    v46 = &v11[v44[10]];
    *v46 = v57;
    v46[8] = v64 & 1;
    v11[v44[11]] = 0;
    v11[v44[12]] = 0;
    v11[v44[13]] = 0;
    v11[v44[14]] = 0;
    v45(&v11[v44[15]], v62, v18);
    *&v11[v44[16]] = v56;
    sub_25424CCF8(v11, v55, type metadata accessor for EventDigestQuery.Configuration);
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EventDigestQuery.init(database:homeIdentifier:dateInterval:resultsLimit:queryIdentifier:qualityOfService:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v54 = a7;
  v55 = a3;
  v56 = a6;
  v57 = a4;
  v58 = a5;
  v53 = a8;
  v10 = type metadata accessor for EventDigestQuery.Configuration(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25424D218();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25424D948();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = a1[1];
  v46 = *a1;
  v45 = v22;
  v44 = a1[2];
  v48 = v18;
  v23 = *(v18 + 16);
  v47 = &v43 - v24;
  v52 = a2;
  v25 = v55;
  v23();
  v49 = v14;
  v26 = *(v14 + 16);
  v50 = v16;
  v27 = v25;
  v28 = v25;
  v29 = v56;
  v26(v16, v28, v13);
  v51 = v21;
  result = (v23)(v21, v29, v17);
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  if ((v58 & 1) != 0 || v57 >= 1)
  {
    sub_25424BDBC(v64, &v59);
    if (v60)
    {
      sub_2541AF138(&v59, &v61);
    }

    else
    {
      v62 = &type metadata for Configuration.DefaultFeaturesDataSource;
      v63 = &off_2866378F0;
      v31 = sub_2541BE050();
      LOBYTE(v61) = v31 & 1;
      v32 = vdupq_n_s64(v31);
      *v32.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v32, xmmword_2542588C0), vshlq_u64(v32, xmmword_2542588B0))), 0x1000100010001);
      *(&v61 + 1) = vuzp1_s8(*v32.i8, *v32.i8).u32[0];
      if (v60)
      {
        sub_254132E5C(&v59, &qword_27F5BC7B0, &qword_2542588D8);
      }
    }

    if (qword_27F5B8468 != -1)
    {
      swift_once();
    }

    v33 = off_27F5BAFB0;
    v34 = v48;
    v35 = *(v48 + 8);
    v35(v29, v17);
    v36 = v49;
    (*(v49 + 8))(v27, v13);
    v35(v52, v17);
    sub_254132E5C(v64, &qword_27F5BC7B0, &qword_2542588D8);
    v37 = v33[2];
    sub_2541AF138(&v61, v12);
    v38 = v46;
    *(v12 + 5) = v37;
    *(v12 + 6) = v38;
    v39 = v44;
    *(v12 + 7) = v45;
    *(v12 + 8) = v39;
    v40 = *(v34 + 32);
    v40(&v12[v10[7]], v47, v17);
    (*(v36 + 32))(&v12[v10[8]], v50, v13);
    *&v12[v10[9]] = 0;
    v41 = &v12[v10[10]];
    *v41 = v57;
    v41[8] = v58 & 1;
    v12[v10[11]] = 0;
    v12[v10[12]] = 0;
    v12[v10[13]] = 0;
    v12[v10[14]] = 0;
    v40(&v12[v10[15]], v51, v17);
    v42 = v53;
    *&v12[v10[16]] = v54;
    sub_25424CCF8(v12, v42, type metadata accessor for EventDigestQuery.Configuration);
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EventDigestQuery.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventDigestQuery.Configuration(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventDigestQuery.categories.getter()
{
  type metadata accessor for EventDigestQuery.Configuration(0);
}

void EventDigestQuery.scope.getter(char *a1@<X8>)
{
  v3 = *(v1 + 56);
  if (v3 < 0)
  {
    v6 = v3 & 1;
    goto LABEL_7;
  }

  v4 = *(v1 + 48);
  v5 = [v4 scope];
  if (v5 == 2)
  {
    v6 = 0;
LABEL_7:
    *a1 = v6;
    return;
  }

  if (v5 == 3)
  {
    v6 = 1;
    goto LABEL_7;
  }

  sub_25424E688();

  [v4 0x279771478];
  v7 = sub_25424E468();
  MEMORY[0x259C05CA0](v7);

  sub_25424E858();
  __break(1u);
}

uint64_t EventDigestQuery.queryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventDigestQuery.Configuration(0) + 60);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254245070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a3;
  v30 = a2;
  v3 = sub_25424D8B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v25 - v8;
  v26 = &v25 - v8;
  v10 = type metadata accessor for EventDigestQuery(0);
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = sub_25424E128();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_25424CDC0(v30, v12, type metadata accessor for EventDigestQuery);
  v17 = v9;
  v18 = v29;
  (*(v6 + 16))(v17, v31, v29);
  v19 = v3;
  (*(v4 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v3);
  v20 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v21 = (v11 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = (v7 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_25424CCF8(v12, v23 + v20, type metadata accessor for EventDigestQuery);
  (*(v6 + 32))(v23 + v21, v26, v18);
  (*(v4 + 32))(v23 + v22, v27, v19);
  sub_25419CC1C(0, 0, v15, &unk_254263ED8, v23);
}

uint64_t sub_2542453FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_25424E0A8();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v8 = sub_25424D8B8();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = type metadata accessor for EventDigestQuery.Configuration(0);
  v6[19] = swift_task_alloc();
  type metadata accessor for EventDigestQuery(0);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v9 = sub_25424DAA8();
  v6[25] = v9;
  v6[26] = *(v9 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25424564C, 0, 0);
}

uint64_t sub_25424564C()
{
  v35 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[6];
  sub_25421C508(v0[30]);
  sub_25424CDC0(v3, v1, type metadata accessor for EventDigestQuery);
  sub_25424CDC0(v3, v2, type metadata accessor for EventDigestQuery);
  v4 = sub_25424DA88();
  v5 = sub_25424E448();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  v8 = v0[25];
  v9 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  if (v6)
  {
    v30 = v0[19];
    v33 = v0[25];
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v12 = 136446466;
    sub_25424D948();
    v32 = v7;
    sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_25424EA58();
    v15 = v14;
    sub_25424CD60(v10, type metadata accessor for EventDigestQuery);
    v16 = sub_2542203C4(v13, v15, &v34);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    sub_25424CDC0(v11, v30, type metadata accessor for EventDigestQuery.Configuration);
    v17 = sub_25424DD08();
    v19 = v18;
    sub_25424CD60(v11, type metadata accessor for EventDigestQuery);
    v20 = sub_2542203C4(v17, v19, &v34);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_254124000, v4, v5, "[%{public}s] Beginning query: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v31, -1, -1);
    MEMORY[0x259C07330](v12, -1, -1);

    v21 = *(v9 + 8);
    v21(v32, v33);
  }

  else
  {

    sub_25424CD60(v11, type metadata accessor for EventDigestQuery);
    sub_25424CD60(v10, type metadata accessor for EventDigestQuery);
    v21 = *(v9 + 8);
    v21(v7, v8);
  }

  v0[31] = v21;
  v22 = swift_task_alloc();
  v23 = *(v0 + 3);
  v24 = v0[6];
  v25 = v24[6];
  v26 = v24[7];
  v27 = v24[8];
  v0[32] = v22;
  *(v22 + 16) = v23;
  v28 = swift_task_alloc();
  v0[33] = v28;
  *v28 = v0;
  v28[1] = sub_2542459CC;

  return sub_25414CFC8(sub_25414CFC8, &unk_254263EE8, v22, v25, v26, v27);
}

uint64_t sub_2542459CC()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_254245F5C;
  }

  else
  {
    v2 = sub_254245AFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254245AFC()
{
  v37 = v0;
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[8];
  v6 = v0[6];
  sub_25421C508(v0[29]);
  sub_25424CDC0(v6, v1, type metadata accessor for EventDigestQuery);
  (*(v4 + 16))(v2, v5, v3);
  v7 = sub_25424DA88();
  v8 = sub_25424E448();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v10 = 136446466;
    sub_25424D948();
    sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_25424EA58();
    v13 = v12;
    sub_25424CD60(v9, type metadata accessor for EventDigestQuery);
    v14 = sub_2542203C4(v11, v13, &v36);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    sub_25424D868();
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v15 setMaximumFractionDigits_];
    v16 = sub_25424E288();
    v17 = [v15 stringForObjectValue_];

    if (v17)
    {
      v18 = sub_25424DCB8();
      v20 = v19;
    }

    else
    {
      v18 = sub_25424E298();
      v20 = v28;
    }

    v29 = v0[31];
    v30 = v0[29];
    v31 = v0[25];
    (*(v0[14] + 8))(v0[17], v0[13]);
    v32 = sub_2542203C4(v18, v20, &v36);

    *(v10 + 14) = v32;
    _os_log_impl(&dword_254124000, v7, v8, "[%{public}s] Finished after %{public}s seconds", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v35, -1, -1);
    MEMORY[0x259C07330](v10, -1, -1);

    v29(v30, v31);
  }

  else
  {
    v21 = v0[31];
    v22 = v0[29];
    v23 = v0[25];
    v24 = v0[22];
    v25 = v0[17];
    v26 = v0[13];
    v27 = v0[14];

    (*(v27 + 8))(v25, v26);
    sub_25424CD60(v24, type metadata accessor for EventDigestQuery);
    v21(v22, v23);
  }

  v0[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
  sub_25424E238();

  v33 = v0[1];

  return v33();
}

uint64_t sub_254245F5C()
{
  v89 = v0;
  v1 = *(v0 + 272);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 272);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  if (v3)
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 168);
    v82 = *(v0 + 128);
    v85 = *(v0 + 104);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v80 = *(v0 + 64);
    v13 = *(v0 + 48);

    (*(v11 + 32))(v9, v10, v12);
    sub_25421C508(v7);
    sub_25424CDC0(v13, v8, type metadata accessor for EventDigestQuery);
    (*(v5 + 16))(v82, v80, v85);
    v14 = sub_25424DA88();
    v15 = sub_25424E448();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 168);
      v17 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88 = v86;
      *v17 = 136446466;
      sub_25424D948();
      sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_25424EA58();
      v20 = v19;
      sub_25424CD60(v16, type metadata accessor for EventDigestQuery);
      v21 = sub_2542203C4(v18, v20, &v88);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      sub_25424D868();
      v22 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v22 setMaximumFractionDigits_];
      v23 = sub_25424E288();
      v24 = [v22 stringForObjectValue_];

      if (v24)
      {
        v25 = sub_25424DCB8();
        v27 = v26;
      }

      else
      {
        v25 = sub_25424E298();
        v27 = v62;
      }

      v84 = *(v0 + 248);
      v63 = *(v0 + 224);
      v64 = *(v0 + 200);
      (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
      v65 = sub_2542203C4(v25, v27, &v88);

      *(v17 + 14) = v65;
      _os_log_impl(&dword_254124000, v14, v15, "[%{public}s] Canceled after %{public}s seconds", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v86, -1, -1);
      MEMORY[0x259C07330](v17, -1, -1);

      v84(v63, v64);
    }

    else
    {
      v48 = *(v0 + 248);
      v49 = *(v0 + 224);
      v50 = *(v0 + 200);
      v51 = *(v0 + 168);
      v52 = *(v0 + 128);
      v53 = *(v0 + 104);
      v54 = *(v0 + 112);

      (*(v54 + 8))(v52, v53);
      sub_25424CD60(v51, type metadata accessor for EventDigestQuery);
      v48(v49, v50);
    }

    v66 = *(v0 + 96);
    v67 = *(v0 + 72);
    v68 = *(v0 + 80);
    sub_25424D09C(&qword_27F5B90E0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v69 = swift_allocError();
    (*(v68 + 16))(v70, v66, v67);
    *(v0 + 32) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
    sub_25424E238();
    (*(v68 + 8))(v66, v67);
  }

  else
  {
    v28 = *(v0 + 216);
    v29 = *(v0 + 160);
    v30 = *(v0 + 120);
    v31 = *(v0 + 64);
    v32 = *(v0 + 48);

    sub_25421C508(v28);
    sub_25424CDC0(v32, v29, type metadata accessor for EventDigestQuery);
    (*(v5 + 16))(v30, v31, v6);
    v33 = v4;
    v34 = sub_25424DA88();
    v35 = sub_25424E428();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 160);
      v37 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = v87;
      *v37 = 136446722;
      sub_25424D948();
      sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v38 = sub_25424EA58();
      v40 = v39;
      sub_25424CD60(v36, type metadata accessor for EventDigestQuery);
      v41 = sub_2542203C4(v38, v40, &v88);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      sub_25424D868();
      v42 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v42 setMaximumFractionDigits_];
      v43 = sub_25424E288();
      v44 = [v42 stringForObjectValue_];

      if (v44)
      {
        v45 = sub_25424DCB8();
        v47 = v46;
      }

      else
      {
        v45 = sub_25424E298();
        v47 = v71;
      }

      v72 = *(v0 + 272);
      v81 = *(v0 + 248);
      v73 = *(v0 + 216);
      v74 = *(v0 + 200);
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      v75 = sub_2542203C4(v45, v47, &v88);

      *(v37 + 14) = v75;
      *(v37 + 22) = 2114;
      v76 = v72;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 24) = v77;
      *v83 = v77;
      _os_log_impl(&dword_254124000, v34, v35, "[%{public}s] Failed after %{public}s seconds: %{public}@", v37, 0x20u);
      sub_254132E5C(v83, &unk_27F5BBED0, &qword_254253F80);
      MEMORY[0x259C07330](v83, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v87, -1, -1);
      MEMORY[0x259C07330](v37, -1, -1);

      v81(v73, v74);
    }

    else
    {
      v55 = *(v0 + 248);
      v56 = *(v0 + 216);
      v57 = *(v0 + 200);
      v58 = *(v0 + 160);
      v60 = *(v0 + 112);
      v59 = *(v0 + 120);
      v61 = *(v0 + 104);

      (*(v60 + 8))(v59, v61);
      sub_25424CD60(v58, type metadata accessor for EventDigestQuery);
      v55(v56, v57);
    }

    *(v0 + 24) = *(v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
    sub_25424E238();
  }

  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_2542468B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25412F724;

  return sub_254246960(a2, a4);
}

uint64_t sub_254246960(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC7F8, &qword_254263F00);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC800, &unk_25425DD60);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for DigestRecord(0);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_25424D8B8();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  v3[24] = v9;
  v3[25] = *(v9 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for CKQueryAsyncSequence(0);
  v3[28] = swift_task_alloc();
  type metadata accessor for EventDigestQuery(0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v10 = sub_25424DAA8();
  v3[33] = v10;
  v3[34] = *(v10 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v11 = sub_25424D948();
  v3[39] = v11;
  v3[40] = *(v11 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254246DD8, 0, 0);
}

uint64_t sub_254246DD8(uint64_t a1)
{
  sub_25424E1E8();
  v2 = *(v1 + 48);
  v3 = type metadata accessor for EventDigestQuery.Configuration(0);
  *(v1 + 352) = v3;
  v4 = *(v3 + 28);
  *(v1 + 456) = v4;
  *(v1 + 464) = *(v2 + *(v3 + 56));
  v5 = swift_task_alloc();
  *(v1 + 360) = v5;
  *v5 = v1;
  v5[1] = sub_254247008;
  v6 = *(v1 + 32);

  return sub_2541A23BC(v6, v2 + v4, (v1 + 464), 1);
}

uint64_t sub_254247008(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_2542477B4;
  }

  else
  {
    v4 = sub_25424711C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25424711C()
{
  v81 = v0;
  v1 = *(v0 + 344);
  v79 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  v73 = *(v0 + 256);
  v76 = *(v0 + 312);
  v4 = *(v0 + 48);
  v5 = [objc_opt_self() predicateWithValue_];
  *(v0 + 384) = v5;
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v6 = v5;
  v7 = sub_25424E538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_254254370;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_25424DCA8();
  v11 = [v9 initWithKey:v10 ascending:0];

  *(v8 + 32) = v11;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v12 = sub_25424DF88();

  v78 = v7;
  [v7 setSortDescriptors_];

  sub_25424D938();
  sub_25421C508(v3);
  sub_25424CDC0(v4, v73, type metadata accessor for EventDigestQuery);
  v13 = *(v2 + 16);
  *(v0 + 392) = v13;
  *(v0 + 400) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14 = v76;
  v77 = v13;
  v13(v79, v1, v14);
  v15 = sub_25424DA88();
  v16 = sub_25424E408();
  if (os_log_type_enabled(v15, v16))
  {
    v70 = v16;
    v66 = *(v0 + 336);
    v17 = *(v0 + 312);
    v18 = *(v0 + 320);
    v19 = *(v0 + 272);
    v72 = *(v0 + 264);
    v74 = *(v0 + 304);
    v20 = *(v0 + 256);
    v21 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v80 = v68;
    *v21 = 136446466;
    sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_25424EA58();
    v24 = v23;
    sub_25424CD60(v20, type metadata accessor for EventDigestQuery);
    v25 = sub_2542203C4(v22, v24, &v80);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = sub_25424EA58();
    v28 = v27;
    v29 = *(v18 + 8);
    v29(v66, v17);
    v30 = sub_2542203C4(v26, v28, &v80);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_254124000, v15, v70, "[%{public}s] Beginning subquery %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v68, -1, -1);
    MEMORY[0x259C07330](v21, -1, -1);

    v33 = *(v19 + 8);
    v32 = v19 + 8;
    v31 = v33;
    v33(v74, v72);
  }

  else
  {
    v34 = *(v0 + 336);
    v35 = *(v0 + 312);
    v36 = *(v0 + 320);
    v37 = *(v0 + 304);
    v38 = *(v0 + 264);
    v39 = *(v0 + 272);
    v40 = *(v0 + 256);

    v29 = *(v36 + 8);
    v29(v34, v35);
    sub_25424CD60(v40, type metadata accessor for EventDigestQuery);
    v41 = *(v39 + 8);
    v32 = v39 + 8;
    v31 = v41;
    v41(v37, v38);
  }

  *(v0 + 416) = v31;
  *(v0 + 424) = v29;
  *(v0 + 408) = v32;
  v42 = *(v0 + 352);
  v60 = *(v0 + 344);
  v61 = *(v0 + 368);
  v43 = *(v0 + 312);
  v44 = *(v0 + 216);
  v45 = *(v0 + 224);
  v75 = *(v0 + 176);
  v65 = *(v0 + 184);
  v67 = *(v0 + 152);
  v69 = *(v0 + 144);
  v71 = *(v0 + 168);
  v62 = *(v0 + 160);
  v63 = *(v0 + 136);
  v46 = *(v0 + 128);
  v64 = *(v0 + 120);
  v47 = *(v0 + 48);
  v48 = *(v0 + 32);
  v49 = v42[15];
  *(v0 + 460) = v49;
  v77(&v45[v44[7]], v47 + v49, v43);
  v77(&v45[v44[8]], v60, v43);
  v50 = (v47 + v42[10]);
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  v52 = *(v47 + v42[16]);
  *v45 = v48;
  *(v45 + 1) = 0;
  *(v45 + 2) = 0;
  *(v45 + 3) = v61;
  *(v45 + 4) = v78;
  *&v45[v44[9]] = &unk_286634340;
  v53 = &v45[v44[10]];
  *v53 = v51;
  v53[8] = v50;
  v54 = &v45[v44[11]];
  *v54 = v52;
  v54[8] = 0;
  *&v45[v44[12]] = 0;
  v55 = v48;
  sub_25424D898();
  v56 = swift_task_alloc();
  *(v56 + 16) = v45;
  *(v56 + 24) = v62;
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  (*(v46 + 104))(v63, *MEMORY[0x277D858A0], v64);
  sub_25424E278();

  (*(v67 + 8))(v62, v69);
  sub_25424E178();
  (*(v75 + 8))(v65, v71);
  *(v0 + 432) = 0;
  v57 = swift_task_alloc();
  *(v0 + 440) = v57;
  *v57 = v0;
  v57[1] = sub_25424791C;
  v58 = *(v0 + 192);

  return MEMORY[0x2822005A8](v0 + 16, 0, 0, v58, v0 + 24);
}

uint64_t sub_2542477B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25424791C()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_254248764;
  }

  else
  {
    v2 = sub_254247A30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254247A30(uint64_t a1)
{
  v125 = v1;
  if (!*(v1 + 16))
  {
    v12 = *(v1 + 392);
    v13 = *(v1 + 344);
    v14 = *(v1 + 328);
    v15 = *(v1 + 312);
    v16 = *(v1 + 280);
    v17 = *(v1 + 232);
    v18 = *(v1 + 48);
    (*(*(v1 + 200) + 8))(*(v1 + 208), *(v1 + 192));
    sub_25421C508(v16);
    sub_25424CDC0(v18, v17, type metadata accessor for EventDigestQuery);
    v12(v14, v13, v15);
    v19 = sub_25424DA88();
    v20 = sub_25424E408();
    if (os_log_type_enabled(v19, v20))
    {
      v103 = *(v1 + 424);
      v105 = *(v1 + 432);
      v114 = *(v1 + 344);
      v21 = *(v1 + 328);
      v22 = *(v1 + 312);
      v108 = *(v1 + 280);
      v111 = *(v1 + 384);
      v107 = *(v1 + 264);
      v23 = *(v1 + 232);
      v119 = *(v1 + 224);
      v122 = *(v1 + 416);
      v24 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v124[0] = v102;
      *v24 = 136446722;
      sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v25 = sub_25424EA58();
      v27 = v26;
      sub_25424CD60(v23, type metadata accessor for EventDigestQuery);
      v28 = sub_2542203C4(v25, v27, v124);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      v29 = v21;
      v30 = sub_25424EA58();
      v32 = v31;
      v103(v29, v22);
      v33 = sub_2542203C4(v30, v32, v124);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2048;
      *(v24 + 24) = v105;
      _os_log_impl(&dword_254124000, v19, v20, "[%{public}s] Finished subquery %{public}s, emitted %ld matching digest(s)", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v102, -1, -1);
      MEMORY[0x259C07330](v24, -1, -1);

      v122(v108, v107);
      v103(v114, v22);
      v34 = v119;
    }

    else
    {
      v61 = *(v1 + 424);
      v62 = *(v1 + 384);
      v118 = *(v1 + 344);
      v120 = *(v1 + 416);
      v63 = *(v1 + 328);
      v64 = *(v1 + 312);
      v65 = *(v1 + 280);
      v66 = *(v1 + 264);
      v67 = *(v1 + 232);
      v123 = *(v1 + 224);

      v61(v63, v64);
      sub_25424CD60(v67, type metadata accessor for EventDigestQuery);
      v120(v65, v66);
      v61(v118, v64);
      v34 = v123;
    }

    sub_25424CD60(v34, type metadata accessor for CKQueryAsyncSequence);

    v11 = *(v1 + 8);
    goto LABEL_11;
  }

  v121 = *(v1 + 16);
  v2 = *(v1 + 448);
  sub_25424E1E8();
  if (!v2)
  {
    v35 = *(v1 + 460);
    v36 = *(v1 + 456);
    v37 = *(v1 + 88);
    v38 = *(v1 + 96);
    v39 = *(v1 + 80);
    v40 = *(v1 + 48);
    v41 = [v121 recordID];
    v42 = [v41 recordName];

    v117 = sub_25424DCB8();
    v44 = v43;

    sub_25424BE2C(v121, v40 + v36, v40 + v35, v39);
    if ((*(v38 + 48))(v39, 1, v37) == 1)
    {
      v45 = *(v1 + 288);
      v46 = *(v1 + 240);
      v47 = *(v1 + 48);
      sub_254132E5C(*(v1 + 80), &unk_27F5BC800, &unk_25425DD60);
      sub_25421C508(v45);
      sub_25424CDC0(v47, v46, type metadata accessor for EventDigestQuery);

      v48 = v121;
      v49 = sub_25424DA88();
      v50 = sub_25424E428();

      v51 = os_log_type_enabled(v49, v50);
      v115 = *(v1 + 416);
      if (v51)
      {
        v106 = v50;
        v109 = *(v1 + 264);
        v112 = *(v1 + 288);
        v52 = *(v1 + 240);
        v53 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v124[0] = v54;
        *v53 = 136446722;
        sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v55 = sub_25424EA58();
        v57 = v56;
        sub_25424CD60(v52, type metadata accessor for EventDigestQuery);
        v58 = sub_2542203C4(v55, v57, v124);

        *(v53 + 4) = v58;
        *(v53 + 12) = 2082;
        v59 = sub_2542203C4(v117, v44, v124);

        *(v53 + 14) = v59;
        *(v53 + 22) = 2112;
        *(v53 + 24) = v48;
        *v104 = v121;
        v60 = v48;
        _os_log_impl(&dword_254124000, v49, v106, "[%{public}s] Found invalid digest %{public}s: %@", v53, 0x20u);
        sub_254132E5C(v104, &unk_27F5BBED0, &qword_254253F80);
        MEMORY[0x259C07330](v104, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x259C07330](v54, -1, -1);
        MEMORY[0x259C07330](v53, -1, -1);

        v115(v112, v109);
      }

      else
      {
        v89 = *(v1 + 288);
        v90 = *(v1 + 264);
        v91 = *(v1 + 240);

        sub_25424CD60(v91, type metadata accessor for EventDigestQuery);
        v115(v89, v90);
      }
    }

    else
    {
      v69 = *(v1 + 296);
      v70 = *(v1 + 248);
      v71 = *(v1 + 48);
      sub_25424CCF8(*(v1 + 80), *(v1 + 112), type metadata accessor for DigestRecord);
      sub_25421C508(v69);
      sub_25424CDC0(v71, v70, type metadata accessor for EventDigestQuery);

      v72 = sub_25424DA88();
      v73 = sub_25424E408();

      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v1 + 416);
      if (v74)
      {
        v113 = *(v1 + 264);
        v116 = *(v1 + 296);
        v76 = *(v1 + 248);
        v77 = swift_slowAlloc();
        v124[0] = swift_slowAlloc();
        v110 = v75;
        v78 = v124[0];
        *v77 = 136446466;
        sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v79 = sub_25424EA58();
        v81 = v80;
        sub_25424CD60(v76, type metadata accessor for EventDigestQuery);
        v82 = sub_2542203C4(v79, v81, v124);

        *(v77 + 4) = v82;
        *(v77 + 12) = 2082;
        v83 = sub_2542203C4(v117, v44, v124);

        *(v77 + 14) = v83;
        _os_log_impl(&dword_254124000, v72, v73, "[%{public}s] Record contains a digest that matches query: %{public}s", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C07330](v78, -1, -1);
        MEMORY[0x259C07330](v77, -1, -1);

        v84 = v110(v116, v113);
      }

      else
      {
        v92 = *(v1 + 296);
        v93 = *(v1 + 264);
        v94 = *(v1 + 248);

        sub_25424CD60(v94, type metadata accessor for EventDigestQuery);
        v84 = v75(v92, v93);
      }

      v95 = *(v1 + 432);
      v96 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        __break(1u);
        return MEMORY[0x2822005A8](v84, v85, v86, v87, v88);
      }

      v97 = *(v1 + 112);
      v98 = *(v1 + 64);
      v99 = *(v1 + 72);
      v100 = *(v1 + 56);
      sub_25424CDC0(v97, *(v1 + 104), type metadata accessor for DigestRecord);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
      sub_25424E228();

      (*(v98 + 8))(v99, v100);
      sub_25424CD60(v97, type metadata accessor for DigestRecord);
      *(v1 + 432) = v96;
    }

    v101 = swift_task_alloc();
    *(v1 + 440) = v101;
    *v101 = v1;
    v101[1] = sub_25424791C;
    v87 = *(v1 + 192);
    v88 = v1 + 24;
    v84 = v1 + 16;
    v85 = 0;
    v86 = 0;

    return MEMORY[0x2822005A8](v84, v85, v86, v87, v88);
  }

  v3 = *(v1 + 424);
  v4 = *(v1 + 384);
  v5 = *(v1 + 344);
  v6 = *(v1 + 312);
  v7 = *(v1 + 224);
  v8 = *(v1 + 200);
  v9 = *(v1 + 208);
  v10 = *(v1 + 192);

  (*(v8 + 8))(v9, v10);
  v3(v5, v6);
  sub_25424CD60(v7, type metadata accessor for CKQueryAsyncSequence);

  v11 = *(v1 + 8);
LABEL_11:

  return v11();
}

uint64_t sub_254248764()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);

  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  sub_25424CD60(v4, type metadata accessor for CKQueryAsyncSequence);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t static EventDigestQuery.fetchMostRecentEndDate(homeIdentifier:scope:targetCloudKitZone:queryIdentifier:qualityOfService:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 88) = *a3;
  *(v6 + 89) = *a4;
  return MEMORY[0x2822009F8](sub_25424896C, 0, 0);
}

uint64_t sub_25424896C()
{
  if (qword_27F5B8420 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 89);
  v18 = *(v0 + 88);
  v2 = *(v0 + 32);
  v17 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = qword_27F5BA548;
  *(v0 + 48) = qword_27F5BA548;
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v5 = v4;
  v6 = [objc_opt_self() predicateWithValue_];
  v7 = sub_25424E538();
  *(v0 + 56) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_254254370;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_25424DCA8();
  v11 = [v9 initWithKey:v10 ascending:0];

  *(v8 + 32) = v11;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v12 = sub_25424DF88();

  [v7 setSortDescriptors_];

  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *(v13 + 16) = v3;
  *(v13 + 24) = v1;
  *(v13 + 32) = v7;
  *(v13 + 40) = v2;
  *(v13 + 48) = &unk_286634390;
  *(v13 + 56) = v17;
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *v14 = v0;
  v14[1] = sub_254248C0C;
  v15 = *(v0 + 16);

  return sub_25414D344(v15, &unk_254263E10, v13, v4, v18 | 0x8000000000000000, 0);
}

uint64_t sub_254248C0C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_25424D0E8;
  }

  else
  {
    v2 = sub_25424D0E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t static EventDigestQuery.fetchMostRecentEndDate(database:homeIdentifier:targetCloudKitZone:queryIdentifier:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 48) = *a2;
  *(v6 + 64) = *(a2 + 16);
  *(v6 + 104) = *a4;
  return MEMORY[0x2822009F8](sub_254248D78, 0, 0);
}

uint64_t sub_254248D78()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v5 = [objc_opt_self() predicateWithValue_];
  v6 = sub_25424E538();
  *(v0 + 72) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_254254370;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_25424DCA8();
  v10 = [v8 initWithKey:v9 ascending:0];

  *(v7 + 32) = v10;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v11 = sub_25424DF88();

  [v6 setSortDescriptors_];

  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v1;
  *(v12 + 32) = v6;
  *(v12 + 40) = v3;
  *(v12 + 48) = &unk_2866343C0;
  *(v12 + 56) = v2;
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_254248FC0;
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = *(v0 + 16);

  return sub_25414D344(v17, &unk_254263E20, v12, v16, v14, v15);
}

uint64_t sub_254248FC0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_25424D0EC;
  }

  else
  {
    v2 = sub_25424D0F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2542490F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA4C8, "pV");
  *(v8 + 88) = swift_task_alloc();
  v12 = type metadata accessor for DigestRecord.Metadata(0);
  *(v8 + 96) = v12;
  *(v8 + 104) = *(v12 - 8);
  *(v8 + 112) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  *(v8 + 120) = v13;
  *(v8 + 128) = *(v13 - 8);
  *(v8 + 136) = swift_task_alloc();
  v14 = sub_25424D8B8();
  *(v8 + 144) = v14;
  *(v8 + 152) = *(v14 - 8);
  *(v8 + 160) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  *(v8 + 168) = v15;
  *(v8 + 176) = *(v15 - 8);
  *(v8 + 184) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  *(v8 + 192) = v16;
  *(v8 + 200) = *(v16 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = type metadata accessor for CKQueryAsyncSequence(0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 264) = a4 & 1;
  v17 = swift_task_alloc();
  *(v8 + 232) = v17;
  *v17 = v8;
  v17[1] = sub_254249424;

  return sub_2541A23BC(a2, a3, (v8 + 264), 1);
}

uint64_t sub_254249424(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_25424D0F0;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_25424954C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25424954C()
{
  v2 = v0[27];
  v1 = v0[28];
  v27 = v0[22];
  v3 = v0[20];
  v23 = v0[23];
  v24 = v0[19];
  v25 = v0[18];
  v26 = v0[21];
  v20 = v0[31];
  v21 = v0[17];
  v4 = v0[16];
  v22 = v0[15];
  v5 = v0[9];
  v19 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v2[7];
  v10 = sub_25424D948();
  (*(*(v10 - 8) + 16))(&v1[v9], v7, v10);
  v11 = v8;
  sub_25424D938();
  *v1 = v8;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = v20;
  *(v1 + 4) = v6;
  *&v1[v2[9]] = v5;
  v12 = &v1[v2[10]];
  *v12 = 1;
  v12[8] = 0;
  v13 = &v1[v2[11]];
  *v13 = v19;
  v13[8] = 0;
  *&v1[v2[12]] = 0;
  v14 = v6;

  sub_25424D898();
  v15 = swift_task_alloc();
  *(v15 + 16) = v1;
  *(v15 + 24) = v3;
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  (*(v4 + 104))(v21, *MEMORY[0x277D858A0], v22);
  sub_25424E278();

  (*(v24 + 8))(v3, v25);
  sub_25424E178();
  (*(v27 + 8))(v23, v26);
  v16 = swift_task_alloc();
  v0[32] = v16;
  *v16 = v0;
  v16[1] = sub_2542497D0;
  v17 = v0[24];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v17, v0 + 3);
}

uint64_t sub_2542497D0()
{

  if (v0)
  {
    v1 = sub_25424D0F4;
  }

  else
  {
    v1 = sub_2542498E0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2542498E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 88);
    sub_254249BA0(*(v0 + 16), *(v0 + 48), *(v0 + 64), v4);

    if ((*(v2 + 48))(v4, 1, v3) == 1)
    {
      sub_254132E5C(*(v0 + 88), &qword_27F5BA4C8, "pV");
      v5 = swift_task_alloc();
      *(v0 + 256) = v5;
      *v5 = v0;
      v5[1] = sub_2542497D0;
      v6 = *(v0 + 192);

      return MEMORY[0x2822005A8](v0 + 16, 0, 0, v6, v0 + 24);
    }

    v9 = *(v0 + 224);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 32);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25424CD60(v9, type metadata accessor for CKQueryAsyncSequence);
    sub_25424CCF8(v13, v12, type metadata accessor for DigestRecord.Metadata);
    (*(v11 + 16))(v15, v12 + *(v14 + 24), v10);
    sub_25424CD60(v12, type metadata accessor for DigestRecord.Metadata);
    v8 = 0;
  }

  else
  {
    v7 = *(v0 + 224);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25424CD60(v7, type metadata accessor for CKQueryAsyncSequence);
    v8 = 1;
  }

  (*(*(v0 + 152) + 56))(*(v0 + 32), v8, 1, *(v0 + 144));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_254249BA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a3;
  v109 = a2;
  v122 = a4;
  v5 = sub_25424D948();
  v118 = *(v5 - 1);
  v6 = MEMORY[0x28223BE20](v5);
  v114 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v105 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v112 = &v105 - v12;
  MEMORY[0x28223BE20](v11);
  v107 = &v105 - v13;
  v14 = sub_25424DAA8();
  v15 = *(v14 - 8);
  v116 = v14;
  v117 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v115 = (&v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v120 = (&v105 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v105 - v21;
  MEMORY[0x28223BE20](v20);
  v108 = &v105 - v22;
  v123 = type metadata accessor for DigestRecord.Metadata(0);
  v121 = *(v123 - 8);
  v23 = MEMORY[0x28223BE20](v123);
  v105 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v106 = &v105 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v111 = &v105 - v28;
  MEMORY[0x28223BE20](v27);
  v110 = &v105 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v105 - v31;
  v33 = [a1 recordID];
  v34 = [v33 recordName];
  sub_25424DCB8();

  v35 = v118;
  sub_25424D8C8();
  v36 = v5;

  LODWORD(v34) = (*(v35 + 48))(v32, 1, v5);
  sub_254132E5C(v32, &unk_27F5B8E50, &qword_254254390);
  if (v34 == 1)
  {
    sub_25421C508(v120);
    (*(v35 + 16))(v10, v119, v5);
    v37 = v33;
    v38 = sub_25424DA88();
    v39 = sub_25424E408();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v125 = v41;
      *v40 = 136446722;
      sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = sub_25424EA58();
      v44 = v43;
      (*(v35 + 8))(v10, v5);
      v45 = sub_2542203C4(v42, v44, &v125);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2160;
      *(v40 + 14) = 1752392040;
      *(v40 + 22) = 2080;
      v46 = [v37 recordName];
      v47 = sub_25424DCB8();
      v49 = v48;

      v50 = sub_2542203C4(v47, v49, &v125);

      *(v40 + 24) = v50;
      _os_log_impl(&dword_254124000, v38, v39, "[%{public}s] Ignoring record with non-UUID record name: %{mask.hash}s", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v41, -1, -1);
      MEMORY[0x259C07330](v40, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v10, v5);
    }

    (*(v117 + 8))(v120, v116);
  }

  else
  {
    v51 = v119;
    if ([a1 isExpired])
    {
      v52 = v113;
      sub_25421C508(v113);
      v53 = v112;
      (*(v35 + 16))(v112, v51, v36);
      v54 = v33;
      v55 = sub_25424DA88();
      v56 = sub_25424E408();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = v53;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&v125 = v120;
        *v58 = 136446466;
        sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v60 = sub_25424EA58();
        v61 = v36;
        v63 = v62;
        (*(v35 + 8))(v57, v61);
        v64 = sub_2542203C4(v60, v63, &v125);

        *(v58 + 4) = v64;
        *(v58 + 12) = 2114;
        *(v58 + 14) = v54;
        *v59 = v54;
        v65 = v54;
        _os_log_impl(&dword_254124000, v55, v56, "[%{public}s] Ignoring record %{public}@ that has expired", v58, 0x16u);
        sub_254132E5C(v59, &unk_27F5BBED0, &qword_254253F80);
        MEMORY[0x259C07330](v59, -1, -1);
        v66 = v120;
        __swift_destroy_boxed_opaque_existential_1(v120);
        MEMORY[0x259C07330](v66, -1, -1);
        MEMORY[0x259C07330](v58, -1, -1);
      }

      else
      {

        (*(v35 + 8))(v53, v36);
      }

      (*(v117 + 8))(v52, v116);
    }

    else
    {
      v67 = a1;
      sub_254230304(1u, [a1 encryptedValues], &v125);
      v120 = v5;
      swift_unknownObjectRelease();
      v68 = v125;
      sub_25424D168();
      swift_allocObject();
      sub_25424D158();
      sub_25424D09C(&qword_27F5BA4D8, type metadata accessor for DigestRecord.Metadata, &protocol conformance descriptor for DigestRecord.Metadata);
      v69 = v111;
      sub_25424D138();

      sub_254134D04(v68, *(&v68 + 1));
      v73 = v110;
      sub_25424CCF8(v69, v110, type metadata accessor for DigestRecord.Metadata);
      sub_25424D09C(&qword_27F5B9090, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v74 = v120;
      v75 = sub_25424DC98();
      if (v75)
      {

        v76 = v122;
        sub_25424CCF8(v73, v122, type metadata accessor for DigestRecord.Metadata);
        v71 = v76;
        v70 = 0;
        return (*(v121 + 56))(v71, v70, 1, v123);
      }

      v77 = v108;
      sub_25421C508(v108);
      v78 = v51;
      v79 = v107;
      (*(v35 + 16))(v107, v78, v74);
      sub_25424CDC0(v73, v106, type metadata accessor for DigestRecord.Metadata);
      v80 = v33;
      v81 = v67;
      v82 = sub_25424DA88();
      v83 = sub_25424E428();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v115 = v82;
        v86 = v85;
        v119 = swift_slowAlloc();
        *&v125 = v119;
        *v84 = 136446978;
        sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v87 = sub_25424EA58();
        LODWORD(v114) = v83;
        v89 = v88;
        (*(v35 + 8))(v79, v74);
        v90 = sub_2542203C4(v87, v89, &v125);

        *(v84 + 4) = v90;
        *(v84 + 12) = 2114;
        *(v84 + 14) = v80;
        v91 = v86;
        *v86 = v80;
        *(v84 + 22) = 2080;
        sub_25424CDC0(v68, v105, type metadata accessor for DigestRecord.Metadata);
        v92 = v80;
        v93 = sub_25424DD08();
        v95 = v94;
        sub_25424CD60(v68, type metadata accessor for DigestRecord.Metadata);
        v96 = sub_2542203C4(v93, v95, &v125);

        *(v84 + 24) = v96;
        *(v84 + 32) = 2080;
        v97 = [v81 encryptedValues];
        v98 = sub_25424DCA8();
        v99 = [v97 objectForKeyedSubscript_];
        swift_unknownObjectRelease();

        v124[0] = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7D8, &unk_254263EB0);
        v100 = sub_25424DD08();
        v102 = sub_2542203C4(v100, v101, &v125);

        *(v84 + 34) = v102;
        v103 = v115;
        _os_log_impl(&dword_254124000, v115, v114, "[%{public}s] Ignoring record %{public}@ that belongs to another home: %s, %s", v84, 0x2Au);
        sub_254132E5C(v91, &unk_27F5BBED0, &qword_254253F80);
        MEMORY[0x259C07330](v91, -1, -1);
        v104 = v119;
        swift_arrayDestroy();
        MEMORY[0x259C07330](v104, -1, -1);
        MEMORY[0x259C07330](v84, -1, -1);

        (*(v117 + 8))(v108, v116);
        sub_25424CD60(v110, type metadata accessor for DigestRecord.Metadata);
      }

      else
      {

        sub_25424CD60(v68, type metadata accessor for DigestRecord.Metadata);
        (*(v35 + 8))(v79, v74);
        (*(v117 + 8))(v77, v116);
        sub_25424CD60(v73, type metadata accessor for DigestRecord.Metadata);
      }
    }
  }

  v70 = 1;
  v71 = v122;
  return (*(v121 + 56))(v71, v70, 1, v123);
}

uint64_t static EventDigestQuery.fetchOldestStartDate(homeIdentifier:scope:targetCloudKitZone:queryIdentifier:qualityOfService:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 88) = *a3;
  *(v6 + 89) = *a4;
  return MEMORY[0x2822009F8](sub_25424AC88, 0, 0);
}

uint64_t sub_25424AC88()
{
  if (qword_27F5B8420 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 89);
  v18 = *(v0 + 88);
  v2 = *(v0 + 32);
  v17 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = qword_27F5BA548;
  *(v0 + 48) = qword_27F5BA548;
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v5 = v4;
  v6 = [objc_opt_self() predicateWithValue_];
  v7 = sub_25424E538();
  *(v0 + 56) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_254254370;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_25424DCA8();
  v11 = [v9 initWithKey:v10 ascending:1];

  *(v8 + 32) = v11;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v12 = sub_25424DF88();

  [v7 setSortDescriptors_];

  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *(v13 + 16) = v3;
  *(v13 + 24) = v1;
  *(v13 + 32) = v7;
  *(v13 + 40) = v2;
  *(v13 + 48) = &unk_2866343F0;
  *(v13 + 56) = v17;
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *v14 = v0;
  v14[1] = sub_25424AF2C;
  v15 = *(v0 + 16);

  return sub_25414D344(v15, &unk_254263E30, v13, v4, v18 | 0x8000000000000000, 0);
}

uint64_t sub_25424AF2C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_25424B0C4;
  }

  else
  {
    v2 = sub_25424B05C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25424B05C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25424B0C4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25424B12C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA4C8, "pV");
  *(v8 + 88) = swift_task_alloc();
  v12 = type metadata accessor for DigestRecord.Metadata(0);
  *(v8 + 96) = v12;
  *(v8 + 104) = *(v12 - 8);
  *(v8 + 112) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  *(v8 + 120) = v13;
  *(v8 + 128) = *(v13 - 8);
  *(v8 + 136) = swift_task_alloc();
  v14 = sub_25424D8B8();
  *(v8 + 144) = v14;
  *(v8 + 152) = *(v14 - 8);
  *(v8 + 160) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  *(v8 + 168) = v15;
  *(v8 + 176) = *(v15 - 8);
  *(v8 + 184) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  *(v8 + 192) = v16;
  *(v8 + 200) = *(v16 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = type metadata accessor for CKQueryAsyncSequence(0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 264) = a4 & 1;
  v17 = swift_task_alloc();
  *(v8 + 232) = v17;
  *v17 = v8;
  v17[1] = sub_25424B460;

  return sub_2541A23BC(a2, a3, (v8 + 264), 1);
}

uint64_t sub_25424B460(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_25424B80C;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_25424B588;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25424B588()
{
  v2 = v0[27];
  v1 = v0[28];
  v27 = v0[22];
  v3 = v0[20];
  v23 = v0[23];
  v24 = v0[19];
  v25 = v0[18];
  v26 = v0[21];
  v20 = v0[31];
  v21 = v0[17];
  v4 = v0[16];
  v22 = v0[15];
  v5 = v0[9];
  v19 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v2[7];
  v10 = sub_25424D948();
  (*(*(v10 - 8) + 16))(&v1[v9], v7, v10);
  v11 = v8;
  sub_25424D938();
  *v1 = v8;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = v20;
  *(v1 + 4) = v6;
  *&v1[v2[9]] = v5;
  v12 = &v1[v2[10]];
  *v12 = 1;
  v12[8] = 0;
  v13 = &v1[v2[11]];
  *v13 = v19;
  v13[8] = 0;
  *&v1[v2[12]] = 0;
  v14 = v6;

  sub_25424D898();
  v15 = swift_task_alloc();
  *(v15 + 16) = v1;
  *(v15 + 24) = v3;
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  (*(v4 + 104))(v21, *MEMORY[0x277D858A0], v22);
  sub_25424E278();

  (*(v24 + 8))(v3, v25);
  sub_25424E178();
  (*(v27 + 8))(v23, v26);
  v16 = swift_task_alloc();
  v0[32] = v16;
  *v16 = v0;
  v16[1] = sub_25424B8D0;
  v17 = v0[24];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v17, v0 + 3);
}

uint64_t sub_25424B80C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25424B8D0()
{

  if (v0)
  {
    v1 = sub_25424BCA0;
  }

  else
  {
    v1 = sub_25424B9E0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25424B9E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 88);
    sub_254249BA0(*(v0 + 16), *(v0 + 48), *(v0 + 64), v4);

    if ((*(v2 + 48))(v4, 1, v3) == 1)
    {
      sub_254132E5C(*(v0 + 88), &qword_27F5BA4C8, "pV");
      v5 = swift_task_alloc();
      *(v0 + 256) = v5;
      *v5 = v0;
      v5[1] = sub_25424B8D0;
      v6 = *(v0 + 192);

      return MEMORY[0x2822005A8](v0 + 16, 0, 0, v6, v0 + 24);
    }

    v9 = *(v0 + 224);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 32);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25424CD60(v9, type metadata accessor for CKQueryAsyncSequence);
    sub_25424CCF8(v13, v12, type metadata accessor for DigestRecord.Metadata);
    (*(v11 + 16))(v15, v12 + *(v14 + 20), v10);
    sub_25424CD60(v12, type metadata accessor for DigestRecord.Metadata);
    v8 = 0;
  }

  else
  {
    v7 = *(v0 + 224);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25424CD60(v7, type metadata accessor for CKQueryAsyncSequence);
    v8 = 1;
  }

  (*(*(v0 + 152) + 56))(*(v0 + 32), v8, 1, *(v0 + 144));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_25424BCA0()
{
  v1 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_25424CD60(v1, type metadata accessor for CKQueryAsyncSequence);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25424BDBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC7B0, &qword_2542588D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25424BE2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = sub_25424D948();
  v8 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v55 - v11;
  v12 = sub_25424DAA8();
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v61 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v55 - v15;
  v16 = type metadata accessor for DigestRecord(0);
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v55 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v56 = &v55 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v55 - v22;
  MEMORY[0x28223BE20](v21);
  v58 = &v55 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA4C8, "pV");
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v55 - v26;
  sub_254249BA0(a1, a2, a3, &v55 - v26);
  v28 = type metadata accessor for DigestRecord.Metadata(0);
  v29 = 1;
  v30 = (*(*(v28 - 8) + 48))(v27, 1, v28);
  sub_254132E5C(v27, &qword_27F5BA4C8, "pV");
  v31 = v30 == 1;
  v32 = a4;
  if (!v31)
  {
    sub_2541B8FB8(a1, v23);
    v33 = (v8 + 16);
    v34 = v8;
    v35 = v58;
    sub_25424CCF8(v23, v58, type metadata accessor for DigestRecord);
    v36 = v59;
    sub_25421C508(v59);
    v37 = v57;
    v38 = v62;
    (*v33)(v57, a3, v62);
    v39 = v56;
    sub_25424CDC0(v35, v56, type metadata accessor for DigestRecord);
    v40 = sub_25424DA88();
    v41 = sub_25424E418();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v67[0] = v61;
      *v42 = 136315394;
      sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v43 = v39;
      v44 = sub_25424EA58();
      v46 = v45;
      (*(v34 + 8))(v37, v38);
      v47 = sub_2542203C4(v44, v46, v67);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      sub_25424CDC0(v43, v55, type metadata accessor for DigestRecord);
      v48 = sub_25424DD08();
      v50 = v49;
      v51 = v43;
      v35 = v58;
      sub_25424CD60(v51, type metadata accessor for DigestRecord);
      v52 = sub_2542203C4(v48, v50, v67);

      *(v42 + 14) = v52;
      _os_log_impl(&dword_254124000, v40, v41, "[%s] Successfully decoded record %s", v42, 0x16u);
      v53 = v61;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v53, -1, -1);
      MEMORY[0x259C07330](v42, -1, -1);

      (*(v63 + 8))(v59, v64);
    }

    else
    {

      sub_25424CD60(v39, type metadata accessor for DigestRecord);
      (*(v34 + 8))(v37, v38);
      (*(v63 + 8))(v36, v64);
    }

    sub_25424CCF8(v35, v32, type metadata accessor for DigestRecord);
    v29 = 0;
  }

  return (*(v65 + 56))(v32, v29, 1, v66);
}

uint64_t EventDigestQuery.description.getter()
{
  sub_25424E688();
  type metadata accessor for EventDigestQuery(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC000, &qword_254261BA0);
  v0 = sub_25424DD08();
  MEMORY[0x259C05CA0](v0);

  MEMORY[0x259C05CA0](0xD000000000000016, 0x8000000254250440);
  type metadata accessor for EventDigestQuery.Configuration(0);
  sub_25424D948();
  sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_25424EA58();
  MEMORY[0x259C05CA0](v1);

  MEMORY[0x259C05CA0](0x3D20656D6F68202CLL, 0xE900000000000020);
  v2 = sub_25424EA58();
  MEMORY[0x259C05CA0](v2);

  MEMORY[0x259C05CA0](0x2074696D696C202CLL, 0xEA0000000000203DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8D70, &qword_254253E50);
  v3 = sub_25424DD08();
  MEMORY[0x259C05CA0](v3);

  MEMORY[0x259C05CA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_25424C930(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F818;

  return sub_2542490F0(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_25424CA10(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F724;

  return sub_25424B12C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_25424CB38(uint64_t a1)
{
  result = type metadata accessor for EventDigestQuery.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25424CBCC(uint64_t a1)
{
  sub_2541691B0();
  if (v1 <= 0x3F)
  {
    sub_2541481B4();
    if (v2 <= 0x3F)
    {
      sub_25424D948();
      if (v3 <= 0x3F)
      {
        sub_25424D218();
        if (v4 <= 0x3F)
        {
          sub_254141A7C(319);
          if (v5 <= 0x3F)
          {
            sub_25414810C();
            if (v6 <= 0x3F)
            {
              type metadata accessor for QualityOfService(319);
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

uint64_t sub_25424CCF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25424CD60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25424CDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25424CE28(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EventDigestQuery(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25424D8B8() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25412F724;

  return sub_2542453FC(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_25424CFE8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25412F818;

  return sub_2542468B4(a1, a2, v7, v6);
}

uint64_t sub_25424D09C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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