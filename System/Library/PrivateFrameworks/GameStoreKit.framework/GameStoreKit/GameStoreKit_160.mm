unint64_t sub_24F69E29C()
{
  result = qword_27F24C528;
  if (!qword_27F24C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C528);
  }

  return result;
}

uint64_t sub_24F69E2F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F69E338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F69E3A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F69E420()
{
  result = qword_27F24C538;
  if (!qword_27F24C538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212890, &qword_24F939670);
    sub_24F69E2F0(&qword_27F21B450, type metadata accessor for Leaderboard, &protocol conformance descriptor for Leaderboard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C538);
  }

  return result;
}

unint64_t sub_24F69E4D4()
{
  result = qword_27F24C540;
  if (!qword_27F24C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C540);
  }

  return result;
}

unint64_t sub_24F69E528()
{
  result = qword_27F249108;
  if (!qword_27F249108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B90, &unk_24FA0D950);
    sub_24F69E2F0(&qword_27F249110, type metadata accessor for ChallengeDetail.Participant, &protocol conformance descriptor for ChallengeDetail.Participant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249108);
  }

  return result;
}

unint64_t sub_24F69E5DC()
{
  result = qword_27F24C550;
  if (!qword_27F24C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C550);
  }

  return result;
}

unint64_t sub_24F69E630()
{
  result = qword_27F24C558;
  if (!qword_27F24C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C558);
  }

  return result;
}

unint64_t sub_24F69E684()
{
  result = qword_27F249140;
  if (!qword_27F249140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B90, &unk_24FA0D950);
    sub_24F69E2F0(&qword_27F249148, type metadata accessor for ChallengeDetail.Participant, &protocol conformance descriptor for ChallengeDetail.Participant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249140);
  }

  return result;
}

unint64_t sub_24F69E73C()
{
  result = qword_27F24C560;
  if (!qword_27F24C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C560);
  }

  return result;
}

uint64_t sub_24F69E7A4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Game(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v14 = sub_24F91F648();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v15 = type metadata accessor for Player(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[13];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[14];

  return v18(v19, a2, v17);
}

uint64_t sub_24F69EA20(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Game(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v14 = sub_24F91F648();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v15 = type metadata accessor for Player(0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[13];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[14];

  return v18(v19, a2, a2, v17);
}

void sub_24F69EC88(uint64_t a1)
{
  type metadata accessor for Game(319);
  if (v1 <= 0x3F)
  {
    sub_24F69EED8(319, &qword_27F23FF20, type metadata accessor for Leaderboard, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F69EED8(319, &qword_27F21B7B0, type metadata accessor for ChallengeDefinitionDetail, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F2153E8, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_24F91F648();
          if (v5 <= 0x3F)
          {
            type metadata accessor for Player(319);
            if (v6 <= 0x3F)
            {
              sub_24F69EED8(319, &qword_27F214988, type metadata accessor for Player, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24F69EED8(319, &qword_27F249160, type metadata accessor for ChallengeDetail.Participant, MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  sub_24F69EED8(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
                  if (v9 <= 0x3F)
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
  }
}

void sub_24F69EED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24F69EF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24F69F040(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24F69F0FC(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F2191B8, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F2153E8, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F69F204()
{
  result = qword_27F24C588;
  if (!qword_27F24C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C588);
  }

  return result;
}

unint64_t sub_24F69F25C()
{
  result = qword_27F24C590;
  if (!qword_27F24C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C590);
  }

  return result;
}

unint64_t sub_24F69F2B4()
{
  result = qword_27F24C598;
  if (!qword_27F24C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C598);
  }

  return result;
}

unint64_t sub_24F69F30C()
{
  result = qword_27F24C5A0;
  if (!qword_27F24C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C5A0);
  }

  return result;
}

unint64_t sub_24F69F364()
{
  result = qword_27F24C5A8;
  if (!qword_27F24C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C5A8);
  }

  return result;
}

unint64_t sub_24F69F3BC()
{
  result = qword_27F24C5B0;
  if (!qword_27F24C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C5B0);
  }

  return result;
}

uint64_t sub_24F69F410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE0065726F635364 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4374706D65747461 && a2 == 0xEC000000746E756FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F69F5C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C74706D65747461 && a2 == 0xEC00000074696D69 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656D6954646E65 && a2 == 0xEC000000706D6174 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA46840 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA7BC30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F7461657263 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x72657469766E69 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5064657469766E69 && a2 == 0xEE0073726579616CLL)
  {

    return 12;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_24F69F9F8()
{
  result = qword_27F24C5B8;
  if (!qword_27F24C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C5B8);
  }

  return result;
}

uint64_t CreateChallengeIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[51] = a1;
  v2[52] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v2[53] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v2[54] = v3;
  v2[55] = *(v3 - 8);
  v2[56] = swift_task_alloc();
  v4 = sub_24F928AE8();
  v2[57] = v4;
  v2[58] = *(v4 - 8);
  v2[59] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v2[60] = v5;
  v2[61] = *(v5 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = type metadata accessor for CreateChallengeIntent(0);
  v2[64] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C0, &unk_24F97A270);
  v2[65] = v6;
  v2[66] = *(v6 - 8);
  v2[67] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v2[68] = v7;
  v2[69] = *(v7 - 8);
  v2[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  v2[71] = swift_task_alloc();
  v8 = sub_24F920A88();
  v2[72] = v8;
  v2[73] = *(v8 - 8);
  v2[74] = swift_task_alloc();
  v9 = sub_24F920C38();
  v2[75] = v9;
  v2[76] = *(v9 - 8);
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v2[80] = v10;
  v2[81] = *(v10 - 8);
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24C5C0, &unk_24FA1A470);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F69FEE0, 0, 0);
}

uint64_t sub_24F69FEE0()
{
  v1 = *(v0 + 408);
  if (*(v1 + 104))
  {

    sub_24F920FF8();
    v2 = 0;
    v1 = *(v0 + 408);
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0, &unk_24F94D8A0);
  (*(*(v5 - 8) + 56))(v4, v2, 1, v5);
  sub_24F6A3D98(v4, v3);
  v6 = *(v1 + 80);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v0 + 648);
    v9 = (v6 + 32);
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    do
    {
      v14 = v9[1];
      v15 = v9[2];
      v16 = v9[3];
      *(v0 + 80) = *(v9 + 32);
      v17 = *v9;
      *(v0 + 48) = v15;
      *(v0 + 64) = v16;
      *(v0 + 16) = v17;
      *(v0 + 32) = v14;
      v18 = *(v0 + 80);
      if (v18 == 2 || (v18 & 1) != 0)
      {

        sub_24F920FC8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_24E61AA10(0, v11[2] + 1, 1, v11);
        }

        v20 = v11[2];
        v19 = v11[3];
        if (v20 >= v19 >> 1)
        {
          v11 = sub_24E61AA10((v19 > 1), v20 + 1, 1, v11);
        }

        v12 = *(v0 + 672);
        v13 = *(v0 + 640);
        v11[2] = v20 + 1;
        (*(v8 + 32))(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v12, v13);
      }

      else
      {
        sub_24E627A14(v0 + 16, v0 + 88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24E615E80(0, *(v10 + 2) + 1, 1, v10);
        }

        v22 = *(v10 + 2);
        v21 = *(v10 + 3);
        if (v22 >= v21 >> 1)
        {
          v10 = sub_24E615E80((v21 > 1), v22 + 1, 1, v10);
        }

        *(v10 + 2) = v22 + 1;
        v23 = &v10[72 * v22];
        *(v23 + 2) = *(v0 + 16);
        v24 = *(v0 + 32);
        v25 = *(v0 + 48);
        v26 = *(v0 + 64);
        *(v23 + 48) = *(v0 + 80);
        *(v23 + 4) = v25;
        *(v23 + 5) = v26;
        *(v23 + 3) = v24;
      }

      v9 = (v9 + 72);
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
  }

  *(v0 + 704) = v11;
  *(v0 + 696) = v10;
  v27 = *(v0 + 408);
  if (!*(v27 + 120))
  {
    goto LABEL_23;
  }

  v28 = *(v0 + 584);
  v29 = *(v0 + 576);
  v30 = *(v0 + 568);
  sub_24EC51A2C(v27 + *(*(v0 + 504) + 56), v30);
  if ((*(v28 + 48))(v30, 1, v29) == 1)
  {
    sub_24E601704(*(v0 + 568), &qword_27F2198F8, &unk_24F94CFA0);
LABEL_23:
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v31 = sub_24F9220D8();
    __swift_project_value_buffer(v31, qword_27F39E778);
    v32 = sub_24F9220B8();
    v33 = sub_24F92BD98();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24E5DD000, v32, v33, "CreateChallengeIntentImplementation creating with FY24 API", v34, 2u);
      MEMORY[0x2530542D0](v34, -1, -1);
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
    v36 = swift_task_alloc();
    *(v0 + 768) = v36;
    *v36 = v0;
    v36[1] = sub_24F6A10A0;
    v37 = v0 + 200;
    goto LABEL_33;
  }

  (*(*(v0 + 584) + 32))(*(v0 + 592), *(v0 + 568), *(v0 + 576));
  v38 = qword_27F2113B8;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_24F9220D8();
  __swift_project_value_buffer(v39, qword_27F39E778);
  v40 = sub_24F9220B8();
  v41 = sub_24F92BD98();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_24E5DD000, v40, v41, "CreateChallengeIntentImplementation creating with FY25 API", v42, 2u);
    MEMORY[0x2530542D0](v42, -1, -1);
  }

  v43 = *(v0 + 408);

  *(v0 + 712) = *v43;
  *(v0 + 720) = v43[1];

  sub_24F920F98();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v44 = swift_task_alloc();
  *(v0 + 728) = v44;
  *v44 = v0;
  v44[1] = sub_24F6A04B4;
  v37 = v0 + 320;
LABEL_33:

  return MEMORY[0x28217F228](v37, v35, v35);
}

uint64_t sub_24F6A04B4()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_24F6A08F8;
  }

  else
  {
    v2 = sub_24F6A05C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6A05C8()
{
  v1 = v0[88];
  v2 = v0[51];
  __swift_project_boxed_opaque_existential_1(v0 + 40, v0[43]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  v3 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 35, v3);

  sub_24F920FC8();
  v4 = *(v2 + 128);
  v5 = MEMORY[0x277D84F90];
  v0[93] = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = swift_task_alloc();
  v0[94] = v7;
  *v7 = v0;
  v7[1] = sub_24F6A0730;
  v8 = v0[86];
  v9 = v0[83];
  v10 = v0[78];
  v11 = v0[74];
  v12 = v0[70];

  return MEMORY[0x282165130](v10, v9, v12, v6, v11, v1, v8, v3);
}

uint64_t sub_24F6A0730()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  (*(v2[81] + 8))(v2[83], v2[80]);

  if (v0)
  {

    v3 = sub_24F6A29D4;
  }

  else
  {
    v3 = sub_24F6A0BFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F6A08F8()
{
  v1 = v0[86];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_24E601704(v1, qword_27F24C5C0, &unk_24FA1A470);
  v8 = v0[92];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v9 = sub_24F9220D8();
  __swift_project_value_buffer(v9, qword_27F39E778);
  v10 = v8;
  v11 = sub_24F9220B8();
  v12 = sub_24F92BDB8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_24E5DD000, v11, v12, "CreateChallengeIntentImplementation failed: %@", v13, 0xCu);
    sub_24E601704(v14, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_24F6A0BFC()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[72];
  (*(v0[69] + 8))(v0[70], v0[68]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 32))(v1, v2, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  v8 = v0[89];
  v0[103] = v0[90];
  v0[102] = v8;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v9 = sub_24F9220D8();
  v0[104] = __swift_project_value_buffer(v9, qword_27F39E778);
  v10 = sub_24F9220B8();
  v11 = sub_24F92BD98();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24E5DD000, v10, v11, "CreateChallengeIntentImplementation challenge created", v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  v13 = v0[51];

  v14 = *(v13 + 88);
  v0[105] = v14;
  if (*(v14 + 16))
  {
    sub_24F6A4A7C(v0[51], v0[64]);
    v15 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[64];
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      v20 = *(*(v18 + 88) + 16);
      sub_24F6A4AE0(v18);
      *(v19 + 4) = v20;
      _os_log_impl(&dword_24E5DD000, v15, v16, "CreateChallengeIntentImplementation inviting %ld contacts", v19, 0xCu);
      MEMORY[0x2530542D0](v19, -1, -1);
    }

    else
    {
      sub_24F6A4AE0(v0[64]);
    }

    v31 = swift_task_alloc();
    v0[106] = v31;
    *v31 = v0;
    v31[1] = sub_24F6A1C78;
    v32 = v0[62];
    v33 = v0[60];
    v34 = v33;
  }

  else
  {
    v21 = v0[87];
    if (*(v21 + 16))
    {
      v22 = v0[51];
      v23 = sub_24F920BF8();
      v25 = v24;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);

      v28 = sub_24F9220B8();
      v29 = sub_24F92BDB8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = *(v21 + 16);

        _os_log_impl(&dword_24E5DD000, v28, v29, "CreateChallengeIntentImplementation attempting to send fallback message for %ld players", v30, 0xCu);
        MEMORY[0x2530542D0](v30, -1, -1);
      }

      else
      {
      }

      v35 = v0[87];
      v37 = v0[52];
      v36 = v0[53];
      v38 = sub_24F92B858();
      (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v35;
      v39[5] = v37;
      v39[6] = v23;
      v39[7] = v25;
      v39[8] = v27;
      v39[9] = v26;

      sub_24EA998B8(0, 0, v36, &unk_24FA1A488, v39);
    }

    else
    {
    }

    updated = type metadata accessor for ChallengesUpdateNotifier(0);
    v41 = swift_task_alloc();
    v0[110] = v41;
    *v41 = v0;
    v41[1] = sub_24F6A2310;
    v32 = v0 + 48;
    v33 = updated;
    v34 = updated;
  }

  return MEMORY[0x28217F228](v32, v33, v34);
}

uint64_t sub_24F6A10A0()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_24F6A1380;
  }

  else
  {
    v2 = sub_24F6A11B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6A11B4()
{
  v1 = v0[51];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v0[28]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  __swift_project_boxed_opaque_existential_1(v0 + 20, v0[23]);

  sub_24F920FC8();
  v0[98] = *v1;
  v0[99] = *(v1 + 8);

  sub_24F920F58();
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = sub_24F92D1A8();
    v4 = v5;
  }

  v6 = v0[51];
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  v9 = swift_task_alloc();
  v0[100] = v9;
  *v9 = v0;
  v9[1] = sub_24F6A163C;
  v10 = v0[82];
  v11 = v0[77];
  v12 = v0[67];

  return MEMORY[0x282165138](v11, v10, v12, v3, v4, v2, v7, v8);
}

