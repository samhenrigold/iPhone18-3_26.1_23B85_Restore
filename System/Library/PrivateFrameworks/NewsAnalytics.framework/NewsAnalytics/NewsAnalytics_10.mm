void sub_217B665D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B65D58();
    v7 = a3(a1, &type metadata for WebEmbedLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B66634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B66698(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B667CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217B64E88(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217B64E88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217B64E88(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_217B64E88(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217B64E88(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

void sub_217B66B20(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217B64E88(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217B64E88(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217B64E88(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            sub_217B64E88(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
            if (v6 <= 0x3F)
            {
              sub_217B64E88(319, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
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

void sub_217B66D5C(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C5238, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C29D8, &type metadata for InGroupPositionData);
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

unint64_t sub_217B66E9C()
{
  result = qword_27CBA0500;
  if (!qword_27CBA0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0500);
  }

  return result;
}

unint64_t sub_217B66EF4()
{
  result = qword_27CBA0508;
  if (!qword_27CBA0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0508);
  }

  return result;
}

unint64_t sub_217B66F4C()
{
  result = qword_27CBA0510;
  if (!qword_27CBA0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0510);
  }

  return result;
}

uint64_t sub_217B66FA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDE60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_217B67280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t, uint64_t, void), void (*a7)(uint64_t, uint64_t, void, void, uint64_t, uint64_t), void (*a8)(uint64_t, unint64_t))
{
  v14 = sub_217D8809C();
  MEMORY[0x21CEACC70](v14);

  a6(0x656D69746C616572, 0xE90000000000002DLL, a3, 0);
  a7(a1, a2, 0, 0, a4, a5);
  a8(0x656D69746C616572, 0xE90000000000002DLL);
}

uint64_t sub_217B673D0()
{
  v0 = sub_217D87EBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_217D87EAC();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_217A4EB0C(0, &qword_2811C8A50, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_2811C8BD0 = result;
  return result;
}

uint64_t Settings.Analytics.Debugging.Jitter.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_217D87EAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v8, a4, v5);
  v9 = sub_217D87E0C();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t sub_217B67754()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D87EBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217D8954C();
  *v7 = sub_217D8954C();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_217A4EB0C(0, &qword_2811C8A58, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_27CBA0518 = result;
  return result;
}

uint64_t sub_217B67970()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D87EBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x277D839F8];
  sub_217A4EB0C(0, &qword_27CBA0548, MEMORY[0x277D839F8], MEMORY[0x277D6D0F8]);
  v14[3] = v9;
  v10 = sub_217D8954C();
  v14[1] = v11;
  v14[2] = v10;
  v16 = 0x404E000000000000;
  *v7 = sub_217D8954C();
  v7[1] = v12;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  sub_217B698FC(0, &qword_27CBA0550, &qword_27CBA0558, v8);
  sub_217B699A8(0, &qword_27CBA0558, v8);
  *(swift_allocObject() + 16) = xmmword_217D98100;
  v15 = 0x3FF0000000000000;
  sub_217D87ECC();
  v15 = 0x4014000000000000;
  sub_217D87ECC();
  v15 = 0x4024000000000000;
  sub_217D87ECC();
  v15 = 0x404E000000000000;
  sub_217D87ECC();
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  result = sub_217D87EEC();
  qword_27CBA0520 = result;
  return result;
}

uint64_t Settings.Analytics.SamplingRate.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_217D89B0C();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t Settings.Analytics.SamplingRate.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x7974666966;
  v4 = 0x4679746E65766573;
  if (v1 != 4)
  {
    v4 = 0x72646E7548656E6FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1869768058;
  if (v1 != 1)
  {
    v5 = 0x694679746E657774;
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

uint64_t sub_217B67E50(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217B67F54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE500000000000000;
  v6 = 0x7974666966;
  v7 = 0xEB00000000657669;
  v8 = 0x4679746E65766573;
  if (v2 != 4)
  {
    v8 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1869768058;
  if (v2 != 1)
  {
    v10 = 0x694679746E657774;
    v9 = 0xEA00000000006576;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_217B68014(uint64_t a1)
{
  v2 = sub_217B6974C();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_217B68068(uint64_t a1, uint64_t a2)
{
  v4 = sub_217B6974C();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_217B680C4(uint64_t a1)
{
  v2 = sub_217B6974C();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

uint64_t sub_217B68118()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D87DFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A63428(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_217D87EFC();
  qword_27CBA0528 = result;
  return result;
}

uint64_t sub_217B682E8()
{
  v0 = sub_217D87EBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D87EAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B69848(0, &qword_2811C8A78, sub_217B698A8, &type metadata for Settings.Analytics.SamplingRate);
  v10[1] = "s.headline_exposure_noise_rate";
  v10[2] = v8;
  v17 = 0;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  sub_217B698FC(0, &qword_2811BC4B0, &qword_2811C8A88, &type metadata for Settings.Analytics.SamplingRate);
  sub_217B699A8(0, &qword_2811C8A88, &type metadata for Settings.Analytics.SamplingRate);
  *(swift_allocObject() + 16) = xmmword_217D9AA70;
  v16 = 0;
  sub_217D87ECC();
  v15 = 1;
  sub_217D87ECC();
  v14 = 2;
  sub_217D87ECC();
  v13 = 3;
  sub_217D87ECC();
  v12 = 4;
  sub_217D87ECC();
  v11 = 5;
  sub_217D87ECC();
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_217B69954();
  result = sub_217D87EEC();
  qword_2811C8C30 = result;
  return result;
}

uint64_t Settings.Analytics.Sports.NoiseRate.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_217D89B0C();

  v6 = 5;
  if (v4 < 5)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t Settings.Analytics.Sports.NoiseRate.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x7974666966;
  v4 = 0x72646E7548656E6FLL;
  if (v1 != 3)
  {
    v4 = 0x72646E75486F7774;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1869768058;
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

uint64_t sub_217B687D0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B688B0(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B6897C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B68A64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE500000000000000;
  v6 = 0x7974666966;
  v7 = 0x72646E7548656E6FLL;
  if (v2 != 3)
  {
    v7 = 0x72646E75486F7774;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xEA00000000006465;
  }

  if (*v1)
  {
    v4 = 1869768058;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_217B68B00(uint64_t a1)
{
  v2 = sub_217B696F8();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_217B68B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_217B696F8();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_217B68BB0(uint64_t a1)
{
  v2 = sub_217B696F8();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

uint64_t sub_217B68C04()
{
  v10 = sub_217D87EBC();
  v0 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_217D87EAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B69848(0, &qword_2811C8A70, sub_217B697A0, &type metadata for Settings.Analytics.Sports.NoiseRate);
  v9[0] = "on.jitter.enablement";
  v9[1] = v7;
  v16 = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277D6D098], v3);
  sub_217B698FC(0, &qword_2811BC4A8, &qword_2811C8A80, &type metadata for Settings.Analytics.Sports.NoiseRate);
  sub_217B699A8(0, &qword_2811C8A80, &type metadata for Settings.Analytics.Sports.NoiseRate);
  *(swift_allocObject() + 16) = xmmword_217D9AA80;
  v15 = 0;
  sub_217D87ECC();
  v14 = 1;
  sub_217D87ECC();
  v13 = 2;
  sub_217D87ECC();
  v12 = 3;
  sub_217D87ECC();
  v11 = 4;
  sub_217D87ECC();
  (*(v0 + 104))(v2, *MEMORY[0x277D6D0A8], v10);
  sub_217B697F4();
  result = sub_217D87EEC();
  qword_2811C8C18 = result;
  return result;
}

uint64_t sub_217B68FB4()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_217D87EBC();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 1;
  sub_217A4EB0C(0, &qword_2811C8A50, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_27CBA0530 = result;
  return result;
}

uint64_t sub_217B691A8()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A4EB0C(0, &qword_27CBA0548, MEMORY[0x277D839F8], MEMORY[0x277D6D0F8]);
  v5[3] = 0xC082C00000000000;
  v5[1] = 0;
  v5[2] = 0xFFEFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  result = sub_217D87F0C();
  qword_27CBA0538 = result;
  return result;
}

uint64_t sub_217B69314()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A4EB0C(0, &qword_27CBA0548, MEMORY[0x277D839F8], MEMORY[0x277D6D0F8]);
  v5[2] = 0;
  v5[3] = 0x4082C00000000000;
  v5[1] = 0x7FEFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  result = sub_217D87F0C();
  qword_27CBA0540 = result;
  return result;
}

uint64_t Settings.Analytics.Debugging.Jitter.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_217D87EAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5);
  v8 = sub_217D87E0C();
  (*(v6 + 8))(a4, v5);
  return v8;
}

uint64_t Settings.Analytics.Debugging.Jitter.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C13NewsAnalyticsE0D0V9DebuggingV6JitterCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

unint64_t sub_217B695C8()
{
  result = qword_2811C8C60;
  if (!qword_2811C8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8C60);
  }

  return result;
}

unint64_t sub_217B6961C()
{
  result = qword_2811C8C00;
  if (!qword_2811C8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8C00);
  }

  return result;
}

unint64_t sub_217B696F8()
{
  result = qword_2811C8BF8;
  if (!qword_2811C8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8BF8);
  }

  return result;
}

unint64_t sub_217B6974C()
{
  result = qword_2811C8C58;
  if (!qword_2811C8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8C58);
  }

  return result;
}

unint64_t sub_217B697A0()
{
  result = qword_2811C8BE8;
  if (!qword_2811C8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8BE8);
  }

  return result;
}

unint64_t sub_217B697F4()
{
  result = qword_2811C8BF0;
  if (!qword_2811C8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8BF0);
  }

  return result;
}

void sub_217B69848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_217D87F1C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_217B698A8()
{
  result = qword_2811C8C48;
  if (!qword_2811C8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8C48);
  }

  return result;
}

void sub_217B698FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_217B699A8(255, a3, a4);
    v5 = sub_217D89D0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_217B69954()
{
  result = qword_2811C8C50;
  if (!qword_2811C8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8C50);
  }

  return result;
}

void sub_217B699A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_217D87EDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

NewsAnalytics::StoreKitError_optional __swiftcall StoreKitError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t StoreKitError.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6E49746E65696C63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x49746E656D796170;
      break;
    case 4:
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
    case 0x15:
      result = 0xD000000000000013;
      break;
    case 9:
      v2 = 13;
      goto LABEL_22;
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 0xB:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0x5264696C61766E69;
      break;
    case 0xE:
      result = 0xD000000000000010;
      break;
    case 0xF:
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 0xD00000000000001ELL;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 0x13:
      v2 = 11;
LABEL_22:
      result = v2 | 0xD000000000000010;
      break;
    case 0x14:
      result = 0x5479616C7265766FLL;
      break;
    case 0x16:
      result = 0x636E614361776973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B69E40()
{
  v0 = StoreKitError.rawValue.getter();
  v2 = v1;
  if (v0 == StoreKitError.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217B69EE0()
{
  result = qword_27CBA0560;
  if (!qword_27CBA0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0560);
  }

  return result;
}

uint64_t sub_217B69F34()
{
  sub_217D89E1C();
  StoreKitError.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B69F9C(uint64_t a1)
{
  StoreKitError.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217B6A000(uint64_t a1)
{
  sub_217D89E1C();
  StoreKitError.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217B6A070@<X0>(unint64_t *a1@<X8>)
{
  result = StoreKitError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StoreKitError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreKitError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B6A298()
{
  result = qword_27CBA0568;
  if (!qword_27CBA0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0568);
  }

  return result;
}

uint64_t sub_217B6A3B4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA05A0);
  __swift_project_value_buffer(v0, qword_27CBA05A0);
  return sub_217D8866C();
}

uint64_t ArticleLinkTapEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleLinkTapEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 20);
  sub_217B6AD20(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLinkTapEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 20);
  sub_217B6AD20(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLinkTapEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 24);
  sub_217B6AD20(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLinkTapEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 24);
  sub_217B6AD20(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLinkTapEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 28);
  sub_217B6AD20(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleLinkTapEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 28);
  sub_217B6AD20(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLinkTapEvent.urlData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 32);
  sub_217B6AD20(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B6AAC8()
{
  result = qword_2811BD338;
  if (!qword_2811BD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD338);
  }

  return result;
}

unint64_t sub_217B6AB1C()
{
  result = qword_2811BD340;
  if (!qword_2811BD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD340);
  }

  return result;
}

uint64_t ArticleLinkTapEvent.urlData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 32);
  sub_217B6AD20(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLinkTapEvent.experimentationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 36);
  sub_217B6AD20(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B6AD20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ArticleLinkTapEvent.experimentationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleLinkTapEvent(0) + 36);
  sub_217B6AD20(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleLinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleLinkTapEvent(0);
  v5 = v4[5];
  sub_217B6AD20(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217B6AD20(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217B6AD20(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217B6AD20(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217B6AD20(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v8, v15);
}

uint64_t ArticleLinkTapEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleLinkTapEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ArticleLinkTapEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLinkTapEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleLinkTapEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLinkTapEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t ArticleLinkTapEvent.Model.urlData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLinkTapEvent.Model(0) + 32));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

void ArticleLinkTapEvent.Model.experimentationData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleLinkTapEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

__n128 ArticleLinkTapEvent.Model.init(eventData:articleData:viewData:userBundleSubscriptionContextData:urlData:experimentationData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 8);
  v32 = *a5;
  v15 = *(a5 + 2);
  v16 = *(a5 + 3);
  v17 = sub_217D8899C();
  v30 = a6[1];
  v31 = *a6;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for ArticleLinkTapEvent.Model(0);
  v19 = a7 + v18[5];
  v20 = *(a2 + 48);
  *(v19 + 32) = *(a2 + 32);
  *(v19 + 48) = v20;
  v21 = *(a2 + 16);
  *v19 = *a2;
  *(v19 + 16) = v21;
  *(v19 + 127) = *(a2 + 127);
  v22 = *(a2 + 112);
  *(v19 + 96) = *(a2 + 96);
  *(v19 + 112) = v22;
  v23 = *(a2 + 80);
  *(v19 + 64) = *(a2 + 64);
  *(v19 + 80) = v23;
  v24 = a7 + v18[6];
  *v24 = v12;
  *(v24 + 8) = v13;
  *(v24 + 16) = v14;
  v25 = a7 + v18[7];
  v26 = *(a4 + 16);
  *v25 = *a4;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a4 + 32);
  *(v25 + 48) = *(a4 + 48);
  v27 = a7 + v18[8];
  *v27 = v32;
  *(v27 + 16) = v15;
  *(v27 + 24) = v16;
  v28 = (a7 + v18[9]);
  result = v31;
  *v28 = v31;
  v28[1] = v30;
  return result;
}

unint64_t sub_217B6B504()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  v4 = 0x617461446C7275;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x44656C6369747261;
  if (v1 != 1)
  {
    v5 = 0x6174614477656976;
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

uint64_t sub_217B6B5D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B6CB44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B6B600(uint64_t a1)
{
  v2 = sub_217B6BB58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B6B63C(uint64_t a1)
{
  v2 = sub_217B6BB58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleLinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B6C21C(0, &qword_27CBA05B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B6BB58();
  sub_217D89E7C();
  v72[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v73 = type metadata accessor for ArticleLinkTapEvent.Model(0);
    v10 = v3 + *(v73 + 20);
    v11 = *(v10 + 96);
    v12 = *(v10 + 64);
    v69 = *(v10 + 80);
    v70 = v11;
    v13 = *(v10 + 96);
    *v71 = *(v10 + 112);
    v14 = *(v10 + 16);
    v15 = *(v10 + 48);
    v66 = *(v10 + 32);
    v67 = v15;
    v16 = *(v10 + 48);
    v68 = *(v10 + 64);
    v17 = *(v10 + 16);
    v65[0] = *v10;
    v65[1] = v17;
    v62 = v69;
    v63 = v13;
    v64[0] = *(v10 + 112);
    v59 = v66;
    v60 = v16;
    v61 = v12;
    *&v71[15] = *(v10 + 127);
    *(v64 + 15) = *(v10 + 127);
    v57 = v65[0];
    v58 = v14;
    v56 = 1;
    sub_217AD1630(v65, v54);
    sub_217ACF52C();
    sub_217D89CAC();
    v54[5] = v62;
    v54[6] = v63;
    *v55 = v64[0];
    *&v55[15] = *(v64 + 15);
    v54[2] = v59;
    v54[3] = v60;
    v54[4] = v61;
    v54[0] = v57;
    v54[1] = v58;
    sub_217AD2864(v54);
    v18 = v73;
    v19 = (v3 + *(v73 + 24));
    v20 = *v19;
    v21 = v19[1];
    LOWORD(v19) = *(v19 + 8);
    v51 = v20;
    v52 = v21;
    v53 = v19;
    v50 = 2;
    sub_217A5E790();

    sub_217D89C3C();

    v22 = (v3 + v18[7]);
    v23 = v22[1];
    v48[0] = *v22;
    v48[1] = v23;
    v25 = *v22;
    v24 = v22[1];
    v48[2] = v22[2];
    v49 = *(v22 + 48);
    v44 = v25;
    v45 = v24;
    v46 = v22[2];
    v47 = *(v22 + 48);
    v43 = 3;
    sub_217ACC004(v48, v41);
    sub_217A55B98();
    sub_217D89CAC();
    v41[0] = v44;
    v41[1] = v45;
    v41[2] = v46;
    v42 = v47;
    sub_217ACC69C(v41);
    v26 = (v3 + v18[8]);
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    v37 = *v26;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v36 = 4;
    sub_217B6AB1C();

    sub_217D89CAC();

    v30 = (v3 + v18[9]);
    v31 = v30[1];
    v32 = v30[2];
    v33 = v30[3];
    v37 = *v30;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v36 = 5;
    sub_217AE39D0(v37, v31, v32, v33);
    sub_217B368B0();
    sub_217D89C3C();
    sub_217AE4AA0(v37, v38, v39, v40);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B6BB58()
{
  result = qword_27CBA05C0;
  if (!qword_27CBA05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA05C0);
  }

  return result;
}

uint64_t ArticleLinkTapEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_217D8899C();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B6C21C(0, &qword_27CBA05C8, MEMORY[0x277D844C8]);
  v39 = v5;
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for ArticleLinkTapEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B6BB58();
  v38 = v7;
  v11 = v57;
  sub_217D89E5C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v35;
  v57 = v10;
  LOBYTE(v49) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v36;
  sub_217D89BCC();
  v14 = *(v12 + 32);
  v15 = v57;
  v36 = v3;
  v14(v57, v13);
  v48 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v16 = v15 + v8[5];
  v17 = v54;
  v18 = v56[0];
  *(v16 + 96) = v55;
  *(v16 + 112) = v18;
  v19 = v50;
  v20 = v52;
  v21 = v53;
  *(v16 + 32) = v51;
  *(v16 + 48) = v20;
  *(v16 + 127) = *(v56 + 15);
  *(v16 + 64) = v21;
  *(v16 + 80) = v17;
  *v16 = v49;
  *(v16 + 16) = v19;
  LOBYTE(v41) = 2;
  sub_217A5E738();
  v33 = 0;
  sub_217D89B5C();
  v22 = v45;
  v23 = v15 + v8[6];
  *v23 = v44;
  *(v23 + 16) = v22;
  v43 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v24 = v8;
  v25 = v15 + v8[7];
  v26 = v45;
  *v25 = v44;
  *(v25 + 16) = v26;
  *(v25 + 32) = v46;
  *(v25 + 48) = v47;
  v40 = 4;
  sub_217B6AAC8();
  sub_217D89BCC();
  v27 = v37;
  v28 = *(&v41 + 1);
  v29 = v15 + v24[8];
  *v29 = v41;
  *(v29 + 8) = v28;
  *(v29 + 16) = v42;
  v40 = 5;
  sub_217B36858();
  sub_217D89B5C();
  (*(v27 + 8))(v38, v39);
  v30 = (v15 + v24[9]);
  v31 = v42;
  *v30 = v41;
  v30[1] = v31;
  sub_217B6C280(v15, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B6C2E4(v15);
}

void sub_217B6C21C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B6BB58();
    v7 = a3(a1, &type metadata for ArticleLinkTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B6C280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleLinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B6C2E4(uint64_t a1)
{
  v2 = type metadata accessor for ArticleLinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B6C418@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B6AD20(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217B6AD20(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217B6AD20(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217B6AD20(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217B6AD20(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v9, v16);
}

void sub_217B6C72C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B6AD20(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217B6AD20(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_217B6AD20(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217B6AD20(319, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
          if (v5 <= 0x3F)
          {
            sub_217B6AD20(319, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
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

void sub_217B6C950(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C2A68, &type metadata for ExperimentationData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217B6CA40()
{
  result = qword_27CBA05F0;
  if (!qword_27CBA05F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA05F0);
  }

  return result;
}

unint64_t sub_217B6CA98()
{
  result = qword_27CBA05F8;
  if (!qword_27CBA05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA05F8);
  }

  return result;
}

unint64_t sub_217B6CAF0()
{
  result = qword_27CBA0600;
  if (!qword_27CBA0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0600);
  }

  return result;
}

uint64_t sub_217B6CB44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461446C7275 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCE340 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::GroupFormationReason_optional __swiftcall GroupFormationReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GroupFormationReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6C6C6F4664726168;
  v4 = 0x64657461727563;
  if (v1 != 3)
  {
    v4 = 1869048929;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1869903201;
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

unint64_t sub_217B6CE54()
{
  result = qword_27CBA0608;
  if (!qword_27CBA0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0608);
  }

  return result;
}

uint64_t sub_217B6CEA8()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B6CF80(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B6D044(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B6D124(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000776FLL;
  v6 = 0x6C6C6F4664726168;
  v7 = 0xE700000000000000;
  v8 = 0x64657461727563;
  if (v2 != 3)
  {
    v8 = 1869048929;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1869903201;
    v3 = 0xE400000000000000;
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

unint64_t sub_217B6D278()
{
  result = qword_2811C2040;
  if (!qword_2811C2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2040);
  }

  return result;
}

__n128 UserEventHistoryEventCountsData.init(articleSeenEventCount:articleVisitedEventCount:articleReadEventCount:articleLikedEventCount:articleDislikedEventCount:articleSharedEventCount:articleSavedEventCount:feedViewEventCount:tagFollowedEventCount:tagUnfollowedEventCount:tagMutedEventCount:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

unint64_t sub_217B6D508(unsigned __int8 a1)
{
  v1 = 0xD000000000000015;
  if (a1 <= 4u)
  {
    v6 = 0xD000000000000019;
    if (a1 == 3)
    {
      v6 = 0xD000000000000016;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = v6;
    }

    if (a1)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (a1 == 9)
    {
      v2 = 0xD000000000000017;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a1 == 8)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 6)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (a1 == 5)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 <= 7u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_217B6D634@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B6E000(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B6D65C(uint64_t a1)
{
  v2 = sub_217B6D9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B6D698(uint64_t a1)
{
  v2 = sub_217B6D9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEventHistoryEventCountsData.encode(to:)(void *a1)
{
  sub_217B6DD10(0, &qword_2811BC8C0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v15[8] = v1[2];
  v15[9] = v8;
  v10 = v1[5];
  v15[6] = v1[4];
  v15[7] = v9;
  v11 = v1[7];
  v15[4] = v1[6];
  v15[5] = v10;
  v12 = v1[9];
  v15[2] = v1[8];
  v15[3] = v11;
  v15[1] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B6D9B8();
  sub_217D89E7C();
  v26 = 0;
  v13 = v15[10];
  sub_217D89CCC();
  if (!v13)
  {
    v25 = 1;
    sub_217D89CCC();
    v24 = 2;
    sub_217D89CCC();
    v23 = 3;
    sub_217D89CCC();
    v22 = 4;
    sub_217D89CCC();
    v21 = 5;
    sub_217D89CCC();
    v20 = 6;
    sub_217D89CCC();
    v19 = 7;
    sub_217D89CCC();
    v18 = 8;
    sub_217D89CCC();
    v17 = 9;
    sub_217D89CCC();
    v16 = 10;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B6D9B8()
{
  result = qword_2811C83E8;
  if (!qword_2811C83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C83E8);
  }

  return result;
}

uint64_t UserEventHistoryEventCountsData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B6DD10(0, &qword_2811BCB68, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B6D9B8();
  sub_217D89E5C();
  if (!v2)
  {
    v37 = 0;
    v10 = sub_217D89BEC();
    v36 = 1;
    v11 = sub_217D89BEC();
    v35 = 2;
    v26 = sub_217D89BEC();
    v34 = 3;
    v25 = sub_217D89BEC();
    v33 = 4;
    v24 = sub_217D89BEC();
    v32 = 5;
    v23 = sub_217D89BEC();
    v31 = 6;
    v22 = sub_217D89BEC();
    v30 = 7;
    v21 = sub_217D89BEC();
    v29 = 8;
    v20 = sub_217D89BEC();
    v28 = 9;
    v19 = sub_217D89BEC();
    v27 = 10;
    v13 = sub_217D89BEC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v11;
    v14 = v25;
    a2[2] = v26;
    a2[3] = v14;
    v15 = v23;
    a2[4] = v24;
    a2[5] = v15;
    v16 = v21;
    a2[6] = v22;
    a2[7] = v16;
    v17 = v19;
    a2[8] = v20;
    a2[9] = v17;
    a2[10] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B6DD10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B6D9B8();
    v7 = a3(a1, &type metadata for UserEventHistoryEventCountsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B6DD78()
{
  result = qword_2811C83C8;
  if (!qword_2811C83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C83C8);
  }

  return result;
}

unint64_t sub_217B6DDD0()
{
  result = qword_2811C83D0;
  if (!qword_2811C83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C83D0);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_217B6DE78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217B6DE98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 88) = v3;
  return result;
}

unint64_t sub_217B6DEFC()
{
  result = qword_27CBA0610;
  if (!qword_27CBA0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0610);
  }

  return result;
}

unint64_t sub_217B6DF54()
{
  result = qword_2811C83D8;
  if (!qword_2811C83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C83D8);
  }

  return result;
}

unint64_t sub_217B6DFAC()
{
  result = qword_2811C83E0;
  if (!qword_2811C83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C83E0);
  }

  return result;
}

uint64_t sub_217B6E000(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DCE360 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCE380 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCE3A0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCE3C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DCE3E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCE400 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCE420 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE440 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCE460 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCE480 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE4A0 == a2)
  {

    return 10;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t SessionData.languageCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SessionData.languageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SessionData.countryCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SessionData.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SessionData.productType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SessionData.productType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SessionData.userSegmentationTreatmentIDs.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t SessionData.userSegmentationSegmentSetIDs.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t SessionData.regionIDs.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t SessionData.isPersonalizedAdsEnabled.getter()
{
  type metadata accessor for SessionData(0);
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  sub_217D8870C();
  return v1;
}

uint64_t type metadata accessor for SessionData(uint64_t a1)
{
  result = qword_2811C7C40;
  if (!qword_2811C7C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_217B6E7FC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SessionData(0);
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  result = sub_217D8870C();
  *a1 = v3;
  return result;
}

uint64_t sub_217B6E87C(char *a1)
{
  type metadata accessor for SessionData(0);
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  return sub_217D8871C();
}

uint64_t SessionData.isPersonalizedAdsEnabled.setter(char a1)
{
  type metadata accessor for SessionData(0);
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  return sub_217D8871C();
}

uint64_t (*SessionData.isPersonalizedAdsEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SessionData(0);
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  *(v3 + 32) = sub_217D886FC();
  return sub_217B6EA18;
}

void sub_217B6EA18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t SessionData.isSportsOnboarded.setter(char a1)
{
  result = type metadata accessor for SessionData(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t SessionData.aggregateStateMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SessionData(0);
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t SessionData.aggregateStateMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionData(0);
  *(v1 + *(result + 72)) = v2;
  return result;
}

uint64_t SessionData.init(utcOffset:languageCode:countryCode:iCloudAccountState:productType:userSegmentationTreatmentIDs:userSegmentationSegmentSetIDs:regionIDs:isStoreDemoUser:isLocationAccessEnabled:isDiagnosticsEnabled:isSystemNotificationsEnabled:isPersonalizedAdsEnabled:isSportsOnboarded:aggregateStateMode:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, unsigned __int8 a17, char *a18)
{
  v22 = *a6;
  v32 = *a18;
  v23 = type metadata accessor for SessionData(0);
  v24 = v23[16];
  sub_217D886EC();
  v25 = v23[18];
  *(a9 + v25) = 3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v22;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 89) = a13;
  *(a9 + 90) = a14;
  *(a9 + 91) = a15;
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  (*(*(v26 - 8) + 8))(a9 + v24, v26);
  result = sub_217D886EC();
  *(a9 + v23[17]) = a17;
  *(a9 + v25) = v32;
  return result;
}

unint64_t sub_217B6ED60(char a1)
{
  result = 0x657366664F637475;
  switch(a1)
  {
    case 1:
      result = 0x65676175676E616CLL;
      break;
    case 2:
      result = 0x437972746E756F63;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x54746375646F7270;
      break;
    case 5:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x44496E6F69676572;
      break;
    case 8:
      result = 0x4465726F74537369;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B6EF50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B70598(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B6EF84(uint64_t a1)
{
  v2 = sub_217B6F478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B6EFC0(uint64_t a1)
{
  v2 = sub_217B6F478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B6FF74(0, &qword_2811BC830, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B6F478();
  sub_217D89E7C();
  LOBYTE(v12) = 0;
  sub_217D89CBC();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_217D89C0C();
    LOBYTE(v12) = 2;
    sub_217D89C0C();
    LOBYTE(v12) = *(v3 + 40);
    v13 = 3;
    sub_217B6F4CC();
    sub_217D89CAC();
    LOBYTE(v12) = 4;
    sub_217D89C6C();
    v12 = *(v3 + 64);
    v13 = 5;
    sub_217A55EE0(0, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    sub_217B6F520();
    sub_217D89CAC();
    v12 = *(v3 + 72);
    v13 = 6;
    sub_217A55EE0(0, &qword_2811BCD00, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    sub_217B6F5B4();
    sub_217D89CAC();
    v12 = *(v3 + 80);
    v13 = 7;
    sub_217A55EE0(0, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_217B6F648();
    sub_217D89C3C();
    LOBYTE(v12) = 8;
    sub_217D89C7C();
    LOBYTE(v12) = 9;
    sub_217D89C7C();
    LOBYTE(v12) = 10;
    sub_217D89C7C();
    LOBYTE(v12) = 11;
    sub_217D89C7C();
    v11 = type metadata accessor for SessionData(0);
    LOBYTE(v12) = 12;
    sub_217D89BFC();
    LOBYTE(v12) = 13;
    sub_217D89C7C();
    LOBYTE(v12) = *(v3 + *(v11 + 72));
    v13 = 14;
    sub_217B6F6DC();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B6F478()
{
  result = qword_2811C7C78;
  if (!qword_2811C7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C78);
  }

  return result;
}

unint64_t sub_217B6F4CC()
{
  result = qword_2811C3330[0];
  if (!qword_2811C3330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C3330);
  }

  return result;
}

unint64_t sub_217B6F520()
{
  result = qword_2811BCCE0;
  if (!qword_2811BCCE0)
  {
    sub_217A55EE0(255, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCCE0);
  }

  return result;
}

unint64_t sub_217B6F5B4()
{
  result = qword_2811BCCF8;
  if (!qword_2811BCCF8)
  {
    sub_217A55EE0(255, &qword_2811BCD00, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCCF8);
  }

  return result;
}

unint64_t sub_217B6F648()
{
  result = qword_2811BCD48;
  if (!qword_2811BCD48)
  {
    sub_217A55EE0(255, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCD48);
  }

  return result;
}

unint64_t sub_217B6F6DC()
{
  result = qword_2811C4048;
  if (!qword_2811C4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4048);
  }

  return result;
}

uint64_t SessionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_217A55EE0(0, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v43 - v5;
  sub_217B6FF74(0, &qword_2811BCB28, MEMORY[0x277D844C8]);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v43 - v8;
  v10 = type metadata accessor for SessionData(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 64);
  LOBYTE(v55) = 2;
  v50 = v14;
  sub_217D886EC();
  v15 = *(v10 + 72);
  v53 = v13;
  v13[v15] = 3;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_217B6F478();
  sub_217D89E5C();
  if (v2)
  {
    v54 = v2;
    v20 = 0;
    v21 = 0;
    v22 = 0;
LABEL_4:
    v24 = v53;
    goto LABEL_5;
  }

  v44 = v15;
  v45 = v10;
  v17 = v47;
  v18 = v48;
  LOBYTE(v55) = 0;
  v19 = sub_217D89BDC();
  v24 = v53;
  *v53 = v19;
  LOBYTE(v55) = 1;
  *(v24 + 1) = sub_217D89B2C();
  *(v24 + 2) = v25;
  v43[1] = v25;
  LOBYTE(v55) = 2;
  v26 = sub_217D89B2C();
  v54 = 0;
  *(v24 + 3) = v26;
  *(v24 + 4) = v27;
  v43[0] = v27;
  v56 = 3;
  sub_217B6FFD8();
  v28 = v54;
  sub_217D89BCC();
  if (v28)
  {
    v54 = v28;
    (*(v17 + 8))(v9, v18);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_5;
  }

  v24[40] = v55;
  LOBYTE(v55) = 4;
  v29 = sub_217D89B8C();
  v54 = 0;
  *(v24 + 6) = v29;
  *(v24 + 7) = v30;
  sub_217A55EE0(0, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
  v56 = 5;
  sub_217B7002C();
  v31 = v54;
  sub_217D89BCC();
  v54 = v31;
  if (v31)
  {
    (*(v17 + 8))(v9, v18);
    v21 = 0;
    v22 = 0;
    v20 = 1;
    goto LABEL_5;
  }

  *(v24 + 8) = v55;
  sub_217A55EE0(0, &qword_2811BCD00, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
  v56 = 6;
  sub_217B700C0();
  v32 = v54;
  sub_217D89BCC();
  v54 = v32;
  if (v32)
  {
    (*(v17 + 8))(v9, v18);
    v22 = 0;
    v20 = 1;
    v21 = 1;
    goto LABEL_5;
  }

  *(v24 + 9) = v55;
  sub_217A55EE0(0, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v56 = 7;
  sub_217B70154();
  v33 = v54;
  sub_217D89B5C();
  if (v33)
  {
    v54 = v33;
    (*(v17 + 8))(v9, v18);
    v20 = 1;
    v21 = 1;
    v22 = 1;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v49);

    if (v20)
    {

      if (!v21)
      {
LABEL_7:
        if (!v22)
        {
LABEL_9:

          return (*(v51 + 8))(&v24[v50], v52);
        }

LABEL_8:

        goto LABEL_9;
      }
    }

    else if (!v21)
    {
      goto LABEL_7;
    }

    if (!v22)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v24 + 10) = v55;
  LOBYTE(v55) = 8;
  v34 = sub_217D89B9C();
  v54 = 0;
  v24[88] = v34 & 1;
  LOBYTE(v55) = 9;
  v35 = v54;
  v36 = sub_217D89B9C();
  v54 = v35;
  if (v35 || (v53[89] = v36 & 1, LOBYTE(v55) = 10, v37 = sub_217D89B9C(), v54 = 0, v53[90] = v37 & 1, LOBYTE(v55) = 11, v38 = sub_217D89B9C(), v54 = 0, v53[91] = v38 & 1, LOBYTE(v55) = 12, sub_217D89B1C(), v54 = 0, (*(v51 + 40))(&v53[v50], v6, v52), LOBYTE(v55) = 13, v39 = v54, v40 = sub_217D89B9C(), (v54 = v39) != 0) || (v53[*(v45 + 68)] = v40 & 1, v56 = 14, sub_217B701E8(), v41 = v54, sub_217D89B5C(), (v54 = v41) != 0))
  {
    (*(v17 + 8))(v9, v48);
    v20 = 1;
    v21 = 1;
    v22 = 1;
    goto LABEL_4;
  }

  (*(v17 + 8))(v9, v48);
  v42 = v53;
  v53[v44] = v55;
  sub_217AE04C0(v42, v46);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_217AE0524(v42);
}

void sub_217B6FF74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B6F478();
    v7 = a3(a1, &type metadata for SessionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B6FFD8()
{
  result = qword_2811C3320;
  if (!qword_2811C3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3320);
  }

  return result;
}

unint64_t sub_217B7002C()
{
  result = qword_2811BCCD8;
  if (!qword_2811BCCD8)
  {
    sub_217A55EE0(255, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCCD8);
  }

  return result;
}

unint64_t sub_217B700C0()
{
  result = qword_2811BCCF0;
  if (!qword_2811BCCF0)
  {
    sub_217A55EE0(255, &qword_2811BCD00, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCCF0);
  }

  return result;
}

unint64_t sub_217B70154()
{
  result = qword_2811BCD38;
  if (!qword_2811BCD38)
  {
    sub_217A55EE0(255, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCD38);
  }

  return result;
}

unint64_t sub_217B701E8()
{
  result = qword_27CBA0618;
  if (!qword_27CBA0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0618);
  }

  return result;
}

uint64_t sub_217B702A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217B70494()
{
  result = qword_27CBA0620;
  if (!qword_27CBA0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0620);
  }

  return result;
}

unint64_t sub_217B704EC()
{
  result = qword_2811C7C68;
  if (!qword_2811C7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C68);
  }

  return result;
}

unint64_t sub_217B70544()
{
  result = qword_2811C7C70;
  if (!qword_2811C7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C70);
  }

  return result;
}

uint64_t sub_217B70598(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657366664F637475 && a2 == 0xE900000000000074 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE4C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DCE4E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DCE500 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44496E6F69676572 && a2 == 0xE900000000000073 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4465726F74537369 && a2 == 0xEF726573556F6D65 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCE520 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCE540 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DCE560 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCE580 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCE5A0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE5C0 == a2)
  {

    return 14;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_217B70AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B70B58(uint64_t a1)
{
  v2 = sub_217B70D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B70B94(uint64_t a1)
{
  v2 = sub_217B70D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InteractivePuzzleTeaserEngagementData.encode(to:)(void *a1)
{
  sub_217B70F6C(0, &qword_27CBA0628, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B70D2C();
  sub_217D89E7C();
  v11 = v8;
  sub_217B70D80();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B70D2C()
{
  result = qword_27CBA0630;
  if (!qword_27CBA0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0630);
  }

  return result;
}

unint64_t sub_217B70D80()
{
  result = qword_27CBA0638;
  if (!qword_27CBA0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0638);
  }

  return result;
}

uint64_t InteractivePuzzleTeaserEngagementData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B70F6C(0, &qword_27CBA0640, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B70D2C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B70FD0();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B70F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B70D2C();
    v7 = a3(a1, &type metadata for InteractivePuzzleTeaserEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B70FD0()
{
  result = qword_27CBA0648;
  if (!qword_27CBA0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0648);
  }

  return result;
}

unint64_t sub_217B71028()
{
  result = qword_27CBA0650;
  if (!qword_27CBA0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0650);
  }

  return result;
}

unint64_t sub_217B71080()
{
  result = qword_27CBA0658;
  if (!qword_27CBA0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0658);
  }

  return result;
}

unint64_t sub_217B71128()
{
  result = qword_27CBA0660;
  if (!qword_27CBA0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0660);
  }

  return result;
}

unint64_t sub_217B71180()
{
  result = qword_27CBA0668;
  if (!qword_27CBA0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0668);
  }

  return result;
}

unint64_t sub_217B711D8()
{
  result = qword_27CBA0670;
  if (!qword_27CBA0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0670);
  }

  return result;
}

uint64_t sub_217B7129C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74694B65726F7473 && a2 == 0xED0000726F727245)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B7132C(uint64_t a1)
{
  v2 = sub_217B71500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B71368(uint64_t a1)
{
  v2 = sub_217B71500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoreKitErrorData.encode(to:)(void *a1)
{
  sub_217B71740(0, &qword_27CBA0678, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B71500();
  sub_217D89E7C();
  v11 = v8;
  sub_217B71554();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B71500()
{
  result = qword_27CBA0680;
  if (!qword_27CBA0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0680);
  }

  return result;
}

unint64_t sub_217B71554()
{
  result = qword_27CBA0688;
  if (!qword_27CBA0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0688);
  }

  return result;
}

uint64_t StoreKitErrorData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B71740(0, &qword_27CBA0690, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B71500();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B717A4();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B71740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B71500();
    v7 = a3(a1, &type metadata for StoreKitErrorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B717A4()
{
  result = qword_27CBA0698;
  if (!qword_27CBA0698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0698);
  }

  return result;
}

unint64_t sub_217B717FC()
{
  result = qword_2811C4308;
  if (!qword_2811C4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4308);
  }

  return result;
}

unint64_t sub_217B71854()
{
  result = qword_2811C4310;
  if (!qword_2811C4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4310);
  }

  return result;
}

unint64_t sub_217B718FC()
{
  result = qword_27CBA06A0;
  if (!qword_27CBA06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06A0);
  }

  return result;
}

unint64_t sub_217B71954()
{
  result = qword_27CBA06A8;
  if (!qword_27CBA06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06A8);
  }

  return result;
}

unint64_t sub_217B719AC()
{
  result = qword_27CBA06B0;
  if (!qword_27CBA06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06B0);
  }

  return result;
}

uint64_t GroupDataList.groups.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217B71A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B71AFC(uint64_t a1)
{
  v2 = sub_217B71D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B71B38(uint64_t a1)
{
  v2 = sub_217B71D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupDataList.encode(to:)(void *a1)
{
  sub_217B71F90(0, &qword_27CBA06B8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B71D1C();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217B71D70();
  sub_217B71FF4(&qword_27CBA06D0, sub_217A5D3B4, MEMORY[0x277D83948]);
  sub_217D89CAC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B71D1C()
{
  result = qword_27CBA06C0;
  if (!qword_27CBA06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06C0);
  }

  return result;
}

void sub_217B71D70()
{
  if (!qword_27CBA06C8)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA06C8);
    }
  }
}

uint64_t GroupDataList.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217B71F90(0, &qword_27CBA06D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B71D1C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B71D70();
    sub_217B71FF4(&qword_27CBA06E0, sub_217A5D308, MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B71F90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B71D1C();
    v7 = a3(a1, &type metadata for GroupDataList.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B71FF4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217B71D70();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217B720BC()
{
  result = qword_27CBA06E8;
  if (!qword_27CBA06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06E8);
  }

  return result;
}

unint64_t sub_217B72114()
{
  result = qword_27CBA06F0;
  if (!qword_27CBA06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06F0);
  }

  return result;
}

unint64_t sub_217B7216C()
{
  result = qword_27CBA06F8;
  if (!qword_27CBA06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA06F8);
  }

  return result;
}

uint64_t FeedData.feedID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FeedData.feedID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

NewsAnalytics::FeedData __swiftcall FeedData.init(feedType:feedID:)(NewsAnalytics::FeedType feedType, Swift::String_optional feedID)
{
  *v2 = *feedType;
  *(v2 + 8) = feedID;
  result.feedID = feedID;
  result.feedType = feedType;
  return result;
}

uint64_t sub_217B72298()
{
  if (*v0)
  {
    return 0x444964656566;
  }

  else
  {
    return 0x6570795464656566;
  }
}

uint64_t sub_217B722D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570795464656566 && a2 == 0xE800000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x444964656566 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217B723A8(uint64_t a1)
{
  v2 = sub_217B725B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B723E4(uint64_t a1)
{
  v2 = sub_217B725B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedData.encode(to:)(void *a1)
{
  sub_217B72840(0, &qword_2811BC500, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12[0] = *(v1 + 2);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B725B0();
  sub_217D89E7C();
  v15 = v9;
  v14 = 0;
  sub_217B72604();
  sub_217D89CAC();
  if (!v2)
  {
    v13 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217B725B0()
{
  result = qword_2811BD330;
  if (!qword_2811BD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD330);
  }

  return result;
}

unint64_t sub_217B72604()
{
  result = qword_2811BD2E8;
  if (!qword_2811BD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2E8);
  }

  return result;
}

uint64_t FeedData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B72840(0, &qword_2811BC8F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B725B0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_217B728A4();
  sub_217D89BCC();
  v10 = v18;
  v16 = 1;
  v11 = sub_217D89B2C();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B72840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B725B0();
    v7 = a3(a1, &type metadata for FeedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B728A4()
{
  result = qword_2811BD2D8;
  if (!qword_2811BD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2D8);
  }

  return result;
}

uint64_t sub_217B72928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

unint64_t sub_217B72998()
{
  result = qword_27CBA0700;
  if (!qword_27CBA0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0700);
  }

  return result;
}

unint64_t sub_217B729F0()
{
  result = qword_2811BD320;
  if (!qword_2811BD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD320);
  }

  return result;
}

unint64_t sub_217B72A48()
{
  result = qword_2811BD328;
  if (!qword_2811BD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD328);
  }

  return result;
}

NewsAnalytics::DownloadState_optional __swiftcall DownloadState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DownloadState.rawValue.getter()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 0x6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217B72B4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7472617473;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B72C44()
{
  result = qword_27CBA0708;
  if (!qword_27CBA0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0708);
  }

  return result;
}

uint64_t sub_217B72C98()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B72D34(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B72DBC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B72E60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7472617473;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B72F78()
{
  result = qword_27CBA0710;
  if (!qword_27CBA0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0710);
  }

  return result;
}

uint64_t sub_217B73094()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0748);
  __swift_project_value_buffer(v0, qword_27CBA0748);
  return sub_217D8866C();
}

uint64_t SportsRemoveFavoritesSyncEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsRemoveFavoritesSyncEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsRemoveFavoritesSyncEvent(0) + 20);
  sub_217A62A78(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsRemoveFavoritesSyncEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsRemoveFavoritesSyncEvent(0) + 20);
  sub_217A62A78(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsRemoveFavoritesSyncEvent.removeFavoritesSyncData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsRemoveFavoritesSyncEvent(0) + 24);
  sub_217A62A78(0, &qword_27CBA0760, sub_217B73448, sub_217B7349C, &type metadata for SportsRemoveFavoritesSyncData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B73448()
{
  result = qword_27CBA0768;
  if (!qword_27CBA0768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0768);
  }

  return result;
}

unint64_t sub_217B7349C()
{
  result = qword_27CBA0770;
  if (!qword_27CBA0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0770);
  }

  return result;
}

uint64_t SportsRemoveFavoritesSyncEvent.removeFavoritesSyncData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsRemoveFavoritesSyncEvent(0) + 24);
  sub_217A62A78(0, &qword_27CBA0760, sub_217B73448, sub_217B7349C, &type metadata for SportsRemoveFavoritesSyncData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsRemoveFavoritesSyncEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SportsRemoveFavoritesSyncEvent(0);
  v5 = *(v4 + 20);
  sub_217A62A78(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62A78(0, &qword_27CBA0760, sub_217B73448, sub_217B7349C, &type metadata for SportsRemoveFavoritesSyncData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SportsRemoveFavoritesSyncEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t SportsRemoveFavoritesSyncEvent.Model.removeFavoritesSyncData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 SportsRemoveFavoritesSyncEvent.Model.init(eventData:userBundleSubscriptionContextData:removeFavoritesSyncData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

unint64_t sub_217B738D8()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217B73944@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B74748(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B7396C(uint64_t a1)
{
  v2 = sub_217B73C90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B739A8(uint64_t a1)
{
  v2 = sub_217B73C90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsRemoveFavoritesSyncEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B740E4(0, &qword_27CBA0778, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B73C90();
  sub_217D89E7C();
  v29 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
    v12 = v11[2];
    v13 = *v11;
    v14 = *v11;
    v26 = v11[1];
    v27 = v12;
    v25 = v13;
    v28 = *(v11 + 48);
    v21 = v14;
    v22 = v26;
    v23 = v11[2];
    v24 = *(v11 + 48);
    v20 = 1;
    sub_217ACC004(&v25, v18);
    sub_217A55B98();
    sub_217D89CAC();
    v18[0] = v21;
    v18[1] = v22;
    v18[2] = v23;
    v19 = v24;
    sub_217ACC69C(v18);
    v17 = *(v3 + *(v10 + 24));
    v16[11] = 2;
    sub_217B7349C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B73C90()
{
  result = qword_27CBA0780;
  if (!qword_27CBA0780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0780);
  }

  return result;
}

uint64_t SportsRemoveFavoritesSyncEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B740E4(0, &qword_27CBA0788, MEMORY[0x277D844C8]);
  v27 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B73C90();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v24;
  v12 = v25;
  v21 = v9;
  v22 = v11;
  LOBYTE(v28) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v26;
  v14 = v27;
  sub_217D89BCC();
  (*(v12 + 32))(v22, v15, v4);
  v34 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v16 = &v22[*(v21 + 20)];
  v17 = v29;
  *v16 = v28;
  *(v16 + 1) = v17;
  *(v16 + 2) = v30;
  v16[48] = v31;
  v33 = 2;
  sub_217B73448();
  sub_217D89BCC();
  (*(v13 + 8))(v8, v14);
  v18 = v22;
  *&v22[*(v21 + 24)] = v32;
  sub_217B74148(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B741AC(v18);
}

void sub_217B740E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B73C90();
    v7 = a3(a1, &type metadata for SportsRemoveFavoritesSyncEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B74148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B741AC(uint64_t a1)
{
  v2 = type metadata accessor for SportsRemoveFavoritesSyncEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B742E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A62A78(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A62A78(0, &qword_27CBA0760, sub_217B73448, sub_217B7349C, &type metadata for SportsRemoveFavoritesSyncData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217B74478(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A62A78(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
    if (v2 <= 0x3F)
    {
      sub_217A62A78(319, &qword_27CBA0760, sub_217B73448, sub_217B7349C, &type metadata for SportsRemoveFavoritesSyncData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217B745AC(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B74644()
{
  result = qword_27CBA07B0;
  if (!qword_27CBA07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07B0);
  }

  return result;
}

unint64_t sub_217B7469C()
{
  result = qword_27CBA07B8;
  if (!qword_27CBA07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07B8);
  }

  return result;
}

unint64_t sub_217B746F4()
{
  result = qword_27CBA07C0;
  if (!qword_27CBA07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07C0);
  }

  return result;
}

uint64_t sub_217B74748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCE5E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217B74874()
{
  result = sub_217D879FC();
  if (result)
  {
    v1 = result;
    sub_217D899BC();
    if (*(v1 + 16) && (v2 = sub_217D7AB6C(v6), (v3 & 1) != 0))
    {
      sub_217AE02B0(*(v1 + 56) + 32 * v2, v7);
      sub_217B74D38(v6);

      result = swift_dynamicCast();
      if (result)
      {
        if (sub_217D89D4C())
        {

          v4 = 1;
LABEL_7:
          *(swift_allocObject() + 16) = v4;
          sub_217D8833C();
        }

        v5 = sub_217D89D4C();

        v4 = 0;
        if (v5)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {

      return sub_217B74D38(v6);
    }
  }

  return result;
}

uint64_t sub_217B74A4C(uint64_t a1, char a2)
{
  sub_217B74D94(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13[15] = a2;
  sub_217B74DF0();
  sub_217D880EC();
  sub_217A4CA88(0);
  v8 = sub_217D882DC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_217D8D8F0;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277CEAD10], v8);
  sub_217D8854C();

  return (*(v5 + 8))(v7, v4);
}

void sub_217B74D94(uint64_t a1)
{
  if (!qword_2811C8A00)
  {
    sub_217B74DF0();
    v1 = sub_217D880FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8A00);
    }
  }
}

unint64_t sub_217B74DF0()
{
  result = qword_2811C4640;
  if (!qword_2811C4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4640);
  }

  return result;
}

NewsAnalytics::HeadlineScoringContext_optional __swiftcall HeadlineScoringContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadlineScoringContext.rawValue.getter()
{
  v1 = 0x7247756F59726F66;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_217B74F10(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB0000000070756FLL;
  v3 = 0xD000000000000016;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x7247756F59726F66;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v4 == 1)
  {
    v6 = 0xEB0000000070756FLL;
  }

  else
  {
    v6 = 0x8000000217DCAF60;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000217DCAF30;
  }

  if (*a2 == 1)
  {
    v3 = 0x7247756F59726F66;
  }

  else
  {
    v2 = 0x8000000217DCAF60;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000217DCAF30;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B74FF8()
{
  result = qword_27CBA07C8;
  if (!qword_27CBA07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07C8);
  }

  return result;
}

uint64_t sub_217B7504C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B75104(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B751A8(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B75268(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000070756FLL;
  v4 = 0x7247756F59726F66;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000217DCAF60;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (v5)
  {
    v3 = 0x8000000217DCAF30;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217B7539C()
{
  result = qword_2811C0490;
  if (!qword_2811C0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0490);
  }

  return result;
}

NewsAnalytics::DownloadType_optional __swiftcall DownloadType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DownloadType.rawValue.getter()
{
  v1 = 0x6C61756E616DLL;
  if (*v0 != 1)
  {
    v1 = 1869903201;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217B7549C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6C61756E616DLL;
  if (v2 != 1)
  {
    v4 = 1869903201;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6C61756E616DLL;
  if (*a2 != 1)
  {
    v8 = 1869903201;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B7558C()
{
  result = qword_27CBA07D0;
  if (!qword_27CBA07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07D0);
  }

  return result;
}

uint64_t sub_217B755E0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B75678(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B756FC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B7579C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6C61756E616DLL;
  if (v2 != 1)
  {
    v5 = 1869903201;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B758B0()
{
  result = qword_27CBA07D8;
  if (!qword_27CBA07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07D8);
  }

  return result;
}

uint64_t AuxiliaryData.articleIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217B75984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49656C6369747261 && a2 == 0xEA00000000007344)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B75A14(uint64_t a1)
{
  v2 = sub_217B75C28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B75A50(uint64_t a1)
{
  v2 = sub_217B75C28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuxiliaryData.encode(to:)(void *a1)
{
  sub_217B75E40(0, &qword_2811BC7E0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B75C28();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_217D89CAC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B75C28()
{
  result = qword_2811C7878;
  if (!qword_2811C7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7878);
  }

  return result;
}

uint64_t AuxiliaryData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217B75E40(0, &qword_2811BCAF8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B75C28();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B75E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B75C28();
    v7 = a3(a1, &type metadata for AuxiliaryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B75EA8()
{
  result = qword_2811C7858;
  if (!qword_2811C7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7858);
  }

  return result;
}

unint64_t sub_217B75F00()
{
  result = qword_2811C7860;
  if (!qword_2811C7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7860);
  }

  return result;
}

unint64_t sub_217B75FA8()
{
  result = qword_27CBA07E0;
  if (!qword_27CBA07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07E0);
  }

  return result;
}

unint64_t sub_217B76000()
{
  result = qword_2811C7868;
  if (!qword_2811C7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7868);
  }

  return result;
}

unint64_t sub_217B76058()
{
  result = qword_2811C7870;
  if (!qword_2811C7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7870);
  }

  return result;
}

NewsAnalytics::EngagementPlacementOriginationType_optional __swiftcall EngagementPlacementOriginationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

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

  *v2 = v5;
  return result;
}

uint64_t EngagementPlacementOriginationType.rawValue.getter()
{
  if (*v0)
  {
    return 0x7972756372656DLL;
  }

  else
  {
    return 0x6D6F6F727377656ELL;
  }
}

uint64_t sub_217B7614C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7972756372656DLL;
  }

  else
  {
    v3 = 0x6D6F6F727377656ELL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7972756372656DLL;
  }

  else
  {
    v5 = 0x6D6F6F727377656ELL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();
  }

  return v8 & 1;
}

unint64_t sub_217B761F8()
{
  result = qword_27CBA07E8;
  if (!qword_27CBA07E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA07E8);
  }

  return result;
}

uint64_t sub_217B7624C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B762D0(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B76340(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B763C0@<X0>(char *a2@<X8>)
{
  v3 = sub_217D89B0C();

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

void sub_217B76420(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F6F727377656ELL;
  if (*v1)
  {
    v2 = 0x7972756372656DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_217B76520()
{
  result = qword_2811BDC98;
  if (!qword_2811BDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDC98);
  }

  return result;
}

uint64_t sub_217B7663C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0820);
  __swift_project_value_buffer(v0, qword_27CBA0820);
  return sub_217D8866C();
}

uint64_t ArticleDislikeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleDislikeEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 20);
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 20);
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 24);
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 24);
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 28);
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 28);
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 32);
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 32);
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 36);
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 36);
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 40);
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 40);
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 44);
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 44);
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 48);
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 48);
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 52);
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 52);
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 56);
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleDislikeEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleDislikeEvent(0) + 56);
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleDislikeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleDislikeEvent(0);
  v5 = v4[5];
  sub_217AEDF64(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AEDF64(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217AEDF64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217AEDF64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217AEDF64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217AEDF64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217AEDF64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  sub_217AEDF64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217AEDF64(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217AEDF64(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v12, v25);
}

uint64_t ArticleDislikeEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ArticleDislikeEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleDislikeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleDislikeEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t ArticleDislikeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleDislikeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 36));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t ArticleDislikeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 40));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

void ArticleDislikeEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t ArticleDislikeEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleDislikeEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleDislikeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

void ArticleDislikeEvent.Model.articleExposureContextData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleDislikeEvent.Model(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217AE3AE8(v4, v5, v6, v7, v8);
}

__n128 ArticleDislikeEvent.Model.init(eventData:articleData:actionData:channelData:feedData:groupData:userBundleSubscriptionContextData:issueData:userChannelContextData:viewData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, uint64_t a12)
{
  v18 = *a3;
  v44 = a4[1];
  v45 = *a4;
  v19 = *(a4 + 16);
  v20 = *(a4 + 17);
  v42 = a4[4];
  v43 = a4[3];
  v47 = *a5;
  v46 = *(a5 + 2);
  v53 = a10[1];
  v54 = *a10;
  v52 = *(a10 + 1);
  v56 = a11[1];
  v57 = *a11;
  v55 = *(a11 + 8);
  v58 = *(a12 + 32);
  v21 = sub_217D8899C();
  v50 = *(a12 + 16);
  v51 = *a12;
  v48 = a8[1];
  v49 = *a8;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ArticleDislikeEvent.Model(0);
  v23 = a9 + v22[5];
  v24 = *(a2 + 48);
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = v24;
  v25 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a2 + 127);
  v26 = *(a2 + 112);
  *(v23 + 96) = *(a2 + 96);
  *(v23 + 112) = v26;
  v27 = *(a2 + 80);
  *(v23 + 64) = *(a2 + 64);
  *(v23 + 80) = v27;
  *(a9 + v22[6]) = v18;
  v28 = a9 + v22[7];
  *v28 = v45;
  *(v28 + 8) = v44;
  *(v28 + 16) = v19;
  *(v28 + 17) = v20;
  *(v28 + 24) = v43;
  *(v28 + 32) = v42;
  v29 = a9 + v22[8];
  *v29 = v47;
  *(v29 + 16) = v46;
  v30 = (a9 + v22[9]);
  v31 = a6[3];
  v30[2] = a6[2];
  v30[3] = v31;
  v32 = a6[1];
  *v30 = *a6;
  v30[1] = v32;
  v33 = a6[8];
  v30[7] = a6[7];
  v30[8] = v33;
  v34 = a6[6];
  v30[5] = a6[5];
  v30[6] = v34;
  v30[4] = a6[4];
  v35 = a9 + v22[10];
  v36 = *(a7 + 16);
  *v35 = *a7;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a7 + 32);
  *(v35 + 48) = *(a7 + 48);
  v37 = (a9 + v22[11]);
  *v37 = v49;
  v37[1] = v48;
  v38 = a9 + v22[12];
  *v38 = v54;
  *(v38 + 1) = v53;
  *(v38 + 2) = v52;
  v39 = a9 + v22[13];
  *v39 = v57;
  *(v39 + 8) = v56;
  *(v39 + 16) = v55;
  v40 = a9 + v22[14];
  result = v51;
  *v40 = v51;
  *(v40 + 16) = v50;
  *(v40 + 32) = v58;
  return result;
}

uint64_t sub_217B783E8(uint64_t a1)
{
  v2 = sub_217B78BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B78424(uint64_t a1)
{
  v2 = sub_217B78BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleDislikeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B79594(0, &qword_27CBA0838, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B78BD4();
  sub_217D89E7C();
  v114[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ArticleDislikeEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 80);
    v13 = *(v11 + 112);
    v112 = *(v11 + 96);
    *v113 = v13;
    v14 = *(v11 + 16);
    v15 = *(v11 + 48);
    v108 = *(v11 + 32);
    v109 = v15;
    v16 = *(v11 + 48);
    v17 = *(v11 + 80);
    v110 = *(v11 + 64);
    v111 = v17;
    v18 = *(v11 + 16);
    v107[0] = *v11;
    v107[1] = v18;
    v19 = *(v11 + 112);
    v105 = v112;
    v106[0] = v19;
    v101 = v108;
    v102 = v16;
    v103 = v110;
    v104 = v12;
    *&v113[15] = *(v11 + 127);
    *(v106 + 15) = *(v11 + 127);
    v99 = v107[0];
    v100 = v14;
    v98 = 1;
    sub_217AD1630(v107, &v83);
    sub_217ACF52C();
    sub_217D89CAC();
    v96[6] = v105;
    *v97 = v106[0];
    *&v97[15] = *(v106 + 15);
    v96[2] = v101;
    v96[3] = v102;
    v96[4] = v103;
    v96[5] = v104;
    v96[0] = v99;
    v96[1] = v100;
    sub_217AD2864(v96);
    LOBYTE(v83) = *(v3 + v10[6]);
    LOBYTE(v74) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v20 = v3 + v10[7];
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 17);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    *&v83 = *v20;
    *(&v83 + 1) = v21;
    LOBYTE(v84) = v22;
    BYTE1(v84) = v23;
    *(&v84 + 1) = v24;
    *&v85 = v25;
    LOBYTE(v74) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v26 = (v3 + v10[8]);
    v27 = v26[1];
    v28 = v26[2];
    v93 = *v26;
    v94 = v27;
    v95 = v28;
    v92 = 4;
    sub_217AD1A68(v93, v27, v28);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v93, v94, v95);
    v29 = (v3 + v10[9]);
    v30 = v29[5];
    v31 = v29[7];
    v89 = v29[6];
    v90 = v31;
    v32 = v29[7];
    v91 = v29[8];
    v33 = v29[1];
    v34 = v29[3];
    v85 = v29[2];
    v86 = v34;
    v35 = v29[3];
    v36 = v29[5];
    v87 = v29[4];
    v88 = v36;
    v37 = v29[1];
    v83 = *v29;
    v84 = v37;
    v80 = v89;
    v81 = v32;
    v82 = v29[8];
    v76 = v85;
    v77 = v35;
    v78 = v87;
    v79 = v30;
    v74 = v83;
    v75 = v33;
    v73 = 5;
    sub_217AD87FC(&v83, v72);
    sub_217A5D3B4();
    sub_217D89C3C();
    v72[6] = v80;
    v72[7] = v81;
    v72[8] = v82;
    v72[2] = v76;
    v72[3] = v77;
    v72[4] = v78;
    v72[5] = v79;
    v72[0] = v74;
    v72[1] = v75;
    sub_217AD96E8(v72);
    v38 = v3 + v10[10];
    v39 = *(v38 + 16);
    v40 = *(v38 + 32);
    v70[0] = *v38;
    v70[1] = v39;
    v70[2] = v40;
    v71 = *(v38 + 48);
    v66 = v70[0];
    v67 = v39;
    v68 = *(v38 + 32);
    v69 = *(v38 + 48);
    v65 = 6;
    sub_217ACC004(v70, v63);
    sub_217A55B98();
    sub_217D89CAC();
    v63[0] = v66;
    v63[1] = v67;
    v63[2] = v68;
    v64 = v69;
    sub_217ACC69C(v63);
    v41 = (v3 + v10[11]);
    v42 = v41[1];
    v43 = v41[2];
    v44 = v41[3];
    v57 = *v41;
    v58 = v42;
    v59 = v43;
    v60 = v44;
    v62 = 7;
    sub_217AE39D0(v57, v42, v43, v44);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v57, v58, v59, v60);
    v45 = (v3 + v10[12]);
    v46 = *v45;
    v47 = v45[1];
    LOWORD(v45) = *(v45 + 1);
    LOBYTE(v57) = v46;
    BYTE1(v57) = v47;
    WORD1(v57) = v45;
    v62 = 8;
    sub_217ACFB8C();
    sub_217D89CAC();
    v48 = v3 + v10[13];
    v49 = *v48;
    v50 = *(v48 + 8);
    LOWORD(v48) = *(v48 + 16);
    v57 = v49;
    v58 = v50;
    LOWORD(v59) = v48;
    v62 = 9;
    sub_217A5E790();

    sub_217D89C3C();

    v51 = (v3 + v10[14]);
    v52 = v51[1];
    v53 = v51[2];
    v54 = v51[3];
    v55 = v51[4];
    v57 = *v51;
    v58 = v52;
    v59 = v53;
    v60 = v54;
    v61 = v55;
    v62 = 10;
    sub_217AE3AE8(v57, v52, v53, v54, v55);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v57, v58, v59, v60, v61);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B78BD4()
{
  result = qword_27CBA0840;
  if (!qword_27CBA0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0840);
  }

  return result;
}

void ArticleDislikeEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_217D8899C();
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B79594(0, &qword_27CBA0848, MEMORY[0x277D844C8]);
  v55 = v5;
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v49 - v6;
  v8 = type metadata accessor for ArticleDislikeEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B78BD4();
  v56 = v7;
  v11 = v85;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v53;
    v85 = v8;
    v50 = v10;
    LOBYTE(v76) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v54;
    sub_217D89BCC();
    v14 = v3;
    v15 = v50;
    (*(v52 + 32))(v50, v13, v14);
    v67 = 1;
    sub_217ACF4D8();
    sub_217D89BCC();
    v49[2] = v14;
    v54 = 0;
    v16 = v85;
    v17 = &v15[v85[5]];
    v18 = *v75;
    *(v17 + 6) = v74;
    *(v17 + 7) = v18;
    *(v17 + 127) = *&v75[15];
    v19 = v71;
    *(v17 + 2) = v70;
    *(v17 + 3) = v19;
    v20 = v73;
    *(v17 + 4) = v72;
    *(v17 + 5) = v20;
    v21 = v69;
    *v17 = v68;
    *(v17 + 1) = v21;
    LOBYTE(v62) = 2;
    sub_217AED13C();
    sub_217D89BCC();
    v49[1] = a1;
    v15[v16[6]] = v76;
    LOBYTE(v62) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v22 = *(&v76 + 1);
    v23 = v77;
    v24 = BYTE1(v77);
    v25 = *(&v77 + 1);
    v26 = v78;
    v27 = &v15[v16[7]];
    *v27 = v76;
    *(v27 + 1) = v22;
    v27[16] = v23;
    v27[17] = v24;
    *(v27 + 3) = v25;
    *(v27 + 4) = v26;
    LOBYTE(v62) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v28 = v77;
    v29 = &v15[v16[8]];
    *v29 = v76;
    *(v29 + 2) = v28;
    v66 = 5;
    sub_217A5D308();
    sub_217D89B5C();
    v30 = &v15[v16[9]];
    v31 = v83;
    *(v30 + 6) = v82;
    *(v30 + 7) = v31;
    *(v30 + 8) = v84;
    v32 = v79;
    *(v30 + 2) = v78;
    *(v30 + 3) = v32;
    v33 = v81;
    *(v30 + 4) = v80;
    *(v30 + 5) = v33;
    v34 = v77;
    *v30 = v76;
    *(v30 + 1) = v34;
    v61 = 6;
    sub_217A54D08();
    sub_217D89BCC();
    v35 = &v15[v16[10]];
    v36 = v63;
    *v35 = v62;
    *(v35 + 1) = v36;
    *(v35 + 2) = v64;
    v35[48] = v65;
    v60 = 7;
    sub_217ACFF40();
    sub_217D89B5C();
    v37 = &v50[v85[11]];
    v38 = v58;
    *v37 = v57;
    *(v37 + 1) = v38;
    v60 = 8;
    sub_217ACFB38();
    sub_217D89BCC();
    v39 = BYTE1(v57);
    v40 = WORD1(v57);
    v41 = &v50[v85[12]];
    *v41 = v57;
    v41[1] = v39;
    *(v41 + 1) = v40;
    v60 = 9;
    sub_217A5E738();
    sub_217D89B5C();
    v42 = v58;
    v43 = &v50[v85[13]];
    *v43 = v57;
    *(v43 + 8) = v42;
    v60 = 10;
    sub_217AE2CA8();
    sub_217D89B5C();
    (*(v12 + 8))(v56, v55);
    v44 = v59;
    v46 = v50;
    v45 = v51;
    v47 = &v50[v85[14]];
    v48 = v58;
    *v47 = v57;
    *(v47 + 1) = v48;
    *(v47 + 4) = v44;
    sub_217B795F8(v46, v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217B7965C(v46);
  }
}

void sub_217B79594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B78BD4();
    v7 = a3(a1, &type metadata for ArticleDislikeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B795F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleDislikeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B7965C(uint64_t a1)
{
  v2 = type metadata accessor for ArticleDislikeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217B797F4()
{
  result = qword_27CBA0850;
  if (!qword_27CBA0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0850);
  }

  return result;
}

unint64_t sub_217B7984C()
{
  result = qword_27CBA0858;
  if (!qword_27CBA0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0858);
  }

  return result;
}

unint64_t sub_217B798A4()
{
  result = qword_27CBA0860;
  if (!qword_27CBA0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0860);
  }

  return result;
}

uint64_t PrivateUserData.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrivateUserData.userID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrivateUserData.init(userID:userType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_217B799B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570795472657375 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217B79A90(uint64_t a1)
{
  v2 = sub_217A6437C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B79ACC(uint64_t a1)
{
  v2 = sub_217A6437C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrivateUserData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217A64174(0, &qword_27CBA0868, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A6437C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v16 = 1;
  sub_217B79D00();
  sub_217D89BCC();
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217B79D00()
{
  result = qword_27CBA0870;
  if (!qword_27CBA0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0870);
  }

  return result;
}

unint64_t sub_217B79D80()
{
  result = qword_27CBA0878;
  if (!qword_27CBA0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0878);
  }

  return result;
}

uint64_t sub_217B79E84()
{
  sub_217D87E5C();
  sub_217D87E4C();
  if (qword_2811C8BC8 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();
}

uint64_t sub_217B79F14@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D87FEC();
  result = sub_217D88ACC();
  if (result)
  {
    v4 = sub_217D87FBC();

    *a2 = v4 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B79F88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for PrivacyValidationDebugGroupProvider();
    v6 = swift_allocObject();
    v6[2] = v4;
    v7 = [swift_unknownObjectRetain() possiblyUnfetchedAppConfiguration];
    type metadata accessor for DebugPrivacyValidationProvider(0);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = OBJC_IVAR____TtC13NewsAnalyticsP33_4BAC674B03D5EF9FD60C84EBCE16AA2930DebugPrivacyValidationProvider_privacyValidation;
    v10 = swift_unknownObjectRetain();
    sub_217A4A520(v10, (v8 + v9));
    swift_unknownObjectRelease();
    result = sub_217B7CF60(&unk_27CBA0888, type metadata accessor for DebugPrivacyValidationProvider, &unk_217DB8560);
    v6[3] = v8;
    v6[4] = result;
    a2[3] = v5;
    a2[4] = &off_2829BD030;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_217B7A0CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D883BC();
  result = sub_217D88ACC();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BE1C8, &protocol descriptor for AggregateStateModeProviderType, 1);
  result = sub_217D88ADC();
  if (!v45[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A4E5C4(0, &qword_2811BCCB0, 0x277D30EE0);
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D8889C();
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = result;
  v6 = [objc_opt_self() sharedInstance];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, qword_2811BD5A8, &protocol descriptor for AppExtensionSessionDataCommunicatorType, 1);
  result = sub_217D88ADC();
  if (!v43)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_217A517E4(&v42, v44);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A4E5C4(0, &unk_2811BCCC0, 0x277D31390);
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811C1C50, &protocol descriptor for TabiDataProviderType, 1);
  result = sub_217D88ADC();
  if (!v41[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BDD28, &protocol descriptor for LiveActivityCountDataProviderType, 1);
  result = sub_217D88ADC();
  if (!v40[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BE1D0, &protocol descriptor for UserEmbeddingDataProviderType, 1);
  result = sub_217D88ADC();
  if (!v39[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v35 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BCEC0, MEMORY[0x277D33678], 1);
  result = sub_217D88ADC();
  if (!v38[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = type metadata accessor for SessionObserver();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionStartSource] = 4;
  v10 = OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionURLManager;
  sub_217B7CE88(0, &unk_2811BCF60, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  swift_allocObject();
  *&v9[v10] = sub_217D88C7C();
  swift_unknownObjectWeakInit();
  v11 = &v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sceneSessionIdentifier];
  *v11 = 0;
  v11[1] = 0;
  *&v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager] = v3;
  sub_217A4998C(v45, &v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_aggregateStateModeProvider]);

  *&v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tracker] = sub_217D883AC();
  *&v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext] = v4;
  *&v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_client] = v5;
  *&v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_fsidProvider] = v6;
  v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind] = 0;
  v12 = v6;
  v34 = v5;
  v33 = v4;
  v13 = [v33 userInfo];
  v14 = [v13 onboardingVersionNumber];

  if (!v14)
  {
    sub_217A4E5C4(0, &qword_2811BCB90, 0x277CCABB0);
    v14 = sub_217D8989C();
  }

  *&v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_onboardingVersion] = v14;
  sub_217A4C040(v44, &v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator]);
  sub_217A4998C(v41, &v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tabiDataProvider]);
  sub_217A4998C(v40, &v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_liveActivityCountDataProvider]);
  sub_217A4998C(v39, &v9[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_userEmbeddingDataProvider]);
  v37.receiver = v9;
  v37.super_class = v8;
  v15 = objc_msgSendSuper2(&v37, sel_init);
  type metadata accessor for SessionObserverURLHandler();
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *&v36[0] = v16;
  sub_217B7CF60(&unk_2811BF210, type metadata accessor for SessionObserverURLHandler, &unk_217DAC80C);

  sub_217D88C6C();

  *(swift_allocObject() + 16) = v15;
  v17 = v15;
  sub_217D8833C();

  sub_217A4E670();
  *(swift_allocObject() + 16) = v17;
  v18 = v17;
  sub_217D8833C();

  v19 = [objc_opt_self() currentDevice];
  [v19 beginGeneratingDeviceOrientationNotifications];

  sub_217A4CAE8();
  v20 = objc_opt_self();
  v21 = [v20 defaultCenter];
  [v21 addObserver:v18 selector:sel_pushOrientationData name:*MEMORY[0x277D76878] object:0];

  sub_217A4CFDC();
  sub_217A4D798(v35);
  sub_217A4ECDC();
  sub_217D883AC();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_217D888FC();

  sub_217A4EEA4();
  v22 = [v20 defaultCenter];
  [v22 addObserver:v18 selector:sel_pushUserSubscriptionContextData name:*MEMORY[0x277D30C28] object:0];

  v23 = [v20 defaultCenter];
  [v23 addObserver:v18 selector:sel_pushUserSubscriptionContextData name:*MEMORY[0x277D30C38] object:0];

  sub_217A54954();
  sub_217A4DE10();
  SessionObserver.pushNotificationSettingsData()();
  result = [*&v18[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext] newsletterManager];
  if (result)
  {
    v24 = result;

    [v24 addObserver_];
    swift_unknownObjectRelease();
    v25 = [v20 defaultCenter];
    v26 = sub_217D8951C();
    [v25 addObserver:v18 selector:sel_offerDidChange_ name:v26 object:0];

    sub_217A5083C();
    v27 = [v20 defaultCenter];
    v28 = sub_217D8985C();
    [v27 addObserver:v18 selector:sel_familySharingStatusDidChange_ name:v28 object:0];

    *(swift_allocObject() + 16) = v18;
    v29 = v18;
    sub_217D8833C();

    v30 = [v20 defaultCenter];
    [v30 addObserver:v29 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];

    *(swift_allocObject() + 16) = v29;
    v31 = v29;
    sub_217D88E4C();

    sub_217A4998C(v38, v36);
    v32 = swift_allocObject();
    sub_217A517E4(v36, v32 + 16);

    sub_217D888FC();

    sub_217D883CC();

    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v39);
    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_217A50680(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return v31;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_217B7ABE0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217A49558(0, &qword_2811BCBC8, &protocolRef_NSSNewsAnalyticsSessionManager);
  result = sub_217D88ACC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_217A481CC(0, &qword_2811BCEC0, MEMORY[0x277D33678], 1);
    result = sub_217D88ADC();
    if (v7)
    {
      sub_217A517E4(&v6, v8);
      [v5 addObserver_];
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      sub_217D8922C();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_217B7AD08(void *a1)
{
  v2 = sub_217D8867C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D880DC();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v22 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8839C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_217D8875C();
  v17 = *(v8 - 8);
  v18 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CEAD38];
  sub_217B7CE88(0, &qword_2811BC488, MEMORY[0x277CEAD38], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_217D9CB60;
  sub_217D8837C();
  sub_217D8838C();
  v25 = v12;
  sub_217B7CF60(&unk_2811C8480, MEMORY[0x277CEAD38], MEMORY[0x277CEAD40]);
  sub_217B7CE88(0, &qword_2811BCE48, v11, MEMORY[0x277D83940]);
  sub_217A5150C(&qword_2811BCE40, &qword_2811BCE48, v11);
  sub_217D8997C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &unk_2811C8420, MEMORY[0x277CEAE30], 1);
  result = sub_217D88ADC();
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811C8430, MEMORY[0x277CEAE18], 0);
  result = sub_217D88ADC();
  if (!v24)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = MEMORY[0x277CEAC90];
  sub_217B7CE88(0, &qword_2811BC4A0, MEMORY[0x277CEAC90], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_217D8EE60;
  sub_217D880CC();
  sub_217D880AC();
  sub_217D880BC();
  v23 = v15;
  sub_217B7CF60(&qword_2811C8A20, MEMORY[0x277CEAC90], MEMORY[0x277CEAC98]);
  sub_217B7CE88(0, &qword_2811BCE58, v14, MEMORY[0x277D83940]);
  sub_217A5150C(&qword_2811BCE50, &qword_2811BCE58, v14);
  sub_217D8997C();
  sub_217D8830C();
  swift_allocObject();
  sub_217D882FC();
  sub_217D8866C();
  sub_217D8874C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D87FEC();
  result = sub_217D88ACC();
  if (result)
  {
    v16 = sub_217D87F9C();

    (*(v17 + 8))(v10, v18);
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_217B7B2B8(uint64_t a1, void *a2)
{
  sub_217D8831C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217D8850C();
  result = sub_217D88ACC();
  if (result)
  {
    sub_217D8841C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7B358(uint64_t a1)
{
  sub_217A4998C(a1, v3);
  v1 = swift_allocObject();
  sub_217A517E4(v3, v1 + 16);
  sub_217D8850C();
  swift_allocObject();
  return sub_217D884FC();
}

void *sub_217B7B3DC(void *a1)
{
  v2 = sub_217D889FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D88ABC();
  if (v61)
  {
    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217D885DC();
    result = sub_217D88ACC();
    if (!result)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v8 = result;
    v6 = sub_217B5AF48(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = v6[2];
    v9 = v6[3];
    if (v10 >= v9 >> 1)
    {
      v6 = sub_217B5AF48((v9 > 1), v10 + 1, 1, v6);
    }

    v6[2] = v10 + 1;
    v11 = &v6[2 * v10];
    v12 = MEMORY[0x277CEADD0];
    v11[4] = v8;
    v11[5] = v12;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217D886BC();
    result = sub_217D88ACC();
    if (!result)
    {
      goto LABEL_42;
    }

    v14 = v6[2];
    v13 = v6[3];
    if (v14 >= v13 >> 1)
    {
      v60 = result;
      v6 = sub_217B5AF48((v13 > 1), v14 + 1, 1, v6);
      result = v60;
    }

    v6[2] = v14 + 1;
    v15 = &v6[2 * v14];
    v16 = MEMORY[0x277CEADF0];
    v15[4] = result;
    v15[5] = v16;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for ExternalAnalyticsEventProcessor();
    result = sub_217D88ACC();
    if (!result)
    {
      goto LABEL_43;
    }

    v17 = result;
    v19 = v6[2];
    v18 = v6[3];
    if (v19 >= v18 >> 1)
    {
      v6 = sub_217B5AF48((v18 > 1), v19 + 1, 1, v6);
    }

    v20 = sub_217B7CF60(qword_2811C81F8, type metadata accessor for ExternalAnalyticsEventProcessor, &protocol conformance descriptor for ExternalAnalyticsEventProcessor);
    v6[2] = v19 + 1;
    v21 = &v6[2 * v19];
    v21[4] = v17;
    v21[5] = v20;
    type metadata accessor for ValidationEventProcessor();
    v22 = swift_allocObject();
    sub_217D88A3C();
    swift_allocObject();
    *(v22 + 16) = sub_217D88A2C();
    *v5 = sub_217BC5340;
    v5[1] = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6C9B0], v2);
    sub_217D88A0C();
    v24 = v6[2];
    v23 = v6[3];
    if (v24 >= v23 >> 1)
    {
      v6 = sub_217B5AF48((v23 > 1), v24 + 1, 1, v6);
    }

    v25 = sub_217B7CF60(&qword_2811BF660, type metadata accessor for ValidationEventProcessor, &protocol conformance descriptor for ValidationEventProcessor);
    v6[2] = v24 + 1;
    v26 = &v6[2 * v24];
    v26[4] = v22;
    v26[5] = v25;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for SharedItemEventProcessor();
    result = sub_217D88ACC();
    if (!result)
    {
      goto LABEL_45;
    }

    v27 = result;
    v29 = v6[2];
    v28 = v6[3];
    if (v29 >= v28 >> 1)
    {
      v6 = sub_217B5AF48((v28 > 1), v29 + 1, 1, v6);
    }

    v30 = sub_217B7CF60(&qword_2811BF758, type metadata accessor for SharedItemEventProcessor, &unk_217DA370C);
    v6[2] = v29 + 1;
    v31 = &v6[2 * v29];
    v31[4] = v27;
    v31[5] = v30;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217A481CC(0, &qword_2811BD4C0, &protocol descriptor for UserNotificationModifierEventProcessorType, 0);
    result = sub_217D88ADC();
    v32 = v61;
    if (!v61)
    {
      goto LABEL_47;
    }

    v33 = v62;
    v35 = v6[2];
    v34 = v6[3];
    if (v35 >= v34 >> 1)
    {
      v6 = sub_217B5AF48((v34 > 1), v35 + 1, 1, v6);
    }

    v36 = *(v33 + 8);
    v6[2] = v35 + 1;
    v37 = &v6[2 * v35];
    v37[4] = v32;
    v37[5] = v36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D88ABC();
  if ((v61 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for PortraitEventProcessor();
    result = sub_217D88ACC();
    if (!result)
    {
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

    v38 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_217B5AF48(0, v6[2] + 1, 1, v6);
    }

    v40 = v6[2];
    v39 = v6[3];
    if (v40 >= v39 >> 1)
    {
      v6 = sub_217B5AF48((v39 > 1), v40 + 1, 1, v6);
    }

    v41 = sub_217B7CF60(&qword_2811C0488, type metadata accessor for PortraitEventProcessor, &protocol conformance descriptor for PortraitEventProcessor);
    v6[2] = v40 + 1;
    v42 = &v6[2 * v40];
    v42[4] = v38;
    v42[5] = v41;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217A481CC(0, qword_2811BF4C0, &protocol descriptor for XavierEventProcessorType, 0);
    result = sub_217D88ADC();
    v43 = v61;
    if (!v61)
    {
      goto LABEL_46;
    }

    v44 = v62;
    v46 = v6[2];
    v45 = v6[3];
    if (v46 >= v45 >> 1)
    {
      v6 = sub_217B5AF48((v45 > 1), v46 + 1, 1, v6);
    }

    v47 = *(v44 + 8);
    v6[2] = v46 + 1;
    v48 = &v6[2 * v46];
    v48[4] = v43;
    v48[5] = v47;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217A481CC(0, &qword_2811C8460, MEMORY[0x277CEAD98], 0);
    result = sub_217D88ABC();
    v49 = v61;
    if (!v61)
    {
      goto LABEL_48;
    }

    v50 = v62;
    v52 = v6[2];
    v51 = v6[3];
    if (v52 >= v51 >> 1)
    {
      v6 = sub_217B5AF48((v51 > 1), v52 + 1, 1, v6);
    }

    v6[2] = v52 + 1;
    v53 = &v6[2 * v52];
    v53[4] = v49;
    v53[5] = v50;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811C8100, &protocol descriptor for NewsEngagementEventProcessorType, 0);
  result = sub_217D88ADC();
  v54 = v61;
  if (!v61)
  {
    __break(1u);
    goto LABEL_41;
  }

  v55 = v62;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_217B5AF48(0, v6[2] + 1, 1, v6);
  }

  v57 = v6[2];
  v56 = v6[3];
  if (v57 >= v56 >> 1)
  {
    v6 = sub_217B5AF48((v56 > 1), v57 + 1, 1, v6);
  }

  v58 = *(v55 + 8);
  v6[2] = v57 + 1;
  v59 = &v6[2 * v57];
  v59[4] = v54;
  v59[5] = v58;
  return v6;
}

uint64_t sub_217B7BC04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D883BC();
  result = sub_217D88ACC();
  if (result)
  {
    v2 = sub_217D883AC();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7BC70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TrackerConfiguration();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_2829AFDB8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7BD08()
{
  v0 = sub_217D8873C();
  MEMORY[0x28223BE20](v0);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = 11;
  (*(v3 + 104))(v2, *MEMORY[0x277CEAE08]);
  sub_217D885DC();
  swift_allocObject();
  return sub_217D885BC();
}

uint64_t sub_217B7BE08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D8889C();
  result = sub_217D88ACC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &qword_2811C8930, &protocolRef_AAEndpointType);
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_217D886BC();
  sub_217D8865C();
  v3 = sub_217D8864C();
  sub_217D87E5C();
  sub_217D87E4C();
  if (qword_2811C8BD8 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();

  v4 = sub_217D8863C();

  sub_217D87E4C();
  if (qword_2811C8B30 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();

  v5 = sub_217D8861C();

  sub_217D87E4C();
  if (qword_2811C8B78 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();

  sub_217D8862C();

  return sub_217D886AC();
}

void *sub_217B7C040()
{
  type metadata accessor for PortraitEventProcessor();
  swift_allocObject();
  return sub_217C1D768();
}

void *sub_217B7C078(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811C8A40, MEMORY[0x277CEAC68], 1);
  result = sub_217D88ADC();
  if (!v7[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, qword_2811C8118, &protocol descriptor for ExternalAnalyticsURLProviderType, 1);
  result = sub_217D88ADC();
  if (!v6[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811C8110, &protocol descriptor for ExternalAnalyticsFeatureAvailabilityType, 1);
  result = sub_217D88ADC();
  if (v5[3])
  {
    type metadata accessor for ExternalAnalyticsEventProcessor();
    v4 = swift_allocObject();
    v4[19] = 0;
    v4[20] = 0;
    v4[18] = 0;
    v4[2] = v3;
    sub_217A4998C(v7, (v4 + 3));
    sub_217A4998C(v6, (v4 + 8));
    sub_217A4998C(v5, (v4 + 13));
    swift_unknownObjectRetain();
    sub_217CE7880();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_217B7C25C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_217D87F6C();
  swift_allocObject();
  result = sub_217D87F5C();
  v4 = MEMORY[0x277CEAC70];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_217B7C2B4@<X0>(uint64_t *a1@<X8>)
{
  sub_217B7CEEC(0, &qword_2811BC460, &qword_2811C8108, &protocol descriptor for ExternalAnalyticsQueryItemsGeneratorType, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_217D9AA70;
  started = type metadata accessor for AppSessionStartEventQueryItemsGenerator();
  v4 = swift_allocObject();
  *(v2 + 56) = started;
  *(v2 + 64) = &off_2829B9D50;
  *(v2 + 32) = v4;
  ItemsGenerator = type metadata accessor for FeedViewEventQueryItemsGenerator();
  v6 = swift_allocObject();
  *(v2 + 96) = ItemsGenerator;
  *(v2 + 104) = &off_2829ACFB0;
  *(v2 + 72) = v6;
  v7 = type metadata accessor for ArticleViewEventQueryItemsGenerator();
  v8 = swift_allocObject();
  *(v2 + 136) = v7;
  *(v2 + 144) = &off_2829BAEC8;
  *(v2 + 112) = v8;
  v9 = type metadata accessor for MediaEngageEventQueryItemsGenerator();
  v10 = swift_allocObject();
  *(v2 + 176) = v9;
  *(v2 + 184) = &off_2829BC618;
  *(v2 + 152) = v10;
  v11 = type metadata accessor for MediaEngageCompletedEventQueryItemsGenerator();
  v12 = swift_allocObject();
  *(v2 + 216) = v11;
  *(v2 + 224) = &off_2829C3298;
  *(v2 + 192) = v12;
  v13 = type metadata accessor for RecipeViewEventQueryItemsGenerator();
  v14 = swift_allocObject();
  *(v2 + 256) = v13;
  *(v2 + 264) = &off_2829B8580;
  *(v2 + 232) = v14;
  v15 = type metadata accessor for ExternalAnalyticsURLProvider();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v15;
  a1[4] = &protocol witness table for ExternalAnalyticsURLProvider;
  *a1 = result;
  return result;
}

uint64_t sub_217B7C448()
{
  sub_217D8889C();
  v0 = [objc_opt_self() mainBundle];
  return sub_217D8887C();
}

uint64_t sub_217B7C494(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (result)
  {
    v2 = result;
    type metadata accessor for DynamicEndpoint();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = FCDefaultsReadEndpointEnvironment();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_217B7C524(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BCEB8, MEMORY[0x277D33C38], 1);
  result = sub_217D88ADC();
  if (v4)
  {
    type metadata accessor for SharedItemEventProcessor();
    v2 = swift_allocObject();
    sub_217D88A3C();
    swift_allocObject();
    *(v2 + 56) = sub_217D88A2C();
    sub_217A517E4(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7C5E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D8940C();
  sub_217D893FC();
  sub_217B7CF60(&qword_2811BCEB0, MEMORY[0x277D344D8], MEMORY[0x277D344D0]);
  sub_217D88D0C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void *sub_217B7C69C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217A481CC(0, &qword_2811BCF50, MEMORY[0x277D6CDF8], 0);
  result = sub_217D88ADC();
  if (v4)
  {
    sub_217D88D4C();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_217B7C760@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217A481CC(0, qword_2811C2F38, &protocol descriptor for PrivacySamplerType, 1);
    result = sub_217D88ADC();
    if (v21)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for PrivacySampler();
      v19[3] = v11;
      v19[4] = &off_2829BFF38;
      v19[0] = v10;
      v12 = type metadata accessor for SportsSyncEventPrivacySampler();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      MEMORY[0x28223BE20](v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[6] = v11;
      v13[7] = &off_2829BFF38;
      v13[2] = v5;
      v13[3] = v18;
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v12;
      a2[4] = &off_2829BB330;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_217B7C9E0(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_217D87CCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A4E5C4(0, &unk_2811BCCC0, 0x277D31390);
  v8 = sub_217D88ACC();
  if (v8)
  {
    v9 = v8;
    v10 = type metadata accessor for PrivacySaltProvider();
    v11 = swift_allocObject();
    v11[2] = v9;
    v12 = v9;
    v13 = [v12 sportsUserID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_217D8954C();
      v17 = v16;
    }

    else
    {
      sub_217D87CBC();
      v15 = sub_217D87CAC();
      v17 = v18;

      (*(v5 + 8))(v7, v4);
    }

    v11[3] = v15;
    v11[4] = v17;
    a2[3] = v10;
    a2[4] = &off_2829C3C10;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }
}

void *sub_217B7CB8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, qword_2811BFDF0, &protocol descriptor for PrivacySaltProviderType, 1);
  result = sub_217D88ADC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for PrivacySaltProvider();
    v17[3] = v9;
    v17[4] = &off_2829C3C10;
    v17[0] = v8;
    v10 = type metadata accessor for PrivacySampler();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_2829C3C10;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_2829BFF38;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7CDB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AnalyticsApplicationStateMonitor();
  result = sub_217D88ACC();
  if (result)
  {
    v4 = result;
    result = sub_217B7CF60(&qword_2811C80F8, type metadata accessor for AnalyticsApplicationStateMonitor, &unk_217DA2724);
    *a2 = v4;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217B7CE4C()
{
  type metadata accessor for AnalyticsApplicationStateMonitor();

  return swift_allocObject();
}

void sub_217B7CE88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_217B7CEEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_217A481CC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_217B7CF60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_217B7CFA8()
{
  result = qword_2811C7908;
  if (!qword_2811C7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7908);
  }

  return result;
}

uint64_t SubscribedTagListData.tagIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217B7D060(uint64_t a1)
{
  v2 = sub_217A68658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B7D09C(uint64_t a1)
{
  v2 = sub_217A68658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribedTagListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217A685DC(0, &qword_2811BC9A0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A68658();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217B7D2A0()
{
  result = qword_2811C0BE0;
  if (!qword_2811C0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0BE0);
  }

  return result;
}

unint64_t sub_217B7D334()
{
  result = qword_27CBA08A0;
  if (!qword_27CBA08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA08A0);
  }

  return result;
}

uint64_t SubscribedSportsListData.sportsList.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217B7D3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x694C7374726F7073 && a2 == 0xEA00000000007473)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B7D47C(uint64_t a1)
{
  v2 = sub_217A69740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B7D4B8(uint64_t a1)
{
  v2 = sub_217A69740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribedSportsListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217A696C4(0, &qword_2811BC970, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A69740();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A69844();
    sub_217A69894(&qword_2811BCE08, sub_217B7D6C4, MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217B7D6C4()
{
  result = qword_2811C7170;
  if (!qword_2811C7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7170);
  }

  return result;
}

unint64_t sub_217B7D754()
{
  result = qword_27CBA08A8;
  if (!qword_27CBA08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA08A8);
  }

  return result;
}

uint64_t sub_217B7D870()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA08E0);
  __swift_project_value_buffer(v0, qword_27CBA08E0);
  return sub_217D8866C();
}

uint64_t EORGroupExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EORGroupExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 24);
  sub_217B7E47C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORGroupExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 24);
  sub_217B7E47C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 28);
  sub_217B7E47C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORGroupExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 28);
  sub_217B7E47C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.hostRecipeViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 32);
  sub_217B7E47C(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18, &type metadata for RecipeViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B7DEC4()
{
  result = qword_27CBA0900;
  if (!qword_27CBA0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0900);
  }

  return result;
}

unint64_t sub_217B7DF18()
{
  result = qword_27CBA0908;
  if (!qword_27CBA0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0908);
  }

  return result;
}

uint64_t EORGroupExposureEvent.hostRecipeViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 32);
  sub_217B7E47C(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18, &type metadata for RecipeViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.hostRecipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 36);
  sub_217B7E47C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORGroupExposureEvent.hostRecipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 36);
  sub_217B7E47C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.hostRecipeChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 40);
  sub_217B7E47C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORGroupExposureEvent.hostRecipeChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 40);
  sub_217B7E47C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 44);
  sub_217B7E47C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B7E47C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t EORGroupExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORGroupExposureEvent(0) + 44);
  sub_217B7E47C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORGroupExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EORGroupExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B7E47C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B7E47C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B7E47C(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18, &type metadata for RecipeViewData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217B7E47C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217B7E47C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217B7E47C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a1 + v17, v2, v18);
}

uint64_t sub_217B7E9D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EORGroupExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 24));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AF7618(v17, &v16);
}

uint64_t EORGroupExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EORGroupExposureEvent.Model.hostRecipeViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EORGroupExposureEvent.Model.hostRecipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 36);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t EORGroupExposureEvent.Model.hostRecipeChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 40);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t EORGroupExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EORGroupExposureEvent.Model(0) + 44));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 EORGroupExposureEvent.Model.init(eventData:timedData:groupData:feedData:hostRecipeViewData:hostRecipeData:hostRecipeChannelData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a4;
  v15 = *(a4 + 1);
  v16 = *(a4 + 2);
  v17 = a5[1];
  v38 = a6[1];
  v39 = *a6;
  v37 = *(a6 + 16);
  v36 = a6[3];
  v34 = *a5;
  v35 = a6[4];
  v44 = a7[1];
  v45 = *a7;
  v42 = *(a7 + 17);
  v43 = *(a7 + 16);
  v40 = a7[4];
  v41 = a7[3];
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for EORGroupExposureEvent.Model(0);
  v20 = v19[5];
  v21 = sub_217D889CC();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + v19[6]);
  v23 = a3[7];
  v22[6] = a3[6];
  v22[7] = v23;
  v22[8] = a3[8];
  v24 = a3[3];
  v22[2] = a3[2];
  v22[3] = v24;
  v25 = a3[5];
  v22[4] = a3[4];
  v22[5] = v25;
  v26 = a3[1];
  *v22 = *a3;
  v22[1] = v26;
  v27 = a9 + v19[7];
  *v27 = v14;
  *(v27 + 8) = v15;
  *(v27 + 16) = v16;
  v28 = (a9 + v19[8]);
  *v28 = v34;
  v28[1] = v17;
  v29 = a9 + v19[9];
  *v29 = v39;
  *(v29 + 8) = v38;
  *(v29 + 16) = v37;
  *(v29 + 24) = v36;
  *(v29 + 32) = v35;
  v30 = a9 + v19[10];
  *v30 = v45;
  *(v30 + 8) = v44;
  *(v30 + 16) = v43;
  *(v30 + 17) = v42;
  *(v30 + 24) = v41;
  *(v30 + 32) = v40;
  v31 = a9 + v19[11];
  *(v31 + 48) = *(a8 + 48);
  result = *(a8 + 16);
  v33 = *(a8 + 32);
  *(v31 + 16) = result;
  *(v31 + 32) = v33;
  *v31 = *a8;
  return result;
}

unint64_t sub_217B7EEB0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000021;
    if (v1 == 6)
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0xD000000000000012;
    if (v1 != 4)
    {
      v6 = 0x6963655274736F68;
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
    v2 = 0x746144746E657665;
    v3 = 0x74614470756F7267;
    if (v1 != 2)
    {
      v3 = 0x6174614464656566;
    }

    if (*v0)
    {
      v2 = 0x74614464656D6974;
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

uint64_t sub_217B7EFC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B80A70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B7EFE8(uint64_t a1)
{
  v2 = sub_217B7F618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B7F024(uint64_t a1)
{
  v2 = sub_217B7F618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EORGroupExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B80050(0, &qword_27CBA0910, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v41 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B7F618();
  sub_217D89E7C();
  LOBYTE(v67[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for EORGroupExposureEvent.Model(0);
    v78 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[5];
    v13 = v11[7];
    v72 = v11[6];
    v73 = v13;
    v14 = v11[7];
    v74 = v11[8];
    v15 = v11[1];
    v16 = v11[3];
    v68 = v11[2];
    v69 = v16;
    v17 = v11[3];
    v18 = v11[5];
    v70 = v11[4];
    v71 = v18;
    v19 = v11[1];
    v67[0] = *v11;
    v67[1] = v19;
    v64 = v72;
    v65 = v14;
    v66 = v11[8];
    v60 = v68;
    v61 = v17;
    v62 = v70;
    v63 = v12;
    v58 = v67[0];
    v59 = v15;
    v77 = 2;
    sub_217AF7618(v67, v57);
    sub_217A5D3B4();
    sub_217D89CAC();
    v57[6] = v64;
    v57[7] = v65;
    v57[8] = v66;
    v57[2] = v60;
    v57[3] = v61;
    v57[4] = v62;
    v57[5] = v63;
    v57[0] = v58;
    v57[1] = v59;
    sub_217AF8104(v57);
    v20 = v3 + v10[7];
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    LOBYTE(v47) = *v20;
    *(&v47 + 1) = v21;
    *&v48 = v22;
    LOBYTE(v43) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    v23 = (v3 + v10[8]);
    v24 = v23[1];
    *&v47 = *v23;
    *(&v47 + 1) = v24;
    LOBYTE(v43) = 4;
    sub_217B7DF18();

    sub_217D89CAC();

    v25 = v3 + v10[9];
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    v28 = *(v25 + 24);
    v29 = *(v25 + 32);
    *&v47 = *v25;
    *(&v47 + 1) = v26;
    LOBYTE(v48) = v27;
    *(&v48 + 1) = v28;
    *&v49 = v29;
    LOBYTE(v43) = 5;
    sub_217B1F08C();

    sub_217D89CAC();

    v30 = (v3 + v10[10]);
    v31 = v30[1];
    v32 = *(v30 + 16);
    v33 = *(v30 + 17);
    v34 = v30[3];
    v35 = v30[4];
    v51 = *v30;
    v52 = v31;
    v53 = v32;
    v54 = v33;
    v55 = v34;
    v56 = v35;
    v76 = 6;
    sub_217AD084C();

    sub_217D89CAC();

    v37 = (v3 + v10[11]);
    v38 = v37[1];
    v47 = *v37;
    v48 = v38;
    v40 = *v37;
    v39 = v37[1];
    v49 = v37[2];
    v50 = *(v37 + 48);
    v43 = v40;
    v44 = v39;
    v45 = v37[2];
    v46 = *(v37 + 48);
    v75 = 7;
    sub_217ACC004(&v47, v41);
    sub_217A55B98();
    sub_217D89CAC();
    v41[0] = v43;
    v41[1] = v44;
    v41[2] = v45;
    v42 = v46;
    sub_217ACC69C(v41);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B7F618()
{
  result = qword_27CBA0918;
  if (!qword_27CBA0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0918);
  }

  return result;
}

uint64_t EORGroupExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v47 = sub_217D889CC();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B80050(0, &qword_27CBA0920, MEMORY[0x277D844C8]);
  v52 = v7;
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for EORGroupExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B7F618();
  v51 = v9;
  v13 = v67;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v15 = v49;
  v67 = v12;
  LOBYTE(v58) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v16 = v50;
  sub_217D89BCC();
  v17 = v67;
  (*(v48 + 32))(v67, v16, v5);
  LOBYTE(v58) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v18 = v14;
  v19 = v47;
  sub_217D89BCC();
  v44 = v5;
  v50 = 0;
  (*(v46 + 32))(&v17[v10[5]], v18, v19);
  v57 = 2;
  sub_217A5D308();
  sub_217D89BCC();
  v20 = &v17[v10[6]];
  v21 = v63;
  v22 = v65;
  v23 = v66;
  *(v20 + 6) = v64;
  *(v20 + 7) = v22;
  *(v20 + 8) = v23;
  v24 = v61;
  *(v20 + 2) = v60;
  *(v20 + 3) = v24;
  *(v20 + 4) = v62;
  *(v20 + 5) = v21;
  v25 = v59;
  *v20 = v58;
  *(v20 + 1) = v25;
  v56 = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v26 = &v17[v10[7]];
  *v26 = v53[0];
  *(v26 + 8) = *(v53 + 8);
  v56 = 4;
  sub_217B7DEC4();
  sub_217D89BCC();
  v27 = *(&v53[0] + 1);
  v28 = &v17[v10[8]];
  *v28 = *&v53[0];
  *(v28 + 1) = v27;
  v56 = 5;
  sub_217B1F038();
  sub_217D89BCC();
  v29 = *(&v53[0] + 1);
  v30 = v53[1];
  v31 = *(&v53[1] + 1);
  v32 = v54;
  v33 = &v17[v10[9]];
  *v33 = *&v53[0];
  *(v33 + 1) = v29;
  v33[16] = v30;
  *(v33 + 3) = v31;
  *(v33 + 4) = v32;
  v56 = 6;
  sub_217AD07F8();
  sub_217D89BCC();
  v34 = *(&v53[0] + 1);
  v35 = v53[1];
  v36 = BYTE1(v53[1]);
  v37 = *(&v53[1] + 1);
  v38 = v54;
  v39 = &v17[v10[10]];
  *v39 = *&v53[0];
  *(v39 + 1) = v34;
  v39[16] = v35;
  v39[17] = v36;
  *(v39 + 3) = v37;
  *(v39 + 4) = v38;
  v56 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v15 + 8))(v51, v52);
  v40 = v67;
  v41 = &v67[v10[11]];
  v42 = v53[1];
  *v41 = v53[0];
  *(v41 + 1) = v42;
  *(v41 + 2) = v54;
  v41[48] = v55;
  sub_217B800B4(v40, v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B80118(v40);
}

void sub_217B80050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B7F618();
    v7 = a3(a1, &type metadata for EORGroupExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B800B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EORGroupExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B80118(uint64_t a1)
{
  v2 = type metadata accessor for EORGroupExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B8024C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B7E47C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B7E47C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B7E47C(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18, &type metadata for RecipeViewData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217B7E47C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217B7E47C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217B7E47C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a2 + v18, v4, v19);
}

void sub_217B80604(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217B7E47C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217B7E47C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217B7E47C(319, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18, &type metadata for RecipeViewData);
          if (v5 <= 0x3F)
          {
            sub_217B7E47C(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
            if (v6 <= 0x3F)
            {
              sub_217B7E47C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
              if (v7 <= 0x3F)
              {
                sub_217B7E47C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                if (v8 <= 0x3F)
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

uint64_t sub_217B80890(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217B8096C()
{
  result = qword_27CBA0948;
  if (!qword_27CBA0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0948);
  }

  return result;
}

unint64_t sub_217B809C4()
{
  result = qword_27CBA0950;
  if (!qword_27CBA0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0950);
  }

  return result;
}

unint64_t sub_217B80A1C()
{
  result = qword_27CBA0958;
  if (!qword_27CBA0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0958);
  }

  return result;
}

uint64_t sub_217B80A70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE880 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6963655274736F68 && a2 == 0xEE00617461446570 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCE8A0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217B80DE4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0990);
  __swift_project_value_buffer(v0, qword_27CBA0990);
  return sub_217D8866C();
}

uint64_t EORFeedViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EORFeedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 24);
  sub_217B81CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 24);
  sub_217B81CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 28);
  sub_217B81CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 28);
  sub_217B81CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 32);
  sub_217B81CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 32);
  sub_217B81CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.hostRecipeViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 36);
  sub_217B81CA8(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18, &type metadata for RecipeViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.hostRecipeViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 36);
  sub_217B81CA8(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18, &type metadata for RecipeViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.hostRecipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 40);
  sub_217B81CA8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.hostRecipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 40);
  sub_217B81CA8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.hostRecipeChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 44);
  sub_217B81CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.hostRecipeChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 44);
  sub_217B81CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 48);
  sub_217B81CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EORFeedViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 48);
  sub_217B81CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 52);
  sub_217B81CA8(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B81CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t EORFeedViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EORFeedViewEvent(0) + 52);
  sub_217B81CA8(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EORFeedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EORFeedViewEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B81CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B81CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B81CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217B81CA8(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18, &type metadata for RecipeViewData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217B81CA8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217B81CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v18 - 8) + 104))(a1 + v17, v2, v18);
  v19 = v4[12];
  sub_217B81CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v20 - 8) + 104))(a1 + v19, v2, v20);
  v21 = v4[13];
  sub_217B81CA8(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v23 = *(*(v22 - 8) + 104);

  return v23(a1 + v21, v2, v22);
}

