uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV5SoundO2eeoiySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v6 && (sub_24910D54C() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_24910D54C() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || a1[3] != *(a2 + 24) || a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[5];
  v5 = a1[6];
  v8 = *(a2 + 40);
  v7 = *(a2 + 48);
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_2490B3924(a1[5], a1[6]);
      sub_2490B3924(v8, v7);
      v9 = sub_2490B3A58(v6, v5, v8, v7);
      sub_2490B3854(v8, v7);
      sub_2490B3854(v6, v5);
      if (!v9)
      {
        return 0;
      }

      goto LABEL_15;
    }

LABEL_13:
    sub_2490B3924(a1[5], a1[6]);
    sub_2490B3924(v8, v7);
    sub_2490B3854(v6, v5);
    sub_2490B3854(v8, v7);
    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_13;
  }

  sub_2490B3924(a1[5], a1[6]);
  sub_2490B3924(v8, v7);
  sub_2490B3854(v6, v5);
LABEL_15:
  v10 = type metadata accessor for DTSyncedAlarm(0);
  if ((sub_24910C21C() & 1) == 0 || (sub_2490ACDCC(*(a1 + v10[10]), *(a2 + v10[10])) & 1) == 0)
  {
    return 0;
  }

  v11 = v10[11];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = a2 + v11;
  v15 = *(v14 + 8);
  if (v13)
  {
    if (v15)
    {
      v16 = v12[2];
      v17 = *(v12 + 24);
      v18 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (*v12 == *v14 && v13 == v15)
      {
      }

      else
      {
        v20 = sub_24910D54C();

        if ((v20 & 1) == 0)
        {
LABEL_36:

          return 0;
        }
      }

      if (v17)
      {
        if ((v19 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if ((v19 & 1) != 0 || v16 != v18)
      {
        goto LABEL_36;
      }

LABEL_30:

      v21 = v10[12];
      v22 = (a1 + v21);
      v23 = *(a1 + v21 + 8);
      v24 = (a2 + v21);
      v25 = v24[1];
      if (v23)
      {
        if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_24910D54C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v25)
      {
        return 0;
      }

      v26 = v10[13];
      v27 = (a1 + v26);
      v28 = *(a1 + v26 + 8);
      v29 = (a2 + v26);
      v30 = v29[1];
      if (v28)
      {
        if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_24910D54C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v30)
      {
        return 0;
      }

      return 1;
    }
  }

  else if (!v15)
  {
    goto LABEL_30;
  }

  return 0;
}

uint64_t _s23DistributedTimersDaemon13DTSyncedTimerV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_24910D54C() & 1) == 0 || a1[2] != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_2490B3924(*(a1 + 3), *(a1 + 4));
      sub_2490B3924(v8, v7);
      v9 = sub_2490B3A58(v6, v5, v8, v7);
      sub_2490B3854(v8, v7);
      sub_2490B3854(v6, v5);
      if (!v9)
      {
        return 0;
      }

      goto LABEL_13;
    }

LABEL_11:
    sub_2490B3924(*(a1 + 3), *(a1 + 4));
    sub_2490B3924(v8, v7);
    sub_2490B3854(v6, v5);
    sub_2490B3854(v8, v7);
    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_11;
  }

  sub_2490B3924(*(a1 + 3), *(a1 + 4));
  sub_2490B3924(v8, v7);
  sub_2490B3854(v6, v5);
LABEL_13:
  v10 = type metadata accessor for DTSyncedTimer(0);
  if ((sub_24910C21C() & 1) == 0 || (sub_2490AB104(*(a1 + v10[8]), *(a2 + v10[8])) & 1) == 0)
  {
    return 0;
  }

  v11 = v10[9];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15 || (*v12 != *v14 || v13 != v15) && (sub_24910D54C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = v10[10];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (v20 && (*v17 == *v19 && v18 == v20 || (sub_24910D54C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2490B412C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24910D38C();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2490B4178()
{
  result = qword_27EED8AD0;
  if (!qword_27EED8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED8AD0);
  }

  return result;
}

unint64_t sub_2490B41CC()
{
  result = qword_27EED8AD8;
  if (!qword_27EED8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED8AD8);
  }

  return result;
}

unint64_t sub_2490B4220()
{
  result = qword_27EED8AE0[0];
  if (!qword_27EED8AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED8AE0);
  }

  return result;
}

unint64_t sub_2490B4274()
{
  result = qword_27EED7858;
  if (!qword_27EED7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7858);
  }

  return result;
}

unint64_t sub_2490B42C8()
{
  result = qword_27EED7878;
  if (!qword_27EED7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7878);
  }

  return result;
}

unint64_t sub_2490B431C()
{
  result = qword_27EED7888;
  if (!qword_27EED7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7888);
  }

  return result;
}

unint64_t sub_2490B4370()
{
  result = qword_27EED7890;
  if (!qword_27EED7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7890);
  }

  return result;
}

unint64_t sub_2490B43C4()
{
  result = qword_27EED78B0;
  if (!qword_27EED78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED78B0);
  }

  return result;
}

unint64_t sub_2490B4418()
{
  result = qword_27EED78B8;
  if (!qword_27EED78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED78B8);
  }

  return result;
}

unint64_t sub_2490B446C()
{
  result = qword_27EED78C8;
  if (!qword_27EED78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED78C8);
  }

  return result;
}

uint64_t sub_2490B44C0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED78A0, &qword_24910EF78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2490B4538()
{
  result = qword_27EED78E0;
  if (!qword_27EED78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED78E0);
  }

  return result;
}

unint64_t sub_2490B458C()
{
  result = qword_27EED78E8;
  if (!qword_27EED78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED78E8);
  }

  return result;
}

_OWORD *sub_2490B45E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2490B4644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2490B46AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24910D38C();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2490B46F8()
{
  result = qword_27EED7910;
  if (!qword_27EED7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7910);
  }

  return result;
}

unint64_t sub_2490B474C()
{
  result = qword_27EED7918;
  if (!qword_27EED7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7918);
  }

  return result;
}

unint64_t sub_2490B47A0()
{
  result = qword_27EED7928;
  if (!qword_27EED7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7928);
  }

  return result;
}

unint64_t sub_2490B47F8()
{
  result = qword_27EED7930;
  if (!qword_27EED7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7930);
  }

  return result;
}

unint64_t sub_2490B4850()
{
  result = qword_27EED7938;
  if (!qword_27EED7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7938);
  }

  return result;
}

unint64_t sub_2490B48A8()
{
  result = qword_27EED7940;
  if (!qword_27EED7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7940);
  }

  return result;
}

unint64_t sub_2490B4900()
{
  result = qword_27EED7948;
  if (!qword_27EED7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7948);
  }

  return result;
}

uint64_t sub_2490B4954(void *a1)
{
  a1[1] = sub_2490A5A5C(&unk_27EED7950, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
  a1[2] = sub_2490A5A5C(&qword_27EED7790, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
  a1[3] = sub_2490A5A5C(&qword_27EED7760, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
  a1[4] = sub_2490A5A5C(&qword_27EED76A0, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
  result = sub_2490A5A5C(&qword_27EED7960, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
  a1[5] = result;
  return result;
}

unint64_t sub_2490B4A60()
{
  result = qword_27EED7968;
  if (!qword_27EED7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7968);
  }

  return result;
}

unint64_t sub_2490B4AB8()
{
  result = qword_27EED7970;
  if (!qword_27EED7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7970);
  }

  return result;
}

unint64_t sub_2490B4B10()
{
  result = qword_27EED7978;
  if (!qword_27EED7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7978);
  }

  return result;
}

unint64_t sub_2490B4B68()
{
  result = qword_27EED7980;
  if (!qword_27EED7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7980);
  }

  return result;
}

uint64_t sub_2490B4BBC(void *a1)
{
  a1[1] = sub_2490A5A5C(&qword_27EED75C0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
  a1[2] = sub_2490A5A5C(&qword_27EED77A0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
  a1[3] = sub_2490A5A5C(&qword_27EED7778, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
  a1[4] = sub_2490A5A5C(&qword_27EED7990, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
  result = sub_2490A5A5C(&unk_27EED7998, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
  a1[5] = result;
  return result;
}

__n128 sub_2490B4CC4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2490B4CE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2490B4DB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2490B4E64(uint64_t a1)
{
  sub_2490B4EE0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2490B4EE0(uint64_t a1)
{
  if (!qword_27EED79A8)
  {
    sub_24910CACC();
    v1 = sub_24910D11C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EED79A8);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2490B4F44(uint64_t *a1, int a2)
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

uint64_t sub_2490B4F8C(uint64_t result, int a2, int a3)
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

uint64_t sub_2490B50F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24910C26C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2490B51B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24910C26C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2490B5254(uint64_t a1)
{
  sub_2490B5424(319, &qword_27EED79B0, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_24910C26C();
    if (v2 <= 0x3F)
    {
      sub_2490B5374(319);
      if (v3 <= 0x3F)
      {
        sub_2490B5424(319, &qword_27EED79C8, &type metadata for DTSyncedAlarm.Sound);
        if (v4 <= 0x3F)
        {
          sub_2490B5424(319, &qword_27EED79D0, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2490B5374(uint64_t a1)
{
  if (!qword_27EED79B8)
  {
    sub_2490B53D0();
    v1 = sub_24910CE8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EED79B8);
    }
  }
}

unint64_t sub_2490B53D0()
{
  result = qword_27EED79C0;
  if (!qword_27EED79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED79C0);
  }

  return result;
}

void sub_2490B5424(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24910D11C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DTSyncedAlarm.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DTSyncedAlarm.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2490B5608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2490B5654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2490B56BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24910C26C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2490B577C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24910C26C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2490B5820(uint64_t a1)
{
  sub_2490B5424(319, &qword_27EED79B0, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_24910C26C();
    if (v2 <= 0x3F)
    {
      sub_2490B5424(319, &qword_27EED79D0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV3DayOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV3DayOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DTSyncedTimer.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DTSyncedTimer.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV5SoundO10CodingKeysOwet_0(unsigned int *a1, int a2)
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

_WORD *_s23DistributedTimersDaemon13DTSyncedAlarmV5SoundO10CodingKeysOwst_0(_WORD *result, int a2, int a3)
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

uint64_t sub_2490B5CB8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2490B5D4C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2490B5E1C()
{
  result = qword_27EEDA220[0];
  if (!qword_27EEDA220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDA220);
  }

  return result;
}

unint64_t sub_2490B5E74()
{
  result = qword_27EEDA430[0];
  if (!qword_27EEDA430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDA430);
  }

  return result;
}

unint64_t sub_2490B5ECC()
{
  result = qword_27EEDA640[0];
  if (!qword_27EEDA640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDA640);
  }

  return result;
}

unint64_t sub_2490B5F24()
{
  result = qword_27EEDA850[0];
  if (!qword_27EEDA850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDA850);
  }

  return result;
}

unint64_t sub_2490B5F7C()
{
  result = qword_27EEDAA60[0];
  if (!qword_27EEDAA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDAA60);
  }

  return result;
}

unint64_t sub_2490B5FD4()
{
  result = qword_27EEDAB70;
  if (!qword_27EEDAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDAB70);
  }

  return result;
}

unint64_t sub_2490B602C()
{
  result = qword_27EEDAB78;
  if (!qword_27EEDAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDAB78);
  }

  return result;
}

unint64_t sub_2490B6084()
{
  result = qword_27EEDAC00;
  if (!qword_27EEDAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDAC00);
  }

  return result;
}

unint64_t sub_2490B60DC()
{
  result = qword_27EEDAC08[0];
  if (!qword_27EEDAC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDAC08);
  }

  return result;
}

unint64_t sub_2490B6134()
{
  result = qword_27EEDAC90;
  if (!qword_27EEDAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDAC90);
  }

  return result;
}

unint64_t sub_2490B618C()
{
  result = qword_27EEDAC98[0];
  if (!qword_27EEDAC98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDAC98);
  }

  return result;
}

unint64_t sub_2490B61E4()
{
  result = qword_27EEDAD20;
  if (!qword_27EEDAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDAD20);
  }

  return result;
}

unint64_t sub_2490B623C()
{
  result = qword_27EEDAD28[0];
  if (!qword_27EEDAD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDAD28);
  }

  return result;
}

unint64_t sub_2490B6294()
{
  result = qword_27EEDADB0;
  if (!qword_27EEDADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDADB0);
  }

  return result;
}

unint64_t sub_2490B62EC()
{
  result = qword_27EEDADB8[0];
  if (!qword_27EEDADB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDADB8);
  }

  return result;
}

unint64_t sub_2490B6340()
{
  result = qword_27EED79D8;
  if (!qword_27EED79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED79D8);
  }

  return result;
}

unint64_t sub_2490B6394()
{
  result = qword_27EED79E0;
  if (!qword_27EED79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED79E0);
  }

  return result;
}

uint64_t sub_2490B64B0()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EEDAE48);
  __swift_project_value_buffer(v0, qword_27EEDAE48);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTTimerDaemon.unownedExecutor.getter()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t DTTimerDaemon.__allocating_init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_2490CD2CC(a1, a2);

  return v4;
}