uint64_t sub_24F6A1380()
{
  v1 = v0[86];

  sub_24E601704(v1, qword_27F24C5C0, &unk_24FA1A470);
  v2 = v0[97];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "CreateChallengeIntentImplementation failed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F6A163C()
{
  v2 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v3 = v2[82];
    v4 = v2[81];
    v5 = v2[80];
    v6 = v2[67];
    v7 = v2[66];
    v8 = v2[65];

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);

    v9 = sub_24F6A2CC4;
  }

  else
  {
    v10 = v2[82];
    v11 = v2[81];
    v12 = v2[80];
    v13 = v2[67];
    v14 = v2[66];
    v15 = v2[65];

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
    v9 = sub_24F6A1820;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24F6A1820()
{
  (*(v0[76] + 32))(v0[79], v0[77], v0[75]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  v1 = v0[98];
  v0[103] = v0[99];
  v0[102] = v1;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  v0[104] = __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CreateChallengeIntentImplementation challenge created", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v6 = v0[51];

  v7 = *(v6 + 88);
  v0[105] = v7;
  if (*(v7 + 16))
  {
    sub_24F6A4A7C(v0[51], v0[64]);
    v8 = sub_24F9220B8();
    v9 = sub_24F92BD98();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[64];
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      v13 = *(*(v11 + 88) + 16);
      sub_24F6A4AE0(v11);
      *(v12 + 4) = v13;
      _os_log_impl(&dword_24E5DD000, v8, v9, "CreateChallengeIntentImplementation inviting %ld contacts", v12, 0xCu);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    else
    {
      sub_24F6A4AE0(v0[64]);
    }

    v24 = swift_task_alloc();
    v0[106] = v24;
    *v24 = v0;
    v24[1] = sub_24F6A1C78;
    v25 = v0[62];
    v26 = v0[60];
    v27 = v26;
  }

  else
  {
    v14 = v0[87];
    if (*(v14 + 16))
    {
      v15 = v0[51];
      v16 = sub_24F920BF8();
      v18 = v17;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);

      v21 = sub_24F9220B8();
      v22 = sub_24F92BDB8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = *(v14 + 16);

        _os_log_impl(&dword_24E5DD000, v21, v22, "CreateChallengeIntentImplementation attempting to send fallback message for %ld players", v23, 0xCu);
        MEMORY[0x2530542D0](v23, -1, -1);
      }

      else
      {
      }

      v28 = v0[87];
      v30 = v0[52];
      v29 = v0[53];
      v31 = sub_24F92B858();
      (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v28;
      v32[5] = v30;
      v32[6] = v16;
      v32[7] = v18;
      v32[8] = v20;
      v32[9] = v19;

      sub_24EA998B8(0, 0, v29, &unk_24FA1A488, v32);
    }

    else
    {
    }

    updated = type metadata accessor for ChallengesUpdateNotifier(0);
    v34 = swift_task_alloc();
    v0[110] = v34;
    *v34 = v0;
    v34[1] = sub_24F6A2310;
    v25 = v0 + 48;
    v26 = updated;
    v27 = updated;
  }

  return MEMORY[0x28217F228](v25, v26, v27);
}

uint64_t sub_24F6A1C78()
{
  *(*v1 + 856) = v0;

  if (v0)
  {

    v2 = sub_24F6A2F70;
  }

  else
  {
    v2 = sub_24F6A1D94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6A1D94()
{
  v1 = v0[105];
  v2 = v0[55];
  v17 = v0[56];
  v3 = v0[54];
  v4 = v0[51];
  v5 = sub_24F920BF8();
  v7 = v6;
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v0[33] = type metadata accessor for InvitePlayersToChallengeAction(0);
  v0[34] = sub_24F6A4CC8(&qword_27F2162C0, type metadata accessor for InvitePlayersToChallengeAction, &protocol conformance descriptor for InvitePlayersToChallengeAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);

  sub_24F928A98();
  *boxed_opaque_existential_1 = v5;
  boxed_opaque_existential_1[1] = v7;
  boxed_opaque_existential_1[2] = v8;
  boxed_opaque_existential_1[3] = v9;
  boxed_opaque_existential_1[4] = MEMORY[0x277D84F90];
  boxed_opaque_existential_1[5] = v1;
  (*(v2 + 104))(v17, *MEMORY[0x277D21E18], v3);
  v11 = swift_task_alloc();
  v0[108] = v11;
  *v11 = v0;
  v11[1] = sub_24F6A1F2C;
  v12 = v0[59];
  v13 = v0[60];
  v14 = v0[56];
  v15 = v0[52];

  return MEMORY[0x28217F468](v12, v0 + 30, v14, v15, v13);
}

uint64_t sub_24F6A1F2C()
{
  v2 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    (*(v2[55] + 8))(v2[56], v2[54]);

    v3 = sub_24F6A3234;
  }

  else
  {
    v5 = v2[58];
    v4 = v2[59];
    v6 = v2[57];
    (*(v2[55] + 8))(v2[56], v2[54]);
    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_1(v2 + 30);
    v3 = sub_24F6A20A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F6A20A8()
{
  (*(v0[61] + 8))(v0[62], v0[60]);
  v1 = v0[87];
  if (*(v1 + 16))
  {
    v2 = v0[51];
    v3 = sub_24F920BF8();
    v5 = v4;
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);

    v8 = sub_24F9220B8();
    v9 = sub_24F92BDB8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v1 + 16);

      _os_log_impl(&dword_24E5DD000, v8, v9, "CreateChallengeIntentImplementation attempting to send fallback message for %ld players", v10, 0xCu);
      MEMORY[0x2530542D0](v10, -1, -1);
    }

    else
    {
    }

    v11 = v0[87];
    v13 = v0[52];
    v12 = v0[53];
    v14 = sub_24F92B858();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v11;
    v15[5] = v13;
    v15[6] = v3;
    v15[7] = v5;
    v15[8] = v7;
    v15[9] = v6;

    sub_24EA998B8(0, 0, v12, &unk_24FA1A488, v15);
  }

  else
  {
  }

  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v17 = swift_task_alloc();
  v0[110] = v17;
  *v17 = v0;
  v17[1] = sub_24F6A2310;

  return MEMORY[0x28217F228](v0 + 48, updated, updated);
}

uint64_t sub_24F6A2310()
{
  *(*v1 + 888) = v0;

  if (v0)
  {
    v2 = sub_24F6A3520;
  }

  else
  {
    v2 = sub_24F6A2424;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6A2424()
{
  v1 = *(v0 + 384);
  *(v0 + 896) = v1;
  return MEMORY[0x2822009F8](sub_24F6A2444, v1, 0);
}

uint64_t sub_24F6A2444()
{
  sub_24F5EC458(v0[102], v0[103]);
  refreshed = type metadata accessor for FeedRefreshNotifier(0);
  v2 = swift_task_alloc();
  v0[113] = v2;
  *v2 = v0;
  v2[1] = sub_24F6A2504;

  return MEMORY[0x28217F228](v0 + 49, refreshed, refreshed);
}

uint64_t sub_24F6A2504()
{
  *(*v1 + 912) = v0;

  if (v0)
  {
    v2 = sub_24F6A37E4;
  }

  else
  {
    v2 = sub_24F6A2618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6A2618()
{
  v0[115] = v0[49];
  sub_24F03AC94();
  v1 = type metadata accessor for GameActivityDraftBuilder();
  v2 = swift_task_alloc();
  v0[116] = v2;
  *v2 = v0;
  v2[1] = sub_24F6A26D4;

  return MEMORY[0x28217F228](v0 + 50, v1, v1);
}

uint64_t sub_24F6A26D4()
{
  *(*v1 + 936) = v0;

  if (v0)
  {
    v2 = sub_24F6A3AB8;
  }

  else
  {
    v2 = sub_24F6A27E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6A27E8()
{
  v1 = v0[86];
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[50];
  swift_beginAccess();
  *(v5 + 16) = 0;

  v6 = sub_24F920BF8();
  v10 = v7;
  v11 = v6;

  (*(v3 + 8))(v2, v4);
  sub_24E601704(v1, qword_27F24C5C0, &unk_24FA1A470);

  v8 = v0[1];

  return v8(v11, v10);
}

uint64_t sub_24F6A29D4()
{
  v1 = v0[86];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  (*(v0[69] + 8))(v0[70], v0[68]);
  (*(v3 + 8))(v2, v4);
  sub_24E601704(v1, qword_27F24C5C0, &unk_24FA1A470);
  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  v5 = v0[95];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E778);
  v7 = v5;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v8, v9, "CreateChallengeIntentImplementation failed: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F6A2CC4()
{
  sub_24E601704(v0[86], qword_27F24C5C0, &unk_24FA1A470);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  v1 = v0[101];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "CreateChallengeIntentImplementation failed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F6A2F70()
{
  v1 = v0[86];
  (*(v0[76] + 8))(v0[79], v0[75]);
  sub_24E601704(v1, qword_27F24C5C0, &unk_24FA1A470);
  v2 = v0[107];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "CreateChallengeIntentImplementation failed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F6A3234()
{
  v1 = v0[86];
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[75];
  (*(v0[61] + 8))(v0[62], v0[60]);
  (*(v3 + 8))(v2, v4);
  sub_24E601704(v1, qword_27F24C5C0, &unk_24FA1A470);
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  v5 = v0[109];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E778);
  v7 = v5;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v8, v9, "CreateChallengeIntentImplementation failed: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F6A3520()
{
  v1 = v0[86];
  (*(v0[76] + 8))(v0[79], v0[75]);
  sub_24E601704(v1, qword_27F24C5C0, &unk_24FA1A470);
  v2 = v0[111];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "CreateChallengeIntentImplementation failed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F6A37E4()
{
  v1 = v0[86];
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[75];

  (*(v3 + 8))(v2, v4);
  sub_24E601704(v1, qword_27F24C5C0, &unk_24FA1A470);
  v5 = v0[114];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E778);
  v7 = v5;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v8, v9, "CreateChallengeIntentImplementation failed: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F6A3AB8()
{
  v1 = v0[86];
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[75];

  (*(v3 + 8))(v2, v4);
  sub_24E601704(v1, qword_27F24C5C0, &unk_24FA1A470);
  v5 = v0[117];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E778);
  v7 = v5;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v8, v9, "CreateChallengeIntentImplementation failed: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F6A3D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24C5C0, &unk_24FA1A470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6A3E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v16;
  v8[8] = a6;
  v8[9] = a7;
  v8[7] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v11 = sub_24F928AE8();
  v8[15] = v11;
  v8[16] = *(v11 - 8);
  v8[17] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[21] = v13;
  *v13 = v8;
  v13[1] = sub_24F6A3FF0;

  return sub_24F353D40(a4);
}

uint64_t sub_24F6A3FF0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v8 = *v1;
  *(v3 + 176) = a1;

  v4 = swift_task_alloc();
  *(v3 + 184) = v4;
  *v4 = v8;
  v4[1] = sub_24F6A4170;
  v5 = *(v2 + 160);
  v6 = *(v2 + 144);

  return MEMORY[0x28217F228](v5, v6, v6);
}

uint64_t sub_24F6A4170()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_24F6A463C;
  }

  else
  {
    v2 = sub_24F6A428C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6A428C()
{
  v1 = v0[22];
  v2 = v0[13];
  v15 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v0[5] = type metadata accessor for InvitePlayersToChallengeAction(0);
  v0[6] = sub_24F6A4CC8(&qword_27F2162C0, type metadata accessor for InvitePlayersToChallengeAction, &protocol conformance descriptor for InvitePlayersToChallengeAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_24F928A98();
  *boxed_opaque_existential_1 = v7;
  boxed_opaque_existential_1[1] = v5;
  boxed_opaque_existential_1[2] = v6;
  boxed_opaque_existential_1[3] = v4;
  boxed_opaque_existential_1[4] = MEMORY[0x277D84F90];
  boxed_opaque_existential_1[5] = v1;
  (*(v2 + 104))(v15, *MEMORY[0x277D21E18], v3);
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_24F6A4414;
  v10 = v0[17];
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[7];

  return MEMORY[0x28217F468](v10, v0 + 2, v12, v13, v11);
}

uint64_t sub_24F6A4414()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 208) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24F6A47FC;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v6 = sub_24F6A45AC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F6A45AC()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F6A463C()
{
  v1 = *(v0 + 192);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "CreateChallengeIntentImplementation sendFallbackMessageInviteToPlayers failed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24F6A47FC()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[26];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "CreateChallengeIntentImplementation sendFallbackMessageInviteToPlayers failed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F6A49DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24F17DAEC;

  return CreateChallengeIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_24F6A4A7C(uint64_t a1, uint64_t a2)
{
  ChallengeIntent = type metadata accessor for CreateChallengeIntent(0);
  (*(*(ChallengeIntent - 8) + 16))(a2, a1, ChallengeIntent);
  return a2;
}

uint64_t sub_24F6A4AE0(uint64_t a1)
{
  ChallengeIntent = type metadata accessor for CreateChallengeIntent(0);
  (*(*(ChallengeIntent - 8) + 8))(a1, ChallengeIntent);
  return a1;
}

uint64_t sub_24F6A4B3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F6A4B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F6A3E08(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24F6A4CC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_24F6A4D20@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  sub_24E777530(a1, a6);
  v16 = type metadata accessor for ShelfHeaderView(0, a7, a8, v15);
  v17 = (a6 + v16[9]);
  *v17 = a3;
  v17[1] = a4;
  v18 = a6 + v16[10];
  v19 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a2 + 32);
  v20 = (a6 + v16[11]);
  result = *a5;
  v22 = *(a5 + 16);
  *v20 = *a5;
  v20[1] = v22;
  return result;
}

void sub_24F6A4DD4(uint64_t a1)
{
  type metadata accessor for HeaderPresentation(319);
  if (v1 <= 0x3F)
  {
    sub_24E6C5550();
    if (v2 <= 0x3F)
    {
      sub_24E8EA41C(319);
      if (v3 <= 0x3F)
      {
        sub_24F6A5024();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F6A4E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeaderPresentation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F6A4F6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeaderPresentation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_24F6A5024()
{
  if (!qword_27F24C648)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24C648);
    }
  }
}

uint64_t sub_24F6A50BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_24F929888();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  v97 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F924BE8();
  v95 = *(v5 - 8);
  v96 = v5;
  MEMORY[0x28223BE20](v5);
  v94 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_24F925508();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](v9);
  v60[1] = v10;
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C650, &qword_24FA1A588);
  v90 = v12;
  v13 = *(a1 + 16);
  v14 = sub_24F92C4A8();
  v86 = v14;
  v15 = sub_24F6A6A74();
  v85 = v15;
  v102 = *(a1 + 24);
  v113 = v102;
  WitnessTable = swift_getWitnessTable();
  *&v109 = v12;
  *(&v109 + 1) = MEMORY[0x277CE1428];
  *&v110 = v14;
  *(&v110 + 1) = v15;
  v111 = MEMORY[0x277CE1410];
  v112 = WitnessTable;
  v16 = sub_24F921778();
  v89 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v82 = v60 - v17;
  v76 = v16;
  v18 = sub_24F924038();
  v87 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v81 = v60 - v19;
  v78 = v18;
  v20 = sub_24F924038();
  v88 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v79 = v60 - v21;
  v75 = swift_getWitnessTable();
  v22 = MEMORY[0x277CDF918];
  v107 = v75;
  v108 = MEMORY[0x277CDF918];
  v77 = swift_getWitnessTable();
  v105 = v77;
  v106 = v22;
  v62 = v20;
  v23 = swift_getWitnessTable();
  *&v109 = v20;
  *(&v109 + 1) = v23;
  v63 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v68 = v60 - v24;
  sub_24F925658();
  v25 = sub_24F924038();
  v83 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v67 = v60 - v26;
  *&v109 = v20;
  *(&v109 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = OpaqueTypeConformance2;
  v28 = sub_24F6A8DB8(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v103 = OpaqueTypeConformance2;
  v104 = v28;
  v70 = v25;
  v69 = swift_getWitnessTable();
  *&v109 = v25;
  *(&v109 + 1) = v69;
  v71 = MEMORY[0x277D7EDF8];
  v73 = swift_getOpaqueTypeMetadata2();
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v66 = v60 - v32;
  v33 = v8;
  v61 = *(v8 + 16);
  v34 = v101;
  v61(v11, v101, a1, v31);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  v37 = v102;
  *(v36 + 16) = v13;
  *(v36 + 24) = v37;
  v38 = *(v33 + 32);
  v38(v36 + v35, v11, a1);
  (v61)(v11, v34, a1);
  v39 = swift_allocObject();
  v40 = v102;
  *(v39 + 16) = v13;
  *(v39 + 24) = v40;
  v38(v39 + v35, v11, a1);
  v41 = v82;
  sub_24F921768();
  sub_24F925818();
  v42 = v81;
  v43 = v76;
  sub_24F926A48();
  (*(v89 + 8))(v41, v43);
  sub_24F925828();
  v44 = v79;
  v45 = v78;
  sub_24F926A48();
  (*(v87 + 8))(v42, v45);
  v46 = v91;
  sub_24F9254E8();
  v47 = v68;
  v48 = v62;
  sub_24F926678();
  (*(v92 + 8))(v46, v93);
  (*(v88 + 8))(v44, v48);
  v49 = v94;
  sub_24F924BD8();
  v50 = v67;
  v51 = OpaqueTypeMetadata2;
  sub_24F9266E8();
  (*(v95 + 8))(v49, v96);
  (*(v80 + 8))(v47, v51);
  v109 = 0u;
  v110 = 0u;
  v52 = v97;
  sub_24F929848();
  sub_24E601704(&v109, &qword_27F2129B0, &unk_24F945320);
  v53 = v64;
  v54 = v70;
  v55 = v69;
  sub_24F925EE8();
  (*(v98 + 8))(v52, v99);
  (*(v83 + 8))(v50, v54);
  *&v109 = v54;
  *(&v109 + 1) = v55;
  swift_getOpaqueTypeConformance2();
  v56 = v66;
  v57 = v73;
  sub_24E7896B8();
  v58 = *(v74 + 8);
  v58(v53, v57);
  sub_24E7896B8();
  return (v58)(v56, v57);
}

uint64_t sub_24F6A5CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = a3;
  v57 = v49 - v10;
  v55 = a2;
  v12 = type metadata accessor for ShelfHeaderView(0, a2, a3, v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v53 = v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v15 - 8);
  v54 = v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB40, &unk_24FA1A590);
  v58 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C668, &qword_24FA1A5A0);
  v60 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v59 = v49 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C670, &unk_24FA1A5A8);
  MEMORY[0x28223BE20](v22);
  v24 = v49 - v23;
  v62 = type metadata accessor for HeaderContentView(0);
  MEMORY[0x28223BE20](v62);
  v26 = v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F6A64AC(v12, &v63);
  if (v65)
  {
    v49[1] = v22;
    v50 = v24;
    v51 = v20;
    sub_24E612C80(&v63, v66);
    v27 = sub_24F9232F8();
    (*(*(v27 - 8) + 56))(v54, 1, 1, v27);
    sub_24E615E00(v66, &v63);
    v28 = v53;
    (*(v13 + 16))(v53, a1, v12);
    v29 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v30 = swift_allocObject();
    v31 = v56;
    *(v30 + 16) = v55;
    *(v30 + 24) = v31;
    (*(v13 + 32))(v30 + v29, v28, v12);
    v55 = sub_24F6A8DB8(&qword_27F23DB98, type metadata accessor for HeaderContentView, &unk_24FA118A0);
    v56 = v19;
    sub_24F921788();
    v32 = type metadata accessor for HeaderPresentation(0);
    v33 = v57;
    sub_24E60169C(a1 + *(v32 + 20), v57, &qword_27F223138, &unk_24F972860);
    v34 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    v35 = *(*(v34 - 8) + 48);
    v36 = v35(v33, 1, v34);
    sub_24E601704(v33, &qword_27F223138, &unk_24F972860);
    v37 = 12.0;
    if (v36 == 1)
    {
      v38 = v52;
      sub_24E60169C(a1 + *(v32 + 24), v52, &qword_27F223138, &unk_24F972860);
      v39 = v35(v38, 1, v34);
      sub_24E601704(v38, &qword_27F223138, &unk_24F972860);
      v37 = 12.0;
      if (v39 == 1)
      {
        v37 = 6.0;
      }
    }

    *&v63 = v37;
    v40 = sub_24E602068(&qword_27F23DB78, &qword_27F23DB40, &unk_24FA1A590, MEMORY[0x277D7EB00]);
    v41 = sub_24F6A6BB4();
    v42 = v59;
    v43 = v56;
    sub_24F926178();
    (*(v58 + 8))(v43, v17);
    v44 = v60;
    v45 = v51;
    (*(v60 + 16))(v50, v42, v51);
    swift_storeEnumTagMultiPayload();
    *&v63 = v17;
    *(&v63 + 1) = &type metadata for ShelfHeaderButtonStyle;
    v64 = v40;
    v65 = v41;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    (*(v44 + 8))(v42, v45);
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  else
  {
    sub_24E601704(&v63, qword_27F21B590, &unk_24F93BE30);
    sub_24F6A6654(v12, v26);
    sub_24F6A8174(v26, v24, type metadata accessor for HeaderContentView);
    swift_storeEnumTagMultiPayload();
    v47 = sub_24E602068(&qword_27F23DB78, &qword_27F23DB40, &unk_24FA1A590, MEMORY[0x277D7EB00]);
    v48 = sub_24F6A6BB4();
    v66[0] = v17;
    v66[1] = &type metadata for ShelfHeaderButtonStyle;
    v66[2] = v47;
    v66[3] = v48;
    swift_getOpaqueTypeConformance2();
    sub_24F6A8DB8(&qword_27F23DB98, type metadata accessor for HeaderContentView, &unk_24FA118A0);
    sub_24F924E28();
    return sub_24F6A81EC(v26, type metadata accessor for HeaderContentView);
  }
}

uint64_t sub_24F6A64AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_24E60169C(v2, &v10 - v6, &qword_27F223138, &unk_24F972860);
  v8 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &qword_27F223138, &unk_24F972860);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  else
  {
    sub_24E60169C(&v7[*(v8 + 40)], &v10, &qword_27F213EA8, &unk_24F93D030);
    sub_24F6A81EC(v7, type metadata accessor for HeaderPresentation.HeaderLabel);
    if (*(&v11 + 1))
    {
      return sub_24E612C80(&v10, a2);
    }
  }

  result = sub_24E60169C(v2 + *(a1 + 40), a2, qword_27F21B590, &unk_24F93BE30);
  if (*(&v11 + 1))
  {
    return sub_24E601704(&v10, qword_27F21B590, &unk_24F93BE30);
  }

  return result;
}

uint64_t sub_24F6A6654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HeaderContentView(0);
  sub_24F6A8174(v2, a2 + v5[6], type metadata accessor for HeaderPresentation);
  sub_24E60169C(v2 + *(a1 + 40), a2 + v5[7], qword_27F21B590, &unk_24F93BE30);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  result = swift_getKeyPath();
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + v5[8]) = 0;
  return result;
}

uint64_t sub_24F6A6704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = sub_24F92C4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v27 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = type metadata accessor for HeaderPresentation(0);
  sub_24E60169C(a1 + *(v18 + 28), &v29, &qword_27F238828, &unk_24F9C52F0);
  if (v31[24] == 255)
  {
    sub_24E601704(&v29, &qword_27F238828, &unk_24F9C52F0);
    v22 = v27;
    (*(v6 + 56))(v27, 1, 1, a2);
  }

  else
  {
    v32[0] = v29;
    v32[1] = v30;
    v33[0] = *v31;
    *(v33 + 9) = *&v31[9];
    v20 = *(a1 + *(type metadata accessor for ShelfHeaderView(0, a2, a3, v19) + 36));
    v30 = 0u;
    *v31 = 0u;
    v29 = 0u;
    v31[16] = 1;
    v20(v32, &v29);
    sub_24E836C64(v32);
    sub_24E7896B8();
    v26 = v17;
    v21 = *(v6 + 8);
    v21(v8, a2);
    sub_24E7896B8();
    v21(v11, a2);
    v17 = v26;
    v22 = v27;
    (*(v6 + 32))(v27, v8, a2);
    (*(v6 + 56))(v22, 0, 1, a2);
  }

  sub_24E8D5004(v22, v17);
  v23 = *(v13 + 8);
  v23(v22, v12);
  v28 = a3;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (v23)(v17, v12);
}

