uint64_t sub_1B4B60CA8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutAwardsFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t WorkoutAwardsFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(v1 + *(v6 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v9 = 1;
      goto LABEL_19;
    case 2:
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0) + 48);
      *a1 = 2;
      v11 = &qword_1EB8A6850;
      v12 = &unk_1B4D1BC10;
      goto LABEL_15;
    case 3:
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E98, &unk_1B4D25A40) + 48);
      *a1 = 3;
      goto LABEL_10;
    case 4:

      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E90, &unk_1B4D2C9E0) + 48);
      v10 = 4;
      goto LABEL_14;
    case 5:

      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E88, &unk_1B4D25A30) + 48);
      v10 = 5;
LABEL_14:
      *a1 = v10;
      v11 = &qword_1EB8A6830;
      v12 = &unk_1B4D1AB40;
      goto LABEL_15;
    case 6:
      result = sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
      v9 = 6;
      goto LABEL_19;
    case 7:
      v13 = 8;
      goto LABEL_22;
    case 8:
      v13 = 9;
LABEL_22:
      *a1 = v13;
      return sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.RingValue);
    case 9:
      v9 = 10;
      goto LABEL_19;
    case 10:
      v9 = 11;
      goto LABEL_19;
    case 11:
      v9 = 12;
      goto LABEL_19;
    case 12:
      v9 = 13;
      goto LABEL_19;
    case 13:
      v9 = 14;
      goto LABEL_19;
    case 14:
      v9 = 7;
LABEL_19:
      *a1 = v9;
      break;
    default:

      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA8, &unk_1B4D25A50) + 48);
      *a1 = 0;
LABEL_10:
      v11 = &qword_1EB8A6868;
      v12 = &unk_1B4D1AB80;
LABEL_15:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      result = (*(*(v14 - 8) + 8))(v5 + v8, v14);
      break;
  }

  return result;
}

unint64_t sub_1B4B60FC8()
{
  result = qword_1EB8AB0D0;
  if (!qword_1EB8AB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB0D0);
  }

  return result;
}

unint64_t sub_1B4B61020()
{
  result = qword_1EB8AB0D8;
  if (!qword_1EB8AB0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AB0E0, &qword_1B4D32DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB0D8);
  }

  return result;
}

unint64_t sub_1B4B61088()
{
  result = qword_1EB8AB0E8;
  if (!qword_1EB8AB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB0E8);
  }

  return result;
}

unint64_t sub_1B4B610E0()
{
  result = qword_1EB8AB0F0;
  if (!qword_1EB8AB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB0F0);
  }

  return result;
}