uint64_t DTTimerDaemon.init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2490CD2CC(a1, a2);

  return v2;
}

uint64_t DTTimerDaemon.summary.getter()
{
  v1[16] = v0;
  v2 = sub_24910C3EC();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490B6734, v4, v3);
}

void sub_2490B6734()
{
  v1 = 7104878;
  v2 = v0[16];
  sub_24910C3DC();
  sub_24910CCBC();
  if (*(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager))
  {
    v3 = v0[16];
    v4 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
    swift_beginAccess();
    v0[15] = *(*(v3 + v4) + 16);
    v5 = sub_24910D50C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  v8 = v0[16];
  MEMORY[0x24C1F1710](v5, v7);

  sub_24910CCBC();

  if (*(v8 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager))
  {
    v9 = v0[16];
    v10 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
    swift_beginAccess();
    v0[14] = *(*(v9 + v10) + 16);
    v1 = sub_24910D50C();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  v13 = v0[16];
  MEMORY[0x24C1F1710](v1, v12);

  sub_24910CCBC();

  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  v14 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
  swift_beginAccess();
  v15 = *(v13 + v14);
  v16 = -1;
  v17 = -1 << *(v15 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v15 + 64);
  v19 = (63 - v17) >> 6;

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_15:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = *(*(v15 + 56) + ((v21 << 9) | (8 * v22)));
      v41 = sub_24910D0BC();
      v43 = v24;
      MEMORY[0x24C1F1710](10, 0xE100000000000000);
      MEMORY[0x24C1F1710](v41, v43);

      if (!v18)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_15;
    }
  }

  v25 = v0[16];

  v26 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
  swift_beginAccess();
  v27 = *(v25 + v26);
  v28 = -1;
  v29 = -1 << *(v27 + 32);
  if (-v29 < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v27 + 64);
  v31 = (63 - v29) >> 6;

  v32 = 0;
  while (v30)
  {
    v33 = v32;
LABEL_25:
    v34 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v35 = *(*(v27 + 56) + ((v33 << 9) | (8 * v34)));
    v42 = sub_24910D0DC();
    v44 = v36;
    MEMORY[0x24C1F1710](10, 0xE100000000000000);
    MEMORY[0x24C1F1710](v42, v44);
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {
      v38 = v0[18];
      v37 = v0[19];
      v39 = v0[17];

      (*(v38 + 8))(v37, v39);

      v40 = v0[1];

      v40(0, 0xE000000000000000);
      return;
    }

    v30 = *(v27 + 64 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_25;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t DTTimerDaemon.activate()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2490B6C2C;

  return sub_2490B6E60();
}

uint64_t sub_2490B6C2C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_2490B6D6C;

  return sub_2490B7BCC();
}

uint64_t sub_2490B6D6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2490B6E60()
{
  v1[65] = v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v3 = sub_24910CDAC();
  v1[66] = v3;
  v1[67] = v2;

  return MEMORY[0x2822009F8](sub_2490B6F38, v3, v2);
}

uint64_t sub_2490B6F38()
{
  v1 = v0[65];
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager;
  if (*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_27EEDAE40 != -1)
    {
      swift_once();
    }

    v5 = sub_24910C89C();
    __swift_project_value_buffer(v5, qword_27EEDAE48);
    v6 = sub_24910C87C();
    v7 = sub_24910CF5C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_249083000, v6, v7, "Alarm monitor start", v8, 2u);
      MEMORY[0x24C1F26F0](v8, -1, -1);
    }

    v9 = v0[65];

    v10 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    v0[68] = v10;
    v11 = *(v1 + v2);
    *(v1 + v2) = v10;
    v12 = v10;

    v13 = [objc_opt_self() defaultCenter];
    v0[69] = v13;
    v14 = *MEMORY[0x277D29590];
    v15 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_2490CE024;
    v0[7] = v15;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2490C1B98;
    v0[5] = &block_descriptor_162;
    v16 = _Block_copy(v0 + 2);
    v17 = v14;

    v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v16];
    _Block_release(v16);

    v19 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmObservers;
    v20 = swift_beginAccess();
    MEMORY[0x24C1F1760](v20);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v21 = *MEMORY[0x277D295B0];
    v22 = swift_allocObject();
    swift_weakInit();
    v0[12] = sub_2490CE02C;
    v0[13] = v22;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_2490C1B98;
    v0[11] = &block_descriptor_166;
    v23 = _Block_copy(v0 + 8);
    v24 = v21;

    v25 = [v13 addObserverForName:v24 object:0 queue:0 usingBlock:v23];
    _Block_release(v23);

    v26 = swift_beginAccess();
    MEMORY[0x24C1F1760](v26);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v27 = *MEMORY[0x277D295A8];
    v28 = swift_allocObject();
    swift_weakInit();
    v0[18] = sub_2490CE034;
    v0[19] = v28;
    v0[14] = MEMORY[0x277D85DD0];
    v0[15] = 1107296256;
    v0[16] = sub_2490C1B98;
    v0[17] = &block_descriptor_170;
    v29 = _Block_copy(v0 + 14);
    v30 = v27;

    v31 = [v13 addObserverForName:v30 object:0 queue:0 usingBlock:v29];
    _Block_release(v29);

    v32 = swift_beginAccess();
    MEMORY[0x24C1F1760](v32);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v33 = *MEMORY[0x277D29588];
    v34 = swift_allocObject();
    swift_weakInit();
    v0[24] = sub_2490CE03C;
    v0[25] = v34;
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_2490C1B98;
    v0[23] = &block_descriptor_174;
    v35 = _Block_copy(v0 + 20);
    v36 = v33;

    v37 = [v13 addObserverForName:v36 object:0 queue:0 usingBlock:v35];
    _Block_release(v35);

    v38 = swift_beginAccess();
    MEMORY[0x24C1F1760](v38);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v39 = *MEMORY[0x277D295C0];
    v40 = swift_allocObject();
    swift_weakInit();
    v0[30] = sub_2490CE044;
    v0[31] = v40;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_2490C1B98;
    v0[29] = &block_descriptor_178;
    v41 = _Block_copy(v0 + 26);
    v42 = v39;

    v43 = [v13 addObserverForName:v42 object:0 queue:0 usingBlock:v41];
    _Block_release(v41);

    v44 = swift_beginAccess();
    MEMORY[0x24C1F1760](v44);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v45 = *MEMORY[0x277D295B8];
    v46 = swift_allocObject();
    swift_weakInit();
    v0[36] = sub_2490CE04C;
    v0[37] = v46;
    v0[32] = MEMORY[0x277D85DD0];
    v0[33] = 1107296256;
    v0[34] = sub_2490C1B98;
    v0[35] = &block_descriptor_182;
    v47 = _Block_copy(v0 + 32);
    v48 = v45;

    v49 = [v13 addObserverForName:v48 object:0 queue:0 usingBlock:v47];
    _Block_release(v47);

    v50 = swift_beginAccess();
    MEMORY[0x24C1F1760](v50);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v51 = *MEMORY[0x277D295D8];
    v52 = swift_allocObject();
    swift_weakInit();
    v0[42] = sub_2490CE054;
    v0[43] = v52;
    v0[38] = MEMORY[0x277D85DD0];
    v0[39] = 1107296256;
    v0[40] = sub_2490C1B98;
    v0[41] = &block_descriptor_186;
    v53 = _Block_copy(v0 + 38);
    v54 = v51;

    v55 = [v13 addObserverForName:v54 object:0 queue:0 usingBlock:v53];
    _Block_release(v53);

    v56 = swift_beginAccess();
    MEMORY[0x24C1F1760](v56);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v57 = swift_task_alloc();
    v0[70] = v57;
    *v57 = v0;
    v57[1] = sub_2490B7A44;

    return sub_2490C5A78();
  }
}

uint64_t sub_2490B7A44()
{
  v1 = *v0;

  v2 = *(v1 + 536);
  v3 = *(v1 + 528);

  return MEMORY[0x2822009F8](sub_2490B7B64, v3, v2);
}

uint64_t sub_2490B7B64()
{
  v1 = *(v0 + 544);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2490B7BCC()
{
  v1[56] = v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v3 = sub_24910CDAC();
  v1[57] = v3;
  v1[58] = v2;

  return MEMORY[0x2822009F8](sub_2490B7CA0, v3, v2);
}

uint64_t sub_2490B7CA0()
{
  v1 = v0[56];
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager;
  if (*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_27EEDAE40 != -1)
    {
      swift_once();
    }

    v5 = sub_24910C89C();
    __swift_project_value_buffer(v5, qword_27EEDAE48);
    v6 = sub_24910C87C();
    v7 = sub_24910CF5C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_249083000, v6, v7, "Timer monitor start", v8, 2u);
      MEMORY[0x24C1F26F0](v8, -1, -1);
    }

    v9 = v0[56];

    v10 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    v0[59] = v10;
    v11 = *(v1 + v2);
    *(v1 + v2) = v10;
    v12 = v10;

    v13 = [objc_opt_self() defaultCenter];
    v0[60] = v13;
    v14 = *MEMORY[0x277D296A0];
    v15 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_2490CDAAC;
    v0[7] = v15;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2490C1B98;
    v0[5] = &block_descriptor_65;
    v16 = _Block_copy(v0 + 2);
    v17 = v14;

    v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v16];
    _Block_release(v16);

    v19 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerObservers;
    v20 = swift_beginAccess();
    MEMORY[0x24C1F1760](v20);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v21 = *MEMORY[0x277D296C0];
    v22 = swift_allocObject();
    swift_weakInit();
    v0[12] = sub_2490CDAB4;
    v0[13] = v22;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_2490C1B98;
    v0[11] = &block_descriptor_69;
    v23 = _Block_copy(v0 + 8);
    v24 = v21;

    v25 = [v13 addObserverForName:v24 object:0 queue:0 usingBlock:v23];
    _Block_release(v23);

    v26 = swift_beginAccess();
    MEMORY[0x24C1F1760](v26);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v27 = *MEMORY[0x277D296B8];
    v28 = swift_allocObject();
    swift_weakInit();
    v0[18] = sub_2490CDABC;
    v0[19] = v28;
    v0[14] = MEMORY[0x277D85DD0];
    v0[15] = 1107296256;
    v0[16] = sub_2490C1B98;
    v0[17] = &block_descriptor_73;
    v29 = _Block_copy(v0 + 14);
    v30 = v27;

    v31 = [v13 addObserverForName:v30 object:0 queue:0 usingBlock:v29];
    _Block_release(v29);

    v32 = swift_beginAccess();
    MEMORY[0x24C1F1760](v32);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v33 = *MEMORY[0x277D29698];
    v34 = swift_allocObject();
    swift_weakInit();
    v0[24] = sub_2490CDAC4;
    v0[25] = v34;
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_2490C1B98;
    v0[23] = &block_descriptor_77;
    v35 = _Block_copy(v0 + 20);
    v36 = v33;

    v37 = [v13 addObserverForName:v36 object:0 queue:0 usingBlock:v35];
    _Block_release(v35);

    v38 = swift_beginAccess();
    MEMORY[0x24C1F1760](v38);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v39 = *MEMORY[0x277D29670];
    v40 = swift_allocObject();
    swift_weakInit();
    v0[30] = sub_2490CDACC;
    v0[31] = v40;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_2490C1B98;
    v0[29] = &block_descriptor_81;
    v41 = _Block_copy(v0 + 26);
    v42 = v39;

    v43 = [v13 addObserverForName:v42 object:0 queue:0 usingBlock:v41];
    _Block_release(v41);

    v44 = swift_beginAccess();
    MEMORY[0x24C1F1760](v44);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v45 = *MEMORY[0x277D29690];
    v46 = swift_allocObject();
    swift_weakInit();
    v0[36] = sub_2490CDAD4;
    v0[37] = v46;
    v0[32] = MEMORY[0x277D85DD0];
    v0[33] = 1107296256;
    v0[34] = sub_2490C1B98;
    v0[35] = &block_descriptor_85;
    v47 = _Block_copy(v0 + 32);
    v48 = v45;

    v49 = [v13 addObserverForName:v48 object:0 queue:0 usingBlock:v47];
    _Block_release(v47);

    v50 = swift_beginAccess();
    MEMORY[0x24C1F1760](v50);
    if (*((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v51 = swift_task_alloc();
    v0[61] = v51;
    *v51 = v0;
    v51[1] = sub_2490B8668;

    return sub_2490CAF90();
  }
}

uint64_t sub_2490B8668()
{
  v1 = *v0;

  v2 = *(v1 + 464);
  v3 = *(v1 + 456);

  return MEMORY[0x2822009F8](sub_2490B8788, v3, v2);
}

uint64_t sub_2490B8788()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t DTTimerDaemon.invalidate()()
{
  *(v1 + 16) = v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v3 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490B88C0, v3, v2);
}

