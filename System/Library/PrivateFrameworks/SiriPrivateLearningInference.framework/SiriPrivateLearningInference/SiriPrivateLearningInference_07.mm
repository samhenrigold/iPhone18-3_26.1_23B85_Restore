uint64_t sub_222BBB614()
{
  v1 = *(v0 + 2);
  v3[38] = *v0;
  v4 = v1;
  sub_222C952FC();
  GroundTruthSource.hash(into:)(v3);
  return sub_222C9534C();
}

uint64_t sub_222BBB66C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v4[38] = *v1;
  v5 = v2;
  sub_222C952FC();
  GroundTruthSource.hash(into:)(v4);
  return sub_222C9534C();
}

uint64_t _s28SiriPrivateLearningInference17GroundTruthSourceO2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }

      return sub_222BBDD4C(v4, v6);
    }

    if (v7 != 3)
    {
      return 0;
    }

    if (v4 > 4u)
    {
      switch(v4)
      {
        case 5u:
          return v6 == 5;
        case 6u:
          return v6 == 6;
        case 7u:
          return v6 == 7;
      }
    }

    else
    {
      switch(v4)
      {
        case 2u:
          return v6 == 2;
        case 3u:
          return v6 == 3;
        case 4u:
          return v6 == 4;
      }
    }

    return v6 - 2 >= 6 && ((v6 ^ v4) & 0xFFFFFF01) == 0;
  }

  if (!v5)
  {
    if (!v7)
    {

      return sub_222BBDEAC(v4, v6);
    }

    return 0;
  }

  if (v7 != 1)
  {
    return 0;
  }

  v9 = 0xD000000000000011;
  v10 = "previouslySurfaced";
  if (v4)
  {
    if (v4 == 1)
    {
      v11 = "abandonmentAndInAppFollowup";
    }

    else
    {
      v11 = "partialRepetition";
    }

    v12 = 0xD000000000000011;
  }

  else
  {
    v12 = 0xD00000000000001BLL;
    v11 = "previouslySurfaced";
  }

  if (v6)
  {
    v10 = "abandonmentAndInAppFollowup";
    if (v6 != 1)
    {
      v10 = "partialRepetition";
    }
  }

  else
  {
    v9 = 0xD00000000000001BLL;
  }

  if (v12 == v9 && (v11 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {

    return 1;
  }

  else
  {
    v13 = sub_222C951FC();

    return v13 & 1;
  }
}

unint64_t sub_222BBB8E0()
{
  result = qword_27D026090;
  if (!qword_27D026090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026090);
  }

  return result;
}

unint64_t sub_222BBB934()
{
  result = qword_27D026098;
  if (!qword_27D026098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026098);
  }

  return result;
}

unint64_t sub_222BBB988()
{
  result = qword_27D0260A0;
  if (!qword_27D0260A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260A0);
  }

  return result;
}

unint64_t sub_222BBB9DC()
{
  result = qword_27D0260A8;
  if (!qword_27D0260A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260A8);
  }

  return result;
}

unint64_t sub_222BBBA30()
{
  result = qword_27D0260B0;
  if (!qword_27D0260B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260B0);
  }

  return result;
}

unint64_t sub_222BBBA84()
{
  result = qword_27D0260B8;
  if (!qword_27D0260B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260B8);
  }

  return result;
}

unint64_t sub_222BBBAD8()
{
  result = qword_27D0260C0;
  if (!qword_27D0260C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260C0);
  }

  return result;
}

unint64_t sub_222BBBB2C()
{
  result = qword_27D0260C8;
  if (!qword_27D0260C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260C8);
  }

  return result;
}

unint64_t sub_222BBBB80()
{
  result = qword_27D0260D0;
  if (!qword_27D0260D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0260D0);
  }

  return result;
}

unint64_t sub_222BBBBD4()
{
  result = qword_27D026100;
  if (!qword_27D026100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026100);
  }

  return result;
}

unint64_t sub_222BBBC28()
{
  result = qword_27D026108;
  if (!qword_27D026108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026108);
  }

  return result;
}

unint64_t sub_222BBBC7C()
{
  result = qword_27D026110;
  if (!qword_27D026110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026110);
  }

  return result;
}

unint64_t sub_222BBBCD0()
{
  result = qword_27D026118;
  if (!qword_27D026118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026118);
  }

  return result;
}

unint64_t sub_222BBBD28()
{
  result = qword_27D026120;
  if (!qword_27D026120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026120);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GroundTruthSource(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    if ((a2 + 33554179) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GroundTruthSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_222BBBF04()
{
  result = qword_27D026128;
  if (!qword_27D026128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026128);
  }

  return result;
}

unint64_t sub_222BBBF5C()
{
  result = qword_27D026130;
  if (!qword_27D026130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026130);
  }

  return result;
}

unint64_t sub_222BBBFB4()
{
  result = qword_27D026138;
  if (!qword_27D026138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026138);
  }

  return result;
}

unint64_t sub_222BBC00C()
{
  result = qword_27D026140;
  if (!qword_27D026140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026140);
  }

  return result;
}

unint64_t sub_222BBC064()
{
  result = qword_27D026148;
  if (!qword_27D026148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026148);
  }

  return result;
}

unint64_t sub_222BBC0BC()
{
  result = qword_27D026150;
  if (!qword_27D026150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026150);
  }

  return result;
}

unint64_t sub_222BBC114()
{
  result = qword_27D026158;
  if (!qword_27D026158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026158);
  }

  return result;
}

unint64_t sub_222BBC16C()
{
  result = qword_27D026160;
  if (!qword_27D026160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026160);
  }

  return result;
}

unint64_t sub_222BBC1C4()
{
  result = qword_27D026168;
  if (!qword_27D026168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026168);
  }

  return result;
}

unint64_t sub_222BBC21C()
{
  result = qword_27D026170;
  if (!qword_27D026170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026170);
  }

  return result;
}

unint64_t sub_222BBC274()
{
  result = qword_27D026178;
  if (!qword_27D026178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026178);
  }

  return result;
}

unint64_t sub_222BBC2CC()
{
  result = qword_27D026180;
  if (!qword_27D026180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026180);
  }

  return result;
}

unint64_t sub_222BBC324()
{
  result = qword_27D026188;
  if (!qword_27D026188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026188);
  }

  return result;
}

unint64_t sub_222BBC37C()
{
  result = qword_27D026190;
  if (!qword_27D026190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026190);
  }

  return result;
}

unint64_t sub_222BBC3D4()
{
  result = qword_27D026198;
  if (!qword_27D026198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026198);
  }

  return result;
}