unint64_t sub_1B4B61150(uint64_t a1)
{
  result = sub_1B4B61178();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B61178()
{
  result = qword_1EB8AB0F8;
  if (!qword_1EB8AB0F8)
  {
    type metadata accessor for WorkoutAwardsFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB0F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FitnessPlusModalityKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FitnessPlusModalityKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B4B61320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B61388()
{
  v38 = sub_1B4D1794C();
  v1 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v34 - v5;
  v7 = sub_1B4D1777C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4D1796C();
  __swift_project_value_buffer(v14, qword_1EDC3CE48);
  v15 = *(type metadata accessor for WorkoutAwardsFact(0) + 20);
  if (sub_1B4D1791C())
  {
    return 0x7961646F54;
  }

  v37 = v10;
  v17 = *MEMORY[0x1E6969A48];
  v18 = v38;
  v34[0] = *(v1 + 104);
  v34[1] = v1 + 104;
  (v34[0])(v3, v17, v38);
  sub_1B4D1790C();
  v19 = *(v1 + 8);
  v35 = v3;
  v36 = v1 + 8;
  v20 = v18;
  v21 = v19;
  v19(v3, v20);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B497A590(v6);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v22 = sub_1B4D1791C();
    (*(v8 + 8))(v13, v7);
    if (v22)
    {
      return 0x6164726574736559;
    }
  }

  v23 = v37;
  (*(v8 + 16))(v37, v0 + v15, v7);
  DayOfWeek.init(from:)(v23, v41);
  v24 = LOBYTE(v41[0]);
  if (LOBYTE(v41[0]) == 7)
  {
    return 0;
  }

  v25 = 0x7961646E6F6DLL;
  v26 = v35;
  v27 = v38;
  (v34[0])(v35, *MEMORY[0x1E6969A10], v38);
  v28 = sub_1B4D1792C();
  v21(v26, v27);
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  if (v28)
  {
    v29 = 1936287828;
  }

  else
  {
    v29 = 1953718604;
  }

  MEMORY[0x1B8C7C620](v29, 0xE400000000000000);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  if (v24 <= 2)
  {
    if (v24)
    {
      if (v24 == 1)
      {
        v30 = 0xE700000000000000;
        v25 = 0x79616473657574;
      }

      else
      {
        v25 = 0x616473656E646577;
        v30 = 0xE900000000000079;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v24 <= 4)
  {
    if (v24 == 3)
    {
      v30 = 0xE800000000000000;
      v25 = 0x7961647372756874;
    }

    else
    {
      v30 = 0xE600000000000000;
      v25 = 0x796164697266;
    }

    goto LABEL_27;
  }

  if (v24 != 5)
  {
    v25 = 0x7961646E7573;
LABEL_26:
    v30 = 0xE600000000000000;
    goto LABEL_27;
  }

  v30 = 0xE800000000000000;
  v25 = 0x7961647275746173;
LABEL_27:
  v39 = v25;
  v40 = v30;
  sub_1B4955758();
  v31 = sub_1B4D1885C();
  v33 = v32;

  MEMORY[0x1B8C7C620](v31, v33);

  return v41[0];
}

uint64_t sub_1B4B61890()
{
  v1 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *(type metadata accessor for WorkoutAwardsFact(0) + 24);
  sub_1B4B61C64(v0 + v13, v12, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    return *&aMoveRinexercis[8 * *v12];
  }

  sub_1B4AF3D58(v12, type metadata accessor for WorkoutAwardsFact.AwardType);
  sub_1B4B61C64(v0 + v13, v9, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1B4B61320(v9, v6, type metadata accessor for WorkoutAwardsFact.RingValue);
    sub_1B4B61C64(v6, v3, type metadata accessor for WorkoutAwardsFact.RingValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.RingValue);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        (*(*(v18 - 8) + 8))(v3, v18);
        return 0x6573696372657845;
      }

      else
      {
        sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.RingValue);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
        (*(*(v20 - 8) + 8))(v3, v20);
        return 0x697220646E617453;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v16 = &qword_1EB8A6850;
        v17 = &unk_1B4D1BC10;
      }

      else
      {
        v16 = &qword_1EB8A6868;
        v17 = &unk_1B4D1AB80;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
      (*(*(v19 - 8) + 8))(v3, v19);
      sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.RingValue);
      return 0x6E69722065766F4DLL;
    }
  }

  else
  {
    sub_1B4AF3D58(v9, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B61C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AudioSynthesisVoiceSelection.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    if (!*a1)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_12:
      result = sub_1B4B62068(a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
      *a2 = v15;
      a2[1] = v16;
      a2[2] = v17;
      a2[3] = v18;
      return result;
    }

    v11 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
    sub_1B4B5B5BC(a1 + *(v11 + 24), v6);
    v12 = *(v8 + 48);
    if (v12(v6, 1, v7) == 1)
    {
      sub_1B4D17BBC();
      v13 = &v10[*(v7 + 20)];
      *v13 = 0;
      *(v13 + 1) = 0;
      v14 = &v10[*(v7 + 24)];
      *v14 = 0;
      *(v14 + 1) = 0;
      if (v12(v6, 1, v7) != 1)
      {
        sub_1B4B62000(v6);
      }
    }

    else
    {
      sub_1B4B5B68C(v6, v10);
    }

    v19 = &v10[*(v7 + 20)];
    v16 = *(v19 + 1);
    if (v16)
    {
      v20 = &v10[*(v7 + 24)];
      v18 = *(v20 + 1);
      if (v18)
      {
        v15 = *v19;
        v17 = *v20;

        sub_1B4B62068(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
        goto LABEL_12;
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    sub_1B498C3D8();
    swift_allocError();
    *v23 = v22;
    swift_willThrow();
    sub_1B4B62068(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  else
  {
    sub_1B4B61FAC();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1B4B62068(a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
}

unint64_t sub_1B4B61FAC()
{
  result = qword_1EB8AB108;
  if (!qword_1EB8AB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB108);
  }

  return result;
}

uint64_t sub_1B4B62000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4B62068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AudioSynthesisVoiceSelection.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4B626FC(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  return sub_1B4D17DAC();
}

void sub_1B4B62174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v16[1] = v16;
    *a1 = 1;
    *(a1 + 8) = 1;
    MEMORY[0x1EEE9AC00](v12);
    v16[-4] = a2;
    v16[-3] = a3;
    v16[-2] = a4;
    v16[-1] = a5;
    sub_1B4B626FC(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    sub_1B4D17DAC();
    v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0) + 24);
    sub_1B4B62000(a1 + v15);
    sub_1B4B5B68C(v14, a1 + v15);
    (*(v11 + 56))(a1 + v15, 0, 1, v10);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }
}

_OWORD *sub_1B4B62348(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v11[0] = *v1;
  v11[1] = v7;
  v8 = sub_1B4B626A8();
  v9 = v11;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B626FC(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
    v9 = sub_1B4D17D6C();
    sub_1B4B62068(v6, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  }

  return v9;
}

double sub_1B4B62490@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B28F94(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1B4B624CC()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4B626FC(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4B62654()
{
  result = qword_1EB8AB110;
  if (!qword_1EB8AB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB110);
  }

  return result;
}

unint64_t sub_1B4B626A8()
{
  result = qword_1EB8AB118;
  if (!qword_1EB8AB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB118);
  }

  return result;
}

uint64_t sub_1B4B626FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ActivitySharingFriendWorkout.init(_:)@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A7CB8, &unk_1B4D20170);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    *v11 = 0;
    v11[4] = 0;
    *(v11 + 2) = 0;
    sub_1B4D17BBC();
    if (v13(v7, 1, v8) != 1)
    {
      sub_1B4975024(v7, &qword_1EB8A7CB8, &unk_1B4D20170);
    }
  }

  else
  {
    sub_1B4B65778(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  }

  sub_1B4B29E60();
  v14 = FIWorkoutActivityType.init(_:)(v11);
  if (v2)
  {
    return sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  }

  v16 = v14;
  type metadata accessor for ActivitySharingFriendWorkout(0);
  sub_1B4D176CC();
  sub_1B4D176CC();
  result = sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  *a2 = v16;
  return result;
}

uint64_t ActivitySharingFriendWorkout.protobuf()(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4B657FC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  return sub_1B4D17DAC();
}

void sub_1B4B62A74(double *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a2;
  sub_1B4B657FC(&qword_1EB8AB158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutActivityType);
  sub_1B4D17DAC();
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0) + 28);
  sub_1B4975024(a1 + v8, &qword_1EB8A7CB8, &unk_1B4D20170);
  sub_1B4B65778(v7, a1 + v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  (*(v5 + 56))(a1 + v8, 0, 1, v4);
  type metadata accessor for ActivitySharingFriendWorkout(0);
  sub_1B4D176DC();
  *a1 = v9;
  sub_1B4D176DC();
  *(a1 + 1) = v10;
}

uint64_t sub_1B4B62C34(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4B657FC(&qword_1EB8AB150, type metadata accessor for ActivitySharingFriendWorkout, &protocol conformance descriptor for ActivitySharingFriendWorkout);
  (*(v8 + 32))(a1, v8);
  if (!v3)
  {
    sub_1B4B657FC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    v2 = sub_1B4D17D6C();
    sub_1B4B65718(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  }

  return v2;
}

uint64_t sub_1B4B62DB4(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4B657FC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  return sub_1B4D17DAC();
}

unint64_t ActivitySharingFriend.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v113 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v120 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v118 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v119 = &v98 - v6;
  v7 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v117 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v130 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = &v98 - v10;
  v128 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v111 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v132 = (&v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  v121 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v134 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v98 - v14;
  v126 = type metadata accessor for ActivitySharingFriendWorkout(0);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B4D1777C();
  v114 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v116 = &v98 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v112 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - v23;
  v25 = sub_1B4D177CC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v98 - v30;
  sub_1B4D1778C();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1B4975024(v24, &qword_1EB8A6A30, &unk_1B4D1FC00);
    sub_1B49BA334();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    return sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
  }

  v101 = *(v26 + 32);
  v101(v31, v24, v25);
  v33 = *(v26 + 16);
  v107 = v25;
  v33(v28, v31, v25);
  v34 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v35 = v34[12];
  v36 = (a1 + v34[11]);
  v37 = v36[1];
  v99 = *v36;
  v39 = *(a1 + v35);
  v38 = *(a1 + v35 + 8);
  v100 = v39;
  v98 = v34;
  v40 = *(a1 + v34[13] + 8);
  v105 = v26;
  v104 = v28;
  v106 = v31;
  v102 = v26 + 32;
  v103 = v38;
  if (v40)
  {

    sub_1B4D1797C();
  }

  else
  {
    v41 = sub_1B4D179BC();
    (*(*(v41 - 8) + 56))(v116, 1, 1, v41);
  }

  v42 = v37;
  v43 = *(a1 + 16);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  v110 = a1;
  v109 = v16;
  v108 = v37;
  if (v44)
  {
    v139 = MEMORY[0x1E69E7CC0];
    sub_1B4BCEEDC(0, v44, 0);
    v46 = v139;
    v123 = *MEMORY[0x1E699C9A0];
    v47 = v121;
    v48 = v43 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6890, &qword_1B4D1ABA8);
    v121 = *(v47 + 72);
    v49 = (v111 + 48);
    while (1)
    {
      v50 = v133;
      sub_1B4B656B0(v48, v133, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      v51 = v50;
      v52 = v134;
      sub_1B4B656B0(v51, v134, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      v53 = v52 + *(v127 + 28);
      v54 = v129;
      sub_1B4974FBC(v53, v129, &qword_1EB8A7CB8, &unk_1B4D20170);
      v55 = *v49;
      v56 = v128;
      if ((*v49)(v54, 1, v128) == 1)
      {
        v57 = v132;
        *v132 = 0;
        *(v57 + 4) = 0;
        v57[2] = 0;
        sub_1B4D17BBC();
        result = (v55)(v54, 1, v56);
        if (result != 1)
        {
          result = sub_1B4975024(v54, &qword_1EB8A7CB8, &unk_1B4D20170);
        }
      }

      else
      {
        v57 = v132;
        result = sub_1B4B65778(v54, v132, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      }

      v59 = *v57;
      if ((v59 & 0x80000000) != 0)
      {
        break;
      }

      v60 = *(v57 + 4);
      v138[0] = sub_1B4D1818C();
      v138[1] = v61;
      v62 = v57[2];
      v138[5] = MEMORY[0x1E69E6530];
      v138[2] = v62;
      v63 = sub_1B4D18AEC();
      sub_1B4974FBC(v138, &v135, &qword_1EB8AB120, &qword_1B4D32FD0);
      v64 = v135;
      v65 = v136;
      result = sub_1B49E9EC4(v135, v136);
      if (v66)
      {
        goto LABEL_34;
      }

      v63[(result >> 6) + 8] |= 1 << result;
      v67 = (v63[6] + 16 * result);
      *v67 = v64;
      v67[1] = v65;
      result = sub_1B498B060(&v137, (v63[7] + 32 * result));
      v68 = v63[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_35;
      }

      v63[2] = v70;
      v71 = objc_allocWithZone(MEMORY[0x1E699C9F0]);
      sub_1B4975024(v138, &qword_1EB8AB120, &qword_1B4D32FD0);
      v72 = sub_1B4D17FAC();

      v73 = [v71 initWithActivityTypeIdentifier:v59 isIndoor:v60 metadata:v72];

      sub_1B4B65718(v132, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      v74 = v134;
      v75 = v124;
      sub_1B4D176CC();
      sub_1B4D176CC();
      sub_1B4B65718(v74, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      sub_1B4B65718(v133, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      *v75 = v73;
      v139 = v46;
      v77 = *(v46 + 16);
      v76 = *(v46 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1B4BCEEDC((v76 > 1), v77 + 1, 1);
        v46 = v139;
      }

      *(v46 + 16) = v77 + 1;
      sub_1B4B65778(v75, v46 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v77, type metadata accessor for ActivitySharingFriendWorkout);
      v48 += v121;
      if (!--v44)
      {
        v45 = v46;
        a1 = v110;
        v16 = v109;
        v42 = v108;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1B4D176CC();
    LODWORD(v133) = *(a1 + 32);
    LODWORD(v134) = *(a1 + 33);
    v78 = *(a1 + 40);
    v79 = *(v78 + 16);
    v80 = MEMORY[0x1E69E7CC0];
    if (!v79)
    {
LABEL_28:
      v90 = v112;
      v91 = v105;
      if (*(a1 + v98[14] + 8))
      {

        sub_1B4D1778C();

        v92 = v107;
        (*(v91 + 8))(v106, v107);
      }

      else
      {
        v92 = v107;
        (*(v105 + 8))(v106, v107);
        (*(v91 + 56))(v90, 1, 1, v92);
      }

      v93 = v113;
      v101(v113, v104, v92);
      v94 = type metadata accessor for ActivitySharingFriend(0);
      v95 = &v93[v94[5]];
      *v95 = v99;
      *(v95 + 1) = v42;
      v96 = &v93[v94[6]];
      v97 = v103;
      *v96 = v100;
      *(v96 + 1) = v97;
      sub_1B498B270(v116, &v93[v94[7]], &qword_1EB8A6C20, &unk_1B4D1FBF0);
      *&v93[v94[8]] = v45;
      (*(v114 + 32))(&v93[v94[9]], v115, v16);
      v93[v94[10]] = v133;
      v93[v94[11]] = v134;
      *&v93[v94[12]] = v80;
      sub_1B498B270(v90, &v93[v94[13]], &qword_1EB8A6A30, &unk_1B4D1FC00);
      return sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
    }

    v135 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCED7C(0, v79, 0);
    v81 = 0;
    v80 = v135;
    v82 = v78 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    while (v81 < *(v78 + 16))
    {
      v83 = v119;
      sub_1B4B656B0(v82 + *(v120 + 72) * v81, v119, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v84 = v118;
      sub_1B4B656B0(v83, v118, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v85 = v131;
      HKActivitySummaryRepresentable.init(_:)(v84, v130);
      v131 = v85;
      if (v85)
      {

        sub_1B4B65718(v83, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        (*(v114 + 8))(v115, v109);
        sub_1B4975024(v116, &qword_1EB8A6C20, &unk_1B4D1FBF0);
        v88 = *(v105 + 8);
        v89 = v107;
        v88(v104, v107);
        v88(v106, v89);

        a1 = v110;
        return sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      }

      sub_1B4B65718(v83, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v135 = v80;
      v87 = *(v80 + 16);
      v86 = *(v80 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_1B4BCED7C((v86 > 1), v87 + 1, 1);
        v80 = v135;
      }

      ++v81;
      *(v80 + 16) = v87 + 1;
      result = sub_1B4B65778(v130, v80 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v87, type metadata accessor for HKActivitySummaryRepresentable);
      if (v79 == v81)
      {
        a1 = v110;
        v16 = v109;
        v42 = v108;
        goto LABEL_28;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ActivitySharingFriend.protobuf()(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  sub_1B4B657FC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B63EE0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v71 - v10;
  v77 = sub_1B4D177CC();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActivitySharingFriendWorkout(0);
  v84 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  v82 = *(v15 - 8);
  v83 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v71 - v18;
  v20 = sub_1B4D179BC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B4D1779C();
  v25 = v24;

  *a1 = v23;
  *(a1 + 8) = v25;
  v26 = type metadata accessor for ActivitySharingFriend(0);
  v79 = a2;
  v80 = v26;
  v27 = (a2 + *(v26 + 20));
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
    v30 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));

    *v30 = v29;
    v30[1] = v28;
    a2 = v79;
  }

  v31 = (a2 + v80[6]);
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;
    v34 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 48));

    *v34 = v33;
    v34[1] = v32;
    a2 = v79;
  }

  sub_1B4974FBC(a2 + v80[7], v19, &qword_1EB8A6C20, &unk_1B4D1FBF0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1B4975024(v19, &qword_1EB8A6C20, &unk_1B4D1FBF0);
  }

  else
  {
    v35 = v81;
    (*(v21 + 32))(v81, v19, v20);
    v36 = sub_1B4D1798C();
    v38 = v37;
    (*(v21 + 8))(v35, v20);
    v39 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 52));

    *v39 = v36;
    v39[1] = v38;
  }

  v40 = *(a2 + v80[8]);
  v41 = *(v40 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  v78 = a1;
  if (v41)
  {
    v89 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCF67C(0, v41, 0);
    v44 = 0;
    v42 = v89;
    v81 = (v40 + ((*(v84 + 80) + 32) & ~*(v84 + 80)));
    while (v44 < *(v40 + 16))
    {
      v45 = sub_1B4B656B0(&v81[*(v84 + 72) * v44], v14, type metadata accessor for ActivitySharingFriendWorkout);
      MEMORY[0x1EEE9AC00](v45);
      *(&v71 - 2) = v14;
      sub_1B4B657FC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      sub_1B4D17DAC();
      if (v2)
      {
        sub_1B4B65718(v14, type metadata accessor for ActivitySharingFriendWorkout);
      }

      v46 = v40;
      v47 = v41;
      sub_1B4B65718(v14, type metadata accessor for ActivitySharingFriendWorkout);
      v89 = v42;
      v49 = *(v42 + 16);
      v48 = *(v42 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1B4BCF67C((v48 > 1), v49 + 1, 1);
        v42 = v89;
      }

      ++v44;
      *(v42 + 16) = v49 + 1;
      result = sub_1B4B65778(v88, v42 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v49, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      v41 = v47;
      v50 = v47 == v44;
      v40 = v46;
      if (v50)
      {
        a1 = v78;
        a2 = v79;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *(a1 + 16) = v42;
    v51 = v80;
    sub_1B4D176DC();
    *(a1 + 24) = v52;
    *(a1 + 32) = *(a2 + v51[10]);
    *(a1 + 33) = *(a2 + v51[11]);
    v53 = *(a2 + v51[12]);
    v54 = *(v53 + 16);
    v55 = MEMORY[0x1E69E7CC0];
    if (v54)
    {
      v89 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF65C(0, v54, 0);
      v55 = v89;
      v56 = v74;
      v57 = v53 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v58 = *(v73 + 72);
      do
      {
        v59 = v87;
        v60 = sub_1B4B656B0(v57, v87, type metadata accessor for HKActivitySummaryRepresentable);
        MEMORY[0x1EEE9AC00](v60);
        *(&v71 - 2) = v59;
        sub_1B4B657FC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
        sub_1B4D17DAC();
        sub_1B4B65718(v59, type metadata accessor for HKActivitySummaryRepresentable);
        v89 = v55;
        v62 = *(v55 + 16);
        v61 = *(v55 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_1B4BCF65C((v61 > 1), v62 + 1, 1);
          v55 = v89;
        }

        *(v55 + 16) = v62 + 1;
        sub_1B4B65778(v56, v55 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v62, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        v57 += v58;
        --v54;
      }

      while (v54);
      a1 = v78;
      a2 = v79;
    }

    *(a1 + 40) = v55;
    v63 = v76;
    sub_1B4974FBC(a2 + v80[13], v76, &qword_1EB8A6A30, &unk_1B4D1FC00);
    v64 = v75;
    v65 = v77;
    if ((*(v75 + 48))(v63, 1, v77) == 1)
    {
      return sub_1B4975024(v63, &qword_1EB8A6A30, &unk_1B4D1FC00);
    }

    else
    {
      v66 = v72;
      (*(v64 + 32))(v72, v63, v65);
      v67 = sub_1B4D1779C();
      v69 = v68;
      (*(v64 + 8))(v66, v65);
      v70 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));

      *v70 = v67;
      v70[1] = v69;
    }
  }

  return result;
}

uint64_t sub_1B4B648E0(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4B657FC(&qword_1EB8AB148, type metadata accessor for ActivitySharingFriend, &protocol conformance descriptor for ActivitySharingFriend);
  (*(v8 + 32))(a1, v8);
  if (!v3)
  {
    sub_1B4B657FC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
    v2 = sub_1B4D17D6C();
    sub_1B4B65718(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
  }

  return v2;
}

uint64_t sub_1B4B64A60(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  sub_1B4B657FC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
  return sub_1B4D17DAC();
}

uint64_t ActivitySharingContext.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ActivitySharingFriend(0);
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(*a1 + 16);
  if (v16)
  {
    v24 = a2;
    v25 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    v26 = v16;
    result = sub_1B4BCED3C(0, v16, 0);
    v18 = 0;
    v19 = v30;
    v27 = v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    while (v18 < *(v15 + 16))
    {
      sub_1B4B656B0(v27 + *(v7 + 72) * v18, v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      v20 = v29;
      sub_1B4B656B0(v11, v29, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      ActivitySharingFriend.init(_:)(v20, v14);
      if (v3)
      {
        sub_1B4B65718(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
        sub_1B4B65718(v25, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
      }

      v21 = v7;
      sub_1B4B65718(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      v30 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B4BCED3C((v22 > 1), v23 + 1, 1);
        v19 = v30;
      }

      ++v18;
      *(v19 + 16) = v23 + 1;
      result = sub_1B4B65778(v14, v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for ActivitySharingFriend);
      v7 = v21;
      if (v26 == v18)
      {
        result = sub_1B4B65718(v25, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
        *v24 = v19;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    *a2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t ActivitySharingContext.protobuf()(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  sub_1B4B657FC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B64F10(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for ActivitySharingFriend(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v19 = a1;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF69C(0, v12, 0);
    v13 = v23;
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    while (1)
    {
      v15 = sub_1B4B656B0(v14, v8, type metadata accessor for ActivitySharingFriend);
      MEMORY[0x1EEE9AC00](v15);
      *(&v19 - 2) = v8;
      sub_1B4B657FC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      sub_1B4D17DAC();
      if (v2)
      {
        break;
      }

      sub_1B4B65718(v8, type metadata accessor for ActivitySharingFriend);
      v23 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B4BCF69C((v16 > 1), v17 + 1, 1);
        v13 = v23;
      }

      *(v13 + 16) = v17 + 1;
      sub_1B4B65778(v11, v13 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      v14 += v20;
      if (!--v12)
      {
        a1 = v19;
        goto LABEL_9;
      }
    }

    sub_1B4B65718(v8, type metadata accessor for ActivitySharingFriend);
  }

  else
  {
LABEL_9:

    *a1 = v13;
  }

  return result;
}

uint64_t *sub_1B4B65220(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v8 = sub_1B4B6565C();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v3)
  {
    sub_1B4B657FC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext);
    v9 = sub_1B4D17D6C();
    sub_1B4B65718(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  }

  return v9;
}

uint64_t sub_1B4B65364@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B23B78(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4B65398(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  sub_1B4B657FC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4B6565C()
{
  result = qword_1EB8AB140;
  if (!qword_1EB8AB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB140);
  }

  return result;
}

uint64_t sub_1B4B656B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B65718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B65778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B657FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double static OrderAgnosticPropertyValue.prepareForReduce(_:)()
{
  nullsub_1();
  if (!v0)
  {
  }

  return result;
}

double sub_1B4B659D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();
  nullsub_1();
  if (!v4)
  {
  }

  return result;
}

uint64_t sub_1B4B65A78()
{
  v0 = objc_opt_self();
  v1 = [v0 meters];
  sub_1B499221C();
  v2 = sub_1B4D187AC();

  if (v2)
  {
    return 1;
  }

  v3 = [v0 kilometers];
  v4 = sub_1B4D187AC();

  if (v4)
  {
    return 1;
  }

  v5 = [v0 centimeters];
  v6 = sub_1B4D187AC();

  if (v6)
  {
    return 1;
  }

  v7 = [v0 decameters];
  v8 = sub_1B4D187AC();

  if (v8)
  {
    return 1;
  }

  v9 = [v0 decimeters];
  v10 = sub_1B4D187AC();

  if (v10)
  {
    return 1;
  }

  v11 = [v0 hectometers];
  v12 = sub_1B4D187AC();

  if (v12)
  {
    return 1;
  }

  v13 = [v0 megameters];
  v14 = sub_1B4D187AC();

  if (v14)
  {
    return 1;
  }

  v16 = [v0 micrometers];
  v17 = sub_1B4D187AC();

  return v17 & 1;
}

uint64_t WorkoutVoiceMostCaloriesFact.QueryIdentifier.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutVoiceMostCaloriesFact.QueryIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1B4B65CF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "lastSixWeeksWorkoutProperties";
  }

  else
  {
    v4 = "ness_plus_modality> workout.";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "ness_plus_modality> workout.";
  }

  else
  {
    v7 = "lastSixWeeksWorkoutProperties";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4B65DA4()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B65E24(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4B65E90(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B65F0C@<X0>(char *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1B4B65F6C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "ness_plus_modality> workout.";
  }

  else
  {
    v3 = "lastSixWeeksWorkoutProperties";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t static WorkoutVoiceMostCaloriesFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B66470(v3, v1, v2);
}

uint64_t static WorkoutVoiceMostCaloriesFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4B66D04(a1, a3, a4);
}

id WorkoutVoiceMostCaloriesFact.makePrompt(promptFormatter:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - v4;
  v6 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v7);
  v9 = v8;
  sub_1B4D1745C();
  v10 = sub_1B4D12160();
  v11 = sub_1B4D12A28(v5);
  v13 = v12;

  (*(v3 + 8))(v5, v2);
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v15 = result;
    v16 = sub_1B4D1818C();
    v18 = v17;

    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000002DLL, 0x80000001B4D62480);
    MEMORY[0x1B8C7C620](v16, v18);

    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE900000000000020);
    v19 = *(v1 + *(v6 + 24));
    v20 = 0xE800000000000000;
    v21 = 0x7961642073696874;
    v22 = 0xEA00000000006874;
    v23 = 0x6E6F6D2073696874;
    v24 = 0xE900000000000072;
    v25 = 0x6165792073696874;
    if (v19 != 3)
    {
      v25 = 1919252069;
      v24 = 0xE400000000000000;
    }

    if (v19 != 2)
    {
      v23 = v25;
      v22 = v24;
    }

    if (*(v1 + *(v6 + 24)))
    {
      v21 = 0x6565772073696874;
      v20 = 0xE90000000000006BLL;
    }

    if (*(v1 + *(v6 + 24)) <= 1u)
    {
      v26 = v21;
    }

    else
    {
      v26 = v23;
    }

    if (*(v1 + *(v6 + 24)) <= 1u)
    {
      v27 = v20;
    }

    else
    {
      v27 = v22;
    }

    MEMORY[0x1B8C7C620](v26, v27);

    MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D624B0);
    MEMORY[0x1B8C7C620](v11, v13);

    return v28[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4B6636C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B66470(v3, v1, v2);
}

uint64_t sub_1B4B663AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DD034;

  return sub_1B4B66D04(a1, a3, a4);
}

unint64_t sub_1B4B66470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor(0);
  v79 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v69 - v12;
  v81 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4D1777C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a1, a2, v20);
  v23 = sub_1B4B682E4();
  sub_1B49A79FC(v22, v23, a2, a3);
  v25 = *(v24 + 16);
  v26 = 32;
  do
  {
    if (!v25)
    {

      goto LABEL_9;
    }

    v27 = *(v24 + v26);
    v26 += 8;
    --v25;
  }

  while (v27 != 2);

  if (FIActivityMoveModeUserDefault() == 1)
  {
    (*(a3 + 80))(a2, a3);
    v74 = v15;
    v28 = *(v15 + 16);
    v69 = v15 + 16;
    v70 = v28;
    v29 = v17;
    v77 = v17;
    v30 = v83;
    v28(v83, v29, v14);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
    v31 = swift_allocObject();
    v32 = a2;
    v33 = v31;
    *(v31 + 16) = xmmword_1B4D1A800;
    v34 = *(a3 + 56);
    v75 = v32;
    v35 = v34(v32, a3);
    v36 = [v35 effectiveTypeIdentifier];

    *(v33 + 32) = v36;
    v37 = v81;
    v38 = *(v81 + 20);
    v78 = v14;
    v39 = (v30 + v38);
    v40 = MEMORY[0x1E69E7CC0];
    *v39 = MEMORY[0x1E69E7CC0];
    v39[1] = v40;
    v39[2] = v40;
    v39[3] = v33;
    v39[4] = v40;
    v39[5] = v40;
    *(v30 + *(v37 + 24)) = v40;
    *(v30 + *(v37 + 28)) = &unk_1F2CBB3F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1A8, &qword_1B4D33248);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1B0, &unk_1B4D364C0);
    v42 = *(*(v41 - 8) + 72);
    v43 = (*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1B4D1AA70;
    v73 = v44;
    v45 = (v44 + v43);
    v76 = v41;
    v46 = *(v41 + 48);
    *v45 = 0;
    sub_1B49BFE58(v30, &v45[v46], type metadata accessor for WorkoutPropertiesQuery);
    Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
    swift_storeEnumTagMultiPayload();
    v72 = v45;
    v47 = &v45[v42];
    v45[v42] = 1;
    v48 = v82;
    v70(v82, v77, v78);
    swift_storeEnumTagMultiPayload();
    v49 = v79;
    (*(v79 + 56))(v48, 0, 1, v6);
    sub_1B4974FBC(v48, v10, &qword_1EB8A67A8, &qword_1B4D1E060);
    v50 = *(v49 + 48);
    if (v50(v10, 1, v6) == 1)
    {
      v51 = v30;
      v52 = v80;
      sub_1B49BFE58(v51, v80, type metadata accessor for DateRangeDescriptor);
      if (v50(v10, 1, v6) != 1)
      {
        sub_1B4975024(v10, &qword_1EB8A67A8, &qword_1B4D1E060);
      }
    }

    else
    {
      v52 = v80;
      sub_1B4B68330(v10, v80, type metadata accessor for DateRangeDescriptor);
    }

    v59 = &v47[*(v76 + 48)];
    v60 = *v39;
    v61 = v39[1];
    v63 = v39[2];
    v62 = v39[3];
    v65 = v39[4];
    v64 = v39[5];
    sub_1B49BFE58(v52, v59, type metadata accessor for DateRangeDescriptor);

    sub_1B49BFEC0(v52, type metadata accessor for DateRangeDescriptor);
    v66 = v81;
    v67 = (v59 + *(v81 + 20));
    *v67 = v60;
    v67[1] = v61;
    v67[2] = v63;
    v67[3] = v62;
    v67[4] = v65;
    v67[5] = v64;
    *(v59 + *(v66 + 24)) = MEMORY[0x1E69E7CC0];
    *(v59 + *(v66 + 28)) = &unk_1F2CBB3F0;
    sub_1B4975024(v82, &qword_1EB8A67A8, &qword_1B4D1E060);
    swift_storeEnumTagMultiPayload();
    v58 = sub_1B4C9779C(v73);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1B49BFEC0(v83, type metadata accessor for WorkoutPropertiesQuery);
    (*(v74 + 8))(v77, v78);
    a2 = v75;
    goto LABEL_16;
  }

LABEL_9:
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v53 = sub_1B4D17F6C();
  __swift_project_value_buffer(v53, qword_1EDC36F00);
  v54 = sub_1B4D17F5C();
  v55 = sub_1B4D1873C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v84 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_1B49558AC(0xD00000000000001CLL, 0x80000001B4D624D0, &v84);
    _os_log_impl(&dword_1B4953000, v54, v55, "%s does not support this workout state", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x1B8C7DDA0](v57, -1, -1);
    MEMORY[0x1B8C7DDA0](v56, -1, -1);
  }

  v58 = sub_1B4C9779C(MEMORY[0x1E69E7CC0]);
LABEL_16:
  (*(v18 + 8))(v22, a2);
  return v58;
}

uint64_t sub_1B4B66D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[321] = a3;
  v3[320] = a2;
  v3[319] = a1;
  v4 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  v3[322] = v4;
  v3[323] = *(v4 - 8);
  v3[324] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB190, &qword_1B4D33230);
  v3[325] = v5;
  v3[326] = *(v5 - 8);
  v3[327] = swift_task_alloc();
  v3[328] = swift_task_alloc();
  v6 = sub_1B4D1777C();
  v3[329] = v6;
  v3[330] = *(v6 - 8);
  v3[331] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v3[332] = swift_task_alloc();
  v3[333] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutState(0);
  v3[334] = v7;
  v3[335] = *(v7 - 8);
  v3[336] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B66F3C, 0, 0);
}

uint64_t sub_1B4B66F3C()
{
  v98 = v0;
  v1 = *(v0 + 2680);
  v2 = *(v0 + 2672);
  v3 = *(v0 + 2664);
  sub_1B4974FBC(*(v0 + 2560), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1B4975024(*(v0 + 2664), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_8:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v16 = sub_1B4D17F6C();
    __swift_project_value_buffer(v16, qword_1EDC36F00);
    v17 = sub_1B4D17F5C();
    v18 = sub_1B4D1873C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      __dst[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1B49558AC(0xD00000000000001CLL, 0x80000001B4D624D0, __dst);
      _os_log_impl(&dword_1B4953000, v17, v18, "Context or snapshots don't exist for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1B8C7DDA0](v20, -1, -1);
      MEMORY[0x1B8C7DDA0](v19, -1, -1);
    }

LABEL_13:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v95 = v4;
  v5 = *(v0 + 2552);
  sub_1B4B68330(*(v0 + 2664), *(v0 + 2688), type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 2536) = &type metadata for WorkoutVoiceMostCaloriesFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB198, &qword_1B4D33238);
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v7 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = *(v0 + 2504);
  if (!v9)
  {
    sub_1B49BFEC0(*(v0 + 2688), type metadata accessor for WorkoutState);
    goto LABEL_8;
  }

  v93 = *(v0 + 2496);
  v94 = *(v0 + 2488);
  v11 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2552), v11);
  *(v0 + 2544) = &type metadata for WorkoutVoiceMostCaloriesFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v12;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D4BED0);

  (*(v10 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v11, v10);

  v13 = *(v0 + 2528);
  if (!v13)
  {
    sub_1B49BFEC0(*(v0 + 2688), type metadata accessor for WorkoutState);

    goto LABEL_8;
  }

  v14 = *(v0 + 2512);
  v15 = *(v0 + 2520);
  *(v0 + 2376) = 0u;
  *(v0 + 2392) = 0u;
  *(v0 + 2360) = 0u;
  sub_1B4CE3B10((v0 + 2360), v13, __dst);
  if (LOBYTE(__dst[1]))
  {
    v24 = 0;
  }

  else
  {
    v24 = __dst[0];
  }

  sub_1B4CE3B10((v0 + 2360), v9, __dst);
  if (LOBYTE(__dst[1]))
  {
    v25 = 0;
  }

  else
  {
    v25 = __dst[0];
  }

  v26 = MEMORY[0x1E69E7CC0];
  if (v24 >= 20)
  {
    v26 = sub_1B4A1E07C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1B4A1E07C((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v26[v28 + 32] = 4;
  }

  if (v25 >= 10)
  {
    v29 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1B4A1E07C(0, *(v29 + 2) + 1, 1, v29);
    }

    v30 = v29;
    v32 = *(v29 + 2);
    v31 = *(v29 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1B4A1E07C((v31 > 1), v32 + 1, 1, v29);
    }

    *(v30 + 2) = v32 + 1;
    v92 = v30;
    v30[v32 + 32] = 3;
  }

  else
  {
    if (!*(v26 + 2))
    {

      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v60 = sub_1B4D17F6C();
      __swift_project_value_buffer(v60, qword_1EDC36F00);
      v61 = sub_1B4D17F5C();
      v62 = sub_1B4D1873C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        __dst[0] = v64;
        *v63 = 136315650;
        *(v63 + 4) = sub_1B49558AC(0xD00000000000001CLL, 0x80000001B4D624D0, __dst);
        *(v63 + 12) = 2048;
        *(v63 + 14) = v24;
        *(v63 + 22) = 2048;
        *(v63 + 24) = v25;
        _os_log_impl(&dword_1B4953000, v61, v62, "didn't meet min workouts requirement for %s. Number for ever %ld, this year %ld", v63, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x1B8C7DDA0](v64, -1, -1);
        MEMORY[0x1B8C7DDA0](v63, -1, -1);
      }

      sub_1B49BFEC0(*(v0 + 2688), type metadata accessor for WorkoutState);
      goto LABEL_13;
    }

    v92 = v26;
  }

  v87 = (v0 + 2232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B4D1A800;
  *(v33 + 32) = sub_1B4D1779C();
  v84 = v33 + 32;
  v91 = v33;
  *(v33 + 40) = v34;
  sub_1B4D1770C();
  v88 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v89 = *(v0 + 2672);
  v90 = *(v0 + 2688);
  v35 = *(v0 + 2640);
  v85 = *(v0 + 2632);
  v86 = *(v0 + 2648);
  v36 = sub_1B4D1796C();
  __swift_project_value_buffer(v36, qword_1EDC3CE48);
  v37 = sub_1B4D178CC();
  v38 = _HKCacheIndexFromDate();

  (*(v35 + 8))(v86, v85);
  sub_1B496F4FC(v87);
  *(v0 + 2104) = v38;
  *(v0 + 2112) = v14;
  *(v0 + 2120) = v15;
  *(v0 + 2128) = v13;
  *(v0 + 2136) = v94;
  *(v0 + 2144) = v93;
  *(v0 + 2152) = v9;
  *(v0 + 2160) = v38;
  *(v0 + 2168) = v38;
  v39 = MEMORY[0x1E69E7CC0];
  *(v0 + 2176) = MEMORY[0x1E69E7CC0];
  *(v0 + 2184) = v38;
  *(v0 + 2192) = v38;
  *(v0 + 2200) = v39;
  *(v0 + 2208) = v38;
  *(v0 + 2216) = v38;
  *(v0 + 2224) = v39;
  nullsub_1();
  sub_1B496F4FC((v0 + 1976));
  v40 = *(v0 + 2056);
  *(v0 + 1128) = *(v0 + 2040);
  *(v0 + 1144) = v40;
  v41 = *(v0 + 2088);
  *(v0 + 1160) = *(v0 + 2072);
  *(v0 + 1176) = v41;
  v42 = *(v0 + 1992);
  *(v0 + 1064) = *(v0 + 1976);
  *(v0 + 1080) = v42;
  v43 = *(v0 + 2024);
  *(v0 + 1096) = *(v0 + 2008);
  *(v0 + 1112) = v43;
  v44 = *v87;
  v45 = *(v0 + 2248);
  v46 = *(v0 + 2280);
  *(v0 + 840) = *(v0 + 2264);
  *(v0 + 856) = v46;
  *(v0 + 808) = v44;
  *(v0 + 824) = v45;
  v47 = *(v0 + 2296);
  v48 = *(v0 + 2312);
  v49 = *(v0 + 2344);
  *(v0 + 904) = *(v0 + 2328);
  *(v0 + 920) = v49;
  *(v0 + 872) = v47;
  *(v0 + 888) = v48;
  v50 = *(v0 + 2104);
  v51 = *(v0 + 2120);
  v52 = *(v0 + 2152);
  *(v0 + 968) = *(v0 + 2136);
  *(v0 + 984) = v52;
  *(v0 + 936) = v50;
  *(v0 + 952) = v51;
  v53 = *(v0 + 2168);
  v54 = *(v0 + 2184);
  v55 = *(v0 + 2216);
  *(v0 + 1032) = *(v0 + 2200);
  *(v0 + 1048) = v55;
  *(v0 + 1000) = v53;
  *(v0 + 1016) = v54;
  *(v0 + 800) = v38;
  *(v0 + 2432) = v89;
  *(v0 + 2440) = &protocol witness table for WorkoutState;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2408));
  sub_1B49BFE58(v90, boxed_opaque_existential_1, type metadata accessor for WorkoutState);
  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v0 + 2408, __dst, __src);
  v57 = *(v0 + 2672);
  v58 = *(v0 + 2656);
  v59 = *(v0 + 2568);
  sub_1B4975024(v0 + 2408, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 408), __src, 0x188uLL);
  sub_1B4974FBC(v59, v58, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if (v95(v58, 1, v57) == 1)
  {
    sub_1B4975024(*(v0 + 2656), &qword_1EB8A6A98, &unk_1B4D1CBE0);
    *(v0 + 2448) = 0u;
    *(v0 + 2464) = 0u;
    *(v0 + 2480) = 0;
  }

  else
  {
    v65 = *(v0 + 2656);
    *(v0 + 2472) = *(v0 + 2672);
    *(v0 + 2480) = &protocol witness table for WorkoutState;
    v66 = __swift_allocate_boxed_opaque_existential_1((v0 + 2448));
    sub_1B4B68330(v65, v66, type metadata accessor for WorkoutState);
  }

  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v0 + 2448, __dst, __src);
  v67 = *(v0 + 2688);
  v68 = *(v0 + 2672);
  sub_1B4B68220(v0 + 800);
  sub_1B4975024(v0 + 2448, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 1584), __src, 0x188uLL);
  v69 = [*(v67 + *(v68 + 24)) effectiveTypeIdentifier];
  memcpy((v0 + 1192), (v0 + 1584), 0x188uLL);
  nullsub_1();
  memcpy((v0 + 16), (v0 + 1192), 0x188uLL);
  v70 = vdupq_n_s64(v69);
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8B70, v70), vceqq_s64(unk_1F2CB8B80, v70)), vuzp1q_s32(vceqq_s64(xmmword_1F2CB8B90, v70), vceqq_s64(unk_1F2CB8BA0, v70))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8BB0, v70), vceqq_s64(unk_1F2CB8BC0, v70)), vuzp1q_s32(vceqq_s64(xmmword_1F2CB8BD0, v70), vceqq_s64(unk_1F2CB8BE0, v70))))) & 1) != 0 || vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8BF0, v70), vceqq_s64(unk_1F2CB8C00, v70)), vuzp1q_s32(vceqq_s64(xmmword_1F2CB8C10, v70), vceqq_s64(unk_1F2CB8C20, v70))), xmmword_1B4D33100)) || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8C30, v70), vceqq_s64(unk_1F2CB8C40, v70)), xmmword_1B4D33110)) & 0xF) != 0 || qword_1F2CB8C50 == v69 || unk_1F2CB8C58 == v69 || qword_1F2CB8C60 == v69)
  {
    v71 = *(v0 + 2608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1A0, &qword_1B4D33240);
    v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v73 = swift_allocObject();
    sub_1B4C8EB54(v91, v92, v69, 16, (v0 + 408), (v0 + 16), (v73 + v72));
    v74 = *(v0 + 2624);
    v75 = *(v0 + 2616);
    v76 = *(v0 + 2584);
    v77 = *(v0 + 2576);

    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);

    sub_1B4974FBC(v73 + v72, v74, &qword_1EB8AB190, &qword_1B4D33230);
    sub_1B4B68274(v74, v75);
    v78 = (*(v76 + 48))(v75, 1, v77);
    v79 = *(v0 + 2616);
    if (v78 == 1)
    {
      sub_1B4975024(v79, &qword_1EB8AB190, &qword_1B4D33230);
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1B4B68330(v79, *(v0 + 2592), type metadata accessor for WorkoutVoiceMostCaloriesFact);
      v21 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1B4A1E054(0, v21[2] + 1, 1, v21);
      }

      v81 = v21[2];
      v80 = v21[3];
      if (v81 >= v80 >> 1)
      {
        v21 = sub_1B4A1E054((v80 > 1), v81 + 1, 1, v21);
      }

      v82 = *(v0 + 2592);
      v83 = *(v0 + 2584);
      v21[2] = v81 + 1;
      sub_1B4B68330(v82, v21 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v81, type metadata accessor for WorkoutVoiceMostCaloriesFact);
    }

    swift_setDeallocating();
    sub_1B4975024(v73 + v72, &qword_1EB8AB190, &qword_1B4D33230);
    swift_deallocClassInstance();
  }

  else
  {
    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);

    swift_setDeallocating();
    sub_1B497CBA8(v84);
    swift_deallocClassInstance();
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1B49BFEC0(*(v0 + 2688), type metadata accessor for WorkoutState);
LABEL_14:

  v22 = *(v0 + 8);

  return v22(v21);
}