unint64_t sub_24F6A6A74()
{
  result = qword_27F24C658;
  if (!qword_27F24C658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C650, &qword_24FA1A588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB40, &unk_24FA1A590);
    sub_24E602068(&qword_27F23DB78, &qword_27F23DB40, &unk_24FA1A590, MEMORY[0x277D7EB00]);
    sub_24F6A6BB4();
    swift_getOpaqueTypeConformance2();
    sub_24F6A8DB8(&qword_27F23DB98, type metadata accessor for HeaderContentView, &unk_24FA118A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C658);
  }

  return result;
}

unint64_t sub_24F6A6BB4()
{
  result = qword_27F24C660;
  if (!qword_27F24C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C660);
  }

  return result;
}

uint64_t objectdestroyTm_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShelfHeaderView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = v4 + ((v6 + 32) & ~v6);
  v8 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v7, 1, v8))
  {
    goto LABEL_14;
  }

  v10 = v7 + v8[5];
  v11 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    goto LABEL_3;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {

      v52 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v53 = type metadata accessor for JSColor(0);
      if (!(*(*(v53 - 8) + 48))(v52, 1, v53))
      {
        v54 = sub_24F928388();
        (*(*(v54 - 8) + 8))(v52, v54);
      }

      goto LABEL_3;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v61 = sub_24F9289E8();
      v62 = *(v61 - 8);
      if (!(*(v62 + 48))(v10, 1, v61))
      {
        (*(v62 + 8))(v10, v61);
      }

      if (*(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_3;
    }

    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_3;
    }

LABEL_27:

    goto LABEL_3;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_27;
    case 4:
      v64 = sub_24F9289E8();
      (*(*(v64 - 8) + 8))(v10, v64);
      break;
    case 5:
      goto LABEL_27;
  }

LABEL_3:
  v12 = v7 + v8[7];
  v13 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v15 = sub_24F928388();
      (*(*(v15 - 8) + 8))(v12, v15);
    }
  }

  v16 = (v7 + v8[10]);
  if (v16[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

LABEL_14:
  v17 = type metadata accessor for HeaderPresentation(0);
  v18 = v7 + v17[5];
  if (v9(v18, 1, v8))
  {
    goto LABEL_31;
  }

  v19 = v18 + v8[5];
  v20 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    goto LABEL_16;
  }

  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 2)
  {
    if (!v23)
    {

      v55 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v56 = type metadata accessor for JSColor(0);
      if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
      {
        v57 = sub_24F928388();
        (*(*(v57 - 8) + 8))(v55, v57);
      }

      goto LABEL_16;
    }

    if (v23 == 1)
    {
      v63 = sub_24F9289E8();
      v83 = *(v63 - 8);
      if (!(*(v83 + 48))(v19, 1, v63))
      {
        (*(v83 + 8))(v19, v63);
      }

      if (*(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_16;
    }

    if (v23 != 2)
    {
      goto LABEL_16;
    }

LABEL_44:

    goto LABEL_16;
  }

  switch(v23)
  {
    case 3:
      goto LABEL_44;
    case 4:
      v66 = sub_24F9289E8();
      (*(*(v66 - 8) + 8))(v19, v66);
      break;
    case 5:
      goto LABEL_44;
  }

LABEL_16:
  v21 = v18 + v8[7];
  v22 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v24 = sub_24F928388();
      (*(*(v24 - 8) + 8))(v21, v24);
    }
  }

  v25 = (v18 + v8[10]);
  if (v25[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_31:
  v26 = v7 + v17[6];
  if (v9(v26, 1, v8))
  {
    goto LABEL_48;
  }

  v27 = v26 + v8[5];
  v28 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    goto LABEL_33;
  }

  v31 = swift_getEnumCaseMultiPayload();
  if (v31 <= 2)
  {
    if (!v31)
    {

      v58 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v59 = type metadata accessor for JSColor(0);
      if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
      {
        v60 = sub_24F928388();
        (*(*(v60 - 8) + 8))(v58, v60);
      }

      goto LABEL_33;
    }

    if (v31 == 1)
    {
      v65 = sub_24F9289E8();
      v84 = *(v65 - 8);
      if (!(*(v84 + 48))(v27, 1, v65))
      {
        (*(v84 + 8))(v27, v65);
      }

      if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_33;
    }

    if (v31 != 2)
    {
      goto LABEL_33;
    }

LABEL_77:

    goto LABEL_33;
  }

  switch(v31)
  {
    case 3:
      goto LABEL_77;
    case 4:
      v67 = sub_24F9289E8();
      (*(*(v67 - 8) + 8))(v27, v67);
      break;
    case 5:
      goto LABEL_77;
  }

LABEL_33:
  v29 = v26 + v8[7];
  v30 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v29, v32);
    }
  }

  v33 = (v26 + v8[10]);
  if (v33[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_48:
  v34 = v7 + v17[7];
  if (*(v34 + 56) == 1)
  {
  }

  else if (!*(v34 + 56))
  {

    if (*(v34 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v34 + 16));
    }
  }

  v35 = v7 + v17[8];
  v36 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v40 = swift_getEnumCaseMultiPayload();
    if (v40 == 2)
    {
      goto LABEL_123;
    }

    if (v40 != 1)
    {
      if (v40)
      {
        goto LABEL_54;
      }

      v41 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v41 - 8) + 48))(v35, 1, v41))
      {
        goto LABEL_54;
      }

      v42 = swift_getEnumCaseMultiPayload();
      if (v42 > 2)
      {
        if (v42 != 3)
        {
          if (v42 == 4)
          {
            v82 = sub_24F9289E8();
            (*(*(v82 - 8) + 8))(v35, v82);
            goto LABEL_54;
          }

          if (v42 != 5)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_123;
      }

      if (v42)
      {
        if (v42 == 1)
        {
          v80 = sub_24F9289E8();
          v81 = *(v80 - 8);
          if (!(*(v81 + 48))(v35, 1, v80))
          {
            (*(v81 + 8))(v35, v80);
          }

          if (!*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_54;
          }
        }

        else if (v42 != 2)
        {
          goto LABEL_54;
        }

LABEL_123:

        goto LABEL_54;
      }

      v47 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v48 = type metadata accessor for JSColor(0);
      if ((*(*(v48 - 8) + 48))(v47, 1, v48))
      {
        goto LABEL_54;
      }

LABEL_73:
      v49 = sub_24F928388();
      (*(*(v49 - 8) + 8))(v47, v49);

      goto LABEL_54;
    }

    v43 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v44 = *(*(v43 - 8) + 48);
    if (v44(v35, 1, v43))
    {
LABEL_71:
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v46 = v35 + *(v45 + 48);
      if (v44(v46, 1, v43))
      {
        goto LABEL_72;
      }

      v51 = swift_getEnumCaseMultiPayload();
      if (v51 <= 2)
      {
        if (v51)
        {
          if (v51 != 1)
          {
            if (v51 != 2)
            {
              goto LABEL_72;
            }

LABEL_119:

            goto LABEL_72;
          }

          v76 = sub_24F9289E8();
          v77 = *(v76 - 8);
          if (!(*(v77 + 48))(v46, 1, v76))
          {
            (*(v77 + 8))(v46, v76);
          }

          if (*(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
          }
        }

        else
        {

          v71 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
          v72 = type metadata accessor for JSColor(0);
          if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
          {
            v73 = sub_24F928388();
            (*(*(v73 - 8) + 8))(v71, v73);
          }
        }

LABEL_72:
        v47 = v35 + *(v45 + 80);
        v48 = type metadata accessor for JSColor(0);
        if ((*(*(v48 - 8) + 48))(v47, 1, v48))
        {
          goto LABEL_54;
        }

        goto LABEL_73;
      }

      if (v51 != 3)
      {
        if (v51 == 4)
        {
          v79 = sub_24F9289E8();
          (*(*(v79 - 8) + 8))(v46, v79);
          goto LABEL_72;
        }

        if (v51 != 5)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_119;
    }

    v50 = swift_getEnumCaseMultiPayload();
    if (v50 > 2)
    {
      if (v50 != 3)
      {
        if (v50 == 4)
        {
          v78 = sub_24F9289E8();
          (*(*(v78 - 8) + 8))(v35, v78);
          goto LABEL_71;
        }

        if (v50 != 5)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      if (!v50)
      {

        v68 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v69 = type metadata accessor for JSColor(0);
        if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
        {
          v70 = sub_24F928388();
          (*(*(v70 - 8) + 8))(v68, v70);
        }

        goto LABEL_71;
      }

      if (v50 == 1)
      {
        v74 = sub_24F9289E8();
        v75 = *(v74 - 8);
        if (!(*(v75 + 48))(v35, 1, v74))
        {
          (*(v75 + 8))(v35, v74);
        }

        if (*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_71;
      }

      if (v50 != 2)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_71;
  }

LABEL_54:

  v37 = (v7 + *(v5 + 40));
  if (v37[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v38 = (v7 + *(v5 + 44));
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_24F6A806C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ShelfHeaderView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_24F6A8174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6A81EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F6A825C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C650, &qword_24FA1A588);
  sub_24F92C4A8();
  sub_24F6A6A74();
  swift_getWitnessTable();
  sub_24F921778();
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F925658();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F6A8DB8(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F6A8494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v80 = a2;
  v5 = sub_24F925728();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v76 = v6;
  v77 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C678, &qword_24FA1A680);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v65 - v9);
  v68 = sub_24F9248C8();
  v11 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F9256F8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C680, &qword_24FA1A688);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v19 = &v65 - v18;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C688, &qword_24FA1A690);
  MEMORY[0x28223BE20](v69);
  v21 = &v65 - v20;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C690, &qword_24FA1A698);
  MEMORY[0x28223BE20](v70);
  v72 = &v65 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C698, &qword_24FA1A6A0);
  MEMORY[0x28223BE20](v71);
  v73 = &v65 - v23;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C6A0, &qword_24FA1A6A8);
  MEMORY[0x28223BE20](v75);
  v74 = &v65 - v24;
  v81 = a1;
  sub_24F925708();
  sub_24F9248A8();
  sub_24F6A8DB8(qword_27F228BC8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v11 + 8))(v13, v68);
  v25 = v17;
  v26 = v19;
  (*(v15 + 8))(v25, v14);
  v27 = v67;
  v28 = v66;
  v29 = *(sub_24F924258() + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_24F924B38();
  (*(*(v31 - 8) + 104))(v10 + v29, v30, v31);
  *v10 = a3;
  v10[1] = a3;
  *(v10 + *(sub_24F924248() + 20)) = -10.0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v32 = sub_24F926D08();

  *(v10 + *(v8 + 60)) = v32;
  sub_24F6A8E00(v10, v21);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C6A8, &qword_24FA1A6B0);
  (*(v28 + 16))(&v21[v33[9]], v26, v27);
  v34 = &v21[v33[10]];
  *v34 = sub_24F923398() & 1;
  *(v34 + 1) = v35;
  v34[16] = v36 & 1;
  v37 = &v21[v33[11]];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v38 = qword_27F24E488;
  v39 = sub_24F923398();
  v41 = v40;
  v43 = v42;
  v44 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C6B0, &qword_24FA1A6E0) + 36)];
  *v44 = v38;
  v44[8] = v39 & 1;
  *(v44 + 2) = v41;
  v44[24] = v43 & 1;
  LOBYTE(v38) = sub_24F923398();
  v46 = v45;
  LOBYTE(v41) = v47;
  sub_24E601704(v10, &qword_27F24C678, &qword_24FA1A680);
  (*(v28 + 8))(v26, v27);
  v48 = &v21[*(v69 + 36)];
  *v48 = v38 & 1;
  *(v48 + 1) = v46;
  v48[16] = v41 & 1;
  sub_24F927628();
  sub_24F9242E8();
  v49 = v72;
  sub_24E6009C8(v21, v72, &qword_27F24C688, &qword_24FA1A690);
  v50 = &v49[*(v70 + 36)];
  v51 = v87;
  *(v50 + 4) = v86;
  *(v50 + 5) = v51;
  *(v50 + 6) = v88;
  v52 = v83;
  *v50 = v82;
  *(v50 + 1) = v52;
  v53 = v85;
  *(v50 + 2) = v84;
  *(v50 + 3) = v53;
  v54 = v73;
  sub_24E6009C8(v49, v73, &qword_27F24C690, &qword_24FA1A698);
  *(v54 + *(v71 + 36)) = 0;
  v55 = v78;
  v72 = *(v78 + 16);
  v56 = v77;
  v57 = v79;
  (v72)(v77, v81, v79);
  v58 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v59 = swift_allocObject();
  v78 = *(v55 + 32);
  (v78)(v59 + v58, v56, v57);
  v60 = v54;
  v61 = v74;
  sub_24E6009C8(v60, v74, &qword_27F24C698, &qword_24FA1A6A0);
  v62 = (v61 + *(v75 + 36));
  *v62 = sub_24F6A928C;
  v62[1] = v59;
  (v72)(v56, v81, v57);
  v63 = swift_allocObject();
  (v78)(v63 + v58, v56, v57);
  sub_24F6A8F08();
  sub_24F9262B8();

  return sub_24E601704(v61, &qword_27F24C6A0, &qword_24FA1A6A8);
}

uint64_t sub_24F6A8DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F6A8E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C678, &qword_24FA1A680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_20Tm_1()
{
  v1 = sub_24F925728();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_24F6A8F08()
{
  result = qword_27F24C6B8;
  if (!qword_27F24C6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C6A0, &qword_24FA1A6A8);
    sub_24F6A8F94();
    sub_24EC402FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C6B8);
  }

  return result;
}

unint64_t sub_24F6A8F94()
{
  result = qword_27F24C6C0;
  if (!qword_27F24C6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C698, &qword_24FA1A6A0);
    sub_24F6A904C();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C6C0);
  }

  return result;
}

unint64_t sub_24F6A904C()
{
  result = qword_27F24C6C8;
  if (!qword_27F24C6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C690, &qword_24FA1A698);
    sub_24F6A90D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C6C8);
  }

  return result;
}

unint64_t sub_24F6A90D8()
{
  result = qword_27F24C6D0;
  if (!qword_27F24C6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C688, &qword_24FA1A690);
    sub_24F6A9164();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C6D0);
  }

  return result;
}

unint64_t sub_24F6A9164()
{
  result = qword_27F24C6D8;
  if (!qword_27F24C6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C6B0, &qword_24FA1A6E0);
    sub_24E602068(qword_27F24C6E0, &qword_27F24C6A8, &qword_24FA1A6B0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C6D8);
  }

  return result;
}

uint64_t sub_24F6A921C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C6A0, &qword_24FA1A6A8);
  sub_24F6A8F08();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F6A92A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F9291D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F929208();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  (*(v7 + 16))(v10, v18[1], a1, v13);
  sub_24F9291E8();
  sub_24F9291C8();
  v16 = sub_24F9291F8();
  (*(v4 + 8))(v6, v3);
  (*(v12 + 8))(v15, v11);
  return v16 & 1;
}

uint64_t sub_24F6A94D4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229170, &unk_24FA27BC0);
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v2 = &v31 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229160, &unk_24F984730);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229150, &unk_24FA27BB0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229140, &unk_24F984720);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15._countAndFlagsBits = 0xD000000000000020;
  v15._object = 0x800000024FA7BC50;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v41 = localizedString(_:comment:)(v15, v16);
  v17._countAndFlagsBits = 0xD000000000000026;
  v17._object = 0x800000024FA7BCA0;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v34 = localizedString(_:comment:)(v17, v18);
  sub_24E600AEC();
  sub_24F925E18();
  sub_24F925148();
  sub_24F927618();
  sub_24F9242E8();
  (*(v31 + 32))(v6, v2, v32);
  v19 = &v6[*(v4 + 44)];
  v20 = v39;
  v19[4] = v38;
  v19[5] = v20;
  v19[6] = v40;
  v21 = v35;
  *v19 = v34;
  v19[1] = v21;
  v22 = v37;
  v19[2] = v36;
  v19[3] = v22;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, v10, &qword_27F229160, &unk_24F984730);
  v23 = &v10[*(v8 + 44)];
  v24 = v46;
  v23[4] = v45;
  v23[5] = v24;
  v23[6] = v47;
  v25 = v42;
  *v23 = v41;
  v23[1] = v25;
  v26 = v44;
  v23[2] = v43;
  v23[3] = v26;
  sub_24E6009C8(v10, v14, &qword_27F229150, &unk_24FA27BB0);
  v27 = &v14[*(v12 + 44)];
  *v27 = sub_24F6ABE6C;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = 0;
  v28 = v33;
  sub_24E6009C8(v14, v33, &qword_27F229140, &unk_24F984720);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229128, &unk_24FA27BA0);
  v30 = (v28 + *(result + 36));
  *v30 = 0;
  v30[1] = 0;
  v30[2] = sub_24F6ABE8C;
  v30[3] = 0;
  return result;
}