uint64_t sub_222BBC428(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6143656E6F6870 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746361746E6F63 && a2 == 0xED000074706D6F72 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000222CAAEB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222BBC5A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_222C951FC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_222BBC634(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v34 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  MEMORY[0x28223BE20](v40);
  v10 = &v34 - v9;
  v43 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  MEMORY[0x28223BE20](v43);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_20;
  }

  if (!v17 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v34 = (v5 + 32);
  v35 = (v5 + 8);
  v37 = *(v14 + 72);
  v38 = (v5 + 48);
  v42 = v4;
  while (1)
  {
    sub_222BC3370(v19, v16, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    sub_222BC3370(v20, v12, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    if ((sub_222C9362C() & 1) == 0)
    {
LABEL_16:
      sub_222BC33D8(v12, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      sub_222BC33D8(v16, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      goto LABEL_20;
    }

    v21 = v43[5];
    v22 = *(v40 + 48);
    sub_222B5551C(&v16[v21], v10);
    sub_222B5551C(&v12[v21], &v10[v22]);
    v23 = *v38;
    if ((*v38)(v10, 1, v4) != 1)
    {
      break;
    }

    if (v23(&v10[v22], 1, v4) != 1)
    {
      sub_222BC33D8(v12, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      sub_222BC33D8(v16, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      goto LABEL_19;
    }

    sub_222B4FCD4(v10, &unk_27D026290, &qword_222C96B40);
LABEL_11:
    v28 = v43;
    if (v16[v43[6]] != v12[v43[6]])
    {
      goto LABEL_16;
    }

    v29 = v16[v43[7]];
    sub_222BC33D8(v16, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v30 = v12[v28[7]];
    sub_222BC33D8(v12, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v31 = v29 ^ v30;
    v4 = v42;
    if ((v31 & 1) == 0)
    {
      v20 += v37;
      v19 += v37;
      if (--v17)
      {
        continue;
      }
    }

    v32 = v31 ^ 1;
    return v32 & 1;
  }

  sub_222B5551C(v10, v41);
  if (v23(&v10[v22], 1, v4) != 1)
  {
    v24 = v39;
    (*v34)(v39, &v10[v22], v4);
    sub_222BC3438(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v25 = sub_222C9447C();
    v26 = v42;
    v36 = v25;
    v27 = *v35;
    (*v35)(v24, v42);
    v27(v41, v26);
    sub_222B4FCD4(v10, &unk_27D026290, &qword_222C96B40);
    if ((v36 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  sub_222BC33D8(v12, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  sub_222BC33D8(v16, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  (*v35)(v41, v4);
LABEL_19:
  sub_222B4FCD4(v10, &qword_27D025290, &unk_222C97C30);
LABEL_20:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_222BBCBC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_222C951FC() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7 || (v5 != v8 || v6 != v7) && (sub_222C951FC() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_222BBCCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinContactGroundTruth(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    v51 = "quickHangupAndInAppFollowup";
    v52 = "successfulOneShot";
    v53 = "partialRepetition";
    v49 = "abandonmentAndInAppFollowup";
    v50 = "dismissalAndInAppFollowup";
    v47 = "erInteracted";
    v48 = "previouslySurfaced";
    v45 = "disambiguationNotChosen";
    v46 = "disambiguationChosen";
    v43 = "confirmationChosen";
    v44 = "disambiguationAbandoned";
    v42 = "confirmationNotChosen";
    do
    {
      sub_222BC3370(v13, v10, type metadata accessor for ThinContactGroundTruth);
      sub_222BC3370(v14, v6, type metadata accessor for ThinContactGroundTruth);
      if ((sub_222C9362C() & 1) == 0 || ((v17 = *(v4 + 20), v18 = *&v10[v17], v19 = *&v10[v17 + 8], v20 = &v6[v17], v18 == *v20) ? (v21 = v19 == *(v20 + 1)) : (v21 = 0), !v21 && (sub_222C951FC() & 1) == 0))
      {
LABEL_99:
        sub_222BC33D8(v6, type metadata accessor for ThinContactGroundTruth);
        sub_222BC33D8(v10, type metadata accessor for ThinContactGroundTruth);
        return 0;
      }

      v22 = *(v4 + 24);
      v23 = *&v10[v22];
      v24 = v10[v22 + 2];
      v25 = &v6[v22];
      v26 = *&v6[v22];
      v27 = v25[2];
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          if (v27 != 3)
          {
            goto LABEL_99;
          }

          if (v23 > 4u)
          {
            switch(v23)
            {
              case 5u:
                v35 = v26 == 5;
                break;
              case 6u:
                v35 = v26 == 6;
                break;
              case 7u:
                v35 = v26 == 7;
                break;
              default:
                goto LABEL_90;
            }
          }

          else
          {
            switch(v23)
            {
              case 2u:
                v35 = v26 == 2;
                break;
              case 3u:
                v35 = v26 == 3;
                break;
              case 4u:
                v35 = v26 == 4;
                break;
              default:
LABEL_90:
                if (v26 - 2 < 6)
                {
                  goto LABEL_99;
                }

                v40 = v26 ^ v23;
                if (v40)
                {
                  goto LABEL_99;
                }

                v16 = v40 < 0x100;
                goto LABEL_6;
            }
          }

          v16 = v35;
LABEL_6:
          sub_222BC33D8(v6, type metadata accessor for ThinContactGroundTruth);
          sub_222BC33D8(v10, type metadata accessor for ThinContactGroundTruth);
          if ((v16 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_7;
        }

        if (v27 != 2)
        {
          goto LABEL_99;
        }

        if (v23 > 2u)
        {
          if (v23 == 3)
          {
            v28 = 0xD000000000000012;
            v30 = v44;
          }

          else
          {
            v28 = 0xD000000000000015;
            if (v23 == 4)
            {
              v30 = v43;
            }

            else
            {
              v30 = v42;
            }
          }
        }

        else if (v23)
        {
          v28 = 0xD000000000000017;
          if (v23 == 1)
          {
            v30 = v46;
          }

          else
          {
            v30 = v45;
          }
        }

        else
        {
          v28 = 0xD000000000000014;
          v30 = v47;
        }

        if (v26 > 2u)
        {
          if (v26 == 3)
          {
            v31 = 0xD000000000000012;
            v33 = v44;
            v34 = v30 | 0x8000000000000000;
          }

          else
          {
            v31 = 0xD000000000000015;
            if (v26 == 4)
            {
              v33 = v43;
            }

            else
            {
              v33 = v42;
            }

            v34 = v30 | 0x8000000000000000;
          }
        }

        else if (v26)
        {
          v31 = 0xD000000000000017;
          if (v26 == 1)
          {
            v33 = v46;
          }

          else
          {
            v33 = v45;
          }

          v34 = v30 | 0x8000000000000000;
        }

        else
        {
          v31 = 0xD000000000000014;
          v33 = v47;
          v34 = v30 | 0x8000000000000000;
        }
      }

      else if (v24)
      {
        if (v27 != 1)
        {
          goto LABEL_99;
        }

        v31 = 0xD00000000000001BLL;
        if (v23)
        {
          v28 = 0xD000000000000011;
          if (v23 == 1)
          {
            v32 = v49;
            v26 = v26;
            if (!v26)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v32 = v53;
            v26 = v26;
            if (!v26)
            {
LABEL_49:
              v33 = v48;
              v34 = v32 | 0x8000000000000000;
              goto LABEL_68;
            }
          }
        }

        else
        {
          v28 = 0xD00000000000001BLL;
          v32 = v48;
          v26 = v26;
          if (!v26)
          {
            goto LABEL_49;
          }
        }

        v21 = v26 == 1;
        v33 = v53;
        if (v21)
        {
          v33 = v49;
        }

        v31 = 0xD000000000000011;
        v34 = v32 | 0x8000000000000000;
      }

      else
      {
        if (v27)
        {
          goto LABEL_99;
        }

        if (v23 > 1u)
        {
          if (v23 == 2)
          {
            v28 = 0xD000000000000021;
            v29 = v50;
          }

          else
          {
            v28 = 0xD000000000000011;
            v29 = v53;
          }
        }

        else if (v23)
        {
          v28 = 0xD000000000000019;
          v29 = v51;
        }

        else
        {
          v28 = 0xD00000000000001BLL;
          v29 = v52;
        }

        v34 = v29 | 0x8000000000000000;
        v36 = 0xD00000000000001BLL;
        v37 = 0xD000000000000021;
        if (v26 != 2)
        {
          v37 = 0xD000000000000011;
        }

        v38 = v50;
        if (v26 != 2)
        {
          v38 = v53;
        }

        if (v26)
        {
          v36 = 0xD000000000000019;
        }

        v39 = v52;
        if (v26)
        {
          v39 = v51;
        }

        if (v26 <= 1u)
        {
          v31 = v36;
        }

        else
        {
          v31 = v37;
        }

        if (v26 <= 1u)
        {
          v33 = v39;
        }

        else
        {
          v33 = v38;
        }
      }

LABEL_68:
      if (v28 != v31 || v34 != (v33 | 0x8000000000000000))
      {
        v16 = sub_222C951FC();

        goto LABEL_6;
      }

      sub_222BC33D8(v6, type metadata accessor for ThinContactGroundTruth);
      sub_222BC33D8(v10, type metadata accessor for ThinContactGroundTruth);
LABEL_7:
      v14 += v15;
      v13 += v15;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t sub_222BBD2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 57);
    v4 = (a2 + 57);
    do
    {
      if (*(v3 - 25) != *(v4 - 25) || *(v3 - 17) != *(v4 - 17) || *(v3 - 9) != *(v4 - 9))
      {
        return 0;
      }

      v7 = *(v3 - 1);
      v8 = *(v4 - 1);
      if (v7 > 5)
      {
        switch(v7)
        {
          case 6u:
            if (v8 != 6)
            {
              return 0;
            }

            goto LABEL_36;
          case 7u:
            if (v8 != 7)
            {
              return 0;
            }

            goto LABEL_36;
          case 8u:
            if (v8 != 8)
            {
              return 0;
            }

            goto LABEL_36;
        }
      }

      else
      {
        switch(v7)
        {
          case 3u:
            if (v8 != 3)
            {
              return 0;
            }

            goto LABEL_36;
          case 4u:
            if (v8 != 4)
            {
              return 0;
            }

            goto LABEL_36;
          case 5u:
            if (v8 != 5)
            {
              return 0;
            }

            goto LABEL_36;
        }
      }

      result = 0;
      if ((v8 - 9) > 0xFFFFFFF9 || v7 != v8)
      {
        return result;
      }

LABEL_36:
      v10 = *v3 | (*(v3 + 2) << 16);
      v11 = *v4 | (*(v4 + 2) << 16);
      if (BYTE2(v10) == 255)
      {
        if (BYTE2(v11) != 255)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (BYTE2(v11) == 255)
      {
        return 0;
      }

      if (BYTE2(v10) <= 1u)
      {
        if (!BYTE2(v10))
        {
          if (BYTE2(v11))
          {
            return 0;
          }

          if (*v3 > 1u)
          {
            if (*v3 == 2)
            {
              v12 = 0xD000000000000021;
              v13 = "dismissalAndInAppFollowup";
            }

            else
            {
              v12 = 0xD000000000000011;
              v13 = "partialRepetition";
            }
          }

          else if (*v3)
          {
            v12 = 0xD000000000000019;
            v13 = "quickHangupAndInAppFollowup";
          }

          else
          {
            v12 = 0xD00000000000001BLL;
            v13 = "successfulOneShot";
          }

          if (*v4 <= 1u)
          {
            if (*v4)
            {
              v15 = 0xD000000000000019;
              v17 = "quickHangupAndInAppFollowup";
            }

            else
            {
              v15 = 0xD00000000000001BLL;
              v17 = "successfulOneShot";
            }

            goto LABEL_102;
          }

          if (*v4 == 2)
          {
            v15 = 0xD000000000000021;
            v17 = "dismissalAndInAppFollowup";
            goto LABEL_102;
          }

          v15 = 0xD000000000000011;
LABEL_86:
          v17 = "partialRepetition";
          goto LABEL_102;
        }

        if (BYTE2(v11) != 1)
        {
          return 0;
        }

        v15 = 0xD00000000000001BLL;
        if (*v3)
        {
          v12 = 0xD000000000000011;
          if (*v3 == 1)
          {
            v13 = "abandonmentAndInAppFollowup";
            v16 = *v4;
            if (*v4)
            {
              goto LABEL_54;
            }

LABEL_74:
            v17 = "previouslySurfaced";
            goto LABEL_102;
          }

          v13 = "partialRepetition";
          v16 = *v4;
          if (!*v4)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v12 = 0xD00000000000001BLL;
          v13 = "previouslySurfaced";
          v16 = *v4;
          if (!*v4)
          {
            goto LABEL_74;
          }
        }

LABEL_54:
        v15 = 0xD000000000000011;
        if (v16 == 1)
        {
          v17 = "abandonmentAndInAppFollowup";
          goto LABEL_102;
        }

        goto LABEL_86;
      }

      if (BYTE2(v10) == 2)
      {
        if (BYTE2(v11) != 2)
        {
          return 0;
        }

        v14 = *v3;
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v12 = 0xD000000000000012;
            v13 = "disambiguationAbandoned";
          }

          else
          {
            v12 = 0xD000000000000015;
            if (v14 == 4)
            {
              v13 = "confirmationChosen";
            }

            else
            {
              v13 = "confirmationNotChosen";
            }
          }
        }

        else if (*v3)
        {
          v12 = 0xD000000000000017;
          if (v14 == 1)
          {
            v13 = "disambiguationChosen";
          }

          else
          {
            v13 = "disambiguationNotChosen";
          }
        }

        else
        {
          v12 = 0xD000000000000014;
          v13 = "erInteracted";
        }

        v20 = *v4;
        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v15 = 0xD000000000000012;
            v17 = "disambiguationAbandoned";
          }

          else
          {
            v15 = 0xD000000000000015;
            if (v20 == 4)
            {
              v17 = "confirmationChosen";
            }

            else
            {
              v17 = "confirmationNotChosen";
            }
          }
        }

        else if (*v4)
        {
          v15 = 0xD000000000000017;
          if (v20 == 1)
          {
            v17 = "disambiguationChosen";
          }

          else
          {
            v17 = "disambiguationNotChosen";
          }
        }

        else
        {
          v15 = 0xD000000000000014;
          v17 = "erInteracted";
        }

LABEL_102:
        if (v12 == v15 && (v13 | 0x8000000000000000) == (v17 | 0x8000000000000000))
        {
        }

        else
        {
          v21 = sub_222C951FC();

          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_6;
      }

      if (BYTE2(v11) != 3)
      {
        return 0;
      }

      v18 = *v4;
      v19 = *v3;
      if (v19 > 4)
      {
        switch(v19)
        {
          case 5u:
            if (v18 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          case 6u:
            if (v18 != 6)
            {
              return 0;
            }

            goto LABEL_6;
          case 7u:
            if (v18 != 7)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      else
      {
        switch(v19)
        {
          case 2u:
            if (v18 != 2)
            {
              return 0;
            }

            goto LABEL_6;
          case 3u:
            if (v18 != 3)
            {
              return 0;
            }

            goto LABEL_6;
          case 4u:
            if (v18 != 4)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      if ((v18 - 2) < 6 || ((*v4 ^ *v3) & 0xFF01) != 0)
      {
        return 0;
      }

LABEL_6:
      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_222BBD800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinMediaGroundTruth(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_222BC3370(v13, v10, type metadata accessor for ThinMediaGroundTruth);
      sub_222BC3370(v14, v6, type metadata accessor for ThinMediaGroundTruth);
      if ((sub_222C9362C() & 1) == 0)
      {
        break;
      }

      v16 = v4[5];
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v6[v16];
      v20 = v17 == *v19 && v18 == *(v19 + 1);
      if (!v20 && (sub_222C951FC() & 1) == 0)
      {
        break;
      }

      v21 = v4[6];
      v22 = v10[v21];
      v23 = v10[v21];
      v24 = v6[v21];
      if (v22 < 0)
      {
        if ((v24 & 0x80) == 0 || ((v24 ^ v23) & 0x7F) != 0)
        {
          break;
        }
      }

      else if (v23 != v24)
      {
        break;
      }

      v25 = v4[7];
      v26 = v10[v25];
      v27 = v6[v25];
      if (v26 == 3)
      {
        if (v27 != 3)
        {
          break;
        }

        sub_222BC33D8(v6, type metadata accessor for ThinMediaGroundTruth);
        sub_222BC33D8(v10, type metadata accessor for ThinMediaGroundTruth);
      }

      else
      {
        if (v27 == 3)
        {
          break;
        }

        sub_222BC33D8(v6, type metadata accessor for ThinMediaGroundTruth);
        sub_222BC33D8(v10, type metadata accessor for ThinMediaGroundTruth);
        if (v26 != v27)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_222BC33D8(v6, type metadata accessor for ThinMediaGroundTruth);
    sub_222BC33D8(v10, type metadata accessor for ThinMediaGroundTruth);
  }

  return 0;
}

uint64_t sub_222BBDAA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 57);
    v4 = (a2 + 57);
    do
    {
      if (*(v3 - 25) != *(v4 - 25) || *(v3 - 17) != *(v4 - 17) || *(v3 - 9) != *(v4 - 9))
      {
        return 0;
      }

      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v7 > 5)
      {
        switch(v7)
        {
          case 6u:
            if (v9 != 6)
            {
              return 0;
            }

            goto LABEL_36;
          case 7u:
            if (v9 != 7)
            {
              return 0;
            }

            goto LABEL_36;
          case 8u:
            if (v9 != 8)
            {
              return 0;
            }

            goto LABEL_36;
        }
      }

      else
      {
        switch(v7)
        {
          case 3u:
            if (v9 != 3)
            {
              return 0;
            }

            goto LABEL_36;
          case 4u:
            if (v9 != 4)
            {
              return 0;
            }

            goto LABEL_36;
          case 5u:
            if (v9 != 5)
            {
              return 0;
            }

            goto LABEL_36;
        }
      }

      result = 0;
      if ((v9 - 9) > 0xFFFFFFF9 || v7 != v9)
      {
        return result;
      }

LABEL_36:
      if (v8 > 0xF7)
      {
        if (v10 <= 0xF7)
        {
          return 0;
        }
      }

      else
      {
        if (v10 > 0xF7)
        {
          return 0;
        }

        result = 0;
        if ((v8 & 0x80) != 0)
        {
          if ((v10 & 0x80) == 0 || ((v10 ^ v8) & 0x7F) != 0)
          {
            return result;
          }
        }

        else if ((v10 & 0x80) != 0 || v8 != v10)
        {
          return result;
        }
      }

      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_222BBDC04(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 16);
    v23[0] = *v5;
    v23[1] = v8;
    v24 = *(v5 + 32);
    v25 = *(v5 + 48);
    v19 = v23[0];
    v20 = v8;
    v21 = v24;
    v22 = v25;
    v9 = *v6;
    v10 = v6[1];
    v11 = v6[2];
    v27 = *(v6 + 24);
    v26[1] = v10;
    v26[2] = v11;
    v26[0] = v9;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v27;
    sub_222B554C0(v23, v14);
    sub_222B554C0(v26, v14);
    v12 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v19, &v15);
    v28[0] = v15;
    v28[1] = v16;
    v28[2] = v17;
    v29 = v18;
    sub_222B55A80(v28);
    v30[0] = v19;
    v30[1] = v20;
    v30[2] = v21;
    v31 = v22;
    sub_222B55A80(v30);
    if (!v12)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 56);
    v5 += 56;
  }

  return 1;
}

uint64_t sub_222BBDD4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = "erInteracted";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = "confirmationChosen";
  }

  else
  {
    v5 = "confirmationNotChosen";
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (a1 == 3)
  {
    v7 = "disambiguationAbandoned";
  }

  else
  {
    v7 = v5;
  }

  v8 = 0xD000000000000017;
  if (v4 == 1)
  {
    v9 = "disambiguationChosen";
  }

  else
  {
    v9 = "disambiguationNotChosen";
  }

  if (!v4)
  {
    v8 = 0xD000000000000014;
    v9 = "erInteracted";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v6;
    v10 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000012;
      v3 = "disambiguationAbandoned";
    }

    else if (a2 == 4)
    {
      v3 = "confirmationChosen";
    }

    else
    {
      v3 = "confirmationNotChosen";
    }
  }

  else if (a2)
  {
    v2 = 0xD000000000000017;
    if (a2 == 1)
    {
      v3 = "disambiguationChosen";
    }

    else
    {
      v3 = "disambiguationNotChosen";
    }
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_222C951FC();
  }

  return v11 & 1;
}

uint64_t sub_222BBDEAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "dismissalAndInAppFollowup";
      v3 = 0xD000000000000021;
    }

    else
    {
      v4 = "partialRepetition";
      v3 = 0xD000000000000011;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000019;
    }

    else
    {
      v3 = 0xD00000000000001BLL;
    }

    if (v2)
    {
      v4 = "quickHangupAndInAppFollowup";
    }

    else
    {
      v4 = "successfulOneShot";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000021;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v6 = "dismissalAndInAppFollowup";
    }

    else
    {
      v6 = "partialRepetition";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }

    if (a2)
    {
      v6 = "quickHangupAndInAppFollowup";
    }

    else
    {
      v6 = "successfulOneShot";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_222C951FC();
  }

  return v7 & 1;
}

uint64_t sub_222BBDFE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000021;
  v3 = "edia.PlayMediaIntent";
  v4 = a1;
  v5 = 0xD000000000000024;
  if (a1 == 4)
  {
    v6 = "GroundTruthExistsToConsider";
  }

  else
  {
    v5 = 0xD000000000000021;
    v6 = "aturisationTriggered";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "enerationTriggered";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000021;
  }

  else
  {
    v9 = 0xD000000000000022;
  }

  if (v4 == 1)
  {
    v10 = "PIMSPluginRunTriggered";
  }

  else
  {
    v10 = "aluationTriggered";
  }

  if (!v4)
  {
    v9 = 0xD000000000000016;
    v10 = "edia.PlayMediaIntent";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "enerationTriggered";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000024;
      v3 = "GroundTruthExistsToConsider";
    }

    else
    {
      v3 = "aturisationTriggered";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "PIMSPluginRunTriggered";
    }

    else
    {
      v2 = 0xD000000000000022;
      v3 = "aluationTriggered";
    }
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_222C951FC();
  }

  return v12 & 1;
}

uint64_t sub_222BBE148(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00736567617373;
  v3 = 0x654D6E69616D6F64;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x68506E69616D6F64;
    }

    else
    {
      v5 = 0x654D6E69616D6F64;
    }

    if (v4)
    {
      v6 = 0xEF6C6C6143656E6FLL;
    }

    else
    {
      v6 = 0xEE00736567617373;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x656D7269666E6F63;
    v6 = 0xE900000000000064;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6574616E696D6F6ELL;
    }

    else
    {
      v5 = 0x6974636572726F63;
    }

    if (v4 == 3)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xEA00000000006E6FLL;
    }
  }

  v7 = 0x656D7269666E6F63;
  v8 = 0xE900000000000064;
  v9 = 0x6574616E696D6F6ELL;
  v10 = 0xE900000000000064;
  if (a2 != 3)
  {
    v9 = 0x6974636572726F63;
    v10 = 0xEA00000000006E6FLL;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x68506E69616D6F64;
    v2 = 0xEF6C6C6143656E6FLL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_222C951FC();
  }

  return v13 & 1;
}

uint64_t sub_222BBE304(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 3u)
  {
    v9 = 0x8000000222CA9630;
    v10 = 0xD000000000000014;
    if (a1 == 6)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x8000000222CA9650;
    }

    if (a1 == 4)
    {
      v11 = 0x6369755169726973;
    }

    else
    {
      v11 = 0xD000000000000012;
    }

    if (a1 == 4)
    {
      v12 = 0xEF65676E6168436BLL;
    }

    else
    {
      v12 = 0x8000000222CA9610;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v3 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v4 = 0x756C636E6F636E69;
    v5 = 0xEC00000065766973;
    if (a1 != 2)
    {
      v4 = 0x7561506B63697571;
      v5 = 0xEA00000000006573;
    }

    v6 = 0x73736563637573;
    if (!a1)
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v3 <= 1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x8000000222CA9630;
        if (v7 != 0xD000000000000011)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = 0x8000000222CA9650;
        if (v7 != 0xD000000000000014)
        {
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEF65676E6168436BLL;
      if (v7 != 0x6369755169726973)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = 0x8000000222CA9610;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_49;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEC00000065766973;
        if (v7 != 0x756C636E6F636E69)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v2 = 0x7561506B63697571;
      v13 = 0xEA00000000006573;
    }

    else
    {
      v13 = 0xE700000000000000;
      if (a2)
      {
        if (v7 != 0x73736563637573)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }
    }

    if (v7 != v2)
    {
LABEL_49:
      v14 = sub_222C951FC();
      goto LABEL_50;
    }
  }

LABEL_46:
  if (v8 != v13)
  {
    goto LABEL_49;
  }

  v14 = 1;
LABEL_50:

  return v14 & 1;
}

uint64_t sub_222BBE5AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000003ELL;
  v3 = "BMNowPlayingEvent";
  if (a1 > 4u)
  {
    v4 = "ingEventNotPresent";
    v11 = 0xD000000000000047;
    v12 = "iaIntentEventNotPresent";
    v13 = 0xD000000000000049;
    if (a1 != 8)
    {
      v13 = 0xD000000000000033;
      v12 = "iaTaskRequestIdNotPresent";
    }

    if (a1 != 7)
    {
      v11 = v13;
      v4 = v12;
    }

    v8 = "actionsNotPresent";
    v14 = 0xD000000000000042;
    if (a1 == 5)
    {
      v14 = 0xD00000000000003ELL;
    }

    else
    {
      v8 = "UnderstandingUnredactionFailed";
    }

    v9 = a1 <= 6u;
    if (a1 <= 6u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = "diaItemSearchResultsNotPresent";
    v5 = 0xD000000000000036;
    v6 = "imaryTaskUSONotPresent";
    v7 = 0xD00000000000003CLL;
    if (a1 != 3)
    {
      v7 = 0xD000000000000041;
      v6 = "UnderstandingGraphNotPresent";
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "PlaybackContextTier1NotPresent";
    if (!a1)
    {
      v8 = "BMNowPlayingEvent";
    }

    v9 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v10 = 0xD00000000000003ELL;
    }

    else
    {
      v10 = v5;
    }
  }

  if (v9)
  {
    v15 = v8;
  }

  else
  {
    v15 = v4;
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v3 = "actionsNotPresent";
      }

      else
      {
        v3 = "UnderstandingUnredactionFailed";
        v2 = 0xD000000000000042;
      }
    }

    else if (a2 == 7)
    {
      v3 = "ingEventNotPresent";
      v2 = 0xD000000000000047;
    }

    else if (a2 == 8)
    {
      v3 = "iaIntentEventNotPresent";
      v2 = 0xD000000000000049;
    }

    else
    {
      v3 = "iaTaskRequestIdNotPresent";
      v2 = 0xD000000000000033;
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "PlaybackContextTier1NotPresent";
    }
  }

  else if (a2 == 2)
  {
    v3 = "diaItemSearchResultsNotPresent";
    v2 = 0xD000000000000036;
  }

  else if (a2 == 3)
  {
    v3 = "imaryTaskUSONotPresent";
    v2 = 0xD00000000000003CLL;
  }

  else
  {
    v3 = "UnderstandingGraphNotPresent";
    v2 = 0xD000000000000041;
  }

  if (v10 == v2 && (v15 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_222C951FC();
  }

  return v16 & 1;
}

uint64_t sub_222BBE80C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000636973;
  v3 = 0x754D6E69616D6F64;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x8000000222CA93E0;
    if (a1 == 6)
    {
      v12 = 0xD000000000000013;
    }

    else
    {
      v12 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v11 = 0x8000000222CA9400;
    }

    v13 = 0xE700000000000000;
    v14 = 0x7972617262696CLL;
    if (a1 != 4)
    {
      v14 = 0xD000000000000011;
      v13 = 0x8000000222CA93C0;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x6574616E696D6F6ELL;
    v6 = 0xE900000000000064;
    if (a1 != 2)
    {
      v5 = 0x6974636572726F63;
      v6 = 0xEA00000000006E6FLL;
    }

    v7 = 0x656D7269666E6F63;
    v8 = 0xE900000000000064;
    if (!a1)
    {
      v7 = 0x754D6E69616D6F64;
      v8 = 0xEB00000000636973;
    }

    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x8000000222CA93E0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x8000000222CA9400;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v9 != 0x7972617262696CLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0x8000000222CA93C0;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x6574616E696D6F6ELL;
LABEL_35:
        v2 = 0xE900000000000064;
        if (v9 != v15)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v3 = 0x6974636572726F63;
      v2 = 0xEA00000000006E6FLL;
    }

    else if (a2)
    {
      v15 = 0x656D7269666E6F63;
      goto LABEL_35;
    }

    if (v9 != v3)
    {
LABEL_47:
      v16 = sub_222C951FC();
      goto LABEL_48;
    }
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_222BBEA9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "nerationTriggered";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "INSendMessageIntent";
    }

    else
    {
      v5 = "INPlayMediaIntent";
    }

    v4 = 0xD000000000000011;
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3)
    {
      v5 = "INStartCallIntent";
    }

    else
    {
      v5 = "nerationTriggered";
    }
  }

  v6 = "INSendMessageIntent";
  if (a2 != 2)
  {
    v6 = "INPlayMediaIntent";
  }

  v7 = 0xD000000000000013;
  if (a2)
  {
    v2 = "INStartCallIntent";
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_222C951FC();
  }

  return v10 & 1;
}

uint64_t sub_222BBEBA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = "actions";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "pimsPhantomTurnRemovalEnabled";
    if (a1 != 6)
    {
      v11 = "adaptivePICSGeneration";
    }

    v12 = "pimsInAppFollowup";
    v13 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v13 = 0xD00000000000001DLL;
      v12 = "pimsWakeWordTrimmingEnabled";
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = 0xD000000000000016;
    }

    if (v4 <= 5)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD00000000000001DLL;
    v6 = "pimsShadowLogging";
    v7 = 0xD000000000000017;
    if (a1 != 2)
    {
      v7 = 0xD000000000000011;
      v6 = "pimsSuggestionSurfacing";
    }

    v8 = "partialRepetitionsInPhoneCall";
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v8 = "actions";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = "adaptivePICSGeneration";
      }

      else
      {
        v14 = "picsRuntimeInSiriVocab";
      }

      v3 = (v14 - 32);
      v2 = 0xD000000000000016;
    }

    else if (a2 == 4)
    {
      v3 = "pimsInAppFollowup";
      v2 = 0xD00000000000001BLL;
    }

    else
    {
      v3 = "pimsWakeWordTrimmingEnabled";
      v2 = 0xD00000000000001DLL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "pimsShadowLogging";
      v2 = 0xD000000000000017;
    }

    else
    {
      v3 = "pimsSuggestionSurfacing";
    }
  }

  else if (a2)
  {
    v3 = "partialRepetitionsInPhoneCall";
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_222C951FC();
  }

  return v15 & 1;
}

uint64_t sub_222BBED9C(uint64_t a1, unsigned __int8 a2)
{
  sub_222C9452C();
}

uint64_t sub_222BBEEE4(uint64_t a1, unsigned __int8 a2)
{
  sub_222C9452C();
}

uint64_t sub_222BBF024(uint64_t a1, unsigned __int8 a2)
{
  sub_222C9452C();
}

uint64_t sub_222BBF170(uint64_t a1, unsigned __int8 a2)
{
  sub_222C9452C();
}

uint64_t sub_222BBF27C(uint64_t a1, unsigned __int8 a2)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BBF360(uint64_t a1, unsigned __int8 a2)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BBF448(uint64_t a1, unsigned __int8 a2)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BBF5A4(uint64_t a1, unsigned __int8 a2)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BBF704(uint64_t a1, unsigned __int8 a2)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t PlusMediaSuggestion.tags.getter()
{
  type metadata accessor for PlusMediaSuggestion(0);
}