unint64_t sub_1B4B67FE0()
{
  result = qword_1EB8AB160;
  if (!qword_1EB8AB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB160);
  }

  return result;
}

unint64_t sub_1B4B68034(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B68064();
  result = sub_1B4B680B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B68064()
{
  result = qword_1EB8AB168;
  if (!qword_1EB8AB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB168);
  }

  return result;
}

unint64_t sub_1B4B680B8()
{
  result = qword_1EB8AB170;
  if (!qword_1EB8AB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB170);
  }

  return result;
}

unint64_t sub_1B4B68110()
{
  result = qword_1EB8AB178;
  if (!qword_1EB8AB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB178);
  }

  return result;
}

uint64_t sub_1B4B68164(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B681CC(&qword_1EB8AB180, &protocol conformance descriptor for WorkoutVoiceMostCaloriesFact);
  result = sub_1B4B681CC(&qword_1EB8AB188, &protocol conformance descriptor for WorkoutVoiceMostCaloriesFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B681CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutVoiceMostCaloriesFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B68274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB190, &qword_1B4D33230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4B682E4()
{
  result = qword_1EB8A6C80;
  if (!qword_1EB8A6C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8A6C80);
  }

  return result;
}

uint64_t sub_1B4B68330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B6848C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7930, &unk_1B4D1F280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B68504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7930, &unk_1B4D1F280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for WeatherCondition(uint64_t a1)
{
  result = qword_1EDC397B8;
  if (!qword_1EDC397B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WeatherCondition.condition.setter(uint64_t a1)
{
  result = type metadata accessor for WeatherCondition(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t WeatherCondition.init(temperature:condition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_1B4B68504(a1, a3);
  result = type metadata accessor for WeatherCondition(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1B4B68718()
{
  if (*v0)
  {
    return 0x6F697469646E6F63;
  }

  else
  {
    return 0x74617265706D6574;
  }
}

uint64_t sub_1B4B68760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B4B68848(uint64_t a1)
{
  v2 = sub_1B4B69120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B68884(uint64_t a1)
{
  v2 = sub_1B4B69120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherCondition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1B8, &qword_1B4D33250);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B69120();
  sub_1B4D18EFC();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B4B69444(&qword_1EB8AB1C8, MEMORY[0x1E6968078]);
  sub_1B4D18CAC();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for WeatherCondition(0) + 20));
    v10[15] = 1;
    type metadata accessor for _HKPrivateWeatherCondition(0);
    sub_1B4B69400(&qword_1EB8AB1D0, &protocol conformance descriptor for _HKPrivateWeatherCondition);
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WeatherCondition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7930, &unk_1B4D1F280);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v16 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1D8, &qword_1B4D33258);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for WeatherCondition(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B69120();
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1B4975024(v11, &qword_1EB8A7930, &unk_1B4D1F280);
  }

  else
  {
    v13 = v18;
    v23 = 0;
    sub_1B4B69444(&qword_1EB8AB1E0, MEMORY[0x1E6968098]);
    v14 = v19;
    sub_1B4D18BAC();
    sub_1B4B68504(v20, v11);
    type metadata accessor for _HKPrivateWeatherCondition(0);
    v22 = 1;
    sub_1B4B69400(&qword_1EB8AB1E8, &protocol conformance descriptor for _HKPrivateWeatherCondition);
    sub_1B4D18C0C();
    (*(v13 + 8))(v8, v14);
    *&v11[*(v9 + 20)] = v21;
    sub_1B4B69174(v11, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1B49E5600(v11);
  }
}

BOOL _s19FitnessIntelligence16WeatherConditionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7930, &unk_1B4D1F280);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB210, &qword_1B4D33478);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1B4B6848C(a1, &v21 - v12);
  sub_1B4B6848C(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1B4B6848C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1B4B69444(&qword_1EB8A8288, MEMORY[0x1E6968090]);
      v18 = sub_1B4D1816C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B4975024(v13, &qword_1EB8A7930, &unk_1B4D1F280);
      if (v18)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8AB210, &qword_1B4D33478);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4975024(v13, &qword_1EB8A7930, &unk_1B4D1F280);
LABEL_9:
  v20 = type metadata accessor for WeatherCondition(0);
  return *(a1 + *(v20 + 20)) == *(a2 + *(v20 + 20));
}

unint64_t sub_1B4B69120()
{
  result = qword_1EB8AB1C0;
  if (!qword_1EB8AB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB1C0);
  }

  return result;
}

uint64_t sub_1B4B69174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherCondition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B4B69200(uint64_t a1)
{
  sub_1B4B69284(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for _HKPrivateWeatherCondition(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4B69284(uint64_t a1)
{
  if (!qword_1EDC3CB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7470, &qword_1B4D1F290);
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC3CB18);
    }
  }
}

unint64_t sub_1B4B692FC()
{
  result = qword_1EB8AB1F0;
  if (!qword_1EB8AB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB1F0);
  }

  return result;
}

unint64_t sub_1B4B69354()
{
  result = qword_1EB8AB1F8;
  if (!qword_1EB8AB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB1F8);
  }

  return result;
}

unint64_t sub_1B4B693AC()
{
  result = qword_1EB8AB200;
  if (!qword_1EB8AB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB200);
  }

  return result;
}

uint64_t sub_1B4B69400(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _HKPrivateWeatherCondition(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B69444(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7470, &qword_1B4D1F290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t static TrainingLoadFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B69974(v3, v1, v2);
}

uint64_t static TrainingLoadFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B49C016C;

  return sub_1B4B69C7C(a1);
}

uint64_t TrainingLoadFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B4B69614()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B69688(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B696DC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

unint64_t TrainingLoadFact.makePrompt(promptFormatter:)()
{
  v1 = 0xD000000000000037;
  v2 = *v0;
  v3 = 0xD00000000000003BLL;
  v4 = 0xD000000000000032;
  if (v2 != 3)
  {
    v4 = 0xD000000000000037;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B4B697E8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B69974(v3, v1, v2);
}

uint64_t sub_1B4B69828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B49C0344;

  return sub_1B4B69C7C(a1);
}

unint64_t sub_1B4B698E8()
{
  v1 = 0xD000000000000037;
  v2 = *v0;
  v3 = 0xD00000000000003BLL;
  v4 = 0xD000000000000032;
  if (v2 != 3)
  {
    v4 = 0xD000000000000037;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B4B69974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  v9 = (*(a3 + 56))(a2, a3);
  v10 = [v9 effectiveTypeIdentifier];

  if (qword_1F2CB8768 == v10 || unk_1F2CB8770 == v10)
  {
LABEL_12:
    v15 = sub_1B4C94F64(MEMORY[0x1E69E7CC0]);
    goto LABEL_13;
  }

  if ((FIShouldTrackTrainingLoad() & 1) == 0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v16 = sub_1B4D17F6C();
    __swift_project_value_buffer(v16, qword_1EDC36F00);
    v17 = sub_1B4D17F5C();
    v18 = sub_1B4D1873C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B4953000, v17, v18, "Effort Reminder turned off, skipping training load query", v19, 2u);
      MEMORY[0x1B8C7DDA0](v19, -1, -1);
    }

    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E98, &qword_1B4D1C2A0);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EA0, &qword_1B4D1C2A8) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B4D1A800;
  (*(a3 + 80))(a2, a3);
  type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v15 = sub_1B4C94F64(v14);
  swift_setDeallocating();
  sub_1B49AA81C(v14 + v13);
  swift_deallocClassInstance();
LABEL_13:
  (*(v5 + 8))(v8, a2);
  return v15;
}

uint64_t sub_1B4B69C9C()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  *(v0 + 16) = &type metadata for TrainingLoadFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67E8, &qword_1B4D1AB00);
  v9 = sub_1B4D181CC();
  v10 = v4;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000013, 0x80000001B4D4BEF0);
  (*(v3 + 8))(v9, v10, &type metadata for TrainingLoadContext, &type metadata for TrainingLoadContext, v2, v3);

  v5 = *(v0 + 32);
  if (v5 == 5)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E90, &qword_1B4D1C298);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B4D1A800;
    *(v6 + 32) = v5;
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

unint64_t sub_1B4B69E10()
{
  result = qword_1EB8AB218;
  if (!qword_1EB8AB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB218);
  }

  return result;
}

unint64_t sub_1B4B69E90()
{
  result = qword_1EB8AB220;
  if (!qword_1EB8AB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB220);
  }

  return result;
}

unint64_t sub_1B4B69EE4()
{
  result = qword_1EB8AB228;
  if (!qword_1EB8AB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB228);
  }

  return result;
}

uint64_t sub_1B4B69F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B69FA0()
{
  result = qword_1EB8AB230;
  if (!qword_1EB8AB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB230);
  }

  return result;
}

unint64_t sub_1B4B69FF4()
{
  result = qword_1EB8AB238;
  if (!qword_1EB8AB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB238);
  }

  return result;
}

__n128 LegacySnapshot.init(cacheIndex:ringsContainer:workoutContainer:)@<Q0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = (a4 + 264);
  sub_1B496F4FC(v23);
  v9 = v23[5];
  v8[4] = v23[4];
  v8[5] = v9;
  v10 = v23[7];
  v8[6] = v23[6];
  v8[7] = v10;
  v11 = v23[1];
  *v8 = v23[0];
  v8[1] = v11;
  v12 = v23[3];
  v8[2] = v23[2];
  v8[3] = v12;
  *a4 = v7;
  v13 = a2[6];
  *(a4 + 120) = a2[7];
  *(a4 + 104) = v13;
  v14 = a2[4];
  *(a4 + 88) = a2[5];
  *(a4 + 72) = v14;
  v15 = a2[2];
  *(a4 + 56) = a2[3];
  *(a4 + 40) = v15;
  v16 = *a2;
  *(a4 + 24) = a2[1];
  *(a4 + 8) = v16;
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  *(a4 + 184) = a3[3];
  *(a4 + 168) = v19;
  *(a4 + 152) = v18;
  *(a4 + 136) = v17;
  result = a3[4];
  v21 = a3[5];
  v22 = a3[6];
  *(a4 + 248) = a3[7];
  *(a4 + 232) = v22;
  *(a4 + 216) = v21;
  *(a4 + 200) = result;
  return result;
}