uint64_t sub_217B822EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EORFeedViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t EORFeedViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EORFeedViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for EORFeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t EORFeedViewEvent.Model.hostRecipeViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EORFeedViewEvent.Model.hostRecipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 40);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t EORFeedViewEvent.Model.hostRecipeChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t EORFeedViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EORFeedViewEvent.Model(0) + 48);
  v11 = *(v3 + 48);
  v4 = v11;
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  v6 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return sub_217ACC004(v9, v8);
}

uint64_t EORFeedViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EORFeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 EORFeedViewEvent.Model.init(eventData:timedData:viewData:feedData:orientationData:hostRecipeViewData:hostRecipeData:hostRecipeChannelData:userBundleSubscriptionContextData:viewEndData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v14 = *a3;
  v15 = a3[1];
  v16 = *(a3 + 8);
  v17 = *(a4 + 1);
  v18 = *(a4 + 2);
  v31 = *a4;
  v32 = *a5;
  v33 = a6[1];
  v34 = *a6;
  v38 = a7[1];
  v39 = *a7;
  v37 = *(a7 + 16);
  v35 = a7[4];
  v36 = a7[3];
  v44 = a8[1];
  v45 = *a8;
  v42 = *(a8 + 17);
  v43 = *(a8 + 16);
  v40 = a8[4];
  v41 = a8[3];
  v46 = *a11;
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for EORFeedViewEvent.Model(0);
  v21 = v20[5];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v20[6];
  *v23 = v14;
  *(v23 + 8) = v15;
  *(v23 + 16) = v16;
  v24 = a9 + v20[7];
  *v24 = v31;
  *(v24 + 8) = v17;
  *(v24 + 16) = v18;
  *(a9 + v20[8]) = v32;
  v25 = (a9 + v20[9]);
  *v25 = v34;
  v25[1] = v33;
  v26 = a9 + v20[10];
  *v26 = v39;
  *(v26 + 8) = v38;
  *(v26 + 16) = v37;
  *(v26 + 24) = v36;
  *(v26 + 32) = v35;
  v27 = a9 + v20[11];
  *v27 = v45;
  *(v27 + 8) = v44;
  *(v27 + 16) = v43;
  *(v27 + 17) = v42;
  *(v27 + 24) = v41;
  *(v27 + 32) = v40;
  v28 = a9 + v20[12];
  v29 = *(a10 + 16);
  *v28 = *a10;
  *(v28 + 16) = v29;
  result = *(a10 + 32);
  *(v28 + 32) = result;
  *(v28 + 48) = *(a10 + 48);
  *(a9 + v20[13]) = v46;
  return result;
}