uint64_t sub_2490B88C0()
{
  sub_2490B8964(&OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager, "Alarm monitor stop", &OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms, &OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmObservers);
  sub_2490B8964(&OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager, "Timer monitor stop", &OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers, &OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerObservers);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t *sub_2490B8964(unint64_t *result, const char *a2, const char *a3, unint64_t a4)
{
  v5 = *result;
  if (*(v4 + *result))
  {
    v9 = v4;
    if (qword_27EEDAE40 != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v10 = sub_24910C89C();
      __swift_project_value_buffer(v10, qword_27EEDAE48);
      v11 = sub_24910C87C();
      v12 = sub_24910CF5C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_249083000, v11, v12, a2, v13, 2u);
        MEMORY[0x24C1F26F0](v13, -1, -1);
      }

      v14 = *(v9 + v5);
      *(v9 + v5) = 0;

      v15 = *a3;
      swift_beginAccess();
      *(v9 + v15) = MEMORY[0x277D84F98];

      v16 = [objc_opt_self() defaultCenter];
      v17 = *a4;
      swift_beginAccess();
      v20 = v17;
      a4 = *(v9 + v17);
      if (a4 >> 62)
      {
        a3 = sub_24910D19C();
      }

      else
      {
        a3 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!a3)
      {
LABEL_17:

        *(v9 + v20) = MEMORY[0x277D84F90];
      }

      a2 = 0;
      v5 = a4 & 0xC000000000000001;
      while (v5)
      {
        v18 = MEMORY[0x24C1F1C90](a2, a4);
        v19 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_12:
        [v16 removeObserver_];
        swift_unknownObjectRelease();
        ++a2;
        if (v19 == a3)
        {
          goto LABEL_17;
        }
      }

      if (a2 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_20:
      swift_once();
    }

    v18 = *(a4 + 8 * a2 + 32);
    swift_unknownObjectRetain();
    v19 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2490B8BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v9 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
  result = swift_beginAccess();
  v11 = *(a1 + v9);
  if (!v11)
  {
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](result);
  v15[2] = a2;
  v15[3] = a3;
  type metadata accessor for DTTransportDaemon(0);
  sub_2490CD42C(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);

  sub_24910CDAC();
  if (swift_task_isCurrentExecutor())
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2490CDC90;
    *(v12 + 24) = v15;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_2490CDCD4;
    *(v13 + 24) = v12;

    v16[0] = v11;
    sub_2490CDCFC(v16);
    if (!v4)
    {

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_5:
        *a4 = v11 == 0;
        return result;
      }

      __break(1u);
    }

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v16[6] = v11;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

uint64_t sub_2490B8E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v8 = v6;
  sub_2490CD42C(&unk_27EED7F50, type metadata accessor for DTDaemon, &protocol conformance descriptor for DTDaemon);
  sub_24910CDAC();
  if (swift_task_isCurrentExecutor())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2490CDBCC;
    *(v12 + 24) = v11;

    v15[0] = v6;
    sub_2490CDC48(v15, &v16);

    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v12;
      }

      __break(1u);
    }

    v12 = v16;
    v8 = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      return v12;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v16 = v8;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

uint64_t DTTimerDaemon.handleRequest(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_24910C6EC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_24910C86C();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v8 = sub_24910CDAC();
  v4[13] = v8;
  v4[14] = v7;

  return MEMORY[0x2822009F8](sub_2490B9284, v8, v7);
}

uint64_t sub_2490B9284()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D057D8])
  {
    v5 = v0[12];
    (*(v0[11] + 96))(v5, v0[10]);
    v6 = *v5;
    v0[15] = *v5;
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_2490B9A2C;
    v8 = v0[4];

    return sub_2490BAE98(v6, v8);
  }

  if (v4 == *MEMORY[0x277D057A8])
  {
    v10 = v0[12];
    (*(v0[11] + 96))(v10, v0[10]);
    v11 = *v10;
    v0[18] = *v10;
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_2490B9C40;
    v13 = v0[4];

    return sub_2490BB7E4(v11, v13);
  }

  if (v4 == *MEMORY[0x277D05798])
  {
    v14 = v0[12];
    (*(v0[11] + 96))(v14, v0[10]);
    v15 = *v14;
    v0[21] = *v14;
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_2490B9E54;
    v17 = v0[4];

    return sub_2490BC3A0(v15, v17);
  }

  if (v4 == *MEMORY[0x277D057A0])
  {
    v18 = v0[12];
    (*(v0[11] + 96))(v18, v0[10]);
    v19 = *v18;
    v0[24] = *v18;
    v20 = swift_task_alloc();
    v0[25] = v20;
    *v20 = v0;
    v20[1] = sub_2490BA068;
    v21 = v0[4];

    return sub_2490BCDEC(v19, v21);
  }

  if (v4 == *MEMORY[0x277D057B0])
  {
    v22 = v0[12];
    (*(v0[11] + 96))(v22, v0[10]);
    v23 = *v22;
    v0[27] = *v22;
    v24 = swift_task_alloc();
    v0[28] = v24;
    *v24 = v0;
    v24[1] = sub_2490BA27C;
    v25 = v0[4];

    return sub_2490BD554(v23, v25);
  }

  if (v4 == *MEMORY[0x277D057D0])
  {
    goto LABEL_22;
  }

  if (v4 == *MEMORY[0x277D057C0])
  {
    v27 = v0[12];
    v28 = v0[9];
    v29 = v0[6];
    v30 = v0[7];
    v31 = v0[2];
    (*(v0[11] + 96))(v27, v0[10]);
    (*(v30 + 32))(v28, v27, v29);
    v31[3] = sub_24910C7AC();
    v31[4] = sub_2490CD42C(&qword_27EED7A70, MEMORY[0x277D05750], MEMORY[0x277D05748]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    v33 = swift_task_alloc();
    v0[33] = v33;
    *v33 = v0;
    v33[1] = sub_2490BA690;
    v34 = v0[9];
    v35 = v0[4];

    return DTTimerDaemon._monitorStart(requestContext:monitorContext:)(boxed_opaque_existential_1, v35, v34);
  }

  else if (v4 == *MEMORY[0x277D05790])
  {
    v36 = v0[12];
    v38 = v0[7];
    v37 = v0[8];
    v39 = v0[6];
    v40 = v0[2];
    (*(v0[11] + 96))(v36, v0[10]);
    (*(v38 + 32))(v37, v36, v39);
    v40[3] = sub_24910C63C();
    v40[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0], MEMORY[0x277D05698]);
    v41 = __swift_allocate_boxed_opaque_existential_1(v40);
    v42 = swift_task_alloc();
    v0[35] = v42;
    *v42 = v0;
    v42[1] = sub_2490BA85C;
    v43 = v0[8];
    v44 = v0[4];

    return DTTimerDaemon._monitorStop(requestContext:monitorContext:)(v41, v44, v43);
  }

  else
  {
    if (v4 == *MEMORY[0x277D057B8] || v4 == *MEMORY[0x277D05780])
    {
LABEL_22:
      (*(v0[11] + 8))(v0[12], v0[10]);
LABEL_23:
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();

      v26 = v0[1];

      return v26();
    }

    if (v4 == *MEMORY[0x277D05788])
    {
      goto LABEL_23;
    }

    if (v4 != *MEMORY[0x277D05778])
    {
      if (v4 == *MEMORY[0x277D057C8])
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v45 = swift_task_alloc();
    v0[30] = v45;
    *v45 = v0;
    v45[1] = sub_2490BA490;
    v46 = v0[4];

    return DTTimerDaemon._fetchTimers(context:)(v46);
  }
}