uint64_t sub_1B4B6A12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v77 = a1;
  v78 = a2;
  v79 = a3;
  v74 = a4;
  v75 = a5;
  v76 = a6;
  sub_1B4B6F3AC();
  KeyPath = swift_getKeyPath();

  v12 = sub_1B4B80D88(a3, sub_1B4B6F474, KeyPath);

  v13 = swift_getKeyPath();

  v14 = sub_1B4B80D88(a6, sub_1B4B6F2C4, v13);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v65 = v12;
  sub_1B4B6E7FC(v14, sub_1B4B6F168, 0, isUniquelyReferenced_nonNull_native, sub_1B4B6F400);
  if (v7)
  {
  }

  v17 = v65 + 64;
  v18 = 1 << *(v65 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v65 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v57 = result;
  v58 = a7;
  while (v20)
  {
LABEL_13:
    v25 = __clz(__rbit64(v20)) | (v22 << 6);
    v26 = *(result + 56);
    v27 = *(result + 48) + 56 * v25;
    v29 = *(v27 + 16);
    v28 = *(v27 + 32);
    v30 = *v27;
    *&v62 = *(v27 + 48);
    v60 = v29;
    v61 = v28;
    v59 = v30;
    v31 = *(v26 + 8 * v25);
    v32 = *(v27 + 32);
    v33 = *(v27 + 48);
    v34 = *v27;
    v66 = *(v27 + 16);
    v67 = v32;
    v65 = v34;
    *&v68 = v33;
    *(&v68 + 1) = v31;
    swift_bridgeObjectRetain_n();
    sub_1B498B0D4(&v59, &v70);
    result = sub_1B4975024(&v65, &qword_1EB8AB268, &qword_1B4D33738);
    v35 = *(v31 + 16);
    v36 = *(v23 + 16);
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v38 = *(v23 + 24) >> 1, v38 >= v37))
    {
      if (!*(v31 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      result = sub_1B4A1DD0C(result, v39, 1, v23);
      v23 = result;
      v38 = *(result + 24) >> 1;
      if (!*(v31 + 16))
      {
LABEL_6:

        if (v35)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    if (v38 - *(v23 + 16) < v35)
    {
      goto LABEL_38;
    }

    swift_arrayInitWithCopy();

    if (v35)
    {
      v40 = *(v23 + 16);
      v41 = __OFADD__(v40, v35);
      v42 = v40 + v35;
      if (v41)
      {
        goto LABEL_39;
      }

      *(v23 + 16) = v42;
    }

LABEL_7:
    v20 &= v20 - 1;
    result = v57;
    a7 = v58;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v22;
    if (v20)
    {
      v22 = v24;
      goto LABEL_13;
    }
  }

  v43 = v77;
  v44 = v75;
  v45 = *(v23 + 16);
  if (v45)
  {
    v80 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, v45, 0);
    v46 = v23 + 32;
    v47 = v80;
    for (i = v45 - 1; ; --i)
    {
      sub_1B498ADFC(v46, &v59);
      v70 = v60;
      v71 = v61;
      v72 = v62;
      v73 = v63;
      sub_1B496F398(&v64, v69 + 8);
      *&v65 = v43;
      *(&v65 + 1) = v44;
      v66 = v70;
      v67 = v71;
      v68 = v72;
      *&v69[0] = v73;
      v80 = v47;
      v50 = *(v47 + 16);
      v49 = *(v47 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1B4BCECFC((v49 > 1), v50 + 1, 1);
        v47 = v80;
      }

      *(v47 + 16) = v50 + 1;
      v51 = (v47 + 112 * v50);
      v52 = v65;
      v53 = v67;
      v51[3] = v66;
      v51[4] = v53;
      v51[2] = v52;
      v54 = v68;
      v55 = v69[0];
      v56 = v69[2];
      v51[7] = v69[1];
      v51[8] = v56;
      v51[5] = v54;
      v51[6] = v55;
      if (!i)
      {
        break;
      }

      v46 += 112;
    }

    a7 = v58;
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  *a7 = v43;
  a7[1] = v44;
  a7[2] = v47;
  return result;
}

char *sub_1B4B6A5C0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1B4B6F270();
  KeyPath = swift_getKeyPath();

  v12 = sub_1B4B80A54(a3, sub_1B4B6F474, KeyPath);

  v13 = swift_getKeyPath();

  v14 = sub_1B4B80A54(a6, sub_1B4B6F2C4, v13);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v12;
  sub_1B4B6ED10(v14, sub_1B4B6F218, 0, isUniquelyReferenced_nonNull_native, sub_1B4B6F2CC);
  if (v7)
  {
  }

  v17 = 1 << *(v12 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v12 + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v32 = result;
  while (v19)
  {
LABEL_12:
    v24 = *(*(result + 7) + ((v21 << 9) | (8 * __clz(__rbit64(v19)))));
    v25 = *(v24 + 16);
    v26 = *(v22 + 2);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_27;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v27 > *(v22 + 3) >> 1)
    {
      if (v26 <= v27)
      {
        v28 = v26 + v25;
      }

      else
      {
        v28 = v26;
      }

      result = sub_1B4A1DC00(result, v28, 1, v22);
      v22 = result;
    }

    v19 &= v19 - 1;
    if (*(v24 + 16))
    {
      if ((*(v22 + 3) >> 1) - *(v22 + 2) < v25)
      {
        goto LABEL_29;
      }

      swift_arrayInitWithCopy();

      result = v32;
      if (v25)
      {
        v29 = *(v22 + 2);
        v30 = __OFADD__(v29, v25);
        v31 = v29 + v25;
        if (v30)
        {
          goto LABEL_30;
        }

        *(v22 + 2) = v31;
      }
    }

    else
    {

      result = v32;
      if (v25)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      *a7 = a1;
      a7[1] = a5;
      a7[2] = v22;
      return result;
    }

    v19 = *(v35 + 64 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t static LegacySnapshot.make(from:snapshot:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v119 = &v51 - v8;
  v9 = sub_1B4D1777C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v118, a2, 0x188uLL);
  sub_1B4974FBC(a1, &v97, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  if (!v98)
  {
    sub_1B4975024(&v97, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
    memcpy(a3, v118, 0x188uLL);
    return sub_1B4B6AF78(v118, &v89);
  }

  v52 = a3;
  v53 = v3;
  sub_1B496F398(&v97, v99);
  v13 = v100;
  v14 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  (*(v14 + 80))(v13, v14);
  v15 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v16 = sub_1B4D1796C();
  __swift_project_value_buffer(v16, qword_1EDC3CE48);
  v17 = sub_1B4D178CC();
  v18 = _HKCacheIndexFromDate();

  (*(v10 + 8))(v12, v9);
  v93 = *&v118[9];
  v94 = *&v118[11];
  v95 = *&v118[13];
  v96 = *&v118[15];
  v89 = *&v118[1];
  v90 = *&v118[3];
  v91 = *&v118[5];
  v92 = *&v118[7];
  if (sub_1B4966184(&v89) == 1)
  {
    v85 = *&v118[9];
    v86 = *&v118[11];
    v87 = *&v118[13];
    v88 = *&v118[15];
    v81 = *&v118[1];
    v82 = *&v118[3];
    v83 = *&v118[5];
    v84 = *&v118[7];
    v19 = v53;
  }

  else
  {
    v114 = v93;
    v115 = v94;
    v116 = v95;
    v117 = v96;
    v110 = v89;
    v111 = v90;
    v112 = v91;
    v113 = v92;
    v21 = v100;
    v22 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    v23 = v119;
    (*(v22 + 248))(v21, v22);
    v24 = type metadata accessor for HKActivitySummaryRepresentable(0);
    v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
    v26 = v53;
    if (v25 == 1)
    {
      sub_1B4975024(v23, &qword_1EB8A6C98, &unk_1B4D2F3F0);
      v64 = 0u;
      v65 = 0u;
      *&v66 = 0;
    }

    else
    {
      *(&v65 + 1) = v24;
      *&v66 = &protocol witness table for HKActivitySummaryRepresentable;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
      sub_1B4B6D7EC(v23, boxed_opaque_existential_1);
    }

    sub_1B4B6B130(&v64, v80);
    v19 = v26;
    v28 = &v64;
    if (v26)
    {
      goto LABEL_16;
    }

    sub_1B4975024(&v64, &qword_1EB8AA378, &unk_1B4D2E760);
    v76 = v80[4];
    v77 = v80[5];
    v78 = v80[6];
    v79 = v80[7];
    v72 = v80[0];
    v73 = v80[1];
    v74 = v80[2];
    v75 = v80[3];
    nullsub_1();
    v85 = v76;
    v86 = v77;
    v87 = v78;
    v88 = v79;
    v81 = v72;
    v82 = v73;
    v83 = v74;
    v84 = v75;
  }

  v76 = *&v118[25];
  v77 = *&v118[27];
  v78 = *&v118[29];
  v79 = *&v118[31];
  v72 = *&v118[17];
  v73 = *&v118[19];
  v74 = *&v118[21];
  v75 = *&v118[23];
  if (sub_1B4966184(&v72) == 1)
  {
    v68 = *&v118[25];
    v69 = *&v118[27];
    v70 = *&v118[29];
    v71 = *&v118[31];
    v64 = *&v118[17];
    v65 = *&v118[19];
    v29 = *&v118[21];
    v30 = *&v118[23];
LABEL_18:
    v66 = v29;
    v67 = v30;
    v35 = v52;
    v36 = v52 + 264;
    sub_1B496F4FC(&v55);
    v37 = v60;
    *(v35 + 328) = v59;
    *(v35 + 344) = v37;
    v38 = v62;
    *(v35 + 360) = v61;
    *(v35 + 376) = v38;
    v39 = v56;
    *v36 = v55;
    *(v35 + 280) = v39;
    v40 = v58;
    *(v35 + 296) = v57;
    *(v35 + 312) = v40;
    *v35 = v18;
    v41 = v87;
    *(v35 + 120) = v88;
    *(v35 + 104) = v41;
    v42 = v85;
    *(v35 + 88) = v86;
    *(v35 + 72) = v42;
    v43 = v83;
    *(v35 + 56) = v84;
    *(v35 + 40) = v43;
    v44 = v81;
    *(v35 + 24) = v82;
    *(v35 + 8) = v44;
    v45 = v64;
    v46 = v65;
    v47 = v66;
    *(v35 + 184) = v67;
    *(v35 + 168) = v47;
    *(v35 + 152) = v46;
    *(v35 + 136) = v45;
    v48 = v68;
    v49 = v69;
    v50 = v70;
    *(v35 + 248) = v71;
    *(v35 + 232) = v50;
    *(v35 + 216) = v49;
    *(v35 + 200) = v48;
    return __swift_destroy_boxed_opaque_existential_1Tm(v99);
  }

  v106 = v76;
  v107 = v77;
  v108 = v78;
  v109 = v79;
  v102 = v72;
  v103 = v73;
  v104 = v74;
  v105 = v75;
  v31 = v100;
  v32 = v101;
  v33 = __swift_project_boxed_opaque_existential_1(v99, v100);
  v54[3] = v31;
  v54[4] = *(v32 + 16);
  v34 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(v31 - 8) + 16))(v34, v33, v31);
  sub_1B4B6BD78(v54, v63);
  if (!v19)
  {
    sub_1B4975024(v54, &qword_1EB8AA378, &unk_1B4D2E760);
    v59 = v63[4];
    v60 = v63[5];
    v61 = v63[6];
    v62 = v63[7];
    v55 = v63[0];
    v56 = v63[1];
    v57 = v63[2];
    v58 = v63[3];
    nullsub_1();
    v68 = v59;
    v69 = v60;
    v70 = v61;
    v71 = v62;
    v64 = v55;
    v65 = v56;
    v29 = v57;
    v30 = v58;
    goto LABEL_18;
  }

  sub_1B4975024(&v81, &qword_1EB8AB240, &unk_1B4D33590);
  v28 = v54;
LABEL_16:
  sub_1B4975024(v28, &qword_1EB8AA378, &unk_1B4D2E760);
  return __swift_destroy_boxed_opaque_existential_1Tm(v99);
}

uint64_t LegacySnapshot.ringsContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 88);
  v14 = *(v1 + 72);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 120);
  v16 = *(v1 + 104);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 24);
  v11[0] = *(v1 + 8);
  v11[1] = v6;
  v8 = *(v1 + 56);
  v12 = *(v1 + 40);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_1B4974FBC(v11, &v10, &qword_1EB8AB240, &unk_1B4D33590);
}

uint64_t LegacySnapshot.workoutContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 216);
  v14 = *(v1 + 200);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 248);
  v16 = *(v1 + 232);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 152);
  v11[0] = *(v1 + 136);
  v11[1] = v6;
  v8 = *(v1 + 184);
  v12 = *(v1 + 168);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_1B4974FBC(v11, &v10, &qword_1EB8AB248, &qword_1B4D335A0);
}

uint64_t LegacySnapshot.fitnessPlusContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 344);
  v14 = *(v1 + 328);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 376);
  v16 = *(v1 + 360);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 280);
  v11[0] = *(v1 + 264);
  v11[1] = v6;
  v8 = *(v1 + 312);
  v12 = *(v1 + 296);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_1B4974FBC(v11, &v10, &qword_1EB8AB250, &unk_1B4D335A8);
}

uint64_t sub_1B4B6B130@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2;
  sub_1B4974FBC(a1, &v123, &qword_1EB8AA378, &unk_1B4D2E760);
  if (!v124)
  {
    sub_1B4975024(&v123, &qword_1EB8AA378, &unk_1B4D2E760);
    v17 = *(v4 + 80);
    a2[4] = *(v4 + 64);
    a2[5] = v17;
    v18 = *(v4 + 112);
    a2[6] = *(v4 + 96);
    a2[7] = v18;
    v19 = *(v4 + 16);
    *a2 = *v4;
    a2[1] = v19;
    v20 = *(v4 + 48);
    a2[2] = *(v4 + 32);
    a2[3] = v20;
    return sub_1B4974FBC(v4, v120, &qword_1EB8A7AE0, &qword_1B4D1F850);
  }

  v100 = a2;
  v6 = v3;
  sub_1B496F398(&v123, v120);
  v7 = v121;
  v8 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  (*(v8 + 8))(&v119, v7, v8);
  v9 = v119;
  v125 = *(v4 + 8);
  v103 = *(v4 + 24);
  v10 = v121;
  v11 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  (*(v11 + 8))(&v111, v10, v11);
  v12 = v111;
  sub_1B497558C(v120, v116);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB258, &unk_1B4D336D8);
  v102 = v13;
  if (swift_dynamicCast())
  {
    v99 = v9;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B496F398(&v113, &v123);
    v15 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v15);
    v92 = &v123;
    v93 = v14;
    v94 = v14;
    v95 = v14;
    v96 = 0;
    v97 = v12;
    v16 = sub_1B4CB404C(sub_1B4B6F444, v91, v15);
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v123);
LABEL_14:
      swift_bridgeObjectRelease_n();
      return __swift_destroy_boxed_opaque_existential_1Tm(v120);
    }

    v22 = v16;
    v6 = 0;

    v25 = v121;
    v24 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v24 + 8))(v116, v25, v24);
    v26 = v121;
    v27 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v27 + 8))(&v113, v26, v27);
    v28 = v113;
    __swift_destroy_boxed_opaque_existential_1Tm(&v123);
    v23 = v28;
    v9 = v99;
  }

  else
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    sub_1B4975024(&v113, &qword_1EB8A6E58, &qword_1B4D1C110);
    v22 = MEMORY[0x1E69E7CC0];
    v23 = v12;
  }

  sub_1B4B6A5C0(v125, v103, v23, v22, &v117);
  if (v6)
  {

    goto LABEL_14;
  }

  v99 = v9;
  v29 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRelease_n();

  v30 = *(v4 + 32);
  v125 = *(v4 + 40);
  v103 = *(v4 + 48);
  v31 = v121;
  v32 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  (*(v32 + 8))(&v109, v31, v32);
  v33 = v109;
  sub_1B497558C(v120, v116);
  if (swift_dynamicCast())
  {
    v98 = v30;
    sub_1B496F398(&v113, &v123);
    v34 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v34);
    v92 = &v123;
    v93 = v29;
    v94 = v29;
    v95 = v29;
    v96 = 0;
    v97 = v33;
    v35 = sub_1B4CB404C(sub_1B4B6F444, v91, v34);

    v36 = v121;
    v37 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v37 + 8))(v116, v36, v37);
    v38 = v121;
    v39 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v39 + 8))(&v113, v38, v39);
    v40 = v113;
    __swift_destroy_boxed_opaque_existential_1Tm(&v123);
    v41 = v40;
    v30 = v98;
  }

  else
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    sub_1B4975024(&v113, &qword_1EB8A6E58, &qword_1B4D1C110);
    v35 = MEMORY[0x1E69E7CC0];
    v41 = v33;
  }

  sub_1B4B6A5C0(v30, v103, v41, v35, &v111);
  v125 = 0;
  v42 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRelease_n();

  v103 = *(v4 + 56);
  v43 = *(v4 + 72);
  v44 = v121;
  v45 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  (*(v45 + 8))(&v107, v44, v45);
  v46 = v107;
  sub_1B497558C(v120, v116);
  v47 = swift_dynamicCast();
  if (v47)
  {
    sub_1B496F398(&v113, &v123);
    v48 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v48);
    v92 = &v123;
    v93 = v42;
    v94 = v42;
    v95 = v42;
    v96 = 0;
    v97 = v46;
    v49 = v125;
    v50 = sub_1B4CB404C(sub_1B4B6F444, v91, v48);
    v125 = v49;
    if (v49)
    {
      goto LABEL_30;
    }

    v42 = v50;

    v51 = v121;
    v52 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v52 + 8))(v116, v51, v52);
    v53 = v121;
    v54 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v54 + 8))(&v113, v53, v54);
    v46 = v113;
    __swift_destroy_boxed_opaque_existential_1Tm(&v123);
  }

  else
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    sub_1B4975024(&v113, &qword_1EB8A6E58, &qword_1B4D1C110);
  }

  v55 = v125;
  sub_1B4B6A5C0(v103, v43, v46, v42, &v109);
  v125 = v55;
  if (v55)
  {
LABEL_36:

    goto LABEL_14;
  }

  v56 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRelease_n();

  v103 = *(v4 + 80);
  v57 = *(v4 + 96);
  v58 = v121;
  v59 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  (*(v59 + 8))(&v105, v58, v59);
  v60 = v105;
  sub_1B497558C(v120, v116);
  if (swift_dynamicCast())
  {
    sub_1B496F398(&v113, &v123);
    v61 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v61);
    v92 = &v123;
    v93 = v56;
    v94 = v56;
    v95 = v56;
    v96 = 0;
    v97 = v60;
    v62 = v125;
    v63 = sub_1B4CB404C(sub_1B4B6F444, v91, v61);
    v125 = v62;
    if (v62)
    {

LABEL_30:

      __swift_destroy_boxed_opaque_existential_1Tm(&v123);
      goto LABEL_14;
    }

    v64 = v63;

    v65 = v121;
    v66 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v66 + 8))(v116, v65, v66);
    v67 = v121;
    v68 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v68 + 8))(&v113, v67, v68);
    v60 = v113;
    __swift_destroy_boxed_opaque_existential_1Tm(&v123);
  }

  else
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    sub_1B4975024(&v113, &qword_1EB8A6E58, &qword_1B4D1C110);
    v64 = MEMORY[0x1E69E7CC0];
  }

  v69 = v125;
  sub_1B4B6A5C0(v103, v57, v60, v64, &v107);
  v125 = v69;
  if (v69)
  {
LABEL_35:

    goto LABEL_36;
  }

  v70 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRelease_n();

  v71 = *(v4 + 104);
  v72 = *(v4 + 120);
  v73 = v121;
  v74 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  (*(v74 + 8))(&v104, v73, v74);
  v75 = v104;
  sub_1B497558C(v120, v116);
  if (swift_dynamicCast())
  {
    sub_1B496F398(&v113, &v123);
    v76 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v76);
    v92 = &v123;
    v93 = v70;
    v94 = v70;
    v95 = v70;
    v96 = 0;
    v97 = v75;
    v77 = v125;
    v78 = sub_1B4CB404C(sub_1B4B6F234, v91, v76);
    v125 = v77;
    if (v77)
    {

      goto LABEL_30;
    }

    v79 = v78;

    v80 = v121;
    v81 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v81 + 8))(v116, v80, v81);
    v82 = v121;
    v83 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v83 + 8))(&v113, v82, v83);
    v75 = v113;
    __swift_destroy_boxed_opaque_existential_1Tm(&v123);
  }

  else
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    sub_1B4975024(&v113, &qword_1EB8A6E58, &qword_1B4D1C110);
    v79 = MEMORY[0x1E69E7CC0];
  }

  v84 = v125;
  sub_1B4B6A5C0(v71, v72, v75, v79, &v105);
  v125 = v84;
  if (v84)
  {

    goto LABEL_35;
  }

  swift_bridgeObjectRelease_n();

  v85 = v118;
  v86 = v112;
  v87 = v110;
  v88 = v108;
  v89 = v106;
  v90 = v100;
  *(v100 + 8) = v117;
  *(v90 + 3) = v85;
  v90[2] = v111;
  *(v90 + 6) = v86;
  *(v90 + 56) = v109;
  *(v90 + 9) = v87;
  v90[5] = v107;
  *(v90 + 12) = v88;
  *(v90 + 104) = v105;
  *(v90 + 15) = v89;
  *v90 = v99;
  return __swift_destroy_boxed_opaque_existential_1Tm(v120);
}