uint64_t sub_24F6A9940@<X0>(char *a1@<X0>, void (*a2)(void, __n128)@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  LODWORD(v167) = a4;
  v164 = a3;
  v163 = a2;
  v174 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C768, &qword_24FA1A798);
  v166 = a6;
  v15 = sub_24F924038();
  sub_24F924038();
  v165 = a8;
  v197 = a8;
  v198 = sub_24E669F00();
  v157 = v15;
  WitnessTable = swift_getWitnessTable();
  v195 = WitnessTable;
  v196 = sub_24E669F54();
  v16 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v159 = v16;
  v193 = OpaqueTypeMetadata2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v176 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageRenderMetricsViewModifier(255);
  v162 = v18;
  v19 = sub_24F924038();
  v20 = v14;
  v21 = sub_24F924E38();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C770, &unk_24FA27B90);
  v171 = v21;
  v23 = a1;
  v173 = sub_24F924E38();
  v172 = *(v173 - 8);
  v24 = MEMORY[0x28223BE20](v173);
  v170 = &v138 - v25;
  v26 = (*(a7 + 104))(a5, a7, v24);
  v177 = OpaqueTypeMetadata2;
  v168 = v22;
  v175 = v20;
  if (v27 == 0xFF)
  {
    v160 = v19;
    v169 = &v138;
    v162 = *(v20 - 8);
    MEMORY[0x28223BE20](v26);
    v159 = &v138 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    v157 = &v138;
    MEMORY[0x28223BE20](v64);
    v156 = &v138 - v65;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AC8, &qword_24F9355C0);
    v155 = &v138;
    WitnessTable = v66;
    v154 = *(v66 - 8);
    MEMORY[0x28223BE20](v66);
    v68 = &v138 - v67;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CD0, &unk_24FA27B70);
    v70 = v23;
    v71 = *(v69 - 8);
    MEMORY[0x28223BE20](v69);
    v73 = &v138 - v72;
    sub_24F921758();
    (*(a7 + 176))(a5, a7);
    v153 = v68;
    sub_24F921748();

    (*(v71 + 8))(v73, v69);
    sub_24F92B7F8();
    swift_unknownObjectRetain();
    v74 = v164;

    v75 = sub_24F92B7E8();
    v76 = swift_allocObject();
    v77 = MEMORY[0x277D85700];
    *(v76 + 16) = v75;
    *(v76 + 24) = v77;
    v78 = v166;
    *(v76 + 32) = a5;
    *(v76 + 40) = v78;
    v79 = v165;
    *(v76 + 48) = a7;
    *(v76 + 56) = v79;
    v80 = v163;
    *(v76 + 64) = v70;
    *(v76 + 72) = v80;
    *(v76 + 80) = v74;
    *(v76 + 88) = v167 & 1;
    v81 = sub_24F92B858();
    v82 = *(v81 - 8);
    v83 = *(v82 + 64);
    MEMORY[0x28223BE20](v81);
    v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
    v85 = &v138 - v84;
    sub_24F92B818();
    isPlatformVersionAtLeast = __isPlatformVersionAtLeast(2, 26, 4, 0);
    v87 = v175;
    if (isPlatformVersionAtLeast)
    {
      v166 = sub_24F923DD8();
      v167 = &v138;
      v165 = *(v166 - 8);
      MEMORY[0x28223BE20](v166);
      v163 = (&v138 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
      v193 = 0;
      OpaqueTypeConformance2 = 0xE000000000000000;
      sub_24F92C888();

      v193 = 0xD000000000000028;
      OpaqueTypeConformance2 = 0x800000024FA7BCD0;
      v182 = 50;
      v89 = sub_24F92CD88();
      MEMORY[0x253050C20](v89);

      v164 = &v138;
      v91 = MEMORY[0x28223BE20](v90);
      (*(v82 + 16))(&v138 - v84, &v138 - v84, v81, v91);
      v92 = v163;
      sub_24F923DC8();
      (*(v82 + 8))(v85, v81);
      v93 = v156;
      v94 = WitnessTable;
      (*(v154 + 32))(v156, v153, WitnessTable);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AD0, &qword_24F9355C8);
      (*(v165 + 32))(&v93[*(v95 + 36)], v92, v166);
    }

    else
    {
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AD8, &unk_24F9355D0);
      v93 = v156;
      v106 = &v156[*(v105 + 36)];
      v107 = sub_24F923AD8();
      (*(v82 + 32))(&v106[*(v107 + 20)], v85, v81);
      *v106 = &unk_24FA1A7B0;
      *(v106 + 1) = v76;
      v94 = WitnessTable;
      (*(v154 + 32))(v93, v153, WitnessTable);
    }

    v108 = v162;
    v109 = v159;
    v110 = (v162[4])(v159, v93, v87);
    v167 = &v138;
    v111 = v171;
    v112 = *(v171 - 8);
    MEMORY[0x28223BE20](v110);
    v114 = &v138 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
    v193 = MEMORY[0x277CE0BD8];
    OpaqueTypeConformance2 = MEMORY[0x277CE0BC8];
    v115 = swift_getOpaqueTypeConformance2();
    v193 = v94;
    OpaqueTypeConformance2 = v115;
    v116 = swift_getOpaqueTypeConformance2();
    v51 = v176;
    v193 = v177;
    OpaqueTypeConformance2 = v176;
    v117 = swift_getOpaqueTypeConformance2();
    v118 = sub_24F6AC168();
    v180 = v117;
    v181 = v118;
    v119 = v160;
    v120 = swift_getWitnessTable();
    v121 = v175;
    sub_24ECCCBA0(v109, v175, v119, v116, v120);
    v178 = v116;
    v179 = v120;
    v122 = swift_getWitnessTable();
    v123 = sub_24F6AC1C0();
    v58 = v170;
    sub_24ECCCBA0(v114, v111, v168, v122, v123);
    (*(v112 + 8))(v114, v111);
    v48 = MEMORY[0x277CE0BC8];
    v124 = v109;
    v44 = v177;
    (v108[1])(v124, v121);
    v47 = MEMORY[0x277CE0BD8];
  }

  else
  {
    v28 = v26;
    v161 = a5;
    v153 = a1;
    v154 = a7;
    LODWORD(v156) = v27;
    v155 = v26;
    if ((v27 & 1) == 0)
    {
      v169 = &v138;
      v160 = v19;
      v151 = *(v19 - 8);
      MEMORY[0x28223BE20](v26);
      v152 = &v138 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
      v149 = &v138;
      v150 = v96;
      MEMORY[0x28223BE20](v97);
      v148 = &v138 - v98;
      v147 = &v138;
      v146 = *(v162 - 1);
      MEMORY[0x28223BE20](v99);
      v145 = &v138 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
      v101 = swift_checkMetadataState();
      v143 = &v138;
      v144 = v101;
      v142 = *(v101 - 8);
      MEMORY[0x28223BE20](v101);
      v139 = swift_checkMetadataState();
      v141 = &v138;
      v140 = *(v139 - 8);
      MEMORY[0x28223BE20](v139);
      v102 = swift_checkMetadataState();
      v157 = &v138;
      MEMORY[0x28223BE20](v102);
      v104 = MEMORY[0x28223BE20](v103);
      v163(v28, v104);
      sub_24F5634EC();
    }

    v169 = &v138;
    v175 = *(v22 - 8);
    MEMORY[0x28223BE20](v26);
    v160 = &v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
    v162 = &v138;
    MEMORY[0x28223BE20](v159);
    v30 = sub_24E6A4C1C();
    v31 = sub_24F924B68();
    WitnessTable = &v138;
    MEMORY[0x28223BE20](v31);
    v32 = v166;
    *(&v138 - 10) = v161;
    *(&v138 - 9) = v32;
    v33 = v165;
    *(&v138 - 8) = v154;
    *(&v138 - 7) = v33;
    v34 = v153;
    *(&v138 - 6) = v28;
    *(&v138 - 5) = v34;
    MEMORY[0x28223BE20](v32);
    *(&v138 - 10) = v36;
    *(&v138 - 9) = v35;
    *(&v138 - 8) = v38;
    *(&v138 - 7) = v37;
    *(&v138 - 6) = v40;
    *(&v138 - 5) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C778, &qword_24FA1A7A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
    v193 = &type metadata for GameOverlayViewPredicate;
    OpaqueTypeConformance2 = v30;
    v41 = swift_getOpaqueTypeConformance2();
    v42 = sub_24F6AC0B0();
    v43 = sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    v136 = v42;
    v137 = v43;
    v135 = v41;
    v44 = v177;
    v45 = v160;
    sub_24F927568();
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211AC8, &qword_24F9355C0);
    v47 = MEMORY[0x277CE0BD8];
    v193 = MEMORY[0x277CE0BD8];
    v48 = MEMORY[0x277CE0BC8];
    OpaqueTypeConformance2 = MEMORY[0x277CE0BC8];
    v49 = swift_getOpaqueTypeConformance2();
    v193 = v46;
    OpaqueTypeConformance2 = v49;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = v176;
    v193 = v44;
    OpaqueTypeConformance2 = v176;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = sub_24F6AC168();
    v191 = v52;
    v192 = v53;
    v54 = swift_getWitnessTable();
    v189 = v50;
    v190 = v54;
    v55 = v171;
    v56 = swift_getWitnessTable();
    v57 = sub_24F6AC1C0();
    v58 = v170;
    v59 = v45;
    v60 = v45;
    v61 = v168;
    sub_24ECCCC98(v60, v55, v168, v56, v57);
    v62 = sub_24F11CF10(v155, v156);
    (*(v175 + 8))(v59, v61, v62);
  }

  v125 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211AC8, &qword_24F9355C0);
  v193 = v47;
  OpaqueTypeConformance2 = v48;
  v126 = swift_getOpaqueTypeConformance2();
  v193 = v125;
  OpaqueTypeConformance2 = v126;
  v127 = swift_getOpaqueTypeConformance2();
  v193 = v44;
  OpaqueTypeConformance2 = v51;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = sub_24F6AC168();
  v187 = v128;
  v188 = v129;
  v130 = swift_getWitnessTable();
  v185 = v127;
  v186 = v130;
  v131 = swift_getWitnessTable();
  v132 = sub_24F6AC1C0();
  v183 = v131;
  v184 = v132;
  v133 = v173;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v172 + 8))(v58, v133);
}

uint64_t sub_24F6AB67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_24F92B7F8();
  v7[3] = sub_24F92B7E8();
  v11 = (*(v13 + 224) + **(v13 + 224));
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_24E9A9984;

  return v11(a7);
}

uint64_t sub_24F6AB7C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a7;
  v29 = a8;
  v26 = a4;
  v27 = a6;
  v24 = a2;
  v25 = a3;
  v30 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C798, &unk_24FA27C20);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229128, &unk_24FA27BA0);
  MEMORY[0x28223BE20](v19);
  v21 = &v23 - v20;
  swift_getErrorValue();
  if (sub_24F6A92A4(v31, v32))
  {
    sub_24F6A94D4(v21);
    sub_24F6AC54C(v21, v18);
    swift_storeEnumTagMultiPayload();
    sub_24EB3A624();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    sub_24F924E28();
    return sub_24E601704(v21, &qword_27F229128, &unk_24FA27BA0);
  }

  else
  {
    sub_24F6ABABC(a1, v24, v25, v26, a5 & 1, v27, v28, v29, a10);
    (*(v13 + 16))(v18, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_24EB3A624();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    sub_24F924E28();
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_24F6ABABC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + 32) = a8;
  *(v17 + 40) = a9;
  *(v17 + 48) = a2;
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;
  *(v17 + 72) = a5;
  v18 = a1;
  swift_unknownObjectRetain();

  return sub_24F921A18();
}

double sub_24F6ABB9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - v17;
  v19 = sub_24F92B858();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_24F92B7F8();
  swift_unknownObjectRetain();

  v20 = sub_24F92B7E8();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = a7;
  *(v21 + 56) = a8;
  *(v21 + 64) = a1;
  *(v21 + 72) = a2;
  *(v21 + 80) = a3;
  *(v21 + 88) = a4;
  sub_24EA998B8(0, 0, v18, &unk_24FA1A7C0, v21);

  return result;
}

uint64_t sub_24F6ABD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_24F92B7F8();
  v8[3] = sub_24F92B7E8();
  v12 = (*(v14 + 232) + **(v14 + 232));
  v10 = swift_task_alloc();
  v8[4] = v10;
  *v10 = v8;
  v10[1] = sub_24E8FAC50;

  return v12(a8);
}

void sub_24F6ABEAC(uint64_t (*a1)(void), const char *a2)
{
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E7F0);
  oslog = sub_24F9220B8();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24E5DD000, oslog, v5, a2, v6, 2u);
    MEMORY[0x2530542D0](v6, -1, -1);
  }
}

uint64_t sub_24F6ABFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24F6AC0B0()
{
  result = qword_27F24C780;
  if (!qword_27F24C780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C778, &qword_24FA1A7A0);
    sub_24EB3A624();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C780);
  }

  return result;
}

unint64_t sub_24F6AC168()
{
  result = qword_27F24C788;
  if (!qword_27F24C788)
  {
    type metadata accessor for PageRenderMetricsViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C788);
  }

  return result;
}

unint64_t sub_24F6AC1C0()
{
  result = qword_27F24C790;
  if (!qword_27F24C790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C770, &unk_24FA27B90);
    sub_24E6A4C1C();
    swift_getOpaqueTypeConformance2();
    sub_24F6AC0B0();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C790);
  }

  return result;
}

uint64_t sub_24F6AC2BC()
{
  v10 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24E6541E4;

  return sub_24F6AB67C(v2, v3, v4, v5, v6, v7, v10);
}

uint64_t sub_24F6AC3AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_81()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F6AC44C(uint64_t a1)
{
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F6ABD0C(a1, v6, v5, v7, v8, v9, v10, v4);
}

uint64_t sub_24F6AC54C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229128, &unk_24FA27BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6AC5BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C768, &qword_24FA1A798);
  sub_24F924038();
  sub_24F924038();
  sub_24E669F00();
  swift_getWitnessTable();
  sub_24E669F54();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageRenderMetricsViewModifier(255);
  sub_24F924038();
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C770, &unk_24FA27B90);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211AC8, &qword_24F9355C0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24F6AC168();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F6AC1C0();
  return swift_getWitnessTable();
}

uint64_t sub_24F6AC86C()
{
  if (*v0)
  {
    return 0x4449656C646E7562;
  }

  else
  {
    return 0x796C6E4F6E6977;
  }
}

uint64_t sub_24F6AC8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796C6E4F6E6977 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F6AC984(uint64_t a1)
{
  v2 = sub_24F6ACB8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6AC9C0(uint64_t a1)
{
  v2 = sub_24F6ACB8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CompletedChallengesDataIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C7A0, &qword_24FA1A7F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6ACB8C();
  sub_24F92D128();
  v12 = 0;
  sub_24F92CD18();
  if (!v2)
  {
    v11 = 1;
    sub_24F92CCA8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24F6ACB8C()
{
  result = qword_27F24C7A8;
  if (!qword_27F24C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C7A8);
  }

  return result;
}

uint64_t CompletedChallengesDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C7B0, &qword_24FA1A7F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6ACB8C();
  sub_24F92D108();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_24F92CC38();
    v15 = 1;
    v11 = sub_24F92CBC8();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F6ACE00()
{
  result = qword_27F24C7B8;
  if (!qword_27F24C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C7B8);
  }

  return result;
}

unint64_t sub_24F6ACE58()
{
  result = qword_27F24C7C0;
  if (!qword_27F24C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C7C0);
  }

  return result;
}

unint64_t sub_24F6ACEB0()
{
  result = qword_27F24C7C8;
  if (!qword_27F24C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C7C8);
  }

  return result;
}

uint64_t sub_24F6ACF18(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[12];
    goto LABEL_13;
  }

  v16 = type metadata accessor for PlayerAvatar(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[13];

  return v17(v18, a2, v16);
}

uint64_t sub_24F6AD140(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  v16 = type metadata accessor for PlayerAvatar(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[13];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for LeaderboardPersonalBestCard(uint64_t a1)
{
  result = qword_27F24C7D0;
  if (!qword_27F24C7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F6AD3A0(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F9289E8();
            if (v6 <= 0x3F)
            {
              type metadata accessor for PlayerAvatar(319);
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

uint64_t sub_24F6AD4E0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x616C506C61746F74;
    v6 = 0x6E6F6349656D6167;
    if (a1 != 8)
    {
      v6 = 0x7641726579616C70;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7470697263736564;
    if (a1 != 5)
    {
      v7 = 0x657474616D726F66;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x4D747865746E6F63;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6575676573;
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

uint64_t sub_24F6AD63C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v47);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9289E8();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v12);
  v14 = v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C7F0, &unk_24FA1AAC0);
  v16 = *(v15 - 8);
  v51 = v15;
  v52 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = v44 - v17;
  v19 = type metadata accessor for LeaderboardPersonalBestCard(0);
  MEMORY[0x28223BE20](v19);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v21 + 40) = 0u;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 9) = 0;
  v57 = v21 + 40;
  sub_24E61DA68(&v61, (v21 + 40), qword_27F21B590, &unk_24F93BE30);
  v58 = v19;
  v22 = *(v19 + 24);
  v23 = sub_24F92A6D8();
  v24 = *(*(v23 - 8) + 56);
  v59 = v22;
  v60 = v21;
  v24(&v21[v22], 1, 1, v23);
  v25 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24F6AE388();
  v50 = v18;
  v26 = v55;
  sub_24F92D108();
  if (v26)
  {
    v28 = v57;
    __swift_destroy_boxed_opaque_existential_1(v56);
    v29 = v60;
    sub_24E601704(v28, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v29 + v59, &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v55 = v11;
    v44[1] = v6;
    v45 = v8;
    v27 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v64 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v30 = v62;
    v31 = v60;
    *v60 = v61;
    v31[1] = v30;
    *(v31 + 4) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v64 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v61, v57, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v61) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    v32 = v60;
    sub_24E61DA68(v14, v60 + v59, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v61) = 3;
    sub_24F6AE3DC(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v33 = v55;
    sub_24F92CC18();
    v34 = v58;
    sub_24E6009C8(v33, &v32[v58[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v61) = 4;
    sub_24F6AE3DC(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v35 = v45;
    sub_24F92CC68();
    sub_24E7CB43C(v35, &v32[v34[8]], type metadata accessor for CommonCardAttributes);
    LOBYTE(v61) = 5;
    v36 = sub_24F92CC28();
    v37 = &v32[v34[9]];
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v61) = 6;
    v39 = sub_24F92CC28();
    v40 = &v32[v34[10]];
    *v40 = v39;
    v40[1] = v41;
    LOBYTE(v61) = 7;
    *&v32[v58[11]] = sub_24F92CC58();
    LOBYTE(v61) = 8;
    sub_24F6AE3DC(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    sub_24F92CC68();
    (*(v53 + 32))(&v32[v58[12]], v27, v54);
    LOBYTE(v61) = 9;
    sub_24F6AE3DC(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CC68();
    (*(v52 + 8))(v50, v51);
    v42 = v60;
    sub_24E7CB43C(v48, v60 + v58[13], type metadata accessor for PlayerAvatar);
    sub_24F6AE424(v42, v46, type metadata accessor for LeaderboardPersonalBestCard);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return sub_24F6AE48C(v42, type metadata accessor for LeaderboardPersonalBestCard);
  }
}

uint64_t sub_24F6AE10C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F6AE604(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6AE134(uint64_t a1)
{
  v2 = sub_24F6AE388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6AE170(uint64_t a1)
{
  v2 = sub_24F6AE388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6AE1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F6AE2BC(uint64_t a1)
{
  *(a1 + 8) = sub_24F6AE3DC(&qword_27F21AC90, type metadata accessor for LeaderboardPersonalBestCard, &unk_24FA1AA7C);
  result = sub_24F6AE3DC(&qword_27F24C7E0, type metadata accessor for LeaderboardPersonalBestCard, &unk_24FA1AA38);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F6AE388()
{
  result = qword_27F24C7F8;
  if (!qword_27F24C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C7F8);
  }

  return result;
}

uint64_t sub_24F6AE3DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F6AE424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6AE48C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F6AE500()
{
  result = qword_27F24C800;
  if (!qword_27F24C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C800);
  }

  return result;
}

unint64_t sub_24F6AE558()
{
  result = qword_27F24C808;
  if (!qword_27F24C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C808);
  }

  return result;
}

unint64_t sub_24F6AE5B0()
{
  result = qword_27F24C810;
  if (!qword_27F24C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C810);
  }

  return result;
}

uint64_t sub_24F6AE604(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE0065726F635364 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x616C506C61746F74 && a2 == 0xEC00000073726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xEC00000072617461)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t TruncationState.__allocating_init(isTruncated:)(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  sub_24F91FDB8();
  *(v2 + 16) = a1;
  return v2;
}

void sub_24F6AE9A0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F6AEC00();
  sub_24F91FD88();

  *a2 = *(v3 + 16);
}

uint64_t sub_24F6AEA40()
{
  swift_getKeyPath();
  sub_24F6AEC00();
  sub_24F91FD88();

  return *(v0 + 16);
}

void sub_24F6AEAB0(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F6AEC00();
    sub_24F91FD78();
  }
}

uint64_t TruncationState.init(isTruncated:)(uint64_t a1)
{
  v2 = a1;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  sub_24F91FDB8();
  *(v1 + 16) = v2;
  return v1;
}

unint64_t sub_24F6AEC00()
{
  result = qword_27F224A98;
  if (!qword_27F224A98)
  {
    type metadata accessor for TruncationState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224A98);
  }

  return result;
}

uint64_t type metadata accessor for TruncationState(uint64_t a1)
{
  result = qword_27F24C820;
  if (!qword_27F24C820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F6AECA4(double a1, double a2)
{
  if (*(v2 + 24) == a1 && *(v2 + 32) == a2)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;

    sub_24F6AF0A4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F6AEC00();
    sub_24F91FD78();
  }
}

void sub_24F6AEDBC(double a1, double a2)
{
  if (*(v2 + 40) == a1 && *(v2 + 48) == a2)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;

    sub_24F6AF0A4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F6AEC00();
    sub_24F91FD78();
  }
}

double sub_24F6AEED4()
{
  swift_getKeyPath();
  sub_24F6AEC00();
  sub_24F91FD88();

  return *(v0 + 24);
}

__n128 sub_24F6AEF44@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F6AEC00();
  sub_24F91FD88();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_24F6AEFBC()
{
  swift_getKeyPath();
  sub_24F6AEC00();
  sub_24F91FD88();

  return *(v0 + 40);
}

__n128 sub_24F6AF02C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F6AEC00();
  sub_24F91FD88();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_24F6AF0A4()
{
  swift_getKeyPath();
  sub_24F6AEC00();
  sub_24F91FD88();

  v1 = *(v0 + 32);
  swift_getKeyPath();
  sub_24F91FD88();

  v2 = *(v0 + 48);
  if ((*(v0 + 16) ^ (v2 < v1)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F91FD78();
  }

  else
  {
    *(v0 + 16) = v2 < v1;
  }
}

uint64_t TruncationState.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit15TruncationState___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

double TruncationState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit15TruncationState___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_24F6AF30C(uint64_t a1)
{
  result = sub_24F91FDC8();
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

double sub_24F6AF4F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v31 = a5;
  v29 = a4;
  v6 = a3;
  v28 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C848, &qword_24FA1AD98) - 8;
  MEMORY[0x28223BE20](v32);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = sub_24F9239C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v30 = sub_24F926C98();
  (*(v15 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v17 = (*(v15 + 80) + 33) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v6;
  LOBYTE(v6) = v29;
  *(v18 + 32) = v29;
  (*(v15 + 32))(v18 + v17, &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C830, &qword_24FA1AD88);
  (*(*(v19 - 8) + 16))(v13, v31, v19);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C850, &qword_24FA1ADA0) + 36)] = 256;
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  *(v20 + 32) = v6;
  swift_retain_n();
  v22 = sub_24F927618();
  v23 = v33;
  v24 = &v13[*(v32 + 44)];
  *v24 = sub_24F6AFF18;
  v24[1] = v20;
  v24[2] = v22;
  v24[3] = v25;
  sub_24F6AFF24(v13, v23);
  *a6 = v30;
  a6[1] = sub_24F6AFEC8;
  a6[2] = v18;
  a6[3] = 0;
  a6[4] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C858, &qword_24FA1ADA8);
  sub_24F6AFF24(v23, a6 + *(v26 + 48));

  sub_24E5FCA4C(sub_24F6AFEC8, v18);
  sub_24E5FCA4C(0, 0);
  sub_24F6AFF94(v13);
  sub_24F6AFF94(v23);

  sub_24E824448(sub_24F6AFEC8, v18);
  return sub_24E824448(0, 0);
}

void sub_24F6AF820(uint64_t a1)
{
  sub_24F923998();
  if (*(a1 + 40) == v2 && *(a1 + 48) == v3)
  {
    *(a1 + 40) = v2;
    *(a1 + 48) = v3;
    sub_24F6AF0A4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F6AEC00();
    sub_24F91FD78();
  }
}

uint64_t sub_24F6AF924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v17 = a4;
  v9 = sub_24F9239C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_24F926C98();
  (*(v10 + 16))(&v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v9);
  v13 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = v17;
  (*(v10 + 32))(v14 + v13, &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  *a5 = v12;
  a5[1] = sub_24F6B00C0;
  a5[2] = v14;
  a5[3] = 0;
  a5[4] = 0;
}

void sub_24F6AFA8C(uint64_t a1)
{
  sub_24F923998();
  if (*(a1 + 24) == v2 && *(a1 + 32) == v3)
  {
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    sub_24F6AF0A4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F6AEC00();
    sub_24F91FD78();
  }
}

uint64_t sub_24F6AFB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C830, &qword_24FA1AD88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = *(v2 + 16);
  sub_24E602068(&qword_27F24C838, &qword_27F24C830, &qword_24FA1AD88, MEMORY[0x277CE04B0]);
  sub_24F926B88();
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  (*(v6 + 32))(v13 + v12, v8, v5);

  v14 = sub_24F927618();
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C840, &qword_24FA1AD90);
  v18 = (a2 + *(result + 36));
  *v18 = sub_24F6AFE30;
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = v16;
  return result;
}