uint64_t type metadata accessor for PlusMediaSuggestion(uint64_t a1)
{
  result = qword_280FDF360;
  if (!qword_280FDF360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlusMediaSuggestion.isCorrection.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion(0) + 44));
  if (*(v1 + 16) && (sub_222C952FC(), sub_222C9452C(), v2 = sub_222C9534C(), v3 = -1 << *(v1 + 32), v4 = v2 & ~v3, ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
  {
    v5 = ~v3;
    while (*(*(v1 + 48) + v4) != 3)
    {
      v6 = sub_222C951FC();

      if ((v6 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v6 & 1;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t PlusMediaSuggestion.surfacedBefore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion(0) + 44));
  if (*(v1 + 16) && (sub_222C952FC(), sub_222C9452C(), v2 = sub_222C9534C(), v3 = -1 << *(v1 + 32), v4 = v2 & ~v3, ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v1 + 48) + v4);
      if (v6 > 3 && *(*(v1 + 48) + v4) > 5u && v6 != 6)
      {
        break;
      }

      v7 = sub_222C951FC();

      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v7 & 1;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t PlusMediaSuggestion.isNominated.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion(0) + 44));
  if (*(v1 + 16) && (sub_222C952FC(), sub_222C9452C(), v2 = sub_222C9534C(), v3 = -1 << *(v1 + 32), v4 = v2 & ~v3, ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
  {
    v5 = ~v3;
    while (*(*(v1 + 48) + v4) > 3u || *(*(v1 + 48) + v4) <= 1u || *(*(v1 + 48) + v4) == 3)
    {
      v6 = sub_222C951FC();

      if ((v6 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v6 & 1;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t PlusMediaSuggestion.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_222BBFF8C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PlusMediaSuggestion(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 24);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_222B554C0(&v9, v8);
}

uint64_t PlusMediaSuggestion.contributingGroundTruth.getter()
{
  type metadata accessor for PlusMediaSuggestion(0);
}

uint64_t PlusMediaSuggestion.scoreHistory.getter()
{
  type metadata accessor for PlusMediaSuggestion(0);
}

uint64_t PlusMediaSuggestion.init(id:leftHandKey:rightHandValue:fromThinGroundTruth:timestamp:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v14 = sub_222C9367C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3[1];
  v27 = *a3;
  v28 = v18;
  v29 = a3[2];
  v30 = *(a3 + 24);
  v19 = *(v15 + 16);
  v19(v17, a1, v14);
  v19(a6, v17, v14);
  v20 = type metadata accessor for PlusMediaSuggestion(0);
  *&a6[v20[5]] = a2;
  v21 = &a6[v20[6]];
  v22 = v28;
  *v21 = v27;
  *(v21 + 1) = v22;
  *(v21 + 2) = v29;
  *(v21 + 24) = v30;

  sub_222C16F98(20, a4);
  *&a6[v20[7]] = v23;
  *&a6[v20[10]] = a7;
  *&a6[v20[11]] = a5;
  *&a6[v20[8]] = 0;
  v24 = sub_222C17258(0x14uLL, MEMORY[0x277D84F90]);

  v25 = *(v15 + 8);
  v25(a1, v14);
  result = (v25)(v17, v14);
  *&a6[v20[9]] = v24;
  return result;
}

uint64_t PlusMediaSuggestion.init(id:leftHandKey:rightHandValue:fromGroundTruth:timestamp:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v81 = a5;
  v82 = a1;
  v12 = type metadata accessor for MediaFeedbackGroundTruth(0);
  MEMORY[0x28223BE20](v12);
  v77 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v89 = v74 - v15;
  v95 = type metadata accessor for MediaGroundTruth(0);
  MEMORY[0x28223BE20](v95);
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v94 = v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v74 - v21;
  v96 = type metadata accessor for ThinMediaGroundTruth(0);
  v23 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v25 = v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v93 = v74 - v27;
  v85 = sub_222C9367C();
  MEMORY[0x28223BE20](v85);
  v79 = v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v78 = v74 - v31;
  v32 = a3[1];
  v103 = *a3;
  v33 = a3[2];
  v104 = v32;
  v105 = v33;
  v106 = *(a3 + 24);
  v34 = *(a4 + 16);
  v80 = v30;
  if (!v34)
  {

    v60 = MEMORY[0x277D84F90];
    v59 = v82;
    goto LABEL_20;
  }

  v75 = a2;
  v76 = a6;
  v74[1] = a4;
  v35 = a4 + 32;
  v36 = v77;
  v84 = v77 + 49;
  v86 = v17 + 49;
  v83 = (v30 + 8);
  v91 = (v23 + 56);
  v88 = v23;
  v90 = (v23 + 48);
  v97 = MEMORY[0x277D84F90];
  v92 = v22;
  v87 = v17;
  do
  {
    v37 = v36;
    v38 = v12;
    sub_222B43E3C(v35, &v102);
    sub_222B43E3C(&v102, v99);
    v40 = v100;
    v39 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    (*(v39 + 24))(v40, v39);
    v41 = v100;
    v42 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    v43 = (*(v42 + 40))(v41, v42);
    v44 = v96;
    v45 = &v25[*(v96 + 20)];
    *v45 = v43;
    v45[1] = v46;
    sub_222B43E3C(v99, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
    v47 = v94;
    v48 = v95;
    if (swift_dynamicCast())
    {
      v49 = v87;
      sub_222BC2714(v47, v87, type metadata accessor for MediaGroundTruth);
      v25[*(v44 + 24)] = *(v49 + *(v48 + 20));
      v50 = v86[*(v48 + 32)];
      sub_222BC33D8(v49, type metadata accessor for MediaGroundTruth);
      v12 = v38;
      v36 = v37;
LABEL_9:
      v52 = v92;
      v25[*(v44 + 28)] = v50;
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      sub_222BC3370(v25, v52, type metadata accessor for ThinMediaGroundTruth);
      (*v91)(v52, 0, 1, v44);
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
      sub_222BC33D8(v25, type metadata accessor for ThinMediaGroundTruth);
      goto LABEL_11;
    }

    v51 = v89;
    v12 = v38;
    if (swift_dynamicCast())
    {
      v36 = v37;
      sub_222BC2714(v51, v37, type metadata accessor for MediaFeedbackGroundTruth);
      v44 = v96;
      v25[*(v96 + 24)] = *(v37 + *(v12 + 20)) | 0x80;
      v50 = v84[*(v12 + 28)];
      sub_222BC33D8(v37, type metadata accessor for MediaFeedbackGroundTruth);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    __swift_destroy_boxed_opaque_existential_0Tm(v99);
    (*v83)(v25, v85);

    v52 = v92;
    v44 = v96;
    (*v91)(v92, 1, 1, v96);
    v36 = v37;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0Tm(&v102);
    if ((*v90)(v52, 1, v44) == 1)
    {
      sub_222B4FCD4(v52, &qword_27D025890, &unk_222C9C7B0);
    }

    else
    {
      sub_222BC2714(v52, v93, type metadata accessor for ThinMediaGroundTruth);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v53 = v97;
      }

      else
      {
        v53 = sub_222B4A864(0, v97[2] + 1, 1, v97);
      }

      v55 = v53[2];
      v54 = v53[3];
      v56 = v88;
      if (v55 >= v54 >> 1)
      {
        v58 = sub_222B4A864((v54 > 1), v55 + 1, 1, v53);
        v56 = v88;
        v53 = v58;
      }

      v53[2] = v55 + 1;
      v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v97 = v53;
      sub_222BC2714(v93, v53 + v57 + *(v56 + 72) * v55, type metadata accessor for ThinMediaGroundTruth);
    }

    v35 += 40;
    --v34;
  }

  while (v34);

  a6 = v76;
  v59 = v82;
  a2 = v75;
  v60 = v97;
LABEL_20:
  v61 = v80;
  v62 = *(v80 + 16);
  v63 = v78;
  v64 = v85;
  v62(v78, v59, v85);
  v65 = v79;
  v62(v79, v63, v64);
  v62(a6, v65, v64);
  v66 = type metadata accessor for PlusMediaSuggestion(0);
  *&a6[v66[5]] = a2;
  v67 = &a6[v66[6]];
  v68 = v104;
  v69 = v105;
  *v67 = v103;
  *(v67 + 1) = v68;
  *(v67 + 2) = v69;
  *(v67 + 24) = v106;

  sub_222C16F98(20, v60);
  *&a6[v66[7]] = v70;
  *&a6[v66[10]] = a7;
  *&a6[v66[11]] = v81;
  *&a6[v66[8]] = 0;
  v71 = sub_222C17258(0x14uLL, MEMORY[0x277D84F90]);

  v72 = *(v61 + 8);
  v72(v59, v64);
  v72(v65, v64);
  result = (v72)(v63, v64);
  *&a6[v66[9]] = v71;
  return result;
}

BOOL PlusMediaSuggestion.hasSameMapping(as:)(uint64_t a1)
{
  v3 = type metadata accessor for PlusMediaSuggestion(0);
  if (_s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(*(v1 + *(v3 + 20)), *(a1 + *(v3 + 20))))
  {
    v4 = (v1 + *(v3 + 24));
    v5 = v4[1];
    v23[0] = *v4;
    v23[1] = v5;
    v7 = *v4;
    v6 = v4[1];
    v23[2] = v4[2];
    v24 = *(v4 + 24);
    v8 = v4[2];
    v20 = v6;
    v21 = v8;
    v22 = *(v4 + 24);
    v19 = v7;
    v9 = (a1 + *(v3 + 24));
    v10 = v9[2];
    v11 = *v9;
    v12 = *v9;
    v26 = v9[1];
    v27 = v10;
    v25 = v11;
    v28 = *(v9 + 24);
    v15 = v12;
    v16 = v26;
    v17 = v9[2];
    v18 = *(v9 + 24);
    sub_222B554C0(v23, v31);
    sub_222B554C0(&v25, v31);
    v13 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v19, &v15);
    v29[0] = v15;
    v29[1] = v16;
    v29[2] = v17;
    v30 = v18;
    sub_222B55A80(v29);
    v31[0] = v19;
    v31[1] = v20;
    v31[2] = v21;
    v32 = v22;
    sub_222B55A80(v31);
  }

  else
  {
    return 0;
  }

  return v13;
}

uint64_t PlusMediaSuggestion.hasSameContent(as:)(uint64_t a1)
{
  v3 = type metadata accessor for PlusMediaSuggestion(0);
  if ((_s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(*(v1 + v3[5]), *(a1 + v3[5])) & 1) != 0 && (v4 = (v1 + v3[6]), v5 = v4[1], v25[0] = *v4, v25[1] = v5, v7 = *v4, v6 = v4[1], v25[2] = v4[2], v26 = *(v4 + 24), v8 = v4[2], v22 = v6, v23 = v8, v24 = *(v4 + 24), v21 = v7, v9 = (a1 + v3[6]), v10 = v9[2], v11 = *v9, v12 = *v9, v28 = v9[1], v29 = v10, v27 = v11, v30 = *(v9 + 24), v17 = v12, v18 = v28, v19 = v9[2], v20 = *(v9 + 24), sub_222B554C0(v25, v16), sub_222B554C0(&v27, v16), v13 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v21, &v17), v31[0] = v17, v31[1] = v18, v31[2] = v19, v32 = v20, sub_222B55A80(v31), v33[0] = v21, v33[1] = v22, v33[2] = v23, v34 = v24, sub_222B55A80(v33), v13))
  {
    v14 = sub_222BBD800(*(v1 + v3[7]), *(a1 + v3[7]));
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_222BC0E88()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D617473656D6974;
  if (v1 != 6)
  {
    v3 = 1936154996;
  }

  v4 = 0x65726F6373;
  if (v1 != 4)
  {
    v4 = 0x73694865726F6373;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E61487468676972;
  if (v1 != 2)
  {
    v5 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0x646E61487466656CLL;
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

uint64_t sub_222BC0F90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222BC30C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222BC0FC4(uint64_t a1)
{
  v2 = sub_222BC292C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BC1000(uint64_t a1)
{
  v2 = sub_222BC292C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlusMediaSuggestion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261A0, &qword_222C9C7C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BC292C();
  sub_222C9536C();
  LOBYTE(v24[0]) = 0;
  sub_222C9367C();
  sub_222BC3438(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = type metadata accessor for PlusMediaSuggestion(0);
    v27 = *(v3 + v9[5]);
    v26 = 1;
    sub_222C9386C();
    sub_222BC3438(&qword_27D025150, MEMORY[0x277D5E9D8], MEMORY[0x277D5E450]);
    sub_222C9512C();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v24[0] = *v10;
    v24[1] = v11;
    v13 = *v10;
    v12 = v10[1];
    v24[2] = v10[2];
    v25 = *(v10 + 24);
    v20 = v13;
    v21 = v12;
    v22 = v10[2];
    v23 = *(v10 + 24);
    v19 = 2;
    sub_222B554C0(v24, v17);
    sub_222B55A2C();
    sub_222C9512C();
    v17[0] = v20;
    v17[1] = v21;
    v17[2] = v22;
    v18 = v23;
    sub_222B55A80(v17);
    v16 = *(v3 + v9[7]);
    HIBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261B0, &qword_222C9C7C8);
    sub_222BC2AD4(&qword_27D0261B8, &qword_27D0259D0, &protocol conformance descriptor for ThinMediaGroundTruth, MEMORY[0x277D83948]);
    sub_222C9512C();
    LOBYTE(v16) = 4;
    sub_222C9510C();
    v16 = *(v3 + v9[9]);
    HIBYTE(v15) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261C0, &unk_222C9C7D0);
    sub_222BC2980(&qword_27D0261C8, &qword_27D0261D0, &protocol conformance descriptor for ScoreStep<A>, MEMORY[0x277D83948]);
    sub_222C9512C();
    LOBYTE(v16) = 6;
    sub_222C9510C();
    v16 = *(v3 + v9[11]);
    HIBYTE(v15) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261E0, &qword_222C9C7E0);
    sub_222BC2A08(&qword_27D0261E8, sub_222BC2A80, MEMORY[0x277D83B50]);
    sub_222C9512C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PlusMediaSuggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_222C9367C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261F8, &qword_222C9C7E8);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for PlusMediaSuggestion(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BC292C();
  v29 = v8;
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v25;
  v13 = v11;
  LOBYTE(v31) = 0;
  sub_222BC3438(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v26;
  sub_222C9507C();
  v15 = *(v12 + 32);
  v26 = v4;
  v15(v11, v14);
  sub_222C9386C();
  LOBYTE(v30) = 1;
  sub_222BC3438(&qword_27D025180, MEMORY[0x277D5E9D8], MEMORY[0x277D5E458]);
  sub_222C9507C();
  v23 = 0;
  v16 = v9;
  *(v13 + *(v9 + 20)) = v31;
  v36 = 2;
  sub_222B55B4C();
  sub_222C9507C();
  v17 = v13 + *(v9 + 24);
  v18 = v32;
  *v17 = v31;
  *(v17 + 16) = v18;
  *(v17 + 32) = v33;
  *(v17 + 48) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261B0, &qword_222C9C7C8);
  v35 = 3;
  sub_222BC2AD4(&qword_27D026200, &qword_27D026208, &protocol conformance descriptor for ThinMediaGroundTruth, MEMORY[0x277D83978]);
  sub_222C9507C();
  v19 = v27;
  *(v13 + v16[7]) = v30;
  LOBYTE(v30) = 4;
  sub_222C9505C();
  *(v13 + v16[8]) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261C0, &unk_222C9C7D0);
  v35 = 5;
  sub_222BC2980(&qword_27D026210, &qword_27D026218, &protocol conformance descriptor for ScoreStep<A>, MEMORY[0x277D83978]);
  sub_222C9507C();
  *(v13 + v16[9]) = v30;
  LOBYTE(v30) = 6;
  sub_222C9505C();
  *(v13 + v16[10]) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261E0, &qword_222C9C7E0);
  v35 = 7;
  sub_222BC2A08(&qword_27D026220, sub_222BC2BC0, MEMORY[0x277D83B70]);
  sub_222C9507C();
  (*(v19 + 8))(v29, v28);
  *(v13 + v16[11]) = v30;
  sub_222BC3370(v13, v24, type metadata accessor for PlusMediaSuggestion);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222BC33D8(v13, type metadata accessor for PlusMediaSuggestion);
}

uint64_t MediaReference.hashValue.getter()
{
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t sub_222BC1CFC()
{
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t sub_222BC1D50(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t _s28SiriPrivateLearningInference19PlusMediaSuggestionV11leftHandKey0A8Ontology017UsoEntity_common_F4ItemCvg_0()
{
  type metadata accessor for PlusMediaSuggestion(0);
}

uint64_t PlusMediaSuggestion.init(query:entity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_222C935EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = a2[1];
  v29 = *a2;
  v30 = v17;
  v31 = a2[2];
  v32 = *(a2 + 24);
  sub_222C9366C();
  sub_222C935DC();
  sub_222C935BC();
  v19 = v18;
  (*(v7 + 8))(v9, v6);
  v20 = *(v11 + 16);
  v20(v13, v16, v10);
  v20(a3, v13, v10);
  v21 = type metadata accessor for PlusMediaSuggestion(0);
  *&a3[v21[5]] = a1;
  v22 = &a3[v21[6]];
  v23 = v30;
  *v22 = v29;
  *(v22 + 1) = v23;
  *(v22 + 2) = v31;
  *(v22 + 24) = v32;

  v24 = MEMORY[0x277D84F90];
  sub_222C16F98(20, MEMORY[0x277D84F90]);
  *&a3[v21[7]] = v25;
  *&a3[v21[10]] = v19;
  *&a3[v21[11]] = MEMORY[0x277D84FA0];
  *&a3[v21[8]] = 0;
  v26 = sub_222C17258(0x14uLL, v24);

  v27 = *(v11 + 8);
  v27(v13, v10);
  result = (v27)(v16, v10);
  *&a3[v21[9]] = v26;
  return result;
}

uint64_t PlusMediaSuggestion.updateScore(with:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = *(a1 + 12);
  v19 = type metadata accessor for PlusMediaSuggestion(0);
  v20 = *(v3 + v19[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EC0, &qword_222C96C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  *(inited + 32) = v16;
  *(inited + 40) = v15;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  *&v43 = v20;

  sub_222B494D8(inited);
  v39 = v43;
  (*(v7 + 56))(v14, 1, 1, v6);
  v40 = v14;
  sub_222B5551C(v14, v11);
  v22 = *(v7 + 48);
  if (v22(v11, 1, v6) == 1)
  {
    v23 = *(v7 + 16);
    v23(v41, v3, v6);
    v38 = v6;
    if (v22(v11, 1, v6) != 1)
    {
      sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
    }

    v24 = v41;
    v6 = v38;
  }

  else
  {
    v24 = v41;
    (*(v7 + 32))(v41, v11, v6);
    v23 = *(v7 + 16);
  }

  v25 = *(v3 + v19[5]);
  v26 = (v3 + v19[6]);
  v46 = *(v26 + 24);
  v27 = v26[2];
  v44 = v26[1];
  v45 = v27;
  v28 = v19[11];
  v29 = *(v3 + v19[10]);
  v43 = *v26;
  v30 = *(v3 + v19[7]);
  v31 = *(v3 + v28);
  v23(a2, v24, v6);
  *&a2[v19[5]] = v25;
  v32 = &a2[v19[6]];
  v33 = v44;
  *v32 = v43;
  *(v32 + 1) = v33;
  *(v32 + 2) = v45;
  *(v32 + 24) = v46;
  swift_retain_n();
  sub_222B554C0(&v43, v42);

  sub_222C16F98(20, v30);
  *&a2[v19[7]] = v34;
  *&a2[v19[10]] = v29;
  *&a2[v19[11]] = v31;
  *&a2[v19[8]] = v15;
  v35 = sub_222C17258(0x14uLL, v39);

  (*(v7 + 8))(v24, v6);
  result = sub_222B4FCD4(v40, &unk_27D026290, &qword_222C96B40);
  *&a2[v19[9]] = v35;
  return result;
}

uint64_t PlusMediaSuggestion.isLibrary.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusMediaSuggestion(0) + 44));
  if (*(v1 + 16) && (sub_222C952FC(), sub_222C9452C(), v2 = sub_222C9534C(), v3 = -1 << *(v1 + 32), v4 = v2 & ~v3, ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v1 + 48) + v4);
      if (v6 > 3 && *(*(v1 + 48) + v4) <= 5u && v6 != 5)
      {
        break;
      }

      v8 = sub_222C951FC();

      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v8 & 1;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_222BC269C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOWORD(v3) = *(v3 + 48);
  v10 = v3;
  *a2 = v8[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 48) = v3;
  return sub_222B554C0(v8, v7);
}

uint64_t sub_222BC2714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s28SiriPrivateLearningInference19PlusMediaSuggestionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_222C9362C() & 1) != 0 && (v4 = type metadata accessor for PlusMediaSuggestion(0), (_s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(*(a1 + v4[5]), *(a2 + v4[5]))) && (v5 = (a1 + v4[6]), v6 = v5[1], v26[0] = *v5, v26[1] = v6, v8 = *v5, v7 = v5[1], v26[2] = v5[2], v27 = *(v5 + 24), v9 = v5[2], v23 = v7, v24 = v9, v25 = *(v5 + 24), v22 = v8, v10 = (a2 + v4[6]), v11 = v10[2], v12 = *v10, v13 = *v10, v29 = v10[1], v30 = v11, v28 = v12, v31 = *(v10 + 24), v18 = v13, v19 = v29, v20 = v10[2], v21 = *(v10 + 24), sub_222B554C0(v26, v17), sub_222B554C0(&v28, v17), v14 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v22, &v18), v32[0] = v18, v32[1] = v19, v32[2] = v20, v33 = v21, sub_222B55A80(v32), v34[0] = v22, v34[1] = v23, v34[2] = v24, v35 = v25, sub_222B55A80(v34), v14) && (sub_222BBD800(*(a1 + v4[7]), *(a2 + v4[7])) & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && (sub_222BBDAA0(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10]))
  {
    v15 = sub_222C17D8C(*(a1 + v4[11]), *(a2 + v4[11]));
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_222BC292C()
{
  result = qword_27D0261A8;
  if (!qword_27D0261A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0261A8);
  }

  return result;
}

uint64_t sub_222BC2980(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261C0, &unk_222C9C7D0);
    sub_222BC2B70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222BC2A08(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261E0, &qword_222C9C7E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222BC2A80()
{
  result = qword_27D0261F0;
  if (!qword_27D0261F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0261F0);
  }

  return result;
}

uint64_t sub_222BC2AD4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261B0, &qword_222C9C7C8);
    sub_222BC3438(a2, type metadata accessor for ThinMediaGroundTruth, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222BC2B70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261D8, &qword_222CA1E50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222BC2BC0()
{
  result = qword_27D026228;
  if (!qword_27D026228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026228);
  }

  return result;
}

unint64_t sub_222BC2C14(uint64_t a1)
{
  result = sub_222B72AF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222BC2C40()
{
  result = qword_27D026230;
  if (!qword_27D026230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026230);
  }

  return result;
}

unint64_t sub_222BC2C98()
{
  result = qword_27D026238;
  if (!qword_27D026238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026238);
  }

  return result;
}

uint64_t sub_222BC2D3C(uint64_t a1)
{
  result = sub_222BC3438(&qword_27D026240, type metadata accessor for PlusMediaSuggestion, &protocol conformance descriptor for PlusMediaSuggestion);
  *(a1 + 8) = result;
  return result;
}

void sub_222BC2DBC(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222C9386C();
    if (v2 <= 0x3F)
    {
      sub_222BC2E98(319);
      if (v3 <= 0x3F)
      {
        sub_222BC2EF0(319);
        if (v4 <= 0x3F)
        {
          sub_222BC2F54(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_222BC2E98(uint64_t a1)
{
  if (!qword_27D026248)
  {
    type metadata accessor for ThinMediaGroundTruth(255);
    v1 = sub_222C947FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D026248);
    }
  }
}

void sub_222BC2EF0(uint64_t a1)
{
  if (!qword_27D026250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261D8, &qword_222CA1E50);
    v1 = sub_222C947FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D026250);
    }
  }
}

void sub_222BC2F54(uint64_t a1)
{
  if (!qword_27D026258)
  {
    sub_222B654C0();
    v1 = sub_222C9497C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D026258);
    }
  }
}

unint64_t sub_222BC2FC4()
{
  result = qword_27D026260;
  if (!qword_27D026260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026260);
  }

  return result;
}

unint64_t sub_222BC301C()
{
  result = qword_27D026268;
  if (!qword_27D026268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026268);
  }

  return result;
}

unint64_t sub_222BC3074()
{
  result = qword_27D026270;
  if (!qword_27D026270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026270);
  }

  return result;
}

uint64_t sub_222BC30C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E61487466656CLL && a2 == 0xEB0000000079654BLL || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E61487468676972 && a2 == 0xEE0065756C615664 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000222CAAED0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73694865726F6373 && a2 == 0xEC00000079726F74 || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_222C951FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222BC3370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BC33D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222BC3438(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *InferenceDataCompliance.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[3] = sub_222B63558(MEMORY[0x277D84F90]);
  v0[4] = 50;
  v0[2] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  return v0;
}

void *InferenceDataCompliance.init()()
{
  v0[3] = sub_222B63558(MEMORY[0x277D84F90]);
  v0[4] = 50;
  v0[2] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  return v0;
}

uint64_t sub_222BC3534()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C9BAE0;
  *(v0 + 32) = *MEMORY[0x277CBD018];
  qword_27D026280 = v0;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_222BC359C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 48))(v1, v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v44 = MEMORY[0x277D84F90];
    sub_222B4C418(0, v4, 0);
    v5 = v44;
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v44 = v5;
      v9 = *(v5 + 16);
      v10 = *(v5 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_222B4C418((v10 > 1), v9 + 1, 1);
        v5 = v44;
      }

      *(v5 + 16) = v9 + 1;
      v11 = v5 + 16 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v12 = sub_222B72040(v5);

  if (qword_280FDFE78 != -1)
  {
LABEL_32:
    swift_once();
  }

  v13 = sub_222C9431C();
  __swift_project_value_buffer(v13, qword_280FE2340);

  v14 = sub_222C942FC();
  v15 = sub_222C94A3C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v12;
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *(v16 + 16);

    _os_log_impl(&dword_222B39000, v14, v15, "Evaluating %ld PICS contact references for non existent contact ids.", v17, 0xCu);
    v18 = v17;
    v12 = v16;
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }

  else
  {
  }

  v19 = 0;
  v20 = v12 + 56;
  v21 = 1 << *(v12 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v12 + 56);
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v25 = v19;
LABEL_20:
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v27 = (*(v12 + 48) + ((v25 << 10) | (16 * v26)));
    v28 = *v27;
    v29 = v27[1];

    if (sub_222BC591C(v28, v29))
    {

      v19 = v25;
    }

    else
    {

      v30 = sub_222C942FC();
      v31 = sub_222C94A3C();

      v42 = v12;
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        log = v30;
        v33 = swift_slowAlloc();
        v44 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_222B437C0(v28, v29, &v44);
        _os_log_impl(&dword_222B39000, log, v31, "PICS referenced contactId %s has been deleted. Deleting all PICS referencing this contact.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x223DCA8C0](v33, -1, -1);
        MEMORY[0x223DCA8C0](v32, -1, -1);
      }

      else
      {
      }

      v34 = a1[3];
      v35 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v34);
      v36 = (*(v35 + 72))(v28, v29, v34, v35);

      v37 = sub_222C942FC();
      v38 = sub_222C94A3C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = v36;
        _os_log_impl(&dword_222B39000, v37, v38, "%ld PICS deleted due to expired contact references", v39, 0xCu);
        MEMORY[0x223DCA8C0](v39, -1, -1);
      }

      v19 = v25;
      v12 = v42;
    }
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v25 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v25);
    ++v19;
    if (v23)
    {
      goto LABEL_20;
    }
  }
}