uint64_t sub_1B4B6BD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  sub_1B4974FBC(a1, &v193, &qword_1EB8AA378, &unk_1B4D2E760);
  if (!*(&v194 + 1))
  {
    sub_1B4975024(&v193, &qword_1EB8AA378, &unk_1B4D2E760);
    v18 = *(v2 + 80);
    *(a2 + 64) = *(v2 + 64);
    *(a2 + 80) = v18;
    v19 = *(v2 + 112);
    *(a2 + 96) = *(v2 + 96);
    *(a2 + 112) = v19;
    v20 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v20;
    v21 = *(v2 + 48);
    *(a2 + 32) = *(v2 + 32);
    *(a2 + 48) = v21;
    return sub_1B4974FBC(v2, &v193, &qword_1EB8AB260, &qword_1B4D33728);
  }

  sub_1B496F398(&v193, v200);
  v7 = v201;
  v8 = v202;
  __swift_project_boxed_opaque_existential_1(v200, v201);
  (*(v8 + 8))(&v192, v7, v8);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = v192;
  v207[0] = MEMORY[0x1E69E7CC0];
  v207[1] = MEMORY[0x1E69E7CC0];
  v207[2] = MEMORY[0x1E69E7CC0];
  v207[3] = MEMORY[0x1E69E7CC0];
  v207[4] = MEMORY[0x1E69E7CC0];
  v207[5] = MEMORY[0x1E69E7CC0];
  v11 = *(v2 + 8);
  v165 = *(v2 + 16);
  v166 = v11;
  v164 = *(v2 + 24);
  v12 = v201;
  v13 = v202;
  __swift_project_boxed_opaque_existential_1(v200, v201);
  (*(v13 + 8))(&v187, v12, v13);
  v14 = v187;
  sub_1B497558C(v200, &v193);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BC0, &qword_1B4D33730);
  v163 = v15;
  if (swift_dynamicCast())
  {
    sub_1B496F398(&v167, v189);
    v16 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v16);
    v153 = v189;
    v154 = v207;
    v155 = 0;
    v156 = v14;
    v17 = sub_1B4AE13D0(sub_1B4B6F45C, v152, v16);
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      goto LABEL_74;
    }

    v25 = v17;
    v161 = v5;
    v159 = v10;

    v26 = v201;
    v27 = v202;
    __swift_project_boxed_opaque_existential_1(v200, v201);
    (*(v27 + 8))(&v185, v26, v27);
    v14 = v185;
    v28 = v201;
    v160 = v25;
    v29 = v202;
    __swift_project_boxed_opaque_existential_1(v200, v201);
    v30 = v160;
    (*(v29 + 8))(&v183, v28, v29);
    v31 = v183;
    v32 = *(v30 + 2);
    if (v32)
    {
      v208 = v183;
      v157 = a2;
      v158 = 0;
      *&v181 = MEMORY[0x1E69E7CC0];
      sub_1B4BCECFC(0, v32, 0);
      v33 = (v30 + 32);
      v23 = v181;
      for (i = v32 - 1; ; --i)
      {
        sub_1B498ADFC(v33, &v167);
        v173 = v168;
        v174 = v169;
        v175 = v170;
        v176 = v171;
        sub_1B496F398(v172, &v197 + 8);
        v35 = v14;
        *&v193 = v14;
        *(&v193 + 1) = v208;
        v194 = v173;
        v195 = v174;
        v196 = v175;
        *&v197 = v176;
        *&v181 = v23;
        v37 = *(v23 + 16);
        v36 = *(v23 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1B4BCECFC((v36 > 1), v37 + 1, 1);
          v23 = v181;
        }

        *(v23 + 16) = v37 + 1;
        v38 = (v23 + 112 * v37);
        v39 = v193;
        v40 = v195;
        v38[3] = v194;
        v38[4] = v40;
        v38[2] = v39;
        v41 = v196;
        v42 = v197;
        v43 = v199;
        v38[7] = v198;
        v38[8] = v43;
        v38[5] = v41;
        v38[6] = v42;
        if (!i)
        {
          break;
        }

        v33 += 112;
        v14 = v35;
      }

      a2 = v157;
      v4 = v158;
      v10 = v159;
      v9 = MEMORY[0x1E69E7CC0];
      v14 = v35;
      v31 = v208;
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
      v10 = v159;
      v9 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v189);
    v24 = v31;
  }

  else
  {
    v161 = v5;
    *&v169 = 0;
    v167 = 0u;
    v168 = 0u;
    sub_1B4975024(&v167, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = v14;
  }

  sub_1B4B6A12C(v166, v165, v164, v14, v24, v23, &v190);
  if (!v4)
  {
    swift_bridgeObjectRelease_n();

    v206[0] = v9;
    v206[1] = v9;
    v206[2] = v9;
    v206[3] = v9;
    v206[4] = v9;
    v206[5] = v9;
    v44 = v161;
    v45 = v161[4];
    v165 = v161[5];
    v166 = v45;
    v164 = v161[6];
    v46 = v201;
    v47 = v202;
    __swift_project_boxed_opaque_existential_1(v200, v201);
    (*(v47 + 8))(&v185, v46, v47);
    v48 = v185;
    sub_1B497558C(v200, &v193);
    if (swift_dynamicCast())
    {
      sub_1B496F398(&v167, v189);
      v49 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
      MEMORY[0x1EEE9AC00](v49);
      v153 = v189;
      v154 = v206;
      v155 = 0;
      v156 = v50;
      v53 = sub_1B4AE13D0(sub_1B4B6F45C, v152, v49);

      v54 = v201;
      v55 = v202;
      __swift_project_boxed_opaque_existential_1(v200, v201);
      (*(v55 + 8))(&v183, v54, v55);
      v208 = v183;
      v56 = v201;
      v57 = v202;
      __swift_project_boxed_opaque_existential_1(v200, v201);
      (*(v57 + 8))(&v181, v56, v57);
      v52 = v181;
      v58 = v53;
      v59 = *(v53 + 2);
      if (v59)
      {
        v161 = v44;
        v158 = 0;
        v159 = v10;
        v157 = a2;
        v180 = MEMORY[0x1E69E7CC0];
        sub_1B4BCECFC(0, v59, 0);
        v160 = v58;
        v60 = (v58 + 32);
        v51 = v180;
        for (j = v59 - 1; ; --j)
        {
          sub_1B498ADFC(v60, &v167);
          v173 = v168;
          v174 = v169;
          v175 = v170;
          v176 = v171;
          sub_1B496F398(v172, &v197 + 8);
          *&v193 = v208;
          *(&v193 + 1) = v52;
          v194 = v173;
          v195 = v174;
          v196 = v175;
          *&v197 = v176;
          v180 = v51;
          v63 = *(v51 + 16);
          v62 = *(v51 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_1B4BCECFC((v62 > 1), v63 + 1, 1);
            v51 = v180;
          }

          *(v51 + 16) = v63 + 1;
          v64 = (v51 + 112 * v63);
          v65 = v193;
          v66 = v195;
          v64[3] = v194;
          v64[4] = v66;
          v64[2] = v65;
          v67 = v196;
          v68 = v197;
          v69 = v199;
          v64[7] = v198;
          v64[8] = v69;
          v64[5] = v67;
          v64[6] = v68;
          if (!j)
          {
            break;
          }

          v60 += 112;
        }

        a2 = v157;
        v4 = v158;
        v10 = v159;
        v44 = v161;
      }

      else
      {

        v51 = MEMORY[0x1E69E7CC0];
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      v9 = MEMORY[0x1E69E7CC0];
      v48 = v208;
    }

    else
    {
      *&v169 = 0;
      v167 = 0u;
      v168 = 0u;
      sub_1B4975024(&v167, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
      v51 = MEMORY[0x1E69E7CC0];
      v52 = v48;
    }

    sub_1B4B6A12C(v166, v165, v164, v48, v52, v51, &v187);
    if (v4)
    {
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v205[0] = v9;
      v205[1] = v9;
      v205[2] = v9;
      v205[3] = v9;
      v205[4] = v9;
      v205[5] = v9;
      v70 = v44[7];
      v165 = v44[8];
      v166 = v70;
      v164 = v44[9];
      v71 = v201;
      v72 = v202;
      __swift_project_boxed_opaque_existential_1(v200, v201);
      (*(v72 + 8))(&v183, v71, v72);
      v73 = v183;
      sub_1B497558C(v200, &v193);
      if (swift_dynamicCast())
      {
        sub_1B496F398(&v167, v189);
        v74 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
        MEMORY[0x1EEE9AC00](v74);
        v153 = v189;
        v154 = v205;
        v155 = 0;
        v156 = v73;
        v77 = sub_1B4AE13D0(sub_1B4B6F45C, v152, v74);

        v78 = v201;
        v160 = v77;
        v79 = v202;
        __swift_project_boxed_opaque_existential_1(v200, v201);
        (*(v79 + 8))(&v181, v78, v79);
        v208 = v181;
        v80 = v201;
        v81 = v202;
        __swift_project_boxed_opaque_existential_1(v200, v201);
        v82 = *(v81 + 8);
        v83 = v81;
        v84 = v160;
        v82(&v180, v80, v83);
        v76 = v180;
        v85 = *(v84 + 2);
        if (v85)
        {
          v161 = v44;
          v158 = 0;
          v159 = v10;
          v157 = a2;
          v179 = MEMORY[0x1E69E7CC0];
          sub_1B4BCECFC(0, v85, 0);
          v86 = (v84 + 32);
          v75 = v179;
          for (k = v85 - 1; ; --k)
          {
            sub_1B498ADFC(v86, &v167);
            v173 = v168;
            v174 = v169;
            v175 = v170;
            v176 = v171;
            sub_1B496F398(v172, &v197 + 8);
            *&v193 = v208;
            *(&v193 + 1) = v76;
            v194 = v173;
            v195 = v174;
            v196 = v175;
            *&v197 = v176;
            v179 = v75;
            v89 = *(v75 + 16);
            v88 = *(v75 + 24);
            if (v89 >= v88 >> 1)
            {
              sub_1B4BCECFC((v88 > 1), v89 + 1, 1);
              v75 = v179;
            }

            *(v75 + 16) = v89 + 1;
            v90 = (v75 + 112 * v89);
            v91 = v193;
            v92 = v195;
            v90[3] = v194;
            v90[4] = v92;
            v90[2] = v91;
            v93 = v196;
            v94 = v197;
            v95 = v199;
            v90[7] = v198;
            v90[8] = v95;
            v90[5] = v93;
            v90[6] = v94;
            if (!k)
            {
              break;
            }

            v86 += 112;
          }

          a2 = v157;
          v4 = v158;
          v10 = v159;
          v44 = v161;
        }

        else
        {

          v75 = MEMORY[0x1E69E7CC0];
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v189);
        v9 = MEMORY[0x1E69E7CC0];
        v73 = v208;
      }

      else
      {
        *&v169 = 0;
        v167 = 0u;
        v168 = 0u;
        sub_1B4975024(&v167, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
        v75 = MEMORY[0x1E69E7CC0];
        v76 = v73;
      }

      sub_1B4B6A12C(v166, v165, v164, v73, v76, v75, &v185);
      if (!v4)
      {
        swift_bridgeObjectRelease_n();

        v204[0] = v9;
        v204[1] = v9;
        v204[2] = v9;
        v204[3] = v9;
        v204[4] = v9;
        v204[5] = v9;
        v96 = v44[10];
        v165 = v44[11];
        v166 = v96;
        v164 = v44[12];
        v97 = v201;
        v98 = v202;
        __swift_project_boxed_opaque_existential_1(v200, v201);
        (*(v98 + 8))(&v181, v97, v98);
        v99 = v181;
        sub_1B497558C(v200, &v193);
        if (swift_dynamicCast())
        {
          sub_1B496F398(&v167, v189);
          v100 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
          MEMORY[0x1EEE9AC00](v100);
          v153 = v189;
          v154 = v204;
          v155 = 0;
          v156 = v99;
          v103 = sub_1B4AE13D0(sub_1B4B6F45C, v152, v100);

          v104 = v201;
          v160 = v103;
          v105 = v202;
          __swift_project_boxed_opaque_existential_1(v200, v201);
          (*(v105 + 8))(&v180, v104, v105);
          v208 = v180;
          v106 = v201;
          v107 = v202;
          __swift_project_boxed_opaque_existential_1(v200, v201);
          v108 = *(v107 + 8);
          v109 = v107;
          v110 = v160;
          v108(&v179, v106, v109);
          v102 = v179;
          v111 = *(v110 + 2);
          if (v111)
          {
            v161 = v44;
            v158 = 0;
            v159 = v10;
            v157 = a2;
            v178 = MEMORY[0x1E69E7CC0];
            sub_1B4BCECFC(0, v111, 0);
            v112 = (v110 + 32);
            v101 = v178;
            for (m = v111 - 1; ; --m)
            {
              sub_1B498ADFC(v112, &v167);
              v173 = v168;
              v174 = v169;
              v175 = v170;
              v176 = v171;
              sub_1B496F398(v172, &v197 + 8);
              *&v193 = v208;
              *(&v193 + 1) = v102;
              v194 = v173;
              v195 = v174;
              v196 = v175;
              *&v197 = v176;
              v178 = v101;
              v115 = *(v101 + 16);
              v114 = *(v101 + 24);
              if (v115 >= v114 >> 1)
              {
                sub_1B4BCECFC((v114 > 1), v115 + 1, 1);
                v101 = v178;
              }

              *(v101 + 16) = v115 + 1;
              v116 = (v101 + 112 * v115);
              v117 = v193;
              v118 = v195;
              v116[3] = v194;
              v116[4] = v118;
              v116[2] = v117;
              v119 = v196;
              v120 = v197;
              v121 = v199;
              v116[7] = v198;
              v116[8] = v121;
              v116[5] = v119;
              v116[6] = v120;
              if (!m)
              {
                break;
              }

              v112 += 112;
            }

            a2 = v157;
            v4 = v158;
            v10 = v159;
            v44 = v161;
          }

          else
          {

            v101 = MEMORY[0x1E69E7CC0];
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v189);
          v9 = MEMORY[0x1E69E7CC0];
          v99 = v208;
        }

        else
        {
          *&v169 = 0;
          v167 = 0u;
          v168 = 0u;
          sub_1B4975024(&v167, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
          v101 = MEMORY[0x1E69E7CC0];
          v102 = v99;
        }

        sub_1B4B6A12C(v166, v165, v164, v99, v102, v101, &v183);
        if (!v4)
        {
          swift_bridgeObjectRelease_n();

          v203[0] = v9;
          v203[1] = v9;
          v203[2] = v9;
          v203[3] = v9;
          v203[4] = v9;
          v203[5] = v9;
          v122 = v44[13];
          v165 = v44[14];
          v166 = v122;
          v123 = v44[15];
          v124 = v201;
          v125 = v202;
          __swift_project_boxed_opaque_existential_1(v200, v201);
          (*(v125 + 8))(&v180, v124, v125);
          v126 = v180;
          sub_1B497558C(v200, &v193);
          if (swift_dynamicCast())
          {
            v164 = v123;
            sub_1B496F398(&v167, v189);
            v127 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
            MEMORY[0x1EEE9AC00](v127);
            v153 = v189;
            v154 = v203;
            v155 = 0;
            v156 = v126;
            v130 = sub_1B4AE13D0(sub_1B4AE54CC, v152, v127);

            v131 = v201;
            v132 = v202;
            __swift_project_boxed_opaque_existential_1(v200, v201);
            (*(v132 + 8))(&v179, v131, v132);
            v208 = v179;
            v133 = v201;
            v134 = v202;
            __swift_project_boxed_opaque_existential_1(v200, v201);
            (*(v134 + 8))(&v178, v133, v134);
            v129 = v178;
            v135 = *(v130 + 2);
            if (v135)
            {
              v158 = 0;
              v159 = v10;
              v157 = a2;
              v177 = v9;
              sub_1B4BCECFC(0, v135, 0);
              v163 = v130;
              v136 = (v130 + 32);
              v128 = v177;
              for (n = v135 - 1; ; --n)
              {
                v138 = v208;
                sub_1B498ADFC(v136, &v167);
                v173 = v168;
                v174 = v169;
                v175 = v170;
                v176 = v171;
                sub_1B496F398(v172, &v197 + 8);
                *&v193 = v138;
                *(&v193 + 1) = v129;
                v194 = v173;
                v195 = v174;
                v196 = v175;
                *&v197 = v176;
                v177 = v128;
                v140 = *(v128 + 16);
                v139 = *(v128 + 24);
                if (v140 >= v139 >> 1)
                {
                  sub_1B4BCECFC((v139 > 1), v140 + 1, 1);
                  v128 = v177;
                }

                *(v128 + 16) = v140 + 1;
                v141 = (v128 + 112 * v140);
                v142 = v193;
                v143 = v195;
                v141[3] = v194;
                v141[4] = v143;
                v141[2] = v142;
                v144 = v196;
                v145 = v197;
                v146 = v199;
                v141[7] = v198;
                v141[8] = v146;
                v141[5] = v144;
                v141[6] = v145;
                if (!n)
                {
                  break;
                }

                v136 += 112;
              }

              a2 = v157;
              v4 = v158;
              v10 = v159;
              v123 = v164;
              v126 = v208;
            }

            else
            {

              v128 = MEMORY[0x1E69E7CC0];
              v126 = v208;
              v123 = v164;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v189);
          }

          else
          {
            *&v169 = 0;
            v167 = 0u;
            v168 = 0u;
            sub_1B4975024(&v167, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
            v128 = MEMORY[0x1E69E7CC0];
            v129 = v126;
          }

          sub_1B4B6A12C(v166, v165, v123, v126, v129, v128, &v181);
          if (!v4)
          {
            swift_bridgeObjectRelease_n();

            v147 = v191;
            v148 = v188;
            v149 = v186;
            v150 = v184;
            v151 = v182;
            *(a2 + 8) = v190;
            *(a2 + 24) = v147;
            *(a2 + 32) = v187;
            *(a2 + 48) = v148;
            *(a2 + 56) = v185;
            *(a2 + 72) = v149;
            *(a2 + 80) = v183;
            *(a2 + 96) = v150;
            *(a2 + 104) = v181;
            *(a2 + 120) = v151;
            *a2 = v10;
            return __swift_destroy_boxed_opaque_existential_1Tm(v200);
          }
        }
      }
    }
  }

LABEL_74:
  swift_bridgeObjectRelease_n();
  return __swift_destroy_boxed_opaque_existential_1Tm(v200);
}

void *static LegacySnapshot.make(from:beforeWorkoutSnapshot:)@<X0>(void *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v74, a2, sizeof(v74));
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 80))(v12, v13);
  v14 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v15 = sub_1B4D1796C();
  __swift_project_value_buffer(v15, qword_1EDC3CE48);
  v16 = sub_1B4D178CC();
  v17 = _HKCacheIndexFromDate();

  (*(v9 + 8))(v11, v8);
  memcpy(v75, v74, 0x188uLL);
  if (sub_1B4B6D850(v75) == 1 || (v48[4] = *&v75[9], v48[5] = *&v75[11], v48[6] = *&v75[13], v48[7] = *&v75[15], v48[0] = *&v75[1], v48[1] = *&v75[3], v48[2] = *&v75[5], v48[3] = *&v75[7], sub_1B4966184(v48) == 1))
  {
    sub_1B496F4FC(&v66);
  }

  else
  {
    v62 = v48[4];
    v63 = v48[5];
    v64 = v48[6];
    v65 = v48[7];
    v58 = v48[0];
    v59 = v48[1];
    v60 = v48[2];
    v61 = v48[3];
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 248))(v18, v19);
    v20 = type metadata accessor for HKActivitySummaryRepresentable(0);
    if ((*(*(v20 - 8) + 48))(v7, 1, v20) == 1)
    {
      sub_1B4975024(v7, &qword_1EB8A6C98, &unk_1B4D2F3F0);
      v50 = 0u;
      v51 = 0u;
      *&v52 = 0;
    }

    else
    {
      *(&v51 + 1) = v20;
      *&v52 = &protocol witness table for HKActivitySummaryRepresentable;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
      sub_1B4B6D7EC(v7, boxed_opaque_existential_1);
    }

    sub_1B4B6B130(&v50, v49);
    sub_1B4975024(&v50, &qword_1EB8AA378, &unk_1B4D2E760);
    v38[4] = v49[4];
    v38[5] = v49[5];
    v38[6] = v49[6];
    v38[7] = v49[7];
    v38[0] = v49[0];
    v38[1] = v49[1];
    v38[2] = v49[2];
    v38[3] = v49[3];
    nullsub_1();
    v70 = v38[4];
    v71 = v38[5];
    v72 = v38[6];
    v73 = v38[7];
    v66 = v38[0];
    v67 = v38[1];
    v68 = v38[2];
    v69 = v38[3];
  }

  memcpy(v48, v74, 0x188uLL);
  if (sub_1B4B6D850(v48) == 1 || (v38[4] = *(&v48[12] + 8), v38[5] = *(&v48[13] + 8), v38[6] = *(&v48[14] + 8), v38[7] = *(&v48[15] + 8), v38[0] = *(&v48[8] + 8), v38[1] = *(&v48[9] + 8), v38[2] = *(&v48[10] + 8), v38[3] = *(&v48[11] + 8), sub_1B4966184(v38) == 1))
  {
    sub_1B496F4FC(&v40);
  }

  else
  {
    v54 = v38[4];
    v55 = v38[5];
    v56 = v38[6];
    v57 = v38[7];
    v50 = v38[0];
    v51 = v38[1];
    v52 = v38[2];
    v53 = v38[3];
    v21 = a1[3];
    v22 = a1[4];
    v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
    v29[3] = v21;
    v29[4] = *(v22 + 16);
    v24 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(*(v21 - 8) + 16))(v24, v23, v21);
    sub_1B4B6BD78(v29, v39);
    sub_1B4975024(v29, &qword_1EB8AA378, &unk_1B4D2E760);
    v34 = v39[4];
    v35 = v39[5];
    v36 = v39[6];
    v37 = v39[7];
    v30 = v39[0];
    v31 = v39[1];
    v32 = v39[2];
    v33 = v39[3];
    nullsub_1();
    v44 = v34;
    v45 = v35;
    v46 = v36;
    v47 = v37;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v43 = v33;
  }

  sub_1B496F4FC(&v30);
  *(&v38[20] + 8) = v34;
  *(&v38[21] + 8) = v35;
  *(&v38[22] + 8) = v36;
  *(&v38[23] + 8) = v37;
  *(&v38[16] + 8) = v30;
  *(&v38[17] + 8) = v31;
  *(&v38[18] + 8) = v32;
  *(&v38[19] + 8) = v33;
  *(&v38[3] + 8) = v69;
  *(&v38[2] + 8) = v68;
  *(&v38[1] + 8) = v67;
  *(v38 + 8) = v66;
  *(&v38[7] + 8) = v73;
  *(&v38[6] + 8) = v72;
  *(&v38[5] + 8) = v71;
  *(&v38[4] + 8) = v70;
  *&v38[0] = v17;
  *(&v38[11] + 8) = v43;
  *(&v38[10] + 8) = v42;
  *(&v38[9] + 8) = v41;
  *(&v38[8] + 8) = v40;
  *(&v38[15] + 8) = v47;
  *(&v38[14] + 8) = v46;
  *(&v38[13] + 8) = v45;
  *(&v38[12] + 8) = v44;
  nullsub_1();
  return memcpy(v28, v38, 0x188uLL);
}