uint64_t sub_24F6AFD60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C830, &qword_24FA1AD88);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_24F6AFE30@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C830, &qword_24FA1AD88) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = v2 + ((*(v5 + 80) + 33) & ~*(v5 + 80));

  return sub_24F6AF4F8(a1, v6, v7, v8, v9, a2);
}

uint64_t sub_24F6AFEE0()
{

  return swift_deallocObject();
}

uint64_t sub_24F6AFF24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C848, &qword_24FA1AD98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6AFF94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C848, &qword_24FA1AD98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_30Tm_2()
{
  v1 = sub_24F9239C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F6B00D8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_24F9239C8() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = v1 + ((*(v2 + 80) + 33) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

unint64_t sub_24F6B0158()
{
  result = qword_27F24C860;
  if (!qword_27F24C860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C840, &qword_24FA1AD90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C830, &qword_24FA1AD88);
    sub_24E602068(&qword_27F24C838, &qword_27F24C830, &qword_24FA1AD88, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F24C868, &qword_27F24C870, &unk_24FA1ADB0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C860);
  }

  return result;
}

uint64_t sub_24F6B02D8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24F6B0470(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengesHistoryPlayerLockup(uint64_t a1)
{
  result = qword_27F24C878;
  if (!qword_27F24C878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F6B0640(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
          if (v5 <= 0x3F)
          {
            sub_24E61C938(319);
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

uint64_t sub_24F6B076C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C8E8, &qword_24FA1B010);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6B2720();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengesHistoryPlayerLockup(0);
    v8[14] = 1;
    type metadata accessor for PlayerAvatar(0);
    sub_24F6B283C(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CCA8();
    v8[12] = 3;
    sub_24F92CD08();
    v8[11] = 4;
    sub_24F92CD38();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[8] = 7;
    sub_24F929608();
    sub_24F6B283C(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F6B0B50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C8D8, &qword_24FA1B008);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v12 = &v43 - v11;
  v13 = type metadata accessor for ChallengesHistoryPlayerLockup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 36)];
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v52 = v17;
  sub_24E61DA68(&v55, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = v13[10];
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v51 = v18;
  v54 = v15;
  v20(&v15[v18], 1, 1, v19);
  v21 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F6B2720();
  v48 = v12;
  v22 = v50;
  sub_24F92D108();
  if (v22)
  {
    v24 = v51;
    v25 = v52;
    v26 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_24E601704(v25, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v26 + v24, &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v50 = v10;
    v43 = v5;
    v44 = v7;
    v23 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v27 = v56;
    v28 = v54;
    *v54 = v55;
    v28[1] = v27;
    *(v28 + 4) = v57;
    LOBYTE(v55) = 1;
    sub_24F6B283C(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    v29 = v50;
    sub_24F92CC68();
    v30 = v23;
    v31 = v51;
    v32 = v52;
    sub_24E72FFFC(v29, v28 + v13[5]);
    LOBYTE(v55) = 2;
    v33 = sub_24F92CBC8();
    v34 = (v28 + v13[6]);
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v55) = 3;
    v36 = sub_24F92CC28();
    v37 = (v28 + v13[7]);
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v55) = 4;
    *(v28 + v13[8]) = sub_24F92CC58();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v58 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v55, v32, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v55) = 6;
    sub_24E65CAA0();
    v39 = v44;
    sub_24F92CC68();
    sub_24E61DA68(v39, v54 + v31, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v55) = 7;
    sub_24F6B283C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v40 = v46;
    sub_24F92CC18();
    (*(v30 + 8))(v48, v49);
    v41 = v54;
    sub_24E6009C8(v40, v54 + v13[11], &qword_27F213E68, &unk_24F93BC80);
    sub_24F6B2774(v41, v45, type metadata accessor for ChallengesHistoryPlayerLockup);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_24F6B27DC(v41, type metadata accessor for ChallengesHistoryPlayerLockup);
  }
}

unint64_t sub_24F6B1308()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x4D747865746E6F63;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD00000000000001BLL;
    if (v1 != 4)
    {
      v6 = 0x6575676573;
    }

    if (*v0 <= 5u)
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
    v2 = 25705;
    v3 = 0x676E6964616568;
    if (v1 != 2)
    {
      v3 = 0x656C746974;
    }

    if (*v0)
    {
      v2 = 0x726174617661;
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
}

uint64_t sub_24F6B13FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F6B2A04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6B1424(uint64_t a1)
{
  v2 = sub_24F6B2720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6B1460(uint64_t a1)
{
  v2 = sub_24F6B2720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6B149C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F6B15DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_24F924A78();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246548, &unk_24FA02B68);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v70 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  v22 = type metadata accessor for ChallengesHistoryPlayerLockup(0);
  sub_24F6B2774(a1 + v22[5], v15, type metadata accessor for PlayerAvatar);
  LOBYTE(v77[0]) = 7;
  sub_24F8319B8(v15, v77, v21);
  sub_24F927618();
  sub_24F9238C8();
  v23 = *(v17 + 44);
  v69 = v21;
  v24 = &v21[v23];
  v25 = v77[1];
  *v24 = v77[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v77[2];
  *v12 = sub_24F924C98();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246550, &qword_24FA02BB0) + 44);
  v71 = v12;
  v64 = a1;
  sub_24F6B1D20(a1, &v12[v26]);
  sub_24F924A68();
  sub_24F924A58();
  v74[0] = *(a1 + v22[8]);
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v27 = sub_24F925DE8();
  v29 = v28;
  LOBYTE(v15) = v30;
  sub_24F925888();
  v31 = sub_24F925C98();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_24E600B40(v27, v29, v15 & 1);

  v74[0] = v31;
  v74[1] = v33;
  v75 = v35 & 1;
  v76 = v37;
  sub_24F9268B8();
  sub_24E600B40(v31, v33, v35 & 1);

  sub_24E60169C(v64 + v22[9], v74, qword_27F24EC90, &unk_24F93C1D0);
  v38 = v76;
  sub_24E601704(v74, qword_27F21B590, &unk_24F93BE30);
  if (v38)
  {
    v39 = sub_24F926DF8();
    v40 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v42 = sub_24F926D38();
    v43 = swift_getKeyPath();
    v64 = v39;

    v62 = KeyPath;

    v63 = v40;

    v61 = v42;
  }

  else
  {
    v64 = 0;
    v62 = 0;
    v63 = 0;
    v43 = 0;
    v61 = 0;
  }

  v44 = v70;
  sub_24E60169C(v69, v70, &qword_27F2233D0, &qword_24F958810);
  v45 = v72;
  sub_24F4E4D84(v71, v72);
  v46 = v66;
  v47 = v67;
  v48 = *(v67 + 16);
  v49 = v68;
  v48(v66, v73, v68);
  v50 = v44;
  v51 = v65;
  sub_24E60169C(v50, v65, &qword_27F2233D0, &qword_24F958810);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C8D0, &qword_24FA1AFA0);
  sub_24F4E4D84(v45, v51 + v52[12]);
  v53 = v51 + v52[16];
  *v53 = 0;
  *(v53 + 8) = 1;
  v48((v51 + v52[20]), v46, v49);
  v54 = (v51 + v52[24]);
  v55 = v64;
  v56 = v62;
  v57 = v63;
  v58 = v61;
  sub_24E6DC040(v64, v62, v63, v43, v61);
  sub_24E6DC0B0(v55, v56, v57, v43, v58);
  *v54 = v55;
  v54[1] = v56;
  v54[2] = v57;
  v54[3] = v43;
  v54[4] = v58;
  v59 = *(v47 + 8);
  v59(v73, v49);
  sub_24E601704(v71, &qword_27F246548, &unk_24FA02B68);
  sub_24E601704(v69, &qword_27F2233D0, &qword_24F958810);
  sub_24E6DC0B0(v55, v56, v57, v43, v58);
  v59(v46, v49);
  sub_24E601704(v72, &qword_27F246548, &unk_24FA02B68);
  return sub_24E601704(v70, &qword_27F2233D0, &qword_24F958810);
}

uint64_t sub_24F6B1D20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v50 - v6;
  v7 = type metadata accessor for ChallengesHistoryPlayerLockup(0);
  v8 = (a1 + *(v7 + 24));
  v9 = v8[1];
  if (v9)
  {
    v58 = *v8;
    v59 = v9;
    v51 = v7;
    sub_24E600AEC();

    v10 = sub_24F925E18();
    v12 = v11;
    v14 = v13;
    sub_24F925A18();
    v15 = sub_24F925C98();
    v17 = v16;
    v19 = v18;
    v52 = a1;

    sub_24E600B40(v10, v12, v14 & 1);

    LODWORD(v58) = sub_24F9251C8();
    v20 = v15;
    v21 = sub_24F925C58();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_24E600B40(v20, v17, v19 & 1);
    a1 = v52;

    v28 = v21;
    v29 = v23;
    v30 = v23;
    v31 = v25 & 1;
    sub_24E5FD138(v21, v30, v25 & 1);
    v32 = v27;

    v7 = v51;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v31 = 0;
    v32 = 0;
  }

  v33 = (a1 + *(v7 + 28));
  v34 = v33[1];
  v58 = *v33;
  v59 = v34;
  sub_24E600AEC();

  v35 = sub_24F925E18();
  v37 = v36;
  v58 = v35;
  v59 = v36;
  v39 = v38 & 1;
  v60 = v38 & 1;
  v61 = v40;
  v41 = v57;
  sub_24F9268B8();
  sub_24E600B40(v35, v37, v39);

  v43 = v54;
  v42 = v55;
  v44 = *(v55 + 16);
  v45 = v56;
  v44(v54, v41, v56);
  v46 = v53;
  *v53 = v28;
  v46[1] = v29;
  v46[2] = v31;
  v46[3] = v32;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246560, &unk_24FA02C20);
  v44(v46 + *(v47 + 48), v43, v45);
  sub_24E65D2B4(v28, v29, v31, v32);
  sub_24E65D2F8(v28, v29, v31, v32);
  v48 = *(v42 + 8);
  v48(v57, v45);
  v48(v43, v45);
  return sub_24E65D2F8(v28, v29, v31, v32);
}

uint64_t sub_24F6B20B4(uint64_t a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C898, &qword_24FA1AF80);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C8A0, &qword_24FA1AF88);
  sub_24F6B15DC(a1, &v8[*(v9 + 44)]);
  v8[*(v6 + 36)] = 0;
  sub_24F9248B8();
  sub_24F6B2574();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F24C898, &qword_24FA1AF80);
}

uint64_t sub_24F6B225C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924248();
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #12.0 }

  *v7 = _Q0;
  *&v7[*(v2 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFBC8];
  sub_24F6B2774(v7, v4, MEMORY[0x277CDFBC8]);
  sub_24F6B283C(&qword_27F214338, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBC0]);
  v19 = sub_24F927348();
  result = sub_24F6B27DC(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24F6B2410(uint64_t a1)
{
  sub_24F47D934();

  return sub_24F9218E8();
}

unint64_t sub_24F6B24A0()
{
  result = qword_27F24C890;
  if (!qword_27F24C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C890);
  }

  return result;
}

unint64_t sub_24F6B2574()
{
  result = qword_27F24C8A8;
  if (!qword_27F24C8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C898, &qword_24FA1AF80);
    sub_24F6B262C();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C8A8);
  }

  return result;
}

unint64_t sub_24F6B262C()
{
  result = qword_27F24C8B0;
  if (!qword_27F24C8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C8B8, &qword_24FA1AF90);
    sub_24E602068(&qword_27F24C8C0, &qword_27F24C8C8, &qword_24FA1AF98, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C8B0);
  }

  return result;
}

unint64_t sub_24F6B2720()
{
  result = qword_27F24C8E0;
  if (!qword_27F24C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C8E0);
  }

  return result;
}

uint64_t sub_24F6B2774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6B27DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F6B283C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F6B2898()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C898, &qword_24FA1AF80);
  sub_24F6B2574();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F6B2900()
{
  result = qword_27F24C8F0;
  if (!qword_27F24C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C8F0);
  }

  return result;
}

unint64_t sub_24F6B2958()
{
  result = qword_27F24C8F8;
  if (!qword_27F24C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C8F8);
  }

  return result;
}

unint64_t sub_24F6B29B0()
{
  result = qword_27F24C900;
  if (!qword_27F24C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C900);
  }

  return result;
}