uint64_t sub_222BC3A64(void *a1)
{
  KeyPath = swift_getKeyPath();
  sub_222BC3B0C(a1, KeyPath);

  v3 = swift_getKeyPath();
  sub_222BC3D88(a1, v3);

  v4 = swift_getKeyPath();
  sub_222BC4004(a1, v4);

  return sub_222BC4684(a1);
}

uint64_t sub_222BC3B0C(void *a1, uint64_t a2)
{
  v20[0] = sub_222C9367C();
  v4 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D84F90];
  v7 = type metadata accessor for PhoneCallGroundTruth(0);
  v8 = 0;
  do
  {
    v9 = MEMORY[0x223DCA1C0]();
    v11 = a1[3];
    v10 = a1[4];
    v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
    v13 = sub_222BC6360(&qword_280FDF100, type metadata accessor for PhoneCallGroundTruth, &protocol conformance descriptor for PhoneCallGroundTruth);
    v14 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:limit:offset:)(v7, 50, v8, v11, v7, v10, v13);
    if (__OFADD__(v8, 50))
    {
      __break(1u);
      goto LABEL_10;
    }

    v15 = *(v14 + 16);
    sub_222BC4280(v14, v20[1], a2, &v21, type metadata accessor for PhoneCallGroundTruth, type metadata accessor for PhoneCallGroundTruth);

    objc_autoreleasePoolPop(v9);
    v8 += 50;
  }

  while (v15);
  v16 = v21;
  v17 = *(v21 + 16);
  v9 = v20[0];
  if (!v17)
  {
  }

  v18 = 0;
  v12 = 0;
  v10 = (v4 + 8);
  while (v18 < *(v16 + 16))
  {
    (*(v4 + 16))(v6, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v9);
    sub_222BC5DA8(v6, a1);
    ++v18;
    (*v10)(v6, v9);
    if (v17 == v18)
    {
    }
  }

LABEL_10:
  __break(1u);

  result = (*v10)(v6, v9);
  __break(1u);
  return result;
}

uint64_t sub_222BC3D88(void *a1, uint64_t a2)
{
  v20[0] = sub_222C9367C();
  v4 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D84F90];
  v7 = type metadata accessor for MessagesGroundTruth(0);
  v8 = 0;
  do
  {
    v9 = MEMORY[0x223DCA1C0]();
    v11 = a1[3];
    v10 = a1[4];
    v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
    v13 = sub_222BC6360(&qword_280FDF4B8, type metadata accessor for MessagesGroundTruth, &protocol conformance descriptor for MessagesGroundTruth);
    v14 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:limit:offset:)(v7, 50, v8, v11, v7, v10, v13);
    if (__OFADD__(v8, 50))
    {
      __break(1u);
      goto LABEL_10;
    }

    v15 = *(v14 + 16);
    sub_222BC4280(v14, v20[1], a2, &v21, type metadata accessor for MessagesGroundTruth, type metadata accessor for MessagesGroundTruth);

    objc_autoreleasePoolPop(v9);
    v8 += 50;
  }

  while (v15);
  v16 = v21;
  v17 = *(v21 + 16);
  v9 = v20[0];
  if (!v17)
  {
  }

  v18 = 0;
  v12 = 0;
  v10 = (v4 + 8);
  while (v18 < *(v16 + 16))
  {
    (*(v4 + 16))(v6, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v9);
    sub_222BC5DA8(v6, a1);
    ++v18;
    (*v10)(v6, v9);
    if (v17 == v18)
    {
    }
  }

LABEL_10:
  __break(1u);

  result = (*v10)(v6, v9);
  __break(1u);
  return result;
}

uint64_t sub_222BC4004(void *a1, uint64_t a2)
{
  v20[0] = sub_222C9367C();
  v4 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D84F90];
  v7 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  v8 = 0;
  do
  {
    v9 = MEMORY[0x223DCA1C0]();
    v11 = a1[3];
    v10 = a1[4];
    v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
    v13 = sub_222BC6360(&qword_280FDC688, type metadata accessor for ContactSuggestionOutcomeGroundTruth, &protocol conformance descriptor for ContactSuggestionOutcomeGroundTruth);
    v14 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:limit:offset:)(v7, 50, v8, v11, v7, v10, v13);
    if (__OFADD__(v8, 50))
    {
      __break(1u);
      goto LABEL_10;
    }

    v15 = *(v14 + 16);
    sub_222BC4280(v14, v20[1], a2, &v21, type metadata accessor for ContactSuggestionOutcomeGroundTruth, type metadata accessor for ContactSuggestionOutcomeGroundTruth);

    objc_autoreleasePoolPop(v9);
    v8 += 50;
  }

  while (v15);
  v16 = v21;
  v17 = *(v21 + 16);
  v9 = v20[0];
  if (!v17)
  {
  }

  v18 = 0;
  v12 = 0;
  v10 = (v4 + 8);
  while (v18 < *(v16 + 16))
  {
    (*(v4 + 16))(v6, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v9);
    sub_222BC5DA8(v6, a1);
    ++v18;
    (*v10)(v6, v9);
    if (v17 == v18)
    {
    }
  }

LABEL_10:
  __break(1u);

  result = (*v10)(v6, v9);
  __break(1u);
  return result;
}

uint64_t sub_222BC4280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v34 = a4;
  v45 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v44 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v38 = &v34 - v17;
  v18 = (a5)(0, v16) - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v24 = *(v19 + 72);
    v35 = (v13 + 16);
    v36 = v13;
    v42 = (v13 + 56);
    v43 = v24;
    v40 = (v13 + 32);
    v41 = (v13 + 48);
    v46 = MEMORY[0x277D84F90];
    v37 = a6;
    v39 = v11;
    do
    {
      sub_222BC6298(v23, v21, a6);
      swift_getAtKeyPath();
      v25 = sub_222BC591C(v47, v48);

      if (v25)
      {
        v26 = 1;
        v27 = v39;
      }

      else
      {
        v27 = v39;
        (*v35)(v39, v21, v12);
        v26 = 0;
      }

      (*v42)(v27, v26, 1, v12);
      sub_222BC6300(v21, a6);
      if ((*v41)(v27, 1, v12) == 1)
      {
        sub_222B86DA0(v27);
      }

      else
      {
        v28 = *v40;
        v29 = v38;
        (*v40)(v38, v27, v12);
        v28(v44, v29, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_222B4A2C8(0, *(v46 + 2) + 1, 1, v46);
        }

        v31 = *(v46 + 2);
        v30 = *(v46 + 3);
        if (v31 >= v30 >> 1)
        {
          v46 = sub_222B4A2C8((v30 > 1), v31 + 1, 1, v46);
        }

        v32 = v46;
        *(v46 + 2) = v31 + 1;
        v28(&v32[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31], v44, v12);
        a6 = v37;
      }

      v23 += v43;
      --v22;
    }

    while (v22);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  return sub_222B49A30(v46);
}

uint64_t sub_222BC4684(void *a1)
{
  v2 = v1;
  v21 = sub_222C9367C();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F90];
  v7 = type metadata accessor for ContactPromptGroundTruth(0);
  v8 = 0;
  do
  {
    v9 = MEMORY[0x223DCA1C0]();
    v10 = a1[3];
    v11 = a1[4];
    v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
    v13 = sub_222BC6360(&qword_280FDE6C0, type metadata accessor for ContactPromptGroundTruth, &protocol conformance descriptor for ContactPromptGroundTruth);
    v14 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:limit:offset:)(v7, 50, v8, v10, v7, v11, v13);
    if (__OFADD__(v8, 50))
    {
      __break(1u);
      goto LABEL_10;
    }

    v15 = *(v14 + 16);
    sub_222BC48D4(v14, v2, &v22, a1);

    objc_autoreleasePoolPop(v9);
    v8 += 50;
  }

  while (v15);
  v16 = v22;
  v17 = *(v22 + 16);
  v9 = v21;
  if (!v17)
  {
  }

  v18 = 0;
  v2 = 0;
  v12 = (v4 + 8);
  while (v18 < *(v16 + 16))
  {
    (*(v4 + 16))(v6, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v9);
    sub_222BC5DA8(v6, a1);
    ++v18;
    (*v12)(v6, v9);
    if (v17 == v18)
    {
    }
  }

LABEL_10:
  __break(1u);

  result = (*v12)(v6, v9);
  __break(1u);
  return result;
}