uint64_t sub_2490B9A2C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_2490BAA28;
  }

  else
  {
    v5 = sub_2490B9B68;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490B9B68()
{
  v1 = v0[15];
  v2 = v0[2];
  v2[3] = sub_24910C63C();
  v2[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0], MEMORY[0x277D05698]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C62C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2490B9C40()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_2490BAAB0;
  }

  else
  {
    v5 = sub_2490B9D7C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490B9D7C()
{
  v1 = v0[18];
  v2 = v0[2];
  v2[3] = sub_24910C63C();
  v2[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0], MEMORY[0x277D05698]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C62C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2490B9E54()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_2490BAB38;
  }

  else
  {
    v5 = sub_2490B9F90;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490B9F90()
{
  v1 = v0[21];
  v2 = v0[2];
  v2[3] = sub_24910C63C();
  v2[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0], MEMORY[0x277D05698]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C62C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2490BA068()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_2490BABC0;
  }

  else
  {
    v5 = sub_2490BA1A4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490BA1A4()
{
  v1 = v0[24];
  v2 = v0[2];
  v2[3] = sub_24910C63C();
  v2[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0], MEMORY[0x277D05698]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C62C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2490BA27C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_2490BAC48;
  }

  else
  {
    v5 = sub_2490BA3B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490BA3B8()
{
  v1 = v0[27];
  v2 = v0[2];
  v2[3] = sub_24910C63C();
  v2[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0], MEMORY[0x277D05698]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C62C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2490BA490(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_2490BACD0;
  }

  else
  {
    v4[32] = a1;
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_2490BA5B8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2490BA5B8()
{
  v1 = *(v0 + 16);
  v1[3] = sub_24910C4CC();
  v1[4] = sub_2490CD42C(&qword_27EED7A78, MEMORY[0x277D05650], MEMORY[0x277D05648]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_24910C4BC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2490BA690()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_2490BAD50;
  }

  else
  {
    v5 = sub_2490BA7CC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490BA7CC()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2490BA85C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_2490BADF4;
  }

  else
  {
    v5 = sub_2490BA998;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490BA998()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2490BAA28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490BAAB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490BAB38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490BABC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490BAC48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490BACD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490BAD50()
{
  v1 = v0[2];
  (*(v0[7] + 8))(v0[9], v0[6]);
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2490BADF4()
{
  v1 = v0[2];
  (*(v0[7] + 8))(v0[8], v0[6]);
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2490BAE98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_24910C73C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_24910C4FC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v7 = sub_24910CDAC();
  v3[11] = v7;
  v3[12] = v6;

  return MEMORY[0x2822009F8](sub_2490BB028, v7, v6);
}

uint64_t sub_2490BB028()
{
  v42 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_24910C6FC();
  sub_24910C4EC();
  v5 = v4;
  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = sub_24910D05C();
  }

  else
  {
    v6 = *(v0 + 16);
  }

  *(v0 + 104) = v6;
  v7 = qword_27EEDAE40;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = *(v0 + 24);
  v13 = sub_24910C89C();
  __swift_project_value_buffer(v13, qword_27EEDAE48);
  (*(v10 + 16))(v9, v12, v11);
  v14 = v8;
  v15 = sub_24910C87C();
  v16 = sub_24910CF5C();

  v17 = os_log_type_enabled(v15, v16);
  v19 = *(v0 + 48);
  v18 = *(v0 + 56);
  v20 = *(v0 + 40);
  if (v17)
  {
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v21 = 138412546;
    *(v21 + 4) = v14;
    *v39 = v14;
    *(v21 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    v22 = v14;
    v23 = sub_24910D50C();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_24909F930(v23, v25, &v41);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_249083000, v15, v16, "addTimer: %@, %s", v21, 0x16u);
    sub_2490A487C(v39, &qword_27EED7688, &qword_249110020);
    MEMORY[0x24C1F26F0](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C1F26F0](v40, -1, -1);
    MEMORY[0x24C1F26F0](v21, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  v27 = [v14 mtAlarm];
  *(v0 + 112) = v27;

  if (v27)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    *(v0 + 120) = v28;
    v29 = [v28 addAlarm_];
    *(v0 + 128) = v29;
    v30 = v28;
    v31 = swift_task_alloc();
    *(v0 + 136) = v31;
    *v31 = v0;
    v31[1] = sub_2490BB554;
    v32 = 0x6D72616C41646461;
LABEL_13:

    return sub_2490BF474(v29, v30, v32, 0xE800000000000000);
  }

  v33 = [v14 mtTimer];
  *(v0 + 152) = v33;
  if (v33)
  {
    v34 = v33;
    v35 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    *(v0 + 160) = v35;
    v29 = [v35 addTimer_];
    *(v0 + 168) = v29;
    v30 = v35;
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = sub_2490BB69C;
    v32 = 0x72656D6954646461;
    goto LABEL_13;
  }

  sub_24910C7DC();
  sub_24910C7EC();
  swift_willThrow();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_2490BB554(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  *(*v2 + 144) = v1;

  if (v1)
  {
    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    v8 = sub_2490CE5C0;
  }

  else
  {

    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    v8 = sub_2490CE544;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2490BB69C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  *(*v2 + 184) = v1;

  if (v1)
  {
    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    v8 = sub_2490CE5C4;
  }

  else
  {

    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    v8 = sub_2490CE548;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2490BB7E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_24910C73C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_24910C4FC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v7 = sub_24910CDAC();
  v3[11] = v7;
  v3[12] = v6;

  return MEMORY[0x2822009F8](sub_2490BB974, v7, v6);
}

uint64_t sub_2490BB974()
{
  v44 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_24910C6FC();
  sub_24910C4EC();
  v5 = v4;
  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = sub_24910D05C();
  }

  else
  {
    v6 = *(v0 + 16);
  }

  *(v0 + 104) = v6;
  v7 = qword_27EEDAE40;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = *(v0 + 24);
  v13 = sub_24910C89C();
  __swift_project_value_buffer(v13, qword_27EEDAE48);
  (*(v10 + 16))(v9, v12, v11);
  v14 = v8;
  v15 = sub_24910C87C();
  v16 = sub_24910CF5C();

  v17 = os_log_type_enabled(v15, v16);
  v19 = *(v0 + 48);
  v18 = *(v0 + 56);
  v20 = *(v0 + 40);
  if (v17)
  {
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v21 = 138412546;
    *(v21 + 4) = v14;
    *v41 = v14;
    *(v21 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    v22 = v14;
    v23 = sub_24910D50C();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_24909F930(v23, v25, &v43);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_249083000, v15, v16, "updateTimer: %@, %s", v21, 0x16u);
    sub_2490A487C(v41, &qword_27EED7688, &qword_249110020);
    MEMORY[0x24C1F26F0](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x24C1F26F0](v42, -1, -1);
    MEMORY[0x24C1F26F0](v21, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  v27 = [v14 mtAlarm];
  *(v0 + 112) = v27;

  if (v27)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    *(v0 + 120) = v28;
    v29 = [v28 updateAlarm_];
    *(v0 + 128) = v29;
    v30 = v28;
    v31 = swift_task_alloc();
    *(v0 + 136) = v31;
    *v31 = v0;
    v31[1] = sub_2490BBEB0;
    v32 = 0x6C41657461647075;
    v33 = 7172705;
LABEL_13:
    v38 = v33 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;

    return sub_2490BF474(v29, v30, v32, v38);
  }

  v34 = [v14 mtTimer];
  *(v0 + 152) = v34;
  if (v34)
  {
    v35 = v34;
    v36 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    *(v0 + 160) = v36;
    v29 = [v36 updateTimer_];
    *(v0 + 168) = v29;
    v30 = v36;
    v37 = swift_task_alloc();
    *(v0 + 176) = v37;
    *v37 = v0;
    v37[1] = sub_2490BC094;
    v32 = 0x6954657461647075;
    v33 = 7497069;
    goto LABEL_13;
  }

  sub_24910C7DC();
  sub_24910C7EC();
  swift_willThrow();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2490BBEB0(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  *(*v2 + 144) = v1;

  if (v1)
  {
    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    v8 = sub_2490BC27C;
  }

  else
  {

    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    v8 = sub_2490BBFF8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2490BBFF8()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2490BC094(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  *(*v2 + 184) = v1;

  if (v1)
  {
    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    v8 = sub_2490BC30C;
  }

  else
  {

    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    v8 = sub_2490BC1DC;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2490BC1DC()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2490BC27C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2490BC30C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2490BC3A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_24910C73C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v6 = sub_24910CDAC();
  v3[8] = v6;
  v3[9] = v5;

  return MEMORY[0x2822009F8](sub_2490BC4D4, v6, v5);
}

uint64_t sub_2490BC4D4()
{
  v39 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_24910C89C();
  __swift_project_value_buffer(v6, qword_27EEDAE48);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_24910C87C();
  v9 = sub_24910CF5C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  v13 = *(v0 + 40);
  if (v10)
  {
    v14 = *(v0 + 16);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    v17 = v14;
    v18 = sub_24910D50C();
    v20 = v19;
    (*(v12 + 8))(v11, v13);
    v21 = sub_24909F930(v18, v20, &v38);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_249083000, v8, v9, "removeTimer: %@, %s", v15, 0x16u);
    sub_2490A487C(v16, &qword_27EED7688, &qword_249110020);
    MEMORY[0x24C1F26F0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x24C1F26F0](v37, -1, -1);
    MEMORY[0x24C1F26F0](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = [*(v0 + 16) mtAlarm];
  *(v0 + 80) = v22;
  if (v22)
  {
    v23 = v22;
    v24 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    *(v0 + 88) = v24;
    v25 = [v24 removeAlarm_];
    *(v0 + 96) = v25;
    v26 = v24;
    v27 = swift_task_alloc();
    *(v0 + 104) = v27;
    *v27 = v0;
    v27[1] = sub_2490BC984;
    v28 = 0x6C4165766F6D6572;
    v29 = 7172705;
LABEL_10:
    v34 = v29 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;

    return sub_2490BF474(v25, v26, v28, v34);
  }

  v30 = [*(v0 + 16) mtTimer];
  *(v0 + 120) = v30;
  if (v30)
  {
    v31 = v30;
    v32 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    *(v0 + 128) = v32;
    v25 = [v32 removeTimer_];
    *(v0 + 136) = v25;
    v26 = v32;
    v33 = swift_task_alloc();
    *(v0 + 144) = v33;
    *v33 = v0;
    v33[1] = sub_2490BCB34;
    v28 = 0x695465766F6D6572;
    v29 = 7497069;
    goto LABEL_10;
  }

  sub_24910C7DC();
  sub_24910C7EC();
  swift_willThrow();

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_2490BC984(void *a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_2490BCCE4;
  }

  else
  {
    v8 = v4[11];

    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_2490BCAB0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2490BCAB0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2490BCB34(void *a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_2490BCD68;
  }

  else
  {
    v8 = v4[16];

    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_2490BCC60;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2490BCC60()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2490BCCE4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490BCD68()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490BCDEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_24910C73C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v6 = sub_24910CDAC();
  v3[8] = v6;
  v3[9] = v5;

  return MEMORY[0x2822009F8](sub_2490BCF20, v6, v5);
}

uint64_t sub_2490BCF20()
{
  v33 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_24910C89C();
  __swift_project_value_buffer(v6, qword_27EEDAE48);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_24910C87C();
  v9 = sub_24910CF5C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  v13 = *(v0 + 40);
  if (v10)
  {
    v14 = *(v0 + 16);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    v17 = v14;
    v18 = sub_24910D50C();
    v20 = v19;
    (*(v12 + 8))(v11, v13);
    v21 = sub_24909F930(v18, v20, &v32);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_249083000, v8, v9, "snoozeTimer: %@, %s", v15, 0x16u);
    sub_2490A487C(v16, &qword_27EED7688, &qword_249110020);
    MEMORY[0x24C1F26F0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x24C1F26F0](v31, -1, -1);
    MEMORY[0x24C1F26F0](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = [*(v0 + 16) mtAlarmID];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    *(v0 + 80) = v24;
    v25 = [v24 snoozeAlarmWithIdentifier_];
    *(v0 + 88) = v25;

    v26 = v24;
    v27 = swift_task_alloc();
    *(v0 + 96) = v27;
    *v27 = v0;
    v27[1] = sub_2490BD340;

    return sub_2490BF474(v25, v26, 0x6C41657A6F6F6E73, 0xEB000000006D7261);
  }

  else
  {
    v29 = [*(v0 + 16) mtTimer];
    if (v29)
    {
    }

    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_2490BD340(void *a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_2490BD4E0;
  }

  else
  {
    v8 = v4[10];

    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_2490BD46C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2490BD46C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2490BD4E0()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2490BD554(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_24910C73C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v6 = sub_24910CDAC();
  v3[8] = v6;
  v3[9] = v5;

  return MEMORY[0x2822009F8](sub_2490BD688, v6, v5);
}

uint64_t sub_2490BD688()
{
  v39 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_24910C89C();
  __swift_project_value_buffer(v6, qword_27EEDAE48);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_24910C87C();
  v9 = sub_24910CF5C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  v13 = *(v0 + 40);
  if (v10)
  {
    v14 = *(v0 + 16);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    v17 = v14;
    v18 = sub_24910D50C();
    v20 = v19;
    (*(v12 + 8))(v11, v13);
    v21 = sub_24909F930(v18, v20, &v38);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_249083000, v8, v9, "dismissTimer: %@, %s", v15, 0x16u);
    sub_2490A487C(v16, &qword_27EED7688, &qword_249110020);
    MEMORY[0x24C1F26F0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x24C1F26F0](v37, -1, -1);
    MEMORY[0x24C1F26F0](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = [*(v0 + 16) mtAlarmID];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    *(v0 + 80) = v24;
    v25 = [v24 dismissAlarmWithIdentifier_];
    *(v0 + 88) = v25;

    v26 = v24;
    v27 = swift_task_alloc();
    *(v0 + 96) = v27;
    *v27 = v0;
    v27[1] = sub_2490BDB38;
    v28 = 0x417373696D736964;
    v29 = 1836212588;
LABEL_10:
    v34 = v29 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;

    return sub_2490BF474(v25, v26, v28, v34);
  }

  v30 = [*(v0 + 16) mtTimerID];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    *(v0 + 112) = v32;
    v25 = [v32 dismissTimerWithIdentifier_];
    *(v0 + 120) = v25;

    v26 = v32;
    v33 = swift_task_alloc();
    *(v0 + 128) = v33;
    *v33 = v0;
    v33[1] = sub_2490BDC64;
    v28 = 0x547373696D736964;
    v29 = 1919249769;
    goto LABEL_10;
  }

  sub_24910C7DC();
  sub_24910C7EC();
  swift_willThrow();

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_2490BDB38(void *a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_2490CE54C;
  }

  else
  {
    v8 = v4[10];

    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_2490CE5CC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2490BDC64(void *a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_2490BDE04;
  }

  else
  {
    v8 = v4[14];

    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_2490BDD90;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2490BDD90()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2490BDE04()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t DTTimerDaemon._fetchTimers(context:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24910C4FC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24910C73C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v6 = sub_24910CDAC();
  v2[10] = v6;
  v2[11] = v5;

  return MEMORY[0x2822009F8](sub_2490BE004, v6, v5);
}

uint64_t sub_2490BE004()
{
  v29 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_24910C89C();
  __swift_project_value_buffer(v5, qword_27EEDAE48);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_24910C87C();
  v7 = sub_24910CF5C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    v14 = sub_24910D50C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_24909F930(v14, v16, &v28);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_249083000, v6, v7, "fetchTimers: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1F26F0](v13, -1, -1);
    MEMORY[0x24C1F26F0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[5];
  v18 = v0[6];
  v20 = v0[4];
  v21 = v0[2];
  sub_24910C6FC();
  v22 = sub_24910C4EC();
  v24 = v23;
  v0[12] = v23;
  (*(v19 + 8))(v18, v20);
  v25 = swift_task_alloc();
  v0[13] = v25;
  v25[2] = v22;
  v25[3] = v24;
  v25[4] = v21;
  v26 = swift_task_alloc();
  v0[14] = v26;
  *v26 = v0;
  v26[1] = sub_2490BE2E4;

  return DTTimerDaemon._fetchTimers(matching:)(sub_2490CD4C4, v25);
}

uint64_t sub_2490BE2E4(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];

    return MEMORY[0x2822009F8](sub_2490BE454, v5, v6);
  }

  else
  {

    v7 = v4[1];

    return v7(a1);
  }
}

uint64_t sub_2490BE454()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DTTimerDaemon._monitorStart(requestContext:monitorContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_24910C6EC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_24910C73C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v8 = sub_24910CDAC();
  v4[12] = v8;
  v4[13] = v7;

  return MEMORY[0x2822009F8](sub_2490BE670, v8, v7);
}

uint64_t sub_2490BE670()
{
  v35 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[3];
  v7 = v0[4];
  v9 = sub_24910C89C();
  __swift_project_value_buffer(v9, qword_27EEDAE48);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = sub_24910C87C();
  v11 = sub_24910CF5C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[9];
  v18 = v0[6];
  v17 = v0[7];
  if (v12)
  {
    log = v10;
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v19 = 136315394;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    v20 = sub_24910D50C();
    v31 = v11;
    v22 = v21;
    (*(v13 + 8))(v14, v16);
    v23 = sub_24909F930(v20, v22, &v34);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7A80, MEMORY[0x277D056E0], MEMORY[0x277D056E8]);
    v24 = sub_24910D50C();
    v26 = v25;
    (*(v17 + 8))(v15, v18);
    v27 = sub_24909F930(v24, v26, &v34);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_249083000, log, v31, "monitorStart: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v33, -1, -1);
    MEMORY[0x24C1F26F0](v19, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v15, v18);
    (*(v13 + 8))(v14, v16);
  }

  v28 = swift_task_alloc();
  v0[14] = v28;
  *v28 = v0;
  v28[1] = sub_2490BE9CC;
  v29 = v0[3];

  return DTTimerDaemon._fetchTimers(context:)(v29);
}

uint64_t sub_2490BE9CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v4[15] = a1;
    v8 = v4[12];
    v9 = v4[13];

    return MEMORY[0x2822009F8](sub_2490BEB28, v8, v9);
  }
}

uint64_t sub_2490BEB28()
{
  sub_24910C4BC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DTTimerDaemon._monitorStop(requestContext:monitorContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24910C6EC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_24910C73C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v7 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490BED38, v7, v6);
}

uint64_t sub_2490BED38()
{
  v34 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = sub_24910C89C();
  __swift_project_value_buffer(v9, qword_27EEDAE48);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = sub_24910C87C();
  v11 = sub_24910CF5C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[7];
  v16 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  if (v12)
  {
    log = v10;
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v19 = 136315394;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    v20 = sub_24910D50C();
    v30 = v11;
    v22 = v21;
    (*(v13 + 8))(v14, v16);
    v23 = sub_24909F930(v20, v22, &v33);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7A80, MEMORY[0x277D056E0], MEMORY[0x277D056E8]);
    v24 = sub_24910D50C();
    v26 = v25;
    (*(v17 + 8))(v15, v18);
    v27 = sub_24909F930(v24, v26, &v33);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_249083000, log, v30, "monitorStop: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v32, -1, -1);
    MEMORY[0x24C1F26F0](v19, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v15, v18);
    (*(v13 + 8))(v14, v16);
  }

  sub_24910C62C();

  v28 = v0[1];

  return v28();
}

uint64_t sub_2490BF078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v7 = sub_24910CDAC();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_2490BF158, v7, v6);
}

uint64_t sub_2490BF158()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    v13 = *(v0 + 32);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *(v5 + 16) = v1;
    *(v5 + 24) = v13;
    *(v5 + 40) = v4;
    v6 = v1;
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    v8 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
    *v7 = v0;
    v7[1] = sub_2490BF358;

    return MEMORY[0x2822008A0](v0 + 16, v2, v3, 0xD000000000000019, 0x80000002491113D0, sub_2490CD628, v5, v8);
  }

  else
  {
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    sub_24910C7DC();
    sub_24910D25C();

    MEMORY[0x24C1F1710](v10, v9);
    sub_24910C7EC();
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2490BF358()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_2490CE5BC;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_2490CE5D0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2490BF474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v7 = sub_24910CDAC();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_2490BF554, v7, v6);
}

uint64_t sub_2490BF554()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    v13 = *(v0 + 32);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *(v5 + 16) = v1;
    *(v5 + 24) = v13;
    *(v5 + 40) = v4;
    v6 = v1;
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    v8 = sub_2490A4744(0, &qword_27EED7AA8, 0x277CBEB68);
    *v7 = v0;
    v7[1] = sub_2490BF754;

    return MEMORY[0x2822008A0](v0 + 16, v2, v3, 0xD000000000000019, 0x80000002491113D0, sub_2490CD6F4, v5, v8);
  }

  else
  {
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    sub_24910C7DC();
    sub_24910D25C();

    MEMORY[0x24C1F1710](v10, v9);
    sub_24910C7EC();
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2490BF754()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_2490BF8D8;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_2490BF870;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2490BF870()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2490BF8D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DTTimerDaemon._fetchTimers(matching:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_2490BFA20, v5, v4);
}

uint64_t sub_2490BFA20()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
  v0[7] = v1;
  v2 = [v1 alarms];
  v0[8] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2490BFB24;

  return sub_2490BF078(v2, v3, 0x616C416863746566, 0xEB00000000736D72);
}

uint64_t sub_2490BFB24(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_2490C06AC;
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_2490BFC54;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2490BFC54()
{
  v1 = v0[11];
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v0[12] = 0;
  v2 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  v0[13] = v2;
  v3 = [v2 timers];
  v0[14] = v3;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2490BFD9C;

  return sub_2490BF078(v3, v4, 0x6D69546863746566, 0xEB00000000737265);
}

uint64_t sub_2490BFD9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_2490C0718;
  }

  else
  {

    *(v4 + 136) = a1;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_2490BFECC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2490BFECC()
{
  v31 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v30 = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v3 = MEMORY[0x277D84F90];
  v28 = v0;
  v29 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *(v0 + 96);
    if (v4 >> 62)
    {
      v5 = sub_24910D19C();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v30 = v3;
        result = sub_24910D2CC();
        if (v5 < 0)
        {
          __break(1u);
          __break(1u);
          return result;
        }

        v7 = 0;
        v8 = *(v0 + 96) & 0xC000000000000001;
        do
        {
          if (v8)
          {
            v9 = MEMORY[0x24C1F1C90](v7, v4);
          }

          else
          {
            v9 = *(v4 + 8 * v7 + 32);
          }

          v10 = v9;
          ++v7;
          [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

          sub_24910D2AC();
          sub_24910D2DC();
          sub_24910D2EC();
          sub_24910D2BC();
        }

        while (v5 != v7);

        v11 = v30;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }
    }

    v11 = MEMORY[0x277D84F90];
LABEL_15:
    v30 = v3;
    if (v11 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24910D19C())
    {
      v14 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x24C1F1C90](v14, v11);
        }

        else
        {
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if ((*(v0 + 16))(v15))
        {
          sub_24910D2AC();
          sub_24910D2DC();
          sub_24910D2EC();
          sub_24910D2BC();
        }

        else
        {
        }

        ++v14;
        if (v17 == i)
        {
          v18 = v30;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    v18 = MEMORY[0x277D84F90];
LABEL_32:

    if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
    {
      goto LABEL_47;
    }

    v19 = *(v18 + 16);
    if (v19)
    {
LABEL_35:
      v20 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x24C1F1C90](v20, v18);
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v20 >= *(v18 + 16))
          {
            goto LABEL_46;
          }

          v21 = *(v18 + 8 * v20 + 32);
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            v19 = sub_24910D19C();
            if (!v19)
            {
              break;
            }

            goto LABEL_35;
          }
        }

        v23 = v21;
        MEMORY[0x24C1F1760]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24910CD7C();
          v0 = v28;
        }

        sub_24910CD9C();
        v12 = v29;

        ++v20;
        if (v22 == v19)
        {
          goto LABEL_49;
        }
      }
    }

    v12 = MEMORY[0x277D84F90];
LABEL_49:

    goto LABEL_50;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_50:
  v24 = *(v0 + 104);
  v25 = *(v0 + 112);
  v26 = *(v0 + 64);

  v27 = *(v0 + 8);

  return v27(v12);
}

uint64_t sub_2490C06AC()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2490C0718()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2490C07AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DTTransportDaemon(0);
  static DTTransportDaemon.alternateAccessoryIDs.getter(v3);
  v4 = sub_24910D03C();

  if (v4)
  {
    return 1;
  }

  v6 = sub_24910C71C();
  if (v6)
  {
    v7 = v6;
    v8 = sub_24910D04C();
    if (v9)
    {
      v12[0] = v8;
      v12[1] = v9;
      MEMORY[0x28223BE20](v8);
      v11[2] = v12;
      v10 = sub_2490CCC78(sub_2490CD69C, v11, v7);

      if (v10)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_2490C08D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v28 = a2;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7AA0, &qword_249110008);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v24 = *(v8 + 16);
  v24(v22 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v23 = *(v8 + 32);
  v23(v14 + v12, v11, v7);
  *(v14 + v13) = a3;
  v33 = sub_2490CD648;
  v34 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v22[1] = &v31;
  v31 = sub_2490C0EE8;
  v32 = &block_descriptor_0;
  v15 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v16 = [v28 addSuccessBlock_];
  _Block_release(v15);

  v24(v11, v25, v7);
  v17 = swift_allocObject();
  v23(v17 + v12, v11, v7);
  v18 = (v17 + v13);
  v19 = v27;
  *v18 = v26;
  v18[1] = v19;
  *(v17 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v33 = sub_2490CD688;
  v34 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2490C0F48;
  v32 = &block_descriptor_31;
  v20 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v21 = [v28 addFailureBlock_];
  _Block_release(v20);
}

void sub_2490C0BDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v28 = a2;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7AB0, &qword_249110028);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v24 = *(v8 + 16);
  v24(v22 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v23 = *(v8 + 32);
  v23(v14 + v12, v11, v7);
  *(v14 + v13) = a3;
  v33 = sub_2490CD7AC;
  v34 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v22[1] = &v31;
  v31 = sub_2490C0EE8;
  v32 = &block_descriptor_42;
  v15 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v16 = [v28 addSuccessBlock_];
  _Block_release(v15);

  v24(v11, v25, v7);
  v17 = swift_allocObject();
  v23(v17 + v12, v11, v7);
  v18 = (v17 + v13);
  v19 = v27;
  *v18 = v26;
  v18[1] = v19;
  *(v17 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v33 = sub_2490CD920;
  v34 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2490C0F48;
  v32 = &block_descriptor_48;
  v20 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v21 = [v28 addFailureBlock_];
  _Block_release(v20);
}

uint64_t sub_2490C0EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_2490C0F48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2490C0FB0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491101C8;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C1390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C144C, v5, v4);
}

uint64_t sub_2490C144C()
{
  sub_2490C14AC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490C14AC(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAE48);

  v8 = sub_24910C87C();
  LODWORD(v9) = sub_24910CF2C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = a1 >> 62;
  v57 = a1;
  v54 = a1 >> 62;
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v11)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v11)
    {
      v26 = sub_24910D19C();
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v56)
        {
          v30 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_38;
          }

          v30 = *(a1 + 8 * v3 + 32);
        }

        v31 = v30;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v58 = v3 + 1;
        v32 = [v30 alarmIDString];
        v33 = sub_24910CC9C();
        a1 = v34;

        v35 = v59;
        swift_beginAccess();
        v9 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v35 + v6);
        v36 = v60;
        v11 = v6;
        *(v35 + v6) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v33, a1);
        v38 = v36[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_39;
        }

        v6 = v37;
        if (v36[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
            if (v6)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v40, isUniquelyReferenced_nonNull_native, &qword_27EED7AE8, &qword_249110110);
          v41 = sub_2490A0A3C(v33, a1);
          if ((v6 & 1) != (v42 & 1))
          {
            goto LABEL_60;
          }

          v4 = v41;
          if (v6)
          {
LABEL_19:

            v27 = v60;
            v28 = v60[7];
            v29 = *(v28 + 8 * v4);
            *(v28 + 8 * v4) = v9;

            goto LABEL_20;
          }
        }

        v27 = v60;
        v60[(v4 >> 6) + 8] |= 1 << v4;
        v43 = (v27[6] + 16 * v4);
        *v43 = v33;
        v43[1] = a1;
        *(v27[7] + 8 * v4) = v9;
        v44 = v27[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_40;
        }

        v27[2] = v46;
LABEL_20:
        v6 = v11;
        *(v59 + v11) = v27;
        swift_endAccess();

        ++v3;
        a1 = v57;
        if (v58 == v26)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v54)
    {
      v8 = sub_24910D19C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_54;
    }

    v61[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v12 = sub_24910D19C();
LABEL_5:
    v13 = MEMORY[0x277D84F90];
    v58 = isUniquelyReferenced_nonNull_native;
    if (v12)
    {
      v60 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v53 = v9;
      v55 = v8;
      v14 = 0;
      v13 = v60;
      v15 = a1 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x24C1F1C90](v14, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 alarmID];
        sub_24910C2CC();

        v60 = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          sub_2490CC8F8((v19 > 1), v20 + 1, 1);
          v13 = v60;
        }

        ++v14;
        v13[2] = v20 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v3);
        a1 = v57;
      }

      while (v12 != v14);
      v11 = v54;
      v8 = v55;
      LODWORD(v9) = v53;
    }

    v21 = MEMORY[0x24C1F1790](v13, v3);
    v23 = v22;

    v24 = sub_24909F930(v21, v23, v61);

    isUniquelyReferenced_nonNull_native = v58;
    *(v58 + 4) = v24;
    _os_log_impl(&dword_249083000, v8, v9, "AlarmsAdded: alarmIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C1F26F0](v25, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v47 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x24C1F1C90](v47, a1);
    }

    else
    {
      v48 = *(a1 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v8 != v47);
  v3 = v61[0];
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v52[-16] = 5;
    *&v52[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v52[-32], "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}

uint64_t sub_2490C1B98(uint64_t a1, uint64_t a2)
{
  v3 = sub_24910C00C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_24910BFEC();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2490C1C8C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491101B0;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C2128, v5, v4);
}

uint64_t sub_2490C2128()
{
  sub_2490C2188(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490C2188(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAE48);

  v8 = sub_24910C87C();
  LODWORD(v9) = sub_24910CF2C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = a1 >> 62;
  v57 = a1;
  v54 = a1 >> 62;
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v11)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v11)
    {
      v26 = sub_24910D19C();
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v56)
        {
          v30 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_38;
          }

          v30 = *(a1 + 8 * v3 + 32);
        }

        v31 = v30;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v58 = v3 + 1;
        v32 = [v30 alarmIDString];
        v33 = sub_24910CC9C();
        a1 = v34;

        v35 = v59;
        swift_beginAccess();
        v9 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v35 + v6);
        v36 = v60;
        v11 = v6;
        *(v35 + v6) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v33, a1);
        v38 = v36[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_39;
        }

        v6 = v37;
        if (v36[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
            if (v6)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v40, isUniquelyReferenced_nonNull_native, &qword_27EED7AE8, &qword_249110110);
          v41 = sub_2490A0A3C(v33, a1);
          if ((v6 & 1) != (v42 & 1))
          {
            goto LABEL_60;
          }

          v4 = v41;
          if (v6)
          {
LABEL_19:

            v27 = v60;
            v28 = v60[7];
            v29 = *(v28 + 8 * v4);
            *(v28 + 8 * v4) = v9;

            goto LABEL_20;
          }
        }

        v27 = v60;
        v60[(v4 >> 6) + 8] |= 1 << v4;
        v43 = (v27[6] + 16 * v4);
        *v43 = v33;
        v43[1] = a1;
        *(v27[7] + 8 * v4) = v9;
        v44 = v27[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_40;
        }

        v27[2] = v46;