uint64_t sub_1B4B6D7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKActivitySummaryRepresentable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B6D850(uint64_t a1)
{
  v1 = *(a1 + 32);
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

_OWORD *sub_1B4B6D874(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 40) = 0u;
  result = (a1 + 40);
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  return result;
}

uint64_t sub_1B4B6D8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(&v49 + 1) = a7;
  *&v49 = a3;
  if (*(a1 + 16))
  {
    v9 = v7;
    v10 = a1 + 32;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return MEMORY[0x1E69E7CC0];
    }

    v9 = v7;
    v10 = a2 + 32;
  }

  sub_1B498ADFC(v10, &v61);
  v58 = v62;
  *v59 = v63;
  *&v59[16] = v64;
  v60 = *&v65[0];
  sub_1B498B0D4(&v58, v57);
  sub_1B498AE58(&v61);
  v52 = *v59;
  v51 = v58;
  v54 = *&v59[24];
  v55 = *&v59[16];
  v53 = v60;
  *&v61 = a1;

  sub_1B4997760(v11);

  v12 = v9;
  sub_1B4AE42D0(&v61);
  if (!v9)
  {
    v66 = 0;

    v13 = v61;
    v14 = *(v61 + 16);
    if (v14)
    {
      v57[0] = MEMORY[0x1E69E7CC0];
      sub_1B4BCF35C(0, v14, 0);
      v15 = v57[0];
      v16 = v13 + 32;
      do
      {
        sub_1B498ADFC(v16, &v61);
        sub_1B497558C(v65 + 8, &v58);
        sub_1B498AE58(&v61);
        v57[0] = v15;
        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B4BCF35C((v17 > 1), v18 + 1, 1);
          v15 = v57[0];
        }

        *(v15 + 16) = v18 + 1;
        sub_1B496F398(&v58, v15 + 40 * v18 + 32);
        v16 += 112;
        --v14;
      }

      while (v14);
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    v19 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    v20 = v19;
    v21 = MEMORY[0x1E69E7CC0];
    v48 = *(v19 + 16);
    if (v48)
    {
      v22 = 0;
      v47 = v19;
      while (v22 < *(v20 + 16))
      {
        v56 = v21;
        v50 = *(v20 + 16 * v22 + 32);
        v24 = *(&v50 + 1);
        v23 = v50;
        sub_1B4AE3C7C(v50, v15, v50, *(&v50 + 1));
        v25 = *(v24 + 8);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
        sub_1B4D18A7C();

        v26 = sub_1B4D1880C();
        v27 = *(v26 - 8);
        MEMORY[0x1EEE9AC00](v26);
        v29 = &v47 - v28;
        v12 = v66;
        static SnapshotProperty.reduce(_:)(v23, v25, &v47 - v28);
        v66 = v12;
        if (v12)
        {

          sub_1B4AE5ED4(v51, *(&v51 + 1), v52, *(&v52 + 1), v55, v54, v53);

          return v23;
        }

        v30 = *(v23 - 8);
        if ((*(v30 + 48))(v29, 1, v23) == 1)
        {
          (*(v27 + 8))(v29, v26);
          v21 = v56;
          v20 = v47;
        }

        else
        {
          *&v59[8] = v50;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v58);
          (*(v30 + 32))(boxed_opaque_existential_1, v29, v23);
          sub_1B496F398(&v58, &v61);
          sub_1B496F398(&v61, &v58);
          v21 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1B4A1DE34(0, v21[2] + 1, 1, v21);
          }

          v20 = v47;
          v33 = v21[2];
          v32 = v21[3];
          if (v33 >= v32 >> 1)
          {
            v21 = sub_1B4A1DE34((v32 > 1), v33 + 1, 1, v21);
          }

          v21[2] = v33 + 1;
          sub_1B496F398(&v58, &v21[5 * v33 + 4]);
        }

        if (v48 == ++v22)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_25:

    v34 = v21[2];
    if (v34)
    {
      *&v58 = MEMORY[0x1E69E7CC0];
      sub_1B4BCECFC(0, v34, 0);
      v23 = v58;
      v56 = v21;
      v35 = (v21 + 4);
      *&v50 = *(&v51 + 1);
      v36 = v51;
      v37 = v52;
      do
      {
        sub_1B497558C(v35, v65 + 8);
        v61 = v49;
        v62 = v51;
        v63 = v52;
        *&v64 = v55;
        *(&v64 + 1) = v54;
        *&v65[0] = v53;
        sub_1B4B6F430(v36, v50, v37, *(&v37 + 1), v55, v54, v53);
        *&v58 = v23;
        v39 = *(v23 + 16);
        v38 = *(v23 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1B4BCECFC((v38 > 1), v39 + 1, 1);
          v23 = v58;
        }

        *(v23 + 16) = v39 + 1;
        v40 = (v23 + 112 * v39);
        v41 = v61;
        v42 = v63;
        v40[3] = v62;
        v40[4] = v42;
        v40[2] = v41;
        v43 = v64;
        v44 = v65[0];
        v45 = v65[2];
        v40[7] = v65[1];
        v40[8] = v45;
        v40[5] = v43;
        v40[6] = v44;
        v35 += 40;
        --v34;
      }

      while (v34);
      sub_1B4AE5ED4(v36, v50, v37, *(&v37 + 1), v55, v54, v53);
    }

    else
    {

      sub_1B4AE5ED4(v51, *(&v51 + 1), v52, *(&v52 + 1), v55, v54, v53);
      return MEMORY[0x1E69E7CC0];
    }

    return v23;
  }

LABEL_36:

  __break(1u);
  return result;
}

uint64_t sub_1B4B6E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v51 = a3;
  if (*(a1 + 16))
  {
    v11 = a1 + 32;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return MEMORY[0x1E69E7CC0];
    }

    v11 = a2 + 32;
  }

  sub_1B4B6F2FC(v11, &v56);
  v49 = BYTE1(v57[0]);
  v50 = LOBYTE(v57[0]);
  v48 = BYTE2(v57[0]);
  sub_1B4B6F358(&v56);
  v45 = a7;
  *&v56 = a1;

  sub_1B499766C(v12);

  sub_1B4CB8494(&v56);
  if (!v7)
  {

    v13 = v56;
    v14 = *(v56 + 16);
    if (v14)
    {
      v54 = 0;
      v58 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF37C(0, v14, 0);
      v15 = v58;
      v16 = v13 + 32;
      do
      {
        sub_1B4B6F2FC(v16, &v56);
        sub_1B496F398((v57 + 8), v55);
        v58 = v15;
        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B4BCF37C((v17 > 1), v18 + 1, 1);
          v15 = v58;
        }

        *(v15 + 16) = v18 + 1;
        sub_1B496F398(v55, v15 + 40 * v18 + 32);
        v16 += 64;
        --v14;
      }

      while (v14);

      v8 = v54;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    v19 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    v20 = v19;
    v21 = MEMORY[0x1E69E7CC0];
    v47 = *(v19 + 16);
    if (v47)
    {
      v22 = 0;
      v46 = v19;
      while (v22 < *(v20 + 16))
      {
        v53 = v21;
        v52 = *(v20 + 16 * v22 + 32);
        v24 = *(&v52 + 1);
        v23 = v52;
        sub_1B4CB6490(v52, v15, v52, *(&v52 + 1));
        v54 = v8;
        v25 = *(v24 + 8);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
        sub_1B4D18A7C();

        v26 = sub_1B4D1880C();
        v27 = *(v26 - 8);
        MEMORY[0x1EEE9AC00](v26);
        v29 = &v45 - v28;
        v30 = v54;
        static SnapshotProperty.reduce(_:)(v23, v25, &v45 - v28);
        v8 = v30;
        if (v30)
        {

          return v23;
        }

        v31 = *(v23 - 8);
        if ((*(v31 + 48))(v29, 1, v23) == 1)
        {
          (*(v27 + 8))(v29, v26);
          v21 = v53;
          v20 = v46;
        }

        else
        {
          *&v55[3] = v52;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
          (*(v31 + 32))(boxed_opaque_existential_1, v29, v23);
          sub_1B496F398(v55, &v56);
          sub_1B496F398(&v56, v55);
          v21 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1B4A1DE58(0, v21[2] + 1, 1, v21);
          }

          v20 = v46;
          v34 = v21[2];
          v33 = v21[3];
          if (v34 >= v33 >> 1)
          {
            v21 = sub_1B4A1DE58((v33 > 1), v34 + 1, 1, v21);
          }

          v21[2] = v34 + 1;
          sub_1B496F398(v55, &v21[5 * v34 + 4]);
        }

        if (v47 == ++v22)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_25:

    v35 = v21[2];
    if (v35)
    {
      v55[0] = MEMORY[0x1E69E7CC0];
      sub_1B4BCEB88(0, v35, 0);
      v23 = v55[0];
      v36 = (v21 + 4);
      v37 = v45;
      do
      {
        sub_1B497558C(v36, v57 + 8);
        *&v56 = v51;
        *(&v56 + 1) = v37;
        LOBYTE(v57[0]) = v50;
        BYTE1(v57[0]) = v49;
        BYTE2(v57[0]) = v48;
        v55[0] = v23;
        v39 = *(v23 + 16);
        v38 = *(v23 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1B4BCEB88((v38 > 1), v39 + 1, 1);
          v23 = v55[0];
        }

        *(v23 + 16) = v39 + 1;
        v40 = (v23 + (v39 << 6));
        v41 = v56;
        v42 = v57[0];
        v43 = v57[2];
        v40[4] = v57[1];
        v40[5] = v43;
        v40[2] = v41;
        v40[3] = v42;
        v36 += 40;
        --v35;
      }

      while (v35);

      return v23;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_36:

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_19FitnessIntelligence23LegacySnapshotContainerVyAA15RingsPropertiesVGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B4B6E6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 392))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B4B6E734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 392) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 392) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_1B4B6E7FC(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, char a4, void (*a5)(id *__return_ptr, uint64_t *, _OWORD *, __n128))
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = v6; ; v6 = i)
  {
    if (!v9)
    {
      v22 = v11;
      while (1)
      {
        v21 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v21 >= v10)
        {
          goto LABEL_26;
        }

        v20 = *(v6 + 8 * v21);
        ++v22;
        if (v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      sub_1B4D18E1C();
      __break(1u);
      goto LABEL_33;
    }

    v20 = v9;
    v21 = v11;
LABEL_14:
    v23 = __clz(__rbit64(v20)) | (v21 << 6);
    v24 = *(a1 + 56);
    v25 = *(a1 + 48) + 56 * v23;
    v27 = *(v25 + 16);
    v26 = *(v25 + 32);
    v28 = *v25;
    v54 = *(v25 + 48);
    v53[1] = v27;
    v53[2] = v26;
    v53[0] = v28;
    v29 = *(v24 + 8 * v23);
    v49 = *v25;
    v50 = *(v25 + 16);
    v51 = *(v25 + 32);
    *&v52 = *(v25 + 48);
    *(&v52 + 1) = v29;
    sub_1B498B0D4(v53, &v55);

    a2(&v59, &v49);
    v55 = v49;
    v56 = v50;
    v57 = v51;
    v58 = v52;
    sub_1B4975024(&v55, &qword_1EB8AB268, &qword_1B4D33738);
    v30 = v63;
    if (!v63)
    {
LABEL_26:
      sub_1B49B75FC(a1);

      return;
    }

    v55 = v59;
    v56 = v60;
    v57 = v61;
    *&v58 = v62;
    *&v53[0] = v63;
    v31 = *v47;
    v67 = v62;
    v66[1] = v60;
    v66[2] = v61;
    v66[0] = v59;
    v33 = sub_1B49EA514(v66);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_30;
    }

    v37 = v32;
    if (v31[3] < v36)
    {
      break;
    }

    if (a4)
    {
      if (v32)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B4989F4C();
      if (v37)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    v12 = *v47;
    *(*v47 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v13 = v12[6] + 56 * v33;
    v14 = v55;
    v15 = v56;
    v16 = v57;
    *(v13 + 48) = v58;
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *v13 = v14;
    *(v12[7] + 8 * v33) = v30;
    v17 = v12[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_31;
    }

    v12[2] = v19;
LABEL_7:
    v9 = (v20 - 1) & v20;
    a4 = 1;
    v11 = v21;
  }

  sub_1B4986BB8(v36, a4 & 1);
  v64[0] = v55;
  v64[1] = v56;
  v64[2] = v57;
  v65 = v58;
  v38 = sub_1B49EA514(v64);
  if ((v37 & 1) != (v39 & 1))
  {
    goto LABEL_32;
  }

  v33 = v38;
  if ((v37 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v40 = *v47;
  v48 = *(*(*v47 + 56) + 8 * v33);

  (a5)(&v68, &v48, v53);
  if (!v45)
  {

    v49 = v55;
    v50 = v56;
    v51 = v57;
    *&v52 = v58;
    sub_1B498AD54(&v49);
    *(v40[7] + 8 * v33) = v68;

    goto LABEL_7;
  }

  v68 = v45;
  v41 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B49B75FC(a1);

    v49 = v55;
    v50 = v56;
    v51 = v57;
    *&v52 = v58;
    sub_1B498AD54(&v49);

    return;
  }

LABEL_33:
  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

void sub_1B4B6ED10(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void (*a5)(uint64_t *__return_ptr, id *, uint64_t *))
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v10;
  for (i = v6; ; v6 = i)
  {
    if (!v9)
    {
      v19 = v11;
      while (1)
      {
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v18 >= v10)
        {
          goto LABEL_26;
        }

        v17 = *(v6 + 8 * v18);
        ++v19;
        if (v17)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_1B4D18E1C();
      __break(1u);
      goto LABEL_34;
    }

    v17 = v9;
    v18 = v11;
LABEL_14:
    v20 = __clz(__rbit64(v17)) | (v18 << 6);
    v21 = *(a1 + 48) + 3 * v20;
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 2);
    v23 = *(*(a1 + 56) + 8 * v20);
    LOWORD(v48) = v22;
    BYTE2(v48) = v21;
    v49 = v23;

    a2(&v50, &v48);

    if (!v51)
    {
LABEL_26:
      sub_1B49B75FC(a1);

      return;
    }

    v24 = v50;
    v25 = BYTE2(v50);
    v53 = v50;
    v54 = BYTE2(v50);
    v44 = v51;
    v47 = v51;
    v26 = *v45;
    v52 = BYTE1(v50);
    v27 = v50 | (BYTE1(v50) << 8) | (BYTE2(v50) << 16);
    v29 = sub_1B49EA598(v27);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_31;
    }

    v33 = v28;
    if (v26[3] < v32)
    {
      break;
    }

    if (a4)
    {
      if (v28)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B498A0FC();
      if (v33)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    v12 = *v45;
    *(*v45 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v13 = (v12[6] + 3 * v29);
    *v13 = v24;
    v13[1] = v52;
    v13[2] = v25;
    *(v12[7] + 8 * v29) = v44;
    v14 = v12[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_32;
    }

    v12[2] = v16;
LABEL_7:
    v9 = (v17 - 1) & v17;
    a4 = 1;
    v11 = v18;
    v10 = v39;
  }

  sub_1B4986EEC(v32, a4 & 1);
  v34 = sub_1B49EA598(v27);
  if ((v33 & 1) != (v35 & 1))
  {
    goto LABEL_33;
  }

  v29 = v34;
  if ((v33 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v36 = *v45;
  v46 = *(*(*v45 + 56) + 8 * v29);

  a5(&v48, &v46, &v47);
  if (!v42)
  {

    *(v36[7] + 8 * v29) = v48;

    goto LABEL_7;
  }

  v46 = v42;
  v37 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B49B75FC(a1);

    return;
  }

LABEL_34:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

double sub_1B4B6F168@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 32);
  v3 = v9;
  v5 = *(a1 + 56);
  v10 = *(a1 + 48);
  v4 = v10;
  *a2 = v8[0];
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  sub_1B498B0D4(v8, v7);

  return result;
}

uint64_t sub_1B4B6F1C4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t (*a5)(void, void, void, void, void, void, void, void)@<X4>, uint64_t *a6@<X8>)
{
  result = a5(*a1, *a2, *a3, a3[1], a3[2], *a4, a4[1], a4[2]);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

double sub_1B4B6F218@<D0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 2) = v3;
  *(a2 + 8) = v4;

  return result;
}

unint64_t sub_1B4B6F270()
{
  result = qword_1EDC37358[0];
  if (!qword_1EDC37358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC37358);
  }

  return result;
}

unint64_t sub_1B4B6F3AC()
{
  result = qword_1EDC37288;
  if (!qword_1EDC37288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37288);
  }

  return result;
}

double sub_1B4B6F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

uint64_t StreamingAudioRequest.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1B4B6F4C8(a1);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B4B6F4C8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StreamingAudioRequest.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(0);
  sub_1B4B6F79C(&qword_1EB8A8A70, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioRequest);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B6F5D8(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v10[0] = *v1;
  v10[1] = v7;
  v8 = sub_1B4B6F914();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B6F79C(&qword_1EB8A8A70, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioRequest);
    v4 = sub_1B4D17D6C();
    sub_1B4B6F4C8(v6);
  }

  return v4;
}