void sub_222BC48D4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v118 = a4;
  v123 = a3;
  v142 = a2;
  v136 = sub_222C9367C();
  v124 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v132 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v121 = &v116 - v7;
  v140 = type metadata accessor for ContactPromptGroundTruth(0);
  MEMORY[0x28223BE20](v140);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v120 = &v116 - v12;
  v17 = MEMORY[0x28223BE20](v13);
  v18 = &v116 - v15;
  v129 = *(a1 + 16);
  if (v129)
  {
    v19 = 0;
    v128 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = 0x8000000222CAA190;
    v126 = (v124 + 16);
    v116 = 0x8000000222CA85F0;
    v125 = (v124 + 32);
    v127 = *(v14 + 72);
    v17.n128_u64[0] = 136315138;
    v122 = v17;
    v135 = v9;
    v117 = v16;
    v130 = &v116 - v15;
    v143 = 0x8000000222CAA190;
    do
    {
      v137 = v19;
      sub_222BC6298(v128 + v127 * v19, v18, type metadata accessor for ContactPromptGroundTruth);
      v21 = *&v18[v140[7]];
      v22 = *(v21 + 16);
      v138 = v21;
      if (v22)
      {
        v144[0] = MEMORY[0x277D84F90];

        sub_222B4CAD0(0, v22, 0);
        v23 = v144[0];
        v24 = (v21 + 56);
        do
        {
          v26 = *(v24 - 3);
          v25 = *(v24 - 2);
          v28 = *(v24 - 1);
          v27 = *v24;
          v29 = v26 == 0xD000000000000013 && v20 == v25;
          if (v29 || (sub_222C951FC() & 1) != 0)
          {
          }

          else
          {

            if ((sub_222BC591C(v26, v25) & 1) == 0)
            {

              v26 = 0xD000000000000013;
              v25 = v20;
            }
          }

          v144[0] = v23;
          v31 = *(v23 + 16);
          v30 = *(v23 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_222B4CAD0((v30 > 1), v31 + 1, 1);
            v23 = v144[0];
          }

          v24 += 4;
          *(v23 + 16) = v31 + 1;
          v32 = (v23 + 32 * v31);
          v32[4] = v26;
          v32[5] = v25;
          v32[6] = v28;
          v32[7] = v27;
          --v22;
          v20 = v143;
        }

        while (v22);
        v9 = v135;
        v18 = v130;
      }

      else
      {

        v23 = MEMORY[0x277D84F90];
      }

      v33 = &v18[v140[8]];
      v35 = *v33;
      v34 = v33[1];
      v36 = v33[2];
      v37 = v33[3];
      v139 = v23;
      if (v34)
      {
        v38 = v35 == 0xD000000000000013 && v34 == v20;
        v141 = v34;
        if (v38 || (sub_222C951FC() & 1) != 0)
        {
        }

        else
        {

          v39 = sub_222BC591C(v35, v34);
          v23 = v139;
          if ((v39 & 1) == 0)
          {

            sub_222B450E8(v35, v34, v36, v37);
            v35 = 0xD000000000000013;
            v141 = v20;
          }
        }
      }

      else
      {
        v141 = 0;
      }

      v40 = *(v23 + 16);
      if (v40 != *(v138 + 16))
      {

        v47 = *(v23 + 16);
        if (v47)
        {
          goto LABEL_68;
        }

        goto LABEL_88;
      }

      v133 = v35;
      v134 = v36;
      v131 = v37;
      if (v40)
      {
        v41 = v23 == v138;
      }

      else
      {
        v41 = 1;
      }

      if (!v41)
      {
        v48 = (v138 + 56);
        v49 = (v23 + 56);
        while (1)
        {
          if (!v40)
          {
            __break(1u);
            return;
          }

          v51 = *(v49 - 1);
          v50 = *v49;
          v53 = *(v48 - 1);
          v52 = *v48;
          v54 = *(v49 - 3) == *(v48 - 3) && *(v49 - 2) == *(v48 - 2);
          if (!v54 && (sub_222C951FC() & 1) == 0)
          {
            break;
          }

          if (v50)
          {
            if (!v52 || (v51 != v53 || v50 != v52) && (sub_222C951FC() & 1) == 0)
            {
              break;
            }
          }

          else if (v52)
          {
            break;
          }

          v48 += 4;
          v49 += 4;
          if (!--v40)
          {
            goto LABEL_37;
          }
        }

        v36 = v134;
        v9 = v135;
        v18 = v130;
        v37 = v131;
        v23 = v139;
        v35 = v133;
        v47 = *(v139 + 16);
        if (v47)
        {
          goto LABEL_68;
        }

        goto LABEL_88;
      }

LABEL_37:

      v42 = v33[1];
      v138 = *v33;
      v44 = v33[2];
      v43 = v33[3];
      v9 = v135;
      if (v141)
      {
        v18 = v130;
        v37 = v131;
        v36 = v134;
        if (!v42)
        {
          v55 = v43;
          v56 = v133;
          v57 = v141;
          sub_222B98D00(v133, v141, v134, v131);
          sub_222B98D00(v138, 0, v44, v55);
          sub_222B98D00(v56, v57, v36, v37);

LABEL_67:
          sub_222B450E8(v56, v57, v36, v37);
          sub_222B450E8(v138, v42, v44, v55);
          v23 = v139;
          v35 = v56;
          v9 = v135;
          v47 = *(v139 + 16);
          if (v47)
          {
            goto LABEL_68;
          }

          goto LABEL_88;
        }

        if ((v133 != v138 || v141 != v42) && (sub_222C951FC() & 1) == 0)
        {
LABEL_84:
          v91 = v133;
          sub_222B98D00(v133, v141, v36, v37);
          v92 = v37;
LABEL_86:
          v93 = v138;
          sub_222B98D00(v138, v42, v44, v43);
          sub_222B98D00(v91, v141, v134, v92);
          sub_222B450E8(v93, v42, v44, v43);
          v35 = v91;
          v9 = v135;
LABEL_87:
          v94 = v141;

          v36 = v134;
          sub_222B450E8(v35, v94, v134, v37);
          v23 = v139;
          v47 = *(v139 + 16);
          if (v47)
          {
LABEL_68:
            v58 = (v23 + 40);
            v59 = v141;
            while (1)
            {
              v60 = *(v58 - 1) == 0xD000000000000013 && v20 == *v58;
              if (!v60 && (sub_222C951FC() & 1) == 0)
              {
                break;
              }

              v58 += 4;
              if (!--v47)
              {
                goto LABEL_89;
              }
            }

            (*v126)(v121, v18, v136);
            v61 = v140[12];
            v62 = *&v18[v61 + 8];
            v131 = v37;
            v133 = v35;
            v134 = v36;
            if (v62)
            {
              v138 = *&v18[v61];
              v63 = v62;
            }

            else
            {
              v138 = 0xD000000000000023;
              v63 = v116;
            }

            v64 = v140;
            v65 = v18[v140[5]];
            v66 = *&v18[v140[6]];
            v67 = v18[v140[9]];
            v68 = *&v18[v140[10]];
            v119 = v18[v140[11]];
            v69 = v120;
            v70 = (v120 + v61);
            (*v125)(v120, v121, v136);
            v71 = v139;
            *v70 = v138;
            v70[1] = v63;
            *(v69 + v64[5]) = v65;
            *(v69 + v64[6]) = v66;
            *(v69 + v64[7]) = v71;
            v72 = (v69 + v64[8]);
            v73 = v141;
            *v72 = v133;
            v72[1] = v73;
            v74 = v131;
            v72[2] = v134;
            v72[3] = v74;
            *(v69 + v64[9]) = v67;
            *(v69 + v64[10]) = v68;
            *(v69 + v64[11]) = v119;
            v75 = qword_280FDFE78;

            if (v75 != -1)
            {
              swift_once();
            }

            v76 = sub_222C9431C();
            __swift_project_value_buffer(v76, qword_280FE2340);
            v18 = v130;
            v77 = v117;
            sub_222BC6298(v130, v117, type metadata accessor for ContactPromptGroundTruth);
            v78 = sub_222C942FC();
            v79 = sub_222C94A3C();
            v80 = os_log_type_enabled(v78, v79);
            v9 = v135;
            if (v80)
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v144[0] = v82;
              *v81 = v122.n128_u32[0];
              v83 = sub_222C9360C();
              v85 = v84;
              sub_222BC6300(v77, type metadata accessor for ContactPromptGroundTruth);
              v86 = sub_222B437C0(v83, v85, v144);

              *(v81 + 4) = v86;
              _os_log_impl(&dword_222B39000, v78, v79, "Redacting contact prompt ground truth with id=%s", v81, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v82);
              MEMORY[0x223DCA8C0](v82, -1, -1);
              MEMORY[0x223DCA8C0](v81, -1, -1);
            }

            else
            {

              sub_222BC6300(v77, type metadata accessor for ContactPromptGroundTruth);
            }

            v87 = v118[3];
            v88 = v118[4];
            __swift_project_boxed_opaque_existential_1(v118, v87);
            v144[3] = v140;
            v144[4] = sub_222BC6360(&qword_280FDE6C0, type metadata accessor for ContactPromptGroundTruth, &protocol conformance descriptor for ContactPromptGroundTruth);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v144);
            v90 = v120;
            sub_222BC6298(v120, boxed_opaque_existential_1, type metadata accessor for ContactPromptGroundTruth);
            InferredGroundTruthStore.updateTypedGroundTruth(groundTruth:)(v144, v87, v88);
            sub_222BC6300(v90, type metadata accessor for ContactPromptGroundTruth);
            sub_222BC6300(v18, type metadata accessor for ContactPromptGroundTruth);
            __swift_destroy_boxed_opaque_existential_0Tm(v144);
            v20 = v143;
            goto LABEL_5;
          }

LABEL_88:
          v59 = v141;
LABEL_89:
          sub_222B450E8(v35, v59, v36, v37);

          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v95 = sub_222C9431C();
          __swift_project_value_buffer(v95, qword_280FE2340);
          sub_222BC6298(v18, v9, type metadata accessor for ContactPromptGroundTruth);
          v96 = sub_222C942FC();
          v97 = sub_222C94A3C();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v144[0] = v99;
            *v98 = v122.n128_u32[0];
            v100 = sub_222C9360C();
            v102 = v101;
            sub_222BC6300(v9, type metadata accessor for ContactPromptGroundTruth);
            v103 = sub_222B437C0(v100, v102, v144);

            *(v98 + 4) = v103;
            _os_log_impl(&dword_222B39000, v96, v97, "Marking contact prompt ground truth id=%s for deletion due to all contacts being redacted", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v99);
            MEMORY[0x223DCA8C0](v99, -1, -1);
            MEMORY[0x223DCA8C0](v98, -1, -1);
          }

          else
          {

            sub_222BC6300(v9, type metadata accessor for ContactPromptGroundTruth);
          }

          (*v126)(v132, v18, v136);
          v104 = v123;
          v105 = *v123;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v104 = v105;
          v20 = v143;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v105 = sub_222B4A2C8(0, v105[2] + 1, 1, v105);
            *v123 = v105;
          }

          v108 = v105[2];
          v107 = v105[3];
          if (v108 >= v107 >> 1)
          {
            v105 = sub_222B4A2C8((v107 > 1), v108 + 1, 1, v105);
            *v123 = v105;
          }

          v105[2] = v108 + 1;
          (*(v124 + 32))(v105 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v108, v132, v136);
          goto LABEL_4;
        }

        if (v37)
        {
          if (!v43)
          {
            goto LABEL_84;
          }

          if (v36 == v44 && v37 == v43)
          {
            v35 = v133;
            v45 = v141;
            sub_222B98D00(v133, v141, v36, v37);
            v46 = v138;
            sub_222B98D00(v138, v42, v36, v37);
            v141 = v45;
            sub_222B98D00(v35, v45, v36, v37);
            sub_222B450E8(v46, v42, v36, v37);
          }

          else
          {
            v109 = v36;
            v119 = sub_222C951FC();
            v110 = v133;
            v111 = v141;
            sub_222B98D00(v133, v141, v109, v37);
            sub_222B98D00(v138, v42, v44, v43);
            v141 = v111;
            sub_222B98D00(v110, v111, v109, v37);
            v112 = v44;
            v35 = v110;
            v9 = v135;
            sub_222B450E8(v138, v42, v112, v43);
            if ((v119 & 1) == 0)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
          v91 = v133;
          sub_222B98D00(v133, v141, v36, 0);
          v92 = 0;
          if (v43)
          {
            goto LABEL_86;
          }

          v113 = v138;
          sub_222B98D00(v138, v42, v44, 0);
          sub_222B98D00(v91, v141, v134, 0);
          sub_222B450E8(v113, v42, v44, 0);
          v35 = v91;
          v9 = v135;
        }

        v114 = v141;

        v115 = v134;
        sub_222B450E8(v35, v114, v134, v37);
        sub_222B450E8(v35, v114, v115, v37);
      }

      else
      {
        v18 = v130;
        v37 = v131;
        v36 = v134;
        if (v42)
        {
          v55 = v43;
          v56 = v133;
          sub_222B98D00(v133, 0, v134, v131);
          sub_222B98D00(v138, v42, v44, v55);
          v57 = v141;
          goto LABEL_67;
        }

        sub_222B98D00(v138, 0, v44, v43);

        sub_222B450E8(v133, 0, v36, v37);
      }

LABEL_4:
      sub_222BC6300(v18, type metadata accessor for ContactPromptGroundTruth);
LABEL_5:
      v19 = v137 + 1;
    }

    while (v137 + 1 != v129);
  }
}

uint64_t sub_222BC591C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v34[6] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_222B8C9DC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + v7);

      return v9 & 1;
    }
  }

  v10 = *(v3 + 16);
  v11 = sub_222C9448C();
  if (qword_27D0246E8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FA8, qword_222C9BAF0);
  v12 = sub_222C9470C();
  v34[0] = 0;
  v13 = [v10 unifiedContactWithIdentifier:v11 keysToFetch:v12 error:v34];

  if (v13)
  {
    v14 = v34[0];

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    v9 = 1;
    sub_222BAB050(1, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 24) = v32;
    swift_endAccess();
  }

  else
  {
    v16 = v34[0];
    v17 = sub_222C9342C();

    swift_willThrow();
    v34[0] = v17;
    v18 = v17;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
    type metadata accessor for CNError(0);
    if (swift_dynamicCast())
    {
      v34[0] = v31;
      sub_222BC6360(&qword_27D0249A8, type metadata accessor for CNError, &unk_222C96640);
      sub_222C933EC();
      if (v31 == 200)
      {
        swift_beginAccess();
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v33 = *(v3 + 24);
        *(v3 + 24) = 0x8000000000000000;
        sub_222BAB050(0, a1, a2, v19);
        *(v3 + 24) = v33;
        swift_endAccess();

        v9 = 0;
        return v9 & 1;
      }
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);
    v21 = v17;

    v22 = sub_222C942FC();
    v23 = sub_222C94A4C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_222B437C0(a1, a2, v34);
      *(v24 + 12) = 2080;
      v26 = v17;
      v27 = sub_222C944EC();
      v29 = sub_222B437C0(v27, v28, v34);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_222B39000, v22, v23, "Error checking for existence of contactId=%s. error=%s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v25, -1, -1);
      MEMORY[0x223DCA8C0](v24, -1, -1);
    }

    swift_willThrow();
  }

  return v9 & 1;
}

void sub_222BC5DA8(uint64_t a1, void *a2)
{
  v45 = a2;
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v11 = sub_222C9431C();
  v12 = __swift_project_value_buffer(v11, qword_280FE2340);
  v41 = *(v5 + 16);
  v42 = v5 + 16;
  v41(v10, a1, v4);
  v43 = v12;
  v13 = sub_222C942FC();
  v14 = sub_222C94A3C();
  v15 = os_log_type_enabled(v13, v14);
  v44 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v38 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = v2;
    v19 = v18;
    v46 = v18;
    *v17 = 136315138;
    v20 = sub_222C9360C();
    v39 = v7;
    v21 = v4;
    v23 = v22;
    v24 = *(v5 + 8);
    v24(v10, v21);
    v25 = sub_222B437C0(v20, v23, &v46);
    v4 = v21;
    v7 = v39;

    *(v17 + 4) = v25;
    _os_log_impl(&dword_222B39000, v13, v14, "Deleting ground truth with id=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x223DCA8C0](v19, -1, -1);
    v26 = v17;
    a1 = v38;
    MEMORY[0x223DCA8C0](v26, -1, -1);
  }

  else
  {

    v24 = *(v5 + 8);
    v24(v10, v4);
  }

  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  if ((sub_222C940BC() & 1) == 0)
  {
    v27 = v24;
    v41(v7, a1, v4);
    v28 = sub_222C942FC();
    v29 = sub_222C94A4C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v4;
      v32 = swift_slowAlloc();
      v46 = v32;
      *v30 = 136315138;
      v33 = sub_222C9360C();
      v34 = v7;
      v36 = v35;
      v27(v34, v31);
      v37 = sub_222B437C0(v33, v36, &v46);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_222B39000, v28, v29, "Failed to delete ground truth id=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x223DCA8C0](v32, -1, -1);
      MEMORY[0x223DCA8C0](v30, -1, -1);
    }

    else
    {

      v27(v7, v4);
    }
  }
}

uint64_t InferenceDataCompliance.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222BC6298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BC6300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222BC6360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222BC63A8()
{
  type metadata accessor for QuickSongStopGroundTruthGenerator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262C0, qword_222C9CBE8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D0262A8 = 91;
  unk_27D0262B0 = 0xE100000000000000;
  return result;
}

void sub_222BC644C(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025888, &unk_222C993A0);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v48 - v4;
  v54 = type metadata accessor for MediaFeedbackGroundTruth(0);
  v49 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for MediaPlayClassification(0);
  MEMORY[0x28223BE20](v9);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v48 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v17;
  v20 = *(a2 + 16);
  v56 = v18;
  if (v20)
  {
    v21 = a2 + 32;
    v22 = (v18 + 56);
    v23 = (v18 + 48);
    v24 = MEMORY[0x277D84F90];
    v48 = &v48 - v17;
    do
    {
      sub_222B43E3C(v21, v58);
      sub_222B405A0(v58, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v25 = swift_dynamicCast();
      (*v22)(v8, v25 ^ 1u, 1, v9);
      if ((*v23)(v8, 1, v9) == 1)
      {
        sub_222B4FCD4(v8, &qword_27D0257D8, &unk_222C990C0);
      }

      else
      {
        sub_222BC7E0C(v8, v19, type metadata accessor for MediaPlayClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_222B4A278(0, v24[2] + 1, 1, v24);
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          v24 = sub_222B4A278((v26 > 1), v27 + 1, 1, v24);
        }

        v24[2] = v27 + 1;
        v28 = v24 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v27;
        v19 = v48;
        sub_222BC7E0C(v48, v28, type metadata accessor for MediaPlayClassification);
      }

      v21 += 40;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v29 = v24[2];
  if (v29)
  {
    v30 = 0;
    v31 = MEMORY[0x277D84F90];
    v32 = v56;
    while (v30 < v24[2])
    {
      v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v34 = *(v32 + 72);
      sub_222B77C5C(v24 + v33 + v34 * v30, v15, type metadata accessor for MediaPlayClassification);
      v35 = sub_222BCB8C4();
      if (v35 == 2 || (v35 & 1) != 0)
      {
        sub_222B77D34(v15, type metadata accessor for MediaPlayClassification);
      }

      else
      {
        sub_222BC7E0C(v15, v51, type metadata accessor for MediaPlayClassification);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v58[0] = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C53C(0, *(v31 + 16) + 1, 1);
          v31 = *&v58[0];
        }

        v38 = *(v31 + 16);
        v37 = *(v31 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_222B4C53C((v37 > 1), v38 + 1, 1);
          v31 = *&v58[0];
        }

        *(v31 + 16) = v38 + 1;
        sub_222BC7E0C(v51, v31 + v33 + v38 * v34, type metadata accessor for MediaPlayClassification);
        v32 = v56;
      }

      if (v29 == ++v30)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
    v32 = v56;
LABEL_25:

    v39 = *(v31 + 16);
    if (v39)
    {
      v40 = v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v41 = *(v32 + 72);
      v42 = v50;
      v43 = (v49 + 48);
      v44 = MEMORY[0x277D84F90];
      do
      {
        v45 = v52;
        sub_222B77C5C(v40, v52, type metadata accessor for MediaPlayClassification);
        sub_222BC6B3C(v55, v45, v42);
        sub_222B77D34(v45, type metadata accessor for MediaPlayClassification);
        if ((*v43)(v42, 1, v54) == 1)
        {
          sub_222B4FCD4(v42, &qword_27D025888, &unk_222C993A0);
        }

        else
        {
          sub_222BC7E0C(v42, v53, type metadata accessor for MediaFeedbackGroundTruth);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_222B4AB1C(0, v44[2] + 1, 1, v44);
          }

          v47 = v44[2];
          v46 = v44[3];
          if (v47 >= v46 >> 1)
          {
            v44 = sub_222B4AB1C((v46 > 1), v47 + 1, 1, v44);
          }

          v44[2] = v47 + 1;
          sub_222BC7E0C(v53, v44 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v47, type metadata accessor for MediaFeedbackGroundTruth);
          v42 = v50;
        }

        v40 += v41;
        --v39;
      }

      while (v39);
    }
  }
}

uint64_t sub_222BC6B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v103 - v10);
  MEMORY[0x28223BE20](v12);
  v119 = &v103 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v103 - v15;
  v17 = sub_222C9367C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for FeaturisedTurn(0);
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v116 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v22 - 8);
  v118 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v117 = (&v103 - v25);
  v121 = a2;
  v26 = sub_222BCB8C4();
  if (v26 == 2 || (v26 & 1) != 0)
  {
    if (qword_280FDFE78 != -1)
    {
LABEL_87:
      swift_once();
    }

    v45 = sub_222C9431C();
    __swift_project_value_buffer(v45, qword_280FE2340);
    v46 = sub_222C942FC();
    v47 = sub_222C94A4C();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_39;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v130 = v49;
    *v48 = 136315138;
    if (qword_27D0246F0 != -1)
    {
      swift_once();
    }

    *(v48 + 4) = sub_222B437C0(qword_27D0262A8, unk_27D0262B0, &v130);
    v50 = "%s buildGroundTruth was passed non-quickStop MediaPlayClassification. This should never occur";
    goto LABEL_38;
  }

  if (*(v121 + 8) != 1)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v51 = sub_222C9431C();
    __swift_project_value_buffer(v51, qword_280FE2340);
    v46 = sub_222C942FC();
    v47 = sub_222C94A3C();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_39;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v130 = v49;
    *v48 = 136315138;
    if (qword_27D0246F0 != -1)
    {
      swift_once();
    }

    *(v48 + 4) = sub_222B437C0(qword_27D0262A8, unk_27D0262B0, &v130);
    v50 = "%s Quick Song Stop was not a Siri initiated play, skipping ground truth generation";
LABEL_38:
    _os_log_impl(&dword_222B39000, v46, v47, v50, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x223DCA8C0](v49, -1, -1);
    MEMORY[0x223DCA8C0](v48, -1, -1);