LABEL_20:
        v6 = v11;
        *(v59 + v11) = v27;
        swift_endAccess();

        ++v3;
        a1 = v57;
        if (v58 == v26)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v54)
    {
      v8 = sub_24910D19C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_54;
    }

    v61[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v12 = sub_24910D19C();
LABEL_5:
    v13 = MEMORY[0x277D84F90];
    v58 = isUniquelyReferenced_nonNull_native;
    if (v12)
    {
      v60 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v53 = v9;
      v55 = v8;
      v14 = 0;
      v13 = v60;
      v15 = a1 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x24C1F1C90](v14, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 alarmID];
        sub_24910C2CC();

        v60 = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          sub_2490CC8F8((v19 > 1), v20 + 1, 1);
          v13 = v60;
        }

        ++v14;
        v13[2] = v20 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v3);
        a1 = v57;
      }

      while (v12 != v14);
      v11 = v54;
      v8 = v55;
      LODWORD(v9) = v53;
    }

    v21 = MEMORY[0x24C1F1790](v13, v3);
    v23 = v22;

    v24 = sub_24909F930(v21, v23, v61);

    isUniquelyReferenced_nonNull_native = v58;
    *(v58 + 4) = v24;
    _os_log_impl(&dword_249083000, v8, v9, "AlarmsUpdated: alarmIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C1F26F0](v25, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v47 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x24C1F1C90](v47, a1);
    }

    else
    {
      v48 = *(a1 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v8 != v47);
  v3 = v61[0];
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v52[-16] = 6;
    *&v52[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v52[-32], "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}

uint64_t sub_2490C2874(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_249110198;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C2C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C2D10, v5, v4);
}

uint64_t sub_2490C2D10()
{
  sub_2490C2D70(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_2490C2D70(unint64_t a1)
{
  v3 = v1;
  v47 = sub_24910C2FC();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_32;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v48 = a1;
  v46 = a1 >> 62;
  if (v11)
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50[0] = v13;
    *v2 = 136315138;
    if (!v12)
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_49;
  }

  while (1)
  {
    if (v12)
    {
      v7 = sub_24910D19C();
      if (v7)
      {
LABEL_19:
        v28 = 0;
        v5 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
        v47 = a1 & 0xC000000000000001;
        v12 = a1 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v47)
          {
            v29 = MEMORY[0x24C1F1C90](v28, a1);
          }

          else
          {
            if (v28 >= *(v12 + 16))
            {
              goto LABEL_31;
            }

            v29 = *(a1 + 8 * v28 + 32);
          }

          v10 = v29;
          v30 = (v28 + 1);
          if (__OFADD__(v28, 1))
          {
            break;
          }

          v31 = [v29 alarmIDString];
          v32 = sub_24910CC9C();
          v34 = v33;

          swift_beginAccess();
          v2 = sub_2490A0A3C(v32, v34);
          LOBYTE(v31) = v35;
          a1 = v48;

          if (v31)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v37 = *(v3 + v5);
            v49 = v37;
            *(v3 + v5) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
              v37 = v49;
            }

            sub_2490CD11C(v2, v37);
            *(v3 + v5) = v37;
          }

          swift_endAccess();

          ++v28;
          if (v30 == v7)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        swift_once();
        goto LABEL_2;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_19;
      }
    }

LABEL_34:
    if (v46)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_45;
    }

    v50[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_49:
    v14 = sub_24910D19C();
LABEL_5:
    v15 = MEMORY[0x277D84F90];
    v45 = v13;
    if (v14)
    {
      v49 = MEMORY[0x277D84F90];
      result = sub_2490CC8F8(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v2;
      v43 = v10;
      v44 = v9;
      v17 = 0;
      v15 = v49;
      v18 = v48 & 0xC000000000000001;
      do
      {
        if (v18)
        {
          v19 = MEMORY[0x24C1F1C90](v17, v48);
        }

        else
        {
          v19 = *(v48 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = [v19 alarmID];
        sub_24910C2CC();

        v49 = v15;
        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2490CC8F8((v22 > 1), v23 + 1, 1);
          v15 = v49;
        }

        ++v17;
        *(v15 + 16) = v23 + 1;
        (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v7, v47);
      }

      while (v14 != v17);
      v12 = v46;
      v9 = v44;
      LODWORD(v10) = v43;
      v2 = v42;
    }

    v24 = MEMORY[0x24C1F1790](v15, v47);
    v5 = v25;

    v26 = sub_24909F930(v24, v5, v50);

    *(v2 + 4) = v26;
    _os_log_impl(&dword_249083000, v9, v10, "AlarmsRemoved: alarmIDs=%s", v2, 0xCu);
    v27 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x24C1F26F0](v27, -1, -1);
    MEMORY[0x24C1F26F0](v2, -1, -1);

    a1 = v48;
  }

  v38 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x24C1F1C90](v38, a1);
    }

    else
    {
      v39 = *(a1 + 8 * v38 + 32);
    }

    v40 = v39;
    ++v38;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v38);
  v13 = v50[0];