uint64_t sub_24F6B2A04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6964616568 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FA75D90 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F6B2C9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v18 - v10;
  if ([a1 type] == 1 && (v15 = objc_msgSend(a1, sel_startDate)) != 0)
  {
    v16 = v15;
    sub_24F91F608();

    (*(v5 + 32))(v11, v7, v4);
    [a1 duration];
    sub_24F91F568();

    (*(v5 + 8))(v11, v4);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
    return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
  }

  else
  {

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t Leaderboard.LeaderboardType.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = v1;
  v33 = a1;
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F6B66B0(v3, v10, type metadata accessor for Leaderboard.LeaderboardType);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v13 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v13;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0x63697373616C63;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 88) = 0x63697373616C63;
    *(inited + 96) = 0xE700000000000000;
    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    *(inited + 136) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0);
    *(inited + 104) = MEMORY[0x277D84F98];
    v14 = sub_24E607D0C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
    swift_arrayDestroy();
    v15 = sub_24E80FFAC(v14);

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
    v17 = v33;
    v33[3] = v16;
    result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
    v17[4] = result;
    *v17 = v15;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_24F93A400;
    *(v19 + 32) = 0x646E696B24;
    v20 = MEMORY[0x277D22580];
    *(v19 + 72) = MEMORY[0x277D837D0];
    *(v19 + 80) = v20;
    *(v19 + 40) = 0xE500000000000000;
    *(v19 + 48) = 0x6E69727275636572;
    *(v19 + 56) = 0xE900000000000067;
    *(v19 + 88) = 0x6E69727275636572;
    *(v19 + 96) = 0xE900000000000067;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C908, &unk_24FA1B130);
    v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213258, &qword_24F93AA28) - 8);
    v22 = *(*v21 + 80);
    v32[0] = v2;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24F93DE60;
    v25 = (v24 + v23);
    v26 = v21[14];
    *v25 = 0x65746144646E65;
    *(v25 + 1) = 0xE700000000000000;
    (*(v5 + 16))(&v25[v26], v7, v4);
    v27 = sub_24E60DE58(v24);
    swift_setDeallocating();
    sub_24E601704(v25, &qword_27F213258, &qword_24F93AA28);
    swift_deallocClassInstance();
    *(v19 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C910, &unk_24FA1B140);
    *(v19 + 136) = sub_24EC73450(&qword_27F24C918, &qword_27F24C910, &unk_24FA1B140);
    *(v19 + 104) = v27;
    v28 = sub_24E607D0C(v19);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
    swift_arrayDestroy();
    v29 = sub_24E80FFAC(v28);

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
    v31 = v33;
    v33[3] = v30;
    v31[4] = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
    *v31 = v29;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_24F6B346C(uint64_t a1)
{
  v2 = sub_24F6B6424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6B34A8(uint64_t a1)
{
  v2 = sub_24F6B6424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6B34E4()
{
  if (*v0)
  {
    return 0x6E69727275636572;
  }

  else
  {
    return 0x63697373616C63;
  }
}

uint64_t sub_24F6B3524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63697373616C63 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69727275636572 && a2 == 0xE900000000000067)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F6B3608(uint64_t a1)
{
  v2 = sub_24F6B637C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6B3644(uint64_t a1)
{
  v2 = sub_24F6B637C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6B3698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F6B3720(uint64_t a1)
{
  v2 = sub_24F6B63D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6B375C(uint64_t a1)
{
  v2 = sub_24F6B63D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Leaderboard.LeaderboardType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C920, &qword_24FA1B150);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v22 - v3;
  v4 = sub_24F91F648();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C928, &qword_24FA1B158);
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C930, &qword_24FA1B160);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6B637C();
  sub_24F92D128();
  sub_24F6B66B0(v29, v11, type metadata accessor for Leaderboard.LeaderboardType);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
  {
    v31 = 0;
    sub_24F6B6424();
    sub_24F92CC98();
    (*(v6 + 8))(v8, v23);
  }

  else
  {
    v19 = v25;
    v18 = v26;
    (*(v25 + 32))(v30, v11, v26);
    v32 = 1;
    sub_24F6B63D0();
    v20 = v24;
    sub_24F92CC98();
    sub_24F6B6478(&qword_27F21BB08, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    v21 = v28;
    sub_24F92CD48();
    (*(v27 + 8))(v20, v21);
    (*(v19 + 8))(v30, v18);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t Leaderboard.LeaderboardType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C950, &qword_24FA1B168);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x28223BE20](v3);
  v47 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C958, &qword_24FA1B170);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C960, &qword_24FA1B178);
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F6B637C();
  v20 = v50;
  sub_24F92D108();
  if (!v20)
  {
    v50 = v13;
    v41 = v15;
    v42 = v18;
    v22 = v47;
    v21 = v48;
    v23 = sub_24F92CC78();
    v24 = (2 * *(v23 + 16)) | 1;
    v52 = v23;
    v53 = v23 + 32;
    v54 = 0;
    v55 = v24;
    v25 = sub_24E643430();
    v26 = v10;
    if (v25 == 2 || v54 != v55 >> 1)
    {
      v34 = sub_24F92C918();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v36 = v50;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v49 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v25)
      {
        v56 = 1;
        sub_24F6B63D0();
        v27 = v22;
        sub_24F92CBA8();
        v28 = v49;
        v29 = v21;
        sub_24F91F648();
        sub_24F6B6478(&qword_27F21B778, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
        v30 = v41;
        v31 = v45;
        sub_24F92CC68();
        (*(v46 + 8))(v27, v31);
        (*(v28 + 8))(v12, v26);
        swift_unknownObjectRelease();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
        (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
        v33 = v42;
        sub_24F6B7684(v30, v42, type metadata accessor for Leaderboard.LeaderboardType);
      }

      else
      {
        v56 = 0;
        sub_24F6B6424();
        sub_24F92CBA8();
        v38 = v49;
        v29 = v21;
        (*(v44 + 8))(v9, v43);
        (*(v38 + 8))(v12, v26);
        swift_unknownObjectRelease();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
        v33 = v42;
        (*(*(v39 - 8) + 56))(v42, 1, 1, v39);
      }

      sub_24F6B7684(v33, v29, type metadata accessor for Leaderboard.LeaderboardType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t Leaderboard.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Leaderboard.baseLeaderboardID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Leaderboard.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for Leaderboard(0) + 28));

  return v1;
}

uint64_t Leaderboard.artworkURL.getter()
{
  v1 = *(v0 + *(type metadata accessor for Leaderboard(0) + 32));

  return v1;
}

uint64_t Leaderboard.leaderboardDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for Leaderboard(0) + 40));

  return v1;
}

double Leaderboard.friendsWhoRanked.getter()
{
  type metadata accessor for Leaderboard(0);

  return result;
}

uint64_t Leaderboard.activityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Leaderboard(0) + 64));

  return v1;
}

double Leaderboard.activityProperties.getter()
{
  type metadata accessor for Leaderboard(0);

  return result;
}

uint64_t Leaderboard.releaseState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Leaderboard(0) + 72);

  return sub_24F6B64E0(v3, a1);
}

void sub_24F6B45D0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v52 = a4;
  v53 = a1;
  v6 = type metadata accessor for Player(0);
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v51 = a2;
  v11 = *(a2 + 80);
  if (!v11)
  {

    v15 = MEMORY[0x277D84F90];
LABEL_17:
    v25 = v52;
    v24 = v53;
    v26 = v53[1];
    *v52 = *v53;
    v25[1] = v26;
    v27 = *(v24 + 24);
    v25[2] = *(v24 + 16);
    v25[3] = v27;
    v28 = type metadata accessor for Leaderboard(0);
    sub_24F6B66B0(v24 + v28[6], v25 + v28[6], type metadata accessor for Leaderboard.LeaderboardType);
    v29 = v28[7];
    v31 = *(v24 + v29);
    v30 = *(v24 + v29 + 8);
    v32 = (v25 + v29);
    *v32 = v31;
    v32[1] = v30;
    v33 = v28[8];
    v34 = *(v24 + v33);
    v35 = *(v24 + v33 + 8);
    v36 = (v25 + v33);
    *v36 = v34;
    v36[1] = v35;
    *(v25 + v28[9]) = *(v24 + v28[9]);
    v37 = (v24 + v28[10]);
    v38 = *v37;
    v39 = v37[1];

    v40 = v51;
    sub_24F6B7654(v51);
    v41 = (v25 + v28[10]);
    *v41 = v38;
    v41[1] = v39;
    v42 = *(v40 + 16);
    if (*(v40 + 24))
    {
      v42 = 0;
    }

    *(v25 + v28[11]) = v42;
    v43 = *(v40 + 32);
    if (*(v40 + 40))
    {
      v43 = 0;
    }

    *(v25 + v28[12]) = v43;
    v44 = *(v40 + 48);
    if (*(v40 + 56))
    {
      v44 = 0;
    }

    *(v25 + v28[13]) = v44;
    v45 = *(v40 + 64);
    if (*(v40 + 72))
    {
      v45 = 0;
    }

    *(v25 + v28[14]) = v45;
    *(v25 + v28[15]) = v15;
    v46 = v28[16];
    v47 = *(v24 + v46);
    v48 = *(v24 + v46 + 8);
    v49 = (v25 + v46);
    *v49 = v47;
    v49[1] = v48;
    *(v25 + v28[17]) = *(v24 + v28[17]);
    sub_24F6B64E0(v24 + v28[18], v25 + v28[18]);

    sub_24F6B6718(v24, type metadata accessor for Leaderboard);
    return;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_16:

    goto LABEL_17;
  }

  v13 = 0;
  v14 = (v11 + 40);
  v15 = MEMORY[0x277D84F90];
  while (v13 < *(v11 + 16))
  {
    if (*(a3 + 16))
    {
      v17 = *(v14 - 1);
      v16 = *v14;

      v18 = sub_24E76D644(v17, v16);
      if (v19)
      {
        v20 = v54;
        v21 = *(v55 + 72);
        sub_24F6B66B0(*(a3 + 56) + v21 * v18, v54, type metadata accessor for Player);

        sub_24F6B7684(v20, v10, type metadata accessor for Player);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_24E618138(0, v15[2] + 1, 1, v15);
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          v15 = sub_24E618138((v22 > 1), v23 + 1, 1, v15);
        }

        v15[2] = v23 + 1;
        sub_24F6B7684(v10, v15 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + v23 * v21, type metadata accessor for Player);
      }

      else
      {
      }
    }

    ++v13;
    v14 += 2;
    if (v12 == v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t Leaderboard.init(identifier:baseLeaderboardID:type:title:artworkURL:supportChallenges:leaderboardDescription:overallRank:maxRank:rankAmongFriends:numberOfRankedFriends:friendsWhoRanked:activityIdentifier:activityProperties:releaseState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v27 = type metadata accessor for Leaderboard(0);
  sub_24F6B66B0(a5, a9 + v27[6], type metadata accessor for Leaderboard.LeaderboardType);
  v28 = (a9 + v27[7]);
  *v28 = a6;
  v28[1] = a7;
  v29 = (a9 + v27[8]);
  *v29 = a8;
  v29[1] = a10;
  v30 = [objc_opt_self() standardUserDefaults];
  v31 = sub_24F92B098();
  LOBYTE(a6) = [v30 BOOLForKey_];

  sub_24F6B6718(a5, type metadata accessor for Leaderboard.LeaderboardType);
  *(a9 + v27[9]) = (a6 | a11) & 1;
  v32 = (a9 + v27[10]);
  *v32 = a12;
  v32[1] = a13;
  *(a9 + v27[11]) = a14;
  *(a9 + v27[12]) = a15;
  *(a9 + v27[13]) = a16;
  *(a9 + v27[14]) = a17;
  *(a9 + v27[15]) = a18;
  v33 = (a9 + v27[16]);
  *v33 = a19;
  v33[1] = a20;
  *(a9 + v27[17]) = a21;
  v34 = a9 + v27[18];

  return sub_24F6B6550(a22, v34);
}

uint64_t Leaderboard.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = v51 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9896A0;
  *(inited + 32) = 0x696669746E656469;
  v56 = inited + 32;
  *(inited + 40) = 0xEA00000000007265;
  v5 = *v1;
  v54 = v1[1];
  v6 = v54;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x800000024FA7BD50;
  v9 = v1[2];
  v53 = v1[3];
  v10 = v53;
  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  *(inited + 144) = 1701869940;
  *(inited + 152) = 0xE400000000000000;
  v11 = type metadata accessor for Leaderboard(0);
  v12 = v11[6];
  *(inited + 184) = type metadata accessor for Leaderboard.LeaderboardType(0);
  *(inited + 192) = sub_24F6B6478(&qword_27F24C968, type metadata accessor for Leaderboard.LeaderboardType, &protocol conformance descriptor for Leaderboard.LeaderboardType);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F6B66B0(v1 + v12, boxed_opaque_existential_1, type metadata accessor for Leaderboard.LeaderboardType);
  *(inited + 200) = 0x656C746974;
  *(inited + 208) = 0xE500000000000000;
  v14 = (v1 + v11[7]);
  v16 = *v14;
  v52 = v14[1];
  v15 = v52;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 240) = v17;
  v18 = sub_24E605DB4();
  *(inited + 216) = v16;
  *(inited + 224) = v15;
  *(inited + 248) = v18;
  *(inited + 256) = 0x556B726F77747261;
  *(inited + 264) = 0xEA00000000004C52;
  v19 = (v1 + v11[8]);
  v21 = *v19;
  v20 = v19[1];
  v51[1] = v20;
  *(inited + 296) = v17;
  *(inited + 304) = v18;
  *(inited + 272) = v21;
  *(inited + 280) = v20;
  *(inited + 312) = 0xD000000000000011;
  *(inited + 320) = 0x800000024FA73FF0;
  LOBYTE(v20) = *(v1 + v11[9]);
  v22 = MEMORY[0x277D22598];
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = v22;
  *(inited + 328) = v20;
  *(inited + 368) = 0xD000000000000016;
  *(inited + 376) = 0x800000024FA7BD70;
  v23 = (v1 + v11[10]);
  v25 = *v23;
  v24 = v23[1];
  v51[0] = v24;
  *(inited + 408) = v17;
  *(inited + 416) = v18;
  *(inited + 384) = v25;
  *(inited + 392) = v24;
  *(inited + 424) = 0x526C6C617265766FLL;
  *(inited + 432) = 0xEB000000006B6E61;
  v26 = *(v1 + v11[11]);
  v27 = MEMORY[0x277D83B88];
  *(inited + 464) = MEMORY[0x277D83B88];
  v28 = sub_24E65901C();
  *(inited + 440) = v26;
  *(inited + 472) = v28;
  *(inited + 480) = 0x6B6E615278616DLL;
  *(inited + 488) = 0xE700000000000000;
  v29 = *(v1 + v11[12]);
  *(inited + 520) = v27;
  *(inited + 528) = v28;
  *(inited + 496) = v29;
  *(inited + 536) = 0xD000000000000010;
  *(inited + 544) = 0x800000024FA6B230;
  v30 = *(v1 + v11[13]);
  *(inited + 576) = v27;
  *(inited + 584) = v28;
  *(inited + 552) = v30;
  *(inited + 592) = 0xD000000000000015;
  *(inited + 600) = 0x800000024FA6B250;
  v31 = *(v1 + v11[14]);
  *(inited + 632) = v27;
  *(inited + 640) = v28;
  *(inited + 608) = v31;
  *(inited + 648) = 0xD000000000000010;
  *(inited + 656) = 0x800000024FA6B270;
  v32 = *(v1 + v11[15]);
  *(inited + 688) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  *(inited + 696) = sub_24F6B6614(&qword_27F21BC38, &qword_27F215388, &protocol conformance descriptor for Player, MEMORY[0x277D22590]);
  *(inited + 664) = v32;
  *(inited + 704) = 0xD000000000000012;
  *(inited + 712) = 0x800000024FA6E4C0;
  v33 = (v1 + v11[16]);
  v34 = *v33;
  v35 = v33[1];
  *(inited + 744) = v17;
  *(inited + 752) = v18;
  *(inited + 720) = v34;
  *(inited + 728) = v35;
  *(inited + 760) = 0xD000000000000012;
  *(inited + 768) = 0x800000024FA6E530;
  v36 = *(v1 + v11[17]);
  *(inited + 800) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225228, &qword_24FA1B180);
  *(inited + 808) = sub_24EA14930();
  *(inited + 776) = v36;
  strcpy((inited + 816), "releaseState");
  *(inited + 829) = 0;
  *(inited + 830) = -5120;
  *(inited + 856) = v17;
  *(inited + 864) = v18;
  v37 = v1 + v11[18];
  v38 = v55;
  sub_24F6B64E0(v37, v55);
  v39 = sub_24F920818();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 48))(v38, 1, v39);

  if (v41 == 1)
  {
    sub_24E601704(v38, &qword_27F219030, &qword_24F94BAE8);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v44 = v38;
    v42 = sub_24F920808();
    v43 = v45;
    (*(v40 + 8))(v44, v39);
  }

  *(inited + 832) = v42;
  *(inited + 840) = v43;
  v46 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v47 = sub_24E80FFAC(v46);

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  v49 = v57;
  v57[3] = v48;
  result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
  v49[4] = result;
  *v49 = v47;
  return result;
}

unint64_t sub_24F6B521C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x556B726F77747261;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x526C6C617265766FLL;
      break;
    case 8:
      result = 0x6B6E615278616DLL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x53657361656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F6B5404@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F6B7198(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6B542C(uint64_t a1)
{
  v2 = sub_24F6B65C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6B5468(uint64_t a1)
{
  v2 = sub_24F6B65C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Leaderboard.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C970, &qword_24FA1B188);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6B65C0();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_24F92CD08();
    v9 = type metadata accessor for Leaderboard(0);
    LOBYTE(v12) = 2;
    type metadata accessor for Leaderboard.LeaderboardType(0);
    sub_24F6B6478(&qword_27F238FC8, type metadata accessor for Leaderboard.LeaderboardType, &protocol conformance descriptor for Leaderboard.LeaderboardType);
    sub_24F92CD48();
    LOBYTE(v12) = 3;
    sub_24F92CCA8();
    LOBYTE(v12) = 4;
    sub_24F92CCA8();
    LOBYTE(v12) = 5;
    sub_24F92CD18();
    LOBYTE(v12) = 6;
    sub_24F92CCA8();
    LOBYTE(v12) = 7;
    sub_24F92CD38();
    LOBYTE(v12) = 8;
    sub_24F92CD38();
    LOBYTE(v12) = 9;
    sub_24F92CD38();
    LOBYTE(v12) = 10;
    sub_24F92CD38();
    v12 = *(v3 + *(v9 + 60));
    HIBYTE(v11) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
    sub_24F6B6614(&qword_27F21BC30, &qword_27F213E28, &protocol conformance descriptor for Player, MEMORY[0x277D83948]);
    sub_24F92CD48();
    LOBYTE(v12) = 12;
    sub_24F92CCA8();
    v12 = *(v3 + *(v9 + 68));
    HIBYTE(v11) = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    sub_24E6D0A9C(&qword_27F218308, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_24F92CCF8();
    LOBYTE(v12) = 14;
    sub_24F920818();
    sub_24F6B6478(&qword_27F21E360, MEMORY[0x277D0CF00], MEMORY[0x277D0CF08]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Leaderboard.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v56 - v4;
  v6 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C980, &qword_24FA1B190);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v12 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F6B65C0();
  v62 = v11;
  v16 = v63;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v17 = v5;
  v63 = v14;
  LOBYTE(v66) = 0;
  v18 = v60;
  v19 = v61;
  v20 = sub_24F92CC28();
  v22 = v63;
  *v63 = v20;
  v22[1] = v23;
  LOBYTE(v66) = 1;
  v22[2] = sub_24F92CC28();
  v22[3] = v24;
  LOBYTE(v66) = 2;
  sub_24F6B6478(&qword_27F238FB8, type metadata accessor for Leaderboard.LeaderboardType, &protocol conformance descriptor for Leaderboard.LeaderboardType);
  v57 = 0;
  sub_24F92CC68();
  v58 = 0;
  v25 = v12;
  sub_24F6B7684(v8, v22 + v12[6], type metadata accessor for Leaderboard.LeaderboardType);
  LOBYTE(v66) = 3;
  v26 = v58;
  v27 = sub_24F92CBC8();
  if (v26)
  {
    v58 = v26;
    (*(v18 + 8))(v62, v19);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_7;
  }

  v32 = (v22 + v12[7]);
  *v32 = v27;
  v32[1] = v28;
  LOBYTE(v66) = 4;
  v33 = sub_24F92CBC8();
  v34 = (v22 + v12[8]);
  *v34 = v33;
  v34[1] = v35;
  LOBYTE(v66) = 5;
  *(v22 + v12[9]) = sub_24F92CC38() & 1;
  LOBYTE(v66) = 6;
  v36 = sub_24F92CBC8();
  v38 = (v22 + v12[10]);
  *v38 = v36;
  v38[1] = v39;
  LOBYTE(v66) = 7;
  *(v22 + v12[11]) = sub_24F92CC58();
  LOBYTE(v66) = 8;
  v40 = sub_24F92CC58();
  v58 = 0;
  *(v22 + v12[12]) = v40;
  LOBYTE(v66) = 9;
  v41 = v58;
  v42 = sub_24F92CC58();
  v58 = v41;
  if (v41 || (*(v63 + v12[13]) = v42, LOBYTE(v66) = 10, v43 = v58, v44 = sub_24F92CC58(), (v58 = v43) != 0))
  {
    (*(v18 + 8))(v62, v61);
    v29 = 1;
    v30 = 1;
    v31 = 1;
    v22 = v63;
    v25 = v12;
LABEL_7:
    v37 = v57;
    __swift_destroy_boxed_opaque_existential_1(v64);

    if (!v37)
    {
    }

    result = sub_24F6B6718(v22 + v25[6], type metadata accessor for Leaderboard.LeaderboardType);
    if (v29)
    {

      if (v30)
      {
LABEL_11:

        if ((v31 & 1) == 0)
        {
          return result;
        }
      }
    }

    else if (v30)
    {
      goto LABEL_11;
    }

    if (!v31)
    {
      return result;
    }
  }

  *(v63 + v12[14]) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  v65 = 11;
  sub_24F6B6614(&qword_27F2196A8, &qword_27F213E38, &protocol conformance descriptor for Player, MEMORY[0x277D83978]);
  v45 = v58;
  sub_24F92CC68();
  v46 = v45;
  if (v45)
  {
    (*(v18 + 8))(v62, v61);
    v47 = 0;
    v48 = 0;
    v58 = v45;
  }

  else
  {
    *(v63 + v12[15]) = v66;
    LOBYTE(v66) = 12;
    v49 = sub_24F92CBC8();
    v58 = 0;
    v50 = (v63 + v12[16]);
    *v50 = v49;
    v50[1] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    v65 = 13;
    sub_24E6D0A9C(&qword_27F2182E8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v52 = v58;
    sub_24F92CC18();
    v58 = v52;
    if (v52)
    {
      (*(v18 + 8))(v62, v61);
      v48 = 0;
      v47 = 1;
    }

    else
    {
      *(v63 + v12[17]) = v66;
      sub_24F920818();
      LOBYTE(v66) = 14;
      sub_24F6B6478(&qword_27F21E378, MEMORY[0x277D0CF00], MEMORY[0x277D0CF28]);
      v53 = v58;
      sub_24F92CC18();
      v58 = v53;
      if (!v53)
      {
        (*(v18 + 8))(v62, v61);
        v55 = v63;
        sub_24F6B6550(v17, v63 + v12[18]);
        sub_24F6B66B0(v55, v59, type metadata accessor for Leaderboard);
        __swift_destroy_boxed_opaque_existential_1(v64);
        return sub_24F6B6718(v55, type metadata accessor for Leaderboard);
      }

      (*(v18 + 8))(v62, v61);
      v47 = 1;
      v48 = 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
  v54 = v63;

  sub_24F6B6718(v54 + v12[6], type metadata accessor for Leaderboard.LeaderboardType);

  if (v46)
  {
    if (v47)
    {
      goto LABEL_28;
    }

LABEL_31:
    if (v48)
    {
    }

    return result;
  }

  if ((v47 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_28:

  if (v48)
  {
  }

  return result;
}

unint64_t sub_24F6B637C()
{
  result = qword_27F24C938;
  if (!qword_27F24C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C938);
  }

  return result;
}

unint64_t sub_24F6B63D0()
{
  result = qword_27F24C940;
  if (!qword_27F24C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C940);
  }

  return result;
}

unint64_t sub_24F6B6424()
{
  result = qword_27F24C948;
  if (!qword_27F24C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C948);
  }

  return result;
}

uint64_t sub_24F6B6478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F6B64E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6B6550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F6B65C0()
{
  result = qword_27F24C978;
  if (!qword_27F24C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C978);
  }

  return result;
}

uint64_t sub_24F6B6614(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240, qword_24F957DE0);
    sub_24F6B6478(a2, type metadata accessor for Player, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F6B66B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6B6718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F6B678C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Leaderboard.LeaderboardType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 72);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F6B68D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Leaderboard.LeaderboardType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 72);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F6B6A00(uint64_t a1)
{
  type metadata accessor for Leaderboard.LeaderboardType(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24F6B6B60(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24F1A6CA0(319);
        if (v4 <= 0x3F)
        {
          sub_24F6B6B60(319, &qword_27F21E390, MEMORY[0x277D0CF00], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F6B6B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24F6B6BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F6B6C64(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24F6B6CF0(uint64_t a1)
{
  sub_24F6B6D48();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24F6B6D48()
{
  if (!qword_27F24C9A8)
  {
    v0 = sub_24F91F648();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24C9A8);
    }
  }
}

unint64_t sub_24F6B6DD4()
{
  result = qword_27F24C9B0;
  if (!qword_27F24C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C9B0);
  }

  return result;
}

unint64_t sub_24F6B6E2C()
{
  result = qword_27F24C9B8;
  if (!qword_27F24C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C9B8);
  }

  return result;
}

unint64_t sub_24F6B6E84()
{
  result = qword_27F24C9C0;
  if (!qword_27F24C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C9C0);
  }

  return result;
}

unint64_t sub_24F6B6EDC()
{
  result = qword_27F24C9C8;
  if (!qword_27F24C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C9C8);
  }

  return result;
}

unint64_t sub_24F6B6F34()
{
  result = qword_27F24C9D0;
  if (!qword_27F24C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C9D0);
  }

  return result;
}

unint64_t sub_24F6B6F8C()
{
  result = qword_27F24C9D8;
  if (!qword_27F24C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C9D8);
  }

  return result;
}

unint64_t sub_24F6B6FE4()
{
  result = qword_27F24C9E0;
  if (!qword_27F24C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C9E0);
  }

  return result;
}