unint64_t sub_217B827FC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    if (a1 != 8)
    {
      v5 = 0x44646E4577656976;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0xD000000000000012;
    if (a1 != 5)
    {
      v6 = 0x6963655274736F68;
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
    v1 = 0x746144746E657665;
    v2 = 0x6174614477656976;
    v3 = 0x6174614464656566;
    if (a1 != 3)
    {
      v3 = 0x7461746E6569726FLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74614464656D6974;
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

uint64_t sub_217B8296C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B8456C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B82994(uint64_t a1)
{
  v2 = sub_217B83014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B829D0(uint64_t a1)
{
  v2 = sub_217B83014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EORFeedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B839A8(0, &qword_27CBA09A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v35[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B83014();
  sub_217D89E7C();
  LOBYTE(v43) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for EORFeedViewEvent.Model(0);
    LOBYTE(v43) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    *&v43 = v12;
    *(&v43 + 1) = v13;
    LOWORD(v44) = v11;
    LOBYTE(v39) = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v14 = v3 + v10[7];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    LOBYTE(v43) = *v14;
    *(&v43 + 1) = v15;
    *&v44 = v16;
    LOBYTE(v39) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    LOWORD(v43) = *(v3 + v10[8]);
    LOBYTE(v39) = 4;
    sub_217A4CF88();
    sub_217D89CAC();
    v18 = (v3 + v10[9]);
    v19 = v18[1];
    *&v43 = *v18;
    *(&v43 + 1) = v19;
    LOBYTE(v39) = 5;
    sub_217B7DF18();

    sub_217D89CAC();

    v20 = v3 + v10[10];
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    v24 = *(v20 + 32);
    *&v43 = *v20;
    *(&v43 + 1) = v21;
    LOBYTE(v44) = v22;
    *(&v44 + 1) = v23;
    *&v45 = v24;
    LOBYTE(v39) = 6;
    sub_217B1F08C();

    sub_217D89CAC();

    v25 = (v3 + v10[11]);
    v26 = v25[1];
    v27 = *(v25 + 16);
    v28 = *(v25 + 17);
    v29 = v25[3];
    v30 = v25[4];
    v48 = *v25;
    v49 = v26;
    v50 = v27;
    v51 = v28;
    v52 = v29;
    v53 = v30;
    v47 = 7;
    sub_217AD084C();

    sub_217D89CAC();

    v31 = (v3 + v10[12]);
    v32 = v31[1];
    v43 = *v31;
    v44 = v32;
    v34 = *v31;
    v33 = v31[1];
    v45 = v31[2];
    v46 = *(v31 + 48);
    v39 = v34;
    v40 = v33;
    v41 = v31[2];
    v42 = *(v31 + 48);
    v38 = 8;
    sub_217ACC004(&v43, v36);
    sub_217A55B98();
    sub_217D89CAC();
    v36[0] = v39;
    v36[1] = v40;
    v36[2] = v41;
    v37 = v42;
    sub_217ACC69C(v36);
    v35[15] = *(v3 + v10[13]);
    v35[14] = 9;
    sub_217B570C0();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}