LABEL_45:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *(&v42 - 2) = 7;
    *(&v42 - 1) = v13;
    sub_2490B8E80(sub_2490CE614, (&v42 - 4), "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}

uint64_t sub_2490C33A0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_249110180;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C3780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C383C, v5, v4);
}

uint64_t sub_2490C383C()
{
  sub_2490C389C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490C389C(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAE48);

  v8 = sub_24910C87C();
  LODWORD(v9) = sub_24910CF2C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = a1 >> 62;
  v57 = a1;
  v54 = a1 >> 62;
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v11)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v11)
    {
      v26 = sub_24910D19C();
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v56)
        {
          v30 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_38;
          }

          v30 = *(a1 + 8 * v3 + 32);
        }

        v31 = v30;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v58 = v3 + 1;
        v32 = [v30 alarmIDString];
        v33 = sub_24910CC9C();
        a1 = v34;

        v35 = v59;
        swift_beginAccess();
        v9 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v35 + v6);
        v36 = v60;
        v11 = v6;
        *(v35 + v6) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v33, a1);
        v38 = v36[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_39;
        }

        v6 = v37;
        if (v36[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
            if (v6)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v40, isUniquelyReferenced_nonNull_native, &qword_27EED7AE8, &qword_249110110);
          v41 = sub_2490A0A3C(v33, a1);
          if ((v6 & 1) != (v42 & 1))
          {
            goto LABEL_60;
          }

          v4 = v41;
          if (v6)
          {
LABEL_19:

            v27 = v60;
            v28 = v60[7];
            v29 = *(v28 + 8 * v4);
            *(v28 + 8 * v4) = v9;

            goto LABEL_20;
          }
        }

        v27 = v60;
        v60[(v4 >> 6) + 8] |= 1 << v4;
        v43 = (v27[6] + 16 * v4);
        *v43 = v33;
        v43[1] = a1;
        *(v27[7] + 8 * v4) = v9;
        v44 = v27[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_40;
        }

        v27[2] = v46;
LABEL_20:
        v6 = v11;
        *(v59 + v11) = v27;
        swift_endAccess();

        ++v3;
        a1 = v57;
        if (v58 == v26)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v54)
    {
      v8 = sub_24910D19C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_54;
    }

    v61[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v12 = sub_24910D19C();
LABEL_5:
    v13 = MEMORY[0x277D84F90];
    v58 = isUniquelyReferenced_nonNull_native;
    if (v12)
    {
      v60 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v53 = v9;
      v55 = v8;
      v14 = 0;
      v13 = v60;
      v15 = a1 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x24C1F1C90](v14, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 alarmID];
        sub_24910C2CC();

        v60 = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          sub_2490CC8F8((v19 > 1), v20 + 1, 1);
          v13 = v60;
        }

        ++v14;
        v13[2] = v20 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v3);
        a1 = v57;
      }

      while (v12 != v14);
      v11 = v54;
      v8 = v55;
      LODWORD(v9) = v53;
    }

    v21 = MEMORY[0x24C1F1790](v13, v3);
    v23 = v22;

    v24 = sub_24909F930(v21, v23, v61);

    isUniquelyReferenced_nonNull_native = v58;
    *(v58 + 4) = v24;
    _os_log_impl(&dword_249083000, v8, v9, "AlarmsFired: alarmIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C1F26F0](v25, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v47 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x24C1F1C90](v47, a1);
    }

    else
    {
      v48 = *(a1 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v8 != v47);
  v3 = v61[0];
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v52[-16] = 10;
    *&v52[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v52[-32], "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}

uint64_t sub_2490C3F88(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_249110168;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C4368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C4424, v5, v4);
}

uint64_t sub_2490C4424()
{
  sub_2490C4484(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490C4484(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAE48);

  v8 = sub_24910C87C();
  LODWORD(v9) = sub_24910CF2C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = a1 >> 62;
  v57 = a1;
  v54 = a1 >> 62;
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v11)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v11)
    {
      v26 = sub_24910D19C();
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v56)
        {
          v30 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_38;
          }

          v30 = *(a1 + 8 * v3 + 32);
        }

        v31 = v30;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v58 = v3 + 1;
        v32 = [v30 alarmIDString];
        v33 = sub_24910CC9C();
        a1 = v34;

        v35 = v59;
        swift_beginAccess();
        v9 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v35 + v6);
        v36 = v60;
        v11 = v6;
        *(v35 + v6) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v33, a1);
        v38 = v36[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_39;
        }

        v6 = v37;
        if (v36[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
            if (v6)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v40, isUniquelyReferenced_nonNull_native, &qword_27EED7AE8, &qword_249110110);
          v41 = sub_2490A0A3C(v33, a1);
          if ((v6 & 1) != (v42 & 1))
          {
            goto LABEL_60;
          }

          v4 = v41;
          if (v6)
          {
LABEL_19:

            v27 = v60;
            v28 = v60[7];
            v29 = *(v28 + 8 * v4);
            *(v28 + 8 * v4) = v9;

            goto LABEL_20;
          }
        }

        v27 = v60;
        v60[(v4 >> 6) + 8] |= 1 << v4;
        v43 = (v27[6] + 16 * v4);
        *v43 = v33;
        v43[1] = a1;
        *(v27[7] + 8 * v4) = v9;
        v44 = v27[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_40;
        }

        v27[2] = v46;
LABEL_20:
        v6 = v11;
        *(v59 + v11) = v27;
        swift_endAccess();

        ++v3;
        a1 = v57;
        if (v58 == v26)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v54)
    {
      v8 = sub_24910D19C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_54;
    }

    v61[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v12 = sub_24910D19C();
LABEL_5:
    v13 = MEMORY[0x277D84F90];
    v58 = isUniquelyReferenced_nonNull_native;
    if (v12)
    {
      v60 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v53 = v9;
      v55 = v8;
      v14 = 0;
      v13 = v60;
      v15 = a1 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x24C1F1C90](v14, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 alarmID];
        sub_24910C2CC();

        v60 = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          sub_2490CC8F8((v19 > 1), v20 + 1, 1);
          v13 = v60;
        }

        ++v14;
        v13[2] = v20 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v3);
        a1 = v57;
      }

      while (v12 != v14);
      v11 = v54;
      v8 = v55;
      LODWORD(v9) = v53;
    }

    v21 = MEMORY[0x24C1F1790](v13, v3);
    v23 = v22;

    v24 = sub_24909F930(v21, v23, v61);

    isUniquelyReferenced_nonNull_native = v58;
    *(v58 + 4) = v24;
    _os_log_impl(&dword_249083000, v8, v9, "AlarmsDismissed: alarmIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C1F26F0](v25, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v47 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x24C1F1C90](v47, a1);
    }

    else
    {
      v48 = *(a1 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v8 != v47);
  v3 = v61[0];
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v52[-16] = 9;
    *&v52[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v52[-32], "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}

uint64_t sub_2490C4B70(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_249110150;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C4F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C500C, v5, v4);
}

uint64_t sub_2490C500C()
{
  sub_2490C506C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490C506C(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAE48);

  v8 = sub_24910C87C();
  LODWORD(v9) = sub_24910CF2C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = a1 >> 62;
  v57 = a1;
  v54 = a1 >> 62;
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v11)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v11)
    {
      v26 = sub_24910D19C();
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v56)
        {
          v30 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_38;
          }

          v30 = *(a1 + 8 * v3 + 32);
        }

        v31 = v30;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v58 = v3 + 1;
        v32 = [v30 alarmIDString];
        v33 = sub_24910CC9C();
        a1 = v34;

        v35 = v59;
        swift_beginAccess();
        v9 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v35 + v6);
        v36 = v60;
        v11 = v6;
        *(v35 + v6) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v33, a1);
        v38 = v36[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_39;
        }

        v6 = v37;
        if (v36[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
            if (v6)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v40, isUniquelyReferenced_nonNull_native, &qword_27EED7AE8, &qword_249110110);
          v41 = sub_2490A0A3C(v33, a1);
          if ((v6 & 1) != (v42 & 1))
          {
            goto LABEL_60;
          }

          v4 = v41;
          if (v6)
          {
LABEL_19:

            v27 = v60;
            v28 = v60[7];
            v29 = *(v28 + 8 * v4);
            *(v28 + 8 * v4) = v9;

            goto LABEL_20;
          }
        }

        v27 = v60;
        v60[(v4 >> 6) + 8] |= 1 << v4;
        v43 = (v27[6] + 16 * v4);
        *v43 = v33;
        v43[1] = a1;
        *(v27[7] + 8 * v4) = v9;
        v44 = v27[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_40;
        }

        v27[2] = v46;