unint64_t sub_24F6B703C()
{
  result = qword_27F24C9E8;
  if (!qword_27F24C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C9E8);
  }

  return result;
}

unint64_t sub_24F6B7094()
{
  result = qword_27F24C9F0;
  if (!qword_27F24C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C9F0);
  }

  return result;
}

unint64_t sub_24F6B70EC()
{
  result = qword_27F24C9F8;
  if (!qword_27F24C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C9F8);
  }

  return result;
}

unint64_t sub_24F6B7144()
{
  result = qword_27F24CA00;
  if (!qword_27F24CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CA00);
  }

  return result;
}

uint64_t sub_24F6B7198(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA7BD50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA73FF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA7BD70 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x526C6C617265766FLL && a2 == 0xEB000000006B6E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6B6E615278616DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6B230 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA6B250 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6B270 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA6E4C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA6E530 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x53657361656C6572 && a2 == 0xEC00000065746174)
  {

    return 14;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_24F6B7684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6B76EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24F6B7748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t RefreshPageAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RefreshPageAction.actionMetrics.setter(uint64_t a1)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_24F6B78B0(uint64_t a1)
{
  v2 = sub_24F6B7A8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6B78EC(uint64_t a1)
{
  v2 = sub_24F6B7A8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RefreshPageAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CA08, &qword_24FA1B780);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6B7A8C();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F6B7A8C()
{
  result = qword_27F24CA10;
  if (!qword_27F24CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CA10);
  }

  return result;
}

uint64_t RefreshPageAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CA18, &qword_24FA1B788);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  refreshed = type metadata accessor for RefreshPageAction(0);
  MEMORY[0x28223BE20](refreshed - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6B7A8C();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F6B7D98(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for RefreshPageAction(uint64_t a1)
{
  result = qword_27F24CA20;
  if (!qword_27F24CA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6B7D98(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshPageAction(0);
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_24F6B7E14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CA08, &qword_24FA1B780);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6B7A8C();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F6B7F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6B800C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F6B8090()
{
  result = qword_27F24CA30;
  if (!qword_27F24CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CA30);
  }

  return result;
}

unint64_t sub_24F6B80E8()
{
  result = qword_27F24CA38;
  if (!qword_27F24CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CA38);
  }

  return result;
}

unint64_t sub_24F6B8140()
{
  result = qword_27F24CA40;
  if (!qword_27F24CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CA40);
  }

  return result;
}

uint64_t sub_24F6B81B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F6B8308(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SettingsResetButton(uint64_t a1)
{
  result = qword_27F24CA48;
  if (!qword_27F24CA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6B8490(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CAD8, &qword_24FA1BBA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6B9CB4();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for SettingsResetButton(0);
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F929608();
    sub_24F6B9DC8(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F6B8770@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CAC8, &unk_24FA1BB90);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for SettingsResetButton(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v40 = v14 + 40;
  sub_24E61DA68(&v41, (v14 + 40), qword_27F21B590, &unk_24F93BE30);
  v15 = *(v12 + 32);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v38 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 36);
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v37 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F6B9CB4();
  v35 = v10;
  v22 = v36;
  sub_24F92D108();
  if (v22)
  {
    v24 = v38;
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_24E601704(v40, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v14[v24], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v14[v37], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v23 = v34;
    sub_24F92CC68();
    v25 = v42;
    *v14 = v41;
    *(v14 + 1) = v25;
    *(v14 + 4) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v44 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v26 = v38;
    v27 = v33;
    sub_24E61DA68(&v41, v40, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v41) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v7, &v14[v26], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v41) = 3;
    sub_24F6B9DC8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v28 = v32;
    v29 = v35;
    sub_24F92CC18();
    (*(v27 + 8))(v29, v23);
    sub_24E61DA68(v28, &v14[v37], &qword_27F213E68, &unk_24F93BC80);
    sub_24F6B9D08(v14, v31);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_24F6B9D6C(v14);
  }
}

uint64_t sub_24F6B8D38(uint64_t a1)
{
  v2 = sub_24F6B9CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6B8D74(uint64_t a1)
{
  v2 = sub_24F6B9CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6B8DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F6B8EE0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_24F924B38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CA98, &qword_24FA1BB00);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CAA0, &qword_24FA1BB08);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v48 - v8;
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F28, &qword_24FA1BB10);
  sub_24F6B9418(&v6[*(v9 + 44)]);
  v10 = sub_24F925808();
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CAA8, &qword_24FA1BB18) + 36)];
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  v49 = v4;
  v12 = &v6[*(v4 + 36)];
  sub_24F927438();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC48, &qword_24F9EE8E0);
  v14 = &v12[*(v13 + 52)];
  v15 = sub_24F924258();
  v16 = *MEMORY[0x277CE0118];
  v17 = *(v2 + 104);
  v17(&v14[*(v15 + 20)], v16, v1);
  __asm { FMOV            V0.2D, #12.0 }

  v48 = _Q0;
  *v14 = _Q0;
  *&v12[*(v13 + 56)] = 256;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v23 = sub_24F9248C8();
  __swift_project_value_buffer(v23, qword_27F39F078);
  sub_24F6B9AC4();
  v24 = v51;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v6, &qword_27F24CA98, &qword_24FA1BB00);
  v25 = v50;
  v17(v50, v16, v1);
  v55[3] = v15;
  v55[4] = sub_24F6B9DC8(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(v2 + 16))(boxed_opaque_existential_1 + *(v15 + 20), v25, v1);
  *boxed_opaque_existential_1 = v48;
  (*(v2 + 8))(v25, v1);
  v27 = v54;
  sub_24F6B9C34(v55, v54);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CA90, &qword_24FA1BAF8);
  v30 = v52;
  v29 = v53;
  (*(v52 + 16))(v27 + v28[9], v24, v53);
  v31 = v27 + v28[10];
  *v31 = sub_24F923398() & 1;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33 & 1;
  v34 = v27 + v28[11];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  v35 = v27;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v36 = qword_27F24E488;
  v37 = sub_24F923398();
  v39 = v38;
  v41 = v40;
  v42 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CA80, &qword_24FA1BAF0) + 36);
  *v42 = v36;
  *(v42 + 8) = v37 & 1;
  *(v42 + 16) = v39;
  *(v42 + 24) = v41 & 1;
  LOBYTE(v36) = sub_24F923398();
  v44 = v43;
  LOBYTE(v39) = v45;
  sub_24E601704(v55, &qword_27F24CAC0, &qword_24FA1BB20);
  (*(v30 + 8))(v24, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CA68, &qword_24FA1BAE8);
  v47 = v35 + *(result + 36);
  *v47 = v36 & 1;
  *(v47 + 8) = v44;
  *(v47 + 16) = v39 & 1;
  return result;
}

uint64_t sub_24F6B9418@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177F8, &unk_24F946410);
  MEMORY[0x28223BE20](v2);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE70, &qword_24F9FE110);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  if (qword_27F211740 != -1)
  {
    swift_once();
  }

  v20[0] = qword_27F39EF48;
  v20[1] = unk_27F39EF50;
  sub_24E600AEC();

  sub_24F926EB8();
  v12 = sub_24F925A28();
  KeyPath = swift_getKeyPath();
  v14 = &v4[*(v2 + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  sub_24E6AFC48();
  sub_24F9268B8();
  sub_24E601704(v4, &qword_27F2177F8, &unk_24F946410);
  v15 = *(v6 + 16);
  v15(v8, v11, v5);
  *a1 = 0;
  *(a1 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F40, &unk_24FA1BB80);
  v15((a1 + *(v16 + 48)), v8, v5);
  v17 = a1 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = *(v6 + 8);
  v18(v11, v5);
  return (v18)(v8, v5);
}

uint64_t sub_24F6B96C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3 - 8];
  v5 = sub_24F9232F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24E60169C(a1 + 40, v8, qword_27F24EC90, &unk_24F93C1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CA68, &qword_24FA1BAE8);
  sub_24F6B9980();
  return sub_24F921788();
}

uint64_t sub_24F6B97F0(uint64_t a1)
{
  sub_24F47D170();

  return sub_24F9218E8();
}

unint64_t sub_24F6B9880()
{
  result = qword_27F24CA60;
  if (!qword_27F24CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CA60);
  }

  return result;
}

unint64_t sub_24F6B9980()
{
  result = qword_27F24CA70;
  if (!qword_27F24CA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CA68, &qword_24FA1BAE8);
    sub_24F6B9A0C();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CA70);
  }

  return result;
}

unint64_t sub_24F6B9A0C()
{
  result = qword_27F24CA78;
  if (!qword_27F24CA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CA80, &qword_24FA1BAF0);
    sub_24E602068(&qword_27F24CA88, &qword_27F24CA90, &qword_24FA1BAF8, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CA78);
  }

  return result;
}

unint64_t sub_24F6B9AC4()
{
  result = qword_27F24CAB0;
  if (!qword_27F24CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CA98, &qword_24FA1BB00);
    sub_24F6B9B7C();
    sub_24E602068(&qword_27F2419D0, &qword_27F21FC48, &qword_24F9EE8E0, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CAB0);
  }

  return result;
}

unint64_t sub_24F6B9B7C()
{
  result = qword_27F24CAB8;
  if (!qword_27F24CAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CAA8, &qword_24FA1BB18);
    sub_24E602068(&qword_27F244F30, &qword_27F244F18, &qword_24F9FE0B8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CAB8);
  }

  return result;
}

uint64_t sub_24F6B9C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CAC0, &qword_24FA1BB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F6B9CB4()
{
  result = qword_27F24CAD0;
  if (!qword_27F24CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CAD0);
  }

  return result;
}

uint64_t sub_24F6B9D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsResetButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6B9D6C(uint64_t a1)
{
  v2 = type metadata accessor for SettingsResetButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F6B9DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F6B9E68()
{
  result = qword_27F24CAF0;
  if (!qword_27F24CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CAF0);
  }

  return result;
}

unint64_t sub_24F6B9EC0()
{
  result = qword_27F24CAF8;
  if (!qword_27F24CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CAF8);
  }

  return result;
}

unint64_t sub_24F6B9F18()
{
  result = qword_27F24CB00[0];
  if (!qword_27F24CB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24CB00);
  }

  return result;
}

uint64_t sub_24F6B9F7C()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedURLCache];
  [v4 removeAllCachedResponses];

  sub_24F928938();
  sub_24F928928();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  return sub_24F92A988();
}

unint64_t sub_24F6BA0A8()
{
  result = qword_27F216250;
  if (!qword_27F216250)
  {
    type metadata accessor for ClearCachesDebugAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216250);
  }

  return result;
}

id sub_24F6BA118@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v53 - v5;
  v7 = type metadata accessor for Leaderboard.LeaderboardType(0);
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 internal];
  if (result)
  {
    v12 = result;
    v13 = [result identifier];

    v14 = sub_24F92B0D8();
    v65 = v15;
    v66 = v14;

    v16 = [a1 baseLeaderboardID];
    v17 = sub_24F92B0D8();
    v63 = v18;
    v64 = v17;

    v19 = a1;
    sub_24F6B2C9C(v19, v10);
    v20 = [v19 title];
    if (v20)
    {
      v21 = v20;
      v22 = sub_24F92B0D8();
      v61 = v23;
      v62 = v22;
    }

    else
    {
      v61 = 0;
      v62 = 0;
    }

    v24 = [v19 imageURL];
    if (v24)
    {
      v25 = v24;
      v55 = sub_24F92B0D8();
      v27 = v26;
    }

    else
    {
      v55 = 0;
      v27 = 0;
    }

    v28 = [v19 leaderboardDescription];
    v29 = sub_24F92B0D8();
    v59 = v30;
    v60 = v29;

    v58 = [v19 overallRank];
    v57 = [v19 maxRange];
    v56 = [v19 friendRank];
    v54 = [v19 friendRankCount];
    v31 = [v19 activityIdentifier];
    v53 = sub_24F92B0D8();
    v33 = v32;

    v34 = [v19 activityProperties];
    v35 = sub_24F92AE38();

    v36 = [v19 releaseState];
    v37 = sub_24F920818();
    v38 = *(v37 - 8);
    v39 = MEMORY[0x277D0CEF0];
    if (v36 != 2)
    {
      v39 = MEMORY[0x277D0CEE8];
    }

    (*(*(v37 - 8) + 104))(v6, *v39, v37);
    (*(v38 + 56))(v6, 0, 1, v37);
    v40 = v65;
    *a2 = v66;
    a2[1] = v40;
    v41 = v63;
    a2[2] = v64;
    a2[3] = v41;
    v42 = type metadata accessor for Leaderboard(0);
    sub_24F6BA5A4(v10, a2 + v42[6]);
    v43 = (a2 + v42[7]);
    v44 = v61;
    *v43 = v62;
    v43[1] = v44;
    v45 = (a2 + v42[8]);
    *v45 = v55;
    v45[1] = v27;
    v46 = [objc_opt_self() standardUserDefaults];
    v47 = sub_24F92B098();
    v48 = [v46 BOOLForKey_];

    sub_24F6BA608(v10);
    *(a2 + v42[9]) = v48;
    v49 = (a2 + v42[10]);
    v50 = v59;
    *v49 = v60;
    v49[1] = v50;
    v51 = v57;
    *(a2 + v42[11]) = v58;
    *(a2 + v42[12]) = v51;
    *(a2 + v42[13]) = v56;
    *(a2 + v42[14]) = v54;
    *(a2 + v42[15]) = MEMORY[0x277D84F90];
    v52 = (a2 + v42[16]);
    *v52 = v53;
    v52[1] = v33;
    *(a2 + v42[17]) = v35;
    return sub_24F6B6550(v6, a2 + v42[18]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F6BA5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Leaderboard.LeaderboardType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6BA608(uint64_t a1)
{
  v2 = type metadata accessor for Leaderboard.LeaderboardType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24F6BA6A4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DebugSettingsJSExport();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24F6BBD50()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24F92B098();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E850);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Unable to access com.apple.gamecenter default", v9, 2u);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    v10 = [objc_opt_self() standardUserDefaults];
    v2 = sub_24F92B098();
    v5 = [v10 BOOLForKey_];
    goto LABEL_10;
  }

  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  if ((v4 & 1) == 0)
  {
    v11 = [objc_opt_self() standardUserDefaults];
    v10 = sub_24F92B098();
    v5 = [v11 BOOLForKey_];

LABEL_10:
    goto LABEL_11;
  }

  v5 = 1;
LABEL_11:

  return v5;
}