LABEL_39:

    v53 = type metadata accessor for MediaFeedbackGroundTruth(0);
    v54 = *(*(v53 - 8) + 56);

    return v54(a3, 1, 1, v53);
  }

  v27 = sub_222BED3E4(a1);
  if (!v27)
  {
    if (qword_280FDFE78 != -1)
    {
LABEL_89:
      swift_once();
    }

    v52 = sub_222C9431C();
    __swift_project_value_buffer(v52, qword_280FE2340);
    v46 = sub_222C942FC();
    v47 = sub_222C94A4C();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_39;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v130 = v49;
    *v48 = 136315138;
    if (qword_27D0246F0 != -1)
    {
      swift_once();
    }

    *(v48 + 4) = sub_222B437C0(qword_27D0262A8, unk_27D0262B0, &v130);
    v50 = "%s Could not extract USO query from session, skipping ground truth generation";
    goto LABEL_38;
  }

  v103 = v11;
  v104 = v8;
  v108 = v20;
  v123 = v18;
  v109 = v16;
  v110 = v27;
  v111 = a3;
  v28 = *(v121 + 24);
  v124 = *(v121 + 16);
  v113 = (v120 + 56);
  v112 = (v120 + 48);
  v115 = a1;

  v114 = 0;
  while (1)
  {
    v38 = *(v115 + 16);
    v39 = v114;
    if (v114 == v38)
    {
      v40 = 1;
      v41 = v122;
      a3 = v118;
      v42 = v117;
    }

    else
    {
      v41 = v122;
      a3 = v118;
      v42 = v117;
      if (v114 >= v38)
      {
        __break(1u);
        goto LABEL_89;
      }

      sub_222B77C5C(v115 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v114, v117, type metadata accessor for FeaturisedTurn);
      v40 = 0;
      ++v39;
    }

    (*v113)(v42, v40, 1, v41);
    sub_222B5EC84(v42, a3);
    if ((*v112)(a3, 1, v41) == 1)
    {
      break;
    }

    v114 = v39;
    v43 = a3;
    a3 = v116;
    sub_222BC7E0C(v43, v116, type metadata accessor for FeaturisedTurn);
    v44 = *&a3[*(v41 + 28)];

    sub_222B77D34(a3, type metadata accessor for FeaturisedTurn);

    if (v44)
    {
      v29 = v44;
      v30 = (v44 + 64);
      v31 = -1;
      while (1)
      {
        ++v31;
        v32 = *(v29 + 16);
        if (v31 == v32)
        {
          break;
        }

        if (v31 >= v32)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        a3 = *(v30 - 4);
        v33 = *(v30 - 3);
        v35 = *(v30 - 2);
        v34 = *(v30 - 1);
        v36 = *v30;
        if (a3 == v124 && v33 == v28)
        {
          a3 = v124;
LABEL_43:

          v56 = v115;

          v127[0] = a3;
          v127[1] = v33;
          v127[2] = v35;
          v128 = v34;
          v129 = v36;
          extractMediaReference(event:)(v127, &v130);

          if (!v131)
          {
            goto LABEL_76;
          }

          v114 = v131;
          v105 = v130;
          v106 = v132;
          v107 = v133;
          v112 = v134;
          v113 = v135;
          LODWORD(v116) = v136;
          v118 = type metadata accessor for MediaPlayClassification(0);
          v128 = v118;
          v129 = &protocol witness table for MediaPlayClassification;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v127);
          sub_222B77C5C(v121, boxed_opaque_existential_1, type metadata accessor for MediaPlayClassification);
          sub_222B43E3C(v127, v125);
          v58 = *(v56 + 16);

          v124 = v58;
          if (v58)
          {
            v59 = 0;
            v121 = v115 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
            v120 = *(v120 + 72);
LABEL_46:
            v60 = __swift_project_boxed_opaque_existential_1(v125, v126);
            v61 = *(*(v60 + *(v118 + 9)) + 16);

            v62 = 0;
            do
            {
              if (v61 == v62)
              {

                if (++v59 != v124)
                {
                  goto LABEL_46;
                }

                goto LABEL_51;
              }

              a3 = v62 + 1;
              v63 = (*(v123 + 80) + 32) & ~*(v123 + 80);
              v64 = *(v123 + 72);
              sub_222BC7DC4(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v65 = sub_222C9447C();
              v62 = a3;
            }

            while ((v65 & 1) == 0);

            v117 = (v123 + 48);
LABEL_52:
            if (v59 >= v124)
            {
              goto LABEL_86;
            }

            v69 = *(v121 + v120 * v59 + *(v122 + 24));
            a3 = v119;
            sub_222B421FC(v69, v119);
            v70 = *v117;
            v71 = (*v117)(a3, 1, v17);
            sub_222B4FCD4(a3, &unk_27D026290, &qword_222C96B40);
            if (v71 == 1)
            {
              v72 = __OFADD__(v59++, 1);
              if (!v72)
              {
                while (v59 != v124)
                {
                  if (v59 >= v124)
                  {
                    goto LABEL_85;
                  }

                  v73 = __swift_project_boxed_opaque_existential_1(v125, v126);
                  v70 = *(v73 + *(v118 + 9));
                  v69 = *(v70 + 2);

                  v74 = v70 + v63;
                  v75 = v69 + 1;
                  while (--v75)
                  {
                    a3 = &v74[v64];
                    v69 = v17;
                    v76 = sub_222C9447C();
                    v74 = a3;
                    if (v76)
                    {

                      goto LABEL_52;
                    }
                  }

                  v72 = __OFADD__(v59++, 1);
                  if (v72)
                  {
                    goto LABEL_63;
                  }
                }

                goto LABEL_51;
              }

LABEL_63:
              __break(1u);
            }

            v77 = v103;
            sub_222B421FC(v69, v103);
            v78 = v104;
            sub_222B5551C(v77, v104);
            if (v70(v78, 1, v17) != 1)
            {
              v66 = v123;
              v68 = v109;
              (*(v123 + 32))(v109, v78, v17);
              sub_222B4FCD4(v77, &unk_27D026290, &qword_222C96B40);
              v67 = *(v66 + 56);
              v67(v68, 0, 1, v17);
              goto LABEL_66;
            }

            result = __swift_destroy_boxed_opaque_existential_0Tm(v125);
            __break(1u);
            return result;
          }

LABEL_51:
          v66 = v123;
          v67 = *(v123 + 56);
          v68 = v109;
          v67(v109, 1, 1, v17);
LABEL_66:

          v79 = v111;
          v80 = v116;
          __swift_destroy_boxed_opaque_existential_0Tm(v125);
          __swift_destroy_boxed_opaque_existential_0Tm(v127);
          if ((*(v66 + 48))(v68, 1, v17) != 1)
          {
            v89 = *(v66 + 32);
            v90 = v108;
            v89(v108, v68, v17);
            sub_222C9366C();
            v91 = type metadata accessor for MediaFeedbackGroundTruth(0);
            v92 = v91[8];
            v89(&v79[v92], v90, v17);
            v67(&v79[v92], 0, 1, v17);
            v79[v91[5]] = 0;
            *&v79[v91[6]] = v110;
            v93 = &v79[v91[7]];
            v94 = v114;
            *v93 = v105;
            *(v93 + 1) = v94;
            v95 = v107;
            *(v93 + 2) = v106;
            *(v93 + 3) = v95;
            v96 = v113;
            *(v93 + 4) = v112;
            *(v93 + 5) = v96;
            *(v93 + 24) = v80;
            return (*(*(v91 - 1) + 56))(v79, 0, 1, v91);
          }

          sub_222B4FE14(v105, v114, v106, v107, v112, v113);
          sub_222B4FCD4(v68, &unk_27D026290, &qword_222C96B40);
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v81 = sub_222C9431C();
          __swift_project_value_buffer(v81, qword_280FE2340);
          v82 = sub_222C942FC();
          v83 = sub_222C94A4C();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v127[0] = v85;
            *v84 = 136315138;
            if (qword_27D0246F0 != -1)
            {
              swift_once();
            }

            *(v84 + 4) = sub_222B437C0(qword_27D0262A8, unk_27D0262B0, v127);
            _os_log_impl(&dword_222B39000, v82, v83, "%s Could not extract original request ID from session, skipping ground truth generation", v84, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v85);
            MEMORY[0x223DCA8C0](v85, -1, -1);
            MEMORY[0x223DCA8C0](v84, -1, -1);
          }

          v86 = type metadata accessor for MediaFeedbackGroundTruth(0);
          v87 = *(*(v86 - 8) + 56);
          v88 = v79;
          return v87(v88, 1, 1, v86);
        }

        v30 += 5;
        if (sub_222C951FC())
        {
          goto LABEL_43;
        }
      }
    }
  }

LABEL_76:
  v97 = v111;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v98 = sub_222C9431C();
  __swift_project_value_buffer(v98, qword_280FE2340);
  v99 = sub_222C942FC();
  v100 = sub_222C94A4C();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v130 = v102;
    *v101 = 136315138;
    if (qword_27D0246F0 != -1)
    {
      swift_once();
    }

    *(v101 + 4) = sub_222B437C0(qword_27D0262A8, unk_27D0262B0, &v130);
    _os_log_impl(&dword_222B39000, v99, v100, "%s Could not extract referenced entity from session, skipping ground truth generation", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    MEMORY[0x223DCA8C0](v102, -1, -1);
    MEMORY[0x223DCA8C0](v101, -1, -1);
  }

  v86 = type metadata accessor for MediaFeedbackGroundTruth(0);
  v87 = *(*(v86 - 8) + 56);
  v88 = v97;
  return v87(v88, 1, 1, v86);
}

uint64_t sub_222BC7DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222BC7E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BC7EBC(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BC7F2C(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PhoneCallEventFeature.CallAnswered.__allocating_init(value:)(char a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PhoneCallEventFeature.CallAnswered.init(value:)(char a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222BC809C(char *a1)
{
  type metadata accessor for PhoneCallEventFeature.CallAnswered(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BC80E8(char *a1)
{
  type metadata accessor for PhoneCallEventFeature.CallAnswered(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PhoneCallEventFeature.AudioCallRoute.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222BC8514(int *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BC857C(int *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BC86C4(void *a1)
{
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v32 - v11;
  if ([a1 error] != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = [a1 eventBody];
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = v13;
  [a1 timestamp];
  sub_222C9351C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_222C9CD00;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026368, &unk_222C9CDE8);
  v16 = sub_222C944EC();
  v35 = v14;
  v18 = v17;
  v19 = type metadata accessor for CommonFeature.EventType(0);
  swift_allocObject();
  ObjectType = v16;
  v37 = v18;
  v20 = sub_222C93EEC();
  *(v15 + 56) = v19;
  v34 = MEMORY[0x277D5FBA0];
  *(v15 + 64) = sub_222BC8B58(&qword_27D026370, 255, type metadata accessor for CommonFeature.EventType, MEMORY[0x277D5FBA0]);
  *(v15 + 32) = v20;
  v21 = *(v3 + 16);
  v21(v8, v12, v2);
  v22 = type metadata accessor for CommonFeature.OrderingTimestamp(0);
  swift_allocObject();
  v21(v5, v8, v2);
  v23 = sub_222C93EEC();
  v33 = *(v3 + 8);
  v33(v8, v2);
  *(v15 + 96) = v22;
  v24 = v34;
  *(v15 + 104) = sub_222BC8B58(&qword_27D026378, 255, type metadata accessor for CommonFeature.OrderingTimestamp, v34);
  *(v15 + 72) = v23;
  v21(v8, v12, v2);
  sub_222C935BC();
  v26 = v25;
  started = type metadata accessor for CommonFeature.StartTimestamp(0);
  swift_allocObject();
  ObjectType = v26;
  v28 = sub_222C93EEC();
  v29 = v8;
  v30 = v33;
  v33(v29, v2);
  *(v15 + 136) = started;
  *(v15 + 144) = sub_222BC8B58(&unk_27D026380, 255, type metadata accessor for CommonFeature.StartTimestamp, v24);
  *(v15 + 112) = v28;
  swift_unknownObjectRelease();
  v30(v12, v2);
  return v15;
}

uint64_t sub_222BC8B58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222BC8BA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026390, qword_222C9CDF8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D03BB20 = 91;
  *algn_27D03BB28 = 0xE100000000000000;
  return result;
}

uint64_t sub_222BC8C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for EntityPromptClassification(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B858A8(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_222BC93E4(v12, v16);
    if (*(a1 + *(v4 + 28)))
    {
      v17 = v16[80];
      sub_222BC9448(v16, type metadata accessor for EntityPromptClassification);
      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_222BC9448(v16, type metadata accessor for EntityPromptClassification);
    }

LABEL_13:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v28 = sub_222C9431C();
    __swift_project_value_buffer(v28, qword_280FE2340);
    sub_222B85800(a1, v6);
    v29 = sub_222C942FC();
    v30 = sub_222C94A3C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315394;
      if (qword_27D0246F8 != -1)
      {
        swift_once();
      }

      *(v31 + 4) = sub_222B437C0(qword_27D03BB20, *algn_27D03BB28, &v39);
      *(v31 + 12) = 2080;
      v33 = sub_222C9360C();
      v35 = v34;
      sub_222BC9448(v6, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      v36 = sub_222B437C0(v33, v35, &v39);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_222B39000, v29, v30, "%s Suggestion (%s) marked as not redundant ", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v32, -1, -1);
      MEMORY[0x223DCA8C0](v31, -1, -1);
    }

    else
    {

      sub_222BC9448(v6, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    }

    return 1;
  }

  sub_222BC937C(v12);
  if ((*(a1 + *(v4 + 28)) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v18 = sub_222C9431C();
  __swift_project_value_buffer(v18, qword_280FE2340);
  sub_222B85800(a1, v9);
  v19 = sub_222C942FC();
  v20 = sub_222C94A3C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = v22;
    *v21 = 136315394;
    if (qword_27D0246F8 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_222B437C0(qword_27D03BB20, *algn_27D03BB28, &v39);
    *(v21 + 12) = 2080;
    v23 = sub_222C9360C();
    v25 = v24;
    sub_222BC9448(v9, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v26 = sub_222B437C0(v23, v25, &v39);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_222B39000, v19, v20, "%s Suggestion (%s) marked as redundant", v21, 0x16u);
    v27 = 2;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v22, -1, -1);
    MEMORY[0x223DCA8C0](v21, -1, -1);
  }

  else
  {

    sub_222BC9448(v9, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    return 2;
  }

  return v27;
}

void *sub_222BC91F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D59CC8]) init];
  if (v5)
  {
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v8 = sub_222C9361C();
    v9 = [v7 initWithNSUUID_];

    [v6 setSuggestionId_];
    [v6 setContactSuggestionOutcome_];
    [v6 setContactSuggestionRedundancyState_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v11 = sub_222C942FC();
    v12 = sub_222C94A4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222B39000, v11, v12, "Failed to create SELF template for PLUSSchemaPLUSContactSuggestionOutcomeReported", v13, 2u);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_222BC937C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BC93E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityPromptClassification(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BC9448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222BC94A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0) - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    do
    {
      sub_222B85800(v13, v10);
      v15 = type metadata accessor for EntityPromptClassification(0);
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
      v16 = sub_222BC8C30(v10, v6);
      sub_222BC937C(v6);
      v17 = sub_222BC91F0(v10, a2, v16);
      v18 = sub_222BC9448(v10, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      if (v17)
      {
        MEMORY[0x223DC94A0](v18);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222C9475C();
        }

        sub_222C947AC();
        v11 = v21;
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

uint64_t TypedGroundTruth.data.getter(uint64_t a1, uint64_t a2)
{
  sub_222C9323C();
  swift_allocObject();
  sub_222C9322C();
  v2 = sub_222C9321C();

  return v2;
}

uint64_t static TypedGroundTruth.fromData(data:)@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_222C931DC();
  swift_allocObject();
  sub_222C931CC();
  sub_222C931BC();

  v7 = *(*(a3 - 8) + 56);

  return v7(a5, 0, 1, a3);
}

uint64_t InferredGroundTruthStore.readTypedGroundTruth<A>(_:limit:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 32))(a5, a7);
  type metadata accessor for AnyGroundTruth(0);
  sub_222BCB578(&qword_280FDFE70, type metadata accessor for AnyGroundTruth, &protocol conformance descriptor for AnyGroundTruth);
  sub_222C940AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026398, &qword_222C9CE40);
  sub_222BCAF64();
  v7 = sub_222C9466C();

  return v7;
}

uint64_t AnyGroundTruth.init(payload:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnyGroundTruth(0);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 48))(v7, v8);
  if (v10 >> 60 == 15)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v11 = *(v22 + 56);

    return v11(a2, 1, 1, v4);
  }

  else
  {
    v13 = &v6[*(v4 + 20)];
    *v13 = v9;
    v13[1] = v10;
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v16 = (*(v15 + 40))(v14, v15);
    v17 = &v6[*(v4 + 24)];
    *v17 = v16;
    v17[1] = v18;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    (*(v20 + 24))(v19, v20);
    sub_222BCB030(v6, a2);
    (*(v22 + 56))(a2, 0, 1, v4);
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }
}

uint64_t AnyGroundTruth.unwrapped<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = (*(a2 + 32))(a1, a2);
  v10 = v9;
  v11 = type metadata accessor for AnyGroundTruth(0);
  v12 = (v4 + *(v11 + 24));
  if (v8 == *v12 && v10 == v12[1])
  {

    return (*(a2 + 56))(*(v4 + *(v11 + 20)), *(v4 + *(v11 + 20) + 8), a1, a2);
  }

  v14 = sub_222C951FC();

  if (v14)
  {
    return (*(a2 + 56))(*(v4 + *(v11 + 20)), *(v4 + *(v11 + 20) + 8), a1, a2);
  }

  v15 = *(*(a1 - 8) + 56);

  return v15(a3, 1, 1, a1);
}

uint64_t AnyGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnyGroundTruth.payload.getter()
{
  v1 = v0 + *(type metadata accessor for AnyGroundTruth(0) + 20);
  v2 = *v1;
  sub_222B80358(*v1, *(v1 + 8));
  return v2;
}

uint64_t AnyGroundTruth.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnyGroundTruth(0) + 24));

  return v1;
}