LABEL_20:
        v6 = v11;
        *(v59 + v11) = v27;
        swift_endAccess();

        ++v3;
        a1 = v57;
        if (v58 == v26)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v54)
    {
      v8 = sub_24910D19C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_54;
    }

    v61[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v12 = sub_24910D19C();
LABEL_5:
    v13 = MEMORY[0x277D84F90];
    v58 = isUniquelyReferenced_nonNull_native;
    if (v12)
    {
      v60 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v53 = v9;
      v55 = v8;
      v14 = 0;
      v13 = v60;
      v15 = a1 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x24C1F1C90](v14, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 alarmID];
        sub_24910C2CC();

        v60 = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          sub_2490CC8F8((v19 > 1), v20 + 1, 1);
          v13 = v60;
        }

        ++v14;
        v13[2] = v20 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v3);
        a1 = v57;
      }

      while (v12 != v14);
      v11 = v54;
      v8 = v55;
      LODWORD(v9) = v53;
    }

    v21 = MEMORY[0x24C1F1790](v13, v3);
    v23 = v22;

    v24 = sub_24909F930(v21, v23, v61);

    isUniquelyReferenced_nonNull_native = v58;
    *(v58 + 4) = v24;
    _os_log_impl(&dword_249083000, v8, v9, "AlarmsFiringChanged: alarmIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C1F26F0](v25, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v47 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x24C1F1C90](v47, a1);
    }

    else
    {
      v48 = *(a1 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v8 != v47);
  v3 = v61[0];
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v52[-16] = 12;
    *&v52[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v52[-32], "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}

uint64_t sub_2490C5758()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return sub_2490C57E8();
}

uint64_t sub_2490C57E8()
{
  *(v1 + 16) = v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v3 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C58BC, v3, v2);
}

uint64_t sub_2490C58BC()
{
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  __swift_project_value_buffer(v1, qword_27EEDAE48);
  v2 = sub_24910C87C();
  v3 = sub_24910CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249083000, v2, v3, "AlarmStateReset", v4, 2u);
    MEMORY[0x24C1F26F0](v4, -1, -1);
  }

  if (swift_weakLoadStrong())
  {
    v5 = swift_task_alloc();
    *(v5 + 16) = xmmword_24910FE90;
    sub_2490B8E80(sub_2490CE614, v5, "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_2490CE5B4;

  return sub_2490C5A78();
}

uint64_t sub_2490C5A78()
{
  v1[13] = v0;
  v2 = sub_24910C2FC();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v4 = sub_24910CDAC();
  v1[18] = v4;
  v1[19] = v3;

  return MEMORY[0x2822009F8](sub_2490C5BAC, v4, v3);
}

uint64_t sub_2490C5BAC()
{
  v39 = v0;
  v1 = *(v0 + 104);
  v2 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager);
  *(v0 + 160) = v2;
  if (!v2)
  {
LABEL_16:

    v35 = *(v0 + 8);

    return v35();
  }

  v3 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorAlarmsFetchRunning);
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorAlarmsFetchPending;
  *(v0 + 168) = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorAlarmsFetchPending;
  if (v3)
  {
    *(v1 + v4) = 1;
    goto LABEL_16;
  }

  *(v0 + 176) = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
  v5 = v2;
  swift_beginAccess();
  v6 = *(v0 + 168);
  v7 = *(v0 + 104);
  v8 = 0x278F87000uLL;
  v9 = &unk_27EEDA000;
  *&v10 = 136315138;
  v37 = v10;
  while (1)
  {
    v19 = *(v0 + 160);
    *(v7 + v6) = 0;
    v20 = [v19 *(v8 + 3184)];
    *(v0 + 184) = v20;
    v21 = v19;
    if (v20)
    {
      break;
    }

    v22 = *(v0 + 160);
    sub_24910C7DC();
    v23 = sub_24910C7EC();
    swift_willThrow();

    if (v9[456] != -1)
    {
      swift_once();
    }

    v24 = sub_24910C89C();
    __swift_project_value_buffer(v24, qword_27EEDAE48);
    v25 = v23;
    v26 = sub_24910C87C();
    v27 = sub_24910CF4C();

    if (os_log_type_enabled(v26, v27))
    {
      v11 = swift_slowAlloc();
      v12 = v8;
      v13 = v9;
      v14 = swift_slowAlloc();
      v38 = v14;
      *v11 = v37;
      swift_getErrorValue();
      v15 = sub_24910D5DC();
      v17 = sub_24909F930(v15, v16, &v38);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_249083000, v26, v27, "### Fetch alarms failed: error=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v18 = v14;
      v9 = v13;
      v8 = v12;
      MEMORY[0x24C1F26F0](v18, -1, -1);
      MEMORY[0x24C1F26F0](v11, -1, -1);
    }

    else
    {
    }

    v6 = *(v0 + 168);
    v7 = *(v0 + 104);
    if ((*(v7 + v6) & 1) == 0)
    {

      goto LABEL_16;
    }
  }

  v28 = *(v0 + 160);
  v29 = *(v0 + 136);
  v30 = *(v0 + 104);
  v31 = swift_task_alloc();
  *(v0 + 192) = v31;
  v31[2] = v20;
  v31[3] = v28;
  v31[4] = 0x616C416863746566;
  v31[5] = 0xEB00000000736D72;
  v32 = v20;
  v33 = swift_task_alloc();
  *(v0 + 200) = v33;
  v34 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  *v33 = v0;
  v33[1] = sub_2490C5FC0;

  return MEMORY[0x2822008A0](v0 + 72, v30, v29, 0xD000000000000019, 0x80000002491113D0, sub_2490CE540, v31, v34);
}

uint64_t sub_2490C5FC0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_2490C6A6C;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_2490C60DC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2490C60DC()
{
  v105 = v0;
  v1 = *(v0 + 160);

  v3 = (v0 + 72);
  v2 = *(v0 + 72);
  v104[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v4 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_59:
    v97 = v4;
    v98 = sub_24910D19C();
    v4 = v97;
    v5 = v98;
  }

  else
  {
    v5 = *((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  v7 = v4;
  v103 = v5;
  v101 = v5 & ~(v5 >> 63);
  if (v5)
  {
    v8 = v4;
    v3[1] = MEMORY[0x277D84F90];
    v9 = sub_2490CC8F8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_61;
    }

    v17 = 0;
    v6 = *(v0 + 80);
    v4 = v8;
    v18 = v8 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x24C1F1C90](v17, v4);
      }

      else
      {
        v19 = *(v4 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v19 alarmID];
      sub_24910C2CC();

      *(v0 + 80) = v6;
      v23 = *(v6 + 16);
      v22 = *(v6 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2490CC8F8((v22 > 1), v23 + 1, 1);
        v6 = v3[1];
      }

      v25 = *(v0 + 120);
      v24 = *(v0 + 128);
      v26 = *(v0 + 112);
      ++v17;
      *(v6 + 16) = v23 + 1;
      (*(v25 + 32))(v6 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v24, v26);
      v4 = v7;
    }

    while (v103 != v17);
  }

  v27 = v4;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v100 = sub_24910C89C();
  __swift_project_value_buffer(v100, qword_27EEDAE48);

  v28 = sub_24910C87C();
  v29 = sub_24910CF2C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 112);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v104[0] = v32;
    *v31 = 136315138;
    v33 = MEMORY[0x24C1F1790](v6, v30);
    v35 = v34;

    v36 = sub_24909F930(v33, v35, v104);

    *(v31 + 4) = v36;
    v27 = v7;
    _os_log_impl(&dword_249083000, v28, v29, "Fetched alarms: alarmIDs=%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C1F26F0](v32, -1, -1);
    MEMORY[0x24C1F26F0](v31, -1, -1);
  }

  else
  {
  }

  v102 = v3;
  if (!v103)
  {

    v38 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_27;
    }