uint64_t sub_24F6BBF88(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Player(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Game(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_24F6BC114(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Player(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Game(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengeInvite(uint64_t a1)
{
  result = qword_27F24CB88;
  if (!qword_27F24CB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F6BC2D8(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Game(319);
    if (v2 <= 0x3F)
    {
      sub_24EE55D58(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F6BC384@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 40) = 0xEB00000000444965;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x72657469766E69;
  *(inited + 96) = 0xE700000000000000;
  v7 = type metadata accessor for ChallengeInvite(0);
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24F6BCD40(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F6BCD88(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  v10 = v7[6];
  *(inited + 184) = type metadata accessor for Game(0);
  *(inited + 192) = sub_24F6BCD40(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F6BCD88(v1 + v10, v11, type metadata accessor for Game);
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000024FA46800;
  v12 = v7[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  *(inited + 248) = sub_24E759444();
  v13 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24EE5699C(v1 + v12, v13);

  v14 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v15 = sub_24E80FFAC(v14);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v15;
  return result;
}

uint64_t sub_24F6BC624@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = &v21 - v4;
  v24 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v25);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CB98, &qword_24FA1BE18);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for ChallengeInvite(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6BCCEC();
  v14 = v28;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v15 = v13;
  *v13 = sub_24F92CC28();
  v13[1] = v16;
  v28 = v16;
  v31 = 1;
  sub_24F6BCD40(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  v17 = v11;
  sub_24E6B2600(v7, v15 + *(v11 + 20), type metadata accessor for Player);
  v30 = 2;
  sub_24F6BCD40(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v18 = v23;
  sub_24F92CC68();
  sub_24E6B2600(v18, v15 + *(v17 + 24), type metadata accessor for Game);
  type metadata accessor for ChallengeDefinitionDetail(0);
  v29 = 3;
  sub_24F6BCD40(&qword_27F21B790, type metadata accessor for ChallengeDefinitionDetail, &protocol conformance descriptor for ChallengeDefinitionDetail);
  v19 = v22;
  sub_24F92CC18();
  (*(v26 + 8))(v10, v27);
  sub_24EE56AC4(v19, v15 + *(v17 + 28));
  sub_24F6BCD88(v15, v21, type metadata accessor for ChallengeInvite);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F6BCDF0(v15, type metadata accessor for ChallengeInvite);
}

unint64_t sub_24F6BCB9C()
{
  v1 = 0x676E656C6C616863;
  v2 = 1701667175;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x72657469766E69;
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

uint64_t sub_24F6BCC1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F6BCF68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6BCC44(uint64_t a1)
{
  v2 = sub_24F6BCCEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6BCC80(uint64_t a1)
{
  v2 = sub_24F6BCCEC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F6BCCEC()
{
  result = qword_27F24CBA0;
  if (!qword_27F24CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CBA0);
  }

  return result;
}

uint64_t sub_24F6BCD40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F6BCD88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6BCDF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F6BCE64()
{
  result = qword_27F24CBA8;
  if (!qword_27F24CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CBA8);
  }

  return result;
}

unint64_t sub_24F6BCEBC()
{
  result = qword_27F24CBB0;
  if (!qword_27F24CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CBB0);
  }

  return result;
}

unint64_t sub_24F6BCF14()
{
  result = qword_27F24CBB8;
  if (!qword_27F24CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CBB8);
  }

  return result;
}

uint64_t sub_24F6BCF68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72657469766E69 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46800 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t AddFriendsShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[76] = a2;
  v3[75] = a1;
  sub_24F92A708();
  v3[77] = swift_task_alloc();
  v3[78] = type metadata accessor for GSKShelf(0);
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = type metadata accessor for AddFriendsPageIntent(0);
  v3[82] = swift_task_alloc();
  v5 = sub_24F928AD8();
  v3[83] = v5;
  v3[84] = *(v5 - 8);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v3[89] = swift_task_alloc();
  v6 = sub_24F91F6B8();
  v3[90] = v6;
  v3[91] = *(v6 - 8);
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  type metadata accessor for ActivityFriendSuggestion(0);
  v3[94] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  v3[95] = swift_task_alloc();
  v7 = sub_24F91EAA8();
  v3[96] = v7;
  v3[97] = *(v7 - 8);
  v3[98] = swift_task_alloc();
  v8 = type metadata accessor for FriendSuggestion(0);
  v3[99] = v8;
  v3[100] = *(v8 - 8);
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v9 = type metadata accessor for PlayerAvatar(0);
  v3[103] = v9;
  v3[104] = *(v9 - 8);
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[107] = v10;
  *v10 = v3;
  v10[1] = sub_24F6BD504;

  return sub_24E64BE88(0, a3);
}

uint64_t sub_24F6BD504(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 864) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24F6BD754, 0, 0);
  }
}

uint64_t sub_24F6BD754()
{
  v1 = *(v0 + 864);
  v2 = *(v1 + 16);
  v123 = v2;
  if (v2 > 3)
  {
    v3 = *(*(v0 + 800) + 80);
    sub_24E6B90E0(v1, v1 + ((v3 + 32) & ~v3), 0, 7uLL);
    v1 = v4;
    v144 = *(v4 + 16);
    if (v144)
    {
      goto LABEL_3;
    }

LABEL_14:

    v143 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v144 = v2;
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_3:
  v127 = (v0 + 496);
  v138 = *(v0 + 832);
  v140 = *(v0 + 840);
  v136 = *(v0 + 824);
  v5 = *(v0 + 800);
  v6 = *(v0 + 776);
  v125 = *(v0 + 752);
  v126 = *(v0 + 808);
  v146 = MEMORY[0x277D84F90];
  sub_24F457BF8(0, v144, 0);
  v143 = v146;
  v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v134 = *(v5 + 72);
  v124 = (v6 + 8);
  do
  {
    v8 = *(v0 + 816);
    v9 = *(v0 + 808);
    sub_24F6BEC70(v7, v8, type metadata accessor for FriendSuggestion);
    sub_24F6BEC70(v8, v9, type metadata accessor for FriendSuggestion);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *(v0 + 840);
      v11 = *(v0 + 808);
      v12 = *(v0 + 760);
      v13 = *(v0 + 752);
      sub_24F6BECD8(*(v0 + 816), type metadata accessor for FriendSuggestion);
      sub_24F6BEC08(v11, v13, type metadata accessor for ActivityFriendSuggestion);
      v14 = *(v125 + 24);
      v132 = *(v125 + 16);

      sub_24F6BECD8(v13, type metadata accessor for ActivityFriendSuggestion);
      v15 = type metadata accessor for PlayerAvatar.Overlay(0);
      v16 = *(*(v15 - 8) + 56);
      v16(v12, 1, 1, v15);
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v17 = *(v136 + 20);
      v16(v10 + v17, 1, 1, v15);
      v18 = v10 + *(v136 + 24);
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      *(v18 + 32) = 0;
      *v18 = 0u;
      *(v18 + 16) = 0u;
      sub_24E61DA68(v0 + 56, v18, qword_27F21B590, &unk_24F93BE30);
      *v10 = v132;
      *(v140 + 8) = v14;
      sub_24E61DA68(v12, v10 + v17, &qword_27F22DF80, &unk_24F942E50);
      v19 = v0 + 16;
      v20 = v18;
    }

    else
    {
      v21 = *(v0 + 784);
      v22 = *(v0 + 768);
      v23 = **(v0 + 808);
      v24 = *(v126 + 8);
      *(v0 + 584) = v23;
      *(v0 + 592) = v24;
      sub_24F91EA28();
      sub_24E600AEC();
      v25 = sub_24F92C578();
      v27 = v26;
      (*v124)(v21, v22);
      if (!v27)
      {

        v25 = v23;
        v27 = v24;
      }

      v28 = *(v0 + 840);
      v29 = *(v0 + 816);
      v30 = *(v0 + 760);
      *&v147 = 0x3A746361746E6F63;
      *(&v147 + 1) = 0xEA00000000002F2FLL;
      MEMORY[0x253050C20](v25, v27);

      sub_24F6BECD8(v29, type metadata accessor for FriendSuggestion);

      v31 = type metadata accessor for PlayerAvatar.Overlay(0);
      v32 = *(*(v31 - 8) + 56);
      v32(v30, 1, 1, v31);
      *(v0 + 488) = 0;
      *(v0 + 456) = 0u;
      *(v0 + 472) = 0u;
      v33 = *(v136 + 20);
      v32(v28 + v33, 1, 1, v31);
      v34 = v28 + *(v136 + 24);
      *(v0 + 528) = 0;
      *v127 = 0u;
      *(v0 + 512) = 0u;
      *(v34 + 32) = 0;
      *v34 = 0u;
      *(v34 + 16) = 0u;
      sub_24E61DA68(v127, v34, qword_27F21B590, &unk_24F93BE30);
      *v28 = 0x3A746361746E6F63;
      *(v140 + 8) = 0xEA00000000002F2FLL;
      sub_24E61DA68(v30, v28 + v33, &qword_27F22DF80, &unk_24F942E50);
      v19 = v0 + 456;
      v20 = v34;
    }

    sub_24E61DA68(v19, v20, qword_27F21B590, &unk_24F93BE30);
    sub_24F6BEC08(*(v0 + 840), *(v0 + 848), type metadata accessor for PlayerAvatar);
    v35 = v143;
    v37 = *(v143 + 16);
    v36 = *(v143 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_24F457BF8((v36 > 1), v37 + 1, 1);
      v35 = v143;
    }

    v38 = *(v0 + 848);
    *(v35 + 16) = v37 + 1;
    v143 = v35;
    sub_24F6BEC08(v38, v35 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v37, type metadata accessor for PlayerAvatar);
    v7 += v134;
    --v144;
  }

  while (v144);

LABEL_15:
  v39 = *(v0 + 744);
  v40 = *(v0 + 736);
  v41 = *(v0 + 728);
  v42 = *(v0 + 720);
  v43 = *(v0 + 704);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CBC0, &unk_24FA1BF48);
  v145 = type metadata accessor for LinkPlatter(0);
  v44 = (*(*(v145 - 1) + 80) + 32) & ~*(*(v145 - 1) + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_24F93DE60;
  sub_24F91F6A8();
  (*(v41 + 16))(v40, v39, v42);
  sub_24F6BED80(&qword_27F2551B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24F92C7F8();
  sub_24F91F488();
  v46 = sub_24F91F4A8();
  v47 = *(v46 - 8);
  result = (*(v47 + 48))(v43, 1, v46);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v137 = v45;
    v49 = *(v0 + 712);
    v129 = *(*(v0 + 728) + 8);
    v129(*(v0 + 744), *(v0 + 720));

    sub_24F928978();
    v50 = sub_24F9289E8();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    if (qword_27F211490 != -1)
    {
      swift_once();
    }

    v139 = v46;
    v141 = (v0 + 296);
    v133 = unk_27F39E9F0;
    v135 = qword_27F39E9E8;

    v51 = sub_24F69B738(v123);
    v130 = v52;
    v131 = v51;
    v53 = v145[8];
    v54 = type metadata accessor for JSColor(0);
    v128 = v45 + v44;
    (*(*(v54 - 8) + 56))(v45 + v44 + v53, 1, 1, v54);
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    if (qword_27F211178 != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 696);
    v56 = *(v0 + 688);
    v57 = *(v0 + 680);
    v58 = *(v0 + 672);
    v59 = *(v0 + 664);
    v60 = *(v0 + 656);
    v61 = *(v0 + 648);
    v62 = *(v0 + 608);
    sub_24E65864C(qword_27F39E3E8, v0 + 176);
    sub_24F928A98();
    v63 = type metadata accessor for AddFriendsShelfIntent(0);
    sub_24F6BEC70(v62 + *(v63 + 20), v60, type metadata accessor for Player);
    v64 = swift_allocObject();
    *(v64 + 40) = v61;
    *(v64 + 48) = sub_24F6BED80(&qword_27F21D300, type metadata accessor for AddFriendsPageIntent, &protocol conformance descriptor for AddFriendsPageIntent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v64 + 16));
    sub_24F6BEC08(v60, boxed_opaque_existential_1, type metadata accessor for AddFriendsPageIntent);
    v66 = v64 | 4;
    v67 = sub_24F929D08();
    v69 = v68;
    sub_24E60169C(v0 + 176, v0 + 216, &qword_27F235830, &qword_24F93B8C0);
    (*(v47 + 56))(v55, 1, 1, v139);
    *(v0 + 560) = &type metadata for FlowDestination;
    *(v0 + 536) = v66;
    v70 = *(v58 + 16);
    v70(v57, v56, v59);
    v118 = type metadata accessor for FlowAction(0);
    v71 = swift_allocObject();
    *(v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v72 = v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v72 = 0u;
    *(v72 + 16) = 0u;
    *(v72 + 32) = 0;
    v73 = (v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v73 = 0;
    v73[1] = 0;
    *(v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
    sub_24E60169C(v55, v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
    v74 = (v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v74 = 0;
    v74[1] = 0;
    v75 = v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v75 = xmmword_24F9406F0;
    *(v75 + 24) = 0;
    *(v75 + 32) = 0;
    *(v75 + 16) = 0;
    *(v75 + 40) = 0;
    *(v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
    *(v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v76 = (v71 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v76 = v67;
    v76[1] = v69;
    sub_24E60169C(v0 + 216, v0 + 256, &qword_27F235830, &qword_24F93B8C0);
    v70(v71 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v57, v59);
    v77 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
    v120 = sub_24F929608();
    v119 = *(*(v120 - 8) + 56);
    v119(v71 + v77, 1, 1);
    v78 = (v71 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v78 = 0u;
    v78[1] = 0u;
    v79 = v71 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(v0 + 256, v141, &qword_27F235830, &qword_24F93B8C0);
    if (*(v0 + 320))
    {
      v80 = *(v0 + 312);
      *v79 = *v141;
      *(v79 + 16) = v80;
      *(v79 + 32) = *(v0 + 328);
    }

    else
    {
      v81 = *(v0 + 736);
      v82 = *(v0 + 720);
      sub_24F91F6A8();
      v83 = sub_24F91F668();
      v85 = v84;
      v129(v81, v82);
      *(v0 + 568) = v83;
      *(v0 + 576) = v85;
      sub_24F92C7F8();
      sub_24E601704(v141, &qword_27F235830, &qword_24F93B8C0);
    }

    v142 = *(v0 + 712);
    v86 = *(v0 + 696);
    v87 = *(v0 + 688);
    v88 = *(v0 + 680);
    v89 = *(v0 + 672);
    v90 = *(v0 + 664);
    v91 = *(v0 + 640);
    v121 = *(v0 + 632);
    v92 = *(v0 + 624);
    v122 = *(v0 + 600);
    sub_24E601704(v0 + 256, &qword_27F235830, &qword_24F93B8C0);
    *(v71 + 16) = 0u;
    *(v71 + 32) = 0u;

    FlowAction.setPageData(_:)(v0 + 536);

    v93 = *(v89 + 8);
    v93(v87, v90);
    sub_24E601704(v0 + 176, &qword_27F235830, &qword_24F93B8C0);
    v93(v88, v90);
    sub_24E601704(v86, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v0 + 216, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v0 + 536, &qword_27F2129B0, &unk_24F945320);
    *(v0 + 160) = v118;
    *(v0 + 168) = sub_24F6BED80(&qword_27F216400, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    *(v0 + 136) = v71;
    v94 = v145[15];
    v95 = sub_24F92A6D8();
    (*(*(v95 - 8) + 56))(v128 + v94, 1, 1, v95);
    (v119)(v128 + v145[16], 1, 1, v120);
    *v128 = v147;
    *(v128 + 16) = v148;
    *(v128 + 32) = v149;
    sub_24E94B678(v142, v128 + v145[5]);
    v96 = v128 + v145[6];
    *v96 = 0;
    *(v96 + 8) = v135;
    *(v96 + 16) = v133;
    v97 = (v128 + v145[7]);
    *v97 = v131;
    v97[1] = v130;
    *(v128 + v145[9]) = 0;
    v98 = v128 + v145[10];
    *(v98 + 32) = 0;
    *v98 = 0u;
    *(v98 + 16) = 0u;
    sub_24E61DA68(v0 + 96, v98, qword_27F21B590, &unk_24F93BE30);
    *(v128 + v145[11]) = 0;
    v99 = v128 + v145[12];
    *v99 = v143;
    *(v99 + 8) = 0;
    *(v99 + 16) = 0;
    v100 = (v128 + v145[13]);
    *v100 = 0;
    v100[1] = 0;
    v101 = v128 + v145[14];
    *(v101 + 32) = 0;
    *v101 = 0u;
    *(v101 + 16) = 0u;
    sub_24E61DA68(v0 + 136, v101, qword_27F21B590, &unk_24F93BE30);

    sub_24F92A6F8();
    sub_24F92AA38();
    (v119)(v91 + v92[5], 1, 1, v120);
    v102 = v91 + v92[6];
    v103 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    v104 = *(*(v103 - 8) + 56);
    v104(v102, 1, 1, v103);
    v105 = type metadata accessor for HeaderPresentation(0);
    v104(v102 + v105[5], 1, 1, v103);
    v104(v102 + v105[6], 1, 1, v103);
    v106 = v102 + v105[7];
    *(v106 + 48) = 0;
    *(v106 + 16) = 0u;
    *(v106 + 32) = 0u;
    *v106 = 0u;
    *(v106 + 56) = -1;
    v107 = v105[8];
    v108 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
    (*(*(v108 - 8) + 56))(v102 + v107, 1, 1, v108);
    *(v102 + v105[9]) = 7;
    *(v102 + v105[10]) = 2;
    *(v102 + v105[11]) = 2;
    *(v102 + v105[12]) = 2;
    *(v0 + 368) = 0;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0;
    v109 = sub_24E8E94A4(v137);
    swift_setDeallocating();
    sub_24F6BECD8(v128, type metadata accessor for LinkPlatter);
    swift_deallocClassInstance();
    *(v0 + 448) = 0;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    v110 = v91 + v92[7];
    *v110 = 0;
    *(v110 + 8) = 2;
    *(v91 + v92[8]) = 2;
    v111 = (v91 + v92[9]);
    v111[1] = 0;
    v111[2] = 0;
    *v111 = 0x8000000000000000;
    *(v91 + v92[10]) = 0;
    v112 = v91 + v92[11];
    *v112 = 0;
    *(v112 + 8) = 0;
    *(v112 + 16) = -4;
    *(v91 + v92[12]) = 0;
    v113 = v91 + v92[13];
    *(v113 + 32) = 0;
    *v113 = 0u;
    *(v113 + 16) = 0u;
    sub_24E61DA68(v0 + 336, v113, qword_27F21B590, &unk_24F93BE30);
    v114 = v91 + v92[14];
    *(v114 + 32) = 0;
    *v114 = 0u;
    *(v114 + 16) = 0u;
    sub_24E61DA68(v0 + 376, v114, qword_27F21B590, &unk_24F93BE30);
    *(v91 + v92[15]) = v109;
    v115 = v91 + v92[16];
    *(v115 + 32) = 0;
    *v115 = 0u;
    *(v115 + 16) = 0u;
    sub_24E61DA68(v0 + 416, v115, &qword_27F2171D0, &unk_24F980290);
    *(v91 + v92[17]) = 2;
    sub_24F6BEC70(v91, v121, type metadata accessor for GSKShelf);
    sub_24F928138();
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
    (*(*(v116 - 8) + 56))(v122, 0, 1, v116);
    sub_24F6BECD8(v91, type metadata accessor for GSKShelf);

    v117 = *(v0 + 8);

    return v117();
  }

  return result;
}

uint64_t sub_24F6BEB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return AddFriendsShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F6BEBD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F6BEC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6BEC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6BECD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F6BED80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F6BEDEC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_24F6BEFD8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}