uint64_t sub_1B4B6F6F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B23DC4(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1B4B6F79C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B6F7E0()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(0);
  sub_1B4B6F79C(&qword_1EB8A8A70, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioRequest);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B6F87C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1B4B6F4C8(a1);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B4B6F8C8(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B4B6F914()
{
  result = qword_1EB8AB270;
  if (!qword_1EB8AB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB270);
  }

  return result;
}

uint64_t sub_1B4B6F980(double a1)
{
  v1 = sub_1B4D17B5C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4D17B6C();
  sub_1B4B6FFD8(&qword_1EB8AA728, MEMORY[0x1E69AA948], MEMORY[0x1E69AA940]);
  v5 = sub_1B4D17D6C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1B4B6FABC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B23FF0(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t ClosedRange<>.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1B4B6FE50(a1);
  if (v4 < v3)
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

uint64_t ClosedRange<>.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  sub_1B4B6FFD8(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B6FBE8()
{
  type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  sub_1B4B6FFD8(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B6FC98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1B4B6FE50(a1);
  if (v4 < v3)
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_1B4B6FCE0(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v7 = sub_1B4B70020();
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4B6FFD8(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);
    v4 = sub_1B4D17D6C();
    sub_1B4B6FE50(v6);
  }

  return v4;
}

double sub_1B4B6FE14@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B291E0(a1, a2, &v6);
  if (!v3)
  {
    result = *&v6;
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4B6FE50(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1B4B6FEAC(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_1B4B6FFD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4B70020()
{
  result = qword_1EB8AB280;
  if (!qword_1EB8AB280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AB288, &qword_1B4D33858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB280);
  }

  return result;
}

uint64_t SanityTaskMismatch.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];

  v6 = sub_1B4D18B1C();

  if (v6 >= 3)
  {
    sub_1B4B7017C();
    swift_allocError();
    *v12 = v5;
    v12[1] = v4;
    swift_willThrow();

    return sub_1B4B701D0(a1);
  }

  else
  {
    v8 = *a1;
    v9 = a1[1];
    if (v9 < *a1)
    {
      __break(1u);
    }

    else
    {
      v10 = a1[4];
      v11 = a1[5];
      result = sub_1B4B701D0(a1);
      *a2 = v8;
      *(a2 + 8) = v9;
      *(a2 + 16) = v6;
      *(a2 + 24) = v10;
      *(a2 + 32) = v11;
    }
  }

  return result;
}

unint64_t sub_1B4B7017C()
{
  result = qword_1EB8AB290;
  if (!qword_1EB8AB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB290);
  }

  return result;
}

uint64_t sub_1B4B701D0(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SanityTaskMismatch.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  sub_1B4B70640(&qword_1EB8AA720, &protocol conformance descriptor for Apple_Fitness_Intelligence_SanityTaskMismatch);
  return sub_1B4D17DAC();
}

__n128 sub_1B4B702D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = 0xE700000000000000;
  v3 = 0x74756F6B726F77;
  if (*(a2 + 16) != 1)
  {
    v3 = 0x507373656E746966;
    v2 = 0xEB0000000073756CLL;
  }

  if (*(a2 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x73676E6972;
  }

  if (*(a2 + 16))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  result = *(a2 + 24);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B4B70384(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(v1 + 16);
  v9 = *v1;
  v10 = v5;
  v11 = *(v1 + 24);
  v7 = sub_1B4B70694();
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4B70640(&qword_1EB8AA720, &protocol conformance descriptor for Apple_Fitness_Intelligence_SanityTaskMismatch);
    v4 = sub_1B4D17D6C();
    sub_1B4B701D0(v6);
  }

  return v4;
}

double sub_1B4B704B4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B24270(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 16) = v6;
    result = v9[0];
    *(a3 + 24) = *v9;
  }

  return result;
}

uint64_t sub_1B4B70500()
{
  type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  sub_1B4B70640(&qword_1EB8AA720, &protocol conformance descriptor for Apple_Fitness_Intelligence_SanityTaskMismatch);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B70640(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4B70694()
{
  result = qword_1EB8AB298;
  if (!qword_1EB8AB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB298);
  }

  return result;
}

uint64_t static SnapshotProperty.reduce(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = sub_1B4D18B0C();
  if (!v7)
  {
    v7 = sub_1B4D1843C();
  }

  static SnapshotProperty.reduce(_:)(v7, a2, a3, x8_0);
}

uint64_t static SnapshotProperty.from(representable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v37 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v36 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v32 - v8;
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1B4D1880C();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = swift_checkMetadataState();
  v21 = *(a3 + 56);
  v39 = a2;
  v22 = a2;
  v23 = a3;
  v21(v22, a3);
  (*(AssociatedConformanceWitness + 48))(v37, v9, v20, AssociatedConformanceWitness);
  (*(v35 + 8))(v9, v36);
  if ((*(v14 + 48))(v13, 1, v10) == 1)
  {
    (*(v33 + 8))(v13, v34);
    v24 = 1;
    v25 = v38;
    v26 = v39;
  }

  else
  {
    (*(v14 + 32))(v19, v13, v10);
    v27 = v32;
    (*(v14 + 16))(v32, v19, v10);
    v28 = v38;
    v29 = v27;
    v30 = v39;
    (*(v23 + 72))(v29, v39, v23);
    (*(v14 + 8))(v19, v10);
    v24 = 0;
    v26 = v30;
    v25 = v28;
  }

  return (*(*(v26 - 8) + 56))(v25, v24, 1);
}

uint64_t static SnapshotProperty.reduce(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v19 = sub_1B4D1880C();
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v9 = &v16 - v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(AssociatedConformanceWitness + 32))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v4)
  {
    v13 = v17;
    v16 = result;
    v20 = result;
    v14 = (*(*(a2 - 8) + 56))(v9, 1, 1, a2);
    MEMORY[0x1EEE9AC00](v14);
    *(&v16 - 2) = a2;
    *(&v16 - 1) = a3;
    sub_1B4D184BC();
    swift_getWitnessTable();
    v15 = v19;
    sub_1B4D182DC();
    (*(v13 + 8))(v9, v15);
  }

  return result;
}

uint64_t sub_1B4B70E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a2;
  v25 = a5;
  v9 = sub_1B4D1880C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  (*(v10 + 16))(v19 - v12, a1, v9, v11);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    (*(v10 + 8))(v13, v9);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
  }

  else
  {
    v19[1] = v5;
    v19[0] = *(a4 + 64);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(&v23 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1(&v22);
    (v19[0])(a3, a4);
    (*(v14 + 8))(v13, a3);
  }

  v21[3] = AssociatedTypeWitness;
  v21[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, v20, AssociatedTypeWitness);
  static SnapshotProperty.add(_:_:)(&v22, v21, a3, a4, v25);
  sub_1B4B71AF4(v21);
  return sub_1B4B71AF4(&v22);
}

uint64_t static SnapshotProperty.add(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a2;
  v46 = a4;
  v39 = a5;
  v40 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = sub_1B4D1880C();
  v7 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v37 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  sub_1B4B71A20(a1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
  v22 = swift_dynamicCast();
  v38 = v16;
  v23 = *(v16 + 56);
  v23(v12, v22 ^ 1u, 1, AssociatedTypeWitness);
  sub_1B4B71A20(v41, v44);
  v24 = swift_dynamicCast();
  v23(v9, v24 ^ 1u, 1, AssociatedTypeWitness);
  v25 = v40;
  v26 = v43;
  sub_1B4B71634(v12, v9, v15);
  if (v26)
  {
    v27 = *(v7 + 8);
    v28 = v42;
    v27(v9, v42);
    return (v27)(v12, v28);
  }

  else
  {
    v30 = *(v7 + 8);
    v31 = v9;
    v32 = v42;
    v30(v31, v42);
    v30(v12, v32);
    v33 = v38;
    if ((*(v38 + 48))(v15, 1, AssociatedTypeWitness) == 1)
    {
      v30(v15, v32);
      v34 = 1;
      v35 = v39;
    }

    else
    {
      (*(v33 + 32))(v21, v15, AssociatedTypeWitness);
      v36 = v37;
      (*(v33 + 16))(v37, v21, AssociatedTypeWitness);
      v35 = v39;
      (*(v46 + 72))(v36, v25);
      (*(v33 + 8))(v21, AssociatedTypeWitness);
      v34 = 0;
    }

    return (*(*(v25 - 8) + 56))(v35, v34, 1, v25);
  }
}

uint64_t sub_1B4B71634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v34 = a1;
  v35 = a2;
  v36 = a5;
  swift_getAssociatedTypeWitness();
  v32[1] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = v32 - v10;
  v11 = sub_1B4D1880C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v15 = v32 - v14;
  v17 = *(v16 + 56);
  v18 = *(*(v11 - 8) + 16);
  v18(v32 - v14, v34, v11, v13);
  (v18)(&v15[v17], v35, v11);
  v19 = *(v6 + 48);
  LODWORD(v11) = v19(v15, 1, AssociatedTypeWitness);
  v20 = v19(&v15[v17], 1, AssociatedTypeWitness);
  if (v11 == 1)
  {
    if (v20 == 1)
    {
      v21 = 1;
      v22 = v36;
      return (*(v6 + 56))(v22, v21, 1, AssociatedTypeWitness);
    }

    v22 = v36;
    (*(v6 + 32))(v36, &v15[v17], AssociatedTypeWitness);
LABEL_7:
    v21 = 0;
    return (*(v6 + 56))(v22, v21, 1, AssociatedTypeWitness);
  }

  v23 = *(v6 + 32);
  if (v20 == 1)
  {
    v22 = v36;
    v23(v36, v15, AssociatedTypeWitness);
    goto LABEL_7;
  }

  v25 = v33;
  v23(v33, v15, AssociatedTypeWitness);
  v26 = &v15[v17];
  v27 = v25;
  v23(v8, v26, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = v36;
  v29 = v37;
  (*(AssociatedConformanceWitness + 24))(v27, v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v29)
  {
    v30 = *(v6 + 8);
    v30(v8, AssociatedTypeWitness);
    return (v30)(v27, AssociatedTypeWitness);
  }

  v31 = *(v6 + 8);
  v31(v8, AssociatedTypeWitness);
  v31(v27, AssociatedTypeWitness);
  v21 = 0;
  return (*(v6 + 56))(v22, v21, 1, AssociatedTypeWitness);
}

uint64_t sub_1B4B71A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B71AF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double MomentGenerationResult.moment.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;

  return result;
}

FitnessIntelligence::MomentGenerationResult __swiftcall MomentGenerationResult.init(moment:duration:)(FitnessIntelligence::Moment moment, Swift::Double duration)
{
  v3 = *(*&moment.momentType + 8);
  *v2 = **&moment.momentType;
  *(v2 + 8) = v3;
  *(v2 + 16) = duration;
  result.moment.facts._rawValue = moment.facts._rawValue;
  result.moment.momentType = moment.momentType;
  result.duration = duration;
  return result;
}

uint64_t sub_1B4B71B90()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x746E656D6F6DLL;
  }
}

uint64_t sub_1B4B71BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656D6F6DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B4B71CA0(uint64_t a1)
{
  v2 = sub_1B4B71EC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B71CDC(uint64_t a1)
{
  v2 = sub_1B4B71EC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MomentGenerationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A8, &qword_1B4D33960);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B71EC0();

  sub_1B4D18EFC();
  v13[0] = v7;
  v14 = v8;
  v12 = 0;
  sub_1B4B71F14();
  v9 = v11;
  sub_1B4D18D0C();

  if (!v9)
  {
    v13[0] = 1;
    sub_1B4D18CDC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B4B71EC0()
{
  result = qword_1EDC370B8[0];
  if (!qword_1EDC370B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC370B8);
  }

  return result;
}

unint64_t sub_1B4B71F14()
{
  result = qword_1EB8AB2B0;
  if (!qword_1EB8AB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB2B0);
  }

  return result;
}

uint64_t MomentGenerationResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2B8, &qword_1B4D33968);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B71EC0();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14[15] = 0;
  sub_1B4B72150();
  sub_1B4D18C0C();
  v9 = v15[0];
  v10 = v16;
  v15[0] = 1;
  sub_1B4D18BDC();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B4B72150()
{
  result = qword_1EDC36EB8;
  if (!qword_1EDC36EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36EB8);
  }

  return result;
}

unint64_t sub_1B4B721F8()
{
  result = qword_1EB8AB2C0;
  if (!qword_1EB8AB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB2C0);
  }

  return result;
}

unint64_t sub_1B4B72250()
{
  result = qword_1EDC370A8;
  if (!qword_1EDC370A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC370A8);
  }

  return result;
}

unint64_t sub_1B4B722A8()
{
  result = qword_1EDC370B0;
  if (!qword_1EDC370B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC370B0);
  }

  return result;
}

uint64_t WorkoutRecordFactType.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-v4];
  v6 = *v0;
  if (v6 > 0x11)
  {
    if (v6 != 18)
    {
      if (v6 == 19)
      {
        return 1701011824;
      }

      goto LABEL_8;
    }

    return 0x6F69746176656C65;
  }

  else
  {
    if (v6 != 16)
    {
      if (v6 == 17)
      {
        return 0x65636E6174736964;
      }

LABEL_8:
      v11 = 0x2874736574736166;
      v12 = 0xE800000000000000;
      v10[15] = v6;
      v8 = v3;
      DistanceReference.rawValue.getter();
      sub_1B4B5A0C0(&qword_1EB8AB2C8, MEMORY[0x1E69680A0]);
      v9 = sub_1B4D18D5C();
      MEMORY[0x1B8C7C620](v9);

      (*(v2 + 8))(v5, v8);
      MEMORY[0x1B8C7C620](41, 0xE100000000000000);
      return v11;
    }

    return 0x736569726F6C6163;
  }
}

uint64_t sub_1B4B724D0(uint64_t a1)
{
  v2 = sub_1B4B73AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B7250C(uint64_t a1)
{
  v2 = sub_1B4B73AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B72548()
{
  v1 = *v0;
  v2 = 0x736569726F6C6163;
  v3 = 0x6F69746176656C65;
  v4 = 0x74736574736166;
  if (v1 != 3)
  {
    v4 = 1701011824;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65636E6174736964;
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

uint64_t sub_1B4B725E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B741D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B72608(uint64_t a1)
{
  v2 = sub_1B4B73924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B72644(uint64_t a1)
{
  v2 = sub_1B4B73924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B72680(uint64_t a1)
{
  v2 = sub_1B4B73A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B726BC(uint64_t a1)
{
  v2 = sub_1B4B73A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B726F8(uint64_t a1)
{
  v2 = sub_1B4B73A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B72734(uint64_t a1)
{
  v2 = sub_1B4B73A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B72788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4B72810(uint64_t a1)
{
  v2 = sub_1B4B739CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B7284C(uint64_t a1)
{
  v2 = sub_1B4B739CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B72888(uint64_t a1)
{
  v2 = sub_1B4B73978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B728C4(uint64_t a1)
{
  v2 = sub_1B4B73978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutRecordFactType.encode(to:)(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2D0, &qword_1B4D33B28);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v25 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2D8, &qword_1B4D33B30);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2E0, &qword_1B4D33B38);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2E8, &qword_1B4D33B40);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2F0, &qword_1B4D33B48);
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2F8, &qword_1B4D33B50);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B73924();
  sub_1B4D18EFC();
  if (v16 > 17)
  {
    if (v16 == 18)
    {
      v42 = 2;
      sub_1B4B73A20();
      v24 = v29;
      v17 = v39;
      sub_1B4D18C5C();
      (*(v30 + 8))(v24, v31);
      return (*(v38 + 8))(v15, v17);
    }

    if (v16 == 19)
    {
      v45 = 4;
      sub_1B4B73978();
      v18 = v32;
      v17 = v39;
      sub_1B4D18C5C();
      (*(v34 + 8))(v18, v36);
      return (*(v38 + 8))(v15, v17);
    }

LABEL_8:
    v44 = 3;
    sub_1B4B739CC();
    v19 = v33;
    v20 = v39;
    sub_1B4D18C5C();
    v43 = v16;
    sub_1B4AE95E4();
    v21 = v37;
    sub_1B4D18D0C();
    (*(v35 + 8))(v19, v21);
    return (*(v38 + 8))(v15, v20);
  }

  if (v16 == 16)
  {
    v40 = 0;
    sub_1B4B73AC8();
    v23 = v39;
    sub_1B4D18C5C();
    (*(v26 + 8))(v12, v10);
    return (*(v38 + 8))(v15, v23);
  }

  if (v16 != 17)
  {
    goto LABEL_8;
  }

  v41 = 1;
  sub_1B4B73A74();
  v17 = v39;
  sub_1B4D18C5C();
  (*(v27 + 8))(v9, v28);
  return (*(v38 + 8))(v15, v17);
}

uint64_t WorkoutRecordFactType.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB330, &qword_1B4D33B58);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v41 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB338, &qword_1B4D33B60);
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v52 = &v41 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB340, &qword_1B4D33B68);
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v53 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB348, &qword_1B4D33B70);
  v8 = *(v7 - 8);
  v44 = v7;
  v45 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB350, &qword_1B4D33B78);
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB358, &unk_1B4D33B80);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  v18 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B4B73924();
  v19 = v57;
  sub_1B4D18EEC();
  if (v19)
  {
    goto LABEL_9;
  }

  v20 = v13;
  v42 = v11;
  v21 = v53;
  v22 = v54;
  v57 = v15;
  v23 = v55;
  v24 = sub_1B4D18C2C();
  v25 = (2 * *(v24 + 16)) | 1;
  v58 = v24;
  v59 = v24 + 32;
  v60 = 0;
  v61 = v25;
  v26 = sub_1B49C8ABC();
  if (v26 == 5 || v60 != v61 >> 1)
  {
    v31 = sub_1B4D189BC();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820);
    *v33 = &type metadata for WorkoutRecordFactType;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    (*(v57 + 8))(v17, v14);
    swift_unknownObjectRelease();
LABEL_9:
    v40 = v56;
    return __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  if (v26 <= 1u)
  {
    if (v26)
    {
      v62 = 1;
      sub_1B4B73A74();
      sub_1B4D18B4C();
      v38 = v57;
      (*(v45 + 8))(v10, v44);
      (*(v38 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v39 = 17;
    }

    else
    {
      v62 = 0;
      sub_1B4B73AC8();
      v35 = v20;
      sub_1B4D18B4C();
      v36 = v57;
      (*(v43 + 8))(v35, v42);
      (*(v36 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v39 = 16;
    }

    v40 = v56;
  }

  else if (v26 == 2)
  {
    v62 = 2;
    sub_1B4B73A20();
    sub_1B4D18B4C();
    (*(v48 + 8))(v21, v46);
    (*(v57 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v39 = 18;
    v40 = v56;
  }

  else if (v26 == 3)
  {
    v62 = 3;
    sub_1B4B739CC();
    v27 = v52;
    sub_1B4D18B4C();
    v28 = v57;
    v29 = v23;
    sub_1B4AE9638();
    v30 = v47;
    sub_1B4D18C0C();
    (*(v51 + 8))(v27, v30);
    (*(v28 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v39 = v62;
    v40 = v56;
    v23 = v29;
  }

  else
  {
    v62 = 4;
    sub_1B4B73978();
    sub_1B4D18B4C();
    v37 = v57;
    (*(v49 + 8))(v22, v50);
    (*(v37 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v39 = 19;
    v40 = v56;
  }

  *v23 = v39;
  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t _s19FitnessIntelligence21WorkoutRecordFactTypeO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-v10];
  v12 = *a1;
  v13 = *a2;
  if (v12 > 0x11)
  {
    if (v12 == 18)
    {
      if (v13 != 18)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 != 19)
      {
        goto LABEL_10;
      }

      if (v13 != 19)
      {
        goto LABEL_15;
      }
    }

LABEL_13:
    v15 = 1;
    return v15 & 1;
  }

  if (v12 == 16)
  {
    if (v13 != 16)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v12 == 17)
  {
    if (v13 == 17)
    {
      goto LABEL_13;
    }

LABEL_15:
    v15 = 0;
    return v15 & 1;
  }

LABEL_10:
  if ((v13 & 0xFC) == 0x10)
  {
    goto LABEL_15;
  }

  v18[15] = v12;
  v18[14] = v13;
  v14 = v9;
  DistanceReference.rawValue.getter();
  DistanceReference.rawValue.getter();
  sub_1B4B5A0C0(&qword_1EDC3CB38, MEMORY[0x1E6968090]);
  v15 = sub_1B4D1816C();
  v16 = *(v5 + 8);
  v16(v7, v14);
  v16(v11, v14);
  return v15 & 1;
}

unint64_t sub_1B4B73924()
{
  result = qword_1EB8AB300;
  if (!qword_1EB8AB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB300);
  }

  return result;
}

unint64_t sub_1B4B73978()
{
  result = qword_1EB8AB308;
  if (!qword_1EB8AB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB308);
  }

  return result;
}

unint64_t sub_1B4B739CC()
{
  result = qword_1EB8AB310;
  if (!qword_1EB8AB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB310);
  }

  return result;
}

unint64_t sub_1B4B73A20()
{
  result = qword_1EB8AB318;
  if (!qword_1EB8AB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB318);
  }

  return result;
}

unint64_t sub_1B4B73A74()
{
  result = qword_1EB8AB320;
  if (!qword_1EB8AB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB320);
  }

  return result;
}

unint64_t sub_1B4B73AC8()
{
  result = qword_1EB8AB328;
  if (!qword_1EB8AB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutRecordFactType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_20;
  }

  v2 = a2 + 19;
  if (a2 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 19;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 19;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x10)
  {
    v8 = v7 - 15;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutRecordFactType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 19;
  if (a3 + 19 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xED)
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B4B73C74(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x10)
  {
    return v1 - 15;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B4B73C88(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 15;
  }

  return result;
}

unint64_t sub_1B4B73D0C()
{
  result = qword_1EB8AB360;
  if (!qword_1EB8AB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB360);
  }

  return result;
}

unint64_t sub_1B4B73D64()
{
  result = qword_1EB8AB368;
  if (!qword_1EB8AB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB368);
  }

  return result;
}

unint64_t sub_1B4B73DBC()
{
  result = qword_1EB8AB370;
  if (!qword_1EB8AB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB370);
  }

  return result;
}

unint64_t sub_1B4B73E14()
{
  result = qword_1EB8AB378;
  if (!qword_1EB8AB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB378);
  }

  return result;
}

unint64_t sub_1B4B73E6C()
{
  result = qword_1EB8AB380;
  if (!qword_1EB8AB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB380);
  }

  return result;
}

unint64_t sub_1B4B73EC4()
{
  result = qword_1EB8AB388;
  if (!qword_1EB8AB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB388);
  }

  return result;
}

unint64_t sub_1B4B73F1C()
{
  result = qword_1EB8AB390;
  if (!qword_1EB8AB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB390);
  }

  return result;
}

unint64_t sub_1B4B73F74()
{
  result = qword_1EB8AB398;
  if (!qword_1EB8AB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB398);
  }

  return result;
}

unint64_t sub_1B4B73FCC()
{
  result = qword_1EB8AB3A0;
  if (!qword_1EB8AB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3A0);
  }

  return result;
}

unint64_t sub_1B4B74024()
{
  result = qword_1EB8AB3A8;
  if (!qword_1EB8AB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3A8);
  }

  return result;
}

unint64_t sub_1B4B7407C()
{
  result = qword_1EB8AB3B0;
  if (!qword_1EB8AB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3B0);
  }

  return result;
}

unint64_t sub_1B4B740D4()
{
  result = qword_1EB8AB3B8;
  if (!qword_1EB8AB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3B8);
  }

  return result;
}