LABEL_38:
    v48 = MEMORY[0x277D84F98];
    v3[3] = MEMORY[0x277D84F98];
    goto LABEL_39;
  }

  v3[2] = MEMORY[0x277D84F90];
  v9 = sub_2490CC8B8(0, v101, 0);
  if (v103 < 0)
  {
LABEL_61:
    __break(1u);
    return MEMORY[0x2822008A0](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v37 = 0;
  v38 = v3[2];
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x24C1F1C90](v37, v27);
    }

    else
    {
      v39 = *(v27 + 8 * v37 + 32);
    }

    v40 = v39;
    v41 = [v39 alarmIDString];
    v42 = sub_24910CC9C();
    v44 = v43;

    v3[2] = v38;
    v46 = *(v38 + 16);
    v45 = *(v38 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_2490CC8B8((v45 > 1), v46 + 1, 1);
      v38 = v102[2];
    }

    ++v37;
    *(v38 + 16) = v46 + 1;
    v47 = (v38 + 24 * v46);
    v47[4] = v42;
    v47[5] = v44;
    v47[6] = v40;
    v3 = v102;
  }

  while (v103 != v37);

  if (!*(v38 + 16))
  {
    goto LABEL_38;
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7AE8, &qword_249110110);
  v48 = sub_24910D37C();
  v49 = *(v38 + 16);
  v3[3] = v48;
  if (!v49)
  {
LABEL_39:
    v68 = *(v0 + 176);
    v67 = *(v0 + 184);
    v69 = *(v0 + 104);

    *(v69 + v68) = v48;

    v71 = (*(v0 + 104) + *(v0 + 168));
    if (*v71 != 1)
    {
LABEL_48:

      v90 = *(v0 + 8);

      return v90();
    }

    v72 = 0x278F87000uLL;
    v73 = qword_27EEDAE48;
    *&v70 = 136315138;
    v99 = v70;
    while (1)
    {
      v82 = *(v0 + 160);
      *v71 = 0;
      v83 = [v82 *(v72 + 3184)];
      *(v0 + 184) = v83;
      v84 = v82;
      v85 = *(v0 + 160);
      if (v83)
      {
        break;
      }

      sub_24910C7DC();
      v86 = sub_24910C7EC();
      swift_willThrow();

      if (qword_27EEDAE40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v100, v73);
      v87 = v86;
      v88 = sub_24910C87C();
      v89 = sub_24910CF4C();

      if (os_log_type_enabled(v88, v89))
      {
        v74 = v73;
        v75 = v72;
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v104[0] = v77;
        *v76 = v99;
        swift_getErrorValue();
        v78 = sub_24910D5DC();
        v80 = sub_24909F930(v78, v79, v104);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_249083000, v88, v89, "### Fetch alarms failed: error=%s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x24C1F26F0](v77, -1, -1);
        v81 = v76;
        v72 = v75;
        v73 = v74;
        MEMORY[0x24C1F26F0](v81, -1, -1);
      }

      else
      {
      }

      v71 = (*(v0 + 104) + *(v0 + 168));
      if ((*v71 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v92 = *(v0 + 136);
    v93 = *(v0 + 104);
    v94 = swift_task_alloc();
    *(v0 + 192) = v94;
    v94[2] = v83;
    v94[3] = v85;
    v94[4] = 0x616C416863746566;
    v94[5] = 0xEB00000000736D72;
    v95 = v83;
    v96 = swift_task_alloc();
    *(v0 + 200) = v96;
    v16 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
    *v96 = v0;
    v96[1] = sub_2490C5FC0;
    v14 = sub_2490CE540;
    v13 = 0x80000002491113D0;
    v9 = v102;
    v10 = v93;
    v11 = v92;
    v12 = 0xD000000000000019;
    v15 = v94;

    return MEMORY[0x2822008A0](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v50 = (v38 + 48);
  while (1)
  {
    v55 = *(v50 - 2);
    v54 = *(v50 - 1);
    v56 = *v50;

    v57 = v56;
    v58 = sub_2490A0A3C(v55, v54);
    v59 = v48[2];
    v60 = (v4 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v63 = v4;
    if (v48[3] < v62)
    {
      v3 = v102;
      sub_2490CCE80(v62, 1, &qword_27EED7AE8, &qword_249110110);
      v58 = sub_2490A0A3C(v55, v54);
      if ((v63 & 1) != (v4 & 1))
      {
        break;
      }
    }

    v48 = v102[3];
    if (v63)
    {
      v51 = v58;

      v52 = v48[7];
      v53 = *(v52 + 8 * v51);
      *(v52 + 8 * v51) = v57;
    }

    else
    {
      v48[(v58 >> 6) + 8] |= 1 << v58;
      v64 = (v48[6] + 16 * v58);
      *v64 = v55;
      v64[1] = v54;
      *(v48[7] + 8 * v58) = v57;
      v65 = v48[2];
      v61 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v61)
      {
        goto LABEL_58;
      }

      v48[2] = v66;
    }

    v50 += 3;
    if (!--v49)
    {
      goto LABEL_39;
    }
  }

  return sub_24910D57C();
}

uint64_t sub_2490C6A6C()
{
  v33 = v0;
  v1 = *(v0 + 160);

  v2 = *(v0 + 208);
  v3 = &unk_27EEDA000;
  v4 = qword_27EEDAE48;
  v5 = 0x278F87000uLL;
  while (1)
  {

    if (v3[456] != -1)
    {
      swift_once();
    }

    v6 = sub_24910C89C();
    __swift_project_value_buffer(v6, v4);
    v7 = v2;
    v8 = sub_24910C87C();
    v9 = sub_24910CF4C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = v4;
      v12 = v3;
      v13 = swift_slowAlloc();
      v32 = v13;
      *v10 = 136315138;
      swift_getErrorValue();
      v14 = sub_24910D5DC();
      v16 = sub_24909F930(v14, v15, &v32);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_249083000, v8, v9, "### Fetch alarms failed: error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      v17 = v13;
      v3 = v12;
      v4 = v11;
      v5 = 0x278F87000;
      MEMORY[0x24C1F26F0](v17, -1, -1);
      MEMORY[0x24C1F26F0](v10, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 104);
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);
    if ((*(v18 + v19) & 1) == 0)
    {
      break;
    }

    *(v18 + v19) = 0;
    v21 = [v20 *(v5 + 3184)];
    *(v0 + 184) = v21;
    v22 = v20;
    v23 = *(v0 + 160);
    if (v21)
    {
      v26 = *(v0 + 136);
      v27 = *(v0 + 104);
      v28 = swift_task_alloc();
      *(v0 + 192) = v28;
      v28[2] = v21;
      v28[3] = v23;
      v28[4] = 0x616C416863746566;
      v28[5] = 0xEB00000000736D72;
      v29 = v21;
      v30 = swift_task_alloc();
      *(v0 + 200) = v30;
      v31 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
      *v30 = v0;
      v30[1] = sub_2490C5FC0;

      return MEMORY[0x2822008A0](v0 + 72, v27, v26, 0xD000000000000019, 0x80000002491113D0, sub_2490CE540, v28, v31);
    }

    sub_24910C7DC();
    v2 = sub_24910C7EC();
    swift_willThrow();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2490C6E20(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491100F8;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C7200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C72BC, v5, v4);
}

uint64_t sub_2490C72BC()
{
  sub_2490C731C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490C731C(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAE48);

  v8 = sub_24910C87C();
  LODWORD(v9) = sub_24910CF2C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = a1 >> 62;
  v57 = a1;
  v54 = a1 >> 62;
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v11)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v11)
    {
      v26 = sub_24910D19C();
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v56)
        {
          v30 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_38;
          }

          v30 = *(a1 + 8 * v3 + 32);
        }

        v31 = v30;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v58 = v3 + 1;
        v32 = [v30 timerIDString];
        v33 = sub_24910CC9C();
        a1 = v34;

        v35 = v59;
        swift_beginAccess();
        v9 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v35 + v6);
        v36 = v60;
        v11 = v6;
        *(v35 + v6) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v33, a1);
        v38 = v36[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_39;
        }

        v6 = v37;
        if (v36[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AB8, &qword_249110038);
            if (v6)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v40, isUniquelyReferenced_nonNull_native, &qword_27EED7AB8, &qword_249110038);
          v41 = sub_2490A0A3C(v33, a1);
          if ((v6 & 1) != (v42 & 1))
          {
            goto LABEL_60;
          }

          v4 = v41;
          if (v6)
          {
LABEL_19:

            v27 = v60;
            v28 = v60[7];
            v29 = *(v28 + 8 * v4);
            *(v28 + 8 * v4) = v9;

            goto LABEL_20;
          }
        }

        v27 = v60;
        v60[(v4 >> 6) + 8] |= 1 << v4;
        v43 = (v27[6] + 16 * v4);
        *v43 = v33;
        v43[1] = a1;
        *(v27[7] + 8 * v4) = v9;
        v44 = v27[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_40;
        }

        v27[2] = v46;
LABEL_20:
        v6 = v11;
        *(v59 + v11) = v27;
        swift_endAccess();

        ++v3;
        a1 = v57;
        if (v58 == v26)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v54)
    {
      v8 = sub_24910D19C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_54;
    }

    v61[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v12 = sub_24910D19C();
LABEL_5:
    v13 = MEMORY[0x277D84F90];
    v58 = isUniquelyReferenced_nonNull_native;
    if (v12)
    {
      v60 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v53 = v9;
      v55 = v8;
      v14 = 0;
      v13 = v60;
      v15 = a1 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x24C1F1C90](v14, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 timerID];
        sub_24910C2CC();

        v60 = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          sub_2490CC8F8((v19 > 1), v20 + 1, 1);
          v13 = v60;
        }

        ++v14;
        v13[2] = v20 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v3);
        a1 = v57;
      }

      while (v12 != v14);
      v11 = v54;
      v8 = v55;
      LODWORD(v9) = v53;
    }

    v21 = MEMORY[0x24C1F1790](v13, v3);
    v23 = v22;

    v24 = sub_24909F930(v21, v23, v61);

    isUniquelyReferenced_nonNull_native = v58;
    *(v58 + 4) = v24;
    _os_log_impl(&dword_249083000, v8, v9, "TimersAdded: timerIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C1F26F0](v25, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v47 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x24C1F1C90](v47, a1);
    }

    else
    {
      v48 = *(a1 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTTimer_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v8 != v47);
  v3 = v61[0];
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v52[-16] = 5;
    *&v52[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v52[-32], "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}

uint64_t sub_2490C7A08(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491100E0;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C7DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C7EA4, v5, v4);
}

uint64_t sub_2490C7EA4()
{
  sub_2490C7F04(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490C7F04(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAE48);

  v8 = sub_24910C87C();
  LODWORD(v9) = sub_24910CF2C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = a1 >> 62;
  v57 = a1;
  v54 = a1 >> 62;
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v11)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v11)
    {
      v26 = sub_24910D19C();
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v56)
        {
          v30 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_38;
          }

          v30 = *(a1 + 8 * v3 + 32);
        }

        v31 = v30;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v58 = v3 + 1;
        v32 = [v30 timerIDString];
        v33 = sub_24910CC9C();
        a1 = v34;

        v35 = v59;
        swift_beginAccess();
        v9 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v35 + v6);
        v36 = v60;
        v11 = v6;
        *(v35 + v6) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v33, a1);
        v38 = v36[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_39;
        }

        v6 = v37;
        if (v36[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AB8, &qword_249110038);
            if (v6)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v40, isUniquelyReferenced_nonNull_native, &qword_27EED7AB8, &qword_249110038);
          v41 = sub_2490A0A3C(v33, a1);
          if ((v6 & 1) != (v42 & 1))
          {
            goto LABEL_60;
          }

          v4 = v41;
          if (v6)
          {
LABEL_19:

            v27 = v60;
            v28 = v60[7];
            v29 = *(v28 + 8 * v4);
            *(v28 + 8 * v4) = v9;

            goto LABEL_20;
          }
        }

        v27 = v60;
        v60[(v4 >> 6) + 8] |= 1 << v4;
        v43 = (v27[6] + 16 * v4);
        *v43 = v33;
        v43[1] = a1;
        *(v27[7] + 8 * v4) = v9;
        v44 = v27[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_40;
        }

        v27[2] = v46;
LABEL_20:
        v6 = v11;
        *(v59 + v11) = v27;
        swift_endAccess();

        ++v3;
        a1 = v57;
        if (v58 == v26)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v54)
    {
      v8 = sub_24910D19C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_54;
    }

    v61[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v12 = sub_24910D19C();
LABEL_5:
    v13 = MEMORY[0x277D84F90];
    v58 = isUniquelyReferenced_nonNull_native;
    if (v12)
    {
      v60 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v53 = v9;
      v55 = v8;
      v14 = 0;
      v13 = v60;
      v15 = a1 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x24C1F1C90](v14, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 timerID];
        sub_24910C2CC();

        v60 = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          sub_2490CC8F8((v19 > 1), v20 + 1, 1);
          v13 = v60;
        }

        ++v14;
        v13[2] = v20 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v3);
        a1 = v57;
      }

      while (v12 != v14);
      v11 = v54;
      v8 = v55;
      LODWORD(v9) = v53;
    }

    v21 = MEMORY[0x24C1F1790](v13, v3);
    v23 = v22;

    v24 = sub_24909F930(v21, v23, v61);

    isUniquelyReferenced_nonNull_native = v58;
    *(v58 + 4) = v24;
    _os_log_impl(&dword_249083000, v8, v9, "TimersUpdated: timerIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C1F26F0](v25, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v47 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x24C1F1C90](v47, a1);
    }

    else
    {
      v48 = *(a1 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTTimer_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v8 != v47);
  v3 = v61[0];
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v52[-16] = 6;
    *&v52[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v52[-32], "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}

uint64_t sub_2490C85F0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491100C8;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C89D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C8A8C, v5, v4);
}

uint64_t sub_2490C8A8C()
{
  sub_2490C8AEC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_2490C8AEC(unint64_t a1)
{
  v3 = v1;
  v47 = sub_24910C2FC();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_32;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v48 = a1;
  v46 = a1 >> 62;
  if (v11)
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50[0] = v13;
    *v2 = 136315138;
    if (!v12)
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_49;
  }

  while (1)
  {
    if (v12)
    {
      v7 = sub_24910D19C();
      if (v7)
      {
LABEL_19:
        v28 = 0;
        v5 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
        v47 = a1 & 0xC000000000000001;
        v12 = a1 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v47)
          {
            v29 = MEMORY[0x24C1F1C90](v28, a1);
          }

          else
          {
            if (v28 >= *(v12 + 16))
            {
              goto LABEL_31;
            }

            v29 = *(a1 + 8 * v28 + 32);
          }

          v10 = v29;
          v30 = (v28 + 1);
          if (__OFADD__(v28, 1))
          {
            break;
          }

          v31 = [v29 timerIDString];
          v32 = sub_24910CC9C();
          v34 = v33;

          swift_beginAccess();
          v2 = sub_2490A0A3C(v32, v34);
          LOBYTE(v31) = v35;
          a1 = v48;

          if (v31)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v37 = *(v3 + v5);
            v49 = v37;
            *(v3 + v5) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_2490CCD24(&qword_27EED7AB8, &qword_249110038);
              v37 = v49;
            }

            sub_2490CD11C(v2, v37);
            *(v3 + v5) = v37;
          }

          swift_endAccess();

          ++v28;
          if (v30 == v7)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        swift_once();
        goto LABEL_2;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_19;
      }
    }

LABEL_34:
    if (v46)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_45;
    }

    v50[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_49:
    v14 = sub_24910D19C();
LABEL_5:
    v15 = MEMORY[0x277D84F90];
    v45 = v13;
    if (v14)
    {
      v49 = MEMORY[0x277D84F90];
      result = sub_2490CC8F8(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v2;
      v43 = v10;
      v44 = v9;
      v17 = 0;
      v15 = v49;
      v18 = v48 & 0xC000000000000001;
      do
      {
        if (v18)
        {
          v19 = MEMORY[0x24C1F1C90](v17, v48);
        }

        else
        {
          v19 = *(v48 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = [v19 timerID];
        sub_24910C2CC();

        v49 = v15;
        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2490CC8F8((v22 > 1), v23 + 1, 1);
          v15 = v49;
        }

        ++v17;
        *(v15 + 16) = v23 + 1;
        (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v7, v47);
      }

      while (v14 != v17);
      v12 = v46;
      v9 = v44;
      LODWORD(v10) = v43;
      v2 = v42;
    }

    v24 = MEMORY[0x24C1F1790](v15, v47);
    v5 = v25;

    v26 = sub_24909F930(v24, v5, v50);

    *(v2 + 4) = v26;
    _os_log_impl(&dword_249083000, v9, v10, "TimersRemoved: timerIDs=%s", v2, 0xCu);
    v27 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x24C1F26F0](v27, -1, -1);
    MEMORY[0x24C1F26F0](v2, -1, -1);

    a1 = v48;
  }

  v38 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x24C1F1C90](v38, a1);
    }

    else
    {
      v39 = *(a1 + 8 * v38 + 32);
    }

    v40 = v39;
    ++v38;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTTimer_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v38);
  v13 = v50[0];
LABEL_45:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *(&v42 - 2) = 7;
    *(&v42 - 1) = v13;
    sub_2490B8E80(sub_2490CE614, (&v42 - 4), "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}