uint64_t sub_222BC9EE8()
{
  v1 = 0x64616F6C796170;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_222BC9F30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222BCB468(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222BC9F58(uint64_t a1)
{
  v2 = sub_222BCB0F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BC9F94(uint64_t a1)
{
  v2 = sub_222BCB0F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnyGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0263A8, &qword_222C9CE50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BCB0F0();
  sub_222C9536C();
  LOBYTE(v13) = 0;
  sub_222C9367C();
  sub_222BCB578(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for AnyGroundTruth(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_222B80358(v13, v10);
    sub_222B9BDF0();
    sub_222C9512C();
    sub_222B803C0(v13, v14);
    LOBYTE(v13) = 2;
    sub_222C950EC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AnyGroundTruth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_222C9367C();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0263B8, &qword_222C9CE58);
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AnyGroundTruth(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BCB0F0();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v25;
  v11 = v26;
  v22 = v8;
  v23 = v10;
  LOBYTE(v29) = 0;
  sub_222BCB578(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v27;
  v13 = v28;
  sub_222C9507C();
  (*(v11 + 32))(v23, v14, v4);
  v30 = 1;
  sub_222B9B4B8();
  sub_222C9507C();
  *&v23[*(v22 + 20)] = v29;
  LOBYTE(v29) = 2;
  v15 = sub_222C9503C();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = &v23[*(v22 + 24)];
  *v19 = v15;
  v19[1] = v17;
  sub_222BCB144(v18, v24);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222BCB094(v18);
}

uint64_t sub_222BCA5AC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_222BCA5E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_222B80358(v4, v5);
}

void sub_222BCA664(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), const char *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0263A0, &qword_222C9CE48);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23[-1] - v11;
  v13 = type metadata accessor for AnyGroundTruth(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B43E3C(a1, v23);
  AnyGroundTruth.init(payload:)(v23, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_222BCAFC8(v12);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v17 = sub_222C9431C();
    __swift_project_value_buffer(v17, qword_280FE2340);
    v18 = sub_222C942FC();
    v19 = sub_222C94A4C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_222B39000, v18, v19, a5, v20, 2u);
      MEMORY[0x223DCA8C0](v20, -1, -1);
    }
  }

  else
  {
    sub_222BCB030(v12, v16);
    v21 = sub_222BCB578(&qword_280FDFE70, type metadata accessor for AnyGroundTruth, &protocol conformance descriptor for AnyGroundTruth);
    a4(v16, v13, v21, a2, a3);
    sub_222BCB094(v16);
  }
}

Swift::Void __swiftcall InferredGroundTruthStore.writeTypedGroundTruth(groundTruths:)(Swift::OpaquePointer groundTruths)
{
  v5 = sub_222BCA94C(v3, v1, v2);
  v6 = *(groundTruths._rawValue + 2);
  if (v6)
  {
    v7 = v5;
    v8 = groundTruths._rawValue + 32;
    do
    {
      v7(v8);
      v8 += 40;
      --v6;
    }

    while (v6);
  }
}

void (*sub_222BCA94C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_222BCB5C0;
}

uint64_t sub_222BCAAB4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_222C9323C();
  swift_allocObject();
  sub_222C9322C();
  sub_222BCB578(a3, a4, a5);
  v8 = sub_222C9321C();

  return v8;
}

uint64_t sub_222BCABAC@<X0>(uint64_t a3@<X2>, unint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_222C931DC();
  swift_allocObject();
  sub_222C931CC();
  sub_222BCB578(a4, a5, a6);
  sub_222C931BC();

  v12 = *(*(a3 - 8) + 56);

  return v12(a7, 0, 1, a3);
}

uint64_t type metadata accessor for AnyGroundTruth(uint64_t a1)
{
  result = qword_280FDFE50;
  if (!qword_280FDFE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222BCAF64()
{
  result = qword_280FDB7F0;
  if (!qword_280FDB7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026398, &qword_222C9CE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDB7F0);
  }

  return result;
}

uint64_t sub_222BCAFC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0263A0, &qword_222C9CE48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BCB030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroundTruth(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BCB094(uint64_t a1)
{
  v2 = type metadata accessor for AnyGroundTruth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222BCB0F0()
{
  result = qword_27D0263B0;
  if (!qword_27D0263B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0263B0);
  }

  return result;
}

uint64_t sub_222BCB144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BCB2CC(uint64_t a1)
{
  result = sub_222C9367C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_222BCB364()
{
  result = qword_27D0263C0;
  if (!qword_27D0263C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0263C0);
  }

  return result;
}

unint64_t sub_222BCB3BC()
{
  result = qword_27D0263C8;
  if (!qword_27D0263C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0263C8);
  }

  return result;
}

unint64_t sub_222BCB414()
{
  result = qword_27D0263D0;
  if (!qword_27D0263D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0263D0);
  }

  return result;
}

uint64_t sub_222BCB468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_222BCB578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static EntityUtteranceComparison.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return (*(a1 + 32) ^ *(a2 + 32) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MediaPlayClassification.init(totalPlayLength:siriStarted:playMediaEventId:nowPlayingEventId:playMediaTurn:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = a8;
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  v10 = type metadata accessor for MediaPlayClassification(0);
  v11 = v10[8];
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(a7 + v11, a6, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_222C97C40;
  v14(v16 + v15, a7 + v11, v12);
  *(a7 + v10[9]) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_222C96900;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  v18 = *(v13 + 8);

  result = v18(a6, v12);
  *(a7 + v10[10]) = v17;
  return result;
}

uint64_t type metadata accessor for MediaPlayClassification(uint64_t a1)
{
  result = qword_27D026428;
  if (!qword_27D026428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222BCB8C4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v2 = sub_222C9431C();
    __swift_project_value_buffer(v2, qword_280FE2340);
    v3 = sub_222C942FC();
    v4 = sub_222C94A4C();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_9;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (qword_27D024700 != -1)
    {
      swift_once();
    }

    *(v5 + 4) = sub_222B437C0(qword_27D026418, unk_27D026420, &v11);
    v7 = "%s Encountered totalPlayLength of 0.0";
LABEL_8:
    _os_log_impl(&dword_222B39000, v3, v4, v7, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x223DCA8C0](v6, -1, -1);
    MEMORY[0x223DCA8C0](v5, -1, -1);
LABEL_9:

    return 2;
  }

  if (*v0 >= 0.0 && v1 < 30.0)
  {
    return 0;
  }

  if (v1 < 30.0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v3 = sub_222C942FC();
    v4 = sub_222C94A4C();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_9;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (qword_27D024700 != -1)
    {
      swift_once();
    }

    *(v5 + 4) = sub_222B437C0(qword_27D026418, unk_27D026420, &v11);
    v7 = "%s Encountered unhandled totalPlayLength";
    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_222BCBB48()
{
  type metadata accessor for MediaPlayClassification(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026438, qword_222C9D188);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D026418 = 91;
  unk_27D026420 = 0xE100000000000000;
  return result;
}

uint64_t MediaPlayClassification.referencedTurns.getter()
{
  type metadata accessor for MediaPlayClassification(0);
}

uint64_t MediaPlayClassification.referencedEvents.getter()
{
  type metadata accessor for MediaPlayClassification(0);
}

void sub_222BCBC74(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222BCBD34(319);
    if (v2 <= 0x3F)
    {
      sub_222B85C4C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222BCBD34(uint64_t a1)
{
  if (!qword_280FDB808)
  {
    sub_222C9367C();
    v1 = sub_222C947FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280FDB808);
    }
  }
}

uint64_t static InferenceLogUtils.loggerTag<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v2 = sub_222C944EC();
  MEMORY[0x223DC9330](v2);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_222BCBDFC()
{
  v0 = sub_222C9431C();
  __swift_allocate_value_buffer(v0, qword_280FE2340);
  __swift_project_value_buffer(v0, qword_280FE2340);
  return sub_222C9430C();
}

uint64_t sub_222BCBE78()
{
  sub_222C93B7C();
  result = sub_222C93B6C();
  qword_280FDF1F8 = result;
  return result;
}

uint64_t coreAnalyticsLogger.getter()
{
  if (qword_280FDF1F0 != -1)
  {
    swift_once();
  }
}

uint64_t makeNowPlayingFeatureExtractor()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NowPlayingFeatureExtractor(0);
  swift_allocObject();
  v3 = sub_222C9417C();
  a1[3] = v2;
  result = sub_222BCCCA8(&qword_27D026440, type metadata accessor for NowPlayingFeatureExtractor, MEMORY[0x277D5FCC8]);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for NowPlayingFeatureExtractor(uint64_t a1)
{
  result = qword_27D026458;
  if (!qword_27D026458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_222BCC064(void *a1)
{
  sub_222BCCB38(a1);
  v2 = type metadata accessor for CommonFeature.UniqueIdentifier(0);
  swift_allocObject();
  v3 = sub_222C93EEC();
  v87[8] = v2;
  v4 = MEMORY[0x277D5FBA0];
  v87[9] = sub_222BCCCA8(&qword_27D026468, type metadata accessor for CommonFeature.UniqueIdentifier, MEMORY[0x277D5FBA0]);
  v87[5] = v3;
  v5 = [a1 bundleID];
  v6 = sub_222C9449C();
  v8 = v7;

  v9 = type metadata accessor for CommonFeature.BundleID(0);
  swift_allocObject();
  *&v84 = v6;
  *(&v84 + 1) = v8;
  v10 = sub_222C93EEC();
  v87[13] = v9;
  v87[14] = sub_222BCCCA8(&qword_27D026470, type metadata accessor for CommonFeature.BundleID, v4);
  v87[10] = v10;
  v11 = [a1 playbackState];
  if (v11 >= 6)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = type metadata accessor for NowPlayingFeatures.PlaybackState(0);
  swift_allocObject();
  LOBYTE(v84) = v12;
  v14 = sub_222C93EEC();
  v87[18] = v13;
  v87[19] = sub_222BCCCA8(&qword_27D026478, type metadata accessor for NowPlayingFeatures.PlaybackState, v4);
  v87[15] = v14;
  v15 = [a1 title];
  v16 = sub_222C9449C();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    v16 = 0;
    v18 = 0;
  }

  v20 = type metadata accessor for NowPlayingFeatures.Title(0);
  swift_allocObject();
  *&v84 = v16;
  *(&v84 + 1) = v18;
  v21 = sub_222C93EDC();
  v22 = v21;
  if (v21)
  {
    v21 = sub_222BCCCA8(&qword_27D0264B0, type metadata accessor for NowPlayingFeatures.Title, MEMORY[0x277D5FBA0]);
  }

  else
  {
    v20 = 0;
    v87[21] = 0;
    v87[22] = 0;
  }

  v87[20] = v22;
  v87[23] = v20;
  v87[24] = v21;
  v23 = [a1 artist];
  v24 = sub_222C9449C();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    v24 = 0;
    v26 = 0;
  }

  v28 = type metadata accessor for NowPlayingFeatures.Artist(0);
  swift_allocObject();
  *&v84 = v24;
  *(&v84 + 1) = v26;
  v29 = sub_222C93EDC();
  v30 = v29;
  if (v29)
  {
    v29 = sub_222BCCCA8(&qword_27D0264A8, type metadata accessor for NowPlayingFeatures.Artist, MEMORY[0x277D5FBA0]);
  }

  else
  {
    v28 = 0;
    v87[26] = 0;
    v87[27] = 0;
  }

  v87[25] = v30;
  v87[28] = v28;
  v87[29] = v29;
  v31 = [a1 album];
  v32 = sub_222C9449C();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    v32 = 0;
    v34 = 0;
  }

  v36 = type metadata accessor for NowPlayingFeatures.Album(0);
  swift_allocObject();
  *&v84 = v32;
  *(&v84 + 1) = v34;
  v37 = sub_222C93EDC();
  v38 = v37;
  if (v37)
  {
    v37 = sub_222BCCCA8(&qword_27D0264A0, type metadata accessor for NowPlayingFeatures.Album, MEMORY[0x277D5FBA0]);
  }

  else
  {
    v36 = 0;
    v87[31] = 0;
    v87[32] = 0;
  }

  v87[30] = v38;
  v87[33] = v36;
  v87[34] = v37;
  v39 = [a1 genre];
  v40 = sub_222C9449C();
  v42 = v41;

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {

    v40 = 0;
    v42 = 0;
  }

  v44 = type metadata accessor for NowPlayingFeatures.Genre(0);
  swift_allocObject();
  *&v84 = v40;
  *(&v84 + 1) = v42;
  v45 = sub_222C93EDC();
  v46 = v45;
  if (v45)
  {
    v45 = sub_222BCCCA8(&qword_27D026498, type metadata accessor for NowPlayingFeatures.Genre, MEMORY[0x277D5FBA0]);
  }

  else
  {
    v44 = 0;
    v87[36] = 0;
    v87[37] = 0;
  }

  v87[35] = v46;
  v87[38] = v44;
  v87[39] = v45;
  v47 = [a1 mediaType];
  v48 = sub_222C9449C();
  v50 = v49;

  sub_222BCC908(v48, v50, &v84);
  v51 = v84;
  v52 = type metadata accessor for NowPlayingFeatures.MediaType(0);
  swift_allocObject();
  v81 = v51;
  v53 = sub_222C93EEC();
  v87[43] = v52;
  v54 = MEMORY[0x277D5FBA0];
  v87[44] = sub_222BCCCA8(&qword_27D026480, type metadata accessor for NowPlayingFeatures.MediaType, MEMORY[0x277D5FBA0]);
  v87[40] = v53;
  v55 = [a1 duration];
  v56 = type metadata accessor for NowPlayingFeatures.Duration(0);
  swift_allocObject();
  *&v84 = v55;
  v57 = sub_222C93EEC();
  v87[48] = v56;
  v87[49] = sub_222BCCCA8(&qword_27D026488, type metadata accessor for NowPlayingFeatures.Duration, v54);
  v87[45] = v57;
  v58 = [a1 iTunesStoreIdentifier];
  v59 = sub_222C9449C();
  v61 = v60;

  v62 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v62 = v59 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {

    v59 = 0;
    v61 = 0;
  }

  v63 = type metadata accessor for NowPlayingFeatures.ITunesStoreIdentifier(0);
  swift_allocObject();
  *&v84 = v59;
  *(&v84 + 1) = v61;
  v64 = sub_222C93EDC();
  v65 = v64;
  if (v64)
  {
    v64 = sub_222BCCCA8(&qword_27D026490, type metadata accessor for NowPlayingFeatures.ITunesStoreIdentifier, MEMORY[0x277D5FBA0]);
  }

  else
  {
    v63 = 0;
    v87[52] = 0;
    v87[51] = 0;
  }

  v87[50] = v65;
  v87[53] = v63;
  v87[54] = v64;
  v66 = 4;
  v67 = MEMORY[0x277D84F90];
  do
  {
    sub_222B43F34(&v87[v66 + 1], &v84);
    v79[0] = v84;
    v79[1] = v85;
    v80 = v86;
    if (*(&v85 + 1))
    {
      sub_222B405A0(v79, &v81);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87[0] = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_222B4A108(0, v67[2] + 1, 1, v67);
        v87[0] = v67;
      }

      v70 = v67[2];
      v69 = v67[3];
      if (v70 >= v69 >> 1)
      {
        v67 = sub_222B4A108((v69 > 1), v70 + 1, 1, v67);
        v87[0] = v67;
      }

      v71 = v82;
      v72 = v83;
      v73 = __swift_mutable_project_boxed_opaque_existential_1(&v81, v82);
      v74 = MEMORY[0x28223BE20](v73);
      v76 = v79 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v77 + 16))(v76, v74);
      sub_222B4F8F0(v70, v76, v87, v71, v72);
      __swift_destroy_boxed_opaque_existential_0Tm(&v81);
    }

    else
    {
      sub_222B43FA4(v79);
    }

    v66 += 5;
  }

  while (v66 != 54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024860, &unk_222C962F0);
  swift_arrayDestroy();
  return v67;
}

uint64_t sub_222BCC908@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v6 = a1;
  result = *MEMORY[0x277D27B08];
  if (!*MEMORY[0x277D27B08])
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (sub_222C9449C() == v6 && v8 == a2)
  {
    v11 = 1;
    goto LABEL_13;
  }

  v10 = sub_222C951FC();

  if (v10)
  {
    v11 = 1;
    goto LABEL_14;
  }

  result = *MEMORY[0x277D27B10];
  if (!*MEMORY[0x277D27B10])
  {
    goto LABEL_37;
  }

  if (sub_222C9449C() == v6 && v12 == a2)
  {
    v11 = 2;
    goto LABEL_13;
  }

  v14 = sub_222C951FC();

  if (v14)
  {
    v11 = 2;
    goto LABEL_14;
  }

  result = *MEMORY[0x277D27AF0];
  if (!*MEMORY[0x277D27AF0])
  {
    goto LABEL_38;
  }

  if (sub_222C9449C() == v6 && v15 == a2)
  {
    v11 = 3;
    goto LABEL_13;
  }

  v16 = sub_222C951FC();

  if (v16)
  {
    v11 = 3;
    goto LABEL_14;
  }

  result = *MEMORY[0x277D27B00];
  if (*MEMORY[0x277D27B00])
  {
    if (sub_222C9449C() != v6 || v17 != a2)
    {
      v18 = sub_222C951FC();

      v11 = a2;
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      v11 = 4;
LABEL_14:

      v6 = 0;
LABEL_15:
      *a3 = v6;
      a3[1] = v11;
      return result;
    }

    v11 = 4;
LABEL_13:

    goto LABEL_14;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_222BCCB00()
{
  sub_222C9418C();

  return swift_deallocClassInstance();
}

uint64_t sub_222BCCB38(void *a1)
{
  v2 = [a1 uniqueID];
  v3 = sub_222C9449C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = [a1 uniqueID];
    v8 = sub_222C9449C();
  }

  else
  {
    sub_222C94D1C();
    MEMORY[0x223DC9330](0x6979616C50776F4ELL, 0xEB000000003A676ELL);
    v9 = [a1 title];
    v10 = sub_222C9449C();
    v12 = v11;

    MEMORY[0x223DC9330](v10, v12);

    MEMORY[0x223DC9330](58, 0xE100000000000000);
    [a1 absoluteTimestamp];
    sub_222C948DC();
    return 0;
  }

  return v8;
}

uint64_t sub_222BCCCA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MediaFeedbackGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MediaFeedbackGroundTruth.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaFeedbackGroundTruth(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for MediaFeedbackGroundTruth(uint64_t a1)
{
  result = qword_280FDE508;
  if (!qword_280FDE508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaFeedbackGroundTruth.usoQuery.getter()
{
  type metadata accessor for MediaFeedbackGroundTruth(0);
}

uint64_t MediaFeedbackGroundTruth.mediaReference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaFeedbackGroundTruth(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 24);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_222B554C0(&v9, v8);
}

uint64_t sub_222BCCE8C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x79726575516F7375;
  v4 = 0x666552616964656DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656372756F73;
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

uint64_t sub_222BCCF28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222BCF294(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222BCCF50(uint64_t a1)
{
  v2 = sub_222BCEA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BCCF8C(uint64_t a1)
{
  v2 = sub_222BCEA00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaFeedbackGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264B8, &unk_222C9D230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BCEA00();
  sub_222C9536C();
  LOBYTE(v23[0]) = 0;
  sub_222C9367C();
  sub_222BCF578(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = type metadata accessor for MediaFeedbackGroundTruth(0);
    LOBYTE(v23[0]) = *(v3 + v9[5]);
    LOBYTE(v19) = 1;
    sub_222B52A64();
    sub_222C9512C();
    v26[0] = *(v3 + v9[6]);
    v25 = 2;
    sub_222C9386C();
    sub_222BCF578(&qword_27D025150, MEMORY[0x277D5E9D8], MEMORY[0x277D5E450]);
    sub_222C9512C();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    v23[0] = *v10;
    v23[1] = v11;
    v13 = *v10;
    v12 = v10[1];
    v23[2] = v10[2];
    v24 = *(v10 + 24);
    v19 = v13;
    v20 = v12;
    v21 = v10[2];
    v22 = *(v10 + 24);
    v18 = 3;
    sub_222B554C0(v23, v16);
    sub_222B55A2C();
    sub_222C9512C();
    v16[0] = v19;
    v16[1] = v20;
    v16[2] = v21;
    v17 = v22;
    sub_222B55A80(v16);
    v15[15] = 4;
    sub_222C950DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MediaFeedbackGroundTruth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_222C9367C();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264C8, &qword_222C9D240);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v20 - v8;
  v10 = type metadata accessor for MediaFeedbackGroundTruth(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BCEA00();
  v25 = v9;
  v13 = v27;
  sub_222C9535C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = v5;
  v14 = v12;
  v15 = v22;
  LOBYTE(v28) = 0;
  sub_222BCF578(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_222C9507C();
  (*(v15 + 32))(v14, v24, v6);
  v33 = 1;
  sub_222B551D4();
  sub_222C9507C();
  *(v14 + v10[5]) = v28;
  sub_222C9386C();
  v33 = 2;
  sub_222BCF578(&qword_27D025180, MEMORY[0x277D5E9D8], MEMORY[0x277D5E458]);
  sub_222C9507C();
  v16 = v23;
  *(v14 + v10[6]) = v28;
  v33 = 3;
  sub_222B55B4C();
  sub_222C9507C();
  v17 = v14 + v10[7];
  v18 = v29;
  *v17 = v28;
  *(v17 + 16) = v18;
  *(v17 + 32) = v30;
  *(v17 + 48) = v31;
  v32 = 4;
  sub_222C9502C();
  (*(v16 + 8))(v25, v26);
  sub_222B55BA0(v27, v14 + v10[8]);
  sub_222BCEA54(v14, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222BCEAB8(v14);
}

unint64_t sub_222BCD8D4()
{
  v1 = 0x6673736563637573;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F74536B63697571;
  }
}

uint64_t sub_222BCD944@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222BCF448(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222BCD96C(uint64_t a1)
{
  v2 = sub_222BCEB14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BCD9A8(uint64_t a1)
{
  v2 = sub_222BCEB14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BCD9E4(uint64_t a1)
{
  v2 = sub_222BCEB68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BCDA20(uint64_t a1)
{
  v2 = sub_222BCEB68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BCDA5C(uint64_t a1)
{
  v2 = sub_222BCEC10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BCDA98(uint64_t a1)
{
  v2 = sub_222BCEC10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222BCDAD4(uint64_t a1)
{
  v2 = sub_222BCEBBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BCDB10(uint64_t a1)
{
  v2 = sub_222BCEBBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaFeedbackGroundTruthSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264D0, &qword_222C9D248);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264D8, &qword_222C9D250);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264E0, &qword_222C9D258);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0264E8, &qword_222C9D260);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BCEB14();
  sub_222C9536C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_222BCEBBC();
      v9 = v21;
      sub_222C950BC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_222BCEB68();
      v9 = v24;
      sub_222C950BC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_222BCEC10();
    sub_222C950BC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t MediaFeedbackGroundTruthSource.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t MediaFeedbackGroundTruthSource.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026510, &qword_222C9D268);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026518, &qword_222C9D270);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026520, &qword_222C9D278);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026528, &unk_222C9D280);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_222BCEB14();
  v15 = v36;
  sub_222C9535C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_222C9508C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_222B572CC();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_222C94DBC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00);
      *v24 = &type metadata for MediaFeedbackGroundTruthSource;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_222BCEBBC();
          sub_222C94FFC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_222BCEB68();
          v26 = v17;
          sub_222C94FFC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_222BCEC10();
        sub_222C94FFC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t MediaFeedbackGroundTruth.with(source:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_222C9367C();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for MediaFeedbackGroundTruth(0);
  v7 = *(v2 + v6[6]);
  v8 = (v2 + v6[7]);
  v9 = v8[2];
  v15 = v8[1];
  v16 = v9;
  v17 = *(v8 + 24);
  v14 = *v8;
  sub_222B5551C(v2 + v6[8], a2 + v6[8]);
  *(a2 + v6[5]) = v4;
  *(a2 + v6[6]) = v7;
  v10 = a2 + v6[7];
  v11 = v15;
  *v10 = v14;
  *(v10 + 16) = v11;
  *(v10 + 32) = v16;
  *(v10 + 48) = v17;

  return sub_222B554C0(&v14, v13);
}

BOOL _s28SiriPrivateLearningInference24MediaFeedbackGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for MediaFeedbackGroundTruth(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    return 0;
  }

  v15 = v14;
  if ((_s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(*(a1 + *(v14 + 24)), *(a2 + *(v14 + 24))) & 1) == 0)
  {
    return 0;
  }

  v33 = v5;
  v16 = (a1 + *(v15 + 28));
  v17 = v16[1];
  v44[0] = *v16;
  v44[1] = v17;
  v19 = *v16;
  v18 = v16[1];
  v44[2] = v16[2];
  v45 = *(v16 + 24);
  v20 = v16[2];
  v41 = v18;
  v42 = v20;
  v43 = *(v16 + 24);
  v40 = v19;
  v21 = (a2 + *(v15 + 28));
  v22 = v21[2];
  v23 = *v21;
  v24 = *v21;
  v47 = v21[1];
  v48 = v22;
  v46 = v23;
  v49 = *(v21 + 24);
  v36 = v24;
  v37 = v47;
  v38 = v21[2];
  v39 = *(v21 + 24);
  sub_222B554C0(v44, v35);
  sub_222B554C0(&v46, v35);
  v34 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v40, &v36);
  v50[0] = v36;
  v50[1] = v37;
  v50[2] = v38;
  v51 = v39;
  sub_222B55A80(v50);
  v52[0] = v40;
  v52[1] = v41;
  v52[2] = v42;
  v53 = v43;
  sub_222B55A80(v52);
  if (!v34)
  {
    return 0;
  }

  v25 = *(v15 + 32);
  v26 = *(v11 + 48);
  sub_222B5551C(a1 + v25, v13);
  sub_222B5551C(a2 + v25, &v13[v26]);
  v27 = v33;
  v28 = *(v33 + 48);
  if (v28(v13, 1, v4) == 1)
  {
    if (v28(&v13[v26], 1, v4) == 1)
    {
      sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
      return 1;
    }

    goto LABEL_10;
  }

  sub_222B5551C(v13, v10);
  if (v28(&v13[v26], 1, v4) == 1)
  {
    (*(v27 + 8))(v10, v4);
LABEL_10:
    sub_222B4FCD4(v13, &qword_27D025290, &unk_222C97C30);
    return 0;
  }

  (*(v27 + 32))(v7, &v13[v26], v4);
  sub_222BCF578(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v30 = sub_222C9447C();
  v31 = *(v27 + 8);
  v31(v7, v4);
  v31(v10, v4);
  sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
  return (v30 & 1) != 0;
}

unint64_t sub_222BCEA00()
{
  result = qword_27D0264C0;
  if (!qword_27D0264C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0264C0);
  }

  return result;
}

uint64_t sub_222BCEA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaFeedbackGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BCEAB8(uint64_t a1)
{
  v2 = type metadata accessor for MediaFeedbackGroundTruth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222BCEB14()
{
  result = qword_27D0264F0;
  if (!qword_27D0264F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0264F0);
  }

  return result;
}

unint64_t sub_222BCEB68()
{
  result = qword_27D0264F8;
  if (!qword_27D0264F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0264F8);
  }

  return result;
}

unint64_t sub_222BCEBBC()
{
  result = qword_27D026500;
  if (!qword_27D026500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026500);
  }

  return result;
}

unint64_t sub_222BCEC10()
{
  result = qword_27D026508;
  if (!qword_27D026508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026508);
  }

  return result;
}

uint64_t sub_222BCEC64(uint64_t a1)
{
  *(a1 + 8) = sub_222BCF578(&qword_27D0263F8, type metadata accessor for MediaFeedbackGroundTruth, &protocol conformance descriptor for MediaFeedbackGroundTruth);
  result = sub_222BCF578(&qword_27D026400, type metadata accessor for MediaFeedbackGroundTruth, &protocol conformance descriptor for MediaFeedbackGroundTruth);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_222BCECEC()
{
  result = qword_27D026530;
  if (!qword_27D026530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026530);
  }

  return result;
}

void sub_222BCED68(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222C9386C();
    if (v2 <= 0x3F)
    {
      sub_222B56160(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_222BCEE78()
{
  result = qword_27D026538;
  if (!qword_27D026538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026538);
  }

  return result;
}

unint64_t sub_222BCEED0()
{
  result = qword_27D026540;
  if (!qword_27D026540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026540);
  }

  return result;
}

unint64_t sub_222BCEF28()
{
  result = qword_27D026548;
  if (!qword_27D026548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026548);
  }

  return result;
}

unint64_t sub_222BCEF80()
{
  result = qword_27D026550;
  if (!qword_27D026550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026550);
  }

  return result;
}

unint64_t sub_222BCEFD8()
{
  result = qword_27D026558;
  if (!qword_27D026558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026558);
  }

  return result;
}