unint64_t sub_1B4B7412C()
{
  result = qword_1EB8AB3C0;
  if (!qword_1EB8AB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3C0);
  }

  return result;
}

unint64_t sub_1B4B74184()
{
  result = qword_1EB8AB3C8;
  if (!qword_1EB8AB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3C8);
  }

  return result;
}

uint64_t sub_1B4B741D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736569726F6C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746176656C65 && a2 == 0xE90000000000006ELL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736574736166 && a2 == 0xE700000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

__n128 WorkoutVoiceAlert.init(type:valueType:value:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *a2;
  v7 = a3[1].n128_u8[0];
  a4->n128_u64[0] = *a1;
  a4->n128_u8[8] = v4;
  a4->n128_u8[9] = v5;
  a4->n128_u8[10] = v6;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v7;
  return result;
}

uint64_t WorkoutVoiceAlert.ValueType.rawValue.getter()
{
  v1 = 0x746E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x20676E696C6C6F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65676172657661;
  }
}

uint64_t sub_1B4B74430()
{
  v1 = 0x70795465756C6176;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1B4B74484@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B789D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B744AC(uint64_t a1)
{
  v2 = sub_1B4B774D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B744E8(uint64_t a1)
{
  v2 = sub_1B4B774D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceAlert.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB3D0, &qword_1B4D341A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 9);
  v28 = *(v1 + 10);
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v21 = *(v1 + 32);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1B4B774D8();
  sub_1B4D18EFC();
  v25 = v7;
  LOBYTE(v26) = v8;
  BYTE1(v26) = v9;
  v29 = 0;
  sub_1B4B7752C();
  v15 = v24;
  sub_1B4D18D0C();
  if (!v15)
  {
    v16 = v21;
    v18 = v22;
    v17 = v23;
    LOBYTE(v25) = v28;
    v29 = 1;
    sub_1B4B77580();
    sub_1B4D18CAC();
    v25 = v17;
    v26 = v18;
    v27 = v16;
    v29 = 2;
    sub_1B4B775D4();
    sub_1B4D18D0C();
  }

  return (*(v4 + 8))(v6, v14);
}

uint64_t WorkoutVoiceAlert.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB3F8, &qword_1B4D341A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B774D8();
  sub_1B4D18EEC();
  if (!v2)
  {
    v19 = 0;
    sub_1B4B77628();
    sub_1B4D18C0C();
    v15 = v16;
    v9 = BYTE8(v16);
    v10 = BYTE9(v16);
    v19 = 1;
    sub_1B4B7767C();
    sub_1B4D18BAC();
    HIDWORD(v14) = v9;
    v18 = v10;
    LOBYTE(v10) = v16;
    v19 = 2;
    sub_1B4B776D0();
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    v12 = v17;
    v13 = v16;
    *a2 = v15;
    *(a2 + 8) = BYTE4(v14);
    *(a2 + 9) = v18;
    *(a2 + 10) = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t WorkoutVoiceAlert.AlertType.description(activityType:)(void *a1)
{
  if (*(v1 + 9) != 1)
  {
    return 0x6172207472616568;
  }

  v2 = *v1;
  if (*v1 <= 1)
  {
    if (v2 | *(v1 + 8))
    {
      return 0x65636E65646163;
    }

    else if ([a1 effectiveTypeIdentifier] == 13)
    {
      return 0x6465657073;
    }

    else
    {
      return 1701011824;
    }
  }

  else
  {
    v3 = *(v1 + 8);
    v4 = v2 ^ 2 | v3;
    if (v2 ^ 3 | v3)
    {
      v5 = 0x74696C7073;
    }

    else
    {
      v5 = 1701669236;
    }

    if (v4)
    {
      return v5;
    }

    else
    {
      return 0x7265776F70;
    }
  }
}

uint64_t sub_1B4B74AC8(uint64_t a1)
{
  v2 = sub_1B4B77974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74B04(uint64_t a1)
{
  v2 = sub_1B4B77974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74B40()
{
  v1 = *v0;
  v2 = 1701011824;
  v3 = 0x7265776F70;
  v4 = 1701669236;
  if (v1 != 4)
  {
    v4 = 0x73694474696C7073;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7461527472616568;
  if (v1 != 1)
  {
    v5 = 0x65636E65646163;
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

uint64_t sub_1B4B74BF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B78AF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B74C20(uint64_t a1)
{
  v2 = sub_1B4B77824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74C5C(uint64_t a1)
{
  v2 = sub_1B4B77824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701736314 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4B74D30(uint64_t a1)
{
  v2 = sub_1B4B779C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74D6C(uint64_t a1)
{
  v2 = sub_1B4B779C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74DA8(uint64_t a1)
{
  v2 = sub_1B4B77A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74DE4(uint64_t a1)
{
  v2 = sub_1B4B77A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74E20(uint64_t a1)
{
  v2 = sub_1B4B77920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74E5C(uint64_t a1)
{
  v2 = sub_1B4B77920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74E98(uint64_t a1)
{
  v2 = sub_1B4B77878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74ED4(uint64_t a1)
{
  v2 = sub_1B4B77878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74F10(uint64_t a1)
{
  v2 = sub_1B4B778CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74F4C(uint64_t a1)
{
  v2 = sub_1B4B778CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceAlert.AlertType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB418, &qword_1B4D341B0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB420, &qword_1B4D341B8);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB428, &qword_1B4D341C0);
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB430, &qword_1B4D341C8);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB438, &qword_1B4D341D0);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v28 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB440, &qword_1B4D341D8);
  v30 = *(v13 - 8);
  v31 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v28 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB448, &qword_1B4D341E0);
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B77824();
  sub_1B4D18EFC();
  if (v20 == 1)
  {
    v21 = (v47 + 8);
    if (v18 <= 1)
    {
      if (v18 | v19)
      {
        v50 = 2;
        sub_1B4B77974();
        v22 = v32;
        sub_1B4D18C5C();
        v24 = v33;
        v23 = v34;
      }

      else
      {
        v48 = 0;
        sub_1B4B77A1C();
        v22 = v29;
        sub_1B4D18C5C();
        v24 = v30;
        v23 = v31;
      }
    }

    else if (v18 ^ 2 | v19)
    {
      if (v18 ^ 3 | v19)
      {
        v53 = 5;
        sub_1B4B77878();
        v22 = v41;
        sub_1B4D18C5C();
        v24 = v42;
        v23 = v43;
      }

      else
      {
        v52 = 4;
        sub_1B4B778CC();
        v22 = v38;
        sub_1B4D18C5C();
        v24 = v39;
        v23 = v40;
      }
    }

    else
    {
      v51 = 3;
      sub_1B4B77920();
      v22 = v35;
      sub_1B4D18C5C();
      v24 = v36;
      v23 = v37;
    }

    (*(v24 + 8))(v22, v23);
    return (*v21)(v17, v15);
  }

  else
  {
    v49 = 1;
    sub_1B4B779C8();
    v25 = v44;
    sub_1B4D18C5C();
    v26 = v46;
    sub_1B4D18C9C();
    (*(v45 + 8))(v25, v26);
    return (*(v47 + 8))(v17, v15);
  }
}

uint64_t WorkoutVoiceAlert.AlertType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB488, &qword_1B4D341E8);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB490, &qword_1B4D341F0);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v43 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB498, &qword_1B4D341F8);
  v52 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v59 = &v43 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4A0, &qword_1B4D34200);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v43 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4A8, &qword_1B4D34208);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4B0, &qword_1B4D34210);
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4B8, &unk_1B4D34218);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - v17;
  v19 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1B4B77824();
  v20 = v62;
  sub_1B4D18EEC();
  if (!v20)
  {
    v21 = v14;
    v44 = v12;
    v45 = v11;
    v23 = v59;
    v22 = v60;
    v24 = v61;
    v62 = v16;
    v25 = v15;
    v26 = sub_1B4D18C2C();
    v27 = (2 * *(v26 + 16)) | 1;
    v64 = v26;
    v65 = v26 + 32;
    v66 = 0;
    v67 = v27;
    v28 = sub_1B49C7FAC();
    if (v28 != 6 && v66 == v67 >> 1)
    {
      if (v28 <= 2u)
      {
        if (v28)
        {
          if (v28 == 1)
          {
            v68 = 1;
            sub_1B4B779C8();
            v29 = v45;
            sub_1B4D18B4C();
            v37 = v50;
            v38 = sub_1B4D18B9C();
            v40 = v39;
            (*(v48 + 8))(v29, v37);
            (*(v62 + 8))(v18, v15);
            swift_unknownObjectRelease();
            v41 = 0;
            v42 = v40 & 1;
            goto LABEL_17;
          }

          v68 = 2;
          sub_1B4B77974();
          v36 = v57;
          sub_1B4D18B4C();
          (*(v49 + 8))(v36, v51);
          (*(v62 + 8))(v18, v15);
          swift_unknownObjectRelease();
          v42 = 0;
          v38 = 1;
        }

        else
        {
          v68 = 0;
          sub_1B4B77A1C();
          sub_1B4D18B4C();
          (*(v46 + 8))(v21, v44);
          (*(v62 + 8))(v18, v15);
          swift_unknownObjectRelease();
          v38 = 0;
          v42 = 0;
        }

        v41 = 1;
        goto LABEL_17;
      }

      v34 = v62;
      if (v28 != 3)
      {
        v35 = v58;
        if (v28 == 4)
        {
          v68 = 4;
          sub_1B4B778CC();
          sub_1B4D18B4C();
          (*(v54 + 8))(v22, v53);
          (*(v34 + 8))(v18, v25);
          swift_unknownObjectRelease();
          v42 = 0;
          v41 = 1;
          v38 = 3;
        }

        else
        {
          v68 = 5;
          sub_1B4B77878();
          sub_1B4D18B4C();
          (*(v55 + 8))(v24, v56);
          (*(v34 + 8))(v18, v25);
          swift_unknownObjectRelease();
          v42 = 0;
          v41 = 1;
          v38 = 4;
        }

        goto LABEL_19;
      }

      v68 = 3;
      sub_1B4B77920();
      sub_1B4D18B4C();
      (*(v52 + 8))(v23, v47);
      (*(v34 + 8))(v18, v25);
      swift_unknownObjectRelease();
      v42 = 0;
      v41 = 1;
      v38 = 2;
LABEL_17:
      v35 = v58;
LABEL_19:
      *v35 = v38;
      *(v35 + 8) = v42;
      *(v35 + 9) = v41;
      return __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    v30 = sub_1B4D189BC();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820);
    *v32 = &type metadata for WorkoutVoiceAlert.AlertType;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v62 + 8))(v18, v15);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v63);
}

FitnessIntelligence::WorkoutVoiceAlert::ValueType_optional __swiftcall WorkoutVoiceAlert.ValueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4B75FF0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B760A0(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4B7613C(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4B761F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746E6572727563;
  if (v2 != 1)
  {
    v5 = 0x20676E696C6C6F72;
    v4 = 0xEF65676172657661;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65676172657661;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B4B76310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746E6572727563;
  if (v2 != 1)
  {
    v5 = 0x20676E696C6C6F72;
    v4 = 0xEF65676172657661;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x65676172657661;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x746E6572727563;
  if (*a2 != 1)
  {
    v8 = 0x20676E696C6C6F72;
    v3 = 0xEF65676172657661;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65676172657661;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4B7642C()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6E615265756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1B4B76480@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B78CFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B764A8(uint64_t a1)
{
  v2 = sub_1B4B77AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B764E4(uint64_t a1)
{
  v2 = sub_1B4B77AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B76520(uint64_t a1)
{
  v2 = sub_1B4B77BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B7655C(uint64_t a1)
{
  v2 = sub_1B4B77BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B76598(uint64_t a1)
{
  v2 = sub_1B4B77B98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B765D4(uint64_t a1)
{
  v2 = sub_1B4B77B98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B76610()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B4B7662C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B4B766F8(uint64_t a1)
{
  v2 = sub_1B4B77B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B76734(uint64_t a1)
{
  v2 = sub_1B4B77B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceAlert.Value.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4C0, &qword_1B4D34228);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4C8, &qword_1B4D34230);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4D0, &qword_1B4D34238);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4D8, &qword_1B4D34240);
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B77AF0();
  sub_1B4D18EFC();
  if (v14)
  {
    if (v14 != 1)
    {
      v32 = 0;
      sub_1B4B77BEC();
      v20 = v30;
      sub_1B4D18C5C();
      (*(v22 + 8))(v10, v23);
      return (*(v29 + 8))(v13, v20);
    }

    v36 = 2;
    sub_1B4B77B44();
    v15 = v26;
    v16 = v30;
    sub_1B4D18C5C();
    v35 = 0;
    v17 = v28;
    v18 = v31;
    sub_1B4D18CDC();
    if (!v18)
    {
      v34 = 1;
      sub_1B4D18CDC();
    }

    (*(v27 + 8))(v15, v17);
  }

  else
  {
    v33 = 1;
    sub_1B4B77B98();
    v16 = v30;
    sub_1B4D18C5C();
    v19 = v25;
    sub_1B4D18CDC();
    (*(v24 + 8))(v7, v19);
  }

  return (*(v29 + 8))(v13, v16);
}

uint64_t WorkoutVoiceAlert.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB500, &qword_1B4D34248);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v47 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB508, &qword_1B4D34250);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB510, &qword_1B4D34258);
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB518, &qword_1B4D34260);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v13;
  v15 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B4B77AF0();
  v16 = v48;
  sub_1B4D18EEC();
  if (!v16)
  {
    v48 = 0;
    v18 = v46;
    v17 = v47;
    v19 = sub_1B4D18C2C();
    v20 = (2 * *(v19 + 16)) | 1;
    v50 = v19;
    v51 = v19 + 32;
    v52 = 0;
    v53 = v20;
    v21 = sub_1B49C7FE0();
    if (v21 == 3 || v52 != v53 >> 1)
    {
      v30 = sub_1B4D189BC();
      swift_allocError();
      v31 = v14;
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820);
      *v33 = &type metadata for WorkoutVoiceAlert.Value;
      sub_1B4D18B5C();
      sub_1B4D189AC();
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v12 + 8))(v31, v11);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }

    if (v21)
    {
      if (v21 == 1)
      {
        v54 = 1;
        sub_1B4B77B98();
        v22 = v7;
        v23 = v48;
        sub_1B4D18B4C();
        v24 = v45;
        if (!v23)
        {
          v25 = v42;
          sub_1B4D18BDC();
          v27 = v26;
          (*(v43 + 8))(v22, v25);
          (*(v12 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v28 = 0;
          v29 = 0;
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      v54 = 2;
      sub_1B4B77B44();
      v36 = v48;
      sub_1B4D18B4C();
      v24 = v45;
      if (v36)
      {
LABEL_16:
        (*(v12 + 8))(v14, v11);
        goto LABEL_10;
      }

      v48 = v14;
      v54 = 0;
      v37 = v41;
      sub_1B4D18BDC();
      v27 = v38;
      v54 = 1;
      sub_1B4D18BDC();
      v29 = v39;
      (*(v44 + 8))(v17, v37);
      (*(v12 + 8))(v48, v11);
      swift_unknownObjectRelease();
      v28 = 1;
    }

    else
    {
      v54 = 0;
      sub_1B4B77BEC();
      v35 = v48;
      sub_1B4D18B4C();
      if (v35)
      {
        goto LABEL_16;
      }

      (*(v18 + 8))(v10, v8);
      (*(v12 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v28 = 2;
      v27 = 0;
      v29 = 0;
      v24 = v45;
    }

LABEL_14:
    *v24 = v27;
    *(v24 + 8) = v29;
    *(v24 + 16) = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v49);
}

BOOL _s19FitnessIntelligence17WorkoutVoiceAlertV2eeoiySbAC_ACtFZ_0(uint64_t a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 10);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 10);
  v10 = a2[2];
  v11 = a2[3];
  v12 = *(a2 + 32);
  if (*(a1 + 9) == 1)
  {
    v13 = *(a1 + 8);
    if (v2 <= 1)
    {
      if (v2 | v13)
      {
        if (!*(a2 + 9) || *&v7 ^ 1 | v8)
        {
          return 0;
        }

        goto LABEL_27;
      }

      if (!*(a2 + 9))
      {
        return 0;
      }
    }

    else
    {
      if (v2 ^ 2 | v13)
      {
        if (v2 ^ 3 | v13)
        {
          if (!*(a2 + 9) || __PAIR128__(v8, *&v7) < 4)
          {
            return 0;
          }
        }

        else if (!*(a2 + 9) || *&v7 ^ 3 | v8)
        {
          return 0;
        }

        goto LABEL_27;
      }

      if (!*(a2 + 9))
      {
        return 0;
      }

      *&v7 ^= 2uLL;
    }

    if (*&v7 | v8)
    {
      return 0;
    }

    goto LABEL_27;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_27;
  }

  result = 0;
  if ((v8 & 1) == 0 && v2 == *&v7)
  {
LABEL_27:
    if (v3 == 3)
    {
      if (v9 == 3)
      {
        goto LABEL_29;
      }
    }

    else if (v9 != 3)
    {
      v15 = 0xE700000000000000;
      v16 = 0xE700000000000000;
      v17 = 0x746E6572727563;
      if (v3 != 1)
      {
        v17 = 0x20676E696C6C6F72;
        v16 = 0xEF65676172657661;
      }

      if (v3)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x65676172657661;
      }

      if (v3)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0xE700000000000000;
      }

      v20 = 0x746E6572727563;
      if (v9 != 1)
      {
        v20 = 0x20676E696C6C6F72;
        v15 = 0xEF65676172657661;
      }

      if (*(a2 + 10))
      {
        v21 = v20;
      }

      else
      {
        v21 = 0x65676172657661;
      }

      if (*(a2 + 10))
      {
        v22 = v15;
      }

      else
      {
        v22 = 0xE700000000000000;
      }

      if (v18 == v21 && v19 == v22)
      {

        if (v6)
        {
LABEL_30:
          if (v6 == 1)
          {
            if (v12 != 1 || v4 != v10 || v5 != v11)
            {
              return 0;
            }
          }

          else if (v12 != 2 || *&v11 | *&v10)
          {
            return 0;
          }

          return 1;
        }

        return !v12 && v4 == v10;
      }

      v23 = sub_1B4D18DCC();

      if (v23)
      {
LABEL_29:
        if (v6)
        {
          goto LABEL_30;
        }

        return !v12 && v4 == v10;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1B4B774D8()
{
  result = qword_1EB8AB3D8;
  if (!qword_1EB8AB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3D8);
  }

  return result;
}

unint64_t sub_1B4B7752C()
{
  result = qword_1EB8AB3E0;
  if (!qword_1EB8AB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3E0);
  }

  return result;
}

unint64_t sub_1B4B77580()
{
  result = qword_1EB8AB3E8;
  if (!qword_1EB8AB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3E8);
  }

  return result;
}

unint64_t sub_1B4B775D4()
{
  result = qword_1EB8AB3F0;
  if (!qword_1EB8AB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3F0);
  }

  return result;
}

unint64_t sub_1B4B77628()
{
  result = qword_1EB8AB400;
  if (!qword_1EB8AB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB400);
  }

  return result;
}

unint64_t sub_1B4B7767C()
{
  result = qword_1EB8AB408;
  if (!qword_1EB8AB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB408);
  }

  return result;
}

unint64_t sub_1B4B776D0()
{
  result = qword_1EB8AB410;
  if (!qword_1EB8AB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB410);
  }

  return result;
}

BOOL _s19FitnessIntelligence17WorkoutVoiceAlertV0E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 9) != 1)
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      if (*(a1 + 8))
      {
        if (v4)
        {
          return 1;
        }
      }

      else if ((v4 & 1) == 0 && v2 == v3)
      {
        return 1;
      }
    }

    return 0;
  }

  v5 = *(a1 + 8);
  if (v2 > 1)
  {
    if (v2 ^ 2 | v5)
    {
      if (!(v2 ^ 3 | v5))
      {
        return *(a2 + 9) && !(v3 ^ 3 | v4);
      }

      if (*(a2 + 9) && v3 > 3)
      {
        return 1;
      }
    }

    else if (*(a2 + 9) && !(v3 ^ 2 | v4))
    {
      return 1;
    }

    return 0;
  }

  if (!(v2 | v5))
  {
    return *(a2 + 9) && !(v3 | v4);
  }

  return *(a2 + 9) && !(v3 ^ 1 | v4);
}

unint64_t sub_1B4B77824()
{
  result = qword_1EB8AB450;
  if (!qword_1EB8AB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB450);
  }

  return result;
}

unint64_t sub_1B4B77878()
{
  result = qword_1EB8AB458;
  if (!qword_1EB8AB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB458);
  }

  return result;
}