unint64_t sub_222BCF030()
{
  result = qword_27D026560;
  if (!qword_27D026560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026560);
  }

  return result;
}

unint64_t sub_222BCF088()
{
  result = qword_27D026568;
  if (!qword_27D026568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026568);
  }

  return result;
}

unint64_t sub_222BCF0E0()
{
  result = qword_27D026570;
  if (!qword_27D026570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026570);
  }

  return result;
}

unint64_t sub_222BCF138()
{
  result = qword_27D026578;
  if (!qword_27D026578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026578);
  }

  return result;
}

unint64_t sub_222BCF190()
{
  result = qword_27D026580;
  if (!qword_27D026580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026580);
  }

  return result;
}

unint64_t sub_222BCF1E8()
{
  result = qword_27D026588;
  if (!qword_27D026588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026588);
  }

  return result;
}

unint64_t sub_222BCF240()
{
  result = qword_27D026590;
  if (!qword_27D026590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026590);
  }

  return result;
}

uint64_t sub_222BCF294(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726575516F7375 && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666552616964656DLL && a2 == 0xEE0065636E657265 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CA9930 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222BCF448(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F74536B63697571 && a2 == 0xE900000000000070;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6673736563637573 && a2 == 0xEE0079616C506C75 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000222CAB370 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_222BCF578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *NowPlayingEventStreamProcessor.__allocating_init(context:)(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = swift_allocObject();
  sub_222BCF80C(a1, v7, type metadata accessor for EventStreamContext);
  sub_222BCF80C(v7, v4, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  v9 = sub_222BD09EC(v4, v8);
  sub_222BD0B1C(a1, type metadata accessor for EventStreamContext);
  sub_222BD0B1C(v7, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  return v9;
}

uint64_t *NowPlayingEventStreamProcessor.init(context:)(uint64_t a1)
{
  v3 = type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  sub_222BCF80C(a1, &v11 - v7, type metadata accessor for EventStreamContext);
  sub_222BCF80C(v8, v5, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  v9 = sub_222BD09EC(v5, v1);
  sub_222BD0B1C(a1, type metadata accessor for EventStreamContext);
  sub_222BD0B1C(v8, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  return v9;
}

uint64_t sub_222BCF80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NowPlayingEventStreamProcessor.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  return v0;
}

uint64_t NowPlayingEventStreamProcessor.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_222BCF8DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for EventStreamContext(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222BCF80C(v1, v5, type metadata accessor for EventStreamContext);
  type metadata accessor for NowPlayingStreamStateMachine(0);
  v6 = swift_allocObject();
  v7 = v6 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = v6 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v6 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState) = 3;
  *(v6 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = 0;
  *(v6 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_lastPlayTimestamp) = 0;
  result = sub_222BD0DF8(v5, v6 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_context, type metadata accessor for EventStreamContext);
  *a1 = v6;
  return result;
}

uint64_t sub_222BCF9FC()
{
  type metadata accessor for NowPlayingStreamStateMachine(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026610, &qword_222C9DA20);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D026598 = 91;
  unk_27D0265A0 = 0xE100000000000000;
  return result;
}

double sub_222BCFA8C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = v5 == 0xD000000000000011 && 0x8000000222CA87E0 == v6;
  if (v7 || (sub_222C951FC() & 1) != 0)
  {
    v8 = sub_222B41CE4(v4);
    if ((v9 & 1) != 0 || (v10 = v8, sub_222B42874(v4, &v30), v12 = v30, v30 == 6))
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v13 = sub_222C9431C();
      __swift_project_value_buffer(v13, qword_280FE2340);

      v14 = sub_222C942FC();
      v15 = sub_222C94A4C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v35 = v17;
        *v16 = 136315394;
        if (qword_27D024708 != -1)
        {
          swift_once();
        }

        *(v16 + 4) = sub_222B437C0(qword_27D026598, unk_27D0265A0, &v35);
        *(v16 + 12) = 2080;
        v30 = v3;
        v31 = v2;
        v32 = v4;
        v33 = v5;
        v34 = v6;

        v18 = sub_222C944EC();
        v20 = sub_222B437C0(v18, v19, &v35);

        *(v16 + 14) = v20;
        _os_log_impl(&dword_222B39000, v14, v15, "%s timestamp or PlaybackState missing: %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v17, -1, -1);
        MEMORY[0x223DCA8C0](v16, -1, -1);
      }
    }

    else
    {
      v11.n128_u64[0] = v10;
      v30 = v3;
      v31 = v2;
      v32 = v4;
      v33 = v5;
      v34 = v6;
      LOBYTE(v35) = v12;
      sub_222BCFE28(&v30, &v35, v11);
      v23 = (v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit);
      v24 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 8);
      if (v24)
      {
        v26 = v23[3];
        v25 = v23[4];
        v27 = v23[2];
        v28 = *v23;
        *v23 = 0u;
        *(v23 + 1) = 0u;
        v23[4] = 0;

        sub_222B5EE44(v28, v24, v27, v26, v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BE8, &qword_222C969C0);
        v29 = swift_allocObject();
        *&result = 1;
        *(v29 + 16) = xmmword_222C97C40;
        *(v29 + 32) = v28;
        *(v29 + 40) = v24;
        *(v29 + 48) = v27;
        *(v29 + 56) = v26;
        *(v29 + 64) = v25;
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BE8, &qword_222C969C0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_222C97C40;
    *(v22 + 32) = v3;
    *(v22 + 40) = v2;
    *(v22 + 48) = v4;
    *(v22 + 56) = v5;
    *(v22 + 64) = v6;
  }

  return result;
}

void sub_222BCFE28(uint64_t *a1, unsigned __int8 *a2, __n128 a3)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState;
  if (*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState) == 1)
  {
    v11 = a3.n128_f64[0] - *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_lastPlayTimestamp) + *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength);
    *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = v11;
    LOBYTE(v14[0]) = 0x405030100uLL >> (8 * v9);
    v12 = a3.n128_u64[0];
    sub_222BD0188(v14, v11);
    a3.n128_u64[0] = v12;
  }

  v14[0] = v5;
  v14[1] = v4;
  v14[2] = v7;
  v14[3] = v6;
  v14[4] = v8;
  if (v9 == 1)
  {
    sub_222BD03E0(v14, &v15, a3.n128_f64[0]);
  }

  else
  {
    v13 = v9;
    sub_222BD0570(v14, &v13, &v15);
  }

  *(v3 + v10) = v15;
}

uint64_t sub_222BCFF2C()
{
  v1 = v0;
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for EventStreamContext(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState;
  if (*(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState) == 1)
  {
    sub_222BCF80C(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_context, v8, type metadata accessor for EventStreamContext);
    sub_222C9327C();
    v10 = sub_222C932BC();
    (*(*(v10 - 8) + 8))(v8, v10);
    sub_222C935BC();
    v12 = v11;
    (*(v3 + 8))(v5, v2);
    v13 = v12 - *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_lastPlayTimestamp) + *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength);
    *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = v13;
    v23 = 2;
    sub_222BD0188(&v23, v13);
  }

  *(v1 + v9) = 3;
  v14 = (v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
  v16 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
  v15 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 8);
  v17 = v14[2];
  v18 = v14[3];
  v19 = v14[4];
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BE8, &qword_222C969C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_222C97C40;
    *(v20 + 32) = v16;
    *(v20 + 40) = v15;
    *(v20 + 48) = v17;
    *(v20 + 56) = v18;
    *(v20 + 64) = v19;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  sub_222B5EDF4(v16, v15, v17, v18, v19);
  return v20;
}

void sub_222BD0188(char *a1, double a2)
{
  v4 = (v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
  v5 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
  v6 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 16);
  v7 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 24);
  v8 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 32);
  if (*(v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 8))
  {
    v10 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C96900;
    v12 = type metadata accessor for NowPlayingFeatures.TotalPlayLength(0);
    swift_allocObject();
    *v23 = a2;

    v13 = sub_222C93EEC();
    *(inited + 56) = v12;
    v14 = MEMORY[0x277D5FBA0];
    *(inited + 64) = sub_222BD0DB0(&qword_27D026600, type metadata accessor for NowPlayingFeatures.TotalPlayLength, MEMORY[0x277D5FBA0]);
    *(inited + 32) = v13;
    v15 = type metadata accessor for NowPlayingFeatures.EndReason(0);
    swift_allocObject();
    LOBYTE(v23[0]) = v10;
    v16 = sub_222C93EEC();
    *(inited + 96) = v15;
    *(inited + 104) = sub_222BD0DB0(&qword_27D026608, type metadata accessor for NowPlayingFeatures.EndReason, v14);
    *(inited + 72) = v16;
    CoreDuetEvent.with(eventId:removedFeatures:newFeatures:eventType:)(0, 0, MEMORY[0x277D84F90], inited, 0, 0, v23);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    swift_arrayDestroy();

    v18 = v23[0];
    v17 = v23[1];
    v19 = v23[2];
    v20 = v23[3];
    v21 = v23[4];
    v5 = *v4;
    v22 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    v8 = v4[4];
  }

  else
  {
    v22 = 0;
    v17 = 0;
    v18 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
    v19 = v4[2];
    v20 = v4[3];
    v21 = v4[4];
  }

  *v4 = v18;
  v4[1] = v17;
  v4[2] = v19;
  v4[3] = v20;
  v4[4] = v21;
  sub_222B5EE44(v5, v22, v6, v7, v8);
}

void sub_222BD03E0(uint64_t *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v35 = *a1;
  v36 = v6;
  *&v37 = v9;
  *(&v37 + 1) = v8;
  v38 = v10;
  if (sub_222B82B70(&v35))
  {
    *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_lastPlayTimestamp) = a3;
    v11 = (v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
    v12 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 8);
    if (!v12 || (v13 = v11[4], v14 = *(v11 + 1), v35 = *v11, v36 = v12, v37 = v14, v38 = v13, v34[0] = v7, v34[1] = v6, v34[2] = v9, v34[3] = v8, v34[4] = v10, (sub_222B82D90(&v35, v34) & 1) == 0))
    {
      *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = 0;
      v15 = *v11;
      v16 = v11[1];
      v17 = v11[2];
      v18 = v11[3];
      v19 = v11[4];
      v20 = (v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit);
      v21 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit);
      v31 = v20[1];
      v33 = a2;
      v22 = v20[2];
      v23 = v20[3];
      v24 = v20[4];
      *v20 = *v11;
      v20[1] = v16;
      v20[2] = v17;
      v20[3] = v18;
      v20[4] = v19;
      sub_222B5EDF4(v15, v16, v17, v18, v19);
      sub_222B5EE44(v21, v31, v22, v23, v24);
      v25 = *v11;
      v32 = v11[1];
      v26 = v11[2];
      v27 = v11[3];
      v28 = v11[4];
      *v11 = v7;
      v11[1] = v6;
      v11[2] = v9;
      v11[3] = v8;
      v11[4] = v10;

      v29 = v26;
      a2 = v33;
      sub_222B5EE44(v25, v32, v29, v27, v28);
    }

    v30 = 1;
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = 0;
    v30 = 3;
  }

  *a2 = v30;
}

void sub_222BD0570(uint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v5 = *a2;
  v6 = OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState;
  if (*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState) == 1)
  {
    v7 = (v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
    v8 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 8);
    if (!v8 || (v9 = *a1, v10 = *(a1 + 1), v11 = a1[3], v12 = a1[4], v13 = v7[4], v14 = *(v7 + 1), v46[0] = *v7, v46[1] = v8, v47 = v14, v48 = v13, v42 = v9, v43 = v10, v44 = v11, v45 = v12, (sub_222B82D90(v46, &v42) & 1) == 0))
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v15 = sub_222C9431C();
      __swift_project_value_buffer(v15, qword_280FE2340);

      v16 = sub_222C942FC();
      v17 = sub_222C94A5C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46[0] = v41;
        *v18 = 136315650;
        if (qword_27D024708 != -1)
        {
          swift_once();
        }

        *(v18 + 4) = sub_222B437C0(qword_27D026598, unk_27D0265A0, v46);
        *(v18 + 12) = 2080;
        LOBYTE(v42) = *(v3 + v6);
        v19 = sub_222C944EC();
        v21 = sub_222B437C0(v19, v20, v46);

        *(v18 + 14) = v21;
        *(v18 + 22) = 2080;
        LOBYTE(v42) = v5;
        v22 = sub_222C944EC();
        v24 = sub_222B437C0(v22, v23, v46);

        *(v18 + 24) = v24;
        _os_log_impl(&dword_222B39000, v16, v17, "%s Unexpected track change during state transition %s -> %s", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v41, -1, -1);
        MEMORY[0x223DCA8C0](v18, -1, -1);
      }

      v25 = *v7;
      v26 = v7[1];
      v27 = v7[2];
      v28 = v7[3];
      v29 = v7[4];
      v30 = (v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit);
      v31 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit);
      v32 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 8);
      v33 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 16);
      v34 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 24);
      v35 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 32);
      *v30 = *v7;
      v30[1] = v26;
      v30[2] = v27;
      v30[3] = v28;
      v30[4] = v29;
      sub_222B5EDF4(v25, v26, v27, v28, v29);
      sub_222B5EE44(v31, v32, v33, v34, v35);
      v36 = *v7;
      v37 = v7[1];
      v38 = v7[2];
      v39 = v7[3];
      v40 = v7[4];
      *v7 = 0u;
      *(v7 + 1) = 0u;
      v7[4] = 0;
      sub_222B5EE44(v36, v37, v38, v39, v40);
      *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = 0;
      v5 = 3;
    }
  }

  *a3 = v5;
}

uint64_t sub_222BD0874()
{
  sub_222BD0B1C(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_context, type metadata accessor for EventStreamContext);
  sub_222B5EE44(*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 8), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 16), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 24), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 32));
  sub_222B5EE44(*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 8), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 16), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 24), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_222BD0924(uint64_t *a1)
{
  v2.n128_f64[0] = sub_222BCFA8C(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_222BD0988()
{
  v1 = sub_222BCFF2C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t *sub_222BD09EC(uint64_t a1, uint64_t *a2)
{
  v8 = type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory(0);
  v9 = sub_222BD0DB0(&qword_27D026618, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory, &unk_222C9D9C8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v7);
  sub_222BD0DF8(a1, boxed_opaque_existential_1, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026620, &qword_222C9DA28);
  v5 = sub_222C944EC();
  MEMORY[0x223DC9330](v5);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  a2[2] = 91;
  a2[3] = 0xE100000000000000;
  sub_222B405A0(&v7, (a2 + 4));
  return a2;
}

uint64_t sub_222BD0B1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222BD0BF4(uint64_t a1)
{
  result = sub_222C932BC();
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

uint64_t sub_222BD0CD0(uint64_t a1)
{
  result = type metadata accessor for EventStreamContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222BD0D58(uint64_t a1)
{
  result = sub_222BD0DB0(&qword_27D0265F8, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory, &unk_222C9D9AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222BD0DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222BD0DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SendMessageEventCoalescer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SendMessageEventCoalescer.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void sub_222BD0E94(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a2[1];
  v10 = a2[3];
  v19 = *a2;
  v20 = a2[2];
  v22 = a2[4];
  v23 = *a1;
  v11 = v7 == 0xD000000000000013 && 0x8000000222CA87A0 == v8;
  if (!v11 && (sub_222C951FC() & 1) == 0)
  {
    *a3 = v23;
    a3[1] = v5;
    a3[2] = v6;
    a3[3] = v7;
    a3[4] = v8;
LABEL_27:

    return;
  }

  v21 = v5;
  v12 = sub_222B41CFC(v6);
  if (v12 == 2)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);
    v14 = sub_222C942FC();
    v15 = sub_222C94A4C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222B39000, v14, v15, "Unexpected INSendMessageIntent without DonatedBySiri", v16, 2u);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    *a3 = v23;
    a3[1] = v5;
    a3[2] = v6;
    a3[3] = v7;
    a3[4] = v8;
    goto LABEL_27;
  }

  v17 = v12;
  if (v9 && (v10 == 0xD000000000000013 && v22 == 0x8000000222CA87A0 || (sub_222C951FC() & 1) != 0))
  {
    v18 = sub_222B41CFC(v20);
    if ((*(v3 + 16) & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_21:
    *(v3 + 16) = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    a3[4] = 0;
    return;
  }

  v18 = 0;
  if (*(v3 + 16))
  {
    goto LABEL_21;
  }

LABEL_17:
  if (v17)
  {
    *(v3 + 16) = 1;
LABEL_26:
    *a3 = v23;
    a3[1] = v21;
    a3[2] = v6;
    a3[3] = v7;
    a3[4] = v8;
    goto LABEL_27;
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(v3 + 16) = 1;
  *a3 = v19;
  a3[1] = v9;
  a3[2] = v20;
  a3[3] = v10;
  a3[4] = v22;

  sub_222B5EDF4(v19, v9, v20, v10, v